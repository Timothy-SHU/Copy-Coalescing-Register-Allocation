; ModuleID = 'drivers/base/syscore.c'
source_filename = "drivers/base/syscore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_register_syscore_ops: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad register_syscore_ops ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_unregister_syscore_ops: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad unregister_syscore_ops ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_syscore_suspend: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad syscore_suspend ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_syscore_resume: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad syscore_resume ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.pcpu_hot = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [16 x i8] }
%struct.anon.3 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }

@syscore_ops_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @syscore_ops_lock, i64 16), ptr getelementptr (i8, ptr @syscore_ops_lock, i64 16) } }, align 8, !dbg !0
@syscore_ops_list = internal global %struct.list_head { ptr @syscore_ops_list, ptr @syscore_ops_list }, align 8, !dbg !251
@__UNIQUE_ID___addressable_register_syscore_ops559 = internal global ptr @register_syscore_ops, section ".discard.addressable", align 8, !dbg !63
@__UNIQUE_ID___addressable_unregister_syscore_ops560 = internal global ptr @unregister_syscore_ops, section ".discard.addressable", align 8, !dbg !65
@syscore_suspend.___tp_str = internal global ptr @.str, section "__tracepoint_str", align 8, !dbg !73
@.str = private unnamed_addr constant [16 x i8] c"syscore_suspend\00", align 1, !dbg !67
@.str.1 = private unnamed_addr constant [30 x i8] c"\017Checking wakeup interrupts\0A\00", align 1, !dbg !142
@syscore_suspend.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !147
@.str.2 = private unnamed_addr constant [48 x i8] c"Interrupts enabled before system core suspend.\0A\00", align 1, !dbg !149
@.str.3 = private unnamed_addr constant [23 x i8] c"drivers/base/syscore.c\00", align 1, !dbg !154
@.str.4 = private unnamed_addr constant [15 x i8] c"\017Calling %pS\0A\00", align 1, !dbg !159
@syscore_suspend.__already_done.5 = internal global i8 0, section ".data..once", align 1, !dbg !164
@.str.6 = private unnamed_addr constant [30 x i8] c"Interrupts enabled after %pS\0A\00", align 1, !dbg !166
@syscore_suspend.___tp_str.7 = internal global ptr @.str, section "__tracepoint_str", align 8, !dbg !168
@.str.8 = private unnamed_addr constant [48 x i8] c"\013PM: System core suspend callback %pS failed.\0A\00", align 1, !dbg !170
@__UNIQUE_ID___addressable_syscore_suspend561 = internal global ptr @syscore_suspend, section ".discard.addressable", align 8, !dbg !172
@syscore_resume.___tp_str = internal global ptr @.str.9, section "__tracepoint_str", align 8, !dbg !176
@.str.9 = private unnamed_addr constant [15 x i8] c"syscore_resume\00", align 1, !dbg !174
@syscore_resume.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !233
@.str.10 = private unnamed_addr constant [47 x i8] c"Interrupts enabled before system core resume.\0A\00", align 1, !dbg !235
@syscore_resume.__already_done.11 = internal global i8 0, section ".data..once", align 1, !dbg !240
@syscore_resume.___tp_str.12 = internal global ptr @.str.9, section "__tracepoint_str", align 8, !dbg !242
@__UNIQUE_ID___addressable_syscore_resume562 = internal global ptr @syscore_resume, section ".discard.addressable", align 8, !dbg !244
@initcall_debug = external dso_local global i8, align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\016PM: Calling %pS\0A\00", align 1, !dbg !246
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.14 = private unnamed_addr constant [29 x i8] c"include/trace/events/power.h\00", align 1, !dbg !253
@trace_suspend_resume.__UNIQUE_ID___addressable___SCK__tp_func_suspend_resume433 = internal global ptr @__SCK__tp_func_suspend_resume, section ".discard.addressable", align 8, !dbg !259
@__SCK__tp_func_suspend_resume = external dso_local global %struct.static_call_key, align 8
@trace_suspend_resume.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace434 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !291
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID___addressable_register_syscore_ops559, ptr @__UNIQUE_ID___addressable_unregister_syscore_ops560, ptr @syscore_suspend.___tp_str, ptr @syscore_suspend.___tp_str.7, ptr @__UNIQUE_ID___addressable_syscore_suspend561, ptr @syscore_resume.___tp_str, ptr @syscore_resume.___tp_str.12, ptr @__UNIQUE_ID___addressable_syscore_resume562, ptr @trace_suspend_resume.__UNIQUE_ID___addressable___SCK__tp_func_suspend_resume433, ptr @trace_suspend_resume.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace434], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @register_syscore_ops(ptr noundef %ops) #0 align 16 !dbg !356 {
entry:
  %ops.addr = alloca ptr, align 8
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !360, metadata !DIExpression()), !dbg !361
  call void @mutex_lock(ptr noundef @syscore_ops_lock) #12, !dbg !362
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !363
  %node = getelementptr inbounds %struct.syscore_ops, ptr %0, i32 0, i32 0, !dbg !364
  call void @list_add_tail(ptr noundef %node, ptr noundef @syscore_ops_list) #12, !dbg !365
  call void @mutex_unlock(ptr noundef @syscore_ops_lock) #12, !dbg !366
  ret void, !dbg !367
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !368 dso_local void @mutex_lock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !372 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !377, metadata !DIExpression()), !dbg !379
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !378, metadata !DIExpression()), !dbg !380
  %0 = load ptr, ptr %new.addr, align 8, !dbg !381
  %1 = load ptr, ptr %head.addr, align 8, !dbg !382
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !383
  %2 = load ptr, ptr %prev, align 8, !dbg !383
  %3 = load ptr, ptr %head.addr, align 8, !dbg !384
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #12, !dbg !385
  ret void, !dbg !386
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !387 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @unregister_syscore_ops(ptr noundef %ops) #0 align 16 !dbg !388 {
entry:
  %ops.addr = alloca ptr, align 8
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !390, metadata !DIExpression()), !dbg !391
  call void @mutex_lock(ptr noundef @syscore_ops_lock) #12, !dbg !392
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !393
  %node = getelementptr inbounds %struct.syscore_ops, ptr %0, i32 0, i32 0, !dbg !394
  call void @list_del(ptr noundef %node) #12, !dbg !395
  call void @mutex_unlock(ptr noundef @syscore_ops_lock) #12, !dbg !396
  ret void, !dbg !397
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !398 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !404
  call void @__list_del_entry(ptr noundef %0) #12, !dbg !405
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !406
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !407
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !408
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !409
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !410
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !411
  ret void, !dbg !412
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @syscore_suspend() #0 align 16 !dbg !75 {
entry:
  %retval = alloca i32, align 4
  %ops = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %tmp2 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp14 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %__dummy19 = alloca i64, align 8
  %__dummy220 = alloca i64, align 8
  %tmp23 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp43 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp84 = alloca i64, align 8
  %tmp93 = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp101 = alloca ptr, align 8
  %tmp114 = alloca i32, align 4
  %tmp121 = alloca i32, align 4
  %__ret_do_once131 = alloca i8, align 1
  %_flags132 = alloca i64, align 8
  %__dummy134 = alloca i64, align 8
  %__dummy2135 = alloca i64, align 8
  %tmp138 = alloca i32, align 4
  %tmp142 = alloca i32, align 4
  %__dummy143 = alloca i64, align 8
  %__dummy2144 = alloca i64, align 8
  %tmp147 = alloca i32, align 4
  %tmp148 = alloca i32, align 4
  %__ret_cond158 = alloca i8, align 1
  %__ret_once165 = alloca i8, align 1
  %tmp182 = alloca i64, align 8
  %__ret_warn_on192 = alloca i32, align 4
  %__flags208 = alloca i32, align 4
  %tmp226 = alloca i64, align 8
  %tmp235 = alloca i64, align 8
  %__mptr244 = alloca ptr, align 8
  %tmp246 = alloca ptr, align 8
  %tmp248 = alloca ptr, align 8
  %tmp252 = alloca i32, align 4
  %__mptr255 = alloca ptr, align 8
  %tmp257 = alloca ptr, align 8
  %__mptr271 = alloca ptr, align 8
  %tmp274 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #13, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !77, metadata !DIExpression()), !dbg !414
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !78, metadata !DIExpression()), !dbg !416
  store i32 0, ptr %ret, align 4, !dbg !416
  %0 = load ptr, ptr @syscore_suspend.___tp_str, align 8, !dbg !417
  store ptr %0, ptr %tmp, align 8, !dbg !417
  %1 = load ptr, ptr %tmp, align 8, !dbg !417
  call void @trace_suspend_resume(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #12, !dbg !419
  br label %do.body, !dbg !420

do.body:                                          ; preds = %entry
  %call = call zeroext i1 @pm_debug_messages_should_print() #12, !dbg !421
  br i1 %call, label %if.then, label %if.else, !dbg !424

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !425

do.body1:                                         ; preds = %if.then
  br label %do.cond, !dbg !427

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !427

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #14, !dbg !425
  store i32 %call3, ptr %tmp2, align 4, !dbg !427
  %2 = load i32, ptr %tmp2, align 4, !dbg !425
  br label %if.end7, !dbg !421

if.else:                                          ; preds = %do.body
  %call4 = call i32 @pm_dyn_debug_messages_on() #12, !dbg !429
  %tobool = icmp ne i32 %call4, 0, !dbg !429
  br i1 %tobool, label %if.then5, label %if.end, !dbg !421

if.then5:                                         ; preds = %if.else
  store i32 0, ptr %tmp6, align 4, !dbg !431
  %3 = load i32, ptr %tmp6, align 4, !dbg !434
  br label %if.end, !dbg !429

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %do.end
  br label %do.cond8, !dbg !424

do.cond8:                                         ; preds = %if.end7
  br label %do.end9, !dbg !424

do.end9:                                          ; preds = %do.cond8
  %call10 = call zeroext i1 @pm_wakeup_pending() #12, !dbg !435
  br i1 %call10, label %if.then11, label %if.end12, !dbg !437

if.then11:                                        ; preds = %do.end9
  store i32 -16, ptr %retval, align 4, !dbg !438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !438

if.end12:                                         ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #13, !dbg !439
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !79, metadata !DIExpression()), !dbg !439
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !440
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !83, metadata !DIExpression()), !dbg !440
  br label %do.body13, !dbg !440

do.body13:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !441
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !85, metadata !DIExpression()), !dbg !441
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !441
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !88, metadata !DIExpression()), !dbg !441
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !441
  %conv = zext i1 %cmp to i32, !dbg !441
  store i32 1, ptr %tmp14, align 4, !dbg !441
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !442
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !442
  %4 = load i32, ptr %tmp14, align 4, !dbg !441
  %call15 = call i64 @arch_local_save_flags() #12, !dbg !442
  store i64 %call15, ptr %_flags, align 8, !dbg !442
  br label %do.cond16, !dbg !442

do.cond16:                                        ; preds = %do.body13
  br label %do.end17, !dbg !442

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy19) #13, !dbg !443
  call void @llvm.dbg.declare(metadata ptr %__dummy19, metadata !89, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy220) #13, !dbg !443
  call void @llvm.dbg.declare(metadata ptr %__dummy220, metadata !92, metadata !DIExpression()), !dbg !443
  %cmp21 = icmp eq ptr %__dummy19, %__dummy220, !dbg !443
  %conv22 = zext i1 %cmp21 to i32, !dbg !443
  store i32 1, ptr %tmp23, align 4, !dbg !443
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy220) #13, !dbg !444
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy19) #13, !dbg !444
  %5 = load i32, ptr %tmp23, align 4, !dbg !443
  %6 = load i64, ptr %_flags, align 8, !dbg !444
  %call25 = call i32 @arch_irqs_disabled_flags(i64 noundef %6) #12, !dbg !444
  store i32 %call25, ptr %tmp24, align 4, !dbg !444
  %7 = load i32, ptr %tmp24, align 4, !dbg !444
  store i32 %7, ptr %tmp18, align 4, !dbg !442
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !439
  %8 = load i32, ptr %tmp18, align 4, !dbg !440
  %tobool26 = icmp ne i32 %8, 0, !dbg !439
  %lnot = xor i1 %tobool26, true, !dbg !439
  %lnot27 = xor i1 %lnot, true, !dbg !439
  %lnot28 = xor i1 %lnot27, true, !dbg !439
  %frombool = zext i1 %lnot28 to i8, !dbg !439
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !439
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #13, !dbg !445
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !93, metadata !DIExpression()), !dbg !445
  %9 = load i8, ptr %__ret_do_once, align 1, !dbg !445, !range !446, !noundef !447
  %tobool29 = trunc i8 %9 to i1, !dbg !445
  %lnot30 = xor i1 %tobool29, true, !dbg !445
  %lnot31 = xor i1 %lnot30, true, !dbg !445
  %frombool32 = zext i1 %lnot31 to i8, !dbg !445
  store i8 %frombool32, ptr %__ret_cond, align 1, !dbg !445
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #13, !dbg !445
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !96, metadata !DIExpression()), !dbg !445
  store i8 0, ptr %__ret_once, align 1, !dbg !445
  %10 = load i8, ptr %__ret_cond, align 1, !dbg !448, !range !446, !noundef !447
  %tobool33 = trunc i8 %10 to i1, !dbg !448
  br i1 %tobool33, label %land.rhs, label %land.end, !dbg !448

land.rhs:                                         ; preds = %do.end17
  %11 = load i8, ptr @syscore_suspend.__already_done, align 1, !dbg !448, !range !446, !noundef !447
  %tobool35 = trunc i8 %11 to i1, !dbg !448
  %lnot36 = xor i1 %tobool35, true, !dbg !448
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end17
  %12 = phi i1 [ false, %do.end17 ], [ %lnot36, %land.rhs ], !dbg !450
  %lnot37 = xor i1 %12, true, !dbg !448
  %lnot38 = xor i1 %lnot37, true, !dbg !448
  %lnot.ext = zext i1 %lnot38 to i32, !dbg !448
  %conv39 = sext i32 %lnot.ext to i64, !dbg !448
  %expval = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !448
  %tobool40 = icmp ne i64 %expval, 0, !dbg !448
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !445

if.then41:                                        ; preds = %land.end
  store i8 1, ptr @syscore_suspend.__already_done, align 1, !dbg !451
  store i8 1, ptr %__ret_once, align 1, !dbg !451
  br label %if.end42, !dbg !451

if.end42:                                         ; preds = %if.then41, %land.end
  %13 = load i8, ptr %__ret_once, align 1, !dbg !445, !range !446, !noundef !447
  %tobool44 = trunc i8 %13 to i1, !dbg !445
  %lnot45 = xor i1 %tobool44, true, !dbg !445
  %lnot47 = xor i1 %lnot45, true, !dbg !445
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !445
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !445
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !445
  store i64 %expval50, ptr %tmp43, align 8, !dbg !448
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #13, !dbg !453
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #13, !dbg !453
  %14 = load i64, ptr %tmp43, align 8, !dbg !445
  %tobool51 = icmp ne i64 %14, 0, !dbg !453
  br i1 %tobool51, label %if.then52, label %if.end92, !dbg !439

if.then52:                                        ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !454
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !97, metadata !DIExpression()), !dbg !454
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !454
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !455
  %tobool53 = icmp ne i32 %15, 0, !dbg !455
  %lnot54 = xor i1 %tobool53, true, !dbg !455
  %lnot56 = xor i1 %lnot54, true, !dbg !455
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !455
  %conv58 = sext i32 %lnot.ext57 to i64, !dbg !455
  %expval59 = call i64 @llvm.expect.i64(i64 %conv58, i64 0), !dbg !455
  %tobool60 = icmp ne i64 %expval59, 0, !dbg !455
  br i1 %tobool60, label %if.then61, label %if.end83, !dbg !454

if.then61:                                        ; preds = %if.then52
  br label %do.body62, !dbg !455

do.body62:                                        ; preds = %if.then61
  br label %do.body63, !dbg !456

do.body63:                                        ; preds = %do.body62
  br label %do.cond64, !dbg !457

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !457

do.end65:                                         ; preds = %do.cond64
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.2) #12, !dbg !456
  br label %do.body66, !dbg !456

do.body66:                                        ; preds = %do.end65
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !99, metadata !DIExpression()), !dbg !459
  store i32 2313, ptr %__flags, align 4, !dbg !459
  br label %do.body67, !dbg !459

do.body67:                                        ; preds = %do.body66
  br label %do.cond68, !dbg !460

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !460

do.end69:                                         ; preds = %do.cond68
  br label %do.body70, !dbg !459

do.body70:                                        ; preds = %do.end69
  %16 = load i32, ptr %__flags, align 4, !dbg !462
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 60, i32 %16, i64 12) #13, !dbg !462, !srcloc !464
  br label %do.cond71, !dbg !462

do.cond71:                                        ; preds = %do.body70
  br label %do.end72, !dbg !462

do.end72:                                         ; preds = %do.cond71
  br label %do.body73, !dbg !459

do.body73:                                        ; preds = %do.end72
  br label %do.cond74, !dbg !465

do.cond74:                                        ; preds = %do.body73
  br label %do.end75, !dbg !465

do.end75:                                         ; preds = %do.cond74
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !456
  br label %do.cond76, !dbg !459

do.cond76:                                        ; preds = %do.end75
  br label %do.end77, !dbg !459

do.end77:                                         ; preds = %do.cond76
  br label %do.body78, !dbg !456

do.body78:                                        ; preds = %do.end77
  br label %do.cond79, !dbg !467

do.cond79:                                        ; preds = %do.body78
  br label %do.end80, !dbg !467

do.end80:                                         ; preds = %do.cond79
  br label %do.cond81, !dbg !456

do.cond81:                                        ; preds = %do.end80
  br label %do.end82, !dbg !456

do.end82:                                         ; preds = %do.cond81
  br label %if.end83, !dbg !456

if.end83:                                         ; preds = %do.end82, %if.then52
  %17 = load i32, ptr %__ret_warn_on, align 4, !dbg !454
  %tobool85 = icmp ne i32 %17, 0, !dbg !454
  %lnot86 = xor i1 %tobool85, true, !dbg !454
  %lnot88 = xor i1 %lnot86, true, !dbg !454
  %lnot.ext89 = zext i1 %lnot88 to i32, !dbg !454
  %conv90 = sext i32 %lnot.ext89 to i64, !dbg !454
  %expval91 = call i64 @llvm.expect.i64(i64 %conv90, i64 0), !dbg !454
  store i64 %expval91, ptr %tmp84, align 8, !dbg !455
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !453
  %18 = load i64, ptr %tmp84, align 8, !dbg !454
  br label %if.end92, !dbg !453

if.end92:                                         ; preds = %if.end83, %if.end42
  %19 = load i8, ptr %__ret_do_once, align 1, !dbg !439, !range !446, !noundef !447
  %tobool94 = trunc i8 %19 to i1, !dbg !439
  %lnot95 = xor i1 %tobool94, true, !dbg !439
  %lnot97 = xor i1 %lnot95, true, !dbg !439
  %lnot.ext98 = zext i1 %lnot97 to i32, !dbg !439
  %conv99 = sext i32 %lnot.ext98 to i64, !dbg !439
  %expval100 = call i64 @llvm.expect.i64(i64 %conv99, i64 0), !dbg !439
  store i64 %expval100, ptr %tmp93, align 8, !dbg !453
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #13, !dbg !469
  %20 = load i64, ptr %tmp93, align 8, !dbg !439
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !470
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !103, metadata !DIExpression()), !dbg !470
  %21 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @syscore_ops_list, i32 0, i32 1), align 8, !dbg !470
  store ptr %21, ptr %__mptr, align 8, !dbg !470
  %22 = load ptr, ptr %__mptr, align 8, !dbg !470
  %add.ptr = getelementptr i8, ptr %22, i64 0, !dbg !470
  store ptr %add.ptr, ptr %tmp101, align 8, !dbg !470
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !471
  %23 = load ptr, ptr %tmp101, align 8, !dbg !470
  store ptr %23, ptr %ops, align 8, !dbg !471
  br label %for.cond, !dbg !471

