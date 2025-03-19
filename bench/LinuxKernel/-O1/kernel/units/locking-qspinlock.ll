; ModuleID = 'kernel/locking/qspinlock.c'
source_filename = "kernel/locking/qspinlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_queued_spin_lock_slowpath: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad queued_spin_lock_slowpath ; .previous"

%struct.qnode = type { %struct.mcs_spinlock }
%struct.mcs_spinlock = type { ptr, i32, i32 }
%struct.pcpu_hot = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [16 x i8] }
%struct.anon.2 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.3 }
%struct.atomic_t = type { i32 }
%union.anon.3 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.anon = type { i8, i8 }
%struct.anon.0 = type { i16, i16 }
%struct.tracepoint_func = type { ptr, ptr, i32 }

@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@qnodes = internal global [4 x %struct.qnode] zeroinitializer, section ".data..percpu..shared_aligned", align 64, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !78
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1, !dbg !83
@__UNIQUE_ID___addressable_queued_spin_lock_slowpath238 = internal global ptr @queued_spin_lock_slowpath, section ".discard.addressable", align 8, !dbg !88
@virt_spin_lock_key = external dso_local global %struct.static_key_false, align 8
@__tracepoint_contention_begin = external dso_local global %struct.tracepoint, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"include/trace/events/lock.h\00", align 1, !dbg !90
@trace_contention_begin.__UNIQUE_ID___addressable___SCK__tp_func_contention_begin205 = internal global ptr @__SCK__tp_func_contention_begin, section ".discard.addressable", align 8, !dbg !96
@__SCK__tp_func_contention_begin = external dso_local global %struct.static_call_key, align 8
@trace_contention_begin.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace206 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !127
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__tracepoint_contention_end = external dso_local global %struct.tracepoint, align 8
@trace_contention_end.__UNIQUE_ID___addressable___SCK__tp_func_contention_end213 = internal global ptr @__SCK__tp_func_contention_end, section ".discard.addressable", align 8, !dbg !129
@__SCK__tp_func_contention_end = external dso_local global %struct.static_call_key, align 8
@trace_contention_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace214 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !158
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_queued_spin_lock_slowpath238, ptr @trace_contention_begin.__UNIQUE_ID___addressable___SCK__tp_func_contention_begin205, ptr @trace_contention_begin.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace206, ptr @trace_contention_end.__UNIQUE_ID___addressable___SCK__tp_func_contention_end213, ptr @trace_contention_end.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace214], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @queued_spin_lock_slowpath(ptr noundef %lock, i32 noundef %val) #0 section ".spinlock.text" align 16 !dbg !171 {
entry:
  %lock.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %prev = alloca ptr, align 8
  %next = alloca ptr, align 8
  %node = alloca ptr, align 8
  %old = alloca i32, align 4
  %tail = alloca i32, align 4
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %cnt = alloca i32, align 4
  %__PTR = alloca ptr, align 8
  %VAL = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %_val = alloca i8, align 1
  %__PTR27 = alloca ptr, align 8
  %VAL28 = alloca i8, align 1
  %tmp33 = alloca i8, align 1
  %tmp38 = alloca i8, align 1
  %tmp51 = alloca i8, align 1
  %__vpp_verify = alloca ptr, align 8
  %tmp56 = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp57 = alloca ptr, align 8
  %tmp58 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify60 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %tmp66 = alloca i32, align 4
  %_val112 = alloca i32, align 4
  %__PTR113 = alloca ptr, align 8
  %VAL115 = alloca i32, align 4
  %tmp120 = alloca i32, align 4
  %tmp125 = alloca i32, align 4
  %tmp138 = alloca i32, align 4
  %tmp144 = alloca ptr, align 8
  %_val154 = alloca i32, align 4
  %__PTR155 = alloca ptr, align 8
  %VAL157 = alloca i32, align 4
  %tmp162 = alloca i32, align 4
  %tmp168 = alloca i32, align 4
  %tmp181 = alloca i32, align 4
  %__PTR193 = alloca ptr, align 8
  %VAL195 = alloca ptr, align 8
  %tmp200 = alloca ptr, align 8
  %tmp205 = alloca ptr, align 8
  %__vpp_verify231 = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !198, metadata !DIExpression()), !dbg !260
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !199, metadata !DIExpression()), !dbg !261
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #12, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !200, metadata !DIExpression()), !dbg !263
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #12, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %next, metadata !201, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #12, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %node, metadata !202, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #12, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %old, metadata !203, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 4, ptr %tail) #12, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %tail, metadata !204, metadata !DIExpression()), !dbg !268
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #12, !dbg !269
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !205, metadata !DIExpression()), !dbg !270
  br label %do.body, !dbg !271

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !272

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !272

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !274
  %call = call zeroext i1 @virt_spin_lock(ptr noundef %0) #13, !dbg !276
  br i1 %call, label %if.then, label %if.end, !dbg !277

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !278

if.end:                                           ; preds = %do.end
  %1 = load i32, ptr %val.addr, align 4, !dbg !279
  %cmp = icmp eq i32 %1, 256, !dbg !280
  br i1 %cmp, label %if.then1, label %if.end9, !dbg !281

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #12, !dbg !282
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !206, metadata !DIExpression()), !dbg !283
  store i32 512, ptr %cnt, align 4, !dbg !283
  call void @llvm.lifetime.start.p0(i64 8, ptr %__PTR) #12, !dbg !284
  call void @llvm.dbg.declare(metadata ptr %__PTR, metadata !209, metadata !DIExpression()), !dbg !284
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !284
  %3 = getelementptr inbounds %struct.qspinlock, ptr %2, i32 0, i32 0, !dbg !284
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !284
  store ptr %counter, ptr %__PTR, align 8, !dbg !284
  call void @llvm.lifetime.start.p0(i64 4, ptr %VAL) #12, !dbg !284
  call void @llvm.dbg.declare(metadata ptr %VAL, metadata !211, metadata !DIExpression()), !dbg !284
  br label %for.cond, !dbg !284

for.cond:                                         ; preds = %if.end7, %if.then1
  br label %do.body2, !dbg !285

do.body2:                                         ; preds = %for.cond
  br label %do.cond3, !dbg !290

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !290

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr %__PTR, align 8, !dbg !285
  %5 = load volatile i32, ptr %4, align 4, !dbg !285
  store i32 %5, ptr %tmp, align 4, !dbg !290
  %6 = load i32, ptr %tmp, align 4, !dbg !285
  store i32 %6, ptr %VAL, align 4, !dbg !292
  %7 = load i32, ptr %VAL, align 4, !dbg !293
  %cmp5 = icmp ne i32 %7, 256, !dbg !293
  br i1 %cmp5, label %if.then6, label %lor.lhs.false, !dbg !293

lor.lhs.false:                                    ; preds = %do.end4
  %8 = load i32, ptr %cnt, align 4, !dbg !293
  %dec = add i32 %8, -1, !dbg !293
  store i32 %dec, ptr %cnt, align 4, !dbg !293
  %tobool = icmp ne i32 %8, 0, !dbg !293
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !292

if.then6:                                         ; preds = %lor.lhs.false, %do.end4
  br label %for.end, !dbg !293

if.end7:                                          ; preds = %lor.lhs.false
  call void @cpu_relax() #13, !dbg !292
  br label %for.cond, !dbg !295, !llvm.loop !296

for.end:                                          ; preds = %if.then6
  %9 = load i32, ptr %VAL, align 4, !dbg !284
  store i32 %9, ptr %tmp8, align 4, !dbg !297
  call void @llvm.lifetime.end.p0(i64 4, ptr %VAL) #12, !dbg !299
  call void @llvm.lifetime.end.p0(i64 8, ptr %__PTR) #12, !dbg !299
  %10 = load i32, ptr %tmp8, align 4, !dbg !284
  store i32 %10, ptr %val.addr, align 4, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #12, !dbg !301
  br label %if.end9, !dbg !302

if.end9:                                          ; preds = %for.end, %if.end
  %11 = load i32, ptr %val.addr, align 4, !dbg !303
  %and = and i32 %11, -256, !dbg !305
  %tobool10 = icmp ne i32 %and, 0, !dbg !305
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !306

if.then11:                                        ; preds = %if.end9
  br label %queue, !dbg !307

if.end12:                                         ; preds = %if.end9
  %12 = load ptr, ptr %lock.addr, align 8, !dbg !308
  %call13 = call i32 @queued_fetch_set_pending_acquire(ptr noundef %12) #13, !dbg !309
  store i32 %call13, ptr %val.addr, align 4, !dbg !310
  %13 = load i32, ptr %val.addr, align 4, !dbg !311
  %and14 = and i32 %13, -256, !dbg !311
  %tobool15 = icmp ne i32 %and14, 0, !dbg !311
  %lnot = xor i1 %tobool15, true, !dbg !311
  %lnot16 = xor i1 %lnot, true, !dbg !311
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !311
  %conv = sext i32 %lnot.ext to i64, !dbg !311
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !311
  %tobool17 = icmp ne i64 %expval, 0, !dbg !311
  br i1 %tobool17, label %if.then18, label %if.end23, !dbg !313

if.then18:                                        ; preds = %if.end12
  %14 = load i32, ptr %val.addr, align 4, !dbg !314
  %and19 = and i32 %14, 65280, !dbg !317
  %tobool20 = icmp ne i32 %and19, 0, !dbg !317
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !318

if.then21:                                        ; preds = %if.then18
  %15 = load ptr, ptr %lock.addr, align 8, !dbg !319
  call void @clear_pending(ptr noundef %15) #13, !dbg !320
  br label %if.end22, !dbg !320

if.end22:                                         ; preds = %if.then21, %if.then18
  br label %queue, !dbg !321

if.end23:                                         ; preds = %if.end12
  %16 = load i32, ptr %val.addr, align 4, !dbg !322
  %and24 = and i32 %16, 255, !dbg !323
  %tobool25 = icmp ne i32 %and24, 0, !dbg !323
  br i1 %tobool25, label %if.then26, label %if.end52, !dbg !324

if.then26:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 1, ptr %_val) #12, !dbg !325
  call void @llvm.dbg.declare(metadata ptr %_val, metadata !212, metadata !DIExpression()), !dbg !325
  call void @llvm.lifetime.start.p0(i64 8, ptr %__PTR27) #12, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %__PTR27, metadata !215, metadata !DIExpression()), !dbg !326
  %17 = load ptr, ptr %lock.addr, align 8, !dbg !326
  %18 = getelementptr inbounds %struct.qspinlock, ptr %17, i32 0, i32 0, !dbg !326
  %locked = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 0, !dbg !326
  store ptr %locked, ptr %__PTR27, align 8, !dbg !326
  call void @llvm.lifetime.start.p0(i64 1, ptr %VAL28) #12, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %VAL28, metadata !218, metadata !DIExpression()), !dbg !326
  br label %for.cond29, !dbg !326

for.cond29:                                       ; preds = %if.end36, %if.then26
  br label %do.body30, !dbg !327

do.body30:                                        ; preds = %for.cond29
  br label %do.cond31, !dbg !332

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !332

do.end32:                                         ; preds = %do.cond31
  %19 = load ptr, ptr %__PTR27, align 8, !dbg !327
  %20 = load volatile i8, ptr %19, align 1, !dbg !327
  store i8 %20, ptr %tmp33, align 1, !dbg !332
  %21 = load i8, ptr %tmp33, align 1, !dbg !327
  store i8 %21, ptr %VAL28, align 1, !dbg !334
  %22 = load i8, ptr %VAL28, align 1, !dbg !335
  %tobool34 = icmp ne i8 %22, 0, !dbg !335
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !334

if.then35:                                        ; preds = %do.end32
  br label %for.end37, !dbg !335

if.end36:                                         ; preds = %do.end32
  call void @cpu_relax() #13, !dbg !334
  br label %for.cond29, !dbg !337, !llvm.loop !338

for.end37:                                        ; preds = %if.then35
  %23 = load i8, ptr %VAL28, align 1, !dbg !326
  store i8 %23, ptr %tmp38, align 1, !dbg !339
  call void @llvm.lifetime.end.p0(i64 1, ptr %VAL28) #12, !dbg !325
  call void @llvm.lifetime.end.p0(i64 8, ptr %__PTR27) #12, !dbg !325
  %24 = load i8, ptr %tmp38, align 1, !dbg !326
  store i8 %24, ptr %_val, align 1, !dbg !325
  br label %do.body39, !dbg !325

do.body39:                                        ; preds = %for.end37
  br label %do.body40, !dbg !340

do.body40:                                        ; preds = %do.body39
  br label %do.cond41, !dbg !342

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !342

do.end42:                                         ; preds = %do.cond41
  br label %do.body43, !dbg !340

do.body43:                                        ; preds = %do.end42
  br label %do.body44, !dbg !344

do.body44:                                        ; preds = %do.body43
  br label %do.cond45, !dbg !346

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !346

do.end46:                                         ; preds = %do.cond45
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !344, !srcloc !348
  br label %do.cond47, !dbg !344

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !344

do.end48:                                         ; preds = %do.cond47
  br label %do.cond49, !dbg !340

do.cond49:                                        ; preds = %do.end48
  br label %do.end50, !dbg !340

do.end50:                                         ; preds = %do.cond49
  %25 = load i8, ptr %_val, align 1, !dbg !325
  store i8 %25, ptr %tmp51, align 1, !dbg !340
  call void @llvm.lifetime.end.p0(i64 1, ptr %_val) #12, !dbg !349
  %26 = load i8, ptr %tmp51, align 1, !dbg !325
  br label %if.end52, !dbg !349

if.end52:                                         ; preds = %do.end50, %if.end23
  %27 = load ptr, ptr %lock.addr, align 8, !dbg !350
  call void @clear_pending_set_locked(ptr noundef %27) #13, !dbg !351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !352

queue:                                            ; preds = %if.end22, %if.then11
  call void @llvm.dbg.label(metadata !219), !dbg !353
  br label %pv_queue, !dbg !352

pv_queue:                                         ; preds = %queue
  call void @llvm.dbg.label(metadata !220), !dbg !354
  br label %do.body53, !dbg !355

do.body53:                                        ; preds = %pv_queue
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !221, metadata !DIExpression()), !dbg !356
  store ptr null, ptr %__vpp_verify, align 8, !dbg !356
  %28 = load ptr, ptr %__vpp_verify, align 8, !dbg !356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !355
  br label %do.cond54, !dbg !356

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !356

do.end55:                                         ; preds = %do.cond54
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !224, metadata !DIExpression()), !dbg !357
  %29 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @qnodes) #14, !dbg !357, !srcloc !358
  store i64 %29, ptr %tcp_ptr__, align 8, !dbg !357
  %30 = load i64, ptr %tcp_ptr__, align 8, !dbg !357
  %31 = inttoptr i64 %30 to ptr, !dbg !357
  store ptr %31, ptr %tmp57, align 8, !dbg !357
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !355
  %32 = load ptr, ptr %tmp57, align 8, !dbg !357
  store ptr %32, ptr %tmp56, align 8, !dbg !356
  %33 = load ptr, ptr %tmp56, align 8, !dbg !355
  store ptr %33, ptr %node, align 8, !dbg !359
  %34 = load ptr, ptr %node, align 8, !dbg !360
  %count = getelementptr inbounds %struct.mcs_spinlock, ptr %34, i32 0, i32 2, !dbg !361
  %35 = load i32, ptr %count, align 4, !dbg !362
  %inc = add i32 %35, 1, !dbg !362
  store i32 %inc, ptr %count, align 4, !dbg !362
  store i32 %35, ptr %idx, align 4, !dbg !363
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !364
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !365
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !226, metadata !DIExpression()), !dbg !365
  br label %do.body59, !dbg !365

do.body59:                                        ; preds = %do.end55
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify60) #12, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify60, metadata !229, metadata !DIExpression()), !dbg !366
  store ptr null, ptr %__vpp_verify60, align 8, !dbg !366
  %36 = load ptr, ptr %__vpp_verify60, align 8, !dbg !366
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify60) #12, !dbg !365
  br label %do.cond61, !dbg !366

do.cond61:                                        ; preds = %do.body59
  br label %do.end62, !dbg !366

do.end62:                                         ; preds = %do.cond61
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !367
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !231, metadata !DIExpression()), !dbg !367
  %37 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !367, !srcloc !368
  store i32 %37, ptr %pfo_val__, align 4, !dbg !367
  %38 = load i32, ptr %pfo_val__, align 4, !dbg !367
  %conv64 = zext i32 %38 to i64, !dbg !367
  %conv65 = trunc i64 %conv64 to i32, !dbg !367
  store i32 %conv65, ptr %tmp63, align 4, !dbg !367
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !365
  %39 = load i32, ptr %tmp63, align 4, !dbg !367
  store i32 %39, ptr %pscr_ret__, align 4, !dbg !365
  %40 = load i32, ptr %pscr_ret__, align 4, !dbg !365
  store i32 %40, ptr %tmp66, align 4, !dbg !365
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !364
  %41 = load i32, ptr %tmp66, align 4, !dbg !365
  store i32 %41, ptr %tmp58, align 4, !dbg !364
  %42 = load i32, ptr %tmp58, align 4, !dbg !364
  %43 = load i32, ptr %idx, align 4, !dbg !369
  %call67 = call i32 @encode_tail(i32 noundef %42, i32 noundef %43) #15, !dbg !370
  store i32 %call67, ptr %tail, align 4, !dbg !371
  %44 = load ptr, ptr %lock.addr, align 8, !dbg !372
  call void @trace_contention_begin(ptr noundef %44, i32 noundef 1) #13, !dbg !373
  %45 = load i32, ptr %idx, align 4, !dbg !374
  %cmp68 = icmp sge i32 %45, 4, !dbg !374
  %lnot70 = xor i1 %cmp68, true, !dbg !374
  %lnot72 = xor i1 %lnot70, true, !dbg !374
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !374
  %conv74 = sext i32 %lnot.ext73 to i64, !dbg !374
  %expval75 = call i64 @llvm.expect.i64(i64 %conv74, i64 0), !dbg !374
  %tobool76 = icmp ne i64 %expval75, 0, !dbg !374
  br i1 %tobool76, label %if.then77, label %if.end82, !dbg !376

if.then77:                                        ; preds = %do.end62
  br label %while.cond, !dbg !377

while.cond:                                       ; preds = %while.body, %if.then77
  %46 = load ptr, ptr %lock.addr, align 8, !dbg !379
  %call78 = call i32 @queued_spin_trylock(ptr noundef %46) #13, !dbg !380
  %tobool79 = icmp ne i32 %call78, 0, !dbg !381
  %lnot80 = xor i1 %tobool79, true, !dbg !381
  br i1 %lnot80, label %while.body, label %while.end, !dbg !377

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #13, !dbg !382
  br label %while.cond, !dbg !377, !llvm.loop !383

while.end:                                        ; preds = %while.cond
  br label %release, !dbg !386

if.end82:                                         ; preds = %do.end62
  %47 = load ptr, ptr %node, align 8, !dbg !387
  %48 = load i32, ptr %idx, align 4, !dbg !388
  %call83 = call ptr @grab_mcs_node(ptr noundef %47, i32 noundef %48) #15, !dbg !389
  store ptr %call83, ptr %node, align 8, !dbg !390
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !391, !srcloc !392
  %49 = load ptr, ptr %node, align 8, !dbg !393
  %locked84 = getelementptr inbounds %struct.mcs_spinlock, ptr %49, i32 0, i32 1, !dbg !394
  store i32 0, ptr %locked84, align 8, !dbg !395
  %50 = load ptr, ptr %node, align 8, !dbg !396
  %next85 = getelementptr inbounds %struct.mcs_spinlock, ptr %50, i32 0, i32 0, !dbg !397
  store ptr null, ptr %next85, align 8, !dbg !398
  %51 = load ptr, ptr %node, align 8, !dbg !399
  call void @__pv_init_node(ptr noundef %51) #13, !dbg !400
  %52 = load ptr, ptr %lock.addr, align 8, !dbg !401
  %call86 = call i32 @queued_spin_trylock(ptr noundef %52) #13, !dbg !403
  %tobool87 = icmp ne i32 %call86, 0, !dbg !403
  br i1 %tobool87, label %if.then88, label %if.end89, !dbg !404

if.then88:                                        ; preds = %if.end82
  br label %release, !dbg !405

if.end89:                                         ; preds = %if.end82
  br label %do.body90, !dbg !406

do.body90:                                        ; preds = %if.end89
  br label %do.body91, !dbg !407

do.body91:                                        ; preds = %do.body90
  br label %do.cond92, !dbg !409

do.cond92:                                        ; preds = %do.body91
  br label %do.end93, !dbg !409

do.end93:                                         ; preds = %do.cond92
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !407, !srcloc !411
  br label %do.cond94, !dbg !407

do.cond94:                                        ; preds = %do.end93
  br label %do.end95, !dbg !407

do.end95:                                         ; preds = %do.cond94
  %53 = load ptr, ptr %lock.addr, align 8, !dbg !412
  %54 = load i32, ptr %tail, align 4, !dbg !413
  %call96 = call i32 @xchg_tail(ptr noundef %53, i32 noundef %54) #13, !dbg !414
  store i32 %call96, ptr %old, align 4, !dbg !415
  store ptr null, ptr %next, align 8, !dbg !416
  %55 = load i32, ptr %old, align 4, !dbg !417
  %and97 = and i32 %55, -65536, !dbg !418
  %tobool98 = icmp ne i32 %and97, 0, !dbg !418
  br i1 %tobool98, label %if.then99, label %if.end149, !dbg !419

if.then99:                                        ; preds = %do.end95
  %56 = load i32, ptr %old, align 4, !dbg !420
  %call100 = call ptr @decode_tail(i32 noundef %56) #15, !dbg !421
  store ptr %call100, ptr %prev, align 8, !dbg !422
  br label %do.body101, !dbg !423

do.body101:                                       ; preds = %if.then99
  br label %do.body102, !dbg !424

do.body102:                                       ; preds = %do.body101
  br label %do.cond103, !dbg !426

do.cond103:                                       ; preds = %do.body102
  br label %do.end104, !dbg !426