for.cond:                                         ; preds = %for.inc, %if.end92
  %24 = load ptr, ptr %ops, align 8, !dbg !472
  %node = getelementptr inbounds %struct.syscore_ops, ptr %24, i32 0, i32 0, !dbg !472
  %cmp102 = icmp eq ptr %node, @syscore_ops_list, !dbg !472
  %lnot104 = xor i1 %cmp102, true, !dbg !472
  br i1 %lnot104, label %for.body, label %for.end, !dbg !471

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %ops, align 8, !dbg !473
  %suspend = getelementptr inbounds %struct.syscore_ops, ptr %25, i32 0, i32 1, !dbg !474
  %26 = load ptr, ptr %suspend, align 8, !dbg !474
  %tobool106 = icmp ne ptr %26, null, !dbg !473
  br i1 %tobool106, label %if.then107, label %if.end243, !dbg !475

if.then107:                                       ; preds = %for.body
  br label %do.body108, !dbg !476

do.body108:                                       ; preds = %if.then107
  %call109 = call zeroext i1 @pm_debug_messages_should_print() #12, !dbg !477
  br i1 %call109, label %if.then110, label %if.else117, !dbg !480

if.then110:                                       ; preds = %do.body108
  br label %do.body111, !dbg !481

do.body111:                                       ; preds = %if.then110
  br label %do.cond112, !dbg !483

do.cond112:                                       ; preds = %do.body111
  br label %do.end113, !dbg !483

do.end113:                                        ; preds = %do.cond112
  %27 = load ptr, ptr %ops, align 8, !dbg !481
  %suspend115 = getelementptr inbounds %struct.syscore_ops, ptr %27, i32 0, i32 1, !dbg !481
  %28 = load ptr, ptr %suspend115, align 8, !dbg !481
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %28) #14, !dbg !481
  store i32 %call116, ptr %tmp114, align 4, !dbg !483
  %29 = load i32, ptr %tmp114, align 4, !dbg !481
  br label %if.end123, !dbg !477

if.else117:                                       ; preds = %do.body108
  %call118 = call i32 @pm_dyn_debug_messages_on() #12, !dbg !485
  %tobool119 = icmp ne i32 %call118, 0, !dbg !485
  br i1 %tobool119, label %if.then120, label %if.end122, !dbg !477

if.then120:                                       ; preds = %if.else117
  store i32 0, ptr %tmp121, align 4, !dbg !487
  %30 = load i32, ptr %tmp121, align 4, !dbg !490
  br label %if.end122, !dbg !485

if.end122:                                        ; preds = %if.then120, %if.else117
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %do.end113
  br label %do.cond124, !dbg !480

do.cond124:                                       ; preds = %if.end123
  br label %do.end125, !dbg !480

do.end125:                                        ; preds = %do.cond124
  %31 = load ptr, ptr %ops, align 8, !dbg !491
  %suspend126 = getelementptr inbounds %struct.syscore_ops, ptr %31, i32 0, i32 1, !dbg !492
  %32 = load ptr, ptr %suspend126, align 8, !dbg !492
  %call127 = call i32 %32() #12, !dbg !491
  store i32 %call127, ptr %ret, align 4, !dbg !493
  %33 = load i32, ptr %ret, align 4, !dbg !494
  %tobool128 = icmp ne i32 %33, 0, !dbg !494
  br i1 %tobool128, label %if.then129, label %if.end130, !dbg !496

if.then129:                                       ; preds = %do.end125
  br label %err_out, !dbg !497

if.end130:                                        ; preds = %do.end125
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once131) #13, !dbg !498
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once131, metadata !106, metadata !DIExpression()), !dbg !498
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags132) #13, !dbg !499
  call void @llvm.dbg.declare(metadata ptr %_flags132, metadata !111, metadata !DIExpression()), !dbg !499
  br label %do.body133, !dbg !499

do.body133:                                       ; preds = %if.end130
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy134) #13, !dbg !500
  call void @llvm.dbg.declare(metadata ptr %__dummy134, metadata !113, metadata !DIExpression()), !dbg !500
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2135) #13, !dbg !500
  call void @llvm.dbg.declare(metadata ptr %__dummy2135, metadata !116, metadata !DIExpression()), !dbg !500
  %cmp136 = icmp eq ptr %__dummy134, %__dummy2135, !dbg !500
  %conv137 = zext i1 %cmp136 to i32, !dbg !500
  store i32 1, ptr %tmp138, align 4, !dbg !500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2135) #13, !dbg !501
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy134) #13, !dbg !501
  %34 = load i32, ptr %tmp138, align 4, !dbg !500
  %call139 = call i64 @arch_local_save_flags() #12, !dbg !501
  store i64 %call139, ptr %_flags132, align 8, !dbg !501
  br label %do.cond140, !dbg !501

do.cond140:                                       ; preds = %do.body133
  br label %do.end141, !dbg !501

do.end141:                                        ; preds = %do.cond140
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy143) #13, !dbg !502
  call void @llvm.dbg.declare(metadata ptr %__dummy143, metadata !117, metadata !DIExpression()), !dbg !502
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2144) #13, !dbg !502
  call void @llvm.dbg.declare(metadata ptr %__dummy2144, metadata !120, metadata !DIExpression()), !dbg !502
  %cmp145 = icmp eq ptr %__dummy143, %__dummy2144, !dbg !502
  %conv146 = zext i1 %cmp145 to i32, !dbg !502
  store i32 1, ptr %tmp147, align 4, !dbg !502
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2144) #13, !dbg !503
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy143) #13, !dbg !503
  %35 = load i32, ptr %tmp147, align 4, !dbg !502
  %36 = load i64, ptr %_flags132, align 8, !dbg !503
  %call149 = call i32 @arch_irqs_disabled_flags(i64 noundef %36) #12, !dbg !503
  store i32 %call149, ptr %tmp148, align 4, !dbg !503
  %37 = load i32, ptr %tmp148, align 4, !dbg !503
  store i32 %37, ptr %tmp142, align 4, !dbg !501
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags132) #13, !dbg !498
  %38 = load i32, ptr %tmp142, align 4, !dbg !499
  %tobool150 = icmp ne i32 %38, 0, !dbg !498
  %lnot151 = xor i1 %tobool150, true, !dbg !498
  %lnot153 = xor i1 %lnot151, true, !dbg !498
  %lnot155 = xor i1 %lnot153, true, !dbg !498
  %frombool157 = zext i1 %lnot155 to i8, !dbg !498
  store i8 %frombool157, ptr %__ret_do_once131, align 1, !dbg !498
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond158) #13, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %__ret_cond158, metadata !121, metadata !DIExpression()), !dbg !504
  %39 = load i8, ptr %__ret_do_once131, align 1, !dbg !504, !range !446, !noundef !447
  %tobool159 = trunc i8 %39 to i1, !dbg !504
  %lnot160 = xor i1 %tobool159, true, !dbg !504
  %lnot162 = xor i1 %lnot160, true, !dbg !504
  %frombool164 = zext i1 %lnot162 to i8, !dbg !504
  store i8 %frombool164, ptr %__ret_cond158, align 1, !dbg !504
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once165) #13, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %__ret_once165, metadata !124, metadata !DIExpression()), !dbg !504
  store i8 0, ptr %__ret_once165, align 1, !dbg !504
  %40 = load i8, ptr %__ret_cond158, align 1, !dbg !505, !range !446, !noundef !447
  %tobool166 = trunc i8 %40 to i1, !dbg !505
  br i1 %tobool166, label %land.rhs168, label %land.end172, !dbg !505

land.rhs168:                                      ; preds = %do.end141
  %41 = load i8, ptr @syscore_suspend.__already_done.5, align 1, !dbg !505, !range !446, !noundef !447
  %tobool169 = trunc i8 %41 to i1, !dbg !505
  %lnot170 = xor i1 %tobool169, true, !dbg !505
  br label %land.end172

land.end172:                                      ; preds = %land.rhs168, %do.end141
  %42 = phi i1 [ false, %do.end141 ], [ %lnot170, %land.rhs168 ], !dbg !507
  %lnot173 = xor i1 %42, true, !dbg !505
  %lnot175 = xor i1 %lnot173, true, !dbg !505
  %lnot.ext176 = zext i1 %lnot175 to i32, !dbg !505
  %conv177 = sext i32 %lnot.ext176 to i64, !dbg !505
  %expval178 = call i64 @llvm.expect.i64(i64 %conv177, i64 0), !dbg !505
  %tobool179 = icmp ne i64 %expval178, 0, !dbg !505
  br i1 %tobool179, label %if.then180, label %if.end181, !dbg !504

if.then180:                                       ; preds = %land.end172
  store i8 1, ptr @syscore_suspend.__already_done.5, align 1, !dbg !508
  store i8 1, ptr %__ret_once165, align 1, !dbg !508
  br label %if.end181, !dbg !508

if.end181:                                        ; preds = %if.then180, %land.end172
  %43 = load i8, ptr %__ret_once165, align 1, !dbg !504, !range !446, !noundef !447
  %tobool183 = trunc i8 %43 to i1, !dbg !504
  %lnot184 = xor i1 %tobool183, true, !dbg !504
  %lnot186 = xor i1 %lnot184, true, !dbg !504
  %lnot.ext187 = zext i1 %lnot186 to i32, !dbg !504
  %conv188 = sext i32 %lnot.ext187 to i64, !dbg !504
  %expval189 = call i64 @llvm.expect.i64(i64 %conv188, i64 0), !dbg !504
  store i64 %expval189, ptr %tmp182, align 8, !dbg !505
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once165) #13, !dbg !510
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond158) #13, !dbg !510
  %44 = load i64, ptr %tmp182, align 8, !dbg !504
  %tobool190 = icmp ne i64 %44, 0, !dbg !510
  br i1 %tobool190, label %if.then191, label %if.end234, !dbg !498

if.then191:                                       ; preds = %if.end181
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on192) #13, !dbg !511
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on192, metadata !125, metadata !DIExpression()), !dbg !511
  store i32 1, ptr %__ret_warn_on192, align 4, !dbg !511
  %45 = load i32, ptr %__ret_warn_on192, align 4, !dbg !512
  %tobool193 = icmp ne i32 %45, 0, !dbg !512
  %lnot194 = xor i1 %tobool193, true, !dbg !512
  %lnot196 = xor i1 %lnot194, true, !dbg !512
  %lnot.ext197 = zext i1 %lnot196 to i32, !dbg !512
  %conv198 = sext i32 %lnot.ext197 to i64, !dbg !512
  %expval199 = call i64 @llvm.expect.i64(i64 %conv198, i64 0), !dbg !512
  %tobool200 = icmp ne i64 %expval199, 0, !dbg !512
  br i1 %tobool200, label %if.then201, label %if.end225, !dbg !511

if.then201:                                       ; preds = %if.then191
  br label %do.body202, !dbg !512

do.body202:                                       ; preds = %if.then201
  br label %do.body203, !dbg !513

do.body203:                                       ; preds = %do.body202
  br label %do.cond204, !dbg !514

do.cond204:                                       ; preds = %do.body203
  br label %do.end205, !dbg !514

do.end205:                                        ; preds = %do.cond204
  %46 = load ptr, ptr %ops, align 8, !dbg !513
  %suspend206 = getelementptr inbounds %struct.syscore_ops, ptr %46, i32 0, i32 1, !dbg !513
  %47 = load ptr, ptr %suspend206, align 8, !dbg !513
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.6, ptr noundef %47) #12, !dbg !513
  br label %do.body207, !dbg !513

do.body207:                                       ; preds = %do.end205
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags208) #13, !dbg !516
  call void @llvm.dbg.declare(metadata ptr %__flags208, metadata !127, metadata !DIExpression()), !dbg !516
  store i32 2313, ptr %__flags208, align 4, !dbg !516
  br label %do.body209, !dbg !516

do.body209:                                       ; preds = %do.body207
  br label %do.cond210, !dbg !517

do.cond210:                                       ; preds = %do.body209
  br label %do.end211, !dbg !517

do.end211:                                        ; preds = %do.cond210
  br label %do.body212, !dbg !516

do.body212:                                       ; preds = %do.end211
  %48 = load i32, ptr %__flags208, align 4, !dbg !519
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 69, i32 %48, i64 12) #13, !dbg !519, !srcloc !521
  br label %do.cond213, !dbg !519

do.cond213:                                       ; preds = %do.body212
  br label %do.end214, !dbg !519

do.end214:                                        ; preds = %do.cond213
  br label %do.body215, !dbg !516

do.body215:                                       ; preds = %do.end214
  br label %do.cond216, !dbg !522

do.cond216:                                       ; preds = %do.body215
  br label %do.end217, !dbg !522

do.end217:                                        ; preds = %do.cond216
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags208) #13, !dbg !513
  br label %do.cond218, !dbg !516

do.cond218:                                       ; preds = %do.end217
  br label %do.end219, !dbg !516

do.end219:                                        ; preds = %do.cond218
  br label %do.body220, !dbg !513

do.body220:                                       ; preds = %do.end219
  br label %do.cond221, !dbg !524

do.cond221:                                       ; preds = %do.body220
  br label %do.end222, !dbg !524

do.end222:                                        ; preds = %do.cond221
  br label %do.cond223, !dbg !513

do.cond223:                                       ; preds = %do.end222
  br label %do.end224, !dbg !513

do.end224:                                        ; preds = %do.cond223
  br label %if.end225, !dbg !513

if.end225:                                        ; preds = %do.end224, %if.then191
  %49 = load i32, ptr %__ret_warn_on192, align 4, !dbg !511
  %tobool227 = icmp ne i32 %49, 0, !dbg !511
  %lnot228 = xor i1 %tobool227, true, !dbg !511
  %lnot230 = xor i1 %lnot228, true, !dbg !511
  %lnot.ext231 = zext i1 %lnot230 to i32, !dbg !511
  %conv232 = sext i32 %lnot.ext231 to i64, !dbg !511
  %expval233 = call i64 @llvm.expect.i64(i64 %conv232, i64 0), !dbg !511
  store i64 %expval233, ptr %tmp226, align 8, !dbg !512
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on192) #13, !dbg !510
  %50 = load i64, ptr %tmp226, align 8, !dbg !511
  br label %if.end234, !dbg !510

if.end234:                                        ; preds = %if.end225, %if.end181
  %51 = load i8, ptr %__ret_do_once131, align 1, !dbg !498, !range !446, !noundef !447
  %tobool236 = trunc i8 %51 to i1, !dbg !498
  %lnot237 = xor i1 %tobool236, true, !dbg !498
  %lnot239 = xor i1 %lnot237, true, !dbg !498
  %lnot.ext240 = zext i1 %lnot239 to i32, !dbg !498
  %conv241 = sext i32 %lnot.ext240 to i64, !dbg !498
  %expval242 = call i64 @llvm.expect.i64(i64 %conv241, i64 0), !dbg !498
  store i64 %expval242, ptr %tmp235, align 8, !dbg !510
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once131) #13, !dbg !526
  %52 = load i64, ptr %tmp235, align 8, !dbg !498
  br label %if.end243, !dbg !527

if.end243:                                        ; preds = %if.end234, %for.body
  br label %for.inc, !dbg !474

for.inc:                                          ; preds = %if.end243
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr244) #13, !dbg !528
  call void @llvm.dbg.declare(metadata ptr %__mptr244, metadata !131, metadata !DIExpression()), !dbg !528
  %53 = load ptr, ptr %ops, align 8, !dbg !528
  %node245 = getelementptr inbounds %struct.syscore_ops, ptr %53, i32 0, i32 0, !dbg !528
  %prev = getelementptr inbounds %struct.list_head, ptr %node245, i32 0, i32 1, !dbg !528
  %54 = load ptr, ptr %prev, align 8, !dbg !528
  store ptr %54, ptr %__mptr244, align 8, !dbg !528
  %55 = load ptr, ptr %__mptr244, align 8, !dbg !528
  %add.ptr247 = getelementptr i8, ptr %55, i64 0, !dbg !528
  store ptr %add.ptr247, ptr %tmp246, align 8, !dbg !528
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr244) #13, !dbg !472
  %56 = load ptr, ptr %tmp246, align 8, !dbg !528
  store ptr %56, ptr %ops, align 8, !dbg !472
  br label %for.cond, !dbg !472, !llvm.loop !529

for.end:                                          ; preds = %for.cond
  %57 = load ptr, ptr @syscore_suspend.___tp_str.7, align 8, !dbg !533
  store ptr %57, ptr %tmp248, align 8, !dbg !533
  %58 = load ptr, ptr %tmp248, align 8, !dbg !533
  call void @trace_suspend_resume(ptr noundef %58, i32 noundef 0, i1 noundef zeroext false) #12, !dbg !535
  store i32 0, ptr %retval, align 4, !dbg !536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !536

err_out:                                          ; preds = %if.then129
  call void @llvm.dbg.label(metadata !133), !dbg !537
  br label %do.body249, !dbg !538

do.body249:                                       ; preds = %err_out
  br label %do.cond250, !dbg !540

do.cond250:                                       ; preds = %do.body249
  br label %do.end251, !dbg !540

do.end251:                                        ; preds = %do.cond250
  %59 = load ptr, ptr %ops, align 8, !dbg !538
  %suspend253 = getelementptr inbounds %struct.syscore_ops, ptr %59, i32 0, i32 1, !dbg !538
  %60 = load ptr, ptr %suspend253, align 8, !dbg !538
  %call254 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, ptr noundef %60) #14, !dbg !538
  store i32 %call254, ptr %tmp252, align 4, !dbg !540
  %61 = load i32, ptr %tmp252, align 4, !dbg !538
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr255) #13, !dbg !542
  call void @llvm.dbg.declare(metadata ptr %__mptr255, metadata !134, metadata !DIExpression()), !dbg !542
  %62 = load ptr, ptr %ops, align 8, !dbg !542
  %node256 = getelementptr inbounds %struct.syscore_ops, ptr %62, i32 0, i32 0, !dbg !542
  %next = getelementptr inbounds %struct.list_head, ptr %node256, i32 0, i32 0, !dbg !542
  %63 = load ptr, ptr %next, align 8, !dbg !542
  store ptr %63, ptr %__mptr255, align 8, !dbg !542
  %64 = load ptr, ptr %__mptr255, align 8, !dbg !542
  %add.ptr258 = getelementptr i8, ptr %64, i64 0, !dbg !542
  store ptr %add.ptr258, ptr %tmp257, align 8, !dbg !542
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr255) #13, !dbg !543
  %65 = load ptr, ptr %tmp257, align 8, !dbg !542
  store ptr %65, ptr %ops, align 8, !dbg !543
  br label %for.cond259, !dbg !543

for.cond259:                                      ; preds = %for.inc270, %do.end251
  %66 = load ptr, ptr %ops, align 8, !dbg !544
  %node260 = getelementptr inbounds %struct.syscore_ops, ptr %66, i32 0, i32 0, !dbg !544
  %cmp261 = icmp eq ptr %node260, @syscore_ops_list, !dbg !544
  %lnot263 = xor i1 %cmp261, true, !dbg !544
  br i1 %lnot263, label %for.body265, label %for.end276, !dbg !543

for.body265:                                      ; preds = %for.cond259
  %67 = load ptr, ptr %ops, align 8, !dbg !545
  %resume = getelementptr inbounds %struct.syscore_ops, ptr %67, i32 0, i32 2, !dbg !547
  %68 = load ptr, ptr %resume, align 8, !dbg !547
  %tobool266 = icmp ne ptr %68, null, !dbg !545
  br i1 %tobool266, label %if.then267, label %if.end269, !dbg !548

if.then267:                                       ; preds = %for.body265
  %69 = load ptr, ptr %ops, align 8, !dbg !549
  %resume268 = getelementptr inbounds %struct.syscore_ops, ptr %69, i32 0, i32 2, !dbg !550
  %70 = load ptr, ptr %resume268, align 8, !dbg !550
  call void %70() #12, !dbg !549
  br label %if.end269, !dbg !549

if.end269:                                        ; preds = %if.then267, %for.body265
  br label %for.inc270, !dbg !547

for.inc270:                                       ; preds = %if.end269
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr271) #13, !dbg !551
  call void @llvm.dbg.declare(metadata ptr %__mptr271, metadata !137, metadata !DIExpression()), !dbg !551
  %71 = load ptr, ptr %ops, align 8, !dbg !551
  %node272 = getelementptr inbounds %struct.syscore_ops, ptr %71, i32 0, i32 0, !dbg !551
  %next273 = getelementptr inbounds %struct.list_head, ptr %node272, i32 0, i32 0, !dbg !551
  %72 = load ptr, ptr %next273, align 8, !dbg !551
  store ptr %72, ptr %__mptr271, align 8, !dbg !551
  %73 = load ptr, ptr %__mptr271, align 8, !dbg !551
  %add.ptr275 = getelementptr i8, ptr %73, i64 0, !dbg !551
  store ptr %add.ptr275, ptr %tmp274, align 8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr271) #13, !dbg !544
  %74 = load ptr, ptr %tmp274, align 8, !dbg !551
  store ptr %74, ptr %ops, align 8, !dbg !544
  br label %for.cond259, !dbg !544, !llvm.loop !552

for.end276:                                       ; preds = %for.cond259
  %75 = load i32, ptr %ret, align 4, !dbg !554
  store i32 %75, ptr %retval, align 4, !dbg !555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !555

cleanup:                                          ; preds = %for.end276, %for.end, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !556
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #13, !dbg !556
  %76 = load i32, ptr %retval, align 4, !dbg !556
  ret i32 %76, !dbg !556
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_suspend_resume(ptr noundef %action, i32 noundef %val, i1 noundef zeroext %start) #3 align 16 !dbg !261 {
entry:
  %action.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %start.addr = alloca i8, align 1
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu431 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !265, metadata !DIExpression()), !dbg !557
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !266, metadata !DIExpression()), !dbg !557
  %frombool = zext i1 %start to i8
  store i8 %frombool, ptr %start.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !267, metadata !DIExpression()), !dbg !557
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1)) #12, !dbg !558
  br i1 %call, label %if.then, label %if.end69, !dbg !557

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !558

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #13, !dbg !559
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !268, metadata !DIExpression()), !dbg !559
  store i32 0, ptr %__idx, align 4, !dbg !559
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !560
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !271, metadata !DIExpression()), !dbg !560
  br label %do.body1, !dbg !560

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !561
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !274, metadata !DIExpression()), !dbg !561
  store ptr null, ptr %__vpp_verify, align 8, !dbg !561
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !561
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !560
  br label %do.cond, !dbg !561

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !561

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !278, metadata !DIExpression()), !dbg !562
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !562, !srcloc !563
  store i32 %1, ptr %pfo_val__, align 4, !dbg !562
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !562
  %conv = zext i32 %2 to i64, !dbg !562
  %conv2 = trunc i64 %conv to i32, !dbg !562
  store i32 %conv2, ptr %tmp, align 4, !dbg !562
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !560
  %3 = load i32, ptr %tmp, align 4, !dbg !562
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !560
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !560
  store i32 %4, ptr %tmp3, align 4, !dbg !560
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !564
  %5 = load i32, ptr %tmp3, align 4, !dbg !560
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #12, !dbg !564
  br i1 %call4, label %if.end, label %if.then5, !dbg !559

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !564

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !565
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !280, metadata !DIExpression()), !dbg !565
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !565
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !566
  %tobool = icmp ne i32 %6, 0, !dbg !566
  %lnot = xor i1 %tobool, true, !dbg !566
  %lnot6 = xor i1 %lnot, true, !dbg !566
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !566
  %conv7 = sext i32 %lnot.ext to i64, !dbg !566
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !566
  %tobool8 = icmp ne i64 %expval, 0, !dbg !566
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !565

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !566

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !567
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !283, metadata !DIExpression()), !dbg !567
  store i32 2307, ptr %__flags, align 4, !dbg !567
  br label %do.body11, !dbg !567

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !568

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !568

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !567

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !570
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.14, i32 268, i32 %7, i64 12) #13, !dbg !570, !srcloc !572
  br label %do.cond15, !dbg !570

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !570

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !567

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !573

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !573

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !566
  br label %do.cond20, !dbg !567

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !567

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !567

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !565
  %tobool24 = icmp ne i32 %8, 0, !dbg !565
  %lnot25 = xor i1 %tobool24, true, !dbg !565
  %lnot27 = xor i1 %lnot25, true, !dbg !565
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !565
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !565
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !565
  store i64 %expval30, ptr %tmp23, align 8, !dbg !566
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !575
  %9 = load i64, ptr %tmp23, align 8, !dbg !565
  %tobool31 = icmp ne i64 %9, 0, !dbg !575
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !559

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !575

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !559

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !576
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !576, !srcloc !578
  br label %do.cond35, !dbg !576

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !576

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !559

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #13, !dbg !579
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !286, metadata !DIExpression()), !dbg !579
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #13, !dbg !579
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !288, metadata !DIExpression()), !dbg !579
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu431) #13, !dbg !580
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu431, metadata !289, metadata !DIExpression()), !dbg !580
  br label %do.body38, !dbg !581

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !583

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !583

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 8), align 8, !dbg !581
  store ptr %10, ptr %tmp41, align 8, !dbg !583
  %11 = load ptr, ptr %tmp41, align 8, !dbg !581
  store ptr %11, ptr %__UNIQUE_ID_rcu431, align 8, !dbg !580
  %12 = load ptr, ptr %__UNIQUE_ID_rcu431, align 8, !dbg !580
  store ptr %12, ptr %tmp42, align 8, !dbg !580
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu431) #13, !dbg !579
  %13 = load ptr, ptr %tmp42, align 8, !dbg !580
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !579
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !585
  %tobool43 = icmp ne ptr %14, null, !dbg !585
  br i1 %tobool43, label %if.then44, label %if.end48, !dbg !579

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !587
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !587
  %16 = load ptr, ptr %data, align 8, !dbg !587
  store ptr %16, ptr %__data, align 8, !dbg !587
  store ptr @__SCT__tp_func_suspend_resume, ptr %tmp45, align 8, !dbg !589
  %17 = load ptr, ptr %tmp45, align 8, !dbg !589
  %18 = load ptr, ptr %__data, align 8, !dbg !587
  %19 = load ptr, ptr %action.addr, align 8, !dbg !587
  %20 = load i32, ptr %val.addr, align 4, !dbg !587
  %21 = load i8, ptr %start.addr, align 1, !dbg !587, !range !446, !noundef !447
  %tobool46 = trunc i8 %21 to i1, !dbg !587
  %call47 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20, i1 noundef zeroext %tobool46) #12, !dbg !587
  br label %if.end48, !dbg !587

if.end48:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #13, !dbg !559
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #13, !dbg !559
  br label %do.cond49, !dbg !579

do.cond49:                                        ; preds = %if.end48
  br label %do.end50, !dbg !579

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !559

do.body51:                                        ; preds = %do.end50
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !591, !srcloc !593
  %call52 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !594
  %lnot53 = xor i1 %call52, true, !dbg !594
  %lnot55 = xor i1 %lnot53, true, !dbg !594
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !594
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !594
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !594
  %tobool59 = icmp ne i64 %expval58, 0, !dbg !594
  br i1 %tobool59, label %if.then60, label %if.end64, !dbg !591

if.then60:                                        ; preds = %do.body51
  br label %do.body61, !dbg !594

do.body61:                                        ; preds = %if.then60
  %22 = call i64 @llvm.read_register.i64(metadata !346), !dbg !596
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #13, !dbg !596, !srcloc !598
  call void @llvm.write_register.i64(metadata !346, i64 %23), !dbg !596
  br label %do.cond62, !dbg !596

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !596

do.end63:                                         ; preds = %do.cond62
  br label %if.end64, !dbg !596

if.end64:                                         ; preds = %do.end63, %do.body51
  br label %do.cond65, !dbg !591

do.cond65:                                        ; preds = %if.end64
  br label %do.end66, !dbg !591

do.end66:                                         ; preds = %do.cond65
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !558
  br label %cleanup, !dbg !558

cleanup:                                          ; preds = %do.end66, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #13, !dbg !558
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end69
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end68, !dbg !559

do.end68:                                         ; preds = %cleanup.cont
  br label %if.end69, !dbg !559

if.end69:                                         ; preds = %cleanup, %do.end68, %entry
  ret void, !dbg !557

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !599 dso_local zeroext i1 @pm_debug_messages_should_print() #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !603 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pm_dyn_debug_messages_on() #3 align 16 !dbg !607 {
entry:
  ret i32 0, !dbg !608
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !609 dso_local zeroext i1 @pm_wakeup_pending() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !610 {
entry:
  %call = call i64 @native_save_fl() #12, !dbg !614
  ret i64 %call, !dbg !615
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !616 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !620, metadata !DIExpression()), !dbg !621
  %0 = load i64, ptr %flags.addr, align 8, !dbg !622
  %and = and i64 %0, 512, !dbg !623
  %tobool = icmp ne i64 %and, 0, !dbg !624
  %lnot = xor i1 %tobool, true, !dbg !624
  %lnot.ext = zext i1 %lnot to i32, !dbg !624
  ret i32 %lnot.ext, !dbg !625
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !626 dso_local void @__warn_printk(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @syscore_resume() #0 align 16 !dbg !178 {
entry:
  %ops = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp24 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp65 = alloca i64, align 8
  %tmp74 = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp82 = alloca ptr, align 8
  %tmp95 = alloca i32, align 4
  %tmp101 = alloca i32, align 4
  %__ret_do_once107 = alloca i8, align 1
  %_flags108 = alloca i64, align 8
  %__dummy110 = alloca i64, align 8
  %__dummy2111 = alloca i64, align 8
  %tmp114 = alloca i32, align 4
  %tmp118 = alloca i32, align 4
  %__dummy119 = alloca i64, align 8
  %__dummy2120 = alloca i64, align 8
  %tmp123 = alloca i32, align 4
  %tmp124 = alloca i32, align 4
  %__ret_cond134 = alloca i8, align 1
  %__ret_once141 = alloca i8, align 1
  %tmp158 = alloca i64, align 8
  %__ret_warn_on168 = alloca i32, align 4
  %__flags184 = alloca i32, align 4
  %tmp202 = alloca i64, align 8
  %tmp211 = alloca i64, align 8
  %__mptr220 = alloca ptr, align 8
  %tmp222 = alloca ptr, align 8
  %tmp224 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #13, !dbg !630
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !180, metadata !DIExpression()), !dbg !631
  %0 = load ptr, ptr @syscore_resume.___tp_str, align 8, !dbg !632
  store ptr %0, ptr %tmp, align 8, !dbg !632
  %1 = load ptr, ptr %tmp, align 8, !dbg !632
  call void @trace_suspend_resume(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #12, !dbg !634
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #13, !dbg !635
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !181, metadata !DIExpression()), !dbg !635
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !636
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !183, metadata !DIExpression()), !dbg !636
  br label %do.body, !dbg !636

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !185, metadata !DIExpression()), !dbg !637
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !188, metadata !DIExpression()), !dbg !637
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !637
  %conv = zext i1 %cmp to i32, !dbg !637
  store i32 1, ptr %tmp1, align 4, !dbg !637
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !638
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !638
  %2 = load i32, ptr %tmp1, align 4, !dbg !637
  %call = call i64 @arch_local_save_flags() #12, !dbg !638
  store i64 %call, ptr %_flags, align 8, !dbg !638
  br label %do.cond, !dbg !638

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !638

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !639
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !189, metadata !DIExpression()), !dbg !639
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !639
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !192, metadata !DIExpression()), !dbg !639
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !639
  %conv6 = zext i1 %cmp5 to i32, !dbg !639
  store i32 1, ptr %tmp7, align 4, !dbg !639
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !640
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !640
  %3 = load i32, ptr %tmp7, align 4, !dbg !639
  %4 = load i64, ptr %_flags, align 8, !dbg !640
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %4) #12, !dbg !640
  store i32 %call9, ptr %tmp8, align 4, !dbg !640
  %5 = load i32, ptr %tmp8, align 4, !dbg !640
  store i32 %5, ptr %tmp2, align 4, !dbg !638
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !635
  %6 = load i32, ptr %tmp2, align 4, !dbg !636
  %tobool = icmp ne i32 %6, 0, !dbg !635
  %lnot = xor i1 %tobool, true, !dbg !635
  %lnot10 = xor i1 %lnot, true, !dbg !635
  %lnot11 = xor i1 %lnot10, true, !dbg !635
  %frombool = zext i1 %lnot11 to i8, !dbg !635
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !635
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #13, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !193, metadata !DIExpression()), !dbg !641
  %7 = load i8, ptr %__ret_do_once, align 1, !dbg !641, !range !446, !noundef !447
  %tobool12 = trunc i8 %7 to i1, !dbg !641
  %lnot13 = xor i1 %tobool12, true, !dbg !641
  %lnot14 = xor i1 %lnot13, true, !dbg !641
  %frombool15 = zext i1 %lnot14 to i8, !dbg !641
  store i8 %frombool15, ptr %__ret_cond, align 1, !dbg !641
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #13, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !196, metadata !DIExpression()), !dbg !641
  store i8 0, ptr %__ret_once, align 1, !dbg !641
  %8 = load i8, ptr %__ret_cond, align 1, !dbg !642, !range !446, !noundef !447
  %tobool16 = trunc i8 %8 to i1, !dbg !642
  br i1 %tobool16, label %land.rhs, label %land.end, !dbg !642

land.rhs:                                         ; preds = %do.end
  %9 = load i8, ptr @syscore_resume.__already_done, align 1, !dbg !642, !range !446, !noundef !447
  %tobool18 = trunc i8 %9 to i1, !dbg !642
  %lnot19 = xor i1 %tobool18, true, !dbg !642
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %10 = phi i1 [ false, %do.end ], [ %lnot19, %land.rhs ], !dbg !644
  %lnot20 = xor i1 %10, true, !dbg !642
  %lnot21 = xor i1 %lnot20, true, !dbg !642
  %lnot.ext = zext i1 %lnot21 to i32, !dbg !642
  %conv22 = sext i32 %lnot.ext to i64, !dbg !642
  %expval = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !642
  %tobool23 = icmp ne i64 %expval, 0, !dbg !642
  br i1 %tobool23, label %if.then, label %if.end, !dbg !641

if.then:                                          ; preds = %land.end
  store i8 1, ptr @syscore_resume.__already_done, align 1, !dbg !645
  store i8 1, ptr %__ret_once, align 1, !dbg !645
  br label %if.end, !dbg !645

if.end:                                           ; preds = %if.then, %land.end
  %11 = load i8, ptr %__ret_once, align 1, !dbg !641, !range !446, !noundef !447
  %tobool25 = trunc i8 %11 to i1, !dbg !641
  %lnot26 = xor i1 %tobool25, true, !dbg !641
  %lnot28 = xor i1 %lnot26, true, !dbg !641
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !641
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !641
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !641
  store i64 %expval31, ptr %tmp24, align 8, !dbg !642
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #13, !dbg !647
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #13, !dbg !647
  %12 = load i64, ptr %tmp24, align 8, !dbg !641
  %tobool32 = icmp ne i64 %12, 0, !dbg !647
  br i1 %tobool32, label %if.then33, label %if.end73, !dbg !635

if.then33:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !648
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !197, metadata !DIExpression()), !dbg !648
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !648
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !649
  %tobool34 = icmp ne i32 %13, 0, !dbg !649
  %lnot35 = xor i1 %tobool34, true, !dbg !649
  %lnot37 = xor i1 %lnot35, true, !dbg !649
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !649
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !649
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !649
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !649
  br i1 %tobool41, label %if.then42, label %if.end64, !dbg !648

if.then42:                                        ; preds = %if.then33
  br label %do.body43, !dbg !649

do.body43:                                        ; preds = %if.then42
  br label %do.body44, !dbg !650

do.body44:                                        ; preds = %do.body43
  br label %do.cond45, !dbg !651

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !651

do.end46:                                         ; preds = %do.cond45
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.10) #12, !dbg !650
  br label %do.body47, !dbg !650

do.body47:                                        ; preds = %do.end46
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !653
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !199, metadata !DIExpression()), !dbg !653
  store i32 2313, ptr %__flags, align 4, !dbg !653
  br label %do.body48, !dbg !653

do.body48:                                        ; preds = %do.body47
  br label %do.cond49, !dbg !654

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !654

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !653

do.body51:                                        ; preds = %do.end50
  %14 = load i32, ptr %__flags, align 4, !dbg !656
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 97, i32 %14, i64 12) #13, !dbg !656, !srcloc !658
  br label %do.cond52, !dbg !656

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !656

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !653

do.body54:                                        ; preds = %do.end53
  br label %do.cond55, !dbg !659

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !659

do.end56:                                         ; preds = %do.cond55
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !650
  br label %do.cond57, !dbg !653

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !653

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !650

do.body59:                                        ; preds = %do.end58
  br label %do.cond60, !dbg !661

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !661

do.end61:                                         ; preds = %do.cond60
  br label %do.cond62, !dbg !650

do.cond62:                                        ; preds = %do.end61
  br label %do.end63, !dbg !650

do.end63:                                         ; preds = %do.cond62
  br label %if.end64, !dbg !650

if.end64:                                         ; preds = %do.end63, %if.then33
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !648
  %tobool66 = icmp ne i32 %15, 0, !dbg !648
  %lnot67 = xor i1 %tobool66, true, !dbg !648
  %lnot69 = xor i1 %lnot67, true, !dbg !648
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !648
  %conv71 = sext i32 %lnot.ext70 to i64, !dbg !648
  %expval72 = call i64 @llvm.expect.i64(i64 %conv71, i64 0), !dbg !648
  store i64 %expval72, ptr %tmp65, align 8, !dbg !649
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !647
  %16 = load i64, ptr %tmp65, align 8, !dbg !648
  br label %if.end73, !dbg !647

if.end73:                                         ; preds = %if.end64, %if.end
  %17 = load i8, ptr %__ret_do_once, align 1, !dbg !635, !range !446, !noundef !447
  %tobool75 = trunc i8 %17 to i1, !dbg !635
  %lnot76 = xor i1 %tobool75, true, !dbg !635
  %lnot78 = xor i1 %lnot76, true, !dbg !635
  %lnot.ext79 = zext i1 %lnot78 to i32, !dbg !635
  %conv80 = sext i32 %lnot.ext79 to i64, !dbg !635
  %expval81 = call i64 @llvm.expect.i64(i64 %conv80, i64 0), !dbg !635
  store i64 %expval81, ptr %tmp74, align 8, !dbg !647
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #13, !dbg !663
  %18 = load i64, ptr %tmp74, align 8, !dbg !635
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !664
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !203, metadata !DIExpression()), !dbg !664
  %19 = load ptr, ptr @syscore_ops_list, align 8, !dbg !664
  store ptr %19, ptr %__mptr, align 8, !dbg !664
  %20 = load ptr, ptr %__mptr, align 8, !dbg !664
  %add.ptr = getelementptr i8, ptr %20, i64 0, !dbg !664
  store ptr %add.ptr, ptr %tmp82, align 8, !dbg !664
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !665
  %21 = load ptr, ptr %tmp82, align 8, !dbg !664
  store ptr %21, ptr %ops, align 8, !dbg !665
  br label %for.cond, !dbg !665