do.end104:                                        ; preds = %do.cond103
  br label %do.body105, !dbg !424

do.body105:                                       ; preds = %do.end104
  %57 = load ptr, ptr %node, align 8, !dbg !428
  %58 = load ptr, ptr %prev, align 8, !dbg !428
  %next106 = getelementptr inbounds %struct.mcs_spinlock, ptr %58, i32 0, i32 0, !dbg !428
  store volatile ptr %57, ptr %next106, align 8, !dbg !428
  br label %do.cond107, !dbg !428

do.cond107:                                       ; preds = %do.body105
  br label %do.end108, !dbg !428

do.end108:                                        ; preds = %do.cond107
  br label %do.cond109, !dbg !424

do.cond109:                                       ; preds = %do.end108
  br label %do.end110, !dbg !424

do.end110:                                        ; preds = %do.cond109
  %59 = load ptr, ptr %node, align 8, !dbg !430
  %60 = load ptr, ptr %prev, align 8, !dbg !431
  call void @__pv_wait_node(ptr noundef %59, ptr noundef %60) #13, !dbg !432
  br label %do.body111, !dbg !433

do.body111:                                       ; preds = %do.end110
  call void @llvm.lifetime.start.p0(i64 4, ptr %_val112) #12, !dbg !434
  call void @llvm.dbg.declare(metadata ptr %_val112, metadata !233, metadata !DIExpression()), !dbg !434
  call void @llvm.lifetime.start.p0(i64 8, ptr %__PTR113) #12, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %__PTR113, metadata !238, metadata !DIExpression()), !dbg !435
  %61 = load ptr, ptr %node, align 8, !dbg !435
  %locked114 = getelementptr inbounds %struct.mcs_spinlock, ptr %61, i32 0, i32 1, !dbg !435
  store ptr %locked114, ptr %__PTR113, align 8, !dbg !435
  call void @llvm.lifetime.start.p0(i64 4, ptr %VAL115) #12, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %VAL115, metadata !240, metadata !DIExpression()), !dbg !435
  br label %for.cond116, !dbg !435

for.cond116:                                      ; preds = %if.end123, %do.body111
  br label %do.body117, !dbg !436

do.body117:                                       ; preds = %for.cond116
  br label %do.cond118, !dbg !441

do.cond118:                                       ; preds = %do.body117
  br label %do.end119, !dbg !441

do.end119:                                        ; preds = %do.cond118
  %62 = load ptr, ptr %__PTR113, align 8, !dbg !436
  %63 = load volatile i32, ptr %62, align 4, !dbg !436
  store i32 %63, ptr %tmp120, align 4, !dbg !441
  %64 = load i32, ptr %tmp120, align 4, !dbg !436
  store i32 %64, ptr %VAL115, align 4, !dbg !443
  %65 = load i32, ptr %VAL115, align 4, !dbg !444
  %tobool121 = icmp ne i32 %65, 0, !dbg !444
  br i1 %tobool121, label %if.then122, label %if.end123, !dbg !443

if.then122:                                       ; preds = %do.end119
  br label %for.end124, !dbg !444

if.end123:                                        ; preds = %do.end119
  call void @cpu_relax() #13, !dbg !443
  br label %for.cond116, !dbg !446, !llvm.loop !447

for.end124:                                       ; preds = %if.then122
  %66 = load i32, ptr %VAL115, align 4, !dbg !435
  store i32 %66, ptr %tmp125, align 4, !dbg !448
  call void @llvm.lifetime.end.p0(i64 4, ptr %VAL115) #12, !dbg !434
  call void @llvm.lifetime.end.p0(i64 8, ptr %__PTR113) #12, !dbg !434
  %67 = load i32, ptr %tmp125, align 4, !dbg !435
  store i32 %67, ptr %_val112, align 4, !dbg !434
  br label %do.body126, !dbg !434

do.body126:                                       ; preds = %for.end124
  br label %do.body127, !dbg !449

do.body127:                                       ; preds = %do.body126
  br label %do.cond128, !dbg !451

do.cond128:                                       ; preds = %do.body127
  br label %do.end129, !dbg !451

do.end129:                                        ; preds = %do.cond128
  br label %do.body130, !dbg !449

do.body130:                                       ; preds = %do.end129
  br label %do.body131, !dbg !453

do.body131:                                       ; preds = %do.body130
  br label %do.cond132, !dbg !455

do.cond132:                                       ; preds = %do.body131
  br label %do.end133, !dbg !455

do.end133:                                        ; preds = %do.cond132
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !453, !srcloc !457
  br label %do.cond134, !dbg !453

do.cond134:                                       ; preds = %do.end133
  br label %do.end135, !dbg !453

do.end135:                                        ; preds = %do.cond134
  br label %do.cond136, !dbg !449

do.cond136:                                       ; preds = %do.end135
  br label %do.end137, !dbg !449

do.end137:                                        ; preds = %do.cond136
  %68 = load i32, ptr %_val112, align 4, !dbg !434
  store i32 %68, ptr %tmp138, align 4, !dbg !449
  call void @llvm.lifetime.end.p0(i64 4, ptr %_val112) #12, !dbg !458
  %69 = load i32, ptr %tmp138, align 4, !dbg !434
  br label %do.cond139, !dbg !458

do.cond139:                                       ; preds = %do.end137
  br label %do.end140, !dbg !458

do.end140:                                        ; preds = %do.cond139
  br label %do.body141, !dbg !459

do.body141:                                       ; preds = %do.end140
  br label %do.cond142, !dbg !461

do.cond142:                                       ; preds = %do.body141
  br label %do.end143, !dbg !461

do.end143:                                        ; preds = %do.cond142
  %70 = load ptr, ptr %node, align 8, !dbg !459
  %next145 = getelementptr inbounds %struct.mcs_spinlock, ptr %70, i32 0, i32 0, !dbg !459
  %71 = load volatile ptr, ptr %next145, align 8, !dbg !459
  store ptr %71, ptr %tmp144, align 8, !dbg !461
  %72 = load ptr, ptr %tmp144, align 8, !dbg !459
  store ptr %72, ptr %next, align 8, !dbg !463
  %73 = load ptr, ptr %next, align 8, !dbg !464
  %tobool146 = icmp ne ptr %73, null, !dbg !464
  br i1 %tobool146, label %if.then147, label %if.end148, !dbg !466

if.then147:                                       ; preds = %do.end143
  %74 = load ptr, ptr %next, align 8, !dbg !467
  call void @prefetchw(ptr noundef %74) #13, !dbg !468
  br label %if.end148, !dbg !468

if.end148:                                        ; preds = %if.then147, %do.end143
  br label %if.end149, !dbg !469

if.end149:                                        ; preds = %if.end148, %do.end95
  %75 = load ptr, ptr %lock.addr, align 8, !dbg !470
  %76 = load ptr, ptr %node, align 8, !dbg !472
  %call150 = call i32 @__pv_wait_head_or_lock(ptr noundef %75, ptr noundef %76) #13, !dbg !473
  store i32 %call150, ptr %val.addr, align 4, !dbg !474
  %tobool151 = icmp ne i32 %call150, 0, !dbg !474
  br i1 %tobool151, label %if.then152, label %if.end153, !dbg !475

if.then152:                                       ; preds = %if.end149
  br label %locked182, !dbg !476

if.end153:                                        ; preds = %if.end149
  call void @llvm.lifetime.start.p0(i64 4, ptr %_val154) #12, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %_val154, metadata !241, metadata !DIExpression()), !dbg !477
  call void @llvm.lifetime.start.p0(i64 8, ptr %__PTR155) #12, !dbg !478
  call void @llvm.dbg.declare(metadata ptr %__PTR155, metadata !243, metadata !DIExpression()), !dbg !478
  %77 = load ptr, ptr %lock.addr, align 8, !dbg !478
  %78 = getelementptr inbounds %struct.qspinlock, ptr %77, i32 0, i32 0, !dbg !478
  %counter156 = getelementptr inbounds %struct.atomic_t, ptr %78, i32 0, i32 0, !dbg !478
  store ptr %counter156, ptr %__PTR155, align 8, !dbg !478
  call void @llvm.lifetime.start.p0(i64 4, ptr %VAL157) #12, !dbg !478
  call void @llvm.dbg.declare(metadata ptr %VAL157, metadata !245, metadata !DIExpression()), !dbg !478
  br label %for.cond158, !dbg !478

for.cond158:                                      ; preds = %if.end166, %if.end153
  br label %do.body159, !dbg !479

do.body159:                                       ; preds = %for.cond158
  br label %do.cond160, !dbg !484

do.cond160:                                       ; preds = %do.body159
  br label %do.end161, !dbg !484

do.end161:                                        ; preds = %do.cond160
  %79 = load ptr, ptr %__PTR155, align 8, !dbg !479
  %80 = load volatile i32, ptr %79, align 4, !dbg !479
  store i32 %80, ptr %tmp162, align 4, !dbg !484
  %81 = load i32, ptr %tmp162, align 4, !dbg !479
  store i32 %81, ptr %VAL157, align 4, !dbg !486
  %82 = load i32, ptr %VAL157, align 4, !dbg !487
  %and163 = and i32 %82, 65535, !dbg !487
  %tobool164 = icmp ne i32 %and163, 0, !dbg !487
  br i1 %tobool164, label %if.end166, label %if.then165, !dbg !486

if.then165:                                       ; preds = %do.end161
  br label %for.end167, !dbg !487

if.end166:                                        ; preds = %do.end161
  call void @cpu_relax() #13, !dbg !486
  br label %for.cond158, !dbg !489, !llvm.loop !490

for.end167:                                       ; preds = %if.then165
  %83 = load i32, ptr %VAL157, align 4, !dbg !478
  store i32 %83, ptr %tmp168, align 4, !dbg !491
  call void @llvm.lifetime.end.p0(i64 4, ptr %VAL157) #12, !dbg !477
  call void @llvm.lifetime.end.p0(i64 8, ptr %__PTR155) #12, !dbg !477
  %84 = load i32, ptr %tmp168, align 4, !dbg !478
  store i32 %84, ptr %_val154, align 4, !dbg !477
  br label %do.body169, !dbg !477

do.body169:                                       ; preds = %for.end167
  br label %do.body170, !dbg !492

do.body170:                                       ; preds = %do.body169
  br label %do.cond171, !dbg !494

do.cond171:                                       ; preds = %do.body170
  br label %do.end172, !dbg !494

do.end172:                                        ; preds = %do.cond171
  br label %do.body173, !dbg !492

do.body173:                                       ; preds = %do.end172
  br label %do.body174, !dbg !496

do.body174:                                       ; preds = %do.body173
  br label %do.cond175, !dbg !498

do.cond175:                                       ; preds = %do.body174
  br label %do.end176, !dbg !498

do.end176:                                        ; preds = %do.cond175
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !496, !srcloc !500
  br label %do.cond177, !dbg !496

do.cond177:                                       ; preds = %do.end176
  br label %do.end178, !dbg !496

do.end178:                                        ; preds = %do.cond177
  br label %do.cond179, !dbg !492

do.cond179:                                       ; preds = %do.end178
  br label %do.end180, !dbg !492

do.end180:                                        ; preds = %do.cond179
  %85 = load i32, ptr %_val154, align 4, !dbg !477
  store i32 %85, ptr %tmp181, align 4, !dbg !492
  call void @llvm.lifetime.end.p0(i64 4, ptr %_val154) #12, !dbg !501
  %86 = load i32, ptr %tmp181, align 4, !dbg !477
  store i32 %86, ptr %val.addr, align 4, !dbg !502
  br label %locked182, !dbg !503

locked182:                                        ; preds = %do.end180, %if.then152
  call void @llvm.dbg.label(metadata !246), !dbg !504
  %87 = load i32, ptr %val.addr, align 4, !dbg !505
  %and183 = and i32 %87, -65536, !dbg !507
  %88 = load i32, ptr %tail, align 4, !dbg !508
  %cmp184 = icmp eq i32 %and183, %88, !dbg !509
  br i1 %cmp184, label %if.then186, label %if.end190, !dbg !510

if.then186:                                       ; preds = %locked182
  %89 = load ptr, ptr %lock.addr, align 8, !dbg !511
  %90 = getelementptr inbounds %struct.qspinlock, ptr %89, i32 0, i32 0, !dbg !514
  %call187 = call zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %90, ptr noundef %val.addr, i32 noundef 1) #13, !dbg !515
  br i1 %call187, label %if.then188, label %if.end189, !dbg !516

if.then188:                                       ; preds = %if.then186
  br label %release, !dbg !517

if.end189:                                        ; preds = %if.then186
  br label %if.end190, !dbg !518

if.end190:                                        ; preds = %if.end189, %locked182
  %91 = load ptr, ptr %lock.addr, align 8, !dbg !519
  call void @set_locked(ptr noundef %91) #13, !dbg !520
  %92 = load ptr, ptr %next, align 8, !dbg !521
  %tobool191 = icmp ne ptr %92, null, !dbg !521
  br i1 %tobool191, label %if.end206, label %if.then192, !dbg !522

if.then192:                                       ; preds = %if.end190
  call void @llvm.lifetime.start.p0(i64 8, ptr %__PTR193) #12, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %__PTR193, metadata !247, metadata !DIExpression()), !dbg !523
  %93 = load ptr, ptr %node, align 8, !dbg !523
  %next194 = getelementptr inbounds %struct.mcs_spinlock, ptr %93, i32 0, i32 0, !dbg !523
  store ptr %next194, ptr %__PTR193, align 8, !dbg !523
  call void @llvm.lifetime.start.p0(i64 8, ptr %VAL195) #12, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %VAL195, metadata !251, metadata !DIExpression()), !dbg !523
  br label %for.cond196, !dbg !523

for.cond196:                                      ; preds = %if.end203, %if.then192
  br label %do.body197, !dbg !524

do.body197:                                       ; preds = %for.cond196
  br label %do.cond198, !dbg !529

do.cond198:                                       ; preds = %do.body197
  br label %do.end199, !dbg !529

do.end199:                                        ; preds = %do.cond198
  %94 = load ptr, ptr %__PTR193, align 8, !dbg !524
  %95 = load volatile ptr, ptr %94, align 8, !dbg !524
  store ptr %95, ptr %tmp200, align 8, !dbg !529
  %96 = load ptr, ptr %tmp200, align 8, !dbg !524
  store ptr %96, ptr %VAL195, align 8, !dbg !531
  %97 = load ptr, ptr %VAL195, align 8, !dbg !532
  %tobool201 = icmp ne ptr %97, null, !dbg !532
  br i1 %tobool201, label %if.then202, label %if.end203, !dbg !531

if.then202:                                       ; preds = %do.end199
  br label %for.end204, !dbg !532

if.end203:                                        ; preds = %do.end199
  call void @cpu_relax() #13, !dbg !531
  br label %for.cond196, !dbg !534, !llvm.loop !535

for.end204:                                       ; preds = %if.then202
  %98 = load ptr, ptr %VAL195, align 8, !dbg !523
  store ptr %98, ptr %tmp205, align 8, !dbg !536
  call void @llvm.lifetime.end.p0(i64 8, ptr %VAL195) #12, !dbg !537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__PTR193) #12, !dbg !537
  %99 = load ptr, ptr %tmp205, align 8, !dbg !523
  store ptr %99, ptr %next, align 8, !dbg !538
  br label %if.end206, !dbg !539

if.end206:                                        ; preds = %for.end204, %if.end190
  br label %do.body207, !dbg !540

do.body207:                                       ; preds = %if.end206
  br label %do.body208, !dbg !541

do.body208:                                       ; preds = %do.body207
  br label %do.cond209, !dbg !543

do.cond209:                                       ; preds = %do.body208
  br label %do.end210, !dbg !543

do.end210:                                        ; preds = %do.cond209
  br label %do.body211, !dbg !541

do.body211:                                       ; preds = %do.end210
  br label %do.body212, !dbg !545

do.body212:                                       ; preds = %do.body211
  br label %do.cond213, !dbg !547

do.cond213:                                       ; preds = %do.body212
  br label %do.end214, !dbg !547

do.end214:                                        ; preds = %do.cond213
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !545, !srcloc !549
  br label %do.body215, !dbg !545

do.body215:                                       ; preds = %do.end214
  br label %do.body216, !dbg !550

do.body216:                                       ; preds = %do.body215
  br label %do.cond217, !dbg !552

do.cond217:                                       ; preds = %do.body216
  br label %do.end218, !dbg !552

do.end218:                                        ; preds = %do.cond217
  br label %do.body219, !dbg !550

do.body219:                                       ; preds = %do.end218
  %100 = load ptr, ptr %next, align 8, !dbg !554
  %locked220 = getelementptr inbounds %struct.mcs_spinlock, ptr %100, i32 0, i32 1, !dbg !554
  store volatile i32 1, ptr %locked220, align 8, !dbg !554
  br label %do.cond221, !dbg !554

do.cond221:                                       ; preds = %do.body219
  br label %do.end222, !dbg !554

do.end222:                                        ; preds = %do.cond221
  br label %do.cond223, !dbg !550

do.cond223:                                       ; preds = %do.end222
  br label %do.end224, !dbg !550

do.end224:                                        ; preds = %do.cond223
  br label %do.cond225, !dbg !545

do.cond225:                                       ; preds = %do.end224
  br label %do.end226, !dbg !545

do.end226:                                        ; preds = %do.cond225
  br label %do.cond227, !dbg !541

do.cond227:                                       ; preds = %do.end226
  br label %do.end228, !dbg !541

do.end228:                                        ; preds = %do.cond227
  %101 = load ptr, ptr %lock.addr, align 8, !dbg !556
  %102 = load ptr, ptr %next, align 8, !dbg !557
  call void @__pv_kick_node(ptr noundef %101, ptr noundef %102) #13, !dbg !558
  br label %release, !dbg !558

release:                                          ; preds = %do.end228, %if.then188, %if.then88, %while.end
  call void @llvm.dbg.label(metadata !252), !dbg !559
  %103 = load ptr, ptr %lock.addr, align 8, !dbg !560
  call void @trace_contention_end(ptr noundef %103, i32 noundef 0) #13, !dbg !561
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #13, !dbg !562
  br label %do.body229, !dbg !562

do.body229:                                       ; preds = %release
  br label %do.body230, !dbg !563

do.body230:                                       ; preds = %do.body229
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify231) #12, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify231, metadata !253, metadata !DIExpression()), !dbg !564
  store ptr null, ptr %__vpp_verify231, align 8, !dbg !564
  %104 = load ptr, ptr %__vpp_verify231, align 8, !dbg !564
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify231) #12, !dbg !563
  br label %do.cond232, !dbg !564

do.cond232:                                       ; preds = %do.body230
  br label %do.end233, !dbg !564

do.end233:                                        ; preds = %do.cond232
  br label %do.body234, !dbg !563

do.body234:                                       ; preds = %do.end233
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !565
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !257, metadata !DIExpression()), !dbg !565
  store i32 -1, ptr %pao_ID__, align 4, !dbg !565
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.mcs_spinlock, ptr @qnodes, i32 0, i32 2), ptr elementtype(i32) getelementptr inbounds (%struct.mcs_spinlock, ptr @qnodes, i32 0, i32 2)) #12, !dbg !566, !srcloc !570
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !563
  br label %do.cond235, !dbg !565

do.cond235:                                       ; preds = %do.body234
  br label %do.end236, !dbg !565

do.end236:                                        ; preds = %do.cond235
  br label %do.cond237, !dbg !563

do.cond237:                                       ; preds = %do.end236
  br label %do.end238, !dbg !563

do.end238:                                        ; preds = %do.cond237
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !571
  br label %cleanup, !dbg !571

cleanup:                                          ; preds = %do.end238, %if.end52, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #12, !dbg !571
  call void @llvm.lifetime.end.p0(i64 4, ptr %tail) #12, !dbg !571
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #12, !dbg !571
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #12, !dbg !571
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #12, !dbg !571
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #12, !dbg !571
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !571

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @virt_spin_lock(ptr noundef %lock) #3 align 16 !dbg !572 {
entry:
  %retval = alloca i1, align 1
  %lock.addr = alloca ptr, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !579, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #12, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !580, metadata !DIExpression()), !dbg !584
  %call = call zeroext i1 @arch_static_branch_jump(ptr noundef @virt_spin_lock_key, i1 noundef zeroext true) #13, !dbg !585
  %lnot = xor i1 %call, true, !dbg !585
  %frombool = zext i1 %lnot to i8, !dbg !585
  store i8 %frombool, ptr %branch, align 1, !dbg !585
  %0 = load i8, ptr %branch, align 1, !dbg !584, !range !588, !noundef !589
  %tobool = trunc i8 %0 to i1, !dbg !584
  %lnot1 = xor i1 %tobool, true, !dbg !584
  %lnot2 = xor i1 %lnot1, true, !dbg !584
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !584
  %conv = sext i32 %lnot.ext to i64, !dbg !584
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !584
  store i64 %expval, ptr %tmp, align 8, !dbg !590
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #12, !dbg !591
  %1 = load i64, ptr %tmp, align 8, !dbg !584
  %tobool3 = icmp ne i64 %1, 0, !dbg !591
  br i1 %tobool3, label %if.end, label %if.then, !dbg !592

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !593
  br label %return, !dbg !593

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !594

do.body:                                          ; preds = %do.cond, %if.end
  br label %while.cond, !dbg !595

while.cond:                                       ; preds = %while.body, %do.body
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !597
  %3 = getelementptr inbounds %struct.qspinlock, ptr %2, i32 0, i32 0, !dbg !598
  %call4 = call i32 @atomic_read(ptr noundef %3) #13, !dbg !599
  %cmp = icmp ne i32 %call4, 0, !dbg !600
  br i1 %cmp, label %while.body, label %while.end, !dbg !595

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #13, !dbg !601
  br label %while.cond, !dbg !595, !llvm.loop !602

while.end:                                        ; preds = %while.cond
  br label %do.cond, !dbg !604