for.cond:                                         ; preds = %for.inc, %if.end73
  %22 = load ptr, ptr %ops, align 8, !dbg !666
  %node = getelementptr inbounds %struct.syscore_ops, ptr %22, i32 0, i32 0, !dbg !666
  %cmp83 = icmp eq ptr %node, @syscore_ops_list, !dbg !666
  %lnot85 = xor i1 %cmp83, true, !dbg !666
  br i1 %lnot85, label %for.body, label %for.end, !dbg !665

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %ops, align 8, !dbg !667
  %resume = getelementptr inbounds %struct.syscore_ops, ptr %23, i32 0, i32 2, !dbg !668
  %24 = load ptr, ptr %resume, align 8, !dbg !668
  %tobool87 = icmp ne ptr %24, null, !dbg !667
  br i1 %tobool87, label %if.then88, label %if.end219, !dbg !669

if.then88:                                        ; preds = %for.body
  br label %do.body89, !dbg !670

do.body89:                                        ; preds = %if.then88
  %call90 = call zeroext i1 @pm_debug_messages_should_print() #12, !dbg !671
  br i1 %call90, label %if.then91, label %if.else, !dbg !674

if.then91:                                        ; preds = %do.body89
  br label %do.body92, !dbg !675

do.body92:                                        ; preds = %if.then91
  br label %do.cond93, !dbg !677

do.cond93:                                        ; preds = %do.body92
  br label %do.end94, !dbg !677

do.end94:                                         ; preds = %do.cond93
  %25 = load ptr, ptr %ops, align 8, !dbg !675
  %resume96 = getelementptr inbounds %struct.syscore_ops, ptr %25, i32 0, i32 2, !dbg !675
  %26 = load ptr, ptr %resume96, align 8, !dbg !675
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %26) #14, !dbg !675
  store i32 %call97, ptr %tmp95, align 4, !dbg !677
  %27 = load i32, ptr %tmp95, align 4, !dbg !675
  br label %if.end103, !dbg !671

if.else:                                          ; preds = %do.body89
  %call98 = call i32 @pm_dyn_debug_messages_on() #12, !dbg !679
  %tobool99 = icmp ne i32 %call98, 0, !dbg !679
  br i1 %tobool99, label %if.then100, label %if.end102, !dbg !671

if.then100:                                       ; preds = %if.else
  store i32 0, ptr %tmp101, align 4, !dbg !681
  %28 = load i32, ptr %tmp101, align 4, !dbg !684
  br label %if.end102, !dbg !679

if.end102:                                        ; preds = %if.then100, %if.else
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %do.end94
  br label %do.cond104, !dbg !674

do.cond104:                                       ; preds = %if.end103
  br label %do.end105, !dbg !674

do.end105:                                        ; preds = %do.cond104
  %29 = load ptr, ptr %ops, align 8, !dbg !685
  %resume106 = getelementptr inbounds %struct.syscore_ops, ptr %29, i32 0, i32 2, !dbg !686
  %30 = load ptr, ptr %resume106, align 8, !dbg !686
  call void %30() #12, !dbg !685
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once107) #13, !dbg !687
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once107, metadata !206, metadata !DIExpression()), !dbg !687
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags108) #13, !dbg !688
  call void @llvm.dbg.declare(metadata ptr %_flags108, metadata !211, metadata !DIExpression()), !dbg !688
  br label %do.body109, !dbg !688

do.body109:                                       ; preds = %do.end105
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy110) #13, !dbg !689
  call void @llvm.dbg.declare(metadata ptr %__dummy110, metadata !213, metadata !DIExpression()), !dbg !689
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2111) #13, !dbg !689
  call void @llvm.dbg.declare(metadata ptr %__dummy2111, metadata !216, metadata !DIExpression()), !dbg !689
  %cmp112 = icmp eq ptr %__dummy110, %__dummy2111, !dbg !689
  %conv113 = zext i1 %cmp112 to i32, !dbg !689
  store i32 1, ptr %tmp114, align 4, !dbg !689
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2111) #13, !dbg !690
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy110) #13, !dbg !690
  %31 = load i32, ptr %tmp114, align 4, !dbg !689
  %call115 = call i64 @arch_local_save_flags() #12, !dbg !690
  store i64 %call115, ptr %_flags108, align 8, !dbg !690
  br label %do.cond116, !dbg !690

do.cond116:                                       ; preds = %do.body109
  br label %do.end117, !dbg !690

do.end117:                                        ; preds = %do.cond116
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy119) #13, !dbg !691
  call void @llvm.dbg.declare(metadata ptr %__dummy119, metadata !217, metadata !DIExpression()), !dbg !691
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2120) #13, !dbg !691
  call void @llvm.dbg.declare(metadata ptr %__dummy2120, metadata !220, metadata !DIExpression()), !dbg !691
  %cmp121 = icmp eq ptr %__dummy119, %__dummy2120, !dbg !691
  %conv122 = zext i1 %cmp121 to i32, !dbg !691
  store i32 1, ptr %tmp123, align 4, !dbg !691
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2120) #13, !dbg !692
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy119) #13, !dbg !692
  %32 = load i32, ptr %tmp123, align 4, !dbg !691
  %33 = load i64, ptr %_flags108, align 8, !dbg !692
  %call125 = call i32 @arch_irqs_disabled_flags(i64 noundef %33) #12, !dbg !692
  store i32 %call125, ptr %tmp124, align 4, !dbg !692
  %34 = load i32, ptr %tmp124, align 4, !dbg !692
  store i32 %34, ptr %tmp118, align 4, !dbg !690
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags108) #13, !dbg !687
  %35 = load i32, ptr %tmp118, align 4, !dbg !688
  %tobool126 = icmp ne i32 %35, 0, !dbg !687
  %lnot127 = xor i1 %tobool126, true, !dbg !687
  %lnot129 = xor i1 %lnot127, true, !dbg !687
  %lnot131 = xor i1 %lnot129, true, !dbg !687
  %frombool133 = zext i1 %lnot131 to i8, !dbg !687
  store i8 %frombool133, ptr %__ret_do_once107, align 1, !dbg !687
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond134) #13, !dbg !693
  call void @llvm.dbg.declare(metadata ptr %__ret_cond134, metadata !221, metadata !DIExpression()), !dbg !693
  %36 = load i8, ptr %__ret_do_once107, align 1, !dbg !693, !range !446, !noundef !447
  %tobool135 = trunc i8 %36 to i1, !dbg !693
  %lnot136 = xor i1 %tobool135, true, !dbg !693
  %lnot138 = xor i1 %lnot136, true, !dbg !693
  %frombool140 = zext i1 %lnot138 to i8, !dbg !693
  store i8 %frombool140, ptr %__ret_cond134, align 1, !dbg !693
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once141) #13, !dbg !693
  call void @llvm.dbg.declare(metadata ptr %__ret_once141, metadata !224, metadata !DIExpression()), !dbg !693
  store i8 0, ptr %__ret_once141, align 1, !dbg !693
  %37 = load i8, ptr %__ret_cond134, align 1, !dbg !694, !range !446, !noundef !447
  %tobool142 = trunc i8 %37 to i1, !dbg !694
  br i1 %tobool142, label %land.rhs144, label %land.end148, !dbg !694

land.rhs144:                                      ; preds = %do.end117
  %38 = load i8, ptr @syscore_resume.__already_done.11, align 1, !dbg !694, !range !446, !noundef !447
  %tobool145 = trunc i8 %38 to i1, !dbg !694
  %lnot146 = xor i1 %tobool145, true, !dbg !694
  br label %land.end148

land.end148:                                      ; preds = %land.rhs144, %do.end117
  %39 = phi i1 [ false, %do.end117 ], [ %lnot146, %land.rhs144 ], !dbg !696
  %lnot149 = xor i1 %39, true, !dbg !694
  %lnot151 = xor i1 %lnot149, true, !dbg !694
  %lnot.ext152 = zext i1 %lnot151 to i32, !dbg !694
  %conv153 = sext i32 %lnot.ext152 to i64, !dbg !694
  %expval154 = call i64 @llvm.expect.i64(i64 %conv153, i64 0), !dbg !694
  %tobool155 = icmp ne i64 %expval154, 0, !dbg !694
  br i1 %tobool155, label %if.then156, label %if.end157, !dbg !693

if.then156:                                       ; preds = %land.end148
  store i8 1, ptr @syscore_resume.__already_done.11, align 1, !dbg !697
  store i8 1, ptr %__ret_once141, align 1, !dbg !697
  br label %if.end157, !dbg !697

if.end157:                                        ; preds = %if.then156, %land.end148
  %40 = load i8, ptr %__ret_once141, align 1, !dbg !693, !range !446, !noundef !447
  %tobool159 = trunc i8 %40 to i1, !dbg !693
  %lnot160 = xor i1 %tobool159, true, !dbg !693
  %lnot162 = xor i1 %lnot160, true, !dbg !693
  %lnot.ext163 = zext i1 %lnot162 to i32, !dbg !693
  %conv164 = sext i32 %lnot.ext163 to i64, !dbg !693
  %expval165 = call i64 @llvm.expect.i64(i64 %conv164, i64 0), !dbg !693
  store i64 %expval165, ptr %tmp158, align 8, !dbg !694
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once141) #13, !dbg !699
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond134) #13, !dbg !699
  %41 = load i64, ptr %tmp158, align 8, !dbg !693
  %tobool166 = icmp ne i64 %41, 0, !dbg !699
  br i1 %tobool166, label %if.then167, label %if.end210, !dbg !687

if.then167:                                       ; preds = %if.end157
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on168) #13, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on168, metadata !225, metadata !DIExpression()), !dbg !700
  store i32 1, ptr %__ret_warn_on168, align 4, !dbg !700
  %42 = load i32, ptr %__ret_warn_on168, align 4, !dbg !701
  %tobool169 = icmp ne i32 %42, 0, !dbg !701
  %lnot170 = xor i1 %tobool169, true, !dbg !701
  %lnot172 = xor i1 %lnot170, true, !dbg !701
  %lnot.ext173 = zext i1 %lnot172 to i32, !dbg !701
  %conv174 = sext i32 %lnot.ext173 to i64, !dbg !701
  %expval175 = call i64 @llvm.expect.i64(i64 %conv174, i64 0), !dbg !701
  %tobool176 = icmp ne i64 %expval175, 0, !dbg !701
  br i1 %tobool176, label %if.then177, label %if.end201, !dbg !700

if.then177:                                       ; preds = %if.then167
  br label %do.body178, !dbg !701

do.body178:                                       ; preds = %if.then177
  br label %do.body179, !dbg !702

do.body179:                                       ; preds = %do.body178
  br label %do.cond180, !dbg !703

do.cond180:                                       ; preds = %do.body179
  br label %do.end181, !dbg !703

do.end181:                                        ; preds = %do.cond180
  %43 = load ptr, ptr %ops, align 8, !dbg !702
  %resume182 = getelementptr inbounds %struct.syscore_ops, ptr %43, i32 0, i32 2, !dbg !702
  %44 = load ptr, ptr %resume182, align 8, !dbg !702
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.6, ptr noundef %44) #12, !dbg !702
  br label %do.body183, !dbg !702

do.body183:                                       ; preds = %do.end181
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags184) #13, !dbg !705
  call void @llvm.dbg.declare(metadata ptr %__flags184, metadata !227, metadata !DIExpression()), !dbg !705
  store i32 2313, ptr %__flags184, align 4, !dbg !705
  br label %do.body185, !dbg !705

do.body185:                                       ; preds = %do.body183
  br label %do.cond186, !dbg !706

do.cond186:                                       ; preds = %do.body185
  br label %do.end187, !dbg !706

do.end187:                                        ; preds = %do.cond186
  br label %do.body188, !dbg !705

do.body188:                                       ; preds = %do.end187
  %45 = load i32, ptr %__flags184, align 4, !dbg !708
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 104, i32 %45, i64 12) #13, !dbg !708, !srcloc !710
  br label %do.cond189, !dbg !708

do.cond189:                                       ; preds = %do.body188
  br label %do.end190, !dbg !708

do.end190:                                        ; preds = %do.cond189
  br label %do.body191, !dbg !705

do.body191:                                       ; preds = %do.end190
  br label %do.cond192, !dbg !711

do.cond192:                                       ; preds = %do.body191
  br label %do.end193, !dbg !711

do.end193:                                        ; preds = %do.cond192
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags184) #13, !dbg !702
  br label %do.cond194, !dbg !705

do.cond194:                                       ; preds = %do.end193
  br label %do.end195, !dbg !705

do.end195:                                        ; preds = %do.cond194
  br label %do.body196, !dbg !702

do.body196:                                       ; preds = %do.end195
  br label %do.cond197, !dbg !713

do.cond197:                                       ; preds = %do.body196
  br label %do.end198, !dbg !713

do.end198:                                        ; preds = %do.cond197
  br label %do.cond199, !dbg !702

do.cond199:                                       ; preds = %do.end198
  br label %do.end200, !dbg !702

do.end200:                                        ; preds = %do.cond199
  br label %if.end201, !dbg !702

if.end201:                                        ; preds = %do.end200, %if.then167
  %46 = load i32, ptr %__ret_warn_on168, align 4, !dbg !700
  %tobool203 = icmp ne i32 %46, 0, !dbg !700
  %lnot204 = xor i1 %tobool203, true, !dbg !700
  %lnot206 = xor i1 %lnot204, true, !dbg !700
  %lnot.ext207 = zext i1 %lnot206 to i32, !dbg !700
  %conv208 = sext i32 %lnot.ext207 to i64, !dbg !700
  %expval209 = call i64 @llvm.expect.i64(i64 %conv208, i64 0), !dbg !700
  store i64 %expval209, ptr %tmp202, align 8, !dbg !701
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on168) #13, !dbg !699
  %47 = load i64, ptr %tmp202, align 8, !dbg !700
  br label %if.end210, !dbg !699

if.end210:                                        ; preds = %if.end201, %if.end157
  %48 = load i8, ptr %__ret_do_once107, align 1, !dbg !687, !range !446, !noundef !447
  %tobool212 = trunc i8 %48 to i1, !dbg !687
  %lnot213 = xor i1 %tobool212, true, !dbg !687
  %lnot215 = xor i1 %lnot213, true, !dbg !687
  %lnot.ext216 = zext i1 %lnot215 to i32, !dbg !687
  %conv217 = sext i32 %lnot.ext216 to i64, !dbg !687
  %expval218 = call i64 @llvm.expect.i64(i64 %conv217, i64 0), !dbg !687
  store i64 %expval218, ptr %tmp211, align 8, !dbg !699
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once107) #13, !dbg !715
  %49 = load i64, ptr %tmp211, align 8, !dbg !687
  br label %if.end219, !dbg !716

if.end219:                                        ; preds = %if.end210, %for.body
  br label %for.inc, !dbg !668

for.inc:                                          ; preds = %if.end219
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr220) #13, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %__mptr220, metadata !231, metadata !DIExpression()), !dbg !717
  %50 = load ptr, ptr %ops, align 8, !dbg !717
  %node221 = getelementptr inbounds %struct.syscore_ops, ptr %50, i32 0, i32 0, !dbg !717
  %next = getelementptr inbounds %struct.list_head, ptr %node221, i32 0, i32 0, !dbg !717
  %51 = load ptr, ptr %next, align 8, !dbg !717
  store ptr %51, ptr %__mptr220, align 8, !dbg !717
  %52 = load ptr, ptr %__mptr220, align 8, !dbg !717
  %add.ptr223 = getelementptr i8, ptr %52, i64 0, !dbg !717
  store ptr %add.ptr223, ptr %tmp222, align 8, !dbg !717
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr220) #13, !dbg !666
  %53 = load ptr, ptr %tmp222, align 8, !dbg !717
  store ptr %53, ptr %ops, align 8, !dbg !666
  br label %for.cond, !dbg !666, !llvm.loop !718

for.end:                                          ; preds = %for.cond
  %54 = load ptr, ptr @syscore_resume.___tp_str.12, align 8, !dbg !720
  store ptr %54, ptr %tmp224, align 8, !dbg !720
  %55 = load ptr, ptr %tmp224, align 8, !dbg !720
  call void @trace_suspend_resume(ptr noundef %55, i32 noundef 0, i1 noundef zeroext false) #12, !dbg !722
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #13, !dbg !723
  ret void, !dbg !723
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @syscore_shutdown() #0 align 16 !dbg !724 {
entry:
  %ops = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp3 = alloca i32, align 4
  %__mptr7 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #13, !dbg !733
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !726, metadata !DIExpression()), !dbg !734
  call void @mutex_lock(ptr noundef @syscore_ops_lock) #12, !dbg !735
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !736
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !727, metadata !DIExpression()), !dbg !736
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @syscore_ops_list, i32 0, i32 1), align 8, !dbg !736
  store ptr %0, ptr %__mptr, align 8, !dbg !736
  %1 = load ptr, ptr %__mptr, align 8, !dbg !736
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !736
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !736
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !737
  %2 = load ptr, ptr %tmp, align 8, !dbg !736
  store ptr %2, ptr %ops, align 8, !dbg !737
  br label %for.cond, !dbg !737

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %ops, align 8, !dbg !738
  %node = getelementptr inbounds %struct.syscore_ops, ptr %3, i32 0, i32 0, !dbg !738
  %cmp = icmp eq ptr %node, @syscore_ops_list, !dbg !738
  %lnot = xor i1 %cmp, true, !dbg !738
  br i1 %lnot, label %for.body, label %for.end, !dbg !737

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %ops, align 8, !dbg !739
  %shutdown = getelementptr inbounds %struct.syscore_ops, ptr %4, i32 0, i32 3, !dbg !741
  %5 = load ptr, ptr %shutdown, align 8, !dbg !741
  %tobool = icmp ne ptr %5, null, !dbg !739
  br i1 %tobool, label %if.then, label %if.end6, !dbg !742

if.then:                                          ; preds = %for.body
  %6 = load i8, ptr @initcall_debug, align 1, !dbg !743, !range !446, !noundef !447
  %tobool1 = trunc i8 %6 to i1, !dbg !743
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !746

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !747

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !749

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !749

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %ops, align 8, !dbg !747
  %shutdown4 = getelementptr inbounds %struct.syscore_ops, ptr %7, i32 0, i32 3, !dbg !747
  %8 = load ptr, ptr %shutdown4, align 8, !dbg !747
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef %8) #14, !dbg !747
  store i32 %call, ptr %tmp3, align 4, !dbg !749
  %9 = load i32, ptr %tmp3, align 4, !dbg !747
  br label %if.end, !dbg !751

if.end:                                           ; preds = %do.end, %if.then
  %10 = load ptr, ptr %ops, align 8, !dbg !752
  %shutdown5 = getelementptr inbounds %struct.syscore_ops, ptr %10, i32 0, i32 3, !dbg !753
  %11 = load ptr, ptr %shutdown5, align 8, !dbg !753
  call void %11() #12, !dbg !752
  br label %if.end6, !dbg !754

if.end6:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !741

for.inc:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #13, !dbg !755
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !730, metadata !DIExpression()), !dbg !755
  %12 = load ptr, ptr %ops, align 8, !dbg !755
  %node8 = getelementptr inbounds %struct.syscore_ops, ptr %12, i32 0, i32 0, !dbg !755
  %prev = getelementptr inbounds %struct.list_head, ptr %node8, i32 0, i32 1, !dbg !755
  %13 = load ptr, ptr %prev, align 8, !dbg !755
  store ptr %13, ptr %__mptr7, align 8, !dbg !755
  %14 = load ptr, ptr %__mptr7, align 8, !dbg !755
  %add.ptr10 = getelementptr i8, ptr %14, i64 0, !dbg !755
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !755
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #13, !dbg !738
  %15 = load ptr, ptr %tmp9, align 8, !dbg !755
  store ptr %15, ptr %ops, align 8, !dbg !738
  br label %for.cond, !dbg !738, !llvm.loop !756

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @syscore_ops_lock) #12, !dbg !758
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #13, !dbg !759
  ret void, !dbg !759
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !760 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !764, metadata !DIExpression()), !dbg !767
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !765, metadata !DIExpression()), !dbg !768
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !766, metadata !DIExpression()), !dbg !769
  %0 = load ptr, ptr %new.addr, align 8, !dbg !770
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !772
  %2 = load ptr, ptr %next.addr, align 8, !dbg !773
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12, !dbg !774
  br i1 %call, label %if.end, label %if.then, !dbg !775

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !776

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !777
  %4 = load ptr, ptr %next.addr, align 8, !dbg !778
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !779
  store ptr %3, ptr %prev1, align 8, !dbg !780
  %5 = load ptr, ptr %next.addr, align 8, !dbg !781
  %6 = load ptr, ptr %new.addr, align 8, !dbg !782
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !783
  store ptr %5, ptr %next2, align 8, !dbg !784
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !785
  %8 = load ptr, ptr %new.addr, align 8, !dbg !786
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !787
  store ptr %7, ptr %prev3, align 8, !dbg !788
  br label %do.body, !dbg !789

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !790

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !792

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !790

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !794
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !794
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !794
  store volatile ptr %9, ptr %next6, align 8, !dbg !794
  br label %do.end7, !dbg !794

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !790

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !796
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !797 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !801, metadata !DIExpression()), !dbg !804
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !802, metadata !DIExpression()), !dbg !805
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !803, metadata !DIExpression()), !dbg !806
  ret i1 true, !dbg !807
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !808 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !810, metadata !DIExpression()), !dbg !811
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !812
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #12, !dbg !814
  br i1 %call, label %if.end, label %if.then, !dbg !815