do.cond:                                          ; preds = %while.end
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !605
  %5 = getelementptr inbounds %struct.qspinlock, ptr %4, i32 0, i32 0, !dbg !606
  %call6 = call i32 @atomic_cmpxchg(ptr noundef %5, i32 noundef 0, i32 noundef 1) #13, !dbg !607
  %cmp7 = icmp ne i32 %call6, 0, !dbg !608
  br i1 %cmp7, label %do.body, label %do.end, !dbg !604, !llvm.loop !609

do.end:                                           ; preds = %do.cond
  store i1 true, ptr %retval, align 1, !dbg !611
  br label %return, !dbg !611

return:                                           ; preds = %do.end, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !612
  ret i1 %6, !dbg !612
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #4 align 16 !dbg !613 {
entry:
  call void @rep_nop() #13, !dbg !617
  ret void, !dbg !618
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_fetch_set_pending_acquire(ptr noundef %lock) #4 align 16 !dbg !619 {
entry:
  %lock.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !623, metadata !DIExpression()), !dbg !627
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #12, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %val, metadata !624, metadata !DIExpression()), !dbg !629
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !630
  call void @llvm.dbg.declare(metadata ptr %c, metadata !625, metadata !DIExpression()), !dbg !630
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !630
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !630
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !630
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; btsl $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},I,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 8, ptr elementtype(i32) %counter) #12, !dbg !630, !srcloc !631
  %3 = icmp ult i8 %2, 2, !dbg !630
  call void @llvm.assume(i1 %3), !dbg !630
  store i8 %2, ptr %c, align 1, !dbg !630
  %4 = load i8, ptr %c, align 1, !dbg !630, !range !588, !noundef !589
  %tobool = trunc i8 %4 to i1, !dbg !630
  %frombool = zext i1 %tobool to i8, !dbg !630
  store i8 %frombool, ptr %tmp, align 1, !dbg !630
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !632
  %5 = load i8, ptr %tmp, align 1, !dbg !630, !range !588, !noundef !589
  %tobool1 = trunc i8 %5 to i1, !dbg !630
  %conv = zext i1 %tobool1 to i32, !dbg !632
  %mul = mul i32 %conv, 256, !dbg !633
  store i32 %mul, ptr %val, align 4, !dbg !634
  %6 = load ptr, ptr %lock.addr, align 8, !dbg !635
  %7 = getelementptr inbounds %struct.qspinlock, ptr %6, i32 0, i32 0, !dbg !636
  %call = call i32 @atomic_read(ptr noundef %7) #13, !dbg !637
  %and = and i32 %call, -65281, !dbg !638
  %8 = load i32, ptr %val, align 4, !dbg !639
  %or = or i32 %8, %and, !dbg !639
  store i32 %or, ptr %val, align 4, !dbg !639
  %9 = load i32, ptr %val, align 4, !dbg !640
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #12, !dbg !641
  ret i32 %9, !dbg !642
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_pending(ptr noundef %lock) #4 align 16 !dbg !643 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !647, metadata !DIExpression()), !dbg !648
  br label %do.body, !dbg !649

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !650

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !652

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !650

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !654
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !654
  %pending = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1, !dbg !654
  store volatile i8 0, ptr %pending, align 1, !dbg !654
  br label %do.end3, !dbg !654

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !650

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !656
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_pending_set_locked(ptr noundef %lock) #4 align 16 !dbg !657 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !659, metadata !DIExpression()), !dbg !660
  br label %do.body, !dbg !661

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !662

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !664

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !662

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !666
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !666
  %locked_pending = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 0, !dbg !666
  store volatile i16 1, ptr %locked_pending, align 4, !dbg !666
  br label %do.end3, !dbg !666

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !662

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !668
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read)
define internal i32 @encode_tail(i32 noundef %cpu, i32 noundef %idx) #6 align 16 !dbg !669 {
entry:
  %cpu.addr = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  %tail = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !673, metadata !DIExpression()), !dbg !676
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !674, metadata !DIExpression()), !dbg !677
  call void @llvm.lifetime.start.p0(i64 4, ptr %tail) #12, !dbg !678
  call void @llvm.dbg.declare(metadata ptr %tail, metadata !675, metadata !DIExpression()), !dbg !679
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !680
  %add = add i32 %0, 1, !dbg !681
  %shl = shl i32 %add, 18, !dbg !682
  store i32 %shl, ptr %tail, align 4, !dbg !683
  %1 = load i32, ptr %idx.addr, align 4, !dbg !684
  %shl1 = shl i32 %1, 16, !dbg !685
  %2 = load i32, ptr %tail, align 4, !dbg !686
  %or = or i32 %2, %shl1, !dbg !686
  store i32 %or, ptr %tail, align 4, !dbg !686
  %3 = load i32, ptr %tail, align 4, !dbg !687
  call void @llvm.lifetime.end.p0(i64 4, ptr %tail) #12, !dbg !688
  ret i32 %3, !dbg !689
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #4 align 16 !dbg !690 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !695, metadata !DIExpression()), !dbg !696
  ret void, !dbg !697
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_contention_begin(ptr noundef %lock, i32 noundef %flags) #3 align 16 !dbg !98 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
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
  %__UNIQUE_ID_rcu203 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !102, metadata !DIExpression()), !dbg !698
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !103, metadata !DIExpression()), !dbg !698
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_begin, i32 0, i32 1)) #13, !dbg !699
  br i1 %call, label %if.then, label %if.end68, !dbg !698

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !699

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !104, metadata !DIExpression()), !dbg !700
  store i32 0, ptr %__idx, align 4, !dbg !700
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !701
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !107, metadata !DIExpression()), !dbg !701
  br label %do.body1, !dbg !701

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !110, metadata !DIExpression()), !dbg !702
  store ptr null, ptr %__vpp_verify, align 8, !dbg !702
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !702
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !701
  br label %do.cond, !dbg !702

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !702

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !703
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !114, metadata !DIExpression()), !dbg !703
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !703, !srcloc !704
  store i32 %1, ptr %pfo_val__, align 4, !dbg !703
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !703
  %conv = zext i32 %2 to i64, !dbg !703
  %conv2 = trunc i64 %conv to i32, !dbg !703
  store i32 %conv2, ptr %tmp, align 4, !dbg !703
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !701
  %3 = load i32, ptr %tmp, align 4, !dbg !703
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !701
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !701
  store i32 %4, ptr %tmp3, align 4, !dbg !701
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !705
  %5 = load i32, ptr %tmp3, align 4, !dbg !701
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !705
  br i1 %call4, label %if.end, label %if.then5, !dbg !700

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !705

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !706
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !116, metadata !DIExpression()), !dbg !706
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !706
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !707
  %tobool = icmp ne i32 %6, 0, !dbg !707
  %lnot = xor i1 %tobool, true, !dbg !707
  %lnot6 = xor i1 %lnot, true, !dbg !707
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !707
  %conv7 = sext i32 %lnot.ext to i64, !dbg !707
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !707
  %tobool8 = icmp ne i64 %expval, 0, !dbg !707
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !706

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !707

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !708
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !119, metadata !DIExpression()), !dbg !708
  store i32 2307, ptr %__flags, align 4, !dbg !708
  br label %do.body11, !dbg !708

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !709

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !709

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !708

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !711
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 120, i32 %7, i64 12) #12, !dbg !711, !srcloc !713
  br label %do.cond15, !dbg !711

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !711

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !708

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !714

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !714

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !707
  br label %do.cond20, !dbg !708

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !708

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !708

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !706
  %tobool24 = icmp ne i32 %8, 0, !dbg !706
  %lnot25 = xor i1 %tobool24, true, !dbg !706
  %lnot27 = xor i1 %lnot25, true, !dbg !706
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !706
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !706
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !706
  store i64 %expval30, ptr %tmp23, align 8, !dbg !707
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !716
  %9 = load i64, ptr %tmp23, align 8, !dbg !706
  %tobool31 = icmp ne i64 %9, 0, !dbg !716
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !700

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !716

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !700

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !717
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !717, !srcloc !719
  br label %do.cond35, !dbg !717

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !717

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !700

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !122, metadata !DIExpression()), !dbg !720
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !124, metadata !DIExpression()), !dbg !720
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu203) #12, !dbg !721
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu203, metadata !125, metadata !DIExpression()), !dbg !721
  br label %do.body38, !dbg !722

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !724

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !724

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_begin, i32 0, i32 8), align 8, !dbg !722
  store ptr %10, ptr %tmp41, align 8, !dbg !724
  %11 = load ptr, ptr %tmp41, align 8, !dbg !722
  store ptr %11, ptr %__UNIQUE_ID_rcu203, align 8, !dbg !721
  %12 = load ptr, ptr %__UNIQUE_ID_rcu203, align 8, !dbg !721
  store ptr %12, ptr %tmp42, align 8, !dbg !721
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu203) #12, !dbg !720
  %13 = load ptr, ptr %tmp42, align 8, !dbg !721
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !720
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !726
  %tobool43 = icmp ne ptr %14, null, !dbg !726
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !720

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !728
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !728
  %16 = load ptr, ptr %data, align 8, !dbg !728
  store ptr %16, ptr %__data, align 8, !dbg !728
  store ptr @__SCT__tp_func_contention_begin, ptr %tmp45, align 8, !dbg !730
  %17 = load ptr, ptr %tmp45, align 8, !dbg !730
  %18 = load ptr, ptr %__data, align 8, !dbg !728
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !728
  %20 = load i32, ptr %flags.addr, align 4, !dbg !728
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #13, !dbg !728
  br label %if.end47, !dbg !728

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !700
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !700
  br label %do.cond48, !dbg !720

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !720

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !700

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !732, !srcloc !734
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !735
  %lnot52 = xor i1 %call51, true, !dbg !735
  %lnot54 = xor i1 %lnot52, true, !dbg !735
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !735
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !735
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !735
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !735
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !732

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !735

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !161), !dbg !737
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #12, !dbg !737, !srcloc !739
  call void @llvm.write_register.i64(metadata !161, i64 %22), !dbg !737
  br label %do.cond61, !dbg !737

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !737

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !737

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !732

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !732

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !699
  br label %cleanup, !dbg !699

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !699
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !700

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !700

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !698

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_trylock(ptr noundef %lock) #4 align 16 !dbg !740 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !745, metadata !DIExpression()), !dbg !747
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #12, !dbg !748
  call void @llvm.dbg.declare(metadata ptr %val, metadata !746, metadata !DIExpression()), !dbg !749
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !750
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !751
  %call = call i32 @atomic_read(ptr noundef %1) #13, !dbg !752
  store i32 %call, ptr %val, align 4, !dbg !749
  %2 = load i32, ptr %val, align 4, !dbg !753
  %tobool = icmp ne i32 %2, 0, !dbg !753
  %lnot = xor i1 %tobool, true, !dbg !753
  %lnot1 = xor i1 %lnot, true, !dbg !753
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !753
  %conv = sext i32 %lnot.ext to i64, !dbg !753
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !753
  %tobool2 = icmp ne i64 %expval, 0, !dbg !753
  br i1 %tobool2, label %if.then, label %if.end, !dbg !755

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !756
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !756

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !757
  %4 = getelementptr inbounds %struct.qspinlock, ptr %3, i32 0, i32 0, !dbg !757
  %call3 = call zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %4, ptr noundef %val, i32 noundef 1) #13, !dbg !757
  %lnot4 = xor i1 %call3, true, !dbg !757
  %lnot6 = xor i1 %lnot4, true, !dbg !757
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !757
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !757
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !757
  %conv10 = trunc i64 %expval9 to i32, !dbg !757
  store i32 %conv10, ptr %retval, align 4, !dbg !758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !758

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #12, !dbg !759
  %5 = load i32, ptr %retval, align 4, !dbg !759
  ret i32 %5, !dbg !759
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read)
define internal ptr @grab_mcs_node(ptr noundef %base, i32 noundef %idx) #6 align 16 !dbg !760 {
entry:
  %base.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !764, metadata !DIExpression()), !dbg !766
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !765, metadata !DIExpression()), !dbg !767
  %0 = load ptr, ptr %base.addr, align 8, !dbg !768
  %1 = load i32, ptr %idx.addr, align 4, !dbg !769
  %idx.ext = sext i32 %1 to i64, !dbg !770
  %add.ptr = getelementptr %struct.qnode, ptr %0, i64 %idx.ext, !dbg !770
  %mcs = getelementptr inbounds %struct.qnode, ptr %add.ptr, i32 0, i32 0, !dbg !771
  ret ptr %mcs, !dbg !772
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__pv_init_node(ptr noundef %node) #4 align 16 !dbg !773 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !777, metadata !DIExpression()), !dbg !778
  ret void, !dbg !779
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xchg_tail(ptr noundef %lock, i32 noundef %tail) #4 align 16 !dbg !780 {
entry:
  %lock.addr = alloca ptr, align 8
  %tail.addr = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i16, align 2
  %__ret = alloca i16, align 2
  %tmp2 = alloca i16, align 2
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !784, metadata !DIExpression()), !dbg !791
  store i32 %tail, ptr %tail.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tail.addr, metadata !785, metadata !DIExpression()), !dbg !792
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #12, !dbg !793
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !786, metadata !DIExpression()), !dbg !793
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !793
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !793
  %tail1 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 1, !dbg !793
  store ptr %tail1, ptr %__ai_ptr, align 8, !dbg !793
  %2 = load ptr, ptr %__ai_ptr, align 8, !dbg !793
  call void @instrument_atomic_read_write(ptr noundef %2, i64 noundef 2) #13, !dbg !793
  call void @llvm.lifetime.start.p0(i64 2, ptr %__ret) #12, !dbg !794
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !789, metadata !DIExpression()), !dbg !794
  %3 = load i32, ptr %tail.addr, align 4, !dbg !794
  %shr = lshr i32 %3, 16, !dbg !794
  %conv = trunc i32 %shr to i16, !dbg !794
  store i16 %conv, ptr %__ret, align 2, !dbg !794
  %4 = load i16, ptr %__ret, align 2, !dbg !794
  %5 = load ptr, ptr %__ai_ptr, align 8, !dbg !794
  %6 = call i16 asm sideeffect "xchgw ${0:w}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %5, i16 %4, ptr elementtype(i16) %5) #12, !dbg !794, !srcloc !795
  store i16 %6, ptr %__ret, align 2, !dbg !794
  %7 = load i16, ptr %__ret, align 2, !dbg !794
  store i16 %7, ptr %tmp2, align 2, !dbg !794
  call void @llvm.lifetime.end.p0(i64 2, ptr %__ret) #12, !dbg !793
  %8 = load i16, ptr %tmp2, align 2, !dbg !794
  store i16 %8, ptr %tmp, align 2, !dbg !793
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #12, !dbg !796
  %9 = load i16, ptr %tmp, align 2, !dbg !793
  %conv3 = zext i16 %9 to i32, !dbg !797
  %shl = shl i32 %conv3, 16, !dbg !798
  ret i32 %shl, !dbg !799
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read)
define internal ptr @decode_tail(i32 noundef %tail) #6 align 16 !dbg !800 {
entry:
  %tail.addr = alloca i32, align 4
  %cpu = alloca i32, align 4
  %idx = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  store i32 %tail, ptr %tail.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tail.addr, metadata !804, metadata !DIExpression()), !dbg !812
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #12, !dbg !813
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !805, metadata !DIExpression()), !dbg !814
  %0 = load i32, ptr %tail.addr, align 4, !dbg !815
  %shr = lshr i32 %0, 18, !dbg !816
  %sub = sub i32 %shr, 1, !dbg !817
  store i32 %sub, ptr %cpu, align 4, !dbg !814
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #12, !dbg !818
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !806, metadata !DIExpression()), !dbg !819
  %1 = load i32, ptr %tail.addr, align 4, !dbg !820
  %and = and i32 %1, 196608, !dbg !821
  %shr1 = lshr i32 %and, 16, !dbg !822
  store i32 %shr1, ptr %idx, align 4, !dbg !819
  br label %do.body, !dbg !823

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !824
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !807, metadata !DIExpression()), !dbg !824
  store ptr null, ptr %__vpp_verify, align 8, !dbg !824
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !824
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !823
  br label %do.cond, !dbg !824

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !824

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !825
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !810, metadata !DIExpression()), !dbg !825
  %3 = load i32, ptr %idx, align 4, !dbg !825
  %idxprom = sext i32 %3 to i64, !dbg !825
  %arrayidx = getelementptr [4 x %struct.qnode], ptr @qnodes, i64 0, i64 %idxprom, !dbg !825
  %mcs = getelementptr inbounds %struct.qnode, ptr %arrayidx, i32 0, i32 0, !dbg !825
  %4 = ptrtoint ptr %mcs to i64, !dbg !825
  store i64 %4, ptr %__ptr, align 8, !dbg !825
  %5 = load i64, ptr %__ptr, align 8, !dbg !825
  %6 = load i32, ptr %cpu, align 4, !dbg !825
  %idxprom3 = sext i32 %6 to i64, !dbg !825
  %arrayidx4 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom3, !dbg !825
  %7 = load i64, ptr %arrayidx4, align 8, !dbg !825
  %add = add i64 %5, %7, !dbg !825
  %8 = inttoptr i64 %add to ptr, !dbg !825
  store ptr %8, ptr %tmp2, align 8, !dbg !825
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !823
  %9 = load ptr, ptr %tmp2, align 8, !dbg !825
  store ptr %9, ptr %tmp, align 8, !dbg !824
  %10 = load ptr, ptr %tmp, align 8, !dbg !823
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #12, !dbg !826
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #12, !dbg !826
  ret ptr %10, !dbg !827
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__pv_wait_node(ptr noundef %node, ptr noundef %prev) #4 align 16 !dbg !828 {
entry:
  %node.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !832, metadata !DIExpression()), !dbg !834
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !833, metadata !DIExpression()), !dbg !835
  ret void, !dbg !836
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @prefetchw(ptr noundef %x) #4 align 16 !dbg !837 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !842, metadata !DIExpression()), !dbg !843
  %0 = load ptr, ptr %x.addr, align 8, !dbg !844
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09prefetcht0 ${1:P}\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 6*32+ 8)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09prefetchw ${1:P}\0A6651:\0A.popsection\0A", "i,*m,~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i8) %0) #12, !dbg !844, !srcloc !845
  ret void, !dbg !846
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__pv_wait_head_or_lock(ptr noundef %lock, ptr noundef %node) #4 align 16 !dbg !847 {
entry:
  %lock.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !851, metadata !DIExpression()), !dbg !853
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !852, metadata !DIExpression()), !dbg !854
  ret i32 0, !dbg !855
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !856 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !862, metadata !DIExpression()), !dbg !865
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !863, metadata !DIExpression()), !dbg !866
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !864, metadata !DIExpression()), !dbg !867
  %0 = load ptr, ptr %v.addr, align 8, !dbg !868
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #13, !dbg !869
  %1 = load ptr, ptr %old.addr, align 8, !dbg !870
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #13, !dbg !871
  %2 = load ptr, ptr %v.addr, align 8, !dbg !872
  %3 = load ptr, ptr %old.addr, align 8, !dbg !873
  %4 = load i32, ptr %new.addr, align 4, !dbg !874
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %2, ptr noundef %3, i32 noundef %4) #13, !dbg !875
  ret i1 %call, !dbg !876
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_locked(ptr noundef %lock) #4 align 16 !dbg !877 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !879, metadata !DIExpression()), !dbg !880
  br label %do.body, !dbg !881

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !882

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !884

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !882

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !886
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !886
  %locked = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !886
  store volatile i8 1, ptr %locked, align 4, !dbg !886
  br label %do.end3, !dbg !886

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !882

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !888
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__pv_kick_node(ptr noundef %lock, ptr noundef %node) #4 align 16 !dbg !889 {
entry:
  %lock.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !893, metadata !DIExpression()), !dbg !895
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !894, metadata !DIExpression()), !dbg !896
  ret void, !dbg !897
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_contention_end(ptr noundef %lock, i32 noundef %ret) #3 align 16 !dbg !131 {
entry:
  %lock.addr = alloca ptr, align 8
  %ret.addr = alloca i32, align 4
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
  %__UNIQUE_ID_rcu211 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !135, metadata !DIExpression()), !dbg !898
  store i32 %ret, ptr %ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !136, metadata !DIExpression()), !dbg !898
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_end, i32 0, i32 1)) #13, !dbg !899
  br i1 %call, label %if.then, label %if.end68, !dbg !898

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !899

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !137, metadata !DIExpression()), !dbg !900
  store i32 0, ptr %__idx, align 4, !dbg !900
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !901
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !140, metadata !DIExpression()), !dbg !901
  br label %do.body1, !dbg !901

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !902
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !143, metadata !DIExpression()), !dbg !902
  store ptr null, ptr %__vpp_verify, align 8, !dbg !902
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !902
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !901
  br label %do.cond, !dbg !902

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !902

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !903
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !145, metadata !DIExpression()), !dbg !903
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !903, !srcloc !904
  store i32 %1, ptr %pfo_val__, align 4, !dbg !903
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !903
  %conv = zext i32 %2 to i64, !dbg !903
  %conv2 = trunc i64 %conv to i32, !dbg !903
  store i32 %conv2, ptr %tmp, align 4, !dbg !903
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !901
  %3 = load i32, ptr %tmp, align 4, !dbg !903
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !901
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !901
  store i32 %4, ptr %tmp3, align 4, !dbg !901
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !905
  %5 = load i32, ptr %tmp3, align 4, !dbg !901
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !905
  br i1 %call4, label %if.end, label %if.then5, !dbg !900

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !905

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !906
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !147, metadata !DIExpression()), !dbg !906
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !906
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !907
  %tobool = icmp ne i32 %6, 0, !dbg !907
  %lnot = xor i1 %tobool, true, !dbg !907
  %lnot6 = xor i1 %lnot, true, !dbg !907
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !907
  %conv7 = sext i32 %lnot.ext to i64, !dbg !907
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !907
  %tobool8 = icmp ne i64 %expval, 0, !dbg !907
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !906

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !907

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !908
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !150, metadata !DIExpression()), !dbg !908
  store i32 2307, ptr %__flags, align 4, !dbg !908
  br label %do.body11, !dbg !908

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !909

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !909

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !908

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !911
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 139, i32 %7, i64 12) #12, !dbg !911, !srcloc !913
  br label %do.cond15, !dbg !911

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !911

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !908

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !914

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !914

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !907
  br label %do.cond20, !dbg !908

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !908

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !908

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !906
  %tobool24 = icmp ne i32 %8, 0, !dbg !906
  %lnot25 = xor i1 %tobool24, true, !dbg !906
  %lnot27 = xor i1 %lnot25, true, !dbg !906
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !906
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !906
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !906
  store i64 %expval30, ptr %tmp23, align 8, !dbg !907
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !916
  %9 = load i64, ptr %tmp23, align 8, !dbg !906
  %tobool31 = icmp ne i64 %9, 0, !dbg !916
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !900

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !916

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !900

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !917
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !917, !srcloc !919
  br label %do.cond35, !dbg !917

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !917

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !900

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !920
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !153, metadata !DIExpression()), !dbg !920
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !920
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !155, metadata !DIExpression()), !dbg !920
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu211) #12, !dbg !921
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu211, metadata !156, metadata !DIExpression()), !dbg !921
  br label %do.body38, !dbg !922

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !924

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !924

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_contention_end, i32 0, i32 8), align 8, !dbg !922
  store ptr %10, ptr %tmp41, align 8, !dbg !924
  %11 = load ptr, ptr %tmp41, align 8, !dbg !922
  store ptr %11, ptr %__UNIQUE_ID_rcu211, align 8, !dbg !921
  %12 = load ptr, ptr %__UNIQUE_ID_rcu211, align 8, !dbg !921
  store ptr %12, ptr %tmp42, align 8, !dbg !921
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu211) #12, !dbg !920
  %13 = load ptr, ptr %tmp42, align 8, !dbg !921
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !920
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !926
  %tobool43 = icmp ne ptr %14, null, !dbg !926
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !920

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !928
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !928
  %16 = load ptr, ptr %data, align 8, !dbg !928
  store ptr %16, ptr %__data, align 8, !dbg !928
  store ptr @__SCT__tp_func_contention_end, ptr %tmp45, align 8, !dbg !930
  %17 = load ptr, ptr %tmp45, align 8, !dbg !930
  %18 = load ptr, ptr %__data, align 8, !dbg !928
  %19 = load ptr, ptr %lock.addr, align 8, !dbg !928
  %20 = load i32, ptr %ret.addr, align 4, !dbg !928
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20) #13, !dbg !928
  br label %if.end47, !dbg !928

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !900
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !900
  br label %do.cond48, !dbg !920

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !920

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !900

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !932, !srcloc !934
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !935
  %lnot52 = xor i1 %call51, true, !dbg !935
  %lnot54 = xor i1 %lnot52, true, !dbg !935
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !935
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !935
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !935
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !935
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !932

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !935

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !161), !dbg !937
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #12, !dbg !937, !srcloc !939
  call void @llvm.write_register.i64(metadata !161, i64 %22), !dbg !937
  br label %do.cond61, !dbg !937

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !937

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !937

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !932

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !932

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !899
  br label %cleanup, !dbg !899

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !899
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !900

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !900

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !898

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch_jump(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !940 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !969, metadata !DIExpression()), !dbg !972
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !970, metadata !DIExpression()), !dbg !973
  %0 = load ptr, ptr %key.addr, align 8, !dbg !974
  %1 = load i8, ptr %branch.addr, align 1, !dbg !975, !range !588, !noundef !589
  %tobool = trunc i8 %1 to i1, !dbg !975
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i1 %tobool) #12
          to label %asm.fallthrough [label %l_yes], !dbg !976, !srcloc !977

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !978
  br label %return, !dbg !978

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !971), !dbg !979
  store i1 true, ptr %retval, align 1, !dbg !980
  br label %return, !dbg !980

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !981
  ret i1 %2, !dbg !981
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !982 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !988, metadata !DIExpression()), !dbg !989
  %0 = load ptr, ptr %v.addr, align 8, !dbg !990
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #13, !dbg !991
  %1 = load ptr, ptr %v.addr, align 8, !dbg !992
  %call = call i32 @raw_atomic_read(ptr noundef %1) #13, !dbg !993
  ret i32 %call, !dbg !994
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #4 align 16 !dbg !995 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !999, metadata !DIExpression()), !dbg !1002
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1000, metadata !DIExpression()), !dbg !1003
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1001, metadata !DIExpression()), !dbg !1004
  br label %do.body, !dbg !1005

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1006

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1008
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #13, !dbg !1009
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1010
  %2 = load i32, ptr %old.addr, align 4, !dbg !1011
  %3 = load i32, ptr %new.addr, align 4, !dbg !1012
  %call = call i32 @raw_atomic_cmpxchg(ptr noundef %1, i32 noundef %2, i32 noundef %3) #13, !dbg !1013
  ret i32 %call, !dbg !1014
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !1015 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1027, metadata !DIExpression()), !dbg !1029
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1028, metadata !DIExpression()), !dbg !1030
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1031
  %1 = load i64, ptr %size.addr, align 8, !dbg !1032
  %conv = trunc i64 %1 to i32, !dbg !1032
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !1033
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1034
  %3 = load i64, ptr %size.addr, align 8, !dbg !1034
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !1034
  ret void, !dbg !1035
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !1036 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1039, metadata !DIExpression()), !dbg !1040
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1041
  %call = call i32 @arch_atomic_read(ptr noundef %0) #13, !dbg !1042
  ret i32 %call, !dbg !1043
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !1044 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1049, metadata !DIExpression()), !dbg !1051
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1050, metadata !DIExpression()), !dbg !1052
  ret i1 true, !dbg !1053
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !1054 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1059, metadata !DIExpression()), !dbg !1062
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1060, metadata !DIExpression()), !dbg !1063
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1061, metadata !DIExpression()), !dbg !1064
  ret void, !dbg !1065
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !1066 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1071
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1071
  %1 = load volatile i32, ptr %counter, align 4, !dbg !1071
  ret i32 %1, !dbg !1072
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !1073 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1075, metadata !DIExpression()), !dbg !1077
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1076, metadata !DIExpression()), !dbg !1078
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1079
  %1 = load i64, ptr %size.addr, align 8, !dbg !1080
  %conv = trunc i64 %1 to i32, !dbg !1080
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !1081
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1082
  %3 = load i64, ptr %size.addr, align 8, !dbg !1082
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #13, !dbg !1082
  ret void, !dbg !1083
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #4 align 16 !dbg !1084 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1086, metadata !DIExpression()), !dbg !1089
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1087, metadata !DIExpression()), !dbg !1090
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1088, metadata !DIExpression()), !dbg !1091
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1092
  %1 = load i32, ptr %old.addr, align 4, !dbg !1093
  %2 = load i32, ptr %new.addr, align 4, !dbg !1094
  %call = call i32 @arch_atomic_cmpxchg(ptr noundef %0, i32 noundef %1, i32 noundef %2) #13, !dbg !1095
  ret i32 %call, !dbg !1096
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !1097 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1099, metadata !DIExpression()), !dbg !1101
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1100, metadata !DIExpression()), !dbg !1102
  ret i1 true, !dbg !1103
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #4 align 16 !dbg !1104 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1106, metadata !DIExpression()), !dbg !1114
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1107, metadata !DIExpression()), !dbg !1115
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1108, metadata !DIExpression()), !dbg !1116
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #12, !dbg !1117
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1109, metadata !DIExpression()), !dbg !1117
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #12, !dbg !1117
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !1111, metadata !DIExpression()), !dbg !1117
  %0 = load i32, ptr %old.addr, align 4, !dbg !1117
  store i32 %0, ptr %__old, align 4, !dbg !1117
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #12, !dbg !1117
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !1112, metadata !DIExpression()), !dbg !1117
  %1 = load i32, ptr %new.addr, align 4, !dbg !1117
  store i32 %1, ptr %__new, align 4, !dbg !1117
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !1117
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1113, metadata !DIExpression()), !dbg !1117
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1117
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !1117
  store ptr %counter, ptr %__ptr, align 8, !dbg !1117
  %3 = load ptr, ptr %__ptr, align 8, !dbg !1117
  %4 = load i32, ptr %__new, align 4, !dbg !1117
  %5 = load i32, ptr %__old, align 4, !dbg !1117
  %6 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %4, i32 %5, ptr elementtype(i32) %3) #12, !dbg !1117, !srcloc !1118
  store i32 %6, ptr %__ret, align 4, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !1117
  %7 = load i32, ptr %__ret, align 4, !dbg !1117
  store i32 %7, ptr %tmp, align 4, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #12, !dbg !1119
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #12, !dbg !1119
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #12, !dbg !1119
  %8 = load i32, ptr %tmp, align 4, !dbg !1117
  ret i32 %8, !dbg !1120
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #4 align 16 !dbg !1121 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !1122, !srcloc !1123
  ret void, !dbg !1124
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #4 align 16 !dbg !1125 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1129, metadata !DIExpression()), !dbg !1130
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1131
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !1132
  ret i1 %call, !dbg !1133
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #3 align 16 !dbg !1134 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1138, metadata !DIExpression()), !dbg !1139
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1140
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #13, !dbg !1141
  ret i1 %call, !dbg !1142
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #4 align 16 !dbg !1143 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1148, metadata !DIExpression()), !dbg !1155
  br label %do.body, !dbg !1156

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !1157
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !1149, metadata !DIExpression()), !dbg !1157
  %0 = load i32, ptr %val.addr, align 4, !dbg !1157
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1157
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1157

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !1157
  %cmp = icmp eq i32 %2, 1, !dbg !1157
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !1157

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !1157
  %cmp1 = icmp eq i32 %3, -1, !dbg !1157
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1157

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !1157
  br label %cond.end, !dbg !1157

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !1157

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !1157
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !1157
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !1158
  %cmp2 = icmp eq i32 %5, 1, !dbg !1158
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1157

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !1159, !srcloc !1161
  br label %if.end8, !dbg !1158

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !1162
  %cmp3 = icmp eq i32 %6, -1, !dbg !1162
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1158

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !1163, !srcloc !1165
  br label %if.end, !dbg !1162

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !1162

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !1166
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1151, metadata !DIExpression()), !dbg !1166
  %7 = load i32, ptr %val.addr, align 4, !dbg !1166
  %conv = sext i32 %7 to i64, !dbg !1166
  %and = and i64 %conv, 4294967295, !dbg !1166
  %conv7 = trunc i64 %and to i32, !dbg !1166
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !1166
  %8 = load i32, ptr %pto_val__, align 4, !dbg !1166
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !1166, !srcloc !1167
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !1162
  br label %do.cond, !dbg !1166

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !1166

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !1156
  br label %do.end10, !dbg !1157

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !1168
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_contention_begin(ptr noundef, ptr noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #4 align 16 !dbg !1169 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1173, metadata !DIExpression()), !dbg !1175
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.2, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !1175, !srcloc !1176
  %1 = icmp ult i8 %0, 2, !dbg !1175
  call void @llvm.assume(i1 %1), !dbg !1175
  store i8 %0, ptr %c, align 1, !dbg !1175
  %2 = load i8, ptr %c, align 1, !dbg !1175, !range !588, !noundef !589
  %tobool = trunc i8 %2 to i1, !dbg !1175
  %frombool = zext i1 %tobool to i8, !dbg !1175
  store i8 %frombool, ptr %tmp, align 1, !dbg !1175
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !1177
  %3 = load i8, ptr %tmp, align 1, !dbg !1175, !range !588, !noundef !589
  %tobool1 = trunc i8 %3 to i1, !dbg !1175
  ret i1 %tobool1, !dbg !1178
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !1179 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1183, metadata !DIExpression()), !dbg !1186
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !1184, metadata !DIExpression()), !dbg !1187
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1188
  %1 = load i8, ptr %branch.addr, align 1, !dbg !1189, !range !588, !noundef !589
  %tobool = trunc i8 %1 to i1, !dbg !1189
  %conv = zext i1 %tobool to i32, !dbg !1189
  %or = or i32 2, %conv, !dbg !1190
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !1191, !srcloc !1192

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1193
  br label %return, !dbg !1193

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !1185), !dbg !1194
  store i1 true, ptr %retval, align 1, !dbg !1195
  br label %return, !dbg !1195

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !1196
  ret i1 %2, !dbg !1196
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #4 align 16 !dbg !1197 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1201, metadata !DIExpression()), !dbg !1203
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !1202, metadata !DIExpression()), !dbg !1204
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1205
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !1205
  %conv = zext i32 %call to i64, !dbg !1205
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !1205
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !1205
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1205
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #13, !dbg !1205
  ret i1 %call1, !dbg !1206
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1207 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1215, metadata !DIExpression()), !dbg !1217
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1216, metadata !DIExpression()), !dbg !1218
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1219
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1220
  %div = udiv i64 %1, 64, !dbg !1220
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1221
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !1222
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1223
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1224
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !1225
  ret i1 %call, !dbg !1226
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #4 align 16 !dbg !1227 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1231, metadata !DIExpression()), !dbg !1232
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1233
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #13, !dbg !1234
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !1235
  ret i32 %1, !dbg !1236
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1237 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1240, metadata !DIExpression()), !dbg !1242
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1241, metadata !DIExpression()), !dbg !1243
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1244
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1245
  br i1 %1, label %cond.true, label %cond.false, !dbg !1245

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1246
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1247
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !1248
  %conv = zext i1 %call to i32, !dbg !1248
  br label %cond.end, !dbg !1245

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1249
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1250
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !1251
  %conv2 = zext i1 %call1 to i32, !dbg !1251
  br label %cond.end, !dbg !1245

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1245
  %tobool = icmp ne i32 %cond, 0, !dbg !1245
  ret i1 %tobool, !dbg !1252
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1253 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1257, metadata !DIExpression()), !dbg !1259
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1258, metadata !DIExpression()), !dbg !1260
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1261
  %and = and i64 %0, 63, !dbg !1262
  %shl = shl i64 1, %and, !dbg !1263
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1264
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1265
  %shr = ashr i64 %2, 6, !dbg !1266
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1264
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1264
  %and1 = and i64 %shl, %3, !dbg !1267
  %cmp = icmp ne i64 %and1, 0, !dbg !1268
  ret i1 %cmp, !dbg !1269
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1270 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1272, metadata !DIExpression()), !dbg !1275
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1273, metadata !DIExpression()), !dbg !1276
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !1277
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1274, metadata !DIExpression()), !dbg !1278
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1279
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1280
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !1281, !srcloc !1282
  %3 = icmp ult i8 %2, 2, !dbg !1281
  call void @llvm.assume(i1 %3), !dbg !1281
  store i8 %2, ptr %oldbit, align 1, !dbg !1281
  %4 = load i8, ptr %oldbit, align 1, !dbg !1283, !range !588, !noundef !589
  %tobool = trunc i8 %4 to i1, !dbg !1283
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !1284
  ret i1 %tobool, !dbg !1285
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #4 align 16 !dbg !1286 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1290, metadata !DIExpression()), !dbg !1292
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1291, metadata !DIExpression()), !dbg !1293
  ret void, !dbg !1294
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !1295 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1297, metadata !DIExpression()), !dbg !1300
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1298, metadata !DIExpression()), !dbg !1301
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1299, metadata !DIExpression()), !dbg !1302
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1303
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #13, !dbg !1304
  %1 = load ptr, ptr %old.addr, align 8, !dbg !1305
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #13, !dbg !1306
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1307
  %3 = load ptr, ptr %old.addr, align 8, !dbg !1308
  %4 = load i32, ptr %new.addr, align 4, !dbg !1309
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %2, ptr noundef %3, i32 noundef %4) #13, !dbg !1310
  ret i1 %call, !dbg !1311
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !1312 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1314, metadata !DIExpression()), !dbg !1317
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1315, metadata !DIExpression()), !dbg !1318
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1316, metadata !DIExpression()), !dbg !1319
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1320
  %1 = load ptr, ptr %old.addr, align 8, !dbg !1321
  %2 = load i32, ptr %new.addr, align 4, !dbg !1322
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13, !dbg !1323
  ret i1 %call, !dbg !1324
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !1325 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1327, metadata !DIExpression()), !dbg !1336
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1328, metadata !DIExpression()), !dbg !1337
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1329, metadata !DIExpression()), !dbg !1338
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #12, !dbg !1339
  call void @llvm.dbg.declare(metadata ptr %success, metadata !1330, metadata !DIExpression()), !dbg !1339
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #12, !dbg !1339
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !1332, metadata !DIExpression()), !dbg !1339
  %0 = load ptr, ptr %old.addr, align 8, !dbg !1339
  store ptr %0, ptr %_old, align 8, !dbg !1339
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #12, !dbg !1339
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !1333, metadata !DIExpression()), !dbg !1339
  %1 = load ptr, ptr %_old, align 8, !dbg !1339
  %2 = load i32, ptr %1, align 4, !dbg !1339
  store i32 %2, ptr %__old, align 4, !dbg !1339
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #12, !dbg !1339
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !1334, metadata !DIExpression()), !dbg !1339
  %3 = load i32, ptr %new.addr, align 4, !dbg !1339
  store i32 %3, ptr %__new, align 4, !dbg !1339
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !1339
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1335, metadata !DIExpression()), !dbg !1339
  %4 = load ptr, ptr %v.addr, align 8, !dbg !1339
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !1339
  store ptr %counter, ptr %__ptr, align 8, !dbg !1339
  %5 = load ptr, ptr %__ptr, align 8, !dbg !1339
  %6 = load i32, ptr %__old, align 4, !dbg !1339
  %7 = load i32, ptr %__new, align 4, !dbg !1339
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #12, !dbg !1339, !srcloc !1340
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !1339
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !1339
  %9 = icmp ult i8 %asmresult, 2, !dbg !1339
  call void @llvm.assume(i1 %9), !dbg !1339
  store i8 %asmresult, ptr %success, align 1, !dbg !1339
  store i32 %asmresult1, ptr %__old, align 4, !dbg !1339
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !1339
  %10 = load i8, ptr %success, align 1, !dbg !1341, !range !588, !noundef !589
  %tobool = trunc i8 %10 to i1, !dbg !1341
  %lnot = xor i1 %tobool, true, !dbg !1341
  %lnot2 = xor i1 %lnot, true, !dbg !1341
  %lnot3 = xor i1 %lnot2, true, !dbg !1341
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1341
  %conv = sext i32 %lnot.ext to i64, !dbg !1341
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1341
  %tobool4 = icmp ne i64 %expval, 0, !dbg !1341
  br i1 %tobool4, label %if.then, label %if.end, !dbg !1339

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !1341
  %12 = load ptr, ptr %_old, align 8, !dbg !1341
  store i32 %11, ptr %12, align 4, !dbg !1341
  br label %if.end, !dbg !1341

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !1339, !range !588, !noundef !589
  %tobool5 = trunc i8 %13 to i1, !dbg !1339
  %lnot6 = xor i1 %tobool5, true, !dbg !1339
  %lnot8 = xor i1 %lnot6, true, !dbg !1339
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !1339
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !1339
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !1339
  store i64 %expval11, ptr %tmp, align 8, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #12, !dbg !1343
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #12, !dbg !1343
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #12, !dbg !1343
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #12, !dbg !1343
  %14 = load i64, ptr %tmp, align 8, !dbg !1339
  %tobool12 = icmp ne i64 %14, 0, !dbg !1343
  ret i1 %tobool12, !dbg !1344
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !1345 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1347, metadata !DIExpression()), !dbg !1350
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1348, metadata !DIExpression()), !dbg !1351
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1349, metadata !DIExpression()), !dbg !1352
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1353
  %1 = load ptr, ptr %old.addr, align 8, !dbg !1354
  %2 = load i32, ptr %new.addr, align 4, !dbg !1355
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13, !dbg !1356
  ret i1 %call, !dbg !1357
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_contention_end(ptr noundef, ptr noundef, i32 noundef) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { nounwind memory(read) }
attributes #15 = { noredzone nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "qnodes", scope: !2, file: !3, line: 109, type: !160, isLocal: true, isDefinition: true, align: 512)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/locking/.qspinlock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/locking/qspinlock\22 -D KBUILD_BASENAME=\22qspinlock\22 -D KBUILD_MODNAME=\22qspinlock\22 -D __KBUILD_MODNAME=kmod_qspinlock -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/locking/qspinlock.ll kernel/locking/qspinlock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !77, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/locking/qspinlock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "752e09e4919535240a82b1a8065f2e14")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !15, !16, !20, !24, !31, !32, !33, !34, !36, !38, !39, !43, !45, !50, !53, !60, !69, !7, !41, !70, !74}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !19)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mcs_spinlock", file: !26, line: 18, size: 128, elements: !27)
!26 = !DIFile(filename: "kernel/locking/mcs_spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d8a9b766f1784bc439f69ff73c6a4bf")
!27 = !{!28, !29, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !25, file: !26, line: 19, baseType: !24, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !25, file: !26, line: 20, baseType: !15, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !25, file: !26, line: 21, baseType: !15, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !55, line: 26, size: 192, elements: !56)
!55 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!56 = !{!57, !58, !59}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !54, file: !55, line: 27, baseType: !31, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !54, file: !55, line: 28, baseType: !31, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !54, file: !55, line: 29, baseType: !15, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !63, line: 19, size: 64, elements: !64)
!63 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !62, file: !63, line: 19, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qnode", file: !3, line: 82, size: 128, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "mcs", scope: !71, file: !3, line: 83, baseType: !25, size: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!77 = !{!78, !83, !88, !0, !90, !96, !127, !129, !158}
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !3, line: 403, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 40, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 5)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !3, line: 565, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 32, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 4)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_queued_spin_lock_slowpath238", scope: !2, file: !3, line: 567, type: !31, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !92, line: 95, type: !93, isLocal: true, isDefinition: true)
!92 = !DIFile(filename: "./include/trace/events/lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb4e6643de3c3749267f6f3b5a53bfe0")
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 224, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 28)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_contention_begin205", scope: !98, file: !92, line: 95, type: !31, isLocal: true, isDefinition: true)
!98 = distinct !DISubprogram(name: "trace_contention_begin", scope: !92, file: !92, line: 95, type: !99, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !101)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !31, !7}
!101 = !{!102, !103, !104, !107, !110, !114, !116, !119, !122, !124, !125}
!102 = !DILocalVariable(name: "lock", arg: 1, scope: !98, file: !92, line: 95, type: !31)
!103 = !DILocalVariable(name: "flags", arg: 2, scope: !98, file: !92, line: 95, type: !7)
!104 = !DILocalVariable(name: "__idx", scope: !105, file: !92, line: 95, type: !15)
!105 = distinct !DILexicalBlock(scope: !106, file: !92, line: 95, column: 1)
!106 = distinct !DILexicalBlock(scope: !98, file: !92, line: 95, column: 1)
!107 = !DILocalVariable(name: "pscr_ret__", scope: !108, file: !92, line: 95, type: !15)
!108 = distinct !DILexicalBlock(scope: !109, file: !92, line: 95, column: 1)
!109 = distinct !DILexicalBlock(scope: !105, file: !92, line: 95, column: 1)
!110 = !DILocalVariable(name: "__vpp_verify", scope: !111, file: !92, line: 95, type: !112)
!111 = distinct !DILexicalBlock(scope: !108, file: !92, line: 95, column: 1)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!114 = !DILocalVariable(name: "pfo_val__", scope: !115, file: !92, line: 95, type: !41)
!115 = distinct !DILexicalBlock(scope: !108, file: !92, line: 95, column: 1)
!116 = !DILocalVariable(name: "__ret_warn_on", scope: !117, file: !92, line: 95, type: !15)
!117 = distinct !DILexicalBlock(scope: !118, file: !92, line: 95, column: 1)
!118 = distinct !DILexicalBlock(scope: !105, file: !92, line: 95, column: 1)
!119 = !DILocalVariable(name: "__flags", scope: !120, file: !92, line: 95, type: !15)
!120 = distinct !DILexicalBlock(scope: !121, file: !92, line: 95, column: 1)
!121 = distinct !DILexicalBlock(scope: !117, file: !92, line: 95, column: 1)
!122 = !DILocalVariable(name: "it_func_ptr", scope: !123, file: !92, line: 95, type: !53)
!123 = distinct !DILexicalBlock(scope: !105, file: !92, line: 95, column: 1)
!124 = !DILocalVariable(name: "__data", scope: !123, file: !92, line: 95, type: !31)
!125 = !DILocalVariable(name: "__UNIQUE_ID_rcu203", scope: !126, file: !92, line: 95, type: !53)
!126 = distinct !DILexicalBlock(scope: !123, file: !92, line: 95, column: 1)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace206", scope: !98, file: !92, line: 95, type: !31, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_contention_end213", scope: !131, file: !92, line: 122, type: !31, isLocal: true, isDefinition: true)
!131 = distinct !DISubprogram(name: "trace_contention_end", scope: !92, file: !92, line: 122, type: !132, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !31, !15}
!134 = !{!135, !136, !137, !140, !143, !145, !147, !150, !153, !155, !156}
!135 = !DILocalVariable(name: "lock", arg: 1, scope: !131, file: !92, line: 122, type: !31)
!136 = !DILocalVariable(name: "ret", arg: 2, scope: !131, file: !92, line: 122, type: !15)
!137 = !DILocalVariable(name: "__idx", scope: !138, file: !92, line: 122, type: !15)
!138 = distinct !DILexicalBlock(scope: !139, file: !92, line: 122, column: 1)
!139 = distinct !DILexicalBlock(scope: !131, file: !92, line: 122, column: 1)
!140 = !DILocalVariable(name: "pscr_ret__", scope: !141, file: !92, line: 122, type: !15)
!141 = distinct !DILexicalBlock(scope: !142, file: !92, line: 122, column: 1)
!142 = distinct !DILexicalBlock(scope: !138, file: !92, line: 122, column: 1)
!143 = !DILocalVariable(name: "__vpp_verify", scope: !144, file: !92, line: 122, type: !112)
!144 = distinct !DILexicalBlock(scope: !141, file: !92, line: 122, column: 1)
!145 = !DILocalVariable(name: "pfo_val__", scope: !146, file: !92, line: 122, type: !41)
!146 = distinct !DILexicalBlock(scope: !141, file: !92, line: 122, column: 1)
!147 = !DILocalVariable(name: "__ret_warn_on", scope: !148, file: !92, line: 122, type: !15)
!148 = distinct !DILexicalBlock(scope: !149, file: !92, line: 122, column: 1)
!149 = distinct !DILexicalBlock(scope: !138, file: !92, line: 122, column: 1)
!150 = !DILocalVariable(name: "__flags", scope: !151, file: !92, line: 122, type: !15)
!151 = distinct !DILexicalBlock(scope: !152, file: !92, line: 122, column: 1)
!152 = distinct !DILexicalBlock(scope: !148, file: !92, line: 122, column: 1)
!153 = !DILocalVariable(name: "it_func_ptr", scope: !154, file: !92, line: 122, type: !53)
!154 = distinct !DILexicalBlock(scope: !138, file: !92, line: 122, column: 1)
!155 = !DILocalVariable(name: "__data", scope: !154, file: !92, line: 122, type: !31)
!156 = !DILocalVariable(name: "__UNIQUE_ID_rcu211", scope: !157, file: !92, line: 122, type: !53)
!157 = distinct !DILexicalBlock(scope: !154, file: !92, line: 122, column: 1)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace214", scope: !131, file: !92, line: 122, type: !31, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 512, elements: !86)
!161 = !{!"rsp"}
!162 = !{i32 7, !"Dwarf Version", i32 5}
!163 = !{i32 2, !"Debug Info Version", i32 3}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 8, !"cf-protection-branch", i32 1}
!166 = !{i32 4, !"function_return_thunk_extern", i32 1}
!167 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!168 = !{i32 1, !"Code Model", i32 2}
!169 = !{i32 1, !"override-stack-alignment", i32 8}
!170 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!171 = distinct !DISubprogram(name: "queued_spin_lock_slowpath", scope: !3, file: !3, line: 316, type: !172, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !174, !41}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !176, line: 14, size: 32, elements: !177)
!176 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !176, line: 15, baseType: !179, size: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !175, file: !176, line: 15, size: 32, elements: !180)
!180 = !{!181, !187, !192}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !179, file: !176, line: 16, baseType: !182, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !183, line: 174, baseType: !184)
!183 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 172, size: 32, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !184, file: !183, line: 173, baseType: !15, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !176, line: 24, baseType: !188, size: 16)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !179, file: !176, line: 24, size: 16, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !188, file: !176, line: 25, baseType: !20, size: 8)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !188, file: !176, line: 26, baseType: !20, size: 8, offset: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !176, line: 28, baseType: !193, size: 32)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !179, file: !176, line: 28, size: 32, elements: !194)
!194 = !{!195, !196}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !193, file: !176, line: 29, baseType: !47, size: 16)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !193, file: !176, line: 30, baseType: !47, size: 16, offset: 16)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206, !209, !211, !212, !215, !218, !219, !220, !221, !224, !226, !229, !231, !233, !238, !240, !241, !243, !245, !246, !247, !251, !252, !253, !257}
!198 = !DILocalVariable(name: "lock", arg: 1, scope: !171, file: !3, line: 316, type: !174)
!199 = !DILocalVariable(name: "val", arg: 2, scope: !171, file: !3, line: 316, type: !41)
!200 = !DILocalVariable(name: "prev", scope: !171, file: !3, line: 318, type: !24)
!201 = !DILocalVariable(name: "next", scope: !171, file: !3, line: 318, type: !24)
!202 = !DILocalVariable(name: "node", scope: !171, file: !3, line: 318, type: !24)
!203 = !DILocalVariable(name: "old", scope: !171, file: !3, line: 319, type: !41)
!204 = !DILocalVariable(name: "tail", scope: !171, file: !3, line: 319, type: !41)
!205 = !DILocalVariable(name: "idx", scope: !171, file: !3, line: 320, type: !15)
!206 = !DILocalVariable(name: "cnt", scope: !207, file: !3, line: 337, type: !15)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 336, column: 29)
!208 = distinct !DILexicalBlock(scope: !171, file: !3, line: 336, column: 6)
!209 = !DILocalVariable(name: "__PTR", scope: !210, file: !3, line: 338, type: !32)
!210 = distinct !DILexicalBlock(scope: !207, file: !3, line: 338, column: 9)
!211 = !DILocalVariable(name: "VAL", scope: !210, file: !3, line: 338, type: !15)
!212 = !DILocalVariable(name: "_val", scope: !213, file: !3, line: 383, type: !19)
!213 = distinct !DILexicalBlock(scope: !214, file: !3, line: 383, column: 3)
!214 = distinct !DILexicalBlock(scope: !171, file: !3, line: 382, column: 6)
!215 = !DILocalVariable(name: "__PTR", scope: !216, file: !3, line: 383, type: !217)
!216 = distinct !DILexicalBlock(scope: !213, file: !3, line: 383, column: 3)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!218 = !DILocalVariable(name: "VAL", scope: !216, file: !3, line: 383, type: !19)
!219 = !DILabel(scope: !171, name: "queue", file: !3, line: 398)
!220 = !DILabel(scope: !171, name: "pv_queue", file: !3, line: 400)
!221 = !DILocalVariable(name: "__vpp_verify", scope: !222, file: !3, line: 401, type: !112)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 401, column: 9)
!223 = distinct !DILexicalBlock(scope: !171, file: !3, line: 401, column: 9)
!224 = !DILocalVariable(name: "tcp_ptr__", scope: !225, file: !3, line: 401, type: !33)
!225 = distinct !DILexicalBlock(scope: !223, file: !3, line: 401, column: 9)
!226 = !DILocalVariable(name: "pscr_ret__", scope: !227, file: !3, line: 403, type: !15)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 403, column: 21)
!228 = distinct !DILexicalBlock(scope: !171, file: !3, line: 403, column: 21)
!229 = !DILocalVariable(name: "__vpp_verify", scope: !230, file: !3, line: 403, type: !112)
!230 = distinct !DILexicalBlock(scope: !227, file: !3, line: 403, column: 21)
!231 = !DILocalVariable(name: "pfo_val__", scope: !232, file: !3, line: 403, type: !41)
!232 = distinct !DILexicalBlock(scope: !227, file: !3, line: 403, column: 21)
!233 = !DILocalVariable(name: "_val", scope: !234, file: !3, line: 477, type: !15)
!234 = distinct !DILexicalBlock(scope: !235, file: !3, line: 477, column: 3)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 477, column: 3)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 470, column: 26)
!237 = distinct !DILexicalBlock(scope: !171, file: !3, line: 470, column: 6)
!238 = !DILocalVariable(name: "__PTR", scope: !239, file: !3, line: 477, type: !32)
!239 = distinct !DILexicalBlock(scope: !234, file: !3, line: 477, column: 3)
!240 = !DILocalVariable(name: "VAL", scope: !239, file: !3, line: 477, type: !15)
!241 = !DILocalVariable(name: "_val", scope: !242, file: !3, line: 514, type: !15)
!242 = distinct !DILexicalBlock(scope: !171, file: !3, line: 514, column: 8)
!243 = !DILocalVariable(name: "__PTR", scope: !244, file: !3, line: 514, type: !32)
!244 = distinct !DILexicalBlock(scope: !242, file: !3, line: 514, column: 8)
!245 = !DILocalVariable(name: "VAL", scope: !244, file: !3, line: 514, type: !15)
!246 = !DILabel(scope: !171, name: "locked", file: !3, line: 516)
!247 = !DILocalVariable(name: "__PTR", scope: !248, file: !3, line: 554, type: !250)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 554, column: 10)
!249 = distinct !DILexicalBlock(scope: !171, file: !3, line: 553, column: 6)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!251 = !DILocalVariable(name: "VAL", scope: !248, file: !3, line: 554, type: !24)
!252 = !DILabel(scope: !171, name: "release", file: !3, line: 559)
!253 = !DILocalVariable(name: "__vpp_verify", scope: !254, file: !3, line: 565, type: !112)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 565, column: 2)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 565, column: 2)
!256 = distinct !DILexicalBlock(scope: !171, file: !3, line: 565, column: 2)
!257 = !DILocalVariable(name: "pao_ID__", scope: !258, file: !3, line: 565, type: !259)
!258 = distinct !DILexicalBlock(scope: !255, file: !3, line: 565, column: 2)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!260 = !DILocation(line: 316, column: 61, scope: !171)
!261 = !DILocation(line: 316, column: 71, scope: !171)
!262 = !DILocation(line: 318, column: 2, scope: !171)
!263 = !DILocation(line: 318, column: 23, scope: !171)
!264 = !DILocation(line: 318, column: 30, scope: !171)
!265 = !DILocation(line: 318, column: 37, scope: !171)
!266 = !DILocation(line: 319, column: 2, scope: !171)
!267 = !DILocation(line: 319, column: 6, scope: !171)
!268 = !DILocation(line: 319, column: 11, scope: !171)
!269 = !DILocation(line: 320, column: 2, scope: !171)
!270 = !DILocation(line: 320, column: 6, scope: !171)
!271 = !DILocation(line: 322, column: 2, scope: !171)
!272 = !DILocation(line: 322, column: 2, scope: !273)
!273 = distinct !DILexicalBlock(scope: !171, file: !3, line: 322, column: 2)
!274 = !DILocation(line: 327, column: 21, scope: !275)
!275 = distinct !DILexicalBlock(scope: !171, file: !3, line: 327, column: 6)
!276 = !DILocation(line: 327, column: 6, scope: !275)
!277 = !DILocation(line: 327, column: 6, scope: !171)
!278 = !DILocation(line: 328, column: 3, scope: !275)
!279 = !DILocation(line: 336, column: 6, scope: !208)
!280 = !DILocation(line: 336, column: 10, scope: !208)
!281 = !DILocation(line: 336, column: 6, scope: !171)
!282 = !DILocation(line: 337, column: 3, scope: !207)
!283 = !DILocation(line: 337, column: 7, scope: !207)
!284 = !DILocation(line: 338, column: 9, scope: !210)
!285 = !DILocation(line: 338, column: 9, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 338, column: 9)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 338, column: 9)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 338, column: 9)
!289 = distinct !DILexicalBlock(scope: !210, file: !3, line: 338, column: 9)
!290 = !DILocation(line: 338, column: 9, scope: !291)
!291 = distinct !DILexicalBlock(scope: !286, file: !3, line: 338, column: 9)
!292 = !DILocation(line: 338, column: 9, scope: !287)
!293 = !DILocation(line: 338, column: 9, scope: !294)
!294 = distinct !DILexicalBlock(scope: !287, file: !3, line: 338, column: 9)
!295 = !DILocation(line: 338, column: 9, scope: !288)
!296 = distinct !{!296, !297, !297, !298}
!297 = !DILocation(line: 338, column: 9, scope: !289)
!298 = !{!"llvm.loop.unroll.disable"}
!299 = !DILocation(line: 338, column: 9, scope: !207)
!300 = !DILocation(line: 338, column: 7, scope: !207)
!301 = !DILocation(line: 340, column: 2, scope: !208)
!302 = !DILocation(line: 340, column: 2, scope: !207)
!303 = !DILocation(line: 345, column: 6, scope: !304)
!304 = distinct !DILexicalBlock(scope: !171, file: !3, line: 345, column: 6)
!305 = !DILocation(line: 345, column: 10, scope: !304)
!306 = !DILocation(line: 345, column: 6, scope: !171)
!307 = !DILocation(line: 346, column: 3, scope: !304)
!308 = !DILocation(line: 353, column: 41, scope: !171)
!309 = !DILocation(line: 353, column: 8, scope: !171)
!310 = !DILocation(line: 353, column: 6, scope: !171)
!311 = !DILocation(line: 362, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !171, file: !3, line: 362, column: 6)
!313 = !DILocation(line: 362, column: 6, scope: !171)
!314 = !DILocation(line: 365, column: 9, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 365, column: 7)
!316 = distinct !DILexicalBlock(scope: !312, file: !3, line: 362, column: 39)
!317 = !DILocation(line: 365, column: 13, scope: !315)
!318 = !DILocation(line: 365, column: 7, scope: !316)
!319 = !DILocation(line: 366, column: 18, scope: !315)
!320 = !DILocation(line: 366, column: 4, scope: !315)
!321 = !DILocation(line: 368, column: 3, scope: !316)
!322 = !DILocation(line: 382, column: 6, scope: !214)
!323 = !DILocation(line: 382, column: 10, scope: !214)
!324 = !DILocation(line: 382, column: 6, scope: !171)
!325 = !DILocation(line: 383, column: 3, scope: !213)
!326 = !DILocation(line: 383, column: 3, scope: !216)
!327 = !DILocation(line: 383, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !3, line: 383, column: 3)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 383, column: 3)
!330 = distinct !DILexicalBlock(scope: !331, file: !3, line: 383, column: 3)
!331 = distinct !DILexicalBlock(scope: !216, file: !3, line: 383, column: 3)
!332 = !DILocation(line: 383, column: 3, scope: !333)
!333 = distinct !DILexicalBlock(scope: !328, file: !3, line: 383, column: 3)
!334 = !DILocation(line: 383, column: 3, scope: !329)
!335 = !DILocation(line: 383, column: 3, scope: !336)
!336 = distinct !DILexicalBlock(scope: !329, file: !3, line: 383, column: 3)
!337 = !DILocation(line: 383, column: 3, scope: !330)
!338 = distinct !{!338, !339, !339, !298}
!339 = !DILocation(line: 383, column: 3, scope: !331)
!340 = !DILocation(line: 383, column: 3, scope: !341)
!341 = distinct !DILexicalBlock(scope: !213, file: !3, line: 383, column: 3)
!342 = !DILocation(line: 383, column: 3, scope: !343)
!343 = distinct !DILexicalBlock(scope: !341, file: !3, line: 383, column: 3)
!344 = !DILocation(line: 383, column: 3, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !3, line: 383, column: 3)
!346 = !DILocation(line: 383, column: 3, scope: !347)
!347 = distinct !DILexicalBlock(scope: !345, file: !3, line: 383, column: 3)
!348 = !{i64 2152830241}
!349 = !DILocation(line: 383, column: 3, scope: !214)
!350 = !DILocation(line: 390, column: 27, scope: !171)
!351 = !DILocation(line: 390, column: 2, scope: !171)
!352 = !DILocation(line: 392, column: 2, scope: !171)
!353 = !DILocation(line: 398, column: 1, scope: !171)
!354 = !DILocation(line: 400, column: 1, scope: !171)
!355 = !DILocation(line: 401, column: 9, scope: !223)
!356 = !DILocation(line: 401, column: 9, scope: !222)
!357 = !DILocation(line: 401, column: 9, scope: !225)
!358 = !{i64 2152830619}
!359 = !DILocation(line: 401, column: 7, scope: !171)
!360 = !DILocation(line: 402, column: 8, scope: !171)
!361 = !DILocation(line: 402, column: 14, scope: !171)
!362 = !DILocation(line: 402, column: 19, scope: !171)
!363 = !DILocation(line: 402, column: 6, scope: !171)
!364 = !DILocation(line: 403, column: 21, scope: !228)
!365 = !DILocation(line: 403, column: 21, scope: !227)
!366 = !DILocation(line: 403, column: 21, scope: !230)
!367 = !DILocation(line: 403, column: 21, scope: !232)
!368 = !{i64 2152833540}
!369 = !DILocation(line: 403, column: 41, scope: !171)
!370 = !DILocation(line: 403, column: 9, scope: !171)
!371 = !DILocation(line: 403, column: 7, scope: !171)
!372 = !DILocation(line: 405, column: 25, scope: !171)
!373 = !DILocation(line: 405, column: 2, scope: !171)
!374 = !DILocation(line: 416, column: 6, scope: !375)
!375 = distinct !DILexicalBlock(scope: !171, file: !3, line: 416, column: 6)
!376 = !DILocation(line: 416, column: 6, scope: !171)
!377 = !DILocation(line: 418, column: 3, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !3, line: 416, column: 34)
!379 = !DILocation(line: 418, column: 31, scope: !378)
!380 = !DILocation(line: 418, column: 11, scope: !378)
!381 = !DILocation(line: 418, column: 10, scope: !378)
!382 = !DILocation(line: 419, column: 4, scope: !378)
!383 = distinct !{!383, !377, !384, !385, !298}
!384 = !DILocation(line: 419, column: 14, scope: !378)
!385 = !{!"llvm.loop.mustprogress"}
!386 = !DILocation(line: 420, column: 3, scope: !378)
!387 = !DILocation(line: 423, column: 23, scope: !171)
!388 = !DILocation(line: 423, column: 29, scope: !171)
!389 = !DILocation(line: 423, column: 9, scope: !171)
!390 = !DILocation(line: 423, column: 7, scope: !171)
!391 = !DILocation(line: 435, column: 2, scope: !171)
!392 = !{i64 2152834380}
!393 = !DILocation(line: 437, column: 2, scope: !171)
!394 = !DILocation(line: 437, column: 8, scope: !171)
!395 = !DILocation(line: 437, column: 15, scope: !171)
!396 = !DILocation(line: 438, column: 2, scope: !171)
!397 = !DILocation(line: 438, column: 8, scope: !171)
!398 = !DILocation(line: 438, column: 13, scope: !171)
!399 = !DILocation(line: 439, column: 15, scope: !171)
!400 = !DILocation(line: 439, column: 2, scope: !171)
!401 = !DILocation(line: 446, column: 26, scope: !402)
!402 = distinct !DILexicalBlock(scope: !171, file: !3, line: 446, column: 6)
!403 = !DILocation(line: 446, column: 6, scope: !402)
!404 = !DILocation(line: 446, column: 6, scope: !171)
!405 = !DILocation(line: 447, column: 3, scope: !402)
!406 = !DILocation(line: 454, column: 2, scope: !171)
!407 = !DILocation(line: 454, column: 2, scope: !408)
!408 = distinct !DILexicalBlock(scope: !171, file: !3, line: 454, column: 2)
!409 = !DILocation(line: 454, column: 2, scope: !410)
!410 = distinct !DILexicalBlock(scope: !408, file: !3, line: 454, column: 2)
!411 = !{i64 2152834515}
!412 = !DILocation(line: 463, column: 18, scope: !171)
!413 = !DILocation(line: 463, column: 24, scope: !171)
!414 = !DILocation(line: 463, column: 8, scope: !171)
!415 = !DILocation(line: 463, column: 6, scope: !171)
!416 = !DILocation(line: 464, column: 7, scope: !171)
!417 = !DILocation(line: 470, column: 6, scope: !237)
!418 = !DILocation(line: 470, column: 10, scope: !237)
!419 = !DILocation(line: 470, column: 6, scope: !171)
!420 = !DILocation(line: 471, column: 22, scope: !236)
!421 = !DILocation(line: 471, column: 10, scope: !236)
!422 = !DILocation(line: 471, column: 8, scope: !236)
!423 = !DILocation(line: 474, column: 3, scope: !236)
!424 = !DILocation(line: 474, column: 3, scope: !425)
!425 = distinct !DILexicalBlock(scope: !236, file: !3, line: 474, column: 3)
!426 = !DILocation(line: 474, column: 3, scope: !427)
!427 = distinct !DILexicalBlock(scope: !425, file: !3, line: 474, column: 3)
!428 = !DILocation(line: 474, column: 3, scope: !429)
!429 = distinct !DILexicalBlock(scope: !425, file: !3, line: 474, column: 3)
!430 = !DILocation(line: 476, column: 16, scope: !236)
!431 = !DILocation(line: 476, column: 22, scope: !236)
!432 = !DILocation(line: 476, column: 3, scope: !236)
!433 = !DILocation(line: 477, column: 3, scope: !236)
!434 = !DILocation(line: 477, column: 3, scope: !234)
!435 = !DILocation(line: 477, column: 3, scope: !239)
!436 = !DILocation(line: 477, column: 3, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 477, column: 3)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 477, column: 3)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 477, column: 3)
!440 = distinct !DILexicalBlock(scope: !239, file: !3, line: 477, column: 3)
!441 = !DILocation(line: 477, column: 3, scope: !442)
!442 = distinct !DILexicalBlock(scope: !437, file: !3, line: 477, column: 3)
!443 = !DILocation(line: 477, column: 3, scope: !438)
!444 = !DILocation(line: 477, column: 3, scope: !445)
!445 = distinct !DILexicalBlock(scope: !438, file: !3, line: 477, column: 3)
!446 = !DILocation(line: 477, column: 3, scope: !439)
!447 = distinct !{!447, !448, !448, !298}
!448 = !DILocation(line: 477, column: 3, scope: !440)
!449 = !DILocation(line: 477, column: 3, scope: !450)
!450 = distinct !DILexicalBlock(scope: !234, file: !3, line: 477, column: 3)
!451 = !DILocation(line: 477, column: 3, scope: !452)
!452 = distinct !DILexicalBlock(scope: !450, file: !3, line: 477, column: 3)
!453 = !DILocation(line: 477, column: 3, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !3, line: 477, column: 3)
!455 = !DILocation(line: 477, column: 3, scope: !456)
!456 = distinct !DILexicalBlock(scope: !454, file: !3, line: 477, column: 3)
!457 = !{i64 2152842262}
!458 = !DILocation(line: 477, column: 3, scope: !235)
!459 = !DILocation(line: 485, column: 10, scope: !460)
!460 = distinct !DILexicalBlock(scope: !236, file: !3, line: 485, column: 10)
!461 = !DILocation(line: 485, column: 10, scope: !462)
!462 = distinct !DILexicalBlock(scope: !460, file: !3, line: 485, column: 10)
!463 = !DILocation(line: 485, column: 8, scope: !236)
!464 = !DILocation(line: 486, column: 7, scope: !465)
!465 = distinct !DILexicalBlock(scope: !236, file: !3, line: 486, column: 7)
!466 = !DILocation(line: 486, column: 7, scope: !236)
!467 = !DILocation(line: 487, column: 14, scope: !465)
!468 = !DILocation(line: 487, column: 4, scope: !465)
!469 = !DILocation(line: 488, column: 2, scope: !236)
!470 = !DILocation(line: 511, column: 34, scope: !471)
!471 = distinct !DILexicalBlock(scope: !171, file: !3, line: 511, column: 6)
!472 = !DILocation(line: 511, column: 40, scope: !471)
!473 = !DILocation(line: 511, column: 13, scope: !471)
!474 = !DILocation(line: 511, column: 11, scope: !471)
!475 = !DILocation(line: 511, column: 6, scope: !171)
!476 = !DILocation(line: 512, column: 3, scope: !471)
!477 = !DILocation(line: 514, column: 8, scope: !242)
!478 = !DILocation(line: 514, column: 8, scope: !244)
!479 = !DILocation(line: 514, column: 8, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !3, line: 514, column: 8)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 514, column: 8)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 514, column: 8)
!483 = distinct !DILexicalBlock(scope: !244, file: !3, line: 514, column: 8)
!484 = !DILocation(line: 514, column: 8, scope: !485)
!485 = distinct !DILexicalBlock(scope: !480, file: !3, line: 514, column: 8)
!486 = !DILocation(line: 514, column: 8, scope: !481)
!487 = !DILocation(line: 514, column: 8, scope: !488)
!488 = distinct !DILexicalBlock(scope: !481, file: !3, line: 514, column: 8)
!489 = !DILocation(line: 514, column: 8, scope: !482)
!490 = distinct !{!490, !491, !491, !298}
!491 = !DILocation(line: 514, column: 8, scope: !483)
!492 = !DILocation(line: 514, column: 8, scope: !493)
!493 = distinct !DILexicalBlock(scope: !242, file: !3, line: 514, column: 8)
!494 = !DILocation(line: 514, column: 8, scope: !495)
!495 = distinct !DILexicalBlock(scope: !493, file: !3, line: 514, column: 8)
!496 = !DILocation(line: 514, column: 8, scope: !497)
!497 = distinct !DILexicalBlock(scope: !493, file: !3, line: 514, column: 8)
!498 = !DILocation(line: 514, column: 8, scope: !499)
!499 = distinct !DILexicalBlock(scope: !497, file: !3, line: 514, column: 8)
!500 = !{i64 2152850786}
!501 = !DILocation(line: 514, column: 8, scope: !171)
!502 = !DILocation(line: 514, column: 6, scope: !171)
!503 = !DILocation(line: 514, column: 2, scope: !171)
!504 = !DILocation(line: 516, column: 1, scope: !171)
!505 = !DILocation(line: 538, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !171, file: !3, line: 538, column: 6)
!507 = !DILocation(line: 538, column: 11, scope: !506)
!508 = !DILocation(line: 538, column: 30, scope: !506)
!509 = !DILocation(line: 538, column: 27, scope: !506)
!510 = !DILocation(line: 538, column: 6, scope: !171)
!511 = !DILocation(line: 539, column: 35, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !3, line: 539, column: 7)
!513 = distinct !DILexicalBlock(scope: !506, file: !3, line: 538, column: 36)
!514 = !DILocation(line: 539, column: 41, scope: !512)
!515 = !DILocation(line: 539, column: 7, scope: !512)
!516 = !DILocation(line: 539, column: 7, scope: !513)
!517 = !DILocation(line: 540, column: 4, scope: !512)
!518 = !DILocation(line: 541, column: 2, scope: !513)
!519 = !DILocation(line: 548, column: 13, scope: !171)
!520 = !DILocation(line: 548, column: 2, scope: !171)
!521 = !DILocation(line: 553, column: 7, scope: !249)
!522 = !DILocation(line: 553, column: 6, scope: !171)
!523 = !DILocation(line: 554, column: 10, scope: !248)
!524 = !DILocation(line: 554, column: 10, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !3, line: 554, column: 10)
!526 = distinct !DILexicalBlock(scope: !527, file: !3, line: 554, column: 10)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 554, column: 10)
!528 = distinct !DILexicalBlock(scope: !248, file: !3, line: 554, column: 10)
!529 = !DILocation(line: 554, column: 10, scope: !530)
!530 = distinct !DILexicalBlock(scope: !525, file: !3, line: 554, column: 10)
!531 = !DILocation(line: 554, column: 10, scope: !526)
!532 = !DILocation(line: 554, column: 10, scope: !533)
!533 = distinct !DILexicalBlock(scope: !526, file: !3, line: 554, column: 10)
!534 = !DILocation(line: 554, column: 10, scope: !527)
!535 = distinct !{!535, !536, !536, !298}
!536 = !DILocation(line: 554, column: 10, scope: !528)
!537 = !DILocation(line: 554, column: 10, scope: !249)
!538 = !DILocation(line: 554, column: 8, scope: !249)
!539 = !DILocation(line: 554, column: 3, scope: !249)
!540 = !DILocation(line: 556, column: 2, scope: !171)
!541 = !DILocation(line: 556, column: 2, scope: !542)
!542 = distinct !DILexicalBlock(scope: !171, file: !3, line: 556, column: 2)
!543 = !DILocation(line: 556, column: 2, scope: !544)
!544 = distinct !DILexicalBlock(scope: !542, file: !3, line: 556, column: 2)
!545 = !DILocation(line: 556, column: 2, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !3, line: 556, column: 2)
!547 = !DILocation(line: 556, column: 2, scope: !548)
!548 = distinct !DILexicalBlock(scope: !546, file: !3, line: 556, column: 2)
!549 = !{i64 2152857357}
!550 = !DILocation(line: 556, column: 2, scope: !551)
!551 = distinct !DILexicalBlock(scope: !546, file: !3, line: 556, column: 2)
!552 = !DILocation(line: 556, column: 2, scope: !553)
!553 = distinct !DILexicalBlock(scope: !551, file: !3, line: 556, column: 2)
!554 = !DILocation(line: 556, column: 2, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !3, line: 556, column: 2)
!556 = !DILocation(line: 557, column: 15, scope: !171)
!557 = !DILocation(line: 557, column: 21, scope: !171)
!558 = !DILocation(line: 557, column: 2, scope: !171)
!559 = !DILocation(line: 559, column: 1, scope: !171)
!560 = !DILocation(line: 560, column: 23, scope: !171)
!561 = !DILocation(line: 560, column: 2, scope: !171)
!562 = !DILocation(line: 565, column: 2, scope: !256)
!563 = !DILocation(line: 565, column: 2, scope: !255)
!564 = !DILocation(line: 565, column: 2, scope: !254)
!565 = !DILocation(line: 565, column: 2, scope: !258)
!566 = !DILocation(line: 565, column: 2, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 565, column: 2)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 565, column: 2)
!569 = distinct !DILexicalBlock(scope: !258, file: !3, line: 565, column: 2)
!570 = !{i64 2152866945}
!571 = !DILocation(line: 566, column: 1, scope: !171)
!572 = distinct !DISubprogram(name: "virt_spin_lock", scope: !573, file: !573, line: 88, type: !574, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!573 = !DIFile(filename: "./arch/x86/include/asm/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d1dea77ef2a70281fc9ee21161c87cd1")
!574 = !DISubroutineType(types: !575)
!575 = !{!576, !174}
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !183, line: 35, baseType: !577)
!577 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!578 = !{!579, !580}
!579 = !DILocalVariable(name: "lock", arg: 1, scope: !572, file: !573, line: 88, type: !174)
!580 = !DILocalVariable(name: "branch", scope: !581, file: !573, line: 90, type: !576)
!581 = distinct !DILexicalBlock(scope: !582, file: !573, line: 90, column: 7)
!582 = distinct !DILexicalBlock(scope: !572, file: !573, line: 90, column: 6)
!583 = !DILocation(line: 88, column: 53, scope: !572)
!584 = !DILocation(line: 90, column: 7, scope: !581)
!585 = !DILocation(line: 90, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !573, line: 90, column: 7)
!587 = distinct !DILexicalBlock(scope: !581, file: !573, line: 90, column: 7)
!588 = !{i8 0, i8 2}
!589 = !{}
!590 = !DILocation(line: 90, column: 7, scope: !587)
!591 = !DILocation(line: 90, column: 7, scope: !582)
!592 = !DILocation(line: 90, column: 6, scope: !572)
!593 = !DILocation(line: 91, column: 3, scope: !582)
!594 = !DILocation(line: 99, column: 2, scope: !572)
!595 = !DILocation(line: 100, column: 3, scope: !596)
!596 = distinct !DILexicalBlock(scope: !572, file: !573, line: 99, column: 5)
!597 = !DILocation(line: 100, column: 23, scope: !596)
!598 = !DILocation(line: 100, column: 29, scope: !596)
!599 = !DILocation(line: 100, column: 10, scope: !596)
!600 = !DILocation(line: 100, column: 34, scope: !596)
!601 = !DILocation(line: 101, column: 4, scope: !596)
!602 = distinct !{!602, !595, !603, !385, !298}
!603 = !DILocation(line: 101, column: 14, scope: !596)
!604 = !DILocation(line: 102, column: 2, scope: !596)
!605 = !DILocation(line: 102, column: 27, scope: !572)
!606 = !DILocation(line: 102, column: 33, scope: !572)
!607 = !DILocation(line: 102, column: 11, scope: !572)
!608 = !DILocation(line: 102, column: 56, scope: !572)
!609 = distinct !{!609, !594, !610, !385, !298}
!610 = !DILocation(line: 102, column: 60, scope: !572)
!611 = !DILocation(line: 104, column: 2, scope: !572)
!612 = !DILocation(line: 105, column: 1, scope: !572)
!613 = distinct !DISubprogram(name: "cpu_relax", scope: !614, file: !614, line: 16, type: !615, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!614 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!615 = !DISubroutineType(types: !616)
!616 = !{null}
!617 = !DILocation(line: 18, column: 2, scope: !613)
!618 = !DILocation(line: 19, column: 1, scope: !613)
!619 = distinct !DISubprogram(name: "queued_fetch_set_pending_acquire", scope: !573, file: !573, line: 14, type: !620, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !622)
!620 = !DISubroutineType(types: !621)
!621 = !{!41, !174}
!622 = !{!623, !624, !625}
!623 = !DILocalVariable(name: "lock", arg: 1, scope: !619, file: !573, line: 14, type: !174)
!624 = !DILocalVariable(name: "val", scope: !619, file: !573, line: 16, type: !41)
!625 = !DILocalVariable(name: "c", scope: !626, file: !573, line: 23, type: !576)
!626 = distinct !DILexicalBlock(scope: !619, file: !573, line: 23, column: 8)
!627 = !DILocation(line: 14, column: 79, scope: !619)
!628 = !DILocation(line: 16, column: 2, scope: !619)
!629 = !DILocation(line: 16, column: 6, scope: !619)
!630 = !DILocation(line: 23, column: 8, scope: !626)
!631 = !{i64 2150005734, i64 2150005773, i64 2150005794, i64 2150005831, i64 2150005854, i64 2150005863, i64 2150005976}
!632 = !DILocation(line: 23, column: 8, scope: !619)
!633 = !DILocation(line: 24, column: 35, scope: !619)
!634 = !DILocation(line: 23, column: 6, scope: !619)
!635 = !DILocation(line: 25, column: 22, scope: !619)
!636 = !DILocation(line: 25, column: 28, scope: !619)
!637 = !DILocation(line: 25, column: 9, scope: !619)
!638 = !DILocation(line: 25, column: 33, scope: !619)
!639 = !DILocation(line: 25, column: 6, scope: !619)
!640 = !DILocation(line: 27, column: 9, scope: !619)
!641 = !DILocation(line: 28, column: 1, scope: !619)
!642 = !DILocation(line: 27, column: 2, scope: !619)
!643 = distinct !DISubprogram(name: "clear_pending", scope: !3, file: !3, line: 149, type: !644, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !174}
!646 = !{!647}
!647 = !DILocalVariable(name: "lock", arg: 1, scope: !643, file: !3, line: 149, type: !174)
!648 = !DILocation(line: 149, column: 61, scope: !643)
!649 = !DILocation(line: 151, column: 2, scope: !643)
!650 = !DILocation(line: 151, column: 2, scope: !651)
!651 = distinct !DILexicalBlock(scope: !643, file: !3, line: 151, column: 2)
!652 = !DILocation(line: 151, column: 2, scope: !653)
!653 = distinct !DILexicalBlock(scope: !651, file: !3, line: 151, column: 2)
!654 = !DILocation(line: 151, column: 2, scope: !655)
!655 = distinct !DILexicalBlock(scope: !651, file: !3, line: 151, column: 2)
!656 = !DILocation(line: 152, column: 1, scope: !643)
!657 = distinct !DISubprogram(name: "clear_pending_set_locked", scope: !3, file: !3, line: 162, type: !644, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !658)
!658 = !{!659}
!659 = !DILocalVariable(name: "lock", arg: 1, scope: !657, file: !3, line: 162, type: !174)
!660 = !DILocation(line: 162, column: 72, scope: !657)
!661 = !DILocation(line: 164, column: 2, scope: !657)
!662 = !DILocation(line: 164, column: 2, scope: !663)
!663 = distinct !DILexicalBlock(scope: !657, file: !3, line: 164, column: 2)
!664 = !DILocation(line: 164, column: 2, scope: !665)
!665 = distinct !DILexicalBlock(scope: !663, file: !3, line: 164, column: 2)
!666 = !DILocation(line: 164, column: 2, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !3, line: 164, column: 2)
!668 = !DILocation(line: 165, column: 1, scope: !657)
!669 = distinct !DISubprogram(name: "encode_tail", scope: !3, file: !3, line: 116, type: !670, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !672)
!670 = !DISubroutineType(types: !671)
!671 = !{!41, !15, !15}
!672 = !{!673, !674, !675}
!673 = !DILocalVariable(name: "cpu", arg: 1, scope: !669, file: !3, line: 116, type: !15)
!674 = !DILocalVariable(name: "idx", arg: 2, scope: !669, file: !3, line: 116, type: !15)
!675 = !DILocalVariable(name: "tail", scope: !669, file: !3, line: 118, type: !41)
!676 = !DILocation(line: 116, column: 42, scope: !669)
!677 = !DILocation(line: 116, column: 51, scope: !669)
!678 = !DILocation(line: 118, column: 2, scope: !669)
!679 = !DILocation(line: 118, column: 6, scope: !669)
!680 = !DILocation(line: 120, column: 11, scope: !669)
!681 = !DILocation(line: 120, column: 15, scope: !669)
!682 = !DILocation(line: 120, column: 20, scope: !669)
!683 = !DILocation(line: 120, column: 8, scope: !669)
!684 = !DILocation(line: 121, column: 10, scope: !669)
!685 = !DILocation(line: 121, column: 14, scope: !669)
!686 = !DILocation(line: 121, column: 7, scope: !669)
!687 = !DILocation(line: 123, column: 9, scope: !669)
!688 = !DILocation(line: 124, column: 1, scope: !669)
!689 = !DILocation(line: 123, column: 2, scope: !669)
!690 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !691, file: !691, line: 313, type: !692, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !694)
!691 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!692 = !DISubroutineType(types: !693)
!693 = !{null, !74}
!694 = !{!695}
!695 = !DILocalVariable(name: "op", arg: 1, scope: !690, file: !691, line: 313, type: !74)
!696 = !DILocation(line: 313, column: 66, scope: !690)
!697 = !DILocation(line: 313, column: 72, scope: !690)
!698 = !DILocation(line: 95, column: 1, scope: !98)
!699 = !DILocation(line: 95, column: 1, scope: !106)
!700 = !DILocation(line: 95, column: 1, scope: !105)
!701 = !DILocation(line: 95, column: 1, scope: !108)
!702 = !DILocation(line: 95, column: 1, scope: !111)
!703 = !DILocation(line: 95, column: 1, scope: !115)
!704 = !{i64 2152681135}
!705 = !DILocation(line: 95, column: 1, scope: !109)
!706 = !DILocation(line: 95, column: 1, scope: !117)
!707 = !DILocation(line: 95, column: 1, scope: !121)
!708 = !DILocation(line: 95, column: 1, scope: !120)
!709 = !DILocation(line: 95, column: 1, scope: !710)
!710 = distinct !DILexicalBlock(scope: !120, file: !92, line: 95, column: 1)
!711 = !DILocation(line: 95, column: 1, scope: !712)
!712 = distinct !DILexicalBlock(scope: !120, file: !92, line: 95, column: 1)
!713 = !{i64 2152682337, i64 2152682366, i64 2152682412, i64 2152682470, i64 2152682524, i64 2152682578, i64 2152682633, i64 2152682664, i64 2152682972, i64 2152682978, i64 2152683025, i64 2152683048, i64 2152683074}
!714 = !DILocation(line: 95, column: 1, scope: !715)
!715 = distinct !DILexicalBlock(scope: !120, file: !92, line: 95, column: 1)
!716 = !DILocation(line: 95, column: 1, scope: !118)
!717 = !DILocation(line: 95, column: 1, scope: !718)
!718 = distinct !DILexicalBlock(scope: !105, file: !92, line: 95, column: 1)
!719 = !{i64 2152683426}
!720 = !DILocation(line: 95, column: 1, scope: !123)
!721 = !DILocation(line: 95, column: 1, scope: !126)
!722 = !DILocation(line: 95, column: 1, scope: !723)
!723 = distinct !DILexicalBlock(scope: !126, file: !92, line: 95, column: 1)
!724 = !DILocation(line: 95, column: 1, scope: !725)
!725 = distinct !DILexicalBlock(scope: !723, file: !92, line: 95, column: 1)
!726 = !DILocation(line: 95, column: 1, scope: !727)
!727 = distinct !DILexicalBlock(scope: !123, file: !92, line: 95, column: 1)
!728 = !DILocation(line: 95, column: 1, scope: !729)
!729 = distinct !DILexicalBlock(scope: !727, file: !92, line: 95, column: 1)
!730 = !DILocation(line: 95, column: 1, scope: !731)
!731 = distinct !DILexicalBlock(scope: !729, file: !92, line: 95, column: 1)
!732 = !DILocation(line: 95, column: 1, scope: !733)
!733 = distinct !DILexicalBlock(scope: !105, file: !92, line: 95, column: 1)
!734 = !{i64 2152689911}
!735 = !DILocation(line: 95, column: 1, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !92, line: 95, column: 1)
!737 = !DILocation(line: 95, column: 1, scope: !738)
!738 = distinct !DILexicalBlock(scope: !736, file: !92, line: 95, column: 1)
!739 = !{i64 2152690070}
!740 = distinct !DISubprogram(name: "queued_spin_trylock", scope: !741, file: !741, line: 90, type: !742, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !744)
!741 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!742 = !DISubroutineType(types: !743)
!743 = !{!15, !174}
!744 = !{!745, !746}
!745 = !DILocalVariable(name: "lock", arg: 1, scope: !740, file: !741, line: 90, type: !174)
!746 = !DILocalVariable(name: "val", scope: !740, file: !741, line: 92, type: !15)
!747 = !DILocation(line: 90, column: 66, scope: !740)
!748 = !DILocation(line: 92, column: 2, scope: !740)
!749 = !DILocation(line: 92, column: 6, scope: !740)
!750 = !DILocation(line: 92, column: 25, scope: !740)
!751 = !DILocation(line: 92, column: 31, scope: !740)
!752 = !DILocation(line: 92, column: 12, scope: !740)
!753 = !DILocation(line: 94, column: 6, scope: !754)
!754 = distinct !DILexicalBlock(scope: !740, file: !741, line: 94, column: 6)
!755 = !DILocation(line: 94, column: 6, scope: !740)
!756 = !DILocation(line: 95, column: 3, scope: !754)
!757 = !DILocation(line: 97, column: 9, scope: !740)
!758 = !DILocation(line: 97, column: 2, scope: !740)
!759 = !DILocation(line: 98, column: 1, scope: !740)
!760 = distinct !DISubprogram(name: "grab_mcs_node", scope: !3, file: !3, line: 135, type: !761, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{!24, !24, !15}
!763 = !{!764, !765}
!764 = !DILocalVariable(name: "base", arg: 1, scope: !760, file: !3, line: 135, type: !24)
!765 = !DILocalVariable(name: "idx", arg: 2, scope: !760, file: !3, line: 135, type: !15)
!766 = !DILocation(line: 135, column: 57, scope: !760)
!767 = !DILocation(line: 135, column: 67, scope: !760)
!768 = !DILocation(line: 137, column: 27, scope: !760)
!769 = !DILocation(line: 137, column: 34, scope: !760)
!770 = !DILocation(line: 137, column: 32, scope: !760)
!771 = !DILocation(line: 137, column: 40, scope: !760)
!772 = !DILocation(line: 137, column: 2, scope: !760)
!773 = distinct !DISubprogram(name: "__pv_init_node", scope: !3, file: !3, line: 273, type: !774, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !776)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !24}
!776 = !{!777}
!777 = !DILocalVariable(name: "node", arg: 1, scope: !773, file: !3, line: 273, type: !24)
!778 = !DILocation(line: 273, column: 65, scope: !773)
!779 = !DILocation(line: 273, column: 73, scope: !773)
!780 = distinct !DISubprogram(name: "xchg_tail", scope: !3, file: !3, line: 177, type: !781, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{!41, !174, !41}
!783 = !{!784, !785, !786, !789}
!784 = !DILocalVariable(name: "lock", arg: 1, scope: !780, file: !3, line: 177, type: !174)
!785 = !DILocalVariable(name: "tail", arg: 2, scope: !780, file: !3, line: 177, type: !41)
!786 = !DILocalVariable(name: "__ai_ptr", scope: !787, file: !3, line: 183, type: !788)
!787 = distinct !DILexicalBlock(scope: !780, file: !3, line: 183, column: 14)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!789 = !DILocalVariable(name: "__ret", scope: !790, file: !3, line: 183, type: !47)
!790 = distinct !DILexicalBlock(scope: !787, file: !3, line: 183, column: 14)
!791 = !DILocation(line: 177, column: 56, scope: !780)
!792 = !DILocation(line: 177, column: 66, scope: !780)
!793 = !DILocation(line: 183, column: 14, scope: !787)
!794 = !DILocation(line: 183, column: 14, scope: !790)
!795 = !{i64 2152815515}
!796 = !DILocation(line: 183, column: 14, scope: !780)
!797 = !DILocation(line: 183, column: 9, scope: !780)
!798 = !DILocation(line: 184, column: 30, scope: !780)
!799 = !DILocation(line: 183, column: 2, scope: !780)
!800 = distinct !DISubprogram(name: "decode_tail", scope: !3, file: !3, line: 126, type: !801, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{!24, !41}
!803 = !{!804, !805, !806, !807, !810}
!804 = !DILocalVariable(name: "tail", arg: 1, scope: !800, file: !3, line: 126, type: !41)
!805 = !DILocalVariable(name: "cpu", scope: !800, file: !3, line: 128, type: !15)
!806 = !DILocalVariable(name: "idx", scope: !800, file: !3, line: 129, type: !15)
!807 = !DILocalVariable(name: "__vpp_verify", scope: !808, file: !3, line: 131, type: !112)
!808 = distinct !DILexicalBlock(scope: !809, file: !3, line: 131, column: 9)
!809 = distinct !DILexicalBlock(scope: !800, file: !3, line: 131, column: 9)
!810 = !DILocalVariable(name: "__ptr", scope: !811, file: !3, line: 131, type: !33)
!811 = distinct !DILexicalBlock(scope: !809, file: !3, line: 131, column: 9)
!812 = !DILocation(line: 126, column: 59, scope: !800)
!813 = !DILocation(line: 128, column: 2, scope: !800)
!814 = !DILocation(line: 128, column: 6, scope: !800)
!815 = !DILocation(line: 128, column: 13, scope: !800)
!816 = !DILocation(line: 128, column: 18, scope: !800)
!817 = !DILocation(line: 128, column: 41, scope: !800)
!818 = !DILocation(line: 129, column: 2, scope: !800)
!819 = !DILocation(line: 129, column: 6, scope: !800)
!820 = !DILocation(line: 129, column: 13, scope: !800)
!821 = !DILocation(line: 129, column: 18, scope: !800)
!822 = !DILocation(line: 129, column: 39, scope: !800)
!823 = !DILocation(line: 131, column: 9, scope: !809)
!824 = !DILocation(line: 131, column: 9, scope: !808)
!825 = !DILocation(line: 131, column: 9, scope: !811)
!826 = !DILocation(line: 132, column: 1, scope: !800)
!827 = !DILocation(line: 131, column: 2, scope: !800)
!828 = distinct !DISubprogram(name: "__pv_wait_node", scope: !3, file: !3, line: 274, type: !829, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !24, !24}
!831 = !{!832, !833}
!832 = !DILocalVariable(name: "node", arg: 1, scope: !828, file: !3, line: 274, type: !24)
!833 = !DILocalVariable(name: "prev", arg: 2, scope: !828, file: !3, line: 275, type: !24)
!834 = !DILocation(line: 274, column: 65, scope: !828)
!835 = !DILocation(line: 275, column: 30, scope: !828)
!836 = !DILocation(line: 275, column: 38, scope: !828)
!837 = distinct !DISubprogram(name: "prefetchw", scope: !838, file: !838, line: 637, type: !839, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !841)
!838 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!839 = !DISubroutineType(types: !840)
!840 = !{null, !112}
!841 = !{!842}
!842 = !DILocalVariable(name: "x", arg: 1, scope: !837, file: !838, line: 637, type: !112)
!843 = !DILocation(line: 637, column: 51, scope: !837)
!844 = !DILocation(line: 639, column: 2, scope: !837)
!845 = !{i64 2149449783, i64 2149449811, i64 2149449817, i64 2149449833, i64 2149449849, i64 2149449876, i64 2149450204, i64 2149449526, i64 2149450210, i64 2149450258, i64 2149450322, i64 2149450386, i64 2149450443, i64 2149449607, i64 2149449632, i64 2149450650, i64 2149450779, i64 2149450711, i64 2149450793, i64 2149449724}
!846 = !DILocation(line: 642, column: 1, scope: !837)
!847 = distinct !DISubprogram(name: "__pv_wait_head_or_lock", scope: !3, file: !3, line: 278, type: !848, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{!41, !174, !24}
!850 = !{!851, !852}
!851 = !DILocalVariable(name: "lock", arg: 1, scope: !847, file: !3, line: 278, type: !174)
!852 = !DILocalVariable(name: "node", arg: 2, scope: !847, file: !3, line: 279, type: !24)
!853 = !DILocation(line: 278, column: 70, scope: !847)
!854 = !DILocation(line: 279, column: 31, scope: !847)
!855 = !DILocation(line: 280, column: 12, scope: !847)
!856 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !857, file: !857, line: 1335, type: !858, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !861)
!857 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!858 = !DISubroutineType(types: !859)
!859 = !{!576, !860, !32, !15}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!861 = !{!862, !863, !864}
!862 = !DILocalVariable(name: "v", arg: 1, scope: !856, file: !857, line: 1335, type: !860)
!863 = !DILocalVariable(name: "old", arg: 2, scope: !856, file: !857, line: 1335, type: !32)
!864 = !DILocalVariable(name: "new", arg: 3, scope: !856, file: !857, line: 1335, type: !15)
!865 = !DILocation(line: 1335, column: 38, scope: !856)
!866 = !DILocation(line: 1335, column: 46, scope: !856)
!867 = !DILocation(line: 1335, column: 55, scope: !856)
!868 = !DILocation(line: 1337, column: 31, scope: !856)
!869 = !DILocation(line: 1337, column: 2, scope: !856)
!870 = !DILocation(line: 1338, column: 31, scope: !856)
!871 = !DILocation(line: 1338, column: 2, scope: !856)
!872 = !DILocation(line: 1339, column: 40, scope: !856)
!873 = !DILocation(line: 1339, column: 43, scope: !856)
!874 = !DILocation(line: 1339, column: 48, scope: !856)
!875 = !DILocation(line: 1339, column: 9, scope: !856)
!876 = !DILocation(line: 1339, column: 2, scope: !856)
!877 = distinct !DISubprogram(name: "set_locked", scope: !3, file: !3, line: 262, type: !644, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !878)
!878 = !{!879}
!879 = !DILocalVariable(name: "lock", arg: 1, scope: !877, file: !3, line: 262, type: !174)
!880 = !DILocation(line: 262, column: 58, scope: !877)
!881 = !DILocation(line: 264, column: 2, scope: !877)
!882 = !DILocation(line: 264, column: 2, scope: !883)
!883 = distinct !DILexicalBlock(scope: !877, file: !3, line: 264, column: 2)
!884 = !DILocation(line: 264, column: 2, scope: !885)
!885 = distinct !DILexicalBlock(scope: !883, file: !3, line: 264, column: 2)
!886 = !DILocation(line: 264, column: 2, scope: !887)
!887 = distinct !DILexicalBlock(scope: !883, file: !3, line: 264, column: 2)
!888 = !DILocation(line: 265, column: 1, scope: !877)
!889 = distinct !DISubprogram(name: "__pv_kick_node", scope: !3, file: !3, line: 276, type: !890, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !892)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !174, !24}
!892 = !{!893, !894}
!893 = !DILocalVariable(name: "lock", arg: 1, scope: !889, file: !3, line: 276, type: !174)
!894 = !DILocalVariable(name: "node", arg: 2, scope: !889, file: !3, line: 277, type: !24)
!895 = !DILocation(line: 276, column: 62, scope: !889)
!896 = !DILocation(line: 277, column: 30, scope: !889)
!897 = !DILocation(line: 277, column: 38, scope: !889)
!898 = !DILocation(line: 122, column: 1, scope: !131)
!899 = !DILocation(line: 122, column: 1, scope: !139)
!900 = !DILocation(line: 122, column: 1, scope: !138)
!901 = !DILocation(line: 122, column: 1, scope: !141)
!902 = !DILocation(line: 122, column: 1, scope: !144)
!903 = !DILocation(line: 122, column: 1, scope: !146)
!904 = !{i64 2152730702}
!905 = !DILocation(line: 122, column: 1, scope: !142)
!906 = !DILocation(line: 122, column: 1, scope: !148)
!907 = !DILocation(line: 122, column: 1, scope: !152)
!908 = !DILocation(line: 122, column: 1, scope: !151)
!909 = !DILocation(line: 122, column: 1, scope: !910)
!910 = distinct !DILexicalBlock(scope: !151, file: !92, line: 122, column: 1)
!911 = !DILocation(line: 122, column: 1, scope: !912)
!912 = distinct !DILexicalBlock(scope: !151, file: !92, line: 122, column: 1)
!913 = !{i64 2152731898, i64 2152731927, i64 2152731973, i64 2152732031, i64 2152732085, i64 2152732139, i64 2152732194, i64 2152732225, i64 2152732533, i64 2152732539, i64 2152732586, i64 2152732609, i64 2152732635}
!914 = !DILocation(line: 122, column: 1, scope: !915)
!915 = distinct !DILexicalBlock(scope: !151, file: !92, line: 122, column: 1)
!916 = !DILocation(line: 122, column: 1, scope: !149)
!917 = !DILocation(line: 122, column: 1, scope: !918)
!918 = distinct !DILexicalBlock(scope: !138, file: !92, line: 122, column: 1)
!919 = !{i64 2152732987}
!920 = !DILocation(line: 122, column: 1, scope: !154)
!921 = !DILocation(line: 122, column: 1, scope: !157)
!922 = !DILocation(line: 122, column: 1, scope: !923)
!923 = distinct !DILexicalBlock(scope: !157, file: !92, line: 122, column: 1)
!924 = !DILocation(line: 122, column: 1, scope: !925)
!925 = distinct !DILexicalBlock(scope: !923, file: !92, line: 122, column: 1)
!926 = !DILocation(line: 122, column: 1, scope: !927)
!927 = distinct !DILexicalBlock(scope: !154, file: !92, line: 122, column: 1)
!928 = !DILocation(line: 122, column: 1, scope: !929)
!929 = distinct !DILexicalBlock(scope: !927, file: !92, line: 122, column: 1)
!930 = !DILocation(line: 122, column: 1, scope: !931)
!931 = distinct !DILexicalBlock(scope: !929, file: !92, line: 122, column: 1)
!932 = !DILocation(line: 122, column: 1, scope: !933)
!933 = distinct !DILexicalBlock(scope: !138, file: !92, line: 122, column: 1)
!934 = !{i64 2152739346}
!935 = !DILocation(line: 122, column: 1, scope: !936)
!936 = distinct !DILexicalBlock(scope: !933, file: !92, line: 122, column: 1)
!937 = !DILocation(line: 122, column: 1, scope: !938)
!938 = distinct !DILexicalBlock(scope: !936, file: !92, line: 122, column: 1)
!939 = !{i64 2152739505}
!940 = distinct !DISubprogram(name: "arch_static_branch_jump", scope: !941, file: !941, line: 53, type: !942, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !968)
!941 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!942 = !DISubroutineType(types: !943)
!943 = !{!576, !944, !967}
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !947, line: 85, size: 128, elements: !948)
!947 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !946, file: !947, line: 86, baseType: !182, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !946, file: !947, line: 101, baseType: !951, size: 64, offset: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !946, file: !947, line: 101, size: 64, elements: !952)
!952 = !{!953, !954, !964}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !951, file: !947, line: 102, baseType: !33, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !951, file: !947, line: 103, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !947, line: 117, size: 128, elements: !957)
!957 = !{!958, !961, !962}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !956, file: !947, line: 118, baseType: !959, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !21, line: 20, baseType: !960)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !23, line: 26, baseType: !15)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !956, file: !947, line: 119, baseType: !959, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !956, file: !947, line: 120, baseType: !963, size: 64, offset: 64)
!963 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !951, file: !947, line: 104, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !947, line: 104, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!968 = !{!969, !970, !971}
!969 = !DILocalVariable(name: "key", arg: 1, scope: !940, file: !941, line: 53, type: !944)
!970 = !DILocalVariable(name: "branch", arg: 2, scope: !940, file: !941, line: 53, type: !967)
!971 = !DILabel(scope: !940, name: "l_yes", file: !941, line: 61)
!972 = !DILocation(line: 53, column: 79, scope: !940)
!973 = !DILocation(line: 53, column: 95, scope: !940)
!974 = !DILocation(line: 58, column: 13, scope: !940)
!975 = !DILocation(line: 58, column: 24, scope: !940)
!976 = !DILocation(line: 55, column: 2, scope: !940)
!977 = !{i64 854288, i64 854311, i64 2148339058, i64 2148339079, i64 2148339105, i64 2148339138, i64 2148339172, i64 2148339196}
!978 = !DILocation(line: 60, column: 2, scope: !940)
!979 = !DILocation(line: 61, column: 1, scope: !940)
!980 = !DILocation(line: 62, column: 2, scope: !940)
!981 = !DILocation(line: 63, column: 1, scope: !940)
!982 = distinct !DISubprogram(name: "atomic_read", scope: !857, file: !857, line: 30, type: !983, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !987)
!983 = !DISubroutineType(types: !984)
!984 = !{!15, !985}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!987 = !{!988}
!988 = !DILocalVariable(name: "v", arg: 1, scope: !982, file: !857, line: 30, type: !985)
!989 = !DILocation(line: 30, column: 29, scope: !982)
!990 = !DILocation(line: 32, column: 25, scope: !982)
!991 = !DILocation(line: 32, column: 2, scope: !982)
!992 = !DILocation(line: 33, column: 25, scope: !982)
!993 = !DILocation(line: 33, column: 9, scope: !982)
!994 = !DILocation(line: 33, column: 2, scope: !982)
!995 = distinct !DISubprogram(name: "atomic_cmpxchg", scope: !857, file: !857, line: 1191, type: !996, scopeLine: 1192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{!15, !860, !15, !15}
!998 = !{!999, !1000, !1001}
!999 = !DILocalVariable(name: "v", arg: 1, scope: !995, file: !857, line: 1191, type: !860)
!1000 = !DILocalVariable(name: "old", arg: 2, scope: !995, file: !857, line: 1191, type: !15)
!1001 = !DILocalVariable(name: "new", arg: 3, scope: !995, file: !857, line: 1191, type: !15)
!1002 = !DILocation(line: 1191, column: 26, scope: !995)
!1003 = !DILocation(line: 1191, column: 33, scope: !995)
!1004 = !DILocation(line: 1191, column: 42, scope: !995)
!1005 = !DILocation(line: 1193, column: 2, scope: !995)
!1006 = !DILocation(line: 1193, column: 2, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !995, file: !857, line: 1193, column: 2)
!1008 = !DILocation(line: 1194, column: 31, scope: !995)
!1009 = !DILocation(line: 1194, column: 2, scope: !995)
!1010 = !DILocation(line: 1195, column: 28, scope: !995)
!1011 = !DILocation(line: 1195, column: 31, scope: !995)
!1012 = !DILocation(line: 1195, column: 36, scope: !995)
!1013 = !DILocation(line: 1195, column: 9, scope: !995)
!1014 = !DILocation(line: 1195, column: 2, scope: !995)
!1015 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1016, file: !1016, line: 66, type: !1017, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1026)
!1016 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !1019, !1022}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !183, line: 61, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1024, line: 72, baseType: !1025)
!1024 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1024, line: 16, baseType: !33)
!1026 = !{!1027, !1028}
!1027 = !DILocalVariable(name: "v", arg: 1, scope: !1015, file: !1016, line: 66, type: !1019)
!1028 = !DILocalVariable(name: "size", arg: 2, scope: !1015, file: !1016, line: 66, type: !1022)
!1029 = !DILocation(line: 66, column: 73, scope: !1015)
!1030 = !DILocation(line: 66, column: 83, scope: !1015)
!1031 = !DILocation(line: 68, column: 19, scope: !1015)
!1032 = !DILocation(line: 68, column: 22, scope: !1015)
!1033 = !DILocation(line: 68, column: 2, scope: !1015)
!1034 = !DILocation(line: 69, column: 2, scope: !1015)
!1035 = !DILocation(line: 70, column: 1, scope: !1015)
!1036 = distinct !DISubprogram(name: "raw_atomic_read", scope: !1037, file: !1037, line: 442, type: !983, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1038)
!1037 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1038 = !{!1039}
!1039 = !DILocalVariable(name: "v", arg: 1, scope: !1036, file: !1037, line: 442, type: !985)
!1040 = !DILocation(line: 442, column: 33, scope: !1036)
!1041 = !DILocation(line: 444, column: 26, scope: !1036)
!1042 = !DILocation(line: 444, column: 9, scope: !1036)
!1043 = !DILocation(line: 444, column: 2, scope: !1036)
!1044 = distinct !DISubprogram(name: "kasan_check_read", scope: !1045, file: !1045, line: 40, type: !1046, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1048)
!1045 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!576, !1019, !7}
!1048 = !{!1049, !1050}
!1049 = !DILocalVariable(name: "p", arg: 1, scope: !1044, file: !1045, line: 40, type: !1019)
!1050 = !DILocalVariable(name: "size", arg: 2, scope: !1044, file: !1045, line: 40, type: !7)
!1051 = !DILocation(line: 40, column: 58, scope: !1044)
!1052 = !DILocation(line: 40, column: 74, scope: !1044)
!1053 = !DILocation(line: 42, column: 2, scope: !1044)
!1054 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1055, file: !1055, line: 229, type: !1056, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1058)
!1055 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !1019, !1022, !15}
!1058 = !{!1059, !1060, !1061}
!1059 = !DILocalVariable(name: "ptr", arg: 1, scope: !1054, file: !1055, line: 229, type: !1019)
!1060 = !DILocalVariable(name: "size", arg: 2, scope: !1054, file: !1055, line: 229, type: !1022)
!1061 = !DILocalVariable(name: "type", arg: 3, scope: !1054, file: !1055, line: 230, type: !15)
!1062 = !DILocation(line: 229, column: 60, scope: !1054)
!1063 = !DILocation(line: 229, column: 72, scope: !1054)
!1064 = !DILocation(line: 230, column: 15, scope: !1054)
!1065 = !DILocation(line: 230, column: 23, scope: !1054)
!1066 = distinct !DISubprogram(name: "arch_atomic_read", scope: !1067, file: !1067, line: 17, type: !983, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1068)
!1067 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1068 = !{!1069}
!1069 = !DILocalVariable(name: "v", arg: 1, scope: !1066, file: !1067, line: 17, type: !985)
!1070 = !DILocation(line: 17, column: 61, scope: !1066)
!1071 = !DILocation(line: 23, column: 9, scope: !1066)
!1072 = !DILocation(line: 23, column: 2, scope: !1066)
!1073 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1016, file: !1016, line: 94, type: !1017, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1074)
!1074 = !{!1075, !1076}
!1075 = !DILocalVariable(name: "v", arg: 1, scope: !1073, file: !1016, line: 94, type: !1019)
!1076 = !DILocalVariable(name: "size", arg: 2, scope: !1073, file: !1016, line: 94, type: !1022)
!1077 = !DILocation(line: 94, column: 79, scope: !1073)
!1078 = !DILocation(line: 94, column: 89, scope: !1073)
!1079 = !DILocation(line: 96, column: 20, scope: !1073)
!1080 = !DILocation(line: 96, column: 23, scope: !1073)
!1081 = !DILocation(line: 96, column: 2, scope: !1073)
!1082 = !DILocation(line: 97, column: 2, scope: !1073)
!1083 = !DILocation(line: 98, column: 1, scope: !1073)
!1084 = distinct !DISubprogram(name: "raw_atomic_cmpxchg", scope: !1037, file: !1037, line: 2001, type: !996, scopeLine: 2002, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1085)
!1085 = !{!1086, !1087, !1088}
!1086 = !DILocalVariable(name: "v", arg: 1, scope: !1084, file: !1037, line: 2001, type: !860)
!1087 = !DILocalVariable(name: "old", arg: 2, scope: !1084, file: !1037, line: 2001, type: !15)
!1088 = !DILocalVariable(name: "new", arg: 3, scope: !1084, file: !1037, line: 2001, type: !15)
!1089 = !DILocation(line: 2001, column: 30, scope: !1084)
!1090 = !DILocation(line: 2001, column: 37, scope: !1084)
!1091 = !DILocation(line: 2001, column: 46, scope: !1084)
!1092 = !DILocation(line: 2004, column: 29, scope: !1084)
!1093 = !DILocation(line: 2004, column: 32, scope: !1084)
!1094 = !DILocation(line: 2004, column: 37, scope: !1084)
!1095 = !DILocation(line: 2004, column: 9, scope: !1084)
!1096 = !DILocation(line: 2004, column: 2, scope: !1084)
!1097 = distinct !DISubprogram(name: "kasan_check_write", scope: !1045, file: !1045, line: 44, type: !1046, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1098)
!1098 = !{!1099, !1100}
!1099 = !DILocalVariable(name: "p", arg: 1, scope: !1097, file: !1045, line: 44, type: !1019)
!1100 = !DILocalVariable(name: "size", arg: 2, scope: !1097, file: !1045, line: 44, type: !7)
!1101 = !DILocation(line: 44, column: 59, scope: !1097)
!1102 = !DILocation(line: 44, column: 75, scope: !1097)
!1103 = !DILocation(line: 46, column: 2, scope: !1097)
!1104 = distinct !DISubprogram(name: "arch_atomic_cmpxchg", scope: !1067, file: !1067, line: 107, type: !996, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1105)
!1105 = !{!1106, !1107, !1108, !1109, !1111, !1112, !1113}
!1106 = !DILocalVariable(name: "v", arg: 1, scope: !1104, file: !1067, line: 107, type: !860)
!1107 = !DILocalVariable(name: "old", arg: 2, scope: !1104, file: !1067, line: 107, type: !15)
!1108 = !DILocalVariable(name: "new", arg: 3, scope: !1104, file: !1067, line: 107, type: !15)
!1109 = !DILocalVariable(name: "__ret", scope: !1110, file: !1067, line: 109, type: !15)
!1110 = distinct !DILexicalBlock(scope: !1104, file: !1067, line: 109, column: 9)
!1111 = !DILocalVariable(name: "__old", scope: !1110, file: !1067, line: 109, type: !15)
!1112 = !DILocalVariable(name: "__new", scope: !1110, file: !1067, line: 109, type: !15)
!1113 = !DILocalVariable(name: "__ptr", scope: !1110, file: !1067, line: 109, type: !39)
!1114 = !DILocation(line: 107, column: 58, scope: !1104)
!1115 = !DILocation(line: 107, column: 65, scope: !1104)
!1116 = !DILocation(line: 107, column: 74, scope: !1104)
!1117 = !DILocation(line: 109, column: 9, scope: !1110)
!1118 = !{i64 2148396238, i64 2148396277, i64 2148396298, i64 2148396335, i64 2148396358, i64 2148396367}
!1119 = !DILocation(line: 109, column: 9, scope: !1104)
!1120 = !DILocation(line: 109, column: 2, scope: !1104)
!1121 = distinct !DISubprogram(name: "rep_nop", scope: !614, file: !614, line: 11, type: !615, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1122 = !DILocation(line: 13, column: 2, scope: !1121)
!1123 = !{i64 1943497}
!1124 = !DILocation(line: 14, column: 1, scope: !1121)
!1125 = distinct !DISubprogram(name: "static_key_false", scope: !947, file: !947, line: 205, type: !1126, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1128)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!576, !945}
!1128 = !{!1129}
!1129 = !DILocalVariable(name: "key", arg: 1, scope: !1125, file: !947, line: 205, type: !945)
!1130 = !DILocation(line: 205, column: 65, scope: !1125)
!1131 = !DILocation(line: 207, column: 28, scope: !1125)
!1132 = !DILocation(line: 207, column: 9, scope: !1125)
!1133 = !DILocation(line: 207, column: 2, scope: !1125)
!1134 = distinct !DISubprogram(name: "cpu_online", scope: !63, file: !63, line: 1080, type: !1135, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!576, !7}
!1137 = !{!1138}
!1138 = !DILocalVariable(name: "cpu", arg: 1, scope: !1134, file: !63, line: 1080, type: !7)
!1139 = !DILocation(line: 1080, column: 44, scope: !1134)
!1140 = !DILocation(line: 1082, column: 26, scope: !1134)
!1141 = !DILocation(line: 1082, column: 9, scope: !1134)
!1142 = !DILocation(line: 1082, column: 2, scope: !1134)
!1143 = distinct !DISubprogram(name: "__preempt_count_add", scope: !1144, file: !1144, line: 78, type: !1145, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1147)
!1144 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !15}
!1147 = !{!1148, !1149, !1151}
!1148 = !DILocalVariable(name: "val", arg: 1, scope: !1143, file: !1144, line: 78, type: !15)
!1149 = !DILocalVariable(name: "pao_ID__", scope: !1150, file: !1144, line: 80, type: !259)
!1150 = distinct !DILexicalBlock(scope: !1143, file: !1144, line: 80, column: 2)
!1151 = !DILocalVariable(name: "pto_val__", scope: !1152, file: !1144, line: 80, type: !41)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !1144, line: 80, column: 2)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !1144, line: 80, column: 2)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !1144, line: 80, column: 2)
!1155 = !DILocation(line: 78, column: 53, scope: !1143)
!1156 = !DILocation(line: 80, column: 2, scope: !1143)
!1157 = !DILocation(line: 80, column: 2, scope: !1150)
!1158 = !DILocation(line: 80, column: 2, scope: !1154)
!1159 = !DILocation(line: 80, column: 2, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1154, file: !1144, line: 80, column: 2)
!1161 = !{i64 2149474711}
!1162 = !DILocation(line: 80, column: 2, scope: !1153)
!1163 = !DILocation(line: 80, column: 2, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1153, file: !1144, line: 80, column: 2)
!1165 = !{i64 2149475006}
!1166 = !DILocation(line: 80, column: 2, scope: !1152)
!1167 = !{i64 2149475711}
!1168 = !DILocation(line: 81, column: 1, scope: !1143)
!1169 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !1144, file: !1144, line: 93, type: !1170, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1172)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!576}
!1172 = !{!1173}
!1173 = !DILocalVariable(name: "c", scope: !1174, file: !1144, line: 95, type: !576)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !1144, line: 95, column: 9)
!1175 = !DILocation(line: 95, column: 9, scope: !1174)
!1176 = !{i64 2149479067, i64 2149479160}
!1177 = !DILocation(line: 95, column: 9, scope: !1169)
!1178 = !DILocation(line: 95, column: 2, scope: !1169)
!1179 = distinct !DISubprogram(name: "arch_static_branch", scope: !941, file: !941, line: 25, type: !1180, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!576, !945, !576}
!1182 = !{!1183, !1184, !1185}
!1183 = !DILocalVariable(name: "key", arg: 1, scope: !1179, file: !941, line: 25, type: !945)
!1184 = !DILocalVariable(name: "branch", arg: 2, scope: !1179, file: !941, line: 25, type: !576)
!1185 = !DILabel(scope: !1179, name: "l_yes", file: !941, line: 33)
!1186 = !DILocation(line: 25, column: 67, scope: !1179)
!1187 = !DILocation(line: 25, column: 77, scope: !1179)
!1188 = !DILocation(line: 30, column: 13, scope: !1179)
!1189 = !DILocation(line: 30, column: 28, scope: !1179)
!1190 = !DILocation(line: 30, column: 26, scope: !1179)
!1191 = !DILocation(line: 27, column: 2, scope: !1179)
!1192 = !{i64 853678, i64 853722, i64 2148338405, i64 2148338426, i64 2148338452, i64 2148338485, i64 2148338519, i64 2148338543}
!1193 = !DILocation(line: 32, column: 2, scope: !1179)
!1194 = !DILocation(line: 33, column: 1, scope: !1179)
!1195 = !DILocation(line: 34, column: 2, scope: !1179)
!1196 = !DILocation(line: 35, column: 1, scope: !1179)
!1197 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !63, file: !63, line: 502, type: !1198, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1200)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!576, !15, !60}
!1200 = !{!1201, !1202}
!1201 = !DILocalVariable(name: "cpu", arg: 1, scope: !1197, file: !63, line: 502, type: !15)
!1202 = !DILocalVariable(name: "cpumask", arg: 2, scope: !1197, file: !63, line: 502, type: !60)
!1203 = !DILocation(line: 502, column: 50, scope: !1197)
!1204 = !DILocation(line: 502, column: 77, scope: !1197)
!1205 = !DILocation(line: 504, column: 9, scope: !1197)
!1206 = !DILocation(line: 504, column: 2, scope: !1197)
!1207 = distinct !DISubprogram(name: "_test_bit", scope: !1208, file: !1208, line: 139, type: !1209, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1214)
!1208 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!576, !33, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!1214 = !{!1215, !1216}
!1215 = !DILocalVariable(name: "nr", arg: 1, scope: !1207, file: !1208, line: 139, type: !33)
!1216 = !DILocalVariable(name: "addr", arg: 2, scope: !1207, file: !1208, line: 139, type: !1211)
!1217 = !DILocation(line: 139, column: 25, scope: !1207)
!1218 = !DILocation(line: 139, column: 59, scope: !1207)
!1219 = !DILocation(line: 141, column: 25, scope: !1207)
!1220 = !DILocation(line: 141, column: 32, scope: !1207)
!1221 = !DILocation(line: 141, column: 30, scope: !1207)
!1222 = !DILocation(line: 141, column: 2, scope: !1207)
!1223 = !DILocation(line: 142, column: 23, scope: !1207)
!1224 = !DILocation(line: 142, column: 27, scope: !1207)
!1225 = !DILocation(line: 142, column: 9, scope: !1207)
!1226 = !DILocation(line: 142, column: 2, scope: !1207)
!1227 = distinct !DISubprogram(name: "cpumask_check", scope: !63, file: !63, line: 148, type: !1228, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1230)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!7, !7}
!1230 = !{!1231}
!1231 = !DILocalVariable(name: "cpu", arg: 1, scope: !1227, file: !63, line: 148, type: !7)
!1232 = !DILocation(line: 148, column: 64, scope: !1227)
!1233 = !DILocation(line: 150, column: 20, scope: !1227)
!1234 = !DILocation(line: 150, column: 2, scope: !1227)
!1235 = !DILocation(line: 151, column: 9, scope: !1227)
!1236 = !DILocation(line: 151, column: 2, scope: !1227)
!1237 = distinct !DISubprogram(name: "arch_test_bit", scope: !1238, file: !1238, line: 237, type: !1209, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1239)
!1238 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1239 = !{!1240, !1241}
!1240 = !DILocalVariable(name: "nr", arg: 1, scope: !1237, file: !1238, line: 237, type: !33)
!1241 = !DILocalVariable(name: "addr", arg: 2, scope: !1237, file: !1238, line: 237, type: !1211)
!1242 = !DILocation(line: 237, column: 29, scope: !1237)
!1243 = !DILocation(line: 237, column: 63, scope: !1237)
!1244 = !DILocation(line: 239, column: 30, scope: !1237)
!1245 = !DILocation(line: 239, column: 9, scope: !1237)
!1246 = !DILocation(line: 239, column: 54, scope: !1237)
!1247 = !DILocation(line: 239, column: 58, scope: !1237)
!1248 = !DILocation(line: 239, column: 36, scope: !1237)
!1249 = !DILocation(line: 240, column: 26, scope: !1237)
!1250 = !DILocation(line: 240, column: 30, scope: !1237)
!1251 = !DILocation(line: 240, column: 8, scope: !1237)
!1252 = !DILocation(line: 239, column: 2, scope: !1237)
!1253 = distinct !DISubprogram(name: "constant_test_bit", scope: !1238, file: !1238, line: 204, type: !1254, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!576, !963, !1211}
!1256 = !{!1257, !1258}
!1257 = !DILocalVariable(name: "nr", arg: 1, scope: !1253, file: !1238, line: 204, type: !963)
!1258 = !DILocalVariable(name: "addr", arg: 2, scope: !1253, file: !1238, line: 204, type: !1211)
!1259 = !DILocation(line: 204, column: 52, scope: !1253)
!1260 = !DILocation(line: 204, column: 86, scope: !1253)
!1261 = !DILocation(line: 206, column: 19, scope: !1253)
!1262 = !DILocation(line: 206, column: 22, scope: !1253)
!1263 = !DILocation(line: 206, column: 15, scope: !1253)
!1264 = !DILocation(line: 207, column: 4, scope: !1253)
!1265 = !DILocation(line: 207, column: 9, scope: !1253)
!1266 = !DILocation(line: 207, column: 12, scope: !1253)
!1267 = !DILocation(line: 206, column: 44, scope: !1253)
!1268 = !DILocation(line: 207, column: 37, scope: !1253)
!1269 = !DILocation(line: 206, column: 2, scope: !1253)
!1270 = distinct !DISubprogram(name: "variable_test_bit", scope: !1238, file: !1238, line: 224, type: !1254, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1271)
!1271 = !{!1272, !1273, !1274}
!1272 = !DILocalVariable(name: "nr", arg: 1, scope: !1270, file: !1238, line: 224, type: !963)
!1273 = !DILocalVariable(name: "addr", arg: 2, scope: !1270, file: !1238, line: 224, type: !1211)
!1274 = !DILocalVariable(name: "oldbit", scope: !1270, file: !1238, line: 226, type: !576)
!1275 = !DILocation(line: 224, column: 52, scope: !1270)
!1276 = !DILocation(line: 224, column: 86, scope: !1270)
!1277 = !DILocation(line: 226, column: 2, scope: !1270)
!1278 = !DILocation(line: 226, column: 7, scope: !1270)
!1279 = !DILocation(line: 231, column: 33, scope: !1270)
!1280 = !DILocation(line: 231, column: 46, scope: !1270)
!1281 = !DILocation(line: 228, column: 2, scope: !1270)
!1282 = !{i64 2147973678, i64 2147973752}
!1283 = !DILocation(line: 233, column: 9, scope: !1270)
!1284 = !DILocation(line: 234, column: 1, scope: !1270)
!1285 = !DILocation(line: 233, column: 2, scope: !1270)
!1286 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !63, file: !63, line: 140, type: !1287, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1289)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !7, !7}
!1289 = !{!1290, !1291}
!1290 = !DILocalVariable(name: "cpu", arg: 1, scope: !1286, file: !63, line: 140, type: !7)
!1291 = !DILocalVariable(name: "bits", arg: 2, scope: !1286, file: !63, line: 140, type: !7)
!1292 = !DILocation(line: 140, column: 60, scope: !1286)
!1293 = !DILocation(line: 140, column: 78, scope: !1286)
!1294 = !DILocation(line: 145, column: 1, scope: !1286)
!1295 = distinct !DISubprogram(name: "atomic_try_cmpxchg_acquire", scope: !857, file: !857, line: 1292, type: !858, scopeLine: 1293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1296)
!1296 = !{!1297, !1298, !1299}
!1297 = !DILocalVariable(name: "v", arg: 1, scope: !1295, file: !857, line: 1292, type: !860)
!1298 = !DILocalVariable(name: "old", arg: 2, scope: !1295, file: !857, line: 1292, type: !32)
!1299 = !DILocalVariable(name: "new", arg: 3, scope: !1295, file: !857, line: 1292, type: !15)
!1300 = !DILocation(line: 1292, column: 38, scope: !1295)
!1301 = !DILocation(line: 1292, column: 46, scope: !1295)
!1302 = !DILocation(line: 1292, column: 55, scope: !1295)
!1303 = !DILocation(line: 1294, column: 31, scope: !1295)
!1304 = !DILocation(line: 1294, column: 2, scope: !1295)
!1305 = !DILocation(line: 1295, column: 31, scope: !1295)
!1306 = !DILocation(line: 1295, column: 2, scope: !1295)
!1307 = !DILocation(line: 1296, column: 40, scope: !1295)
!1308 = !DILocation(line: 1296, column: 43, scope: !1295)
!1309 = !DILocation(line: 1296, column: 48, scope: !1295)
!1310 = !DILocation(line: 1296, column: 9, scope: !1295)
!1311 = !DILocation(line: 1296, column: 2, scope: !1295)
!1312 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_acquire", scope: !1037, file: !1037, line: 2142, type: !858, scopeLine: 2143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DILocalVariable(name: "v", arg: 1, scope: !1312, file: !1037, line: 2142, type: !860)
!1315 = !DILocalVariable(name: "old", arg: 2, scope: !1312, file: !1037, line: 2142, type: !32)
!1316 = !DILocalVariable(name: "new", arg: 3, scope: !1312, file: !1037, line: 2142, type: !15)
!1317 = !DILocation(line: 2142, column: 42, scope: !1312)
!1318 = !DILocation(line: 2142, column: 50, scope: !1312)
!1319 = !DILocation(line: 2142, column: 59, scope: !1312)
!1320 = !DILocation(line: 2151, column: 33, scope: !1312)
!1321 = !DILocation(line: 2151, column: 36, scope: !1312)
!1322 = !DILocation(line: 2151, column: 41, scope: !1312)
!1323 = !DILocation(line: 2151, column: 9, scope: !1312)
!1324 = !DILocation(line: 2151, column: 2, scope: !1312)
!1325 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !1067, file: !1067, line: 113, type: !858, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1332, !1333, !1334, !1335}
!1327 = !DILocalVariable(name: "v", arg: 1, scope: !1325, file: !1067, line: 113, type: !860)
!1328 = !DILocalVariable(name: "old", arg: 2, scope: !1325, file: !1067, line: 113, type: !32)
!1329 = !DILocalVariable(name: "new", arg: 3, scope: !1325, file: !1067, line: 113, type: !15)
!1330 = !DILocalVariable(name: "success", scope: !1331, file: !1067, line: 115, type: !576)
!1331 = distinct !DILexicalBlock(scope: !1325, file: !1067, line: 115, column: 9)
!1332 = !DILocalVariable(name: "_old", scope: !1331, file: !1067, line: 115, type: !32)
!1333 = !DILocalVariable(name: "__old", scope: !1331, file: !1067, line: 115, type: !15)
!1334 = !DILocalVariable(name: "__new", scope: !1331, file: !1067, line: 115, type: !15)
!1335 = !DILocalVariable(name: "__ptr", scope: !1331, file: !1067, line: 115, type: !39)
!1336 = !DILocation(line: 113, column: 63, scope: !1325)
!1337 = !DILocation(line: 113, column: 71, scope: !1325)
!1338 = !DILocation(line: 113, column: 80, scope: !1325)
!1339 = !DILocation(line: 115, column: 9, scope: !1331)
!1340 = !{i64 2148399333, i64 2148399372, i64 2148399393, i64 2148399430, i64 2148399453, i64 2148399462, i64 2148399760}
!1341 = !DILocation(line: 115, column: 9, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1331, file: !1067, line: 115, column: 9)
!1343 = !DILocation(line: 115, column: 9, scope: !1325)
!1344 = !DILocation(line: 115, column: 2, scope: !1325)
!1345 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_relaxed", scope: !1037, file: !1037, line: 2207, type: !858, scopeLine: 2208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1346)
!1346 = !{!1347, !1348, !1349}
!1347 = !DILocalVariable(name: "v", arg: 1, scope: !1345, file: !1037, line: 2207, type: !860)
!1348 = !DILocalVariable(name: "old", arg: 2, scope: !1345, file: !1037, line: 2207, type: !32)
!1349 = !DILocalVariable(name: "new", arg: 3, scope: !1345, file: !1037, line: 2207, type: !15)
!1350 = !DILocation(line: 2207, column: 42, scope: !1345)
!1351 = !DILocation(line: 2207, column: 50, scope: !1345)
!1352 = !DILocation(line: 2207, column: 59, scope: !1345)
!1353 = !DILocation(line: 2212, column: 33, scope: !1345)
!1354 = !DILocation(line: 2212, column: 36, scope: !1345)
!1355 = !DILocation(line: 2212, column: 41, scope: !1345)
!1356 = !DILocation(line: 2212, column: 9, scope: !1345)
!1357 = !DILocation(line: 2212, column: 2, scope: !1345)