if.then:                                          ; preds = %entry
  br label %return, !dbg !816

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !817
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !818
  %2 = load ptr, ptr %prev, align 8, !dbg !818
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !819
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !820
  %4 = load ptr, ptr %next, align 8, !dbg !820
  call void @__list_del(ptr noundef %2, ptr noundef %4) #12, !dbg !821
  br label %return, !dbg !822

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !822
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !823 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !827, metadata !DIExpression()), !dbg !828
  ret i1 true, !dbg !829
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !830 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !832, metadata !DIExpression()), !dbg !834
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !833, metadata !DIExpression()), !dbg !835
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !836
  %1 = load ptr, ptr %next.addr, align 8, !dbg !837
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !838
  store ptr %0, ptr %prev1, align 8, !dbg !839
  br label %do.body, !dbg !840

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !841

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !843

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !841

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !845
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !845
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !845
  store volatile ptr %2, ptr %next4, align 8, !dbg !845
  br label %do.end5, !dbg !845

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !841

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !847
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #6 align 16 !dbg !848 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !874, metadata !DIExpression()), !dbg !875
  %0 = load ptr, ptr %key.addr, align 8, !dbg !876
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !877
  ret i1 %call, !dbg !878
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #3 align 16 !dbg !879 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !883, metadata !DIExpression()), !dbg !884
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !885
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #12, !dbg !886
  ret i1 %call, !dbg !887
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #6 align 16 !dbg !888 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !893, metadata !DIExpression()), !dbg !901
  br label %do.body, !dbg !902

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #13, !dbg !903
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !894, metadata !DIExpression()), !dbg !903
  %0 = load i32, ptr %val.addr, align 4, !dbg !903
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !903
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !903

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !903
  %cmp = icmp eq i32 %2, 1, !dbg !903
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !903

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !903
  %cmp1 = icmp eq i32 %3, -1, !dbg !903
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !903

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !903
  br label %cond.end, !dbg !903

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !903

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !903
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !903
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !904
  %cmp2 = icmp eq i32 %5, 1, !dbg !904
  br i1 %cmp2, label %if.then, label %if.else, !dbg !903

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !905, !srcloc !907
  br label %if.end8, !dbg !904

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !908
  %cmp3 = icmp eq i32 %6, -1, !dbg !908
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !904

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !909, !srcloc !911
  br label %if.end, !dbg !908

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !908

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #13, !dbg !912
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !897, metadata !DIExpression()), !dbg !912
  %7 = load i32, ptr %val.addr, align 4, !dbg !912
  %conv = sext i32 %7 to i64, !dbg !912
  %and = and i64 %conv, 4294967295, !dbg !912
  %conv7 = trunc i64 %and to i32, !dbg !912
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !912
  %8 = load i32, ptr %pto_val__, align 4, !dbg !912
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !912, !srcloc !913
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #13, !dbg !908
  br label %do.cond, !dbg !912

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !912

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #13, !dbg !902
  br label %do.end10, !dbg !903

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !914
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #6 align 16 !dbg !915 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #13, !dbg !919
  call void @llvm.dbg.declare(metadata ptr %c, metadata !917, metadata !DIExpression()), !dbg !919
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !919, !srcloc !920
  %1 = icmp ult i8 %0, 2, !dbg !919
  call void @llvm.assume(i1 %1), !dbg !919
  store i8 %0, ptr %c, align 1, !dbg !919
  %2 = load i8, ptr %c, align 1, !dbg !919, !range !446, !noundef !447
  %tobool = trunc i8 %2 to i1, !dbg !919
  %frombool = zext i1 %tobool to i8, !dbg !919
  store i8 %frombool, ptr %tmp, align 1, !dbg !919
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #13, !dbg !921
  %3 = load i8, ptr %tmp, align 1, !dbg !919, !range !446, !noundef !447
  %tobool1 = trunc i8 %3 to i1, !dbg !919
  ret i1 %tobool1, !dbg !922
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !923 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !928, metadata !DIExpression()), !dbg !931
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !929, metadata !DIExpression()), !dbg !932
  %0 = load ptr, ptr %key.addr, align 8, !dbg !933
  %1 = load i8, ptr %branch.addr, align 1, !dbg !934, !range !446, !noundef !447
  %tobool = trunc i8 %1 to i1, !dbg !934
  %conv = zext i1 %tobool to i32, !dbg !934
  %or = or i32 2, %conv, !dbg !935
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #13
          to label %asm.fallthrough [label %l_yes], !dbg !936, !srcloc !937

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !938
  br label %return, !dbg !938

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !930), !dbg !939
  store i1 true, ptr %retval, align 1, !dbg !940
  br label %return, !dbg !940

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !941
  ret i1 %2, !dbg !941
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #6 align 16 !dbg !942 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !946, metadata !DIExpression()), !dbg !948
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !947, metadata !DIExpression()), !dbg !949
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !950
  %call = call i32 @cpumask_check(i32 noundef %0) #12, !dbg !950
  %conv = zext i32 %call to i64, !dbg !950
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !950
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !950
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !950
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #12, !dbg !950
  ret i1 %call1, !dbg !951
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !952 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !960, metadata !DIExpression()), !dbg !962
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !961, metadata !DIExpression()), !dbg !963
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !964
  %1 = load i64, ptr %nr.addr, align 8, !dbg !965
  %div = udiv i64 %1, 64, !dbg !965
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !966
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !967
  %2 = load i64, ptr %nr.addr, align 8, !dbg !968
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !969
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !970
  ret i1 %call, !dbg !971
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #6 align 16 !dbg !972 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !976, metadata !DIExpression()), !dbg !977
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !978
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #12, !dbg !979
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !980
  ret i32 %1, !dbg !981
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !982 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !994, metadata !DIExpression()), !dbg !996
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !995, metadata !DIExpression()), !dbg !997
  %0 = load ptr, ptr %v.addr, align 8, !dbg !998
  %1 = load i64, ptr %size.addr, align 8, !dbg !999
  %conv = trunc i64 %1 to i32, !dbg !999
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !1000
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1001
  %3 = load i64, ptr %size.addr, align 8, !dbg !1001
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !1001
  ret void, !dbg !1002
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !1003 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1006, metadata !DIExpression()), !dbg !1008
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1007, metadata !DIExpression()), !dbg !1009
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1010
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1011
  br i1 %1, label %cond.true, label %cond.false, !dbg !1011

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1012
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1013
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !1014
  %conv = zext i1 %call to i32, !dbg !1014
  br label %cond.end, !dbg !1011

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1015
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1016
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !1017
  %conv2 = zext i1 %call1 to i32, !dbg !1017
  br label %cond.end, !dbg !1011

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1011
  %tobool = icmp ne i32 %cond, 0, !dbg !1011
  ret i1 %tobool, !dbg !1018
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !1019 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1024, metadata !DIExpression()), !dbg !1026
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1025, metadata !DIExpression()), !dbg !1027
  ret i1 true, !dbg !1028
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !1029 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1034, metadata !DIExpression()), !dbg !1037
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1035, metadata !DIExpression()), !dbg !1038
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1036, metadata !DIExpression()), !dbg !1039
  ret void, !dbg !1040
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !1041 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1045, metadata !DIExpression()), !dbg !1047
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1046, metadata !DIExpression()), !dbg !1048
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1049
  %and = and i64 %0, 63, !dbg !1050
  %shl = shl i64 1, %and, !dbg !1051
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1052
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1053
  %shr = ashr i64 %2, 6, !dbg !1054
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1052
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1052
  %and1 = and i64 %shl, %3, !dbg !1055
  %cmp = icmp ne i64 %and1, 0, !dbg !1056
  ret i1 %cmp, !dbg !1057
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !1058 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1060, metadata !DIExpression()), !dbg !1063
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1061, metadata !DIExpression()), !dbg !1064
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !1065
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1062, metadata !DIExpression()), !dbg !1066
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1067
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1068
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !1069, !srcloc !1070
  %3 = icmp ult i8 %2, 2, !dbg !1069
  call void @llvm.assume(i1 %3), !dbg !1069
  store i8 %2, ptr %oldbit, align 1, !dbg !1069
  %4 = load i8, ptr %oldbit, align 1, !dbg !1071, !range !446, !noundef !447
  %tobool = trunc i8 %4 to i1, !dbg !1071
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !1072
  ret i1 %tobool, !dbg !1073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #6 align 16 !dbg !1074 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1078, metadata !DIExpression()), !dbg !1080
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1079, metadata !DIExpression()), !dbg !1081
  ret void, !dbg !1082
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !1083 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1086
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1085, metadata !DIExpression()), !dbg !1087
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !1088, !srcloc !1089
  %0 = load i64, ptr %flags, align 8, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1091
  ret i64 %0, !dbg !1092
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noredzone }
attributes #13 = { nounwind }
attributes #14 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!346}
!llvm.module.flags = !{!347, !348, !349, !350, !351, !352, !353, !354}
!llvm.ident = !{!355}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "syscore_ops_lock", scope: !2, file: !3, line: 15, type: !293, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.syscore.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/syscore\22 -D KBUILD_BASENAME=\22syscore\22 -D KBUILD_MODNAME=\22syscore\22 -D __KBUILD_MODNAME=kmod_syscore -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/syscore.ll drivers/base/syscore.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/syscore.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "55888d8cadcd3a79183eaed44c94a0c8")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !34, !36, !28, !37, !38, !41, !48, !57, !7, !58}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscore_ops", file: !15, line: 13, size: 320, elements: !16)
!15 = !DIFile(filename: "./include/linux/syscore_ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59d2685cd3ea081e18f1bbec40d890d")
!16 = !{!17, !24, !29, !33}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !14, file: !15, line: 14, baseType: !18, size: 128)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !19, line: 190, size: 128, elements: !20)
!19 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!20 = !{!21, !23}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !19, line: 191, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !18, file: !19, line: 191, baseType: !22, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !14, file: !15, line: 15, baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{!28}
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !14, file: !15, line: 16, baseType: !30, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{null}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !14, file: !15, line: 17, baseType: !30, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !43, line: 26, size: 192, elements: !44)
!43 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!44 = !{!45, !46, !47}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !42, file: !43, line: 27, baseType: !12, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !42, file: !43, line: 28, baseType: !12, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !42, file: !43, line: 29, baseType: !28, size: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !51, line: 19, size: 64, elements: !52)
!51 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !50, file: !51, line: 19, baseType: !54, size: 64)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !59, line: 21, baseType: !60)
!59 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !61, line: 27, baseType: !7)
!61 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!62 = !{!63, !65, !67, !73, !142, !147, !149, !154, !159, !164, !166, !168, !170, !172, !174, !176, !233, !235, !240, !242, !244, !246, !0, !251, !253, !259, !291}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_register_syscore_ops559", scope: !2, file: !3, line: 27, type: !12, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_unregister_syscore_ops560", scope: !2, file: !3, line: 39, type: !12, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !71)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !{!72}
!72 = !DISubrange(count: 16)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "___tp_str", scope: !75, file: !3, line: 52, type: !140, isLocal: true, isDefinition: true)
!75 = distinct !DISubprogram(name: "syscore_suspend", scope: !3, file: !3, line: 47, type: !26, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !76)
!76 = !{!77, !78, !79, !83, !85, !88, !89, !92, !93, !96, !97, !99, !103, !106, !111, !113, !116, !117, !120, !121, !124, !125, !127, !131, !133, !134, !137}
!77 = !DILocalVariable(name: "ops", scope: !75, file: !3, line: 49, type: !13)
!78 = !DILocalVariable(name: "ret", scope: !75, file: !3, line: 50, type: !28)
!79 = !DILocalVariable(name: "__ret_do_once", scope: !80, file: !3, line: 59, type: !81)
!80 = distinct !DILexicalBlock(scope: !75, file: !3, line: 59, column: 2)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 35, baseType: !82)
!82 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!83 = !DILocalVariable(name: "_flags", scope: !84, file: !3, line: 59, type: !37)
!84 = distinct !DILexicalBlock(scope: !80, file: !3, line: 59, column: 2)
!85 = !DILocalVariable(name: "__dummy", scope: !86, file: !3, line: 59, type: !37)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 59, column: 2)
!87 = distinct !DILexicalBlock(scope: !84, file: !3, line: 59, column: 2)
!88 = !DILocalVariable(name: "__dummy2", scope: !86, file: !3, line: 59, type: !37)
!89 = !DILocalVariable(name: "__dummy", scope: !90, file: !3, line: 59, type: !37)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 59, column: 2)
!91 = distinct !DILexicalBlock(scope: !84, file: !3, line: 59, column: 2)
!92 = !DILocalVariable(name: "__dummy2", scope: !90, file: !3, line: 59, type: !37)
!93 = !DILocalVariable(name: "__ret_cond", scope: !94, file: !3, line: 59, type: !81)
!94 = distinct !DILexicalBlock(scope: !95, file: !3, line: 59, column: 2)
!95 = distinct !DILexicalBlock(scope: !80, file: !3, line: 59, column: 2)
!96 = !DILocalVariable(name: "__ret_once", scope: !94, file: !3, line: 59, type: !81)
!97 = !DILocalVariable(name: "__ret_warn_on", scope: !98, file: !3, line: 59, type: !28)
!98 = distinct !DILexicalBlock(scope: !95, file: !3, line: 59, column: 2)
!99 = !DILocalVariable(name: "__flags", scope: !100, file: !3, line: 59, type: !28)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 59, column: 2)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 59, column: 2)
!102 = distinct !DILexicalBlock(scope: !98, file: !3, line: 59, column: 2)
!103 = !DILocalVariable(name: "__mptr", scope: !104, file: !3, line: 62, type: !12)
!104 = distinct !DILexicalBlock(scope: !105, file: !3, line: 62, column: 2)
!105 = distinct !DILexicalBlock(scope: !75, file: !3, line: 62, column: 2)
!106 = !DILocalVariable(name: "__ret_do_once", scope: !107, file: !3, line: 68, type: !81)
!107 = distinct !DILexicalBlock(scope: !108, file: !3, line: 68, column: 4)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 63, column: 21)
!109 = distinct !DILexicalBlock(scope: !110, file: !3, line: 63, column: 7)
!110 = distinct !DILexicalBlock(scope: !105, file: !3, line: 62, column: 2)
!111 = !DILocalVariable(name: "_flags", scope: !112, file: !3, line: 68, type: !37)
!112 = distinct !DILexicalBlock(scope: !107, file: !3, line: 68, column: 4)
!113 = !DILocalVariable(name: "__dummy", scope: !114, file: !3, line: 68, type: !37)
!114 = distinct !DILexicalBlock(scope: !115, file: !3, line: 68, column: 4)
!115 = distinct !DILexicalBlock(scope: !112, file: !3, line: 68, column: 4)
!116 = !DILocalVariable(name: "__dummy2", scope: !114, file: !3, line: 68, type: !37)
!117 = !DILocalVariable(name: "__dummy", scope: !118, file: !3, line: 68, type: !37)
!118 = distinct !DILexicalBlock(scope: !119, file: !3, line: 68, column: 4)
!119 = distinct !DILexicalBlock(scope: !112, file: !3, line: 68, column: 4)
!120 = !DILocalVariable(name: "__dummy2", scope: !118, file: !3, line: 68, type: !37)
!121 = !DILocalVariable(name: "__ret_cond", scope: !122, file: !3, line: 68, type: !81)
!122 = distinct !DILexicalBlock(scope: !123, file: !3, line: 68, column: 4)
!123 = distinct !DILexicalBlock(scope: !107, file: !3, line: 68, column: 4)
!124 = !DILocalVariable(name: "__ret_once", scope: !122, file: !3, line: 68, type: !81)
!125 = !DILocalVariable(name: "__ret_warn_on", scope: !126, file: !3, line: 68, type: !28)
!126 = distinct !DILexicalBlock(scope: !123, file: !3, line: 68, column: 4)
!127 = !DILocalVariable(name: "__flags", scope: !128, file: !3, line: 68, type: !28)
!128 = distinct !DILexicalBlock(scope: !129, file: !3, line: 68, column: 4)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 68, column: 4)
!130 = distinct !DILexicalBlock(scope: !126, file: !3, line: 68, column: 4)
!131 = !DILocalVariable(name: "__mptr", scope: !132, file: !3, line: 62, type: !12)
!132 = distinct !DILexicalBlock(scope: !110, file: !3, line: 62, column: 2)
!133 = !DILabel(scope: !75, name: "err_out", file: !3, line: 75)
!134 = !DILocalVariable(name: "__mptr", scope: !135, file: !3, line: 78, type: !12)
!135 = distinct !DILexicalBlock(scope: !136, file: !3, line: 78, column: 2)
!136 = distinct !DILexicalBlock(scope: !75, file: !3, line: 78, column: 2)
!137 = !DILocalVariable(name: "__mptr", scope: !138, file: !3, line: 78, type: !12)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 78, column: 2)
!139 = distinct !DILexicalBlock(scope: !136, file: !3, line: 78, column: 2)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 240, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 30)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "__already_done", scope: !75, file: !3, line: 59, type: !81, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 384, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 48)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 184, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 23)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 120, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 15)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "__already_done", scope: !75, file: !3, line: 68, type: !81, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !144, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "___tp_str", scope: !75, file: !3, line: 72, type: !140, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !151, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_syscore_suspend561", scope: !2, file: !3, line: 84, type: !12, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !161, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "___tp_str", scope: !178, file: !3, line: 95, type: !140, isLocal: true, isDefinition: true)
!178 = distinct !DISubprogram(name: "syscore_resume", scope: !3, file: !3, line: 91, type: !31, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !179)
!179 = !{!180, !181, !183, !185, !188, !189, !192, !193, !196, !197, !199, !203, !206, !211, !213, !216, !217, !220, !221, !224, !225, !227, !231}
!180 = !DILocalVariable(name: "ops", scope: !178, file: !3, line: 93, type: !13)
!181 = !DILocalVariable(name: "__ret_do_once", scope: !182, file: !3, line: 96, type: !81)
!182 = distinct !DILexicalBlock(scope: !178, file: !3, line: 96, column: 2)
!183 = !DILocalVariable(name: "_flags", scope: !184, file: !3, line: 96, type: !37)
!184 = distinct !DILexicalBlock(scope: !182, file: !3, line: 96, column: 2)
!185 = !DILocalVariable(name: "__dummy", scope: !186, file: !3, line: 96, type: !37)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 96, column: 2)
!187 = distinct !DILexicalBlock(scope: !184, file: !3, line: 96, column: 2)
!188 = !DILocalVariable(name: "__dummy2", scope: !186, file: !3, line: 96, type: !37)
!189 = !DILocalVariable(name: "__dummy", scope: !190, file: !3, line: 96, type: !37)
!190 = distinct !DILexicalBlock(scope: !191, file: !3, line: 96, column: 2)
!191 = distinct !DILexicalBlock(scope: !184, file: !3, line: 96, column: 2)
!192 = !DILocalVariable(name: "__dummy2", scope: !190, file: !3, line: 96, type: !37)
!193 = !DILocalVariable(name: "__ret_cond", scope: !194, file: !3, line: 96, type: !81)
!194 = distinct !DILexicalBlock(scope: !195, file: !3, line: 96, column: 2)
!195 = distinct !DILexicalBlock(scope: !182, file: !3, line: 96, column: 2)
!196 = !DILocalVariable(name: "__ret_once", scope: !194, file: !3, line: 96, type: !81)
!197 = !DILocalVariable(name: "__ret_warn_on", scope: !198, file: !3, line: 96, type: !28)
!198 = distinct !DILexicalBlock(scope: !195, file: !3, line: 96, column: 2)
!199 = !DILocalVariable(name: "__flags", scope: !200, file: !3, line: 96, type: !28)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 96, column: 2)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 96, column: 2)
!202 = distinct !DILexicalBlock(scope: !198, file: !3, line: 96, column: 2)
!203 = !DILocalVariable(name: "__mptr", scope: !204, file: !3, line: 99, type: !12)
!204 = distinct !DILexicalBlock(scope: !205, file: !3, line: 99, column: 2)
!205 = distinct !DILexicalBlock(scope: !178, file: !3, line: 99, column: 2)
!206 = !DILocalVariable(name: "__ret_do_once", scope: !207, file: !3, line: 103, type: !81)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 103, column: 4)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 100, column: 20)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 100, column: 7)
!210 = distinct !DILexicalBlock(scope: !205, file: !3, line: 99, column: 2)
!211 = !DILocalVariable(name: "_flags", scope: !212, file: !3, line: 103, type: !37)
!212 = distinct !DILexicalBlock(scope: !207, file: !3, line: 103, column: 4)
!213 = !DILocalVariable(name: "__dummy", scope: !214, file: !3, line: 103, type: !37)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 103, column: 4)
!215 = distinct !DILexicalBlock(scope: !212, file: !3, line: 103, column: 4)
!216 = !DILocalVariable(name: "__dummy2", scope: !214, file: !3, line: 103, type: !37)
!217 = !DILocalVariable(name: "__dummy", scope: !218, file: !3, line: 103, type: !37)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 103, column: 4)
!219 = distinct !DILexicalBlock(scope: !212, file: !3, line: 103, column: 4)
!220 = !DILocalVariable(name: "__dummy2", scope: !218, file: !3, line: 103, type: !37)
!221 = !DILocalVariable(name: "__ret_cond", scope: !222, file: !3, line: 103, type: !81)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 103, column: 4)
!223 = distinct !DILexicalBlock(scope: !207, file: !3, line: 103, column: 4)
!224 = !DILocalVariable(name: "__ret_once", scope: !222, file: !3, line: 103, type: !81)
!225 = !DILocalVariable(name: "__ret_warn_on", scope: !226, file: !3, line: 103, type: !28)
!226 = distinct !DILexicalBlock(scope: !223, file: !3, line: 103, column: 4)
!227 = !DILocalVariable(name: "__flags", scope: !228, file: !3, line: 103, type: !28)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 103, column: 4)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 103, column: 4)
!230 = distinct !DILexicalBlock(scope: !226, file: !3, line: 103, column: 4)
!231 = !DILocalVariable(name: "__mptr", scope: !232, file: !3, line: 99, type: !12)
!232 = distinct !DILexicalBlock(scope: !210, file: !3, line: 99, column: 2)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "__already_done", scope: !178, file: !3, line: 96, type: !81, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 376, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 47)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "__already_done", scope: !178, file: !3, line: 103, type: !81, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "___tp_str", scope: !178, file: !3, line: 106, type: !140, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_syscore_resume562", scope: !2, file: !3, line: 108, type: !12, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 152, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 19)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "syscore_ops_list", scope: !2, file: !3, line: 14, type: !18, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !255, line: 248, type: !256, isLocal: true, isDefinition: true)
!255 = !DIFile(filename: "./include/trace/events/power.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "39006560aadda1aecb35636d6d2fb319")
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 232, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 29)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_suspend_resume433", scope: !261, file: !255, line: 248, type: !12, isLocal: true, isDefinition: true)
!261 = distinct !DISubprogram(name: "trace_suspend_resume", scope: !255, file: !255, line: 248, type: !262, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !140, !28, !81}
!264 = !{!265, !266, !267, !268, !271, !274, !278, !280, !283, !286, !288, !289}
!265 = !DILocalVariable(name: "action", arg: 1, scope: !261, file: !255, line: 248, type: !140)
!266 = !DILocalVariable(name: "val", arg: 2, scope: !261, file: !255, line: 248, type: !28)
!267 = !DILocalVariable(name: "start", arg: 3, scope: !261, file: !255, line: 248, type: !81)
!268 = !DILocalVariable(name: "__idx", scope: !269, file: !255, line: 248, type: !28)
!269 = distinct !DILexicalBlock(scope: !270, file: !255, line: 248, column: 1)
!270 = distinct !DILexicalBlock(scope: !261, file: !255, line: 248, column: 1)
!271 = !DILocalVariable(name: "pscr_ret__", scope: !272, file: !255, line: 248, type: !28)
!272 = distinct !DILexicalBlock(scope: !273, file: !255, line: 248, column: 1)
!273 = distinct !DILexicalBlock(scope: !269, file: !255, line: 248, column: 1)
!274 = !DILocalVariable(name: "__vpp_verify", scope: !275, file: !255, line: 248, type: !276)
!275 = distinct !DILexicalBlock(scope: !272, file: !255, line: 248, column: 1)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!278 = !DILocalVariable(name: "pfo_val__", scope: !279, file: !255, line: 248, type: !58)
!279 = distinct !DILexicalBlock(scope: !272, file: !255, line: 248, column: 1)
!280 = !DILocalVariable(name: "__ret_warn_on", scope: !281, file: !255, line: 248, type: !28)
!281 = distinct !DILexicalBlock(scope: !282, file: !255, line: 248, column: 1)
!282 = distinct !DILexicalBlock(scope: !269, file: !255, line: 248, column: 1)
!283 = !DILocalVariable(name: "__flags", scope: !284, file: !255, line: 248, type: !28)
!284 = distinct !DILexicalBlock(scope: !285, file: !255, line: 248, column: 1)
!285 = distinct !DILexicalBlock(scope: !281, file: !255, line: 248, column: 1)
!286 = !DILocalVariable(name: "it_func_ptr", scope: !287, file: !255, line: 248, type: !41)
!287 = distinct !DILexicalBlock(scope: !269, file: !255, line: 248, column: 1)
!288 = !DILocalVariable(name: "__data", scope: !287, file: !255, line: 248, type: !12)
!289 = !DILocalVariable(name: "__UNIQUE_ID_rcu431", scope: !290, file: !255, line: 248, type: !41)
!290 = distinct !DILexicalBlock(scope: !287, file: !255, line: 248, column: 1)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace434", scope: !261, file: !255, line: 248, type: !12, isLocal: true, isDefinition: true)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !294, line: 66, size: 256, elements: !295)
!294 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!295 = !{!296, !306, !340, !345}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !293, file: !294, line: 67, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !298, line: 13, baseType: !299)
!298 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !19, line: 181, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 179, size: 64, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !300, file: !19, line: 180, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !59, line: 22, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !61, line: 30, baseType: !305)
!305 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !293, file: !294, line: 68, baseType: !307, size: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !308, line: 23, baseType: !309)
!308 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !308, line: 14, size: 32, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !309, file: !308, line: 15, baseType: !312, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !313, line: 44, baseType: !314)
!313 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !313, line: 14, size: 32, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !313, line: 15, baseType: !317, size: 32)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !313, line: 15, size: 32, elements: !318)
!318 = !{!319, !324, !332}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !317, file: !313, line: 16, baseType: !320, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !19, line: 174, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 172, size: 32, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !321, file: !19, line: 173, baseType: !28, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !313, line: 24, baseType: !325, size: 16)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !313, line: 24, size: 16, elements: !326)
!326 = !{!327, !331}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !325, file: !313, line: 25, baseType: !328, size: 8)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !59, line: 17, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !61, line: 21, baseType: !330)
!330 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !325, file: !313, line: 26, baseType: !328, size: 8, offset: 8)
!332 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !313, line: 28, baseType: !333, size: 32)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !313, line: 28, size: 32, elements: !334)
!334 = !{!335, !339}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !333, file: !313, line: 29, baseType: !336, size: 16)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !59, line: 19, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !61, line: 24, baseType: !338)
!338 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !333, file: !313, line: 30, baseType: !336, size: 16, offset: 16)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !293, file: !294, line: 70, baseType: !341, size: 32, offset: 96)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !342, line: 15, size: 32, elements: !343)
!342 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !341, file: !342, line: 20, baseType: !320, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !293, file: !294, line: 72, baseType: !18, size: 128, offset: 128)
!346 = !{!"rsp"}
!347 = !{i32 7, !"Dwarf Version", i32 5}
!348 = !{i32 2, !"Debug Info Version", i32 3}
!349 = !{i32 1, !"wchar_size", i32 2}
!350 = !{i32 8, !"cf-protection-branch", i32 1}
!351 = !{i32 4, !"function_return_thunk_extern", i32 1}
!352 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!353 = !{i32 1, !"Code Model", i32 2}
!354 = !{i32 1, !"override-stack-alignment", i32 8}
!355 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!356 = distinct !DISubprogram(name: "register_syscore_ops", scope: !3, file: !3, line: 21, type: !357, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !359)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !13}
!359 = !{!360}
!360 = !DILocalVariable(name: "ops", arg: 1, scope: !356, file: !3, line: 21, type: !13)
!361 = !DILocation(line: 21, column: 47, scope: !356)
!362 = !DILocation(line: 23, column: 2, scope: !356)
!363 = !DILocation(line: 24, column: 17, scope: !356)
!364 = !DILocation(line: 24, column: 22, scope: !356)
!365 = !DILocation(line: 24, column: 2, scope: !356)
!366 = !DILocation(line: 25, column: 2, scope: !356)
!367 = !DILocation(line: 26, column: 1, scope: !356)
!368 = !DISubprogram(name: "mutex_lock", scope: !294, file: !294, line: 227, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!372 = distinct !DISubprogram(name: "list_add_tail", scope: !373, file: !373, line: 181, type: !374, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !376)
!373 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!374 = !DISubroutineType(types: !375)
!375 = !{null, !22, !22}
!376 = !{!377, !378}
!377 = !DILocalVariable(name: "new", arg: 1, scope: !372, file: !373, line: 181, type: !22)
!378 = !DILocalVariable(name: "head", arg: 2, scope: !372, file: !373, line: 181, type: !22)
!379 = !DILocation(line: 181, column: 52, scope: !372)
!380 = !DILocation(line: 181, column: 75, scope: !372)
!381 = !DILocation(line: 183, column: 13, scope: !372)
!382 = !DILocation(line: 183, column: 18, scope: !372)
!383 = !DILocation(line: 183, column: 24, scope: !372)
!384 = !DILocation(line: 183, column: 30, scope: !372)
!385 = !DILocation(line: 183, column: 2, scope: !372)
!386 = !DILocation(line: 184, column: 1, scope: !372)
!387 = !DISubprogram(name: "mutex_unlock", scope: !294, file: !294, line: 246, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!388 = distinct !DISubprogram(name: "unregister_syscore_ops", scope: !3, file: !3, line: 33, type: !357, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !389)
!389 = !{!390}
!390 = !DILocalVariable(name: "ops", arg: 1, scope: !388, file: !3, line: 33, type: !13)
!391 = !DILocation(line: 33, column: 49, scope: !388)
!392 = !DILocation(line: 35, column: 2, scope: !388)
!393 = !DILocation(line: 36, column: 12, scope: !388)
!394 = !DILocation(line: 36, column: 17, scope: !388)
!395 = !DILocation(line: 36, column: 2, scope: !388)
!396 = !DILocation(line: 37, column: 2, scope: !388)
!397 = !DILocation(line: 38, column: 1, scope: !388)
!398 = distinct !DISubprogram(name: "list_del", scope: !373, file: !373, line: 227, type: !399, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !22}
!401 = !{!402}
!402 = !DILocalVariable(name: "entry", arg: 1, scope: !398, file: !373, line: 227, type: !22)
!403 = !DILocation(line: 227, column: 47, scope: !398)
!404 = !DILocation(line: 229, column: 19, scope: !398)
!405 = !DILocation(line: 229, column: 2, scope: !398)
!406 = !DILocation(line: 230, column: 2, scope: !398)
!407 = !DILocation(line: 230, column: 9, scope: !398)
!408 = !DILocation(line: 230, column: 14, scope: !398)
!409 = !DILocation(line: 231, column: 2, scope: !398)
!410 = !DILocation(line: 231, column: 9, scope: !398)
!411 = !DILocation(line: 231, column: 14, scope: !398)
!412 = !DILocation(line: 232, column: 1, scope: !398)
!413 = !DILocation(line: 49, column: 2, scope: !75)
!414 = !DILocation(line: 49, column: 22, scope: !75)
!415 = !DILocation(line: 50, column: 2, scope: !75)
!416 = !DILocation(line: 50, column: 6, scope: !75)
!417 = !DILocation(line: 52, column: 23, scope: !418)
!418 = distinct !DILexicalBlock(scope: !75, file: !3, line: 52, column: 23)
!419 = !DILocation(line: 52, column: 2, scope: !75)
!420 = !DILocation(line: 53, column: 2, scope: !75)
!421 = !DILocation(line: 53, column: 2, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !3, line: 53, column: 2)
!423 = distinct !DILexicalBlock(scope: !75, file: !3, line: 53, column: 2)
!424 = !DILocation(line: 53, column: 2, scope: !423)
!425 = !DILocation(line: 53, column: 2, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !3, line: 53, column: 2)
!427 = !DILocation(line: 53, column: 2, scope: !428)
!428 = distinct !DILexicalBlock(scope: !426, file: !3, line: 53, column: 2)
!429 = !DILocation(line: 53, column: 2, scope: !430)
!430 = distinct !DILexicalBlock(scope: !422, file: !3, line: 53, column: 2)
!431 = !DILocation(line: 53, column: 2, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !3, line: 53, column: 2)
!433 = distinct !DILexicalBlock(scope: !430, file: !3, line: 53, column: 2)
!434 = !DILocation(line: 53, column: 2, scope: !433)
!435 = !DILocation(line: 56, column: 6, scope: !436)
!436 = distinct !DILexicalBlock(scope: !75, file: !3, line: 56, column: 6)
!437 = !DILocation(line: 56, column: 6, scope: !75)
!438 = !DILocation(line: 57, column: 3, scope: !436)
!439 = !DILocation(line: 59, column: 2, scope: !80)
!440 = !DILocation(line: 59, column: 2, scope: !84)
!441 = !DILocation(line: 59, column: 2, scope: !86)
!442 = !DILocation(line: 59, column: 2, scope: !87)
!443 = !DILocation(line: 59, column: 2, scope: !90)
!444 = !DILocation(line: 59, column: 2, scope: !91)
!445 = !DILocation(line: 59, column: 2, scope: !94)
!446 = !{i8 0, i8 2}
!447 = !{}
!448 = !DILocation(line: 59, column: 2, scope: !449)
!449 = distinct !DILexicalBlock(scope: !94, file: !3, line: 59, column: 2)
!450 = !DILocation(line: 0, scope: !449)
!451 = !DILocation(line: 59, column: 2, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !3, line: 59, column: 2)
!453 = !DILocation(line: 59, column: 2, scope: !95)
!454 = !DILocation(line: 59, column: 2, scope: !98)
!455 = !DILocation(line: 59, column: 2, scope: !102)
!456 = !DILocation(line: 59, column: 2, scope: !101)
!457 = !DILocation(line: 59, column: 2, scope: !458)
!458 = distinct !DILexicalBlock(scope: !101, file: !3, line: 59, column: 2)
!459 = !DILocation(line: 59, column: 2, scope: !100)
!460 = !DILocation(line: 59, column: 2, scope: !461)
!461 = distinct !DILexicalBlock(scope: !100, file: !3, line: 59, column: 2)
!462 = !DILocation(line: 59, column: 2, scope: !463)
!463 = distinct !DILexicalBlock(scope: !100, file: !3, line: 59, column: 2)
!464 = !{i64 2157422174, i64 2157422203, i64 2157422249, i64 2157422307, i64 2157422361, i64 2157422415, i64 2157422470, i64 2157422501, i64 2157422809, i64 2157422815, i64 2157422862, i64 2157422885, i64 2157422911}
!465 = !DILocation(line: 59, column: 2, scope: !466)
!466 = distinct !DILexicalBlock(scope: !100, file: !3, line: 59, column: 2)
!467 = !DILocation(line: 59, column: 2, scope: !468)
!468 = distinct !DILexicalBlock(scope: !101, file: !3, line: 59, column: 2)
!469 = !DILocation(line: 59, column: 2, scope: !75)
!470 = !DILocation(line: 62, column: 2, scope: !104)
!471 = !DILocation(line: 62, column: 2, scope: !105)
!472 = !DILocation(line: 62, column: 2, scope: !110)
!473 = !DILocation(line: 63, column: 7, scope: !109)
!474 = !DILocation(line: 63, column: 12, scope: !109)
!475 = !DILocation(line: 63, column: 7, scope: !110)
!476 = !DILocation(line: 64, column: 4, scope: !108)
!477 = !DILocation(line: 64, column: 4, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 64, column: 4)
!479 = distinct !DILexicalBlock(scope: !108, file: !3, line: 64, column: 4)
!480 = !DILocation(line: 64, column: 4, scope: !479)
!481 = !DILocation(line: 64, column: 4, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !3, line: 64, column: 4)
!483 = !DILocation(line: 64, column: 4, scope: !484)
!484 = distinct !DILexicalBlock(scope: !482, file: !3, line: 64, column: 4)
!485 = !DILocation(line: 64, column: 4, scope: !486)
!486 = distinct !DILexicalBlock(scope: !478, file: !3, line: 64, column: 4)
!487 = !DILocation(line: 64, column: 4, scope: !488)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 64, column: 4)
!489 = distinct !DILexicalBlock(scope: !486, file: !3, line: 64, column: 4)
!490 = !DILocation(line: 64, column: 4, scope: !489)
!491 = !DILocation(line: 65, column: 10, scope: !108)
!492 = !DILocation(line: 65, column: 15, scope: !108)
!493 = !DILocation(line: 65, column: 8, scope: !108)
!494 = !DILocation(line: 66, column: 8, scope: !495)
!495 = distinct !DILexicalBlock(scope: !108, file: !3, line: 66, column: 8)
!496 = !DILocation(line: 66, column: 8, scope: !108)
!497 = !DILocation(line: 67, column: 5, scope: !495)
!498 = !DILocation(line: 68, column: 4, scope: !107)
!499 = !DILocation(line: 68, column: 4, scope: !112)
!500 = !DILocation(line: 68, column: 4, scope: !114)
!501 = !DILocation(line: 68, column: 4, scope: !115)
!502 = !DILocation(line: 68, column: 4, scope: !118)
!503 = !DILocation(line: 68, column: 4, scope: !119)
!504 = !DILocation(line: 68, column: 4, scope: !122)
!505 = !DILocation(line: 68, column: 4, scope: !506)
!506 = distinct !DILexicalBlock(scope: !122, file: !3, line: 68, column: 4)
!507 = !DILocation(line: 0, scope: !506)
!508 = !DILocation(line: 68, column: 4, scope: !509)
!509 = distinct !DILexicalBlock(scope: !506, file: !3, line: 68, column: 4)
!510 = !DILocation(line: 68, column: 4, scope: !123)
!511 = !DILocation(line: 68, column: 4, scope: !126)
!512 = !DILocation(line: 68, column: 4, scope: !130)
!513 = !DILocation(line: 68, column: 4, scope: !129)
!514 = !DILocation(line: 68, column: 4, scope: !515)
!515 = distinct !DILexicalBlock(scope: !129, file: !3, line: 68, column: 4)
!516 = !DILocation(line: 68, column: 4, scope: !128)
!517 = !DILocation(line: 68, column: 4, scope: !518)
!518 = distinct !DILexicalBlock(scope: !128, file: !3, line: 68, column: 4)
!519 = !DILocation(line: 68, column: 4, scope: !520)
!520 = distinct !DILexicalBlock(scope: !128, file: !3, line: 68, column: 4)
!521 = !{i64 2157430105, i64 2157430134, i64 2157430180, i64 2157430238, i64 2157430292, i64 2157430346, i64 2157430401, i64 2157430432, i64 2157430740, i64 2157430746, i64 2157430793, i64 2157430816, i64 2157430842}
!522 = !DILocation(line: 68, column: 4, scope: !523)
!523 = distinct !DILexicalBlock(scope: !128, file: !3, line: 68, column: 4)
!524 = !DILocation(line: 68, column: 4, scope: !525)
!525 = distinct !DILexicalBlock(scope: !129, file: !3, line: 68, column: 4)
!526 = !DILocation(line: 68, column: 4, scope: !108)
!527 = !DILocation(line: 70, column: 3, scope: !108)
!528 = !DILocation(line: 62, column: 2, scope: !132)
!529 = distinct !{!529, !471, !530, !531, !532}
!530 = !DILocation(line: 70, column: 3, scope: !105)
!531 = !{!"llvm.loop.mustprogress"}
!532 = !{!"llvm.loop.unroll.disable"}
!533 = !DILocation(line: 72, column: 23, scope: !534)
!534 = distinct !DILexicalBlock(scope: !75, file: !3, line: 72, column: 23)
!535 = !DILocation(line: 72, column: 2, scope: !75)
!536 = !DILocation(line: 73, column: 2, scope: !75)
!537 = !DILocation(line: 75, column: 2, scope: !75)
!538 = !DILocation(line: 76, column: 2, scope: !539)
!539 = distinct !DILexicalBlock(scope: !75, file: !3, line: 76, column: 2)
!540 = !DILocation(line: 76, column: 2, scope: !541)
!541 = distinct !DILexicalBlock(scope: !539, file: !3, line: 76, column: 2)
!542 = !DILocation(line: 78, column: 2, scope: !135)
!543 = !DILocation(line: 78, column: 2, scope: !136)
!544 = !DILocation(line: 78, column: 2, scope: !139)
!545 = !DILocation(line: 79, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !139, file: !3, line: 79, column: 7)
!547 = !DILocation(line: 79, column: 12, scope: !546)
!548 = !DILocation(line: 79, column: 7, scope: !139)
!549 = !DILocation(line: 80, column: 4, scope: !546)
!550 = !DILocation(line: 80, column: 9, scope: !546)
!551 = !DILocation(line: 78, column: 2, scope: !138)
!552 = distinct !{!552, !543, !553, !531, !532}
!553 = !DILocation(line: 80, column: 16, scope: !136)
!554 = !DILocation(line: 82, column: 9, scope: !75)
!555 = !DILocation(line: 82, column: 2, scope: !75)
!556 = !DILocation(line: 83, column: 1, scope: !75)
!557 = !DILocation(line: 248, column: 1, scope: !261)
!558 = !DILocation(line: 248, column: 1, scope: !270)
!559 = !DILocation(line: 248, column: 1, scope: !269)
!560 = !DILocation(line: 248, column: 1, scope: !272)
!561 = !DILocation(line: 248, column: 1, scope: !275)
!562 = !DILocation(line: 248, column: 1, scope: !279)
!563 = !{i64 2156632787}
!564 = !DILocation(line: 248, column: 1, scope: !273)
!565 = !DILocation(line: 248, column: 1, scope: !281)
!566 = !DILocation(line: 248, column: 1, scope: !285)
!567 = !DILocation(line: 248, column: 1, scope: !284)
!568 = !DILocation(line: 248, column: 1, scope: !569)
!569 = distinct !DILexicalBlock(scope: !284, file: !255, line: 248, column: 1)
!570 = !DILocation(line: 248, column: 1, scope: !571)
!571 = distinct !DILexicalBlock(scope: !284, file: !255, line: 248, column: 1)
!572 = !{i64 2156634001, i64 2156634030, i64 2156634076, i64 2156634134, i64 2156634188, i64 2156634242, i64 2156634297, i64 2156634328, i64 2156634636, i64 2156634642, i64 2156634689, i64 2156634712, i64 2156634738}
!573 = !DILocation(line: 248, column: 1, scope: !574)
!574 = distinct !DILexicalBlock(scope: !284, file: !255, line: 248, column: 1)
!575 = !DILocation(line: 248, column: 1, scope: !282)
!576 = !DILocation(line: 248, column: 1, scope: !577)
!577 = distinct !DILexicalBlock(scope: !269, file: !255, line: 248, column: 1)
!578 = !{i64 2156635091}
!579 = !DILocation(line: 248, column: 1, scope: !287)
!580 = !DILocation(line: 248, column: 1, scope: !290)
!581 = !DILocation(line: 248, column: 1, scope: !582)
!582 = distinct !DILexicalBlock(scope: !290, file: !255, line: 248, column: 1)
!583 = !DILocation(line: 248, column: 1, scope: !584)
!584 = distinct !DILexicalBlock(scope: !582, file: !255, line: 248, column: 1)
!585 = !DILocation(line: 248, column: 1, scope: !586)
!586 = distinct !DILexicalBlock(scope: !287, file: !255, line: 248, column: 1)
!587 = !DILocation(line: 248, column: 1, scope: !588)
!588 = distinct !DILexicalBlock(scope: !586, file: !255, line: 248, column: 1)
!589 = !DILocation(line: 248, column: 1, scope: !590)
!590 = distinct !DILexicalBlock(scope: !588, file: !255, line: 248, column: 1)
!591 = !DILocation(line: 248, column: 1, scope: !592)
!592 = distinct !DILexicalBlock(scope: !269, file: !255, line: 248, column: 1)
!593 = !{i64 2156645529}
!594 = !DILocation(line: 248, column: 1, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !255, line: 248, column: 1)
!596 = !DILocation(line: 248, column: 1, scope: !597)
!597 = distinct !DILexicalBlock(scope: !595, file: !255, line: 248, column: 1)
!598 = !{i64 2156645688}
!599 = !DISubprogram(name: "pm_debug_messages_should_print", scope: !600, file: !600, line: 565, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!600 = !DIFile(filename: "./include/linux/suspend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0bdf8a52b9a460775d8f457b5a21f557")
!601 = !DISubroutineType(types: !602)
!602 = !{!81}
!603 = !DISubprogram(name: "_printk", scope: !604, file: !604, line: 153, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!604 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!605 = !DISubroutineType(types: !606)
!606 = !{!28, !140, null}
!607 = distinct !DISubprogram(name: "pm_dyn_debug_messages_on", scope: !600, file: !600, line: 566, type: !26, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!608 = !DILocation(line: 571, column: 2, scope: !607)
!609 = !DISubprogram(name: "pm_wakeup_pending", scope: !600, file: !600, line: 518, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!610 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !611, file: !611, line: 65, type: !612, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!611 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!612 = !DISubroutineType(types: !613)
!613 = !{!37}
!614 = !DILocation(line: 67, column: 9, scope: !610)
!615 = !DILocation(line: 67, column: 2, scope: !610)
!616 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !611, file: !611, line: 120, type: !617, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{!28, !37}
!619 = !{!620}
!620 = !DILocalVariable(name: "flags", arg: 1, scope: !616, file: !611, line: 120, type: !37)
!621 = !DILocation(line: 120, column: 67, scope: !616)
!622 = !DILocation(line: 122, column: 11, scope: !616)
!623 = !DILocation(line: 122, column: 17, scope: !616)
!624 = !DILocation(line: 122, column: 9, scope: !616)
!625 = !DILocation(line: 122, column: 2, scope: !616)
!626 = !DISubprogram(name: "__warn_printk", scope: !627, file: !627, line: 93, type: !628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!627 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!628 = !DISubroutineType(types: !629)
!629 = !{null, !140, null}
!630 = !DILocation(line: 93, column: 2, scope: !178)
!631 = !DILocation(line: 93, column: 22, scope: !178)
!632 = !DILocation(line: 95, column: 23, scope: !633)
!633 = distinct !DILexicalBlock(scope: !178, file: !3, line: 95, column: 23)
!634 = !DILocation(line: 95, column: 2, scope: !178)
!635 = !DILocation(line: 96, column: 2, scope: !182)
!636 = !DILocation(line: 96, column: 2, scope: !184)
!637 = !DILocation(line: 96, column: 2, scope: !186)
!638 = !DILocation(line: 96, column: 2, scope: !187)
!639 = !DILocation(line: 96, column: 2, scope: !190)
!640 = !DILocation(line: 96, column: 2, scope: !191)
!641 = !DILocation(line: 96, column: 2, scope: !194)
!642 = !DILocation(line: 96, column: 2, scope: !643)
!643 = distinct !DILexicalBlock(scope: !194, file: !3, line: 96, column: 2)
!644 = !DILocation(line: 0, scope: !643)
!645 = !DILocation(line: 96, column: 2, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !3, line: 96, column: 2)
!647 = !DILocation(line: 96, column: 2, scope: !195)
!648 = !DILocation(line: 96, column: 2, scope: !198)
!649 = !DILocation(line: 96, column: 2, scope: !202)
!650 = !DILocation(line: 96, column: 2, scope: !201)
!651 = !DILocation(line: 96, column: 2, scope: !652)
!652 = distinct !DILexicalBlock(scope: !201, file: !3, line: 96, column: 2)
!653 = !DILocation(line: 96, column: 2, scope: !200)
!654 = !DILocation(line: 96, column: 2, scope: !655)
!655 = distinct !DILexicalBlock(scope: !200, file: !3, line: 96, column: 2)
!656 = !DILocation(line: 96, column: 2, scope: !657)
!657 = distinct !DILexicalBlock(scope: !200, file: !3, line: 96, column: 2)
!658 = !{i64 2157439913, i64 2157439942, i64 2157439988, i64 2157440046, i64 2157440100, i64 2157440154, i64 2157440209, i64 2157440240, i64 2157440548, i64 2157440554, i64 2157440601, i64 2157440624, i64 2157440650}
!659 = !DILocation(line: 96, column: 2, scope: !660)
!660 = distinct !DILexicalBlock(scope: !200, file: !3, line: 96, column: 2)
!661 = !DILocation(line: 96, column: 2, scope: !662)
!662 = distinct !DILexicalBlock(scope: !201, file: !3, line: 96, column: 2)
!663 = !DILocation(line: 96, column: 2, scope: !178)
!664 = !DILocation(line: 99, column: 2, scope: !204)
!665 = !DILocation(line: 99, column: 2, scope: !205)
!666 = !DILocation(line: 99, column: 2, scope: !210)
!667 = !DILocation(line: 100, column: 7, scope: !209)
!668 = !DILocation(line: 100, column: 12, scope: !209)
!669 = !DILocation(line: 100, column: 7, scope: !210)
!670 = !DILocation(line: 101, column: 4, scope: !208)
!671 = !DILocation(line: 101, column: 4, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 101, column: 4)
!673 = distinct !DILexicalBlock(scope: !208, file: !3, line: 101, column: 4)
!674 = !DILocation(line: 101, column: 4, scope: !673)
!675 = !DILocation(line: 101, column: 4, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !3, line: 101, column: 4)
!677 = !DILocation(line: 101, column: 4, scope: !678)
!678 = distinct !DILexicalBlock(scope: !676, file: !3, line: 101, column: 4)
!679 = !DILocation(line: 101, column: 4, scope: !680)
!680 = distinct !DILexicalBlock(scope: !672, file: !3, line: 101, column: 4)
!681 = !DILocation(line: 101, column: 4, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 101, column: 4)
!683 = distinct !DILexicalBlock(scope: !680, file: !3, line: 101, column: 4)
!684 = !DILocation(line: 101, column: 4, scope: !683)
!685 = !DILocation(line: 102, column: 4, scope: !208)
!686 = !DILocation(line: 102, column: 9, scope: !208)
!687 = !DILocation(line: 103, column: 4, scope: !207)
!688 = !DILocation(line: 103, column: 4, scope: !212)
!689 = !DILocation(line: 103, column: 4, scope: !214)
!690 = !DILocation(line: 103, column: 4, scope: !215)
!691 = !DILocation(line: 103, column: 4, scope: !218)
!692 = !DILocation(line: 103, column: 4, scope: !219)
!693 = !DILocation(line: 103, column: 4, scope: !222)
!694 = !DILocation(line: 103, column: 4, scope: !695)
!695 = distinct !DILexicalBlock(scope: !222, file: !3, line: 103, column: 4)
!696 = !DILocation(line: 0, scope: !695)
!697 = !DILocation(line: 103, column: 4, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !3, line: 103, column: 4)
!699 = !DILocation(line: 103, column: 4, scope: !223)
!700 = !DILocation(line: 103, column: 4, scope: !226)
!701 = !DILocation(line: 103, column: 4, scope: !230)
!702 = !DILocation(line: 103, column: 4, scope: !229)
!703 = !DILocation(line: 103, column: 4, scope: !704)
!704 = distinct !DILexicalBlock(scope: !229, file: !3, line: 103, column: 4)
!705 = !DILocation(line: 103, column: 4, scope: !228)
!706 = !DILocation(line: 103, column: 4, scope: !707)
!707 = distinct !DILexicalBlock(scope: !228, file: !3, line: 103, column: 4)
!708 = !DILocation(line: 103, column: 4, scope: !709)
!709 = distinct !DILexicalBlock(scope: !228, file: !3, line: 103, column: 4)
!710 = !{i64 2157447832, i64 2157447861, i64 2157447907, i64 2157447965, i64 2157448019, i64 2157448073, i64 2157448128, i64 2157448159, i64 2157448467, i64 2157448473, i64 2157448520, i64 2157448543, i64 2157448569}
!711 = !DILocation(line: 103, column: 4, scope: !712)
!712 = distinct !DILexicalBlock(scope: !228, file: !3, line: 103, column: 4)
!713 = !DILocation(line: 103, column: 4, scope: !714)
!714 = distinct !DILexicalBlock(scope: !229, file: !3, line: 103, column: 4)
!715 = !DILocation(line: 103, column: 4, scope: !208)
!716 = !DILocation(line: 105, column: 3, scope: !208)
!717 = !DILocation(line: 99, column: 2, scope: !232)
!718 = distinct !{!718, !665, !719, !531, !532}
!719 = !DILocation(line: 105, column: 3, scope: !205)
!720 = !DILocation(line: 106, column: 23, scope: !721)
!721 = distinct !DILexicalBlock(scope: !178, file: !3, line: 106, column: 23)
!722 = !DILocation(line: 106, column: 2, scope: !178)
!723 = !DILocation(line: 107, column: 1, scope: !178)
!724 = distinct !DISubprogram(name: "syscore_shutdown", scope: !3, file: !3, line: 114, type: !31, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !725)
!725 = !{!726, !727, !730}
!726 = !DILocalVariable(name: "ops", scope: !724, file: !3, line: 116, type: !13)
!727 = !DILocalVariable(name: "__mptr", scope: !728, file: !3, line: 120, type: !12)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 120, column: 2)
!729 = distinct !DILexicalBlock(scope: !724, file: !3, line: 120, column: 2)
!730 = !DILocalVariable(name: "__mptr", scope: !731, file: !3, line: 120, type: !12)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 120, column: 2)
!732 = distinct !DILexicalBlock(scope: !729, file: !3, line: 120, column: 2)
!733 = !DILocation(line: 116, column: 2, scope: !724)
!734 = !DILocation(line: 116, column: 22, scope: !724)
!735 = !DILocation(line: 118, column: 2, scope: !724)
!736 = !DILocation(line: 120, column: 2, scope: !728)
!737 = !DILocation(line: 120, column: 2, scope: !729)
!738 = !DILocation(line: 120, column: 2, scope: !732)
!739 = !DILocation(line: 121, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !732, file: !3, line: 121, column: 7)
!741 = !DILocation(line: 121, column: 12, scope: !740)
!742 = !DILocation(line: 121, column: 7, scope: !732)
!743 = !DILocation(line: 122, column: 8, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !3, line: 122, column: 8)
!745 = distinct !DILexicalBlock(scope: !740, file: !3, line: 121, column: 22)
!746 = !DILocation(line: 122, column: 8, scope: !745)
!747 = !DILocation(line: 123, column: 5, scope: !748)
!748 = distinct !DILexicalBlock(scope: !744, file: !3, line: 123, column: 5)
!749 = !DILocation(line: 123, column: 5, scope: !750)
!750 = distinct !DILexicalBlock(scope: !748, file: !3, line: 123, column: 5)
!751 = !DILocation(line: 123, column: 5, scope: !744)
!752 = !DILocation(line: 124, column: 4, scope: !745)
!753 = !DILocation(line: 124, column: 9, scope: !745)
!754 = !DILocation(line: 125, column: 3, scope: !745)
!755 = !DILocation(line: 120, column: 2, scope: !731)
!756 = distinct !{!756, !737, !757, !531, !532}
!757 = !DILocation(line: 125, column: 3, scope: !729)
!758 = !DILocation(line: 127, column: 2, scope: !724)
!759 = !DILocation(line: 128, column: 1, scope: !724)
!760 = distinct !DISubprogram(name: "__list_add", scope: !373, file: !373, line: 146, type: !761, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !22, !22, !22}
!763 = !{!764, !765, !766}
!764 = !DILocalVariable(name: "new", arg: 1, scope: !760, file: !373, line: 146, type: !22)
!765 = !DILocalVariable(name: "prev", arg: 2, scope: !760, file: !373, line: 147, type: !22)
!766 = !DILocalVariable(name: "next", arg: 3, scope: !760, file: !373, line: 148, type: !22)
!767 = !DILocation(line: 146, column: 49, scope: !760)
!768 = !DILocation(line: 147, column: 28, scope: !760)
!769 = !DILocation(line: 148, column: 28, scope: !760)
!770 = !DILocation(line: 150, column: 24, scope: !771)
!771 = distinct !DILexicalBlock(scope: !760, file: !373, line: 150, column: 6)
!772 = !DILocation(line: 150, column: 29, scope: !771)
!773 = !DILocation(line: 150, column: 35, scope: !771)
!774 = !DILocation(line: 150, column: 7, scope: !771)
!775 = !DILocation(line: 150, column: 6, scope: !760)
!776 = !DILocation(line: 151, column: 3, scope: !771)
!777 = !DILocation(line: 153, column: 15, scope: !760)
!778 = !DILocation(line: 153, column: 2, scope: !760)
!779 = !DILocation(line: 153, column: 8, scope: !760)
!780 = !DILocation(line: 153, column: 13, scope: !760)
!781 = !DILocation(line: 154, column: 14, scope: !760)
!782 = !DILocation(line: 154, column: 2, scope: !760)
!783 = !DILocation(line: 154, column: 7, scope: !760)
!784 = !DILocation(line: 154, column: 12, scope: !760)
!785 = !DILocation(line: 155, column: 14, scope: !760)
!786 = !DILocation(line: 155, column: 2, scope: !760)
!787 = !DILocation(line: 155, column: 7, scope: !760)
!788 = !DILocation(line: 155, column: 12, scope: !760)
!789 = !DILocation(line: 156, column: 2, scope: !760)
!790 = !DILocation(line: 156, column: 2, scope: !791)
!791 = distinct !DILexicalBlock(scope: !760, file: !373, line: 156, column: 2)
!792 = !DILocation(line: 156, column: 2, scope: !793)
!793 = distinct !DILexicalBlock(scope: !791, file: !373, line: 156, column: 2)
!794 = !DILocation(line: 156, column: 2, scope: !795)
!795 = distinct !DILexicalBlock(scope: !791, file: !373, line: 156, column: 2)
!796 = !DILocation(line: 157, column: 1, scope: !760)
!797 = distinct !DISubprogram(name: "__list_add_valid", scope: !373, file: !373, line: 128, type: !798, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!81, !22, !22, !22}
!800 = !{!801, !802, !803}
!801 = !DILocalVariable(name: "new", arg: 1, scope: !797, file: !373, line: 128, type: !22)
!802 = !DILocalVariable(name: "prev", arg: 2, scope: !797, file: !373, line: 129, type: !22)
!803 = !DILocalVariable(name: "next", arg: 3, scope: !797, file: !373, line: 130, type: !22)
!804 = !DILocation(line: 128, column: 55, scope: !797)
!805 = !DILocation(line: 129, column: 23, scope: !797)
!806 = !DILocation(line: 130, column: 23, scope: !797)
!807 = !DILocation(line: 132, column: 2, scope: !797)
!808 = distinct !DISubprogram(name: "__list_del_entry", scope: !373, file: !373, line: 213, type: !399, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !809)
!809 = !{!810}
!810 = !DILocalVariable(name: "entry", arg: 1, scope: !808, file: !373, line: 213, type: !22)
!811 = !DILocation(line: 213, column: 55, scope: !808)
!812 = !DILocation(line: 215, column: 30, scope: !813)
!813 = distinct !DILexicalBlock(scope: !808, file: !373, line: 215, column: 6)
!814 = !DILocation(line: 215, column: 7, scope: !813)
!815 = !DILocation(line: 215, column: 6, scope: !808)
!816 = !DILocation(line: 216, column: 3, scope: !813)
!817 = !DILocation(line: 218, column: 13, scope: !808)
!818 = !DILocation(line: 218, column: 20, scope: !808)
!819 = !DILocation(line: 218, column: 26, scope: !808)
!820 = !DILocation(line: 218, column: 33, scope: !808)
!821 = !DILocation(line: 218, column: 2, scope: !808)
!822 = !DILocation(line: 219, column: 1, scope: !808)
!823 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !373, file: !373, line: 134, type: !824, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!81, !22}
!826 = !{!827}
!827 = !DILocalVariable(name: "entry", arg: 1, scope: !823, file: !373, line: 134, type: !22)
!828 = !DILocation(line: 134, column: 61, scope: !823)
!829 = !DILocation(line: 136, column: 2, scope: !823)
!830 = distinct !DISubprogram(name: "__list_del", scope: !373, file: !373, line: 193, type: !374, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !831)
!831 = !{!832, !833}
!832 = !DILocalVariable(name: "prev", arg: 1, scope: !830, file: !373, line: 193, type: !22)
!833 = !DILocalVariable(name: "next", arg: 2, scope: !830, file: !373, line: 193, type: !22)
!834 = !DILocation(line: 193, column: 50, scope: !830)
!835 = !DILocation(line: 193, column: 75, scope: !830)
!836 = !DILocation(line: 195, column: 15, scope: !830)
!837 = !DILocation(line: 195, column: 2, scope: !830)
!838 = !DILocation(line: 195, column: 8, scope: !830)
!839 = !DILocation(line: 195, column: 13, scope: !830)
!840 = !DILocation(line: 196, column: 2, scope: !830)
!841 = !DILocation(line: 196, column: 2, scope: !842)
!842 = distinct !DILexicalBlock(scope: !830, file: !373, line: 196, column: 2)
!843 = !DILocation(line: 196, column: 2, scope: !844)
!844 = distinct !DILexicalBlock(scope: !842, file: !373, line: 196, column: 2)
!845 = !DILocation(line: 196, column: 2, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !373, line: 196, column: 2)
!847 = !DILocation(line: 197, column: 1, scope: !830)
!848 = distinct !DISubprogram(name: "static_key_false", scope: !849, file: !849, line: 205, type: !850, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !873)
!849 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!850 = !DISubroutineType(types: !851)
!851 = !{!81, !852}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !849, line: 85, size: 128, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !853, file: !849, line: 86, baseType: !320, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !849, line: 101, baseType: !857, size: 64, offset: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !849, line: 101, size: 64, elements: !858)
!858 = !{!859, !860, !870}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !857, file: !849, line: 102, baseType: !37, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !857, file: !849, line: 103, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !849, line: 117, size: 128, elements: !863)
!863 = !{!864, !867, !868}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !862, file: !849, line: 118, baseType: !865, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !59, line: 20, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !61, line: 26, baseType: !28)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !862, file: !849, line: 119, baseType: !865, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !862, file: !849, line: 120, baseType: !869, size: 64, offset: 64)
!869 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !857, file: !849, line: 104, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !849, line: 104, flags: DIFlagFwdDecl)
!873 = !{!874}
!874 = !DILocalVariable(name: "key", arg: 1, scope: !848, file: !849, line: 205, type: !852)
!875 = !DILocation(line: 205, column: 65, scope: !848)
!876 = !DILocation(line: 207, column: 28, scope: !848)
!877 = !DILocation(line: 207, column: 9, scope: !848)
!878 = !DILocation(line: 207, column: 2, scope: !848)
!879 = distinct !DISubprogram(name: "cpu_online", scope: !51, file: !51, line: 1080, type: !880, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !882)
!880 = !DISubroutineType(types: !881)
!881 = !{!81, !7}
!882 = !{!883}
!883 = !DILocalVariable(name: "cpu", arg: 1, scope: !879, file: !51, line: 1080, type: !7)
!884 = !DILocation(line: 1080, column: 44, scope: !879)
!885 = !DILocation(line: 1082, column: 26, scope: !879)
!886 = !DILocation(line: 1082, column: 9, scope: !879)
!887 = !DILocation(line: 1082, column: 2, scope: !879)
!888 = distinct !DISubprogram(name: "__preempt_count_add", scope: !889, file: !889, line: 78, type: !890, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !892)
!889 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!890 = !DISubroutineType(types: !891)
!891 = !{null, !28}
!892 = !{!893, !894, !897}
!893 = !DILocalVariable(name: "val", arg: 1, scope: !888, file: !889, line: 78, type: !28)
!894 = !DILocalVariable(name: "pao_ID__", scope: !895, file: !889, line: 80, type: !896)
!895 = distinct !DILexicalBlock(scope: !888, file: !889, line: 80, column: 2)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!897 = !DILocalVariable(name: "pto_val__", scope: !898, file: !889, line: 80, type: !58)
!898 = distinct !DILexicalBlock(scope: !899, file: !889, line: 80, column: 2)
!899 = distinct !DILexicalBlock(scope: !900, file: !889, line: 80, column: 2)
!900 = distinct !DILexicalBlock(scope: !895, file: !889, line: 80, column: 2)
!901 = !DILocation(line: 78, column: 53, scope: !888)
!902 = !DILocation(line: 80, column: 2, scope: !888)
!903 = !DILocation(line: 80, column: 2, scope: !895)
!904 = !DILocation(line: 80, column: 2, scope: !900)
!905 = !DILocation(line: 80, column: 2, scope: !906)
!906 = distinct !DILexicalBlock(scope: !900, file: !889, line: 80, column: 2)
!907 = !{i64 2149495487}
!908 = !DILocation(line: 80, column: 2, scope: !899)
!909 = !DILocation(line: 80, column: 2, scope: !910)
!910 = distinct !DILexicalBlock(scope: !899, file: !889, line: 80, column: 2)
!911 = !{i64 2149495782}
!912 = !DILocation(line: 80, column: 2, scope: !898)
!913 = !{i64 2149496487}
!914 = !DILocation(line: 81, column: 1, scope: !888)
!915 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !889, file: !889, line: 93, type: !601, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !916)
!916 = !{!917}
!917 = !DILocalVariable(name: "c", scope: !918, file: !889, line: 95, type: !81)
!918 = distinct !DILexicalBlock(scope: !915, file: !889, line: 95, column: 9)
!919 = !DILocation(line: 95, column: 9, scope: !918)
!920 = !{i64 2149499843, i64 2149499936}
!921 = !DILocation(line: 95, column: 9, scope: !915)
!922 = !DILocation(line: 95, column: 2, scope: !915)
!923 = distinct !DISubprogram(name: "arch_static_branch", scope: !924, file: !924, line: 25, type: !925, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !927)
!924 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!925 = !DISubroutineType(types: !926)
!926 = !{!81, !852, !81}
!927 = !{!928, !929, !930}
!928 = !DILocalVariable(name: "key", arg: 1, scope: !923, file: !924, line: 25, type: !852)
!929 = !DILocalVariable(name: "branch", arg: 2, scope: !923, file: !924, line: 25, type: !81)
!930 = !DILabel(scope: !923, name: "l_yes", file: !924, line: 33)
!931 = !DILocation(line: 25, column: 67, scope: !923)
!932 = !DILocation(line: 25, column: 77, scope: !923)
!933 = !DILocation(line: 30, column: 13, scope: !923)
!934 = !DILocation(line: 30, column: 28, scope: !923)
!935 = !DILocation(line: 30, column: 26, scope: !923)
!936 = !DILocation(line: 27, column: 2, scope: !923)
!937 = !{i64 935684, i64 935728, i64 2148420411, i64 2148420432, i64 2148420458, i64 2148420491, i64 2148420525, i64 2148420549}
!938 = !DILocation(line: 32, column: 2, scope: !923)
!939 = !DILocation(line: 33, column: 1, scope: !923)
!940 = !DILocation(line: 34, column: 2, scope: !923)
!941 = !DILocation(line: 35, column: 1, scope: !923)
!942 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !51, file: !51, line: 502, type: !943, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !945)
!943 = !DISubroutineType(types: !944)
!944 = !{!81, !28, !48}
!945 = !{!946, !947}
!946 = !DILocalVariable(name: "cpu", arg: 1, scope: !942, file: !51, line: 502, type: !28)
!947 = !DILocalVariable(name: "cpumask", arg: 2, scope: !942, file: !51, line: 502, type: !48)
!948 = !DILocation(line: 502, column: 50, scope: !942)
!949 = !DILocation(line: 502, column: 77, scope: !942)
!950 = !DILocation(line: 504, column: 9, scope: !942)
!951 = !DILocation(line: 504, column: 2, scope: !942)
!952 = distinct !DISubprogram(name: "_test_bit", scope: !953, file: !953, line: 139, type: !954, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !959)
!953 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!954 = !DISubroutineType(types: !955)
!955 = !{!81, !37, !956}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !958)
!958 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!959 = !{!960, !961}
!960 = !DILocalVariable(name: "nr", arg: 1, scope: !952, file: !953, line: 139, type: !37)
!961 = !DILocalVariable(name: "addr", arg: 2, scope: !952, file: !953, line: 139, type: !956)
!962 = !DILocation(line: 139, column: 25, scope: !952)
!963 = !DILocation(line: 139, column: 59, scope: !952)
!964 = !DILocation(line: 141, column: 25, scope: !952)
!965 = !DILocation(line: 141, column: 32, scope: !952)
!966 = !DILocation(line: 141, column: 30, scope: !952)
!967 = !DILocation(line: 141, column: 2, scope: !952)
!968 = !DILocation(line: 142, column: 23, scope: !952)
!969 = !DILocation(line: 142, column: 27, scope: !952)
!970 = !DILocation(line: 142, column: 9, scope: !952)
!971 = !DILocation(line: 142, column: 2, scope: !952)
!972 = distinct !DISubprogram(name: "cpumask_check", scope: !51, file: !51, line: 148, type: !973, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{!7, !7}
!975 = !{!976}
!976 = !DILocalVariable(name: "cpu", arg: 1, scope: !972, file: !51, line: 148, type: !7)
!977 = !DILocation(line: 148, column: 64, scope: !972)
!978 = !DILocation(line: 150, column: 20, scope: !972)
!979 = !DILocation(line: 150, column: 2, scope: !972)
!980 = !DILocation(line: 151, column: 9, scope: !972)
!981 = !DILocation(line: 151, column: 2, scope: !972)
!982 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !983, file: !983, line: 66, type: !984, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !993)
!983 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!984 = !DISubroutineType(types: !985)
!985 = !{null, !986, !989}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 61, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !991, line: 72, baseType: !992)
!991 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !991, line: 16, baseType: !37)
!993 = !{!994, !995}
!994 = !DILocalVariable(name: "v", arg: 1, scope: !982, file: !983, line: 66, type: !986)
!995 = !DILocalVariable(name: "size", arg: 2, scope: !982, file: !983, line: 66, type: !989)
!996 = !DILocation(line: 66, column: 73, scope: !982)
!997 = !DILocation(line: 66, column: 83, scope: !982)
!998 = !DILocation(line: 68, column: 19, scope: !982)
!999 = !DILocation(line: 68, column: 22, scope: !982)
!1000 = !DILocation(line: 68, column: 2, scope: !982)
!1001 = !DILocation(line: 69, column: 2, scope: !982)
!1002 = !DILocation(line: 70, column: 1, scope: !982)
!1003 = distinct !DISubprogram(name: "arch_test_bit", scope: !1004, file: !1004, line: 237, type: !954, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1005)
!1004 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1005 = !{!1006, !1007}
!1006 = !DILocalVariable(name: "nr", arg: 1, scope: !1003, file: !1004, line: 237, type: !37)
!1007 = !DILocalVariable(name: "addr", arg: 2, scope: !1003, file: !1004, line: 237, type: !956)
!1008 = !DILocation(line: 237, column: 29, scope: !1003)
!1009 = !DILocation(line: 237, column: 63, scope: !1003)
!1010 = !DILocation(line: 239, column: 30, scope: !1003)
!1011 = !DILocation(line: 239, column: 9, scope: !1003)
!1012 = !DILocation(line: 239, column: 54, scope: !1003)
!1013 = !DILocation(line: 239, column: 58, scope: !1003)
!1014 = !DILocation(line: 239, column: 36, scope: !1003)
!1015 = !DILocation(line: 240, column: 26, scope: !1003)
!1016 = !DILocation(line: 240, column: 30, scope: !1003)
!1017 = !DILocation(line: 240, column: 8, scope: !1003)
!1018 = !DILocation(line: 239, column: 2, scope: !1003)
!1019 = distinct !DISubprogram(name: "kasan_check_read", scope: !1020, file: !1020, line: 40, type: !1021, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1023)
!1020 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!81, !986, !7}
!1023 = !{!1024, !1025}
!1024 = !DILocalVariable(name: "p", arg: 1, scope: !1019, file: !1020, line: 40, type: !986)
!1025 = !DILocalVariable(name: "size", arg: 2, scope: !1019, file: !1020, line: 40, type: !7)
!1026 = !DILocation(line: 40, column: 58, scope: !1019)
!1027 = !DILocation(line: 40, column: 74, scope: !1019)
!1028 = !DILocation(line: 42, column: 2, scope: !1019)
!1029 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1030, file: !1030, line: 229, type: !1031, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1033)
!1030 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !986, !989, !28}
!1033 = !{!1034, !1035, !1036}
!1034 = !DILocalVariable(name: "ptr", arg: 1, scope: !1029, file: !1030, line: 229, type: !986)
!1035 = !DILocalVariable(name: "size", arg: 2, scope: !1029, file: !1030, line: 229, type: !989)
!1036 = !DILocalVariable(name: "type", arg: 3, scope: !1029, file: !1030, line: 230, type: !28)
!1037 = !DILocation(line: 229, column: 60, scope: !1029)
!1038 = !DILocation(line: 229, column: 72, scope: !1029)
!1039 = !DILocation(line: 230, column: 15, scope: !1029)
!1040 = !DILocation(line: 230, column: 23, scope: !1029)
!1041 = distinct !DISubprogram(name: "constant_test_bit", scope: !1004, file: !1004, line: 204, type: !1042, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1044)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!81, !869, !956}
!1044 = !{!1045, !1046}
!1045 = !DILocalVariable(name: "nr", arg: 1, scope: !1041, file: !1004, line: 204, type: !869)
!1046 = !DILocalVariable(name: "addr", arg: 2, scope: !1041, file: !1004, line: 204, type: !956)
!1047 = !DILocation(line: 204, column: 52, scope: !1041)
!1048 = !DILocation(line: 204, column: 86, scope: !1041)
!1049 = !DILocation(line: 206, column: 19, scope: !1041)
!1050 = !DILocation(line: 206, column: 22, scope: !1041)
!1051 = !DILocation(line: 206, column: 15, scope: !1041)
!1052 = !DILocation(line: 207, column: 4, scope: !1041)
!1053 = !DILocation(line: 207, column: 9, scope: !1041)
!1054 = !DILocation(line: 207, column: 12, scope: !1041)
!1055 = !DILocation(line: 206, column: 44, scope: !1041)
!1056 = !DILocation(line: 207, column: 37, scope: !1041)
!1057 = !DILocation(line: 206, column: 2, scope: !1041)
!1058 = distinct !DISubprogram(name: "variable_test_bit", scope: !1004, file: !1004, line: 224, type: !1042, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DILocalVariable(name: "nr", arg: 1, scope: !1058, file: !1004, line: 224, type: !869)
!1061 = !DILocalVariable(name: "addr", arg: 2, scope: !1058, file: !1004, line: 224, type: !956)
!1062 = !DILocalVariable(name: "oldbit", scope: !1058, file: !1004, line: 226, type: !81)
!1063 = !DILocation(line: 224, column: 52, scope: !1058)
!1064 = !DILocation(line: 224, column: 86, scope: !1058)
!1065 = !DILocation(line: 226, column: 2, scope: !1058)
!1066 = !DILocation(line: 226, column: 7, scope: !1058)
!1067 = !DILocation(line: 231, column: 33, scope: !1058)
!1068 = !DILocation(line: 231, column: 46, scope: !1058)
!1069 = !DILocation(line: 228, column: 2, scope: !1058)
!1070 = !{i64 2147936901, i64 2147936975}
!1071 = !DILocation(line: 233, column: 9, scope: !1058)
!1072 = !DILocation(line: 234, column: 1, scope: !1058)
!1073 = !DILocation(line: 233, column: 2, scope: !1058)
!1074 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !51, file: !51, line: 140, type: !1075, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !7, !7}
!1077 = !{!1078, !1079}
!1078 = !DILocalVariable(name: "cpu", arg: 1, scope: !1074, file: !51, line: 140, type: !7)
!1079 = !DILocalVariable(name: "bits", arg: 2, scope: !1074, file: !51, line: 140, type: !7)
!1080 = !DILocation(line: 140, column: 60, scope: !1074)
!1081 = !DILocation(line: 140, column: 78, scope: !1074)
!1082 = !DILocation(line: 145, column: 1, scope: !1074)
!1083 = distinct !DISubprogram(name: "native_save_fl", scope: !611, file: !611, line: 17, type: !612, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1084)
!1084 = !{!1085}
!1085 = !DILocalVariable(name: "flags", scope: !1083, file: !611, line: 19, type: !37)
!1086 = !DILocation(line: 19, column: 2, scope: !1083)
!1087 = !DILocation(line: 19, column: 16, scope: !1083)
!1088 = !DILocation(line: 26, column: 2, scope: !1083)
!1089 = !{i64 1922409, i64 1922430}
!1090 = !DILocation(line: 32, column: 9, scope: !1083)
!1091 = !DILocation(line: 33, column: 1, scope: !1083)
!1092 = !DILocation(line: 32, column: 2, scope: !1083)
