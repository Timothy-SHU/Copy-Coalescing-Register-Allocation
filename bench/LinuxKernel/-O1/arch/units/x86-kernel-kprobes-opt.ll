; ModuleID = 'arch/x86/kernel/kprobes/opt.c'
source_filename = "arch/x86/kernel/kprobes/opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".pushsection .rodata"
module asm "optprobe_template_func:"
module asm ".global optprobe_template_entry"
module asm "optprobe_template_entry:"
module asm "       pushq $(3*8)"
module asm "\09pushq %rsp"
module asm "\09pushfq"
module asm ".global optprobe_template_clac"
module asm "optprobe_template_clac:"
module asm " .byte 0x0f,0x1f,0x00 ; \09subq $24, %rsp"
module asm "\09pushq %rdi"
module asm "\09pushq %rsi"
module asm "\09pushq %rdx"
module asm "\09pushq %rcx"
module asm "\09pushq %rax"
module asm "\09pushq %r8"
module asm "\09pushq %r9"
module asm "\09pushq %r10"
module asm "\09pushq %r11"
module asm "\09pushq %rbx"
module asm "\09pushq %rbp"
module asm "\09pushq %r12"
module asm "\09pushq %r13"
module asm "\09pushq %r14"
module asm "\09pushq %r15"
module asm "\09movq %rsp, %rsi"
module asm ".global optprobe_template_val"
module asm "optprobe_template_val:"
module asm " .byte 0x0f,0x1f,0x44,0x00,0x00 ;  .byte 0x0f,0x1f,0x44,0x00,0x00 ; .global optprobe_template_call"
module asm "optprobe_template_call:"
module asm " .byte 0x0f,0x1f,0x44,0x00,0x00 ; \09movq 18*8(%rsp), %rdx"
module asm "\09movq %rdx, 20*8(%rsp)"
module asm "\09popq %r15"
module asm "\09popq %r14"
module asm "\09popq %r13"
module asm "\09popq %r12"
module asm "\09popq %rbp"
module asm "\09popq %rbx"
module asm "\09popq %r11"
module asm "\09popq %r10"
module asm "\09popq %r9"
module asm "\09popq %r8"
module asm "\09popq %rax"
module asm "\09popq %rcx"
module asm "\09popq %rdx"
module asm "\09popq %rsi"
module asm "\09popq %rdi"
module asm "\09addq $24, %rsp"
module asm "\09addq $16, %rsp"
module asm "\09popfq"
module asm ".global optprobe_template_end"
module asm "optprobe_template_end:"
module asm ".popsection"

%struct.static_call_key = type { ptr, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.pcpu_hot = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6, [16 x i8] }
%struct.anon.6 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.kprobe_ctlblk = type { i64, i64, i64, %struct.prev_kprobe }
%struct.prev_kprobe = type { ptr, i64, i64, i64 }
%struct.kprobe_insn_cache = type { %struct.mutex, ptr, ptr, ptr, %struct.list_head, i64, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon.13, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.15, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.13 = type { i32 }
%union.anon.15 = type { i64, [88 x i8] }
%struct.optimized_kprobe = type { %struct.kprobe, %struct.list_head, %struct.arch_optimized_insn }
%struct.kprobe = type { %struct.hlist_node, %struct.list_head, i64, ptr, ptr, i32, ptr, ptr, i8, %struct.arch_specific_insn, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.arch_specific_insn = type { ptr, i8, i8, %union.anon, i32, ptr, i32 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i8, i8 }
%struct.arch_optimized_insn = type { [4 x i8], ptr, i64 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.2, i64, i64, %union.anon.3 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%struct.insn = type { %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %union.anon.11, %union.anon.12, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.insn_field = type { %union.anon.10, i8, i8 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { %struct.insn_field }
%union.anon.12 = type { %struct.insn_field }

@__func_stack_frame_non_standard_optprobe_template_func = internal global ptr @optprobe_template_func, section ".discard.func_stack_frame_non_standard", align 8, !dbg !0
@_kbl_addr_optimized_callback = internal global i64 ptrtoint (ptr @optimized_callback to i64), section "_kprobe_blacklist", align 8, !dbg !210
@optprobe_template_end = external dso_local global [0 x i8], align 1
@optprobe_template_entry = external dso_local global [0 x i8], align 1
@optprobe_template_clac = external dso_local global [0 x i8], align 1
@optprobe_template_val = external dso_local global [0 x i8], align 1
@optprobe_template_call = external dso_local global [0 x i8], align 1
@.str = private unnamed_addr constant [30 x i8] c"arch/x86/kernel/kprobes/opt.c\00", align 1, !dbg !212
@__const.arch_unoptimize_kprobe.new = private unnamed_addr constant [5 x i8] c"\CC\00\00\00\00", align 1
@_kbl_addr_setup_detour_execution = internal global i64 ptrtoint (ptr @setup_detour_execution to i64), section "_kprobe_blacklist", align 8, !dbg !217
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1, !dbg !219
@current_kprobe = external dso_local global ptr, section ".data..percpu", align 8
@optimized_callback.__UNIQUE_ID___addressable___SCK__preempt_schedule318 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !224
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !249
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@kprobe_ctlblk = external dso_local global %struct.kprobe_ctlblk, section ".data..percpu", align 8
@kprobe_optinsn_slots = external dso_local global %struct.kprobe_insn_cache, align 8
@__entry_text_start = external dso_local global [0 x i8], align 1
@__entry_text_end = external dso_local global [0 x i8], align 1
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !254
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__func_stack_frame_non_standard_optprobe_template_func, ptr @_kbl_addr_optimized_callback, ptr @_kbl_addr_setup_detour_execution, ptr @optimized_callback.__UNIQUE_ID___addressable___SCK__preempt_schedule318], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__recover_optprobed_insn(ptr noundef %buf, i64 noundef %addr) #0 align 16 !dbg !269 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %op = alloca ptr, align 8
  %kp = alloca ptr, align 8
  %offs = alloca i64, align 8
  %i = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !273, metadata !DIExpression()), !dbg !287
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !274, metadata !DIExpression()), !dbg !288
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #17, !dbg !289
  call void @llvm.dbg.declare(metadata ptr %op, metadata !275, metadata !DIExpression()), !dbg !290
  call void @llvm.lifetime.start.p0(i64 8, ptr %kp) #17, !dbg !291
  call void @llvm.dbg.declare(metadata ptr %kp, metadata !276, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 8, ptr %offs) #17, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %offs, metadata !277, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %i, metadata !278, metadata !DIExpression()), !dbg !296
  store i32 0, ptr %i, align 4, !dbg !297
  br label %for.cond, !dbg !298

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !299
  %cmp = icmp slt i32 %0, 5, !dbg !300
  br i1 %cmp, label %for.body, label %for.end, !dbg !301

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %addr.addr, align 8, !dbg !302
  %2 = inttoptr i64 %1 to ptr, !dbg !303
  %3 = load i32, ptr %i, align 4, !dbg !304
  %idx.ext = sext i32 %3 to i64, !dbg !305
  %idx.neg = sub i64 0, %idx.ext, !dbg !305
  %add.ptr = getelementptr i8, ptr %2, i64 %idx.neg, !dbg !305
  %call = call ptr @get_kprobe(ptr noundef %add.ptr) #18, !dbg !306
  store ptr %call, ptr %kp, align 8, !dbg !307
  %4 = load ptr, ptr %kp, align 8, !dbg !308
  %tobool = icmp ne ptr %4, null, !dbg !308
  br i1 %tobool, label %land.lhs.true, label %if.end7, !dbg !309

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %kp, align 8, !dbg !310
  %call1 = call zeroext i1 @kprobe_optimized(ptr noundef %5) #18, !dbg !311
  br i1 %call1, label %if.then, label %if.end7, !dbg !312

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !313
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !279, metadata !DIExpression()), !dbg !313
  %6 = load ptr, ptr %kp, align 8, !dbg !313
  store ptr %6, ptr %__mptr, align 8, !dbg !313
  %7 = load ptr, ptr %__mptr, align 8, !dbg !313
  %add.ptr2 = getelementptr i8, ptr %7, i64 0, !dbg !313
  store ptr %add.ptr2, ptr %tmp, align 8, !dbg !313
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !314
  %8 = load ptr, ptr %tmp, align 8, !dbg !313
  store ptr %8, ptr %op, align 8, !dbg !315
  %9 = load ptr, ptr %op, align 8, !dbg !316
  %list = getelementptr inbounds %struct.optimized_kprobe, ptr %9, i32 0, i32 1, !dbg !318
  %call3 = call i32 @list_empty(ptr noundef %list) #18, !dbg !319
  %tobool4 = icmp ne i32 %call3, 0, !dbg !319
  br i1 %tobool4, label %if.then6, label %lor.lhs.false, !dbg !320

lor.lhs.false:                                    ; preds = %if.then
  %10 = load ptr, ptr %op, align 8, !dbg !321
  %call5 = call zeroext i1 @optprobe_queued_unopt(ptr noundef %10) #18, !dbg !322
  br i1 %call5, label %if.then6, label %if.end, !dbg !323

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  br label %found, !dbg !324

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end7, !dbg !325

if.end7:                                          ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc, !dbg !326

for.inc:                                          ; preds = %if.end7
  %11 = load i32, ptr %i, align 4, !dbg !327
  %inc = add i32 %11, 1, !dbg !327
  store i32 %inc, ptr %i, align 4, !dbg !327
  br label %for.cond, !dbg !328, !llvm.loop !329

for.end:                                          ; preds = %for.cond
  %12 = load i64, ptr %addr.addr, align 8, !dbg !333
  store i64 %12, ptr %retval, align 8, !dbg !334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !334

found:                                            ; preds = %if.then6
  call void @llvm.dbg.label(metadata !286), !dbg !335
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !336
  %14 = load i64, ptr %addr.addr, align 8, !dbg !338
  %15 = inttoptr i64 %14 to ptr, !dbg !339
  %call8 = call i64 @copy_from_kernel_nofault(ptr noundef %13, ptr noundef %15, i64 noundef 15) #18, !dbg !340
  %tobool9 = icmp ne i64 %call8, 0, !dbg !340
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !341

if.then10:                                        ; preds = %found
  store i64 0, ptr %retval, align 8, !dbg !342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !342

if.end11:                                         ; preds = %found
  %16 = load i64, ptr %addr.addr, align 8, !dbg !343
  %17 = load ptr, ptr %kp, align 8, !dbg !345
  %addr12 = getelementptr inbounds %struct.kprobe, ptr %17, i32 0, i32 3, !dbg !346
  %18 = load ptr, ptr %addr12, align 8, !dbg !346
  %19 = ptrtoint ptr %18 to i64, !dbg !347
  %cmp13 = icmp eq i64 %16, %19, !dbg !348
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !349

if.then14:                                        ; preds = %if.end11
  %20 = load ptr, ptr %kp, align 8, !dbg !350
  %opcode = getelementptr inbounds %struct.kprobe, ptr %20, i32 0, i32 8, !dbg !352
  %21 = load i8, ptr %opcode, align 8, !dbg !352
  %22 = load ptr, ptr %buf.addr, align 8, !dbg !353
  %arrayidx = getelementptr i8, ptr %22, i64 0, !dbg !353
  store i8 %21, ptr %arrayidx, align 1, !dbg !354
  %23 = load ptr, ptr %buf.addr, align 8, !dbg !355
  %add.ptr15 = getelementptr i8, ptr %23, i64 1, !dbg !356
  %24 = load ptr, ptr %op, align 8, !dbg !357
  %optinsn = getelementptr inbounds %struct.optimized_kprobe, ptr %24, i32 0, i32 2, !dbg !358
  %copied_insn = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn, i32 0, i32 0, !dbg !359
  %arraydecay = getelementptr inbounds [4 x i8], ptr %copied_insn, i64 0, i64 0, !dbg !360
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr15, ptr align 8 %arraydecay, i64 4, i1 false), !dbg !360
  br label %if.end23, !dbg !361

if.else:                                          ; preds = %if.end11
  %25 = load i64, ptr %addr.addr, align 8, !dbg !362
  %26 = load ptr, ptr %kp, align 8, !dbg !364
  %addr16 = getelementptr inbounds %struct.kprobe, ptr %26, i32 0, i32 3, !dbg !365
  %27 = load ptr, ptr %addr16, align 8, !dbg !365
  %28 = ptrtoint ptr %27 to i64, !dbg !366
  %sub = sub i64 %25, %28, !dbg !367
  %sub17 = sub i64 %sub, 1, !dbg !368
  store i64 %sub17, ptr %offs, align 8, !dbg !369
  %29 = load ptr, ptr %buf.addr, align 8, !dbg !370
  %30 = load ptr, ptr %op, align 8, !dbg !371
  %optinsn18 = getelementptr inbounds %struct.optimized_kprobe, ptr %30, i32 0, i32 2, !dbg !372
  %copied_insn19 = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn18, i32 0, i32 0, !dbg !373
  %arraydecay20 = getelementptr inbounds [4 x i8], ptr %copied_insn19, i64 0, i64 0, !dbg !371
  %31 = load i64, ptr %offs, align 8, !dbg !374
  %add.ptr21 = getelementptr i8, ptr %arraydecay20, i64 %31, !dbg !375
  %32 = load i64, ptr %offs, align 8, !dbg !376
  %sub22 = sub i64 4, %32, !dbg !377
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %add.ptr21, i64 %sub22, i1 false), !dbg !378
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then14
  %33 = load ptr, ptr %buf.addr, align 8, !dbg !379
  %34 = ptrtoint ptr %33 to i64, !dbg !380
  store i64 %34, ptr %retval, align 8, !dbg !381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !381

cleanup:                                          ; preds = %if.end23, %if.then10, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !382
  call void @llvm.lifetime.end.p0(i64 8, ptr %offs) #17, !dbg !382
  call void @llvm.lifetime.end.p0(i64 8, ptr %kp) #17, !dbg !382
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #17, !dbg !382
  %35 = load i64, ptr %retval, align 8, !dbg !382
  ret i64 %35, !dbg !382
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !383 dso_local ptr @get_kprobe(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kprobe_optimized(ptr noundef %p) #4 align 16 !dbg !386 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load ptr, ptr %p.addr, align 8, !dbg !394
  %flags = getelementptr inbounds %struct.kprobe, ptr %0, i32 0, i32 10, !dbg !395
  %1 = load i32, ptr %flags, align 8, !dbg !395
  %and = and i32 %1, 4, !dbg !396
  %tobool = icmp ne i32 %and, 0, !dbg !394
  ret i1 %tobool, !dbg !397
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #4 align 16 !dbg !398 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !405, metadata !DIExpression()), !dbg !406
  br label %do.body, !dbg !407

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !409

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !407
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !407
  %1 = load volatile ptr, ptr %next, align 8, !dbg !407
  store ptr %1, ptr %tmp, align 8, !dbg !409
  %2 = load ptr, ptr %tmp, align 8, !dbg !407
  %3 = load ptr, ptr %head.addr, align 8, !dbg !411
  %cmp = icmp eq ptr %2, %3, !dbg !412
  %conv = zext i1 %cmp to i32, !dbg !412
  ret i32 %conv, !dbg !413
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !414 dso_local zeroext i1 @optprobe_queued_unopt(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !417 dso_local i64 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @optprobe_template_func() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @optimized_callback(ptr noundef %op, ptr noundef %regs) #0 align 16 !dbg !226 {
entry:
  %op.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %kcb = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  %__vpp_verify19 = alloca ptr, align 8
  %pto_val__23 = alloca i64, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !230, metadata !DIExpression()), !dbg !421
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !231, metadata !DIExpression()), !dbg !422
  %0 = load ptr, ptr %op.addr, align 8, !dbg !423
  %kp = getelementptr inbounds %struct.optimized_kprobe, ptr %0, i32 0, i32 0, !dbg !425
  %call = call zeroext i1 @kprobe_disabled(ptr noundef %kp) #18, !dbg !426
  br i1 %call, label %if.then, label %if.end, !dbg !427

if.then:                                          ; preds = %entry
  br label %do.end39, !dbg !428

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !429

do.body:                                          ; preds = %if.end
  call void @__preempt_count_add(i32 noundef 1) #18, !dbg !430
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !430, !srcloc !432
  br label %do.end, !dbg !430

do.end:                                           ; preds = %do.body
  %call1 = call ptr @kprobe_running() #18, !dbg !433
  %tobool = icmp ne ptr %call1, null, !dbg !433
  br i1 %tobool, label %if.then2, label %if.else, !dbg !434

if.then2:                                         ; preds = %do.end
  %1 = load ptr, ptr %op.addr, align 8, !dbg !435
  %kp3 = getelementptr inbounds %struct.optimized_kprobe, ptr %1, i32 0, i32 0, !dbg !437
  call void @kprobes_inc_nmissed_count(ptr noundef %kp3) #18, !dbg !438
  br label %if.end28, !dbg !439

if.else:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %kcb) #17, !dbg !440
  call void @llvm.dbg.declare(metadata ptr %kcb, metadata !232, metadata !DIExpression()), !dbg !441
  %call4 = call ptr @get_kprobe_ctlblk() #18, !dbg !442
  store ptr %call4, ptr %kcb, align 8, !dbg !441
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !443
  %sp = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 19, !dbg !444
  %3 = load i64, ptr %sp, align 8, !dbg !445
  %add = add i64 %3, 8, !dbg !445
  store i64 %add, ptr %sp, align 8, !dbg !445
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !446
  %5 = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 17, !dbg !447
  store i16 16, ptr %5, align 8, !dbg !448
  %6 = load ptr, ptr %op.addr, align 8, !dbg !449
  %kp5 = getelementptr inbounds %struct.optimized_kprobe, ptr %6, i32 0, i32 0, !dbg !450
  %addr = getelementptr inbounds %struct.kprobe, ptr %kp5, i32 0, i32 3, !dbg !451
  %7 = load ptr, ptr %addr, align 8, !dbg !451
  %8 = ptrtoint ptr %7 to i64, !dbg !452
  %add6 = add i64 %8, 1, !dbg !453
  %9 = load ptr, ptr %regs.addr, align 8, !dbg !454
  %ip = getelementptr inbounds %struct.pt_regs, ptr %9, i32 0, i32 16, !dbg !455
  store i64 %add6, ptr %ip, align 8, !dbg !456
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !457
  %orig_ax = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 15, !dbg !458
  store i64 -1, ptr %orig_ax, align 8, !dbg !459
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #18, !dbg !460
  br label %do.body7, !dbg !460

do.body7:                                         ; preds = %if.else
  br label %do.body8, !dbg !461

do.body8:                                         ; preds = %do.body7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !462
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !235, metadata !DIExpression()), !dbg !462
  store ptr null, ptr %__vpp_verify, align 8, !dbg !462
  %11 = load ptr, ptr %__vpp_verify, align 8, !dbg !462
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !461
  br label %do.cond, !dbg !462

do.cond:                                          ; preds = %do.body8
  br label %do.end9, !dbg !462

do.end9:                                          ; preds = %do.cond
  br label %do.body10, !dbg !461

do.body10:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #17, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !241, metadata !DIExpression()), !dbg !463
  %12 = load ptr, ptr %op.addr, align 8, !dbg !463
  %kp11 = getelementptr inbounds %struct.optimized_kprobe, ptr %12, i32 0, i32 0, !dbg !463
  %13 = ptrtoint ptr %kp11 to i64, !dbg !463
  store i64 %13, ptr %pto_val__, align 8, !dbg !463
  %14 = load i64, ptr %pto_val__, align 8, !dbg !463
  call void asm "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @current_kprobe, i64 %14, ptr elementtype(ptr) @current_kprobe) #17, !dbg !463, !srcloc !464
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #17, !dbg !461
  br label %do.cond12, !dbg !463

do.cond12:                                        ; preds = %do.body10
  br label %do.end13, !dbg !463

do.end13:                                         ; preds = %do.cond12
  br label %do.cond14, !dbg !461

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !461

do.end15:                                         ; preds = %do.cond14
  %15 = load ptr, ptr %kcb, align 8, !dbg !465
  %kprobe_status = getelementptr inbounds %struct.kprobe_ctlblk, ptr %15, i32 0, i32 0, !dbg !466
  store i64 1, ptr %kprobe_status, align 8, !dbg !467
  %16 = load ptr, ptr %op.addr, align 8, !dbg !468
  %kp16 = getelementptr inbounds %struct.optimized_kprobe, ptr %16, i32 0, i32 0, !dbg !469
  %17 = load ptr, ptr %regs.addr, align 8, !dbg !470
  call void @opt_pre_handler(ptr noundef %kp16, ptr noundef %17) #18, !dbg !471
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #18, !dbg !472
  br label %do.body17, !dbg !472

do.body17:                                        ; preds = %do.end15
  br label %do.body18, !dbg !473

do.body18:                                        ; preds = %do.body17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify19) #17, !dbg !474
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify19, metadata !243, metadata !DIExpression()), !dbg !474
  store ptr null, ptr %__vpp_verify19, align 8, !dbg !474
  %18 = load ptr, ptr %__vpp_verify19, align 8, !dbg !474
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify19) #17, !dbg !473
  br label %do.cond20, !dbg !474

do.cond20:                                        ; preds = %do.body18
  br label %do.end21, !dbg !474

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !473

do.body22:                                        ; preds = %do.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__23) #17, !dbg !475
  call void @llvm.dbg.declare(metadata ptr %pto_val__23, metadata !247, metadata !DIExpression()), !dbg !475
  store i64 0, ptr %pto_val__23, align 8, !dbg !475
  %19 = load i64, ptr %pto_val__23, align 8, !dbg !475
  call void asm "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @current_kprobe, i64 %19, ptr elementtype(ptr) @current_kprobe) #17, !dbg !475, !srcloc !476
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__23) #17, !dbg !473
  br label %do.cond24, !dbg !475

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !475

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !473

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !473

do.end27:                                         ; preds = %do.cond26
  call void @llvm.lifetime.end.p0(i64 8, ptr %kcb) #17, !dbg !477
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %if.then2
  br label %do.body29, !dbg !478

do.body29:                                        ; preds = %if.end28
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !479, !srcloc !481
  %call30 = call zeroext i1 @__preempt_count_dec_and_test() #18, !dbg !482
  %lnot = xor i1 %call30, true, !dbg !482
  %lnot31 = xor i1 %lnot, true, !dbg !482
  %lnot.ext = zext i1 %lnot31 to i32, !dbg !482
  %conv = sext i32 %lnot.ext to i64, !dbg !482
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !482
  %tobool32 = icmp ne i64 %expval, 0, !dbg !482
  br i1 %tobool32, label %if.then33, label %if.end37, !dbg !479

if.then33:                                        ; preds = %do.body29
  br label %do.body34, !dbg !482

do.body34:                                        ; preds = %if.then33
  %20 = call i64 @llvm.read_register.i64(metadata !259), !dbg !484
  %21 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %20) #17, !dbg !484, !srcloc !486
  call void @llvm.write_register.i64(metadata !259, i64 %21), !dbg !484
  br label %do.end36, !dbg !484

do.end36:                                         ; preds = %do.body34
  br label %if.end37, !dbg !484

if.end37:                                         ; preds = %do.end36, %do.body29
  br label %do.end39, !dbg !479

do.end39:                                         ; preds = %if.then, %if.end37
  ret void, !dbg !487
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_check_optimized_kprobe(ptr noundef %op) #0 align 16 !dbg !488 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !492, metadata !DIExpression()), !dbg !495
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !496
  call void @llvm.dbg.declare(metadata ptr %i, metadata !493, metadata !DIExpression()), !dbg !497
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !498
  call void @llvm.dbg.declare(metadata ptr %p, metadata !494, metadata !DIExpression()), !dbg !499
  store i32 1, ptr %i, align 4, !dbg !500
  br label %for.cond, !dbg !502

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !503
  %conv = sext i32 %0 to i64, !dbg !503
  %1 = load ptr, ptr %op.addr, align 8, !dbg !505
  %optinsn = getelementptr inbounds %struct.optimized_kprobe, ptr %1, i32 0, i32 2, !dbg !506
  %size = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn, i32 0, i32 2, !dbg !507
  %2 = load i64, ptr %size, align 8, !dbg !507
  %cmp = icmp ult i64 %conv, %2, !dbg !508
  br i1 %cmp, label %for.body, label %for.end, !dbg !509

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %op.addr, align 8, !dbg !510
  %kp = getelementptr inbounds %struct.optimized_kprobe, ptr %3, i32 0, i32 0, !dbg !512
  %addr = getelementptr inbounds %struct.kprobe, ptr %kp, i32 0, i32 3, !dbg !513
  %4 = load ptr, ptr %addr, align 8, !dbg !513
  %5 = load i32, ptr %i, align 4, !dbg !514
  %idx.ext = sext i32 %5 to i64, !dbg !515
  %add.ptr = getelementptr i8, ptr %4, i64 %idx.ext, !dbg !515
  %call = call ptr @get_kprobe(ptr noundef %add.ptr) #18, !dbg !516
  store ptr %call, ptr %p, align 8, !dbg !517
  %6 = load ptr, ptr %p, align 8, !dbg !518
  %tobool = icmp ne ptr %6, null, !dbg !518
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !520

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %p, align 8, !dbg !521
  %call2 = call zeroext i1 @kprobe_disarmed(ptr noundef %7) #18, !dbg !522
  br i1 %call2, label %if.end, label %if.then, !dbg !523

if.then:                                          ; preds = %land.lhs.true
  store i32 -17, ptr %retval, align 4, !dbg !524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !524

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !525

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !dbg !526
  %inc = add i32 %8, 1, !dbg !526
  store i32 %inc, ptr %i, align 4, !dbg !526
  br label %for.cond, !dbg !527, !llvm.loop !528

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !530

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !531
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !531
  %9 = load i32, ptr %retval, align 4, !dbg !531
  ret i32 %9, !dbg !531
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !532 dso_local zeroext i1 @kprobe_disarmed(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_within_optimized_kprobe(ptr noundef %op, ptr noundef %addr) #0 align 16 !dbg !533 {
entry:
  %op.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !537, metadata !DIExpression()), !dbg !539
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !538, metadata !DIExpression()), !dbg !540
  %0 = load ptr, ptr %op.addr, align 8, !dbg !541
  %kp = getelementptr inbounds %struct.optimized_kprobe, ptr %0, i32 0, i32 0, !dbg !542
  %addr1 = getelementptr inbounds %struct.kprobe, ptr %kp, i32 0, i32 3, !dbg !543
  %1 = load ptr, ptr %addr1, align 8, !dbg !543
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !544
  %cmp = icmp ule ptr %1, %2, !dbg !545
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !546

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %op.addr, align 8, !dbg !547
  %kp2 = getelementptr inbounds %struct.optimized_kprobe, ptr %3, i32 0, i32 0, !dbg !548
  %addr3 = getelementptr inbounds %struct.kprobe, ptr %kp2, i32 0, i32 3, !dbg !549
  %4 = load ptr, ptr %addr3, align 8, !dbg !549
  %5 = load ptr, ptr %op.addr, align 8, !dbg !550
  %optinsn = getelementptr inbounds %struct.optimized_kprobe, ptr %5, i32 0, i32 2, !dbg !551
  %size = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn, i32 0, i32 2, !dbg !552
  %6 = load i64, ptr %size, align 8, !dbg !552
  %add.ptr = getelementptr i8, ptr %4, i64 %6, !dbg !553
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !554
  %cmp4 = icmp ugt ptr %add.ptr, %7, !dbg !555
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ], !dbg !556
  %land.ext = zext i1 %8 to i32, !dbg !546
  ret i32 %land.ext, !dbg !557
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_remove_optimized_kprobe(ptr noundef %op) #0 align 16 !dbg !558 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !562, metadata !DIExpression()), !dbg !563
  %0 = load ptr, ptr %op.addr, align 8, !dbg !564
  call void @__arch_remove_optimized_kprobe(ptr noundef %0, i32 noundef 1) #18, !dbg !565
  ret void, !dbg !566
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__arch_remove_optimized_kprobe(ptr noundef %op, i32 noundef %dirty) #0 align 16 !dbg !567 {
entry:
  %op.addr = alloca ptr, align 8
  %dirty.addr = alloca i32, align 4
  %slot = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !571, metadata !DIExpression()), !dbg !577
  store i32 %dirty, ptr %dirty.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dirty.addr, metadata !572, metadata !DIExpression()), !dbg !578
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #17, !dbg !579
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !573, metadata !DIExpression()), !dbg !580
  %0 = load ptr, ptr %op.addr, align 8, !dbg !581
  %optinsn = getelementptr inbounds %struct.optimized_kprobe, ptr %0, i32 0, i32 2, !dbg !582
  %insn = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn, i32 0, i32 1, !dbg !583
  %1 = load ptr, ptr %insn, align 8, !dbg !583
  store ptr %1, ptr %slot, align 8, !dbg !580
  %2 = load ptr, ptr %slot, align 8, !dbg !584
  %tobool = icmp ne ptr %2, null, !dbg !584
  br i1 %tobool, label %if.then, label %if.end10, !dbg !585

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #17, !dbg !586
  call void @llvm.dbg.declare(metadata ptr %len, metadata !574, metadata !DIExpression()), !dbg !587
  %3 = load ptr, ptr %op.addr, align 8, !dbg !588
  %optinsn1 = getelementptr inbounds %struct.optimized_kprobe, ptr %3, i32 0, i32 2, !dbg !589
  %size = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn1, i32 0, i32 2, !dbg !590
  %4 = load i64, ptr %size, align 8, !dbg !590
  %add = add i64 sub (i64 ptrtoint (ptr @optprobe_template_end to i64), i64 ptrtoint (ptr @optprobe_template_entry to i64)), %4, !dbg !591
  %add2 = add i64 %add, 5, !dbg !592
  %conv = trunc i64 %add2 to i32, !dbg !593
  store i32 %conv, ptr %len, align 4, !dbg !587
  %5 = load i32, ptr %dirty.addr, align 4, !dbg !594
  %tobool3 = icmp ne i32 %5, 0, !dbg !594
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !596

if.then4:                                         ; preds = %if.then
  %6 = load ptr, ptr %slot, align 8, !dbg !597
  %7 = load ptr, ptr %slot, align 8, !dbg !598
  %8 = load i32, ptr %len, align 4, !dbg !599
  %conv5 = sext i32 %8 to i64, !dbg !599
  call void @perf_event_text_poke(ptr noundef %6, ptr noundef %7, i64 noundef %conv5, ptr noundef null, i64 noundef 0) #18, !dbg !600
  br label %if.end, !dbg !600

if.end:                                           ; preds = %if.then4, %if.then
  %9 = load ptr, ptr %slot, align 8, !dbg !601
  %10 = load i32, ptr %dirty.addr, align 4, !dbg !602
  call void @free_optinsn_slot(ptr noundef %9, i32 noundef %10) #18, !dbg !603
  %11 = load ptr, ptr %op.addr, align 8, !dbg !604
  %optinsn6 = getelementptr inbounds %struct.optimized_kprobe, ptr %11, i32 0, i32 2, !dbg !605
  %insn7 = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn6, i32 0, i32 1, !dbg !606
  store ptr null, ptr %insn7, align 8, !dbg !607
  %12 = load ptr, ptr %op.addr, align 8, !dbg !608
  %optinsn8 = getelementptr inbounds %struct.optimized_kprobe, ptr %12, i32 0, i32 2, !dbg !609
  %size9 = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn8, i32 0, i32 2, !dbg !610
  store i64 0, ptr %size9, align 8, !dbg !611
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #17, !dbg !612
  br label %if.end10, !dbg !613

if.end10:                                         ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #17, !dbg !614
  ret void, !dbg !614
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_prepare_optimized_kprobe(ptr noundef %op, ptr noundef %__unused) #0 align 16 !dbg !615 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  %__unused.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %rel = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__x = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !619, metadata !DIExpression()), !dbg !631
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !620, metadata !DIExpression()), !dbg !632
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #17, !dbg !633
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !621, metadata !DIExpression()), !dbg !634
  store ptr null, ptr %buf, align 8, !dbg !634
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #17, !dbg !633
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !622, metadata !DIExpression()), !dbg !635
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !636
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !623, metadata !DIExpression()), !dbg !637
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #17, !dbg !636
  call void @llvm.dbg.declare(metadata ptr %len, metadata !624, metadata !DIExpression()), !dbg !638
  call void @llvm.lifetime.start.p0(i64 8, ptr %rel) #17, !dbg !639
  call void @llvm.dbg.declare(metadata ptr %rel, metadata !625, metadata !DIExpression()), !dbg !640
  %0 = load ptr, ptr %op.addr, align 8, !dbg !641
  %kp = getelementptr inbounds %struct.optimized_kprobe, ptr %0, i32 0, i32 0, !dbg !643
  %addr = getelementptr inbounds %struct.kprobe, ptr %kp, i32 0, i32 3, !dbg !644
  %1 = load ptr, ptr %addr, align 8, !dbg !644
  %2 = ptrtoint ptr %1 to i64, !dbg !645
  %call = call i32 @can_optimize(i64 noundef %2) #18, !dbg !646
  %tobool = icmp ne i32 %call, 0, !dbg !646
  br i1 %tobool, label %if.end, label %if.then, !dbg !647

if.then:                                          ; preds = %entry
  store i32 -84, ptr %retval, align 4, !dbg !648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !648

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kzalloc(i64 noundef add (i64 sub (i64 ptrtoint (ptr @optprobe_template_end to i64), i64 ptrtoint (ptr @optprobe_template_entry to i64)), i64 24), i32 noundef 3264) #19, !dbg !649
  store ptr %call1, ptr %buf, align 8, !dbg !650
  %3 = load ptr, ptr %buf, align 8, !dbg !651
  %tobool2 = icmp ne ptr %3, null, !dbg !651
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !653

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !654

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @get_optinsn_slot() #18, !dbg !655
  store ptr %call5, ptr %slot, align 8, !dbg !656
  %4 = load ptr, ptr %op.addr, align 8, !dbg !657
  %optinsn = getelementptr inbounds %struct.optimized_kprobe, ptr %4, i32 0, i32 2, !dbg !658
  %insn = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn, i32 0, i32 1, !dbg !659
  store ptr %call5, ptr %insn, align 8, !dbg !660
  %5 = load ptr, ptr %slot, align 8, !dbg !661
  %tobool6 = icmp ne ptr %5, null, !dbg !661
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !663

if.then7:                                         ; preds = %if.end4
  store i32 -12, ptr %ret, align 4, !dbg !664
  br label %out, !dbg !666

if.end8:                                          ; preds = %if.end4
  %6 = load ptr, ptr %slot, align 8, !dbg !667
  %7 = ptrtoint ptr %6 to i64, !dbg !668
  %8 = load ptr, ptr %op.addr, align 8, !dbg !669
  %kp9 = getelementptr inbounds %struct.optimized_kprobe, ptr %8, i32 0, i32 0, !dbg !670
  %addr10 = getelementptr inbounds %struct.kprobe, ptr %kp9, i32 0, i32 3, !dbg !671
  %9 = load ptr, ptr %addr10, align 8, !dbg !671
  %10 = ptrtoint ptr %9 to i64, !dbg !672
  %sub = sub i64 %7, %10, !dbg !673
  %add = add i64 %sub, 5, !dbg !674
  store i64 %add, ptr %rel, align 8, !dbg !675
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #17, !dbg !676
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !626, metadata !DIExpression()), !dbg !676
  %11 = load i64, ptr %rel, align 8, !dbg !676
  store i64 %11, ptr %__x, align 8, !dbg !676
  %12 = load i64, ptr %__x, align 8, !dbg !676
  %cmp = icmp slt i64 %12, 0, !dbg !676
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !676

cond.true:                                        ; preds = %if.end8
  %13 = load i64, ptr %__x, align 8, !dbg !676
  %sub11 = sub i64 0, %13, !dbg !676
  br label %cond.end, !dbg !676

cond.false:                                       ; preds = %if.end8
  %14 = load i64, ptr %__x, align 8, !dbg !676
  br label %cond.end, !dbg !676

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub11, %cond.true ], [ %14, %cond.false ], !dbg !676
  store i64 %cond, ptr %tmp, align 8, !dbg !676
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #17, !dbg !677
  %15 = load i64, ptr %tmp, align 8, !dbg !676
  %cmp12 = icmp sgt i64 %15, 2147483647, !dbg !678
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !679

if.then13:                                        ; preds = %cond.end
  store i32 -34, ptr %ret, align 4, !dbg !680
  br label %err, !dbg !682

if.end14:                                         ; preds = %cond.end
  %16 = load ptr, ptr %buf, align 8, !dbg !683
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 @optprobe_template_entry, i64 sub (i64 ptrtoint (ptr @optprobe_template_end to i64), i64 ptrtoint (ptr @optprobe_template_entry to i64)), i1 false), !dbg !684
  %17 = load ptr, ptr %buf, align 8, !dbg !685
  %add.ptr = getelementptr i8, ptr %17, i64 sub (i64 ptrtoint (ptr @optprobe_template_end to i64), i64 ptrtoint (ptr @optprobe_template_entry to i64)), !dbg !686
  %18 = load ptr, ptr %op.addr, align 8, !dbg !687
  %kp15 = getelementptr inbounds %struct.optimized_kprobe, ptr %18, i32 0, i32 0, !dbg !688
  %addr16 = getelementptr inbounds %struct.kprobe, ptr %kp15, i32 0, i32 3, !dbg !689
  %19 = load ptr, ptr %addr16, align 8, !dbg !689
  %20 = load ptr, ptr %slot, align 8, !dbg !690
  %add.ptr17 = getelementptr i8, ptr %20, i64 sub (i64 ptrtoint (ptr @optprobe_template_end to i64), i64 ptrtoint (ptr @optprobe_template_entry to i64)), !dbg !691
  %call18 = call i32 @copy_optimized_instructions(ptr noundef %add.ptr, ptr noundef %19, ptr noundef %add.ptr17) #18, !dbg !692
  store i32 %call18, ptr %ret, align 4, !dbg !693
  %21 = load i32, ptr %ret, align 4, !dbg !694
  %cmp19 = icmp slt i32 %21, 0, !dbg !696
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !697

if.then20:                                        ; preds = %if.end14
  br label %err, !dbg !698

if.end21:                                         ; preds = %if.end14
  %22 = load i32, ptr %ret, align 4, !dbg !699
  %conv = sext i32 %22 to i64, !dbg !699
  %23 = load ptr, ptr %op.addr, align 8, !dbg !700
  %optinsn22 = getelementptr inbounds %struct.optimized_kprobe, ptr %23, i32 0, i32 2, !dbg !701
  %size = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn22, i32 0, i32 2, !dbg !702
  store i64 %conv, ptr %size, align 8, !dbg !703
  %24 = load ptr, ptr %op.addr, align 8, !dbg !704
  %optinsn23 = getelementptr inbounds %struct.optimized_kprobe, ptr %24, i32 0, i32 2, !dbg !705
  %size24 = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn23, i32 0, i32 2, !dbg !706
  %25 = load i64, ptr %size24, align 8, !dbg !706
  %add25 = add i64 sub (i64 ptrtoint (ptr @optprobe_template_end to i64), i64 ptrtoint (ptr @optprobe_template_entry to i64)), %25, !dbg !707
  %conv26 = trunc i64 %add25 to i32, !dbg !708
  store i32 %conv26, ptr %len, align 4, !dbg !709
  %26 = load ptr, ptr %buf, align 8, !dbg !710
  %add.ptr27 = getelementptr i8, ptr %26, i64 sub (i64 ptrtoint (ptr @optprobe_template_clac to i64), i64 ptrtoint (ptr @optprobe_template_entry to i64)), !dbg !711
  call void @synthesize_clac(ptr noundef %add.ptr27) #18, !dbg !712
  %27 = load ptr, ptr %buf, align 8, !dbg !713
  %add.ptr28 = getelementptr i8, ptr %27, i64 sub (i64 ptrtoint (ptr @optprobe_template_val to i64), i64 ptrtoint (ptr @optprobe_template_entry to i64)), !dbg !714
  %28 = load ptr, ptr %op.addr, align 8, !dbg !715
  %29 = ptrtoint ptr %28 to i64, !dbg !716
  call void @synthesize_set_arg1(ptr noundef %add.ptr28, i64 noundef %29) #18, !dbg !717
  %30 = load ptr, ptr %buf, align 8, !dbg !718
  %add.ptr29 = getelementptr i8, ptr %30, i64 sub (i64 ptrtoint (ptr @optprobe_template_call to i64), i64 ptrtoint (ptr @optprobe_template_entry to i64)), !dbg !719
  %31 = load ptr, ptr %slot, align 8, !dbg !720
  %add.ptr30 = getelementptr i8, ptr %31, i64 sub (i64 ptrtoint (ptr @optprobe_template_call to i64), i64 ptrtoint (ptr @optprobe_template_entry to i64)), !dbg !721
  call void @synthesize_relcall(ptr noundef %add.ptr29, ptr noundef %add.ptr30, ptr noundef @optimized_callback) #18, !dbg !722
  %32 = load ptr, ptr %buf, align 8, !dbg !723
  %33 = load i32, ptr %len, align 4, !dbg !724
  %idx.ext = sext i32 %33 to i64, !dbg !725
  %add.ptr31 = getelementptr i8, ptr %32, i64 %idx.ext, !dbg !725
  %34 = load ptr, ptr %slot, align 8, !dbg !726
  %35 = load i32, ptr %len, align 4, !dbg !727
  %idx.ext32 = sext i32 %35 to i64, !dbg !728
  %add.ptr33 = getelementptr i8, ptr %34, i64 %idx.ext32, !dbg !728
  %36 = load ptr, ptr %op.addr, align 8, !dbg !729
  %kp34 = getelementptr inbounds %struct.optimized_kprobe, ptr %36, i32 0, i32 0, !dbg !730
  %addr35 = getelementptr inbounds %struct.kprobe, ptr %kp34, i32 0, i32 3, !dbg !731
  %37 = load ptr, ptr %addr35, align 8, !dbg !731
  %38 = load ptr, ptr %op.addr, align 8, !dbg !732
  %optinsn36 = getelementptr inbounds %struct.optimized_kprobe, ptr %38, i32 0, i32 2, !dbg !733
  %size37 = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn36, i32 0, i32 2, !dbg !734
  %39 = load i64, ptr %size37, align 8, !dbg !734
  %add.ptr38 = getelementptr i8, ptr %37, i64 %39, !dbg !735
  call void @synthesize_reljump(ptr noundef %add.ptr31, ptr noundef %add.ptr33, ptr noundef %add.ptr38) #18, !dbg !736
  %40 = load i32, ptr %len, align 4, !dbg !737
  %add39 = add i32 %40, 5, !dbg !737
  store i32 %add39, ptr %len, align 4, !dbg !737
  %41 = load ptr, ptr %slot, align 8, !dbg !738
  %42 = load ptr, ptr %buf, align 8, !dbg !739
  %43 = load i32, ptr %len, align 4, !dbg !740
  %conv40 = sext i32 %43 to i64, !dbg !740
  call void @perf_event_text_poke(ptr noundef %41, ptr noundef null, i64 noundef 0, ptr noundef %42, i64 noundef %conv40) #18, !dbg !741
  %44 = load ptr, ptr %slot, align 8, !dbg !742
  %45 = load ptr, ptr %buf, align 8, !dbg !743
  %46 = load i32, ptr %len, align 4, !dbg !744
  %conv41 = sext i32 %46 to i64, !dbg !744
  %call42 = call ptr @text_poke(ptr noundef %44, ptr noundef %45, i64 noundef %conv41) #18, !dbg !745
  store i32 0, ptr %ret, align 4, !dbg !746
  br label %out, !dbg !747

out:                                              ; preds = %err, %if.end21, %if.then7
  call void @llvm.dbg.label(metadata !629), !dbg !748
  %47 = load ptr, ptr %buf, align 8, !dbg !749
  call void @kfree(ptr noundef %47) #18, !dbg !750
  %48 = load i32, ptr %ret, align 4, !dbg !751
  store i32 %48, ptr %retval, align 4, !dbg !752
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !752

err:                                              ; preds = %if.then20, %if.then13
  call void @llvm.dbg.label(metadata !630), !dbg !753
  %49 = load ptr, ptr %op.addr, align 8, !dbg !754
  call void @__arch_remove_optimized_kprobe(ptr noundef %49, i32 noundef 0) #18, !dbg !755
  br label %out, !dbg !756

cleanup:                                          ; preds = %out, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rel) #17, !dbg !757
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #17, !dbg !757
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !757
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #17, !dbg !757
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #17, !dbg !757
  %50 = load i32, ptr %retval, align 4, !dbg !757
  ret i32 %50, !dbg !757
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @can_optimize(i64 noundef %paddr) #0 align 16 !dbg !758 {
entry:
  %retval = alloca i32, align 4
  %paddr.addr = alloca i64, align 8
  %addr = alloca i64, align 8
  %size = alloca i64, align 8
  %offset = alloca i64, align 8
  %insn = alloca %struct.insn, align 8
  %buf = alloca [15 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  %recovered_insn = alloca i64, align 8
  %ret = alloca i32, align 4
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !762, metadata !DIExpression()), !dbg !819
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #17, !dbg !820
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !763, metadata !DIExpression()), !dbg !821
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #17, !dbg !820
  call void @llvm.dbg.declare(metadata ptr %size, metadata !764, metadata !DIExpression()), !dbg !822
  store i64 0, ptr %size, align 8, !dbg !822
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #17, !dbg !820
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !765, metadata !DIExpression()), !dbg !823
  store i64 0, ptr %offset, align 8, !dbg !823
  call void @llvm.lifetime.start.p0(i64 112, ptr %insn) #17, !dbg !824
  call void @llvm.dbg.declare(metadata ptr %insn, metadata !766, metadata !DIExpression()), !dbg !825
  call void @llvm.lifetime.start.p0(i64 15, ptr %buf) #17, !dbg !826
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !812, metadata !DIExpression()), !dbg !827
  %0 = load i64, ptr %paddr.addr, align 8, !dbg !828
  %call = call i32 @kallsyms_lookup_size_offset(i64 noundef %0, ptr noundef %size, ptr noundef %offset) #18, !dbg !830
  %tobool = icmp ne i32 %call, 0, !dbg !830
  br i1 %tobool, label %if.end, label %if.then, !dbg !831

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !832

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %paddr.addr, align 8, !dbg !833
  %cmp = icmp uge i64 %1, ptrtoint (ptr @__entry_text_start to i64), !dbg !835
  br i1 %cmp, label %land.lhs.true, label %if.end3, !dbg !836

land.lhs.true:                                    ; preds = %if.end
  %2 = load i64, ptr %paddr.addr, align 8, !dbg !837
  %cmp1 = icmp ult i64 %2, ptrtoint (ptr @__entry_text_end to i64), !dbg !838
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !839

if.then2:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !840

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %3 = load i64, ptr %size, align 8, !dbg !841
  %4 = load i64, ptr %offset, align 8, !dbg !843
  %sub = sub i64 %3, %4, !dbg !844
  %cmp4 = icmp ult i64 %sub, 5, !dbg !845
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !846

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !847

if.end6:                                          ; preds = %if.end3
  %5 = load i64, ptr %paddr.addr, align 8, !dbg !848
  %6 = load i64, ptr %offset, align 8, !dbg !849
  %sub7 = sub i64 %5, %6, !dbg !850
  store i64 %sub7, ptr %addr, align 8, !dbg !851
  br label %while.cond, !dbg !852

while.cond:                                       ; preds = %cleanup.cont, %if.end6
  %7 = load i64, ptr %addr, align 8, !dbg !853
  %8 = load i64, ptr %paddr.addr, align 8, !dbg !854
  %9 = load i64, ptr %offset, align 8, !dbg !855
  %sub8 = sub i64 %8, %9, !dbg !856
  %10 = load i64, ptr %size, align 8, !dbg !857
  %add = add i64 %sub8, %10, !dbg !858
  %cmp9 = icmp ult i64 %7, %add, !dbg !859
  br i1 %cmp9, label %while.body, label %while.end, !dbg !852

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %recovered_insn) #17, !dbg !860
  call void @llvm.dbg.declare(metadata ptr %recovered_insn, metadata !816, metadata !DIExpression()), !dbg !861
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !818, metadata !DIExpression()), !dbg !863
  %11 = load i64, ptr %addr, align 8, !dbg !864
  %call10 = call ptr @search_exception_tables(i64 noundef %11) #18, !dbg !866
  %tobool11 = icmp ne ptr %call10, null, !dbg !866
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !867

if.then12:                                        ; preds = %while.body
  store i32 0, ptr %retval, align 4, !dbg !868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !868

if.end13:                                         ; preds = %while.body
  %arraydecay = getelementptr inbounds [15 x i8], ptr %buf, i64 0, i64 0, !dbg !869
  %12 = load i64, ptr %addr, align 8, !dbg !870
  %call14 = call i64 @recover_probed_instruction(ptr noundef %arraydecay, i64 noundef %12) #18, !dbg !871
  store i64 %call14, ptr %recovered_insn, align 8, !dbg !872
  %13 = load i64, ptr %recovered_insn, align 8, !dbg !873
  %tobool15 = icmp ne i64 %13, 0, !dbg !873
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !875

if.then16:                                        ; preds = %if.end13
  store i32 0, ptr %retval, align 4, !dbg !876
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !876

if.end17:                                         ; preds = %if.end13
  %14 = load i64, ptr %recovered_insn, align 8, !dbg !877
  %15 = inttoptr i64 %14 to ptr, !dbg !877
  %call18 = call i32 @insn_decode(ptr noundef %insn, ptr noundef %15, i32 noundef 15, i32 noundef 2) #18, !dbg !877
  store i32 %call18, ptr %ret, align 4, !dbg !878
  %16 = load i32, ptr %ret, align 4, !dbg !879
  %cmp19 = icmp slt i32 %16, 0, !dbg !881
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !882

if.then20:                                        ; preds = %if.end17
  store i32 0, ptr %retval, align 4, !dbg !883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !883

if.end21:                                         ; preds = %if.end17
  %17 = load i64, ptr %addr, align 8, !dbg !884
  %18 = inttoptr i64 %17 to ptr, !dbg !885
  %kaddr = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 15, !dbg !886
  store ptr %18, ptr %kaddr, align 8, !dbg !887
  %19 = load i64, ptr %addr, align 8, !dbg !888
  %length = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 13, !dbg !889
  %20 = load i8, ptr %length, align 2, !dbg !889
  %conv = zext i8 %20 to i64, !dbg !890
  %add22 = add i64 %19, %conv, !dbg !891
  %21 = inttoptr i64 %add22 to ptr, !dbg !892
  %next_byte = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 17, !dbg !893
  store ptr %21, ptr %next_byte, align 8, !dbg !894
  %22 = load i64, ptr %paddr.addr, align 8, !dbg !895
  %add23 = add i64 %22, 1, !dbg !897
  %call24 = call i32 @insn_jump_into_range(ptr noundef %insn, i64 noundef %add23, i32 noundef 4) #18, !dbg !898
  %tobool25 = icmp ne i32 %call24, 0, !dbg !898
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !899

if.then26:                                        ; preds = %if.end21
  store i32 0, ptr %retval, align 4, !dbg !900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !900

if.end27:                                         ; preds = %if.end21
  %length28 = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 13, !dbg !901
  %23 = load i8, ptr %length28, align 2, !dbg !901
  %conv29 = zext i8 %23 to i64, !dbg !902
  %24 = load i64, ptr %addr, align 8, !dbg !903
  %add30 = add i64 %24, %conv29, !dbg !903
  store i64 %add30, ptr %addr, align 8, !dbg !903
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !904
  br label %cleanup, !dbg !904

cleanup:                                          ; preds = %if.end27, %if.then26, %if.then20, %if.then16, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !904
  call void @llvm.lifetime.end.p0(i64 8, ptr %recovered_insn) #17, !dbg !904
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !852, !llvm.loop !905

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4, !dbg !906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !906

cleanup32:                                        ; preds = %while.end, %cleanup, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 15, ptr %buf) #17, !dbg !907
  call void @llvm.lifetime.end.p0(i64 112, ptr %insn) #17, !dbg !907
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #17, !dbg !907
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #17, !dbg !907
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #17, !dbg !907
  %25 = load i32, ptr %retval, align 4, !dbg !907
  ret i32 %25, !dbg !907
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !908 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !912, metadata !DIExpression()), !dbg !914
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !913, metadata !DIExpression()), !dbg !915
  %0 = load i64, ptr %size.addr, align 8, !dbg !916
  %1 = load i32, ptr %flags.addr, align 4, !dbg !917
  %or = or i32 %1, 256, !dbg !918
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !919
  ret ptr %call, !dbg !920
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_optinsn_slot() #4 align 16 !dbg !921 {
entry:
  %call = call ptr @__get_insn_slot(ptr noundef @kprobe_optinsn_slots) #18, !dbg !924
  ret ptr %call, !dbg !924
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @copy_optimized_instructions(ptr noundef %dest, ptr noundef %src, ptr noundef %real) #0 align 16 !dbg !925 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %real.addr = alloca ptr, align 8
  %insn = alloca %struct.insn, align 8
  %len = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !929, metadata !DIExpression()), !dbg !935
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !930, metadata !DIExpression()), !dbg !936
  store ptr %real, ptr %real.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %real.addr, metadata !931, metadata !DIExpression()), !dbg !937
  call void @llvm.lifetime.start.p0(i64 112, ptr %insn) #17, !dbg !938
  call void @llvm.dbg.declare(metadata ptr %insn, metadata !932, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #17, !dbg !940
  call void @llvm.dbg.declare(metadata ptr %len, metadata !933, metadata !DIExpression()), !dbg !941
  store i32 0, ptr %len, align 4, !dbg !941
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !940
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !934, metadata !DIExpression()), !dbg !942
  br label %while.cond, !dbg !943

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %len, align 4, !dbg !944
  %cmp = icmp slt i32 %0, 5, !dbg !945
  br i1 %cmp, label %while.body, label %while.end, !dbg !943

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !946
  %2 = load i32, ptr %len, align 4, !dbg !948
  %idx.ext = sext i32 %2 to i64, !dbg !949
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext, !dbg !949
  %3 = load ptr, ptr %src.addr, align 8, !dbg !950
  %4 = load i32, ptr %len, align 4, !dbg !951
  %idx.ext1 = sext i32 %4 to i64, !dbg !952
  %add.ptr2 = getelementptr i8, ptr %3, i64 %idx.ext1, !dbg !952
  %5 = load ptr, ptr %real.addr, align 8, !dbg !953
  %6 = load i32, ptr %len, align 4, !dbg !954
  %idx.ext3 = sext i32 %6 to i64, !dbg !955
  %add.ptr4 = getelementptr i8, ptr %5, i64 %idx.ext3, !dbg !955
  %call = call i32 @__copy_instruction(ptr noundef %add.ptr, ptr noundef %add.ptr2, ptr noundef %add.ptr4, ptr noundef %insn) #18, !dbg !956
  store i32 %call, ptr %ret, align 4, !dbg !957
  %7 = load i32, ptr %ret, align 4, !dbg !958
  %tobool = icmp ne i32 %7, 0, !dbg !958
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !960

lor.lhs.false:                                    ; preds = %while.body
  %8 = load ptr, ptr %src.addr, align 8, !dbg !961
  %9 = load i32, ptr %len, align 4, !dbg !962
  %idx.ext5 = sext i32 %9 to i64, !dbg !963
  %add.ptr6 = getelementptr i8, ptr %8, i64 %idx.ext5, !dbg !963
  %call7 = call i32 @can_boost(ptr noundef %insn, ptr noundef %add.ptr6) #18, !dbg !964
  %tobool8 = icmp ne i32 %call7, 0, !dbg !964
  br i1 %tobool8, label %if.end, label %if.then, !dbg !965

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i32 -22, ptr %retval, align 4, !dbg !966
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !966

if.end:                                           ; preds = %lor.lhs.false
  %10 = load i32, ptr %ret, align 4, !dbg !967
  %11 = load i32, ptr %len, align 4, !dbg !968
  %add = add i32 %11, %10, !dbg !968
  store i32 %add, ptr %len, align 4, !dbg !968
  br label %while.cond, !dbg !943, !llvm.loop !969

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %src.addr, align 8, !dbg !971
  %13 = load ptr, ptr %src.addr, align 8, !dbg !973
  %14 = load i32, ptr %len, align 4, !dbg !974
  %idx.ext9 = sext i32 %14 to i64, !dbg !975
  %add.ptr10 = getelementptr i8, ptr %13, i64 %idx.ext9, !dbg !975
  %add.ptr11 = getelementptr i8, ptr %add.ptr10, i64 -1, !dbg !976
  %call12 = call i32 @ftrace_text_reserved(ptr noundef %12, ptr noundef %add.ptr11) #18, !dbg !977
  %tobool13 = icmp ne i32 %call12, 0, !dbg !977
  br i1 %tobool13, label %if.then32, label %lor.lhs.false14, !dbg !978

lor.lhs.false14:                                  ; preds = %while.end
  %15 = load ptr, ptr %src.addr, align 8, !dbg !979
  %16 = load ptr, ptr %src.addr, align 8, !dbg !980
  %17 = load i32, ptr %len, align 4, !dbg !981
  %idx.ext15 = sext i32 %17 to i64, !dbg !982
  %add.ptr16 = getelementptr i8, ptr %16, i64 %idx.ext15, !dbg !982
  %add.ptr17 = getelementptr i8, ptr %add.ptr16, i64 -1, !dbg !983
  %call18 = call i32 @alternatives_text_reserved(ptr noundef %15, ptr noundef %add.ptr17) #18, !dbg !984
  %tobool19 = icmp ne i32 %call18, 0, !dbg !984
  br i1 %tobool19, label %if.then32, label %lor.lhs.false20, !dbg !985

lor.lhs.false20:                                  ; preds = %lor.lhs.false14
  %18 = load ptr, ptr %src.addr, align 8, !dbg !986
  %19 = load ptr, ptr %src.addr, align 8, !dbg !987
  %20 = load i32, ptr %len, align 4, !dbg !988
  %idx.ext21 = sext i32 %20 to i64, !dbg !989
  %add.ptr22 = getelementptr i8, ptr %19, i64 %idx.ext21, !dbg !989
  %add.ptr23 = getelementptr i8, ptr %add.ptr22, i64 -1, !dbg !990
  %call24 = call i32 @jump_label_text_reserved(ptr noundef %18, ptr noundef %add.ptr23) #18, !dbg !991
  %tobool25 = icmp ne i32 %call24, 0, !dbg !991
  br i1 %tobool25, label %if.then32, label %lor.lhs.false26, !dbg !992

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %21 = load ptr, ptr %src.addr, align 8, !dbg !993
  %22 = load ptr, ptr %src.addr, align 8, !dbg !994
  %23 = load i32, ptr %len, align 4, !dbg !995
  %idx.ext27 = sext i32 %23 to i64, !dbg !996
  %add.ptr28 = getelementptr i8, ptr %22, i64 %idx.ext27, !dbg !996
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i64 -1, !dbg !997
  %call30 = call i32 @static_call_text_reserved(ptr noundef %21, ptr noundef %add.ptr29) #18, !dbg !998
  %tobool31 = icmp ne i32 %call30, 0, !dbg !998
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !999

if.then32:                                        ; preds = %lor.lhs.false26, %lor.lhs.false20, %lor.lhs.false14, %while.end
  store i32 -16, ptr %retval, align 4, !dbg !1000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1000

if.end33:                                         ; preds = %lor.lhs.false26
  %24 = load i32, ptr %len, align 4, !dbg !1001
  store i32 %24, ptr %retval, align 4, !dbg !1002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1002

cleanup:                                          ; preds = %if.end33, %if.then32, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !1003
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #17, !dbg !1003
  call void @llvm.lifetime.end.p0(i64 112, ptr %insn) #17, !dbg !1003
  %25 = load i32, ptr %retval, align 4, !dbg !1003
  ret i32 %25, !dbg !1003
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @synthesize_clac(ptr noundef %addr) #0 align 16 !dbg !1004 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1008, metadata !DIExpression()), !dbg !1009
  br i1 false, label %cond.true, label %cond.false, !dbg !1010

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !1011

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 308, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #18, !dbg !1011
  br i1 %call, label %if.end, label %if.then, !dbg !1010

if.then:                                          ; preds = %cond.false, %cond.true
  br label %return, !dbg !1013

if.end:                                           ; preds = %cond.false, %cond.true
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1014
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !1014
  store i8 15, ptr %arrayidx, align 1, !dbg !1015
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1016
  %arrayidx1 = getelementptr i8, ptr %1, i64 1, !dbg !1016
  store i8 1, ptr %arrayidx1, align 1, !dbg !1017
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1018
  %arrayidx2 = getelementptr i8, ptr %2, i64 2, !dbg !1018
  store i8 -54, ptr %arrayidx2, align 1, !dbg !1019
  br label %return, !dbg !1020

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1020
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @synthesize_set_arg1(ptr noundef %addr, i64 noundef %val) #0 align 16 !dbg !1021 {
entry:
  %addr.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1025, metadata !DIExpression()), !dbg !1027
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1026, metadata !DIExpression()), !dbg !1028
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1029
  %incdec.ptr = getelementptr i8, ptr %0, i32 1, !dbg !1029
  store ptr %incdec.ptr, ptr %addr.addr, align 8, !dbg !1029
  store i8 72, ptr %0, align 1, !dbg !1030
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1031
  %incdec.ptr1 = getelementptr i8, ptr %1, i32 1, !dbg !1031
  store ptr %incdec.ptr1, ptr %addr.addr, align 8, !dbg !1031
  store i8 -65, ptr %1, align 1, !dbg !1032
  %2 = load i64, ptr %val.addr, align 8, !dbg !1033
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1034
  store i64 %2, ptr %3, align 8, !dbg !1035
  ret void, !dbg !1036
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1037 dso_local void @synthesize_relcall(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1041 dso_local void @synthesize_reljump(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1042 dso_local void @perf_event_text_poke(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1046 dso_local ptr @text_poke(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1050 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_optimize_kprobes(ptr noundef %oplist) #0 align 16 !dbg !1053 {
entry:
  %oplist.addr = alloca ptr, align 8
  %op = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %insn_buff = alloca [5 x i8], align 1
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %rel = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp25 = alloca i64, align 8
  %__mptr42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %oplist, ptr %oplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oplist.addr, metadata !1057, metadata !DIExpression()), !dbg !1077
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #17, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %op, metadata !1058, metadata !DIExpression()), !dbg !1079
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1059, metadata !DIExpression()), !dbg !1080
  call void @llvm.lifetime.start.p0(i64 5, ptr %insn_buff) #17, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %insn_buff, metadata !1060, metadata !DIExpression()), !dbg !1082
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !1083
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1062, metadata !DIExpression()), !dbg !1083
  %0 = load ptr, ptr %oplist.addr, align 8, !dbg !1083
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !1083
  %1 = load ptr, ptr %next, align 8, !dbg !1083
  store ptr %1, ptr %__mptr, align 8, !dbg !1083
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1083
  %add.ptr = getelementptr i8, ptr %2, i64 -128, !dbg !1083
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !1083
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !1084
  %3 = load ptr, ptr %tmp1, align 8, !dbg !1083
  store ptr %3, ptr %op, align 8, !dbg !1084
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #17, !dbg !1085
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !1065, metadata !DIExpression()), !dbg !1085
  %4 = load ptr, ptr %op, align 8, !dbg !1085
  %list = getelementptr inbounds %struct.optimized_kprobe, ptr %4, i32 0, i32 1, !dbg !1085
  %next3 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !1085
  %5 = load ptr, ptr %next3, align 8, !dbg !1085
  store ptr %5, ptr %__mptr2, align 8, !dbg !1085
  %6 = load ptr, ptr %__mptr2, align 8, !dbg !1085
  %add.ptr5 = getelementptr i8, ptr %6, i64 -128, !dbg !1085
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !1085
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #17, !dbg !1084
  %7 = load ptr, ptr %tmp4, align 8, !dbg !1085
  store ptr %7, ptr %tmp, align 8, !dbg !1084
  br label %for.cond, !dbg !1084

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load ptr, ptr %op, align 8, !dbg !1086
  %list6 = getelementptr inbounds %struct.optimized_kprobe, ptr %8, i32 0, i32 1, !dbg !1086
  %9 = load ptr, ptr %oplist.addr, align 8, !dbg !1086
  %cmp = icmp eq ptr %list6, %9, !dbg !1086
  %lnot = xor i1 %cmp, true, !dbg !1086
  br i1 %lnot, label %for.body, label %for.end, !dbg !1084

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %rel) #17, !dbg !1087
  call void @llvm.dbg.declare(metadata ptr %rel, metadata !1067, metadata !DIExpression()), !dbg !1088
  %10 = load ptr, ptr %op, align 8, !dbg !1089
  %optinsn = getelementptr inbounds %struct.optimized_kprobe, ptr %10, i32 0, i32 2, !dbg !1090
  %insn = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn, i32 0, i32 1, !dbg !1091
  %11 = load ptr, ptr %insn, align 8, !dbg !1091
  %12 = ptrtoint ptr %11 to i64, !dbg !1092
  %13 = load ptr, ptr %op, align 8, !dbg !1093
  %kp = getelementptr inbounds %struct.optimized_kprobe, ptr %13, i32 0, i32 0, !dbg !1094
  %addr = getelementptr inbounds %struct.kprobe, ptr %kp, i32 0, i32 3, !dbg !1095
  %14 = load ptr, ptr %addr, align 8, !dbg !1095
  %15 = ptrtoint ptr %14 to i64, !dbg !1096
  %add = add i64 %15, 5, !dbg !1097
  %sub = sub i64 %12, %add, !dbg !1098
  %conv = trunc i64 %sub to i32, !dbg !1099
  store i32 %conv, ptr %rel, align 4, !dbg !1088
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1100
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1070, metadata !DIExpression()), !dbg !1100
  %16 = load ptr, ptr %op, align 8, !dbg !1100
  %kp7 = getelementptr inbounds %struct.optimized_kprobe, ptr %16, i32 0, i32 0, !dbg !1100
  %call = call zeroext i1 @kprobe_disabled(ptr noundef %kp7) #18, !dbg !1100
  %lnot8 = xor i1 %call, true, !dbg !1100
  %lnot9 = xor i1 %lnot8, true, !dbg !1100
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !1100
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1100
  %17 = load i32, ptr %__ret_warn_on, align 4, !dbg !1101
  %tobool = icmp ne i32 %17, 0, !dbg !1101
  %lnot10 = xor i1 %tobool, true, !dbg !1101
  %lnot12 = xor i1 %lnot10, true, !dbg !1101
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !1101
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !1101
  %expval = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !1101
  %tobool15 = icmp ne i64 %expval, 0, !dbg !1101
  br i1 %tobool15, label %if.then, label %if.end, !dbg !1100

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !1101

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !1102
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1072, metadata !DIExpression()), !dbg !1102
  store i32 2305, ptr %__flags, align 4, !dbg !1102
  br label %do.body16, !dbg !1102

do.body16:                                        ; preds = %do.body
  br label %do.cond, !dbg !1103

do.cond:                                          ; preds = %do.body16
  br label %do.end, !dbg !1103

do.end:                                           ; preds = %do.cond
  br label %do.body17, !dbg !1102

do.body17:                                        ; preds = %do.end
  %18 = load i32, ptr %__flags, align 4, !dbg !1105
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 482, i32 %18, i64 12) #17, !dbg !1105, !srcloc !1107
  br label %do.cond18, !dbg !1105

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1105

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !1102

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !1108

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !1108

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !1101
  br label %do.cond23, !dbg !1102

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !1102

do.end24:                                         ; preds = %do.cond23
  br label %if.end, !dbg !1102

if.end:                                           ; preds = %do.end24, %for.body
  %19 = load i32, ptr %__ret_warn_on, align 4, !dbg !1100
  %tobool26 = icmp ne i32 %19, 0, !dbg !1100
  %lnot27 = xor i1 %tobool26, true, !dbg !1100
  %lnot29 = xor i1 %lnot27, true, !dbg !1100
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !1100
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !1100
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !1100
  store i64 %expval32, ptr %tmp25, align 8, !dbg !1101
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1110
  %20 = load i64, ptr %tmp25, align 8, !dbg !1100
  %21 = load ptr, ptr %op, align 8, !dbg !1111
  %optinsn33 = getelementptr inbounds %struct.optimized_kprobe, ptr %21, i32 0, i32 2, !dbg !1112
  %copied_insn = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn33, i32 0, i32 0, !dbg !1113
  %arraydecay = getelementptr inbounds [4 x i8], ptr %copied_insn, i64 0, i64 0, !dbg !1114
  %22 = load ptr, ptr %op, align 8, !dbg !1115
  %kp34 = getelementptr inbounds %struct.optimized_kprobe, ptr %22, i32 0, i32 0, !dbg !1116
  %addr35 = getelementptr inbounds %struct.kprobe, ptr %kp34, i32 0, i32 3, !dbg !1117
  %23 = load ptr, ptr %addr35, align 8, !dbg !1117
  %add.ptr36 = getelementptr i8, ptr %23, i64 1, !dbg !1118
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 1 %add.ptr36, i64 4, i1 false), !dbg !1114
  %arrayidx = getelementptr [5 x i8], ptr %insn_buff, i64 0, i64 0, !dbg !1119
  store i8 -23, ptr %arrayidx, align 1, !dbg !1120
  %24 = load i32, ptr %rel, align 4, !dbg !1121
  %arrayidx37 = getelementptr [5 x i8], ptr %insn_buff, i64 0, i64 1, !dbg !1122
  store i32 %24, ptr %arrayidx37, align 1, !dbg !1123
  %25 = load ptr, ptr %op, align 8, !dbg !1124
  %kp38 = getelementptr inbounds %struct.optimized_kprobe, ptr %25, i32 0, i32 0, !dbg !1125
  %addr39 = getelementptr inbounds %struct.kprobe, ptr %kp38, i32 0, i32 3, !dbg !1126
  %26 = load ptr, ptr %addr39, align 8, !dbg !1126
  %arraydecay40 = getelementptr inbounds [5 x i8], ptr %insn_buff, i64 0, i64 0, !dbg !1127
  call void @text_poke_bp(ptr noundef %26, ptr noundef %arraydecay40, i64 noundef 5, ptr noundef null) #18, !dbg !1128
  %27 = load ptr, ptr %op, align 8, !dbg !1129
  %list41 = getelementptr inbounds %struct.optimized_kprobe, ptr %27, i32 0, i32 1, !dbg !1130
  call void @list_del_init(ptr noundef %list41) #18, !dbg !1131
  call void @llvm.lifetime.end.p0(i64 4, ptr %rel) #17, !dbg !1132
  br label %for.inc, !dbg !1133

for.inc:                                          ; preds = %if.end
  %28 = load ptr, ptr %tmp, align 8, !dbg !1086
  store ptr %28, ptr %op, align 8, !dbg !1086
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr42) #17, !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %__mptr42, metadata !1075, metadata !DIExpression()), !dbg !1134
  %29 = load ptr, ptr %tmp, align 8, !dbg !1134
  %list43 = getelementptr inbounds %struct.optimized_kprobe, ptr %29, i32 0, i32 1, !dbg !1134
  %next44 = getelementptr inbounds %struct.list_head, ptr %list43, i32 0, i32 0, !dbg !1134
  %30 = load ptr, ptr %next44, align 8, !dbg !1134
  store ptr %30, ptr %__mptr42, align 8, !dbg !1134
  %31 = load ptr, ptr %__mptr42, align 8, !dbg !1134
  %add.ptr46 = getelementptr i8, ptr %31, i64 -128, !dbg !1134
  store ptr %add.ptr46, ptr %tmp45, align 8, !dbg !1134
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr42) #17, !dbg !1086
  %32 = load ptr, ptr %tmp45, align 8, !dbg !1134
  store ptr %32, ptr %tmp, align 8, !dbg !1086
  br label %for.cond, !dbg !1086, !llvm.loop !1135

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 5, ptr %insn_buff) #17, !dbg !1137
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !1137
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #17, !dbg !1137
  ret void, !dbg !1137
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kprobe_disabled(ptr noundef %p) #4 align 16 !dbg !1138 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1140, metadata !DIExpression()), !dbg !1141
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1142
  %flags = getelementptr inbounds %struct.kprobe, ptr %0, i32 0, i32 10, !dbg !1143
  %1 = load i32, ptr %flags, align 8, !dbg !1143
  %and = and i32 %1, 3, !dbg !1144
  %tobool = icmp ne i32 %and, 0, !dbg !1142
  ret i1 %tobool, !dbg !1145
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1146 dso_local void @text_poke_bp(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #4 align 16 !dbg !1149 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1151, metadata !DIExpression()), !dbg !1152
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1153
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !1154
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1155
  call void @INIT_LIST_HEAD(ptr noundef %1) #18, !dbg !1156
  ret void, !dbg !1157
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_unoptimize_kprobe(ptr noundef %op) #0 align 16 !dbg !1158 {
entry:
  %op.addr = alloca ptr, align 8
  %new = alloca [5 x i8], align 1
  %old = alloca [5 x i8], align 1
  %addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1160, metadata !DIExpression()), !dbg !1164
  call void @llvm.lifetime.start.p0(i64 5, ptr %new) #17, !dbg !1165
  call void @llvm.dbg.declare(metadata ptr %new, metadata !1161, metadata !DIExpression()), !dbg !1166
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %new, ptr align 1 @__const.arch_unoptimize_kprobe.new, i64 5, i1 false), !dbg !1166
  call void @llvm.lifetime.start.p0(i64 5, ptr %old) #17, !dbg !1167
  call void @llvm.dbg.declare(metadata ptr %old, metadata !1162, metadata !DIExpression()), !dbg !1168
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #17, !dbg !1169
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !1163, metadata !DIExpression()), !dbg !1170
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1171
  %kp = getelementptr inbounds %struct.optimized_kprobe, ptr %0, i32 0, i32 0, !dbg !1172
  %addr1 = getelementptr inbounds %struct.kprobe, ptr %kp, i32 0, i32 3, !dbg !1173
  %1 = load ptr, ptr %addr1, align 8, !dbg !1173
  store ptr %1, ptr %addr, align 8, !dbg !1170
  %arraydecay = getelementptr inbounds [5 x i8], ptr %old, i64 0, i64 0, !dbg !1174
  %2 = load ptr, ptr %op.addr, align 8, !dbg !1175
  %kp2 = getelementptr inbounds %struct.optimized_kprobe, ptr %2, i32 0, i32 0, !dbg !1176
  %addr3 = getelementptr inbounds %struct.kprobe, ptr %kp2, i32 0, i32 3, !dbg !1177
  %3 = load ptr, ptr %addr3, align 8, !dbg !1177
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 %3, i64 5, i1 false), !dbg !1174
  %arraydecay4 = getelementptr inbounds [5 x i8], ptr %new, i64 0, i64 0, !dbg !1178
  %add.ptr = getelementptr i8, ptr %arraydecay4, i64 1, !dbg !1179
  %4 = load ptr, ptr %op.addr, align 8, !dbg !1180
  %optinsn = getelementptr inbounds %struct.optimized_kprobe, ptr %4, i32 0, i32 2, !dbg !1181
  %copied_insn = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn, i32 0, i32 0, !dbg !1182
  %arraydecay5 = getelementptr inbounds [4 x i8], ptr %copied_insn, i64 0, i64 0, !dbg !1183
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 8 %arraydecay5, i64 4, i1 false), !dbg !1183
  %5 = load ptr, ptr %addr, align 8, !dbg !1184
  %arraydecay6 = getelementptr inbounds [5 x i8], ptr %new, i64 0, i64 0, !dbg !1185
  %call = call ptr @text_poke(ptr noundef %5, ptr noundef %arraydecay6, i64 noundef 1) #18, !dbg !1186
  call void @text_poke_sync() #18, !dbg !1187
  %6 = load ptr, ptr %addr, align 8, !dbg !1188
  %add.ptr7 = getelementptr i8, ptr %6, i64 1, !dbg !1189
  %arraydecay8 = getelementptr inbounds [5 x i8], ptr %new, i64 0, i64 0, !dbg !1190
  %add.ptr9 = getelementptr i8, ptr %arraydecay8, i64 1, !dbg !1191
  %call10 = call ptr @text_poke(ptr noundef %add.ptr7, ptr noundef %add.ptr9, i64 noundef 4) #18, !dbg !1192
  call void @text_poke_sync() #18, !dbg !1193
  %7 = load ptr, ptr %op.addr, align 8, !dbg !1194
  %kp11 = getelementptr inbounds %struct.optimized_kprobe, ptr %7, i32 0, i32 0, !dbg !1195
  %addr12 = getelementptr inbounds %struct.kprobe, ptr %kp11, i32 0, i32 3, !dbg !1196
  %8 = load ptr, ptr %addr12, align 8, !dbg !1196
  %arraydecay13 = getelementptr inbounds [5 x i8], ptr %old, i64 0, i64 0, !dbg !1197
  %arraydecay14 = getelementptr inbounds [5 x i8], ptr %new, i64 0, i64 0, !dbg !1198
  call void @perf_event_text_poke(ptr noundef %8, ptr noundef %arraydecay13, i64 noundef 5, ptr noundef %arraydecay14, i64 noundef 5) #18, !dbg !1199
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #17, !dbg !1200
  call void @llvm.lifetime.end.p0(i64 5, ptr %old) #17, !dbg !1200
  call void @llvm.lifetime.end.p0(i64 5, ptr %new) #17, !dbg !1200
  ret void, !dbg !1200
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1201 dso_local void @text_poke_sync() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_unoptimize_kprobes(ptr noundef %oplist, ptr noundef %done_list) #0 align 16 !dbg !1204 {
entry:
  %oplist.addr = alloca ptr, align 8
  %done_list.addr = alloca ptr, align 8
  %op = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %oplist, ptr %oplist.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oplist.addr, metadata !1208, metadata !DIExpression()), !dbg !1220
  store ptr %done_list, ptr %done_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %done_list.addr, metadata !1209, metadata !DIExpression()), !dbg !1221
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #17, !dbg !1222
  call void @llvm.dbg.declare(metadata ptr %op, metadata !1210, metadata !DIExpression()), !dbg !1223
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !1222
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1211, metadata !DIExpression()), !dbg !1224
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !1225
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1212, metadata !DIExpression()), !dbg !1225
  %0 = load ptr, ptr %oplist.addr, align 8, !dbg !1225
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !1225
  %1 = load ptr, ptr %next, align 8, !dbg !1225
  store ptr %1, ptr %__mptr, align 8, !dbg !1225
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1225
  %add.ptr = getelementptr i8, ptr %2, i64 -128, !dbg !1225
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !1225
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !1226
  %3 = load ptr, ptr %tmp1, align 8, !dbg !1225
  store ptr %3, ptr %op, align 8, !dbg !1226
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #17, !dbg !1227
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !1215, metadata !DIExpression()), !dbg !1227
  %4 = load ptr, ptr %op, align 8, !dbg !1227
  %list = getelementptr inbounds %struct.optimized_kprobe, ptr %4, i32 0, i32 1, !dbg !1227
  %next3 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !1227
  %5 = load ptr, ptr %next3, align 8, !dbg !1227
  store ptr %5, ptr %__mptr2, align 8, !dbg !1227
  %6 = load ptr, ptr %__mptr2, align 8, !dbg !1227
  %add.ptr5 = getelementptr i8, ptr %6, i64 -128, !dbg !1227
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !1227
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #17, !dbg !1226
  %7 = load ptr, ptr %tmp4, align 8, !dbg !1227
  store ptr %7, ptr %tmp, align 8, !dbg !1226
  br label %for.cond, !dbg !1226

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load ptr, ptr %op, align 8, !dbg !1228
  %list6 = getelementptr inbounds %struct.optimized_kprobe, ptr %8, i32 0, i32 1, !dbg !1228
  %9 = load ptr, ptr %oplist.addr, align 8, !dbg !1228
  %cmp = icmp eq ptr %list6, %9, !dbg !1228
  %lnot = xor i1 %cmp, true, !dbg !1228
  br i1 %lnot, label %for.body, label %for.end, !dbg !1226

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %op, align 8, !dbg !1229
  call void @arch_unoptimize_kprobe(ptr noundef %10) #18, !dbg !1231
  %11 = load ptr, ptr %op, align 8, !dbg !1232
  %list7 = getelementptr inbounds %struct.optimized_kprobe, ptr %11, i32 0, i32 1, !dbg !1233
  %12 = load ptr, ptr %done_list.addr, align 8, !dbg !1234
  call void @list_move(ptr noundef %list7, ptr noundef %12) #18, !dbg !1235
  br label %for.inc, !dbg !1236

for.inc:                                          ; preds = %for.body
  %13 = load ptr, ptr %tmp, align 8, !dbg !1228
  store ptr %13, ptr %op, align 8, !dbg !1228
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #17, !dbg !1237
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !1217, metadata !DIExpression()), !dbg !1237
  %14 = load ptr, ptr %tmp, align 8, !dbg !1237
  %list9 = getelementptr inbounds %struct.optimized_kprobe, ptr %14, i32 0, i32 1, !dbg !1237
  %next10 = getelementptr inbounds %struct.list_head, ptr %list9, i32 0, i32 0, !dbg !1237
  %15 = load ptr, ptr %next10, align 8, !dbg !1237
  store ptr %15, ptr %__mptr8, align 8, !dbg !1237
  %16 = load ptr, ptr %__mptr8, align 8, !dbg !1237
  %add.ptr12 = getelementptr i8, ptr %16, i64 -128, !dbg !1237
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #17, !dbg !1228
  %17 = load ptr, ptr %tmp11, align 8, !dbg !1237
  store ptr %17, ptr %tmp, align 8, !dbg !1228
  br label %for.cond, !dbg !1228, !llvm.loop !1238

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #17, !dbg !1240
  ret void, !dbg !1240
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move(ptr noundef %list, ptr noundef %head) #4 align 16 !dbg !1241 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1243, metadata !DIExpression()), !dbg !1245
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1244, metadata !DIExpression()), !dbg !1246
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1247
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !1248
  %1 = load ptr, ptr %list.addr, align 8, !dbg !1249
  %2 = load ptr, ptr %head.addr, align 8, !dbg !1250
  call void @list_add(ptr noundef %1, ptr noundef %2) #18, !dbg !1251
  ret void, !dbg !1252
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @setup_detour_execution(ptr noundef %p, ptr noundef %regs, i32 noundef %reenter) #0 align 16 !dbg !1253 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %reenter.addr = alloca i32, align 4
  %op = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1257, metadata !DIExpression()), !dbg !1265
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1258, metadata !DIExpression()), !dbg !1266
  store i32 %reenter, ptr %reenter.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reenter.addr, metadata !1259, metadata !DIExpression()), !dbg !1267
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #17, !dbg !1268
  call void @llvm.dbg.declare(metadata ptr %op, metadata !1260, metadata !DIExpression()), !dbg !1269
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1270
  %flags = getelementptr inbounds %struct.kprobe, ptr %0, i32 0, i32 10, !dbg !1271
  %1 = load i32, ptr %flags, align 8, !dbg !1271
  %and = and i32 %1, 4, !dbg !1272
  %tobool = icmp ne i32 %and, 0, !dbg !1272
  br i1 %tobool, label %if.then, label %if.end3, !dbg !1273

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !1274
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1261, metadata !DIExpression()), !dbg !1274
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1274
  store ptr %2, ptr %__mptr, align 8, !dbg !1274
  %3 = load ptr, ptr %__mptr, align 8, !dbg !1274
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !1274
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1274
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !1275
  %4 = load ptr, ptr %tmp, align 8, !dbg !1274
  store ptr %4, ptr %op, align 8, !dbg !1276
  %5 = load ptr, ptr %op, align 8, !dbg !1277
  %optinsn = getelementptr inbounds %struct.optimized_kprobe, ptr %5, i32 0, i32 2, !dbg !1278
  %insn = getelementptr inbounds %struct.arch_optimized_insn, ptr %optinsn, i32 0, i32 1, !dbg !1279
  %6 = load ptr, ptr %insn, align 8, !dbg !1279
  %7 = ptrtoint ptr %6 to i64, !dbg !1280
  %add = add i64 %7, sub (i64 ptrtoint (ptr @optprobe_template_end to i64), i64 ptrtoint (ptr @optprobe_template_entry to i64)), !dbg !1281
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !1282
  %ip = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 16, !dbg !1283
  store i64 %add, ptr %ip, align 8, !dbg !1284
  %9 = load i32, ptr %reenter.addr, align 4, !dbg !1285
  %tobool1 = icmp ne i32 %9, 0, !dbg !1285
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !1287

if.then2:                                         ; preds = %if.then
  call void @reset_current_kprobe() #18, !dbg !1288
  br label %if.end, !dbg !1288

if.end:                                           ; preds = %if.then2, %if.then
  store i32 1, ptr %retval, align 4, !dbg !1289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1289

if.end3:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1290

cleanup:                                          ; preds = %if.end3, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #17, !dbg !1291
  %10 = load i32, ptr %retval, align 4, !dbg !1291
  ret i32 %10, !dbg !1291
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reset_current_kprobe() #4 align 16 !dbg !1292 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #18, !dbg !1300
  br label %do.body, !dbg !1300

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1301

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !1302
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1294, metadata !DIExpression()), !dbg !1302
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1302
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1302
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !1301
  br label %do.end, !dbg !1302

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1301

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #17, !dbg !1303
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1298, metadata !DIExpression()), !dbg !1303
  store i64 0, ptr %pto_val__, align 8, !dbg !1303
  %1 = load i64, ptr %pto_val__, align 8, !dbg !1303
  call void asm "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @current_kprobe, i64 %1, ptr elementtype(ptr) @current_kprobe) #17, !dbg !1303, !srcloc !1304
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #17, !dbg !1301
  br label %do.end3, !dbg !1303

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1301

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !1305
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #8 align 16 !dbg !1306 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1311, metadata !DIExpression()), !dbg !1319
  br label %do.body, !dbg !1320

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #17, !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !1312, metadata !DIExpression()), !dbg !1321
  %0 = load i32, ptr %val.addr, align 4, !dbg !1321
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1321
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1321

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !1321
  %cmp = icmp eq i32 %2, 1, !dbg !1321
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !1321

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !1321
  %cmp1 = icmp eq i32 %3, -1, !dbg !1321
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1321

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !1321
  br label %cond.end, !dbg !1321

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !1321

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !1321
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !1321
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !1322
  %cmp2 = icmp eq i32 %5, 1, !dbg !1322
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1321

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !1323, !srcloc !1325
  br label %if.end8, !dbg !1322

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !1326
  %cmp3 = icmp eq i32 %6, -1, !dbg !1326
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1322

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !1327, !srcloc !1329
  br label %if.end, !dbg !1326

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !1326

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #17, !dbg !1330
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1315, metadata !DIExpression()), !dbg !1330
  %7 = load i32, ptr %val.addr, align 4, !dbg !1330
  %conv = sext i32 %7 to i64, !dbg !1330
  %and = and i64 %conv, 4294967295, !dbg !1330
  %conv7 = trunc i64 %and to i32, !dbg !1330
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !1330
  %8 = load i32, ptr %pto_val__, align 4, !dbg !1330
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !1330, !srcloc !1331
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #17, !dbg !1326
  br label %do.cond, !dbg !1330

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !1330

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #17, !dbg !1320
  br label %do.end10, !dbg !1321

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !1332
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kprobe_running() #4 align 16 !dbg !1333 {
entry:
  %tmp = alloca ptr, align 8
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #18, !dbg !1344
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #17, !dbg !1345
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1337, metadata !DIExpression()), !dbg !1345
  br label %do.body, !dbg !1345

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !1346
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1340, metadata !DIExpression()), !dbg !1346
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1346
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1346
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !1345
  br label %do.cond, !dbg !1346

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1346

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #17, !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1342, metadata !DIExpression()), !dbg !1347
  %1 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @current_kprobe) #20, !dbg !1347, !srcloc !1348
  store i64 %1, ptr %pfo_val__, align 8, !dbg !1347
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !1347
  %3 = inttoptr i64 %2 to ptr, !dbg !1347
  store ptr %3, ptr %tmp1, align 8, !dbg !1347
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #17, !dbg !1345
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1347
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !1345
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !1345
  store ptr %5, ptr %tmp2, align 8, !dbg !1345
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #17, !dbg !1344
  %6 = load ptr, ptr %tmp2, align 8, !dbg !1345
  store ptr %6, ptr %tmp, align 8, !dbg !1344
  %7 = load ptr, ptr %tmp, align 8, !dbg !1344
  ret ptr %7, !dbg !1349
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1350 dso_local void @kprobes_inc_nmissed_count(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_kprobe_ctlblk() #4 align 16 !dbg !1353 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  br label %do.body, !dbg !1362

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !1363
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1357, metadata !DIExpression()), !dbg !1363
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1363
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1363
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !1362
  br label %do.end, !dbg !1363

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #17, !dbg !1364
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !1360, metadata !DIExpression()), !dbg !1364
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @kprobe_ctlblk) #20, !dbg !1364, !srcloc !1365
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !1364
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !1364
  %3 = inttoptr i64 %2 to ptr, !dbg !1364
  store ptr %3, ptr %tmp1, align 8, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #17, !dbg !1362
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1364
  store ptr %4, ptr %tmp, align 8, !dbg !1363
  %5 = load ptr, ptr %tmp, align 8, !dbg !1362
  ret ptr %5, !dbg !1366
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #8 align 16 !dbg !1367 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1372, metadata !DIExpression()), !dbg !1373
  ret void, !dbg !1374
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1375 dso_local void @opt_pre_handler(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #8 align 16 !dbg !1376 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !1382
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1380, metadata !DIExpression()), !dbg !1382
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.6, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !1382, !srcloc !1383
  %1 = icmp ult i8 %0, 2, !dbg !1382
  call void @llvm.assume(i1 %1), !dbg !1382
  store i8 %0, ptr %c, align 1, !dbg !1382
  %2 = load i8, ptr %c, align 1, !dbg !1382, !range !1384, !noundef !1385
  %tobool = trunc i8 %2 to i1, !dbg !1382
  %frombool = zext i1 %tobool to i8, !dbg !1382
  store i8 %frombool, ptr %tmp, align 1, !dbg !1382
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !1386
  %3 = load i8, ptr %tmp, align 1, !dbg !1382, !range !1384, !noundef !1385
  %tobool1 = trunc i8 %3 to i1, !dbg !1382
  ret i1 %tobool1, !dbg !1387
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_optinsn_slot(ptr noundef %slot, i32 noundef %dirty) #4 align 16 !dbg !1388 {
entry:
  %slot.addr = alloca ptr, align 8
  %dirty.addr = alloca i32, align 4
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1392, metadata !DIExpression()), !dbg !1394
  store i32 %dirty, ptr %dirty.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dirty.addr, metadata !1393, metadata !DIExpression()), !dbg !1394
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !1394
  %1 = load i32, ptr %dirty.addr, align 4, !dbg !1394
  call void @__free_insn_slot(ptr noundef @kprobe_optinsn_slots, ptr noundef %0, i32 noundef %1) #18, !dbg !1394
  ret void, !dbg !1394
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1395 dso_local void @__free_insn_slot(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1461 dso_local i32 @kallsyms_lookup_size_offset(i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1465 dso_local ptr @search_exception_tables(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1477 dso_local i64 @recover_probed_instruction(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1478 dso_local i32 @insn_decode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_jump_into_range(ptr noundef %insn, i64 noundef %start, i32 noundef %len) #0 align 16 !dbg !1482 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %len.addr = alloca i32, align 4
  %target = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !1486, metadata !DIExpression()), !dbg !1490
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1487, metadata !DIExpression()), !dbg !1491
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1488, metadata !DIExpression()), !dbg !1492
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #17, !dbg !1493
  call void @llvm.dbg.declare(metadata ptr %target, metadata !1489, metadata !DIExpression()), !dbg !1494
  store i64 0, ptr %target, align 8, !dbg !1494
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !1495
  %opcode = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 3, !dbg !1496
  %1 = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 0, !dbg !1497
  %arrayidx = getelementptr [4 x i8], ptr %1, i64 0, i64 0, !dbg !1495
  %2 = load i8, ptr %arrayidx, align 8, !dbg !1495
  %conv = zext i8 %2 to i32, !dbg !1495
  switch i32 %conv, label %sw.default [
    i32 224, label %sw.bb
    i32 225, label %sw.bb
    i32 226, label %sw.bb
    i32 227, label %sw.bb
    i32 233, label %sw.bb
    i32 235, label %sw.bb
    i32 15, label %sw.bb1
  ], !dbg !1498

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog, !dbg !1499

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !1501
  %opcode2 = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 3, !dbg !1503
  %4 = getelementptr inbounds %struct.insn_field, ptr %opcode2, i32 0, i32 0, !dbg !1504
  %arrayidx3 = getelementptr [4 x i8], ptr %4, i64 0, i64 1, !dbg !1501
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !1501
  %conv4 = zext i8 %5 to i32, !dbg !1501
  %and = and i32 %conv4, 240, !dbg !1505
  %cmp = icmp eq i32 %and, 128, !dbg !1506
  br i1 %cmp, label %if.then, label %if.end, !dbg !1507

if.then:                                          ; preds = %sw.bb1
  br label %sw.epilog, !dbg !1508

if.end:                                           ; preds = %sw.bb1
  store i32 0, ptr %retval, align 4, !dbg !1509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1509

sw.default:                                       ; preds = %entry
  %6 = load ptr, ptr %insn.addr, align 8, !dbg !1510
  %opcode6 = getelementptr inbounds %struct.insn, ptr %6, i32 0, i32 3, !dbg !1512
  %7 = getelementptr inbounds %struct.insn_field, ptr %opcode6, i32 0, i32 0, !dbg !1513
  %arrayidx7 = getelementptr [4 x i8], ptr %7, i64 0, i64 0, !dbg !1510
  %8 = load i8, ptr %arrayidx7, align 8, !dbg !1510
  %conv8 = zext i8 %8 to i32, !dbg !1510
  %and9 = and i32 %conv8, 240, !dbg !1514
  %cmp10 = icmp eq i32 %and9, 112, !dbg !1515
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1516

if.then12:                                        ; preds = %sw.default
  br label %sw.epilog, !dbg !1517

if.end13:                                         ; preds = %sw.default
  store i32 0, ptr %retval, align 4, !dbg !1518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1518

sw.epilog:                                        ; preds = %if.then12, %if.then, %sw.bb
  %9 = load ptr, ptr %insn.addr, align 8, !dbg !1519
  %next_byte = getelementptr inbounds %struct.insn, ptr %9, i32 0, i32 17, !dbg !1520
  %10 = load ptr, ptr %next_byte, align 8, !dbg !1520
  %11 = ptrtoint ptr %10 to i64, !dbg !1521
  %12 = load ptr, ptr %insn.addr, align 8, !dbg !1522
  %13 = getelementptr inbounds %struct.insn, ptr %12, i32 0, i32 7, !dbg !1523
  %14 = getelementptr inbounds %struct.insn_field, ptr %13, i32 0, i32 0, !dbg !1524
  %15 = load i32, ptr %14, align 8, !dbg !1524
  %conv14 = sext i32 %15 to i64, !dbg !1522
  %add = add i64 %11, %conv14, !dbg !1525
  store i64 %add, ptr %target, align 8, !dbg !1526
  %16 = load i64, ptr %start.addr, align 8, !dbg !1527
  %17 = load i64, ptr %target, align 8, !dbg !1528
  %cmp15 = icmp ule i64 %16, %17, !dbg !1529
  br i1 %cmp15, label %land.rhs, label %land.end, !dbg !1530

land.rhs:                                         ; preds = %sw.epilog
  %18 = load i64, ptr %target, align 8, !dbg !1531
  %19 = load i64, ptr %start.addr, align 8, !dbg !1532
  %20 = load i32, ptr %len.addr, align 4, !dbg !1533
  %conv17 = sext i32 %20 to i64, !dbg !1533
  %add18 = add i64 %19, %conv17, !dbg !1534
  %cmp19 = icmp ule i64 %18, %add18, !dbg !1535
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.epilog
  %21 = phi i1 [ false, %sw.epilog ], [ %cmp19, %land.rhs ], !dbg !1536
  %land.ext = zext i1 %21 to i32, !dbg !1530
  store i32 %land.ext, ptr %retval, align 4, !dbg !1537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1537

cleanup:                                          ; preds = %land.end, %if.end13, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #17, !dbg !1538
  %22 = load i32, ptr %retval, align 4, !dbg !1538
  ret i32 %22, !dbg !1538
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !1539 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1541, metadata !DIExpression()), !dbg !1546
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1542, metadata !DIExpression()), !dbg !1547
  %0 = load i64, ptr %size.addr, align 8, !dbg !1548
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1549
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1550

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1551
  %tobool = icmp ne i64 %2, 0, !dbg !1551
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1552

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !1553
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1543, metadata !DIExpression()), !dbg !1554
  %3 = load i64, ptr %size.addr, align 8, !dbg !1555
  %cmp = icmp ugt i64 %3, 8192, !dbg !1557
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1558

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1559
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1560
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !1561
  store ptr %call, ptr %retval, align 8, !dbg !1562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1562

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1563
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !1563
  store i32 %call2, ptr %index, align 4, !dbg !1564
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1565
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1566
  %9 = ptrtoint ptr %8 to i64, !dbg !1566
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !1567
  %idxprom = zext i32 %call3 to i64, !dbg !1568
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1568
  %10 = load i32, ptr %index, align 4, !dbg !1569
  %idxprom4 = zext i32 %10 to i64, !dbg !1568
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1568
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1568
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1570
  %13 = load i64, ptr %size.addr, align 8, !dbg !1571
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !1572
  store ptr %call6, ptr %retval, align 8, !dbg !1573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1573

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !1574
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1575
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1576
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !1577
  store ptr %call8, ptr %retval, align 8, !dbg !1578
  br label %return, !dbg !1578

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1579
  ret ptr %16, !dbg !1579
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1580 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !1581 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1585, metadata !DIExpression()), !dbg !1587
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1586, metadata !DIExpression()), !dbg !1588
  %0 = load i64, ptr %size.addr, align 8, !dbg !1589
  %tobool = icmp ne i64 %0, 0, !dbg !1589
  br i1 %tobool, label %if.end, label %if.then, !dbg !1591

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1592
  br label %return, !dbg !1592

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1593
  %cmp = icmp ule i64 %1, 8, !dbg !1595
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1596

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1597
  br label %return, !dbg !1597

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1598
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1600
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1601

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1602
  %cmp4 = icmp ule i64 %3, 96, !dbg !1603
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1604

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1605
  br label %return, !dbg !1605

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1606
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1608
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1609

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1610
  %cmp9 = icmp ule i64 %5, 192, !dbg !1611
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1612

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1613
  br label %return, !dbg !1613

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1614
  %cmp12 = icmp ule i64 %6, 8, !dbg !1616
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1617

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1618
  br label %return, !dbg !1618

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1619
  %cmp15 = icmp ule i64 %7, 16, !dbg !1621
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1622

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1623
  br label %return, !dbg !1623

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1624
  %cmp18 = icmp ule i64 %8, 32, !dbg !1626
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1627

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1628
  br label %return, !dbg !1628

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1629
  %cmp21 = icmp ule i64 %9, 64, !dbg !1631
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1632

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1633
  br label %return, !dbg !1633

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1634
  %cmp24 = icmp ule i64 %10, 128, !dbg !1636
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1637

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1638
  br label %return, !dbg !1638

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1639
  %cmp27 = icmp ule i64 %11, 256, !dbg !1641
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1642

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1643
  br label %return, !dbg !1643

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1644
  %cmp30 = icmp ule i64 %12, 512, !dbg !1646
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1647

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1648
  br label %return, !dbg !1648

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1649
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1651
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1652

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1653
  br label %return, !dbg !1653

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1654
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1656
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1657

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1658
  br label %return, !dbg !1658

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1659
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1661
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1662

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1663
  br label %return, !dbg !1663

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1664
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1666
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1667

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1668
  br label %return, !dbg !1668

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1669
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1671
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1672

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1673
  br label %return, !dbg !1673

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1674
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1676
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1677

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1678
  br label %return, !dbg !1678

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1679
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1681
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1682

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1683
  br label %return, !dbg !1683

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1684
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1686
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1687

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1688
  br label %return, !dbg !1688

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1689
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1691
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1692

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1693
  br label %return, !dbg !1693

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1694
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1696
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1697

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1698
  br label %return, !dbg !1698

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1699
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1701
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1702

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1703
  br label %return, !dbg !1703

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1704
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1706
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1707

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1708
  br label %return, !dbg !1708

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1709, !range !1384, !noundef !1385
  %tobool69 = trunc i8 %25 to i1, !dbg !1709
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1711

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1712

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_208() #22, !dbg !1713, !srcloc !1716
  unreachable, !dbg !1713

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1717

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1718

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1719

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1721

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1719

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #17, !dbg !1723, !srcloc !1725
  br label %do.end75, !dbg !1723

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1719

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1726
  br label %return, !dbg !1726

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1727
  ret i32 %26, !dbg !1727
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1728 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !1734 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1738, metadata !DIExpression()), !dbg !1740
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1739, metadata !DIExpression()), !dbg !1741
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1742
  %and = and i32 %0, 17, !dbg !1742
  %cmp = icmp eq i32 %and, 0, !dbg !1742
  %lnot = xor i1 %cmp, true, !dbg !1742
  %lnot1 = xor i1 %lnot, true, !dbg !1742
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1742
  %conv = sext i32 %lnot.ext to i64, !dbg !1742
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1742
  %tobool = icmp ne i64 %expval, 0, !dbg !1742
  br i1 %tobool, label %if.then, label %if.end, !dbg !1744

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1745
  br label %return, !dbg !1745

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1746
  %and2 = and i32 %1, 1, !dbg !1748
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1748
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1749

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1750
  br label %return, !dbg !1750

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1751
  br label %return, !dbg !1751

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1753
  ret i32 %2, !dbg !1753
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1754 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1755 dso_local void @__compiletime_assert_208() #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1756 dso_local ptr @__get_insn_slot(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1759 dso_local i32 @__copy_instruction(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1762 dso_local i32 @can_boost(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ftrace_text_reserved(ptr noundef %start, ptr noundef %end) #4 align 16 !dbg !1765 {
entry:
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1770, metadata !DIExpression()), !dbg !1772
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1771, metadata !DIExpression()), !dbg !1773
  ret i32 0, !dbg !1774
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1775 dso_local i32 @alternatives_text_reserved(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1779 dso_local i32 @jump_label_text_reserved(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1781 dso_local i32 @static_call_text_reserved(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !1783 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1791, metadata !DIExpression()), !dbg !1793
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1792, metadata !DIExpression()), !dbg !1794
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1795
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1796
  br i1 %1, label %cond.true, label %cond.false, !dbg !1796

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1797
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1798
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !1799
  %conv = zext i1 %call to i32, !dbg !1799
  br label %cond.end, !dbg !1796

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1800
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1801
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !1802
  %conv2 = zext i1 %call1 to i32, !dbg !1802
  br label %cond.end, !dbg !1796

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1796
  %tobool = icmp ne i32 %cond, 0, !dbg !1796
  ret i1 %tobool, !dbg !1803
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !1804 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1808, metadata !DIExpression()), !dbg !1810
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1809, metadata !DIExpression()), !dbg !1811
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1812
  %and = and i64 %0, 63, !dbg !1813
  %shl = shl i64 1, %and, !dbg !1814
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1815
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1816
  %shr = ashr i64 %2, 6, !dbg !1817
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1815
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1815
  %and1 = and i64 %shl, %3, !dbg !1818
  %cmp = icmp ne i64 %and1, 0, !dbg !1819
  ret i1 %cmp, !dbg !1820
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !1821 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1823, metadata !DIExpression()), !dbg !1826
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1824, metadata !DIExpression()), !dbg !1827
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !1828
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1825, metadata !DIExpression()), !dbg !1829
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1830
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1831
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !1832, !srcloc !1833
  %3 = icmp ult i8 %2, 2, !dbg !1832
  call void @llvm.assume(i1 %3), !dbg !1832
  store i8 %2, ptr %oldbit, align 1, !dbg !1832
  %4 = load i8, ptr %oldbit, align 1, !dbg !1834, !range !1384, !noundef !1385
  %tobool = trunc i8 %4 to i1, !dbg !1834
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !1835
  ret i1 %tobool, !dbg !1836
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !1837 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1839, metadata !DIExpression()), !dbg !1840
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1841
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !1843
  br i1 %call, label %if.end, label %if.then, !dbg !1844

if.then:                                          ; preds = %entry
  br label %return, !dbg !1845

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1846
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1847
  %2 = load ptr, ptr %prev, align 8, !dbg !1847
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !1848
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !1849
  %4 = load ptr, ptr %next, align 8, !dbg !1849
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !1850
  br label %return, !dbg !1851

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1851
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !1852 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1854, metadata !DIExpression()), !dbg !1855
  br label %do.body, !dbg !1856

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1857

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1859

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1857

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1861
  %1 = load ptr, ptr %list.addr, align 8, !dbg !1861
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1861
  store volatile ptr %0, ptr %next, align 8, !dbg !1861
  br label %do.end3, !dbg !1861

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1857

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !1863

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1864

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1866

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1864

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !1868
  %3 = load ptr, ptr %list.addr, align 8, !dbg !1868
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !1868
  store volatile ptr %2, ptr %prev, align 8, !dbg !1868
  br label %do.end9, !dbg !1868

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1864

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !1870
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !1871 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1875, metadata !DIExpression()), !dbg !1876
  ret i1 true, !dbg !1877
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !1878 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1880, metadata !DIExpression()), !dbg !1882
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1881, metadata !DIExpression()), !dbg !1883
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !1884
  %1 = load ptr, ptr %next.addr, align 8, !dbg !1885
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1886
  store ptr %0, ptr %prev1, align 8, !dbg !1887
  br label %do.body, !dbg !1888

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !1889

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !1891

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !1889

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !1893
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !1893
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !1893
  store volatile ptr %2, ptr %next4, align 8, !dbg !1893
  br label %do.end5, !dbg !1893

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !1889

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !1895
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !1896 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1898, metadata !DIExpression()), !dbg !1900
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1899, metadata !DIExpression()), !dbg !1901
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1902
  %1 = load ptr, ptr %head.addr, align 8, !dbg !1903
  %2 = load ptr, ptr %head.addr, align 8, !dbg !1904
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !1905
  %3 = load ptr, ptr %next, align 8, !dbg !1905
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #18, !dbg !1906
  ret void, !dbg !1907
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !1908 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1912, metadata !DIExpression()), !dbg !1915
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1913, metadata !DIExpression()), !dbg !1916
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1914, metadata !DIExpression()), !dbg !1917
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1918
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !1920
  %2 = load ptr, ptr %next.addr, align 8, !dbg !1921
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !1922
  br i1 %call, label %if.end, label %if.then, !dbg !1923

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !1924

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !1925
  %4 = load ptr, ptr %next.addr, align 8, !dbg !1926
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !1927
  store ptr %3, ptr %prev1, align 8, !dbg !1928
  %5 = load ptr, ptr %next.addr, align 8, !dbg !1929
  %6 = load ptr, ptr %new.addr, align 8, !dbg !1930
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !1931
  store ptr %5, ptr %next2, align 8, !dbg !1932
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !1933
  %8 = load ptr, ptr %new.addr, align 8, !dbg !1934
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !1935
  store ptr %7, ptr %prev3, align 8, !dbg !1936
  br label %do.body, !dbg !1937

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !1938

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !1940

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !1938

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !1942
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !1942
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !1942
  store volatile ptr %9, ptr %next6, align 8, !dbg !1942
  br label %do.end7, !dbg !1942

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !1938

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !1944
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !1945 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1949, metadata !DIExpression()), !dbg !1952
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1950, metadata !DIExpression()), !dbg !1953
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1951, metadata !DIExpression()), !dbg !1954
  ret i1 true, !dbg !1955
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { nounwind memory(read) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!259}
!llvm.module.flags = !{!260, !261, !262, !263, !264, !265, !266, !267}
!llvm.ident = !{!268}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__func_stack_frame_non_standard_optprobe_template_func", scope: !2, file: !3, line: 164, type: !29, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/kprobes/.opt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/kprobes/opt\22 -D KBUILD_BASENAME=\22opt\22 -D KBUILD_MODNAME=\22opt\22 -D __KBUILD_MODNAME=kmod_opt -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/kprobes/opt.ll arch/x86/kernel/kprobes/opt.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !209, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/kprobes/opt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c16abc51f8a6bc987842ca0600244ac5")
!4 = !{!5, !13, !18}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "insn_mode", file: !6, line: 143, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/insn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca1df7461e09b68408eb75c2e122471d")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "INSN_MODE_32", value: 0)
!10 = !DIEnumerator(name: "INSN_MODE_64", value: 1)
!11 = !DIEnumerator(name: "INSN_MODE_KERN", value: 2)
!12 = !DIEnumerator(name: "INSN_NUM_MODES", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 10, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "false", value: 0)
!17 = !DIEnumerator(name: "true", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !19, line: 364, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!20 = !{!21, !22, !23, !24, !25, !26, !27}
!21 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!22 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!23 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!24 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!25 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!26 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!27 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!28 = !{!29, !30, !52, !186, !187, !188, !162, !189, !190, !193, !103, !72, !170, !73, !194, !207, !208}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimized_kprobe", file: !32, line: 352, size: 1344, elements: !33)
!32 = !DIFile(filename: "./include/linux/kprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "110870054f860a0910edee7c61ce83a6")
!33 = !{!34, !172, !173}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !31, file: !32, line: 353, baseType: !35, size: 1024)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kprobe", file: !32, line: 60, size: 1024, elements: !36)
!36 = !{!37, !45, !51, !53, !62, !66, !67, !132, !137, !138, !169}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !35, file: !32, line: 61, baseType: !38, size: 128)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !39, line: 198, size: 128, elements: !40)
!39 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!40 = !{!41, !43}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !38, file: !39, line: 199, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !38, file: !39, line: 199, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !35, file: !32, line: 64, baseType: !46, size: 128, offset: 128)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !39, line: 190, size: 128, elements: !47)
!47 = !{!48, !50}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !46, file: !39, line: 191, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !46, file: !39, line: 191, baseType: !49, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nmissed", scope: !35, file: !32, line: 67, baseType: !52, size: 64, offset: 256)
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !35, file: !32, line: 70, baseType: !54, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprobe_opcode_t", file: !56, line: 26, baseType: !57)
!56 = !DIFile(filename: "./arch/x86/include/asm/kprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d86012779c16e4af7510ec19eb8bcd8b")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !58, line: 17, baseType: !59)
!58 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !60, line: 21, baseType: !61)
!60 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!61 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_name", scope: !35, file: !32, line: 73, baseType: !63, size: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !35, file: !32, line: 76, baseType: !7, size: 32, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "pre_handler", scope: !35, file: !32, line: 79, baseType: !68, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprobe_pre_handler_t", file: !32, line: 54, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !73, !74}
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !76, line: 103, size: 1344, elements: !77)
!76 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !112, !113, !114}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !75, file: !76, line: 109, baseType: !52, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !75, file: !76, line: 110, baseType: !52, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !75, file: !76, line: 111, baseType: !52, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !75, file: !76, line: 112, baseType: !52, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !75, file: !76, line: 113, baseType: !52, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !75, file: !76, line: 114, baseType: !52, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !75, file: !76, line: 117, baseType: !52, size: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !75, file: !76, line: 118, baseType: !52, size: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !75, file: !76, line: 119, baseType: !52, size: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !75, file: !76, line: 120, baseType: !52, size: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !75, file: !76, line: 121, baseType: !52, size: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !75, file: !76, line: 122, baseType: !52, size: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !75, file: !76, line: 123, baseType: !52, size: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !75, file: !76, line: 124, baseType: !52, size: 64, offset: 832)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !75, file: !76, line: 125, baseType: !52, size: 64, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !75, file: !76, line: 139, baseType: !52, size: 64, offset: 960)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !75, file: !76, line: 142, baseType: !52, size: 64, offset: 1024)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !75, file: !76, line: 144, baseType: !96, size: 64, offset: 1088)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !75, file: !76, line: 144, size: 64, elements: !97)
!97 = !{!98, !102, !106}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !96, file: !76, line: 146, baseType: !99, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !58, line: 19, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !60, line: 24, baseType: !101)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !96, file: !76, line: 148, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !58, line: 23, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !60, line: 31, baseType: !105)
!105 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !96, file: !76, line: 150, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !76, line: 59, size: 64, elements: !108)
!108 = !{!109, !110, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !107, file: !76, line: 61, baseType: !103, size: 16, flags: DIFlagBitField, extraData: i64 0)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !107, file: !76, line: 63, baseType: !103, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !107, file: !76, line: 65, baseType: !103, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !76, line: 153, baseType: !52, size: 64, offset: 1152)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !75, file: !76, line: 154, baseType: !52, size: 64, offset: 1216)
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !75, file: !76, line: 156, baseType: !115, size: 64, offset: 1280)
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !75, file: !76, line: 156, size: 64, elements: !116)
!116 = !{!117, !118, !119}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !115, file: !76, line: 158, baseType: !99, size: 16)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !115, file: !76, line: 160, baseType: !103, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !115, file: !76, line: 162, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !76, line: 69, size: 64, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !120, file: !76, line: 71, baseType: !103, size: 16, flags: DIFlagBitField, extraData: i64 0)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !120, file: !76, line: 73, baseType: !103, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !120, file: !76, line: 75, baseType: !103, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !120, file: !76, line: 77, baseType: !103, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !120, file: !76, line: 80, baseType: !103, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !76, line: 83, baseType: !103, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !120, file: !76, line: 86, baseType: !103, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !120, file: !76, line: 88, baseType: !103, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !120, file: !76, line: 93, baseType: !103, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !120, file: !76, line: 100, baseType: !103, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "post_handler", scope: !35, file: !32, line: 82, baseType: !133, size: 64, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprobe_post_handler_t", file: !32, line: 55, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !73, !74, !52}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !35, file: !32, line: 85, baseType: !55, size: 8, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ainsn", scope: !35, file: !32, line: 88, baseType: !139, size: 256, offset: 704)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_specific_insn", file: !56, line: 54, size: 256, elements: !140)
!140 = !{!141, !142, !143, !144, !161, !164, !168}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !139, file: !56, line: 56, baseType: !54, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "boostable", scope: !139, file: !56, line: 64, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !139, file: !56, line: 65, baseType: !61, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !56, line: 66, baseType: !145, size: 16, offset: 80)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !56, line: 66, size: 16, elements: !146)
!146 = !{!147, !148, !152, !157}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !145, file: !56, line: 67, baseType: !61, size: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "jcc", scope: !145, file: !56, line: 70, baseType: !149, size: 8)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !145, file: !56, line: 68, size: 8, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !149, file: !56, line: 69, baseType: !61, size: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !145, file: !56, line: 74, baseType: !153, size: 16)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !145, file: !56, line: 71, size: 16, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !56, line: 72, baseType: !61, size: 8)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "asize", scope: !153, file: !56, line: 73, baseType: !61, size: 8, offset: 8)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "indirect", scope: !145, file: !56, line: 77, baseType: !158, size: 8)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !145, file: !56, line: 75, size: 8, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !158, file: !56, line: 76, baseType: !61, size: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "rel32", scope: !139, file: !56, line: 79, baseType: !162, size: 32, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !58, line: 20, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !60, line: 26, baseType: !72)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "emulate_op", scope: !139, file: !56, line: 80, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !73, !74}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tp_len", scope: !139, file: !56, line: 82, baseType: !72, size: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !35, file: !32, line: 94, baseType: !170, size: 32, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !58, line: 21, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !60, line: 27, baseType: !7)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !31, file: !32, line: 354, baseType: !46, size: 128, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "optinsn", scope: !31, file: !32, line: 355, baseType: !174, size: 192, offset: 1152)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_optimized_insn", file: !56, line: 85, size: 192, elements: !175)
!175 = !{!176, !180, !181}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "copied_insn", scope: !174, file: !56, line: 87, baseType: !177, size: 32)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 4)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !174, file: !56, line: 89, baseType: !54, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !174, file: !56, line: 91, baseType: !182, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 61, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !184, line: 72, baseType: !185)
!184 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !184, line: 16, baseType: !52)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !39, line: 154, baseType: !7)
!187 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !49)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kprobe_ctlblk", file: !56, line: 108, size: 448, elements: !196)
!196 = !{!197, !198, !199, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_status", scope: !195, file: !56, line: 109, baseType: !52, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_old_flags", scope: !195, file: !56, line: 110, baseType: !52, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_saved_flags", scope: !195, file: !56, line: 111, baseType: !52, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "prev_kprobe", scope: !195, file: !56, line: 112, baseType: !201, size: 256, offset: 192)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_kprobe", file: !56, line: 100, size: 256, elements: !202)
!202 = !{!203, !204, !205, !206}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !201, file: !56, line: 101, baseType: !73, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !201, file: !56, line: 102, baseType: !52, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "old_flags", scope: !201, file: !56, line: 103, baseType: !52, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "saved_flags", scope: !201, file: !56, line: 104, baseType: !52, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!209 = !{!0, !210, !212, !217, !219, !224, !249, !254}
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "_kbl_addr_optimized_callback", scope: !2, file: !3, line: 205, type: !52, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !3, line: 482, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 240, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 30)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "_kbl_addr_setup_detour_execution", scope: !2, file: !3, line: 555, type: !52, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 48, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 6)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule318", scope: !226, file: !3, line: 203, type: !29, isLocal: true, isDefinition: true)
!226 = distinct !DISubprogram(name: "optimized_callback", scope: !3, file: !3, line: 177, type: !227, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !229)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !30, !74}
!229 = !{!230, !231, !232, !235, !241, !243, !247}
!230 = !DILocalVariable(name: "op", arg: 1, scope: !226, file: !3, line: 177, type: !30)
!231 = !DILocalVariable(name: "regs", arg: 2, scope: !226, file: !3, line: 177, type: !74)
!232 = !DILocalVariable(name: "kcb", scope: !233, file: !3, line: 187, type: !194)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 186, column: 9)
!234 = distinct !DILexicalBlock(scope: !226, file: !3, line: 184, column: 6)
!235 = !DILocalVariable(name: "__vpp_verify", scope: !236, file: !3, line: 198, type: !239)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 198, column: 3)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 198, column: 3)
!238 = distinct !DILexicalBlock(scope: !233, file: !3, line: 198, column: 3)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!241 = !DILocalVariable(name: "pto_val__", scope: !242, file: !3, line: 198, type: !103)
!242 = distinct !DILexicalBlock(scope: !237, file: !3, line: 198, column: 3)
!243 = !DILocalVariable(name: "__vpp_verify", scope: !244, file: !3, line: 201, type: !239)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 201, column: 3)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 201, column: 3)
!246 = distinct !DILexicalBlock(scope: !233, file: !3, line: 201, column: 3)
!247 = !DILocalVariable(name: "pto_val__", scope: !248, file: !3, line: 201, type: !103)
!248 = distinct !DILexicalBlock(scope: !245, file: !3, line: 201, column: 3)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !32, line: 403, type: !251, isLocal: true, isDefinition: true)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 40, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 5)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !19, line: 480, type: !256, isLocal: true, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 168, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 21)
!259 = !{!"rsp"}
!260 = !{i32 7, !"Dwarf Version", i32 5}
!261 = !{i32 2, !"Debug Info Version", i32 3}
!262 = !{i32 1, !"wchar_size", i32 2}
!263 = !{i32 8, !"cf-protection-branch", i32 1}
!264 = !{i32 4, !"function_return_thunk_extern", i32 1}
!265 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!266 = !{i32 1, !"Code Model", i32 2}
!267 = !{i32 1, !"override-stack-alignment", i32 8}
!268 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!269 = distinct !DISubprogram(name: "__recover_optprobed_insn", scope: !3, file: !3, line: 37, type: !270, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{!52, !54, !52}
!272 = !{!273, !274, !275, !276, !277, !278, !279, !286}
!273 = !DILocalVariable(name: "buf", arg: 1, scope: !269, file: !3, line: 37, type: !54)
!274 = !DILocalVariable(name: "addr", arg: 2, scope: !269, file: !3, line: 37, type: !52)
!275 = !DILocalVariable(name: "op", scope: !269, file: !3, line: 39, type: !30)
!276 = !DILocalVariable(name: "kp", scope: !269, file: !3, line: 40, type: !73)
!277 = !DILocalVariable(name: "offs", scope: !269, file: !3, line: 41, type: !187)
!278 = !DILocalVariable(name: "i", scope: !269, file: !3, line: 42, type: !72)
!279 = !DILocalVariable(name: "__mptr", scope: !280, file: !3, line: 48, type: !29)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 48, column: 9)
!281 = distinct !DILexicalBlock(scope: !282, file: !3, line: 47, column: 35)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 47, column: 7)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 44, column: 40)
!284 = distinct !DILexicalBlock(scope: !285, file: !3, line: 44, column: 2)
!285 = distinct !DILexicalBlock(scope: !269, file: !3, line: 44, column: 2)
!286 = !DILabel(scope: !269, name: "found", file: !3, line: 56)
!287 = !DILocation(line: 37, column: 57, scope: !269)
!288 = !DILocation(line: 37, column: 76, scope: !269)
!289 = !DILocation(line: 39, column: 2, scope: !269)
!290 = !DILocation(line: 39, column: 27, scope: !269)
!291 = !DILocation(line: 40, column: 2, scope: !269)
!292 = !DILocation(line: 40, column: 17, scope: !269)
!293 = !DILocation(line: 41, column: 2, scope: !269)
!294 = !DILocation(line: 41, column: 7, scope: !269)
!295 = !DILocation(line: 42, column: 2, scope: !269)
!296 = !DILocation(line: 42, column: 6, scope: !269)
!297 = !DILocation(line: 44, column: 9, scope: !285)
!298 = !DILocation(line: 44, column: 7, scope: !285)
!299 = !DILocation(line: 44, column: 14, scope: !284)
!300 = !DILocation(line: 44, column: 16, scope: !284)
!301 = !DILocation(line: 44, column: 2, scope: !285)
!302 = !DILocation(line: 45, column: 27, scope: !283)
!303 = !DILocation(line: 45, column: 19, scope: !283)
!304 = !DILocation(line: 45, column: 34, scope: !283)
!305 = !DILocation(line: 45, column: 32, scope: !283)
!306 = !DILocation(line: 45, column: 8, scope: !283)
!307 = !DILocation(line: 45, column: 6, scope: !283)
!308 = !DILocation(line: 47, column: 7, scope: !282)
!309 = !DILocation(line: 47, column: 10, scope: !282)
!310 = !DILocation(line: 47, column: 30, scope: !282)
!311 = !DILocation(line: 47, column: 13, scope: !282)
!312 = !DILocation(line: 47, column: 7, scope: !283)
!313 = !DILocation(line: 48, column: 9, scope: !280)
!314 = !DILocation(line: 48, column: 9, scope: !281)
!315 = !DILocation(line: 48, column: 7, scope: !281)
!316 = !DILocation(line: 50, column: 20, scope: !317)
!317 = distinct !DILexicalBlock(scope: !281, file: !3, line: 50, column: 8)
!318 = !DILocation(line: 50, column: 24, scope: !317)
!319 = !DILocation(line: 50, column: 8, scope: !317)
!320 = !DILocation(line: 50, column: 30, scope: !317)
!321 = !DILocation(line: 50, column: 55, scope: !317)
!322 = !DILocation(line: 50, column: 33, scope: !317)
!323 = !DILocation(line: 50, column: 8, scope: !281)
!324 = !DILocation(line: 51, column: 5, scope: !317)
!325 = !DILocation(line: 52, column: 3, scope: !281)
!326 = !DILocation(line: 53, column: 2, scope: !283)
!327 = !DILocation(line: 44, column: 36, scope: !284)
!328 = !DILocation(line: 44, column: 2, scope: !284)
!329 = distinct !{!329, !301, !330, !331, !332}
!330 = !DILocation(line: 53, column: 2, scope: !285)
!331 = !{!"llvm.loop.mustprogress"}
!332 = !{!"llvm.loop.unroll.disable"}
!333 = !DILocation(line: 55, column: 9, scope: !269)
!334 = !DILocation(line: 55, column: 2, scope: !269)
!335 = !DILocation(line: 56, column: 1, scope: !269)
!336 = !DILocation(line: 62, column: 31, scope: !337)
!337 = distinct !DILexicalBlock(scope: !269, file: !3, line: 62, column: 6)
!338 = !DILocation(line: 62, column: 44, scope: !337)
!339 = !DILocation(line: 62, column: 36, scope: !337)
!340 = !DILocation(line: 62, column: 6, scope: !337)
!341 = !DILocation(line: 62, column: 6, scope: !269)
!342 = !DILocation(line: 64, column: 3, scope: !337)
!343 = !DILocation(line: 66, column: 6, scope: !344)
!344 = distinct !DILexicalBlock(scope: !269, file: !3, line: 66, column: 6)
!345 = !DILocation(line: 66, column: 29, scope: !344)
!346 = !DILocation(line: 66, column: 33, scope: !344)
!347 = !DILocation(line: 66, column: 14, scope: !344)
!348 = !DILocation(line: 66, column: 11, scope: !344)
!349 = !DILocation(line: 66, column: 6, scope: !269)
!350 = !DILocation(line: 67, column: 12, scope: !351)
!351 = distinct !DILexicalBlock(scope: !344, file: !3, line: 66, column: 39)
!352 = !DILocation(line: 67, column: 16, scope: !351)
!353 = !DILocation(line: 67, column: 3, scope: !351)
!354 = !DILocation(line: 67, column: 10, scope: !351)
!355 = !DILocation(line: 68, column: 10, scope: !351)
!356 = !DILocation(line: 68, column: 14, scope: !351)
!357 = !DILocation(line: 68, column: 19, scope: !351)
!358 = !DILocation(line: 68, column: 23, scope: !351)
!359 = !DILocation(line: 68, column: 31, scope: !351)
!360 = !DILocation(line: 68, column: 3, scope: !351)
!361 = !DILocation(line: 69, column: 2, scope: !351)
!362 = !DILocation(line: 70, column: 10, scope: !363)
!363 = distinct !DILexicalBlock(scope: !344, file: !3, line: 69, column: 9)
!364 = !DILocation(line: 70, column: 32, scope: !363)
!365 = !DILocation(line: 70, column: 36, scope: !363)
!366 = !DILocation(line: 70, column: 17, scope: !363)
!367 = !DILocation(line: 70, column: 15, scope: !363)
!368 = !DILocation(line: 70, column: 41, scope: !363)
!369 = !DILocation(line: 70, column: 8, scope: !363)
!370 = !DILocation(line: 71, column: 10, scope: !363)
!371 = !DILocation(line: 71, column: 15, scope: !363)
!372 = !DILocation(line: 71, column: 19, scope: !363)
!373 = !DILocation(line: 71, column: 27, scope: !363)
!374 = !DILocation(line: 71, column: 41, scope: !363)
!375 = !DILocation(line: 71, column: 39, scope: !363)
!376 = !DILocation(line: 71, column: 61, scope: !363)
!377 = !DILocation(line: 71, column: 59, scope: !363)
!378 = !DILocation(line: 71, column: 3, scope: !363)
!379 = !DILocation(line: 74, column: 24, scope: !269)
!380 = !DILocation(line: 74, column: 9, scope: !269)
!381 = !DILocation(line: 74, column: 2, scope: !269)
!382 = !DILocation(line: 75, column: 1, scope: !269)
!383 = !DISubprogram(name: "get_kprobe", scope: !32, file: !32, line: 398, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!384 = !DISubroutineType(types: !385)
!385 = !{!73, !29}
!386 = distinct !DISubprogram(name: "kprobe_optimized", scope: !32, file: !32, line: 121, type: !387, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!387 = !DISubroutineType(types: !388)
!388 = !{!389, !73}
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !39, line: 35, baseType: !390)
!390 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!391 = !{!392}
!392 = !DILocalVariable(name: "p", arg: 1, scope: !386, file: !32, line: 121, type: !73)
!393 = !DILocation(line: 121, column: 52, scope: !386)
!394 = !DILocation(line: 123, column: 9, scope: !386)
!395 = !DILocation(line: 123, column: 12, scope: !386)
!396 = !DILocation(line: 123, column: 18, scope: !386)
!397 = !DILocation(line: 123, column: 2, scope: !386)
!398 = distinct !DISubprogram(name: "list_empty", scope: !399, file: !399, line: 371, type: !400, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !404)
!399 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!400 = !DISubroutineType(types: !401)
!401 = !{!72, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!404 = !{!405}
!405 = !DILocalVariable(name: "head", arg: 1, scope: !398, file: !399, line: 371, type: !402)
!406 = !DILocation(line: 371, column: 54, scope: !398)
!407 = !DILocation(line: 373, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !398, file: !399, line: 373, column: 9)
!409 = !DILocation(line: 373, column: 9, scope: !410)
!410 = distinct !DILexicalBlock(scope: !408, file: !399, line: 373, column: 9)
!411 = !DILocation(line: 373, column: 34, scope: !398)
!412 = !DILocation(line: 373, column: 31, scope: !398)
!413 = !DILocation(line: 373, column: 2, scope: !398)
!414 = !DISubprogram(name: "optprobe_queued_unopt", scope: !32, file: !32, line: 376, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!415 = !DISubroutineType(types: !416)
!416 = !{!389, !30}
!417 = !DISubprogram(name: "copy_from_kernel_nofault", scope: !418, file: !418, line: 374, type: !419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!418 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!419 = !DISubroutineType(types: !420)
!420 = !{!187, !29, !239, !182}
!421 = !DILocation(line: 177, column: 45, scope: !226)
!422 = !DILocation(line: 177, column: 65, scope: !226)
!423 = !DILocation(line: 180, column: 23, scope: !424)
!424 = distinct !DILexicalBlock(scope: !226, file: !3, line: 180, column: 6)
!425 = !DILocation(line: 180, column: 27, scope: !424)
!426 = !DILocation(line: 180, column: 6, scope: !424)
!427 = !DILocation(line: 180, column: 6, scope: !226)
!428 = !DILocation(line: 181, column: 3, scope: !424)
!429 = !DILocation(line: 183, column: 2, scope: !226)
!430 = !DILocation(line: 183, column: 2, scope: !431)
!431 = distinct !DILexicalBlock(scope: !226, file: !3, line: 183, column: 2)
!432 = !{i64 2155475458}
!433 = !DILocation(line: 184, column: 6, scope: !234)
!434 = !DILocation(line: 184, column: 6, scope: !226)
!435 = !DILocation(line: 185, column: 30, scope: !436)
!436 = distinct !DILexicalBlock(scope: !234, file: !3, line: 184, column: 24)
!437 = !DILocation(line: 185, column: 34, scope: !436)
!438 = !DILocation(line: 185, column: 3, scope: !436)
!439 = !DILocation(line: 186, column: 2, scope: !436)
!440 = !DILocation(line: 187, column: 3, scope: !233)
!441 = !DILocation(line: 187, column: 25, scope: !233)
!442 = !DILocation(line: 187, column: 31, scope: !233)
!443 = !DILocation(line: 189, column: 3, scope: !233)
!444 = !DILocation(line: 189, column: 9, scope: !233)
!445 = !DILocation(line: 189, column: 12, scope: !233)
!446 = !DILocation(line: 191, column: 3, scope: !233)
!447 = !DILocation(line: 191, column: 9, scope: !233)
!448 = !DILocation(line: 191, column: 12, scope: !233)
!449 = !DILocation(line: 195, column: 29, scope: !233)
!450 = !DILocation(line: 195, column: 33, scope: !233)
!451 = !DILocation(line: 195, column: 36, scope: !233)
!452 = !DILocation(line: 195, column: 14, scope: !233)
!453 = !DILocation(line: 195, column: 41, scope: !233)
!454 = !DILocation(line: 195, column: 3, scope: !233)
!455 = !DILocation(line: 195, column: 9, scope: !233)
!456 = !DILocation(line: 195, column: 12, scope: !233)
!457 = !DILocation(line: 196, column: 3, scope: !233)
!458 = !DILocation(line: 196, column: 9, scope: !233)
!459 = !DILocation(line: 196, column: 17, scope: !233)
!460 = !DILocation(line: 198, column: 3, scope: !238)
!461 = !DILocation(line: 198, column: 3, scope: !237)
!462 = !DILocation(line: 198, column: 3, scope: !236)
!463 = !DILocation(line: 198, column: 3, scope: !242)
!464 = !{i64 2155479490}
!465 = !DILocation(line: 199, column: 3, scope: !233)
!466 = !DILocation(line: 199, column: 8, scope: !233)
!467 = !DILocation(line: 199, column: 22, scope: !233)
!468 = !DILocation(line: 200, column: 20, scope: !233)
!469 = !DILocation(line: 200, column: 24, scope: !233)
!470 = !DILocation(line: 200, column: 28, scope: !233)
!471 = !DILocation(line: 200, column: 3, scope: !233)
!472 = !DILocation(line: 201, column: 3, scope: !246)
!473 = !DILocation(line: 201, column: 3, scope: !245)
!474 = !DILocation(line: 201, column: 3, scope: !244)
!475 = !DILocation(line: 201, column: 3, scope: !248)
!476 = !{i64 2155483760}
!477 = !DILocation(line: 202, column: 2, scope: !234)
!478 = !DILocation(line: 203, column: 2, scope: !226)
!479 = !DILocation(line: 203, column: 2, scope: !480)
!480 = distinct !DILexicalBlock(scope: !226, file: !3, line: 203, column: 2)
!481 = !{i64 2155484061}
!482 = !DILocation(line: 203, column: 2, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !3, line: 203, column: 2)
!484 = !DILocation(line: 203, column: 2, scope: !485)
!485 = distinct !DILexicalBlock(scope: !483, file: !3, line: 203, column: 2)
!486 = !{i64 2155484243}
!487 = !DILocation(line: 204, column: 1, scope: !226)
!488 = distinct !DISubprogram(name: "arch_check_optimized_kprobe", scope: !3, file: !3, line: 341, type: !489, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{!72, !30}
!491 = !{!492, !493, !494}
!492 = !DILocalVariable(name: "op", arg: 1, scope: !488, file: !3, line: 341, type: !30)
!493 = !DILocalVariable(name: "i", scope: !488, file: !3, line: 343, type: !72)
!494 = !DILocalVariable(name: "p", scope: !488, file: !3, line: 344, type: !73)
!495 = !DILocation(line: 341, column: 58, scope: !488)
!496 = !DILocation(line: 343, column: 2, scope: !488)
!497 = !DILocation(line: 343, column: 6, scope: !488)
!498 = !DILocation(line: 344, column: 2, scope: !488)
!499 = !DILocation(line: 344, column: 17, scope: !488)
!500 = !DILocation(line: 346, column: 9, scope: !501)
!501 = distinct !DILexicalBlock(scope: !488, file: !3, line: 346, column: 2)
!502 = !DILocation(line: 346, column: 7, scope: !501)
!503 = !DILocation(line: 346, column: 14, scope: !504)
!504 = distinct !DILexicalBlock(scope: !501, file: !3, line: 346, column: 2)
!505 = !DILocation(line: 346, column: 18, scope: !504)
!506 = !DILocation(line: 346, column: 22, scope: !504)
!507 = !DILocation(line: 346, column: 30, scope: !504)
!508 = !DILocation(line: 346, column: 16, scope: !504)
!509 = !DILocation(line: 346, column: 2, scope: !501)
!510 = !DILocation(line: 347, column: 18, scope: !511)
!511 = distinct !DILexicalBlock(scope: !504, file: !3, line: 346, column: 41)
!512 = !DILocation(line: 347, column: 22, scope: !511)
!513 = !DILocation(line: 347, column: 25, scope: !511)
!514 = !DILocation(line: 347, column: 32, scope: !511)
!515 = !DILocation(line: 347, column: 30, scope: !511)
!516 = !DILocation(line: 347, column: 7, scope: !511)
!517 = !DILocation(line: 347, column: 5, scope: !511)
!518 = !DILocation(line: 348, column: 7, scope: !519)
!519 = distinct !DILexicalBlock(scope: !511, file: !3, line: 348, column: 7)
!520 = !DILocation(line: 348, column: 9, scope: !519)
!521 = !DILocation(line: 348, column: 29, scope: !519)
!522 = !DILocation(line: 348, column: 13, scope: !519)
!523 = !DILocation(line: 348, column: 7, scope: !511)
!524 = !DILocation(line: 349, column: 4, scope: !519)
!525 = !DILocation(line: 350, column: 2, scope: !511)
!526 = !DILocation(line: 346, column: 37, scope: !504)
!527 = !DILocation(line: 346, column: 2, scope: !504)
!528 = distinct !{!528, !509, !529, !331, !332}
!529 = !DILocation(line: 350, column: 2, scope: !501)
!530 = !DILocation(line: 352, column: 2, scope: !488)
!531 = !DILocation(line: 353, column: 1, scope: !488)
!532 = !DISubprogram(name: "kprobe_disarmed", scope: !32, file: !32, line: 377, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!533 = distinct !DISubprogram(name: "arch_within_optimized_kprobe", scope: !3, file: !3, line: 356, type: !534, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!534 = !DISubroutineType(types: !535)
!535 = !{!72, !30, !54}
!536 = !{!537, !538}
!537 = !DILocalVariable(name: "op", arg: 1, scope: !533, file: !3, line: 356, type: !30)
!538 = !DILocalVariable(name: "addr", arg: 2, scope: !533, file: !3, line: 357, type: !54)
!539 = !DILocation(line: 356, column: 59, scope: !533)
!540 = !DILocation(line: 357, column: 23, scope: !533)
!541 = !DILocation(line: 359, column: 10, scope: !533)
!542 = !DILocation(line: 359, column: 14, scope: !533)
!543 = !DILocation(line: 359, column: 17, scope: !533)
!544 = !DILocation(line: 359, column: 25, scope: !533)
!545 = !DILocation(line: 359, column: 22, scope: !533)
!546 = !DILocation(line: 359, column: 30, scope: !533)
!547 = !DILocation(line: 360, column: 3, scope: !533)
!548 = !DILocation(line: 360, column: 7, scope: !533)
!549 = !DILocation(line: 360, column: 10, scope: !533)
!550 = !DILocation(line: 360, column: 17, scope: !533)
!551 = !DILocation(line: 360, column: 21, scope: !533)
!552 = !DILocation(line: 360, column: 29, scope: !533)
!553 = !DILocation(line: 360, column: 15, scope: !533)
!554 = !DILocation(line: 360, column: 36, scope: !533)
!555 = !DILocation(line: 360, column: 34, scope: !533)
!556 = !DILocation(line: 0, scope: !533)
!557 = !DILocation(line: 359, column: 2, scope: !533)
!558 = distinct !DISubprogram(name: "arch_remove_optimized_kprobe", scope: !3, file: !3, line: 381, type: !559, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !561)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !30}
!561 = !{!562}
!562 = !DILocalVariable(name: "op", arg: 1, scope: !558, file: !3, line: 381, type: !30)
!563 = !DILocation(line: 381, column: 60, scope: !558)
!564 = !DILocation(line: 383, column: 33, scope: !558)
!565 = !DILocation(line: 383, column: 2, scope: !558)
!566 = !DILocation(line: 384, column: 1, scope: !558)
!567 = distinct !DISubprogram(name: "__arch_remove_optimized_kprobe", scope: !3, file: !3, line: 365, type: !568, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !570)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !30, !72}
!570 = !{!571, !572, !573, !574}
!571 = !DILocalVariable(name: "op", arg: 1, scope: !567, file: !3, line: 365, type: !30)
!572 = !DILocalVariable(name: "dirty", arg: 2, scope: !567, file: !3, line: 365, type: !72)
!573 = !DILocalVariable(name: "slot", scope: !567, file: !3, line: 367, type: !188)
!574 = !DILocalVariable(name: "len", scope: !575, file: !3, line: 369, type: !72)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 368, column: 12)
!576 = distinct !DILexicalBlock(scope: !567, file: !3, line: 368, column: 6)
!577 = !DILocation(line: 365, column: 62, scope: !567)
!578 = !DILocation(line: 365, column: 70, scope: !567)
!579 = !DILocation(line: 367, column: 2, scope: !567)
!580 = !DILocation(line: 367, column: 6, scope: !567)
!581 = !DILocation(line: 367, column: 13, scope: !567)
!582 = !DILocation(line: 367, column: 17, scope: !567)
!583 = !DILocation(line: 367, column: 25, scope: !567)
!584 = !DILocation(line: 368, column: 6, scope: !576)
!585 = !DILocation(line: 368, column: 6, scope: !567)
!586 = !DILocation(line: 369, column: 3, scope: !575)
!587 = !DILocation(line: 369, column: 7, scope: !575)
!588 = !DILocation(line: 369, column: 28, scope: !575)
!589 = !DILocation(line: 369, column: 32, scope: !575)
!590 = !DILocation(line: 369, column: 40, scope: !575)
!591 = !DILocation(line: 369, column: 26, scope: !575)
!592 = !DILocation(line: 369, column: 45, scope: !575)
!593 = !DILocation(line: 369, column: 13, scope: !575)
!594 = !DILocation(line: 372, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !575, file: !3, line: 372, column: 7)
!596 = !DILocation(line: 372, column: 7, scope: !575)
!597 = !DILocation(line: 373, column: 25, scope: !595)
!598 = !DILocation(line: 373, column: 31, scope: !595)
!599 = !DILocation(line: 373, column: 37, scope: !595)
!600 = !DILocation(line: 373, column: 4, scope: !595)
!601 = !DILocation(line: 375, column: 21, scope: !575)
!602 = !DILocation(line: 375, column: 27, scope: !575)
!603 = !DILocation(line: 375, column: 3, scope: !575)
!604 = !DILocation(line: 376, column: 3, scope: !575)
!605 = !DILocation(line: 376, column: 7, scope: !575)
!606 = !DILocation(line: 376, column: 15, scope: !575)
!607 = !DILocation(line: 376, column: 20, scope: !575)
!608 = !DILocation(line: 377, column: 3, scope: !575)
!609 = !DILocation(line: 377, column: 7, scope: !575)
!610 = !DILocation(line: 377, column: 15, scope: !575)
!611 = !DILocation(line: 377, column: 20, scope: !575)
!612 = !DILocation(line: 378, column: 2, scope: !576)
!613 = !DILocation(line: 378, column: 2, scope: !575)
!614 = !DILocation(line: 379, column: 1, scope: !567)
!615 = distinct !DISubprogram(name: "arch_prepare_optimized_kprobe", scope: !3, file: !3, line: 391, type: !616, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{!72, !30, !73}
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !629, !630}
!619 = !DILocalVariable(name: "op", arg: 1, scope: !615, file: !3, line: 391, type: !30)
!620 = !DILocalVariable(name: "__unused", arg: 2, scope: !615, file: !3, line: 392, type: !73)
!621 = !DILocalVariable(name: "buf", scope: !615, file: !3, line: 394, type: !188)
!622 = !DILocalVariable(name: "slot", scope: !615, file: !3, line: 394, type: !188)
!623 = !DILocalVariable(name: "ret", scope: !615, file: !3, line: 395, type: !72)
!624 = !DILocalVariable(name: "len", scope: !615, file: !3, line: 395, type: !72)
!625 = !DILocalVariable(name: "rel", scope: !615, file: !3, line: 396, type: !187)
!626 = !DILocalVariable(name: "__x", scope: !627, file: !3, line: 416, type: !187)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 416, column: 6)
!628 = distinct !DILexicalBlock(scope: !615, file: !3, line: 416, column: 6)
!629 = !DILabel(scope: !615, name: "out", file: !3, line: 456)
!630 = !DILabel(scope: !615, name: "err", file: !3, line: 460)
!631 = !DILocation(line: 391, column: 60, scope: !615)
!632 = !DILocation(line: 392, column: 22, scope: !615)
!633 = !DILocation(line: 394, column: 2, scope: !615)
!634 = !DILocation(line: 394, column: 6, scope: !615)
!635 = !DILocation(line: 394, column: 19, scope: !615)
!636 = !DILocation(line: 395, column: 2, scope: !615)
!637 = !DILocation(line: 395, column: 6, scope: !615)
!638 = !DILocation(line: 395, column: 11, scope: !615)
!639 = !DILocation(line: 396, column: 2, scope: !615)
!640 = !DILocation(line: 396, column: 7, scope: !615)
!641 = !DILocation(line: 398, column: 35, scope: !642)
!642 = distinct !DILexicalBlock(scope: !615, file: !3, line: 398, column: 6)
!643 = !DILocation(line: 398, column: 39, scope: !642)
!644 = !DILocation(line: 398, column: 42, scope: !642)
!645 = !DILocation(line: 398, column: 20, scope: !642)
!646 = !DILocation(line: 398, column: 7, scope: !642)
!647 = !DILocation(line: 398, column: 6, scope: !615)
!648 = !DILocation(line: 399, column: 3, scope: !642)
!649 = !DILocation(line: 401, column: 8, scope: !615)
!650 = !DILocation(line: 401, column: 6, scope: !615)
!651 = !DILocation(line: 402, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !615, file: !3, line: 402, column: 6)
!653 = !DILocation(line: 402, column: 6, scope: !615)
!654 = !DILocation(line: 403, column: 3, scope: !652)
!655 = !DILocation(line: 405, column: 28, scope: !615)
!656 = !DILocation(line: 405, column: 26, scope: !615)
!657 = !DILocation(line: 405, column: 2, scope: !615)
!658 = !DILocation(line: 405, column: 6, scope: !615)
!659 = !DILocation(line: 405, column: 14, scope: !615)
!660 = !DILocation(line: 405, column: 19, scope: !615)
!661 = !DILocation(line: 406, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !615, file: !3, line: 406, column: 6)
!663 = !DILocation(line: 406, column: 6, scope: !615)
!664 = !DILocation(line: 407, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !3, line: 406, column: 13)
!666 = !DILocation(line: 408, column: 3, scope: !665)
!667 = !DILocation(line: 415, column: 14, scope: !615)
!668 = !DILocation(line: 415, column: 8, scope: !615)
!669 = !DILocation(line: 415, column: 27, scope: !615)
!670 = !DILocation(line: 415, column: 31, scope: !615)
!671 = !DILocation(line: 415, column: 34, scope: !615)
!672 = !DILocation(line: 415, column: 21, scope: !615)
!673 = !DILocation(line: 415, column: 19, scope: !615)
!674 = !DILocation(line: 415, column: 39, scope: !615)
!675 = !DILocation(line: 415, column: 6, scope: !615)
!676 = !DILocation(line: 416, column: 6, scope: !627)
!677 = !DILocation(line: 416, column: 6, scope: !628)
!678 = !DILocation(line: 416, column: 15, scope: !628)
!679 = !DILocation(line: 416, column: 6, scope: !615)
!680 = !DILocation(line: 417, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !628, file: !3, line: 416, column: 29)
!682 = !DILocation(line: 418, column: 3, scope: !681)
!683 = !DILocation(line: 422, column: 9, scope: !615)
!684 = !DILocation(line: 422, column: 2, scope: !615)
!685 = !DILocation(line: 425, column: 36, scope: !615)
!686 = !DILocation(line: 425, column: 40, scope: !615)
!687 = !DILocation(line: 425, column: 56, scope: !615)
!688 = !DILocation(line: 425, column: 60, scope: !615)
!689 = !DILocation(line: 425, column: 63, scope: !615)
!690 = !DILocation(line: 426, column: 8, scope: !615)
!691 = !DILocation(line: 426, column: 13, scope: !615)
!692 = !DILocation(line: 425, column: 8, scope: !615)
!693 = !DILocation(line: 425, column: 6, scope: !615)
!694 = !DILocation(line: 427, column: 6, scope: !695)
!695 = distinct !DILexicalBlock(scope: !615, file: !3, line: 427, column: 6)
!696 = !DILocation(line: 427, column: 10, scope: !695)
!697 = !DILocation(line: 427, column: 6, scope: !615)
!698 = !DILocation(line: 428, column: 3, scope: !695)
!699 = !DILocation(line: 429, column: 21, scope: !615)
!700 = !DILocation(line: 429, column: 2, scope: !615)
!701 = !DILocation(line: 429, column: 6, scope: !615)
!702 = !DILocation(line: 429, column: 14, scope: !615)
!703 = !DILocation(line: 429, column: 19, scope: !615)
!704 = !DILocation(line: 430, column: 23, scope: !615)
!705 = !DILocation(line: 430, column: 27, scope: !615)
!706 = !DILocation(line: 430, column: 35, scope: !615)
!707 = !DILocation(line: 430, column: 21, scope: !615)
!708 = !DILocation(line: 430, column: 8, scope: !615)
!709 = !DILocation(line: 430, column: 6, scope: !615)
!710 = !DILocation(line: 432, column: 18, scope: !615)
!711 = !DILocation(line: 432, column: 22, scope: !615)
!712 = !DILocation(line: 432, column: 2, scope: !615)
!713 = !DILocation(line: 435, column: 22, scope: !615)
!714 = !DILocation(line: 435, column: 26, scope: !615)
!715 = !DILocation(line: 435, column: 58, scope: !615)
!716 = !DILocation(line: 435, column: 43, scope: !615)
!717 = !DILocation(line: 435, column: 2, scope: !615)
!718 = !DILocation(line: 438, column: 21, scope: !615)
!719 = !DILocation(line: 438, column: 25, scope: !615)
!720 = !DILocation(line: 439, column: 7, scope: !615)
!721 = !DILocation(line: 439, column: 12, scope: !615)
!722 = !DILocation(line: 438, column: 2, scope: !615)
!723 = !DILocation(line: 442, column: 21, scope: !615)
!724 = !DILocation(line: 442, column: 27, scope: !615)
!725 = !DILocation(line: 442, column: 25, scope: !615)
!726 = !DILocation(line: 442, column: 32, scope: !615)
!727 = !DILocation(line: 442, column: 39, scope: !615)
!728 = !DILocation(line: 442, column: 37, scope: !615)
!729 = !DILocation(line: 443, column: 13, scope: !615)
!730 = !DILocation(line: 443, column: 17, scope: !615)
!731 = !DILocation(line: 443, column: 20, scope: !615)
!732 = !DILocation(line: 443, column: 27, scope: !615)
!733 = !DILocation(line: 443, column: 31, scope: !615)
!734 = !DILocation(line: 443, column: 39, scope: !615)
!735 = !DILocation(line: 443, column: 25, scope: !615)
!736 = !DILocation(line: 442, column: 2, scope: !615)
!737 = !DILocation(line: 444, column: 6, scope: !615)
!738 = !DILocation(line: 452, column: 23, scope: !615)
!739 = !DILocation(line: 452, column: 38, scope: !615)
!740 = !DILocation(line: 452, column: 43, scope: !615)
!741 = !DILocation(line: 452, column: 2, scope: !615)
!742 = !DILocation(line: 453, column: 12, scope: !615)
!743 = !DILocation(line: 453, column: 18, scope: !615)
!744 = !DILocation(line: 453, column: 23, scope: !615)
!745 = !DILocation(line: 453, column: 2, scope: !615)
!746 = !DILocation(line: 455, column: 6, scope: !615)
!747 = !DILocation(line: 455, column: 2, scope: !615)
!748 = !DILocation(line: 456, column: 1, scope: !615)
!749 = !DILocation(line: 457, column: 8, scope: !615)
!750 = !DILocation(line: 457, column: 2, scope: !615)
!751 = !DILocation(line: 458, column: 9, scope: !615)
!752 = !DILocation(line: 458, column: 2, scope: !615)
!753 = !DILocation(line: 460, column: 1, scope: !615)
!754 = !DILocation(line: 461, column: 33, scope: !615)
!755 = !DILocation(line: 461, column: 2, scope: !615)
!756 = !DILocation(line: 462, column: 2, scope: !615)
!757 = !DILocation(line: 463, column: 1, scope: !615)
!758 = distinct !DISubprogram(name: "can_optimize", scope: !3, file: !3, line: 264, type: !759, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !761)
!759 = !DISubroutineType(types: !760)
!760 = !{!72, !52}
!761 = !{!762, !763, !764, !765, !766, !812, !816, !818}
!762 = !DILocalVariable(name: "paddr", arg: 1, scope: !758, file: !3, line: 264, type: !52)
!763 = !DILocalVariable(name: "addr", scope: !758, file: !3, line: 266, type: !52)
!764 = !DILocalVariable(name: "size", scope: !758, file: !3, line: 266, type: !52)
!765 = !DILocalVariable(name: "offset", scope: !758, file: !3, line: 266, type: !52)
!766 = !DILocalVariable(name: "insn", scope: !758, file: !3, line: 267, type: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn", file: !6, line: 68, size: 896, elements: !768)
!768 = !{!769, !783, !784, !785, !786, !787, !788, !789, !795, !800, !801, !803, !804, !805, !806, !807, !810, !811}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !767, file: !6, line: 69, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn_field", file: !6, line: 16, size: 64, elements: !771)
!771 = !{!772, !781, !782}
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !6, line: 17, baseType: !773, size: 32)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !6, line: 17, size: 32, elements: !774)
!774 = !{!775, !778}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !773, file: !6, line: 18, baseType: !776, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_value_t", file: !777, line: 13, baseType: !72)
!777 = !DIFile(filename: "./arch/x86/include/asm/inat_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cebd64027eadc0d452590e3ac4fca7d6")
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !773, file: !6, line: 19, baseType: !779, size: 32)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, size: 32, elements: !178)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_byte_t", file: !777, line: 12, baseType: !61)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "got", scope: !770, file: !6, line: 22, baseType: !61, size: 8, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !770, file: !6, line: 23, baseType: !61, size: 8, offset: 40)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rex_prefix", scope: !767, file: !6, line: 73, baseType: !770, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "vex_prefix", scope: !767, file: !6, line: 74, baseType: !770, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !767, file: !6, line: 75, baseType: !770, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "modrm", scope: !767, file: !6, line: 80, baseType: !770, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !767, file: !6, line: 81, baseType: !770, size: 64, offset: 320)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "displacement", scope: !767, file: !6, line: 82, baseType: !770, size: 64, offset: 384)
!789 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !6, line: 83, baseType: !790, size: 64, offset: 448)
!790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !6, line: 83, size: 64, elements: !791)
!791 = !{!792, !793, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "immediate", scope: !790, file: !6, line: 84, baseType: !770, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "moffset1", scope: !790, file: !6, line: 85, baseType: !770, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "immediate1", scope: !790, file: !6, line: 86, baseType: !770, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !6, line: 88, baseType: !796, size: 64, offset: 512)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !6, line: 88, size: 64, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "moffset2", scope: !796, file: !6, line: 89, baseType: !770, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "immediate2", scope: !796, file: !6, line: 90, baseType: !770, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "emulate_prefix_size", scope: !767, file: !6, line: 93, baseType: !72, size: 32, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !767, file: !6, line: 94, baseType: !802, size: 32, offset: 608)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_attr_t", file: !777, line: 11, baseType: !7)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "opnd_bytes", scope: !767, file: !6, line: 95, baseType: !61, size: 8, offset: 640)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "addr_bytes", scope: !767, file: !6, line: 96, baseType: !61, size: 8, offset: 648)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !767, file: !6, line: 97, baseType: !61, size: 8, offset: 656)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "x86_64", scope: !767, file: !6, line: 98, baseType: !61, size: 8, offset: 664)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "kaddr", scope: !767, file: !6, line: 100, baseType: !808, size: 64, offset: 704)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "end_kaddr", scope: !767, file: !6, line: 101, baseType: !808, size: 64, offset: 768)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "next_byte", scope: !767, file: !6, line: 102, baseType: !808, size: 64, offset: 832)
!812 = !DILocalVariable(name: "buf", scope: !758, file: !3, line: 268, type: !813)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 120, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 15)
!816 = !DILocalVariable(name: "recovered_insn", scope: !817, file: !3, line: 289, type: !52)
!817 = distinct !DILexicalBlock(scope: !758, file: !3, line: 288, column: 39)
!818 = !DILocalVariable(name: "ret", scope: !817, file: !3, line: 290, type: !72)
!819 = !DILocation(line: 264, column: 39, scope: !758)
!820 = !DILocation(line: 266, column: 2, scope: !758)
!821 = !DILocation(line: 266, column: 16, scope: !758)
!822 = !DILocation(line: 266, column: 22, scope: !758)
!823 = !DILocation(line: 266, column: 32, scope: !758)
!824 = !DILocation(line: 267, column: 2, scope: !758)
!825 = !DILocation(line: 267, column: 14, scope: !758)
!826 = !DILocation(line: 268, column: 2, scope: !758)
!827 = !DILocation(line: 268, column: 18, scope: !758)
!828 = !DILocation(line: 271, column: 35, scope: !829)
!829 = distinct !DILexicalBlock(scope: !758, file: !3, line: 271, column: 6)
!830 = !DILocation(line: 271, column: 7, scope: !829)
!831 = !DILocation(line: 271, column: 6, scope: !758)
!832 = !DILocation(line: 272, column: 3, scope: !829)
!833 = !DILocation(line: 278, column: 8, scope: !834)
!834 = distinct !DILexicalBlock(scope: !758, file: !3, line: 278, column: 6)
!835 = !DILocation(line: 278, column: 14, scope: !834)
!836 = !DILocation(line: 278, column: 52, scope: !834)
!837 = !DILocation(line: 279, column: 8, scope: !834)
!838 = !DILocation(line: 279, column: 14, scope: !834)
!839 = !DILocation(line: 278, column: 6, scope: !758)
!840 = !DILocation(line: 280, column: 3, scope: !834)
!841 = !DILocation(line: 283, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !758, file: !3, line: 283, column: 6)
!843 = !DILocation(line: 283, column: 13, scope: !842)
!844 = !DILocation(line: 283, column: 11, scope: !842)
!845 = !DILocation(line: 283, column: 20, scope: !842)
!846 = !DILocation(line: 283, column: 6, scope: !758)
!847 = !DILocation(line: 284, column: 3, scope: !842)
!848 = !DILocation(line: 287, column: 9, scope: !758)
!849 = !DILocation(line: 287, column: 17, scope: !758)
!850 = !DILocation(line: 287, column: 15, scope: !758)
!851 = !DILocation(line: 287, column: 7, scope: !758)
!852 = !DILocation(line: 288, column: 2, scope: !758)
!853 = !DILocation(line: 288, column: 9, scope: !758)
!854 = !DILocation(line: 288, column: 16, scope: !758)
!855 = !DILocation(line: 288, column: 24, scope: !758)
!856 = !DILocation(line: 288, column: 22, scope: !758)
!857 = !DILocation(line: 288, column: 33, scope: !758)
!858 = !DILocation(line: 288, column: 31, scope: !758)
!859 = !DILocation(line: 288, column: 14, scope: !758)
!860 = !DILocation(line: 289, column: 3, scope: !817)
!861 = !DILocation(line: 289, column: 17, scope: !817)
!862 = !DILocation(line: 290, column: 3, scope: !817)
!863 = !DILocation(line: 290, column: 7, scope: !817)
!864 = !DILocation(line: 292, column: 31, scope: !865)
!865 = distinct !DILexicalBlock(scope: !817, file: !3, line: 292, column: 7)
!866 = !DILocation(line: 292, column: 7, scope: !865)
!867 = !DILocation(line: 292, column: 7, scope: !817)
!868 = !DILocation(line: 297, column: 4, scope: !865)
!869 = !DILocation(line: 298, column: 47, scope: !817)
!870 = !DILocation(line: 298, column: 52, scope: !817)
!871 = !DILocation(line: 298, column: 20, scope: !817)
!872 = !DILocation(line: 298, column: 18, scope: !817)
!873 = !DILocation(line: 299, column: 8, scope: !874)
!874 = distinct !DILexicalBlock(scope: !817, file: !3, line: 299, column: 7)
!875 = !DILocation(line: 299, column: 7, scope: !817)
!876 = !DILocation(line: 300, column: 4, scope: !874)
!877 = !DILocation(line: 302, column: 9, scope: !817)
!878 = !DILocation(line: 302, column: 7, scope: !817)
!879 = !DILocation(line: 303, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !817, file: !3, line: 303, column: 7)
!881 = !DILocation(line: 303, column: 11, scope: !880)
!882 = !DILocation(line: 303, column: 7, scope: !817)
!883 = !DILocation(line: 304, column: 4, scope: !880)
!884 = !DILocation(line: 315, column: 24, scope: !817)
!885 = !DILocation(line: 315, column: 16, scope: !817)
!886 = !DILocation(line: 315, column: 8, scope: !817)
!887 = !DILocation(line: 315, column: 14, scope: !817)
!888 = !DILocation(line: 316, column: 29, scope: !817)
!889 = !DILocation(line: 316, column: 41, scope: !817)
!890 = !DILocation(line: 316, column: 36, scope: !817)
!891 = !DILocation(line: 316, column: 34, scope: !817)
!892 = !DILocation(line: 316, column: 20, scope: !817)
!893 = !DILocation(line: 316, column: 8, scope: !817)
!894 = !DILocation(line: 316, column: 18, scope: !817)
!895 = !DILocation(line: 331, column: 35, scope: !896)
!896 = distinct !DILexicalBlock(scope: !817, file: !3, line: 331, column: 7)
!897 = !DILocation(line: 331, column: 41, scope: !896)
!898 = !DILocation(line: 331, column: 7, scope: !896)
!899 = !DILocation(line: 331, column: 7, scope: !817)
!900 = !DILocation(line: 333, column: 4, scope: !896)
!901 = !DILocation(line: 334, column: 16, scope: !817)
!902 = !DILocation(line: 334, column: 11, scope: !817)
!903 = !DILocation(line: 334, column: 8, scope: !817)
!904 = !DILocation(line: 335, column: 2, scope: !758)
!905 = distinct !{!905, !852, !904, !331, !332}
!906 = !DILocation(line: 337, column: 2, scope: !758)
!907 = !DILocation(line: 338, column: 1, scope: !758)
!908 = distinct !DISubprogram(name: "kzalloc", scope: !19, file: !19, line: 719, type: !909, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !911)
!909 = !DISubroutineType(types: !910)
!910 = !{!29, !182, !186}
!911 = !{!912, !913}
!912 = !DILocalVariable(name: "size", arg: 1, scope: !908, file: !19, line: 719, type: !182)
!913 = !DILocalVariable(name: "flags", arg: 2, scope: !908, file: !19, line: 719, type: !186)
!914 = !DILocation(line: 719, column: 52, scope: !908)
!915 = !DILocation(line: 719, column: 64, scope: !908)
!916 = !DILocation(line: 721, column: 17, scope: !908)
!917 = !DILocation(line: 721, column: 23, scope: !908)
!918 = !DILocation(line: 721, column: 29, scope: !908)
!919 = !DILocation(line: 721, column: 9, scope: !908)
!920 = !DILocation(line: 721, column: 2, scope: !908)
!921 = distinct !DISubprogram(name: "get_optinsn_slot", scope: !32, file: !32, line: 373, type: !922, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!922 = !DISubroutineType(types: !923)
!923 = !{!54}
!924 = !DILocation(line: 373, column: 1, scope: !921)
!925 = distinct !DISubprogram(name: "copy_optimized_instructions", scope: !3, file: !3, line: 207, type: !926, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!72, !188, !188, !188}
!928 = !{!929, !930, !931, !932, !933, !934}
!929 = !DILocalVariable(name: "dest", arg: 1, scope: !925, file: !3, line: 207, type: !188)
!930 = !DILocalVariable(name: "src", arg: 2, scope: !925, file: !3, line: 207, type: !188)
!931 = !DILocalVariable(name: "real", arg: 3, scope: !925, file: !3, line: 207, type: !188)
!932 = !DILocalVariable(name: "insn", scope: !925, file: !3, line: 209, type: !767)
!933 = !DILocalVariable(name: "len", scope: !925, file: !3, line: 210, type: !72)
!934 = !DILocalVariable(name: "ret", scope: !925, file: !3, line: 210, type: !72)
!935 = !DILocation(line: 207, column: 44, scope: !925)
!936 = !DILocation(line: 207, column: 54, scope: !925)
!937 = !DILocation(line: 207, column: 63, scope: !925)
!938 = !DILocation(line: 209, column: 2, scope: !925)
!939 = !DILocation(line: 209, column: 14, scope: !925)
!940 = !DILocation(line: 210, column: 2, scope: !925)
!941 = !DILocation(line: 210, column: 6, scope: !925)
!942 = !DILocation(line: 210, column: 15, scope: !925)
!943 = !DILocation(line: 212, column: 2, scope: !925)
!944 = !DILocation(line: 212, column: 9, scope: !925)
!945 = !DILocation(line: 212, column: 13, scope: !925)
!946 = !DILocation(line: 213, column: 28, scope: !947)
!947 = distinct !DILexicalBlock(scope: !925, file: !3, line: 212, column: 32)
!948 = !DILocation(line: 213, column: 35, scope: !947)
!949 = !DILocation(line: 213, column: 33, scope: !947)
!950 = !DILocation(line: 213, column: 40, scope: !947)
!951 = !DILocation(line: 213, column: 46, scope: !947)
!952 = !DILocation(line: 213, column: 44, scope: !947)
!953 = !DILocation(line: 213, column: 51, scope: !947)
!954 = !DILocation(line: 213, column: 58, scope: !947)
!955 = !DILocation(line: 213, column: 56, scope: !947)
!956 = !DILocation(line: 213, column: 9, scope: !947)
!957 = !DILocation(line: 213, column: 7, scope: !947)
!958 = !DILocation(line: 214, column: 8, scope: !959)
!959 = distinct !DILexicalBlock(scope: !947, file: !3, line: 214, column: 7)
!960 = !DILocation(line: 214, column: 12, scope: !959)
!961 = !DILocation(line: 214, column: 33, scope: !959)
!962 = !DILocation(line: 214, column: 39, scope: !959)
!963 = !DILocation(line: 214, column: 37, scope: !959)
!964 = !DILocation(line: 214, column: 16, scope: !959)
!965 = !DILocation(line: 214, column: 7, scope: !947)
!966 = !DILocation(line: 215, column: 4, scope: !959)
!967 = !DILocation(line: 216, column: 10, scope: !947)
!968 = !DILocation(line: 216, column: 7, scope: !947)
!969 = distinct !{!969, !943, !970, !331, !332}
!970 = !DILocation(line: 217, column: 2, scope: !925)
!971 = !DILocation(line: 219, column: 27, scope: !972)
!972 = distinct !DILexicalBlock(scope: !925, file: !3, line: 219, column: 6)
!973 = !DILocation(line: 219, column: 32, scope: !972)
!974 = !DILocation(line: 219, column: 38, scope: !972)
!975 = !DILocation(line: 219, column: 36, scope: !972)
!976 = !DILocation(line: 219, column: 42, scope: !972)
!977 = !DILocation(line: 219, column: 6, scope: !972)
!978 = !DILocation(line: 219, column: 47, scope: !972)
!979 = !DILocation(line: 220, column: 33, scope: !972)
!980 = !DILocation(line: 220, column: 38, scope: !972)
!981 = !DILocation(line: 220, column: 44, scope: !972)
!982 = !DILocation(line: 220, column: 42, scope: !972)
!983 = !DILocation(line: 220, column: 48, scope: !972)
!984 = !DILocation(line: 220, column: 6, scope: !972)
!985 = !DILocation(line: 220, column: 53, scope: !972)
!986 = !DILocation(line: 221, column: 31, scope: !972)
!987 = !DILocation(line: 221, column: 36, scope: !972)
!988 = !DILocation(line: 221, column: 42, scope: !972)
!989 = !DILocation(line: 221, column: 40, scope: !972)
!990 = !DILocation(line: 221, column: 46, scope: !972)
!991 = !DILocation(line: 221, column: 6, scope: !972)
!992 = !DILocation(line: 221, column: 51, scope: !972)
!993 = !DILocation(line: 222, column: 32, scope: !972)
!994 = !DILocation(line: 222, column: 37, scope: !972)
!995 = !DILocation(line: 222, column: 43, scope: !972)
!996 = !DILocation(line: 222, column: 41, scope: !972)
!997 = !DILocation(line: 222, column: 47, scope: !972)
!998 = !DILocation(line: 222, column: 6, scope: !972)
!999 = !DILocation(line: 219, column: 6, scope: !925)
!1000 = !DILocation(line: 223, column: 3, scope: !972)
!1001 = !DILocation(line: 225, column: 9, scope: !925)
!1002 = !DILocation(line: 225, column: 2, scope: !925)
!1003 = !DILocation(line: 226, column: 1, scope: !925)
!1004 = distinct !DISubprogram(name: "synthesize_clac", scope: !3, file: !3, line: 77, type: !1005, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1007)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !54}
!1007 = !{!1008}
!1008 = !DILocalVariable(name: "addr", arg: 1, scope: !1004, file: !3, line: 77, type: !54)
!1009 = !DILocation(line: 77, column: 46, scope: !1004)
!1010 = !DILocation(line: 83, column: 6, scope: !1004)
!1011 = !DILocation(line: 83, column: 7, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 83, column: 6)
!1013 = !DILocation(line: 84, column: 3, scope: !1012)
!1014 = !DILocation(line: 87, column: 2, scope: !1004)
!1015 = !DILocation(line: 87, column: 10, scope: !1004)
!1016 = !DILocation(line: 88, column: 2, scope: !1004)
!1017 = !DILocation(line: 88, column: 10, scope: !1004)
!1018 = !DILocation(line: 89, column: 2, scope: !1004)
!1019 = !DILocation(line: 89, column: 10, scope: !1004)
!1020 = !DILocation(line: 90, column: 1, scope: !1004)
!1021 = distinct !DISubprogram(name: "synthesize_set_arg1", scope: !3, file: !3, line: 93, type: !1022, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1024)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !54, !52}
!1024 = !{!1025, !1026}
!1025 = !DILocalVariable(name: "addr", arg: 1, scope: !1021, file: !3, line: 93, type: !54)
!1026 = !DILocalVariable(name: "val", arg: 2, scope: !1021, file: !3, line: 93, type: !52)
!1027 = !DILocation(line: 93, column: 50, scope: !1021)
!1028 = !DILocation(line: 93, column: 70, scope: !1021)
!1029 = !DILocation(line: 96, column: 7, scope: !1021)
!1030 = !DILocation(line: 96, column: 10, scope: !1021)
!1031 = !DILocation(line: 97, column: 7, scope: !1021)
!1032 = !DILocation(line: 97, column: 10, scope: !1021)
!1033 = !DILocation(line: 101, column: 27, scope: !1021)
!1034 = !DILocation(line: 101, column: 20, scope: !1021)
!1035 = !DILocation(line: 101, column: 25, scope: !1021)
!1036 = !DILocation(line: 102, column: 1, scope: !1021)
!1037 = !DISubprogram(name: "synthesize_relcall", scope: !1038, file: !1038, line: 93, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1038 = !DIFile(filename: "arch/x86/kernel/kprobes/common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53640aa4f6b1fa63b425906ff171e499")
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !29, !29, !29}
!1041 = !DISubprogram(name: "synthesize_reljump", scope: !1038, file: !1038, line: 92, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1042 = !DISubprogram(name: "perf_event_text_poke", scope: !1043, file: !1043, line: 1536, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1043 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !239, !239, !182, !239, !182}
!1046 = !DISubprogram(name: "text_poke", scope: !1047, file: !1047, line: 44, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DIFile(filename: "./arch/x86/include/asm/text-patching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4df22955607f445a62da6adb58adb51")
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!29, !29, !239, !182}
!1050 = !DISubprogram(name: "kfree", scope: !19, file: !19, line: 227, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !239}
!1053 = distinct !DISubprogram(name: "arch_optimize_kprobes", scope: !3, file: !3, line: 473, type: !1054, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !49}
!1056 = !{!1057, !1058, !1059, !1060, !1062, !1065, !1067, !1070, !1072, !1075}
!1057 = !DILocalVariable(name: "oplist", arg: 1, scope: !1053, file: !3, line: 473, type: !49)
!1058 = !DILocalVariable(name: "op", scope: !1053, file: !3, line: 475, type: !30)
!1059 = !DILocalVariable(name: "tmp", scope: !1053, file: !3, line: 475, type: !30)
!1060 = !DILocalVariable(name: "insn_buff", scope: !1053, file: !3, line: 476, type: !1061)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 40, elements: !252)
!1062 = !DILocalVariable(name: "__mptr", scope: !1063, file: !3, line: 478, type: !29)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 478, column: 2)
!1064 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 478, column: 2)
!1065 = !DILocalVariable(name: "__mptr", scope: !1066, file: !3, line: 478, type: !29)
!1066 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 478, column: 2)
!1067 = !DILocalVariable(name: "rel", scope: !1068, file: !3, line: 479, type: !162)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 478, column: 50)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 478, column: 2)
!1070 = !DILocalVariable(name: "__ret_warn_on", scope: !1071, file: !3, line: 482, type: !72)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 482, column: 3)
!1072 = !DILocalVariable(name: "__flags", scope: !1073, file: !3, line: 482, type: !72)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 482, column: 3)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 482, column: 3)
!1075 = !DILocalVariable(name: "__mptr", scope: !1076, file: !3, line: 478, type: !29)
!1076 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 478, column: 2)
!1077 = !DILocation(line: 473, column: 46, scope: !1053)
!1078 = !DILocation(line: 475, column: 2, scope: !1053)
!1079 = !DILocation(line: 475, column: 27, scope: !1053)
!1080 = !DILocation(line: 475, column: 32, scope: !1053)
!1081 = !DILocation(line: 476, column: 2, scope: !1053)
!1082 = !DILocation(line: 476, column: 5, scope: !1053)
!1083 = !DILocation(line: 478, column: 2, scope: !1063)
!1084 = !DILocation(line: 478, column: 2, scope: !1064)
!1085 = !DILocation(line: 478, column: 2, scope: !1066)
!1086 = !DILocation(line: 478, column: 2, scope: !1069)
!1087 = !DILocation(line: 479, column: 3, scope: !1068)
!1088 = !DILocation(line: 479, column: 7, scope: !1068)
!1089 = !DILocation(line: 479, column: 25, scope: !1068)
!1090 = !DILocation(line: 479, column: 29, scope: !1068)
!1091 = !DILocation(line: 479, column: 37, scope: !1068)
!1092 = !DILocation(line: 479, column: 19, scope: !1068)
!1093 = !DILocation(line: 480, column: 11, scope: !1068)
!1094 = !DILocation(line: 480, column: 15, scope: !1068)
!1095 = !DILocation(line: 480, column: 18, scope: !1068)
!1096 = !DILocation(line: 480, column: 5, scope: !1068)
!1097 = !DILocation(line: 480, column: 23, scope: !1068)
!1098 = !DILocation(line: 479, column: 42, scope: !1068)
!1099 = !DILocation(line: 479, column: 13, scope: !1068)
!1100 = !DILocation(line: 482, column: 3, scope: !1071)
!1101 = !DILocation(line: 482, column: 3, scope: !1074)
!1102 = !DILocation(line: 482, column: 3, scope: !1073)
!1103 = !DILocation(line: 482, column: 3, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 482, column: 3)
!1105 = !DILocation(line: 482, column: 3, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 482, column: 3)
!1107 = !{i64 2155501895, i64 2155501924, i64 2155501970, i64 2155502028, i64 2155502082, i64 2155502136, i64 2155502191, i64 2155502222, i64 2155502530, i64 2155502536, i64 2155502583, i64 2155502606, i64 2155502632}
!1108 = !DILocation(line: 482, column: 3, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 482, column: 3)
!1110 = !DILocation(line: 482, column: 3, scope: !1068)
!1111 = !DILocation(line: 485, column: 10, scope: !1068)
!1112 = !DILocation(line: 485, column: 14, scope: !1068)
!1113 = !DILocation(line: 485, column: 22, scope: !1068)
!1114 = !DILocation(line: 485, column: 3, scope: !1068)
!1115 = !DILocation(line: 485, column: 35, scope: !1068)
!1116 = !DILocation(line: 485, column: 39, scope: !1068)
!1117 = !DILocation(line: 485, column: 42, scope: !1068)
!1118 = !DILocation(line: 485, column: 47, scope: !1068)
!1119 = !DILocation(line: 488, column: 3, scope: !1068)
!1120 = !DILocation(line: 488, column: 16, scope: !1068)
!1121 = !DILocation(line: 489, column: 29, scope: !1068)
!1122 = !DILocation(line: 489, column: 13, scope: !1068)
!1123 = !DILocation(line: 489, column: 27, scope: !1068)
!1124 = !DILocation(line: 491, column: 16, scope: !1068)
!1125 = !DILocation(line: 491, column: 20, scope: !1068)
!1126 = !DILocation(line: 491, column: 23, scope: !1068)
!1127 = !DILocation(line: 491, column: 29, scope: !1068)
!1128 = !DILocation(line: 491, column: 3, scope: !1068)
!1129 = !DILocation(line: 493, column: 18, scope: !1068)
!1130 = !DILocation(line: 493, column: 22, scope: !1068)
!1131 = !DILocation(line: 493, column: 3, scope: !1068)
!1132 = !DILocation(line: 494, column: 2, scope: !1069)
!1133 = !DILocation(line: 494, column: 2, scope: !1068)
!1134 = !DILocation(line: 478, column: 2, scope: !1076)
!1135 = distinct !{!1135, !1084, !1136, !331, !332}
!1136 = !DILocation(line: 494, column: 2, scope: !1064)
!1137 = !DILocation(line: 495, column: 1, scope: !1053)
!1138 = distinct !DISubprogram(name: "kprobe_disabled", scope: !32, file: !32, line: 115, type: !387, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1139)
!1139 = !{!1140}
!1140 = !DILocalVariable(name: "p", arg: 1, scope: !1138, file: !32, line: 115, type: !73)
!1141 = !DILocation(line: 115, column: 51, scope: !1138)
!1142 = !DILocation(line: 117, column: 9, scope: !1138)
!1143 = !DILocation(line: 117, column: 12, scope: !1138)
!1144 = !DILocation(line: 117, column: 18, scope: !1138)
!1145 = !DILocation(line: 117, column: 2, scope: !1138)
!1146 = !DISubprogram(name: "text_poke_bp", scope: !1047, file: !1047, line: 51, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !29, !239, !182, !239}
!1149 = distinct !DISubprogram(name: "list_del_init", scope: !399, file: !399, line: 285, type: !1054, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1150)
!1150 = !{!1151}
!1151 = !DILocalVariable(name: "entry", arg: 1, scope: !1149, file: !399, line: 285, type: !49)
!1152 = !DILocation(line: 285, column: 52, scope: !1149)
!1153 = !DILocation(line: 287, column: 19, scope: !1149)
!1154 = !DILocation(line: 287, column: 2, scope: !1149)
!1155 = !DILocation(line: 288, column: 17, scope: !1149)
!1156 = !DILocation(line: 288, column: 2, scope: !1149)
!1157 = !DILocation(line: 289, column: 1, scope: !1149)
!1158 = distinct !DISubprogram(name: "arch_unoptimize_kprobe", scope: !3, file: !3, line: 504, type: !559, scopeLine: 505, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1159)
!1159 = !{!1160, !1161, !1162, !1163}
!1160 = !DILocalVariable(name: "op", arg: 1, scope: !1158, file: !3, line: 504, type: !30)
!1161 = !DILocalVariable(name: "new", scope: !1158, file: !3, line: 506, type: !1061)
!1162 = !DILocalVariable(name: "old", scope: !1158, file: !3, line: 507, type: !1061)
!1163 = !DILocalVariable(name: "addr", scope: !1158, file: !3, line: 508, type: !188)
!1164 = !DILocation(line: 504, column: 54, scope: !1158)
!1165 = !DILocation(line: 506, column: 2, scope: !1158)
!1166 = !DILocation(line: 506, column: 5, scope: !1158)
!1167 = !DILocation(line: 507, column: 2, scope: !1158)
!1168 = !DILocation(line: 507, column: 5, scope: !1158)
!1169 = !DILocation(line: 508, column: 2, scope: !1158)
!1170 = !DILocation(line: 508, column: 6, scope: !1158)
!1171 = !DILocation(line: 508, column: 13, scope: !1158)
!1172 = !DILocation(line: 508, column: 17, scope: !1158)
!1173 = !DILocation(line: 508, column: 20, scope: !1158)
!1174 = !DILocation(line: 510, column: 2, scope: !1158)
!1175 = !DILocation(line: 510, column: 14, scope: !1158)
!1176 = !DILocation(line: 510, column: 18, scope: !1158)
!1177 = !DILocation(line: 510, column: 21, scope: !1158)
!1178 = !DILocation(line: 511, column: 9, scope: !1158)
!1179 = !DILocation(line: 511, column: 13, scope: !1158)
!1180 = !DILocation(line: 512, column: 9, scope: !1158)
!1181 = !DILocation(line: 512, column: 13, scope: !1158)
!1182 = !DILocation(line: 512, column: 21, scope: !1158)
!1183 = !DILocation(line: 511, column: 2, scope: !1158)
!1184 = !DILocation(line: 515, column: 12, scope: !1158)
!1185 = !DILocation(line: 515, column: 18, scope: !1158)
!1186 = !DILocation(line: 515, column: 2, scope: !1158)
!1187 = !DILocation(line: 516, column: 2, scope: !1158)
!1188 = !DILocation(line: 517, column: 12, scope: !1158)
!1189 = !DILocation(line: 517, column: 17, scope: !1158)
!1190 = !DILocation(line: 518, column: 5, scope: !1158)
!1191 = !DILocation(line: 518, column: 9, scope: !1158)
!1192 = !DILocation(line: 517, column: 2, scope: !1158)
!1193 = !DILocation(line: 520, column: 2, scope: !1158)
!1194 = !DILocation(line: 522, column: 23, scope: !1158)
!1195 = !DILocation(line: 522, column: 27, scope: !1158)
!1196 = !DILocation(line: 522, column: 30, scope: !1158)
!1197 = !DILocation(line: 522, column: 36, scope: !1158)
!1198 = !DILocation(line: 522, column: 58, scope: !1158)
!1199 = !DILocation(line: 522, column: 2, scope: !1158)
!1200 = !DILocation(line: 523, column: 1, scope: !1158)
!1201 = !DISubprogram(name: "text_poke_sync", scope: !1047, file: !1047, line: 45, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{null}
!1204 = distinct !DISubprogram(name: "arch_unoptimize_kprobes", scope: !3, file: !3, line: 529, type: !1205, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !49, !49}
!1207 = !{!1208, !1209, !1210, !1211, !1212, !1215, !1217}
!1208 = !DILocalVariable(name: "oplist", arg: 1, scope: !1204, file: !3, line: 529, type: !49)
!1209 = !DILocalVariable(name: "done_list", arg: 2, scope: !1204, file: !3, line: 530, type: !49)
!1210 = !DILocalVariable(name: "op", scope: !1204, file: !3, line: 532, type: !30)
!1211 = !DILocalVariable(name: "tmp", scope: !1204, file: !3, line: 532, type: !30)
!1212 = !DILocalVariable(name: "__mptr", scope: !1213, file: !3, line: 534, type: !29)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 534, column: 2)
!1214 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 534, column: 2)
!1215 = !DILocalVariable(name: "__mptr", scope: !1216, file: !3, line: 534, type: !29)
!1216 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 534, column: 2)
!1217 = !DILocalVariable(name: "__mptr", scope: !1218, file: !3, line: 534, type: !29)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 534, column: 2)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 534, column: 2)
!1220 = !DILocation(line: 529, column: 55, scope: !1204)
!1221 = !DILocation(line: 530, column: 27, scope: !1204)
!1222 = !DILocation(line: 532, column: 2, scope: !1204)
!1223 = !DILocation(line: 532, column: 27, scope: !1204)
!1224 = !DILocation(line: 532, column: 32, scope: !1204)
!1225 = !DILocation(line: 534, column: 2, scope: !1213)
!1226 = !DILocation(line: 534, column: 2, scope: !1214)
!1227 = !DILocation(line: 534, column: 2, scope: !1216)
!1228 = !DILocation(line: 534, column: 2, scope: !1219)
!1229 = !DILocation(line: 535, column: 26, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 534, column: 50)
!1231 = !DILocation(line: 535, column: 3, scope: !1230)
!1232 = !DILocation(line: 536, column: 14, scope: !1230)
!1233 = !DILocation(line: 536, column: 18, scope: !1230)
!1234 = !DILocation(line: 536, column: 24, scope: !1230)
!1235 = !DILocation(line: 536, column: 3, scope: !1230)
!1236 = !DILocation(line: 537, column: 2, scope: !1230)
!1237 = !DILocation(line: 534, column: 2, scope: !1218)
!1238 = distinct !{!1238, !1226, !1239, !331, !332}
!1239 = !DILocation(line: 537, column: 2, scope: !1214)
!1240 = !DILocation(line: 538, column: 1, scope: !1204)
!1241 = distinct !DISubprogram(name: "list_move", scope: !399, file: !399, line: 296, type: !1205, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1242)
!1242 = !{!1243, !1244}
!1243 = !DILocalVariable(name: "list", arg: 1, scope: !1241, file: !399, line: 296, type: !49)
!1244 = !DILocalVariable(name: "head", arg: 2, scope: !1241, file: !399, line: 296, type: !49)
!1245 = !DILocation(line: 296, column: 48, scope: !1241)
!1246 = !DILocation(line: 296, column: 72, scope: !1241)
!1247 = !DILocation(line: 298, column: 19, scope: !1241)
!1248 = !DILocation(line: 298, column: 2, scope: !1241)
!1249 = !DILocation(line: 299, column: 11, scope: !1241)
!1250 = !DILocation(line: 299, column: 17, scope: !1241)
!1251 = !DILocation(line: 299, column: 2, scope: !1241)
!1252 = !DILocation(line: 300, column: 1, scope: !1241)
!1253 = distinct !DISubprogram(name: "setup_detour_execution", scope: !3, file: !3, line: 540, type: !1254, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!72, !73, !74, !72}
!1256 = !{!1257, !1258, !1259, !1260, !1261}
!1257 = !DILocalVariable(name: "p", arg: 1, scope: !1253, file: !3, line: 540, type: !73)
!1258 = !DILocalVariable(name: "regs", arg: 2, scope: !1253, file: !3, line: 540, type: !74)
!1259 = !DILocalVariable(name: "reenter", arg: 3, scope: !1253, file: !3, line: 540, type: !72)
!1260 = !DILocalVariable(name: "op", scope: !1253, file: !3, line: 542, type: !30)
!1261 = !DILocalVariable(name: "__mptr", scope: !1262, file: !3, line: 546, type: !29)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 546, column: 8)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 544, column: 40)
!1264 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 544, column: 6)
!1265 = !DILocation(line: 540, column: 43, scope: !1253)
!1266 = !DILocation(line: 540, column: 62, scope: !1253)
!1267 = !DILocation(line: 540, column: 72, scope: !1253)
!1268 = !DILocation(line: 542, column: 2, scope: !1253)
!1269 = !DILocation(line: 542, column: 27, scope: !1253)
!1270 = !DILocation(line: 544, column: 6, scope: !1264)
!1271 = !DILocation(line: 544, column: 9, scope: !1264)
!1272 = !DILocation(line: 544, column: 15, scope: !1264)
!1273 = !DILocation(line: 544, column: 6, scope: !1253)
!1274 = !DILocation(line: 546, column: 8, scope: !1262)
!1275 = !DILocation(line: 546, column: 8, scope: !1263)
!1276 = !DILocation(line: 546, column: 6, scope: !1263)
!1277 = !DILocation(line: 548, column: 29, scope: !1263)
!1278 = !DILocation(line: 548, column: 33, scope: !1263)
!1279 = !DILocation(line: 548, column: 41, scope: !1263)
!1280 = !DILocation(line: 548, column: 14, scope: !1263)
!1281 = !DILocation(line: 548, column: 46, scope: !1263)
!1282 = !DILocation(line: 548, column: 3, scope: !1263)
!1283 = !DILocation(line: 548, column: 9, scope: !1263)
!1284 = !DILocation(line: 548, column: 12, scope: !1263)
!1285 = !DILocation(line: 549, column: 8, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 549, column: 7)
!1287 = !DILocation(line: 549, column: 7, scope: !1263)
!1288 = !DILocation(line: 550, column: 4, scope: !1286)
!1289 = !DILocation(line: 551, column: 3, scope: !1263)
!1290 = !DILocation(line: 553, column: 2, scope: !1253)
!1291 = !DILocation(line: 554, column: 1, scope: !1253)
!1292 = distinct !DISubprogram(name: "reset_current_kprobe", scope: !32, file: !32, line: 406, type: !1202, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1293)
!1293 = !{!1294, !1298}
!1294 = !DILocalVariable(name: "__vpp_verify", scope: !1295, file: !32, line: 408, type: !239)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !32, line: 408, column: 2)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !32, line: 408, column: 2)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !32, line: 408, column: 2)
!1298 = !DILocalVariable(name: "pto_val__", scope: !1299, file: !32, line: 408, type: !103)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !32, line: 408, column: 2)
!1300 = !DILocation(line: 408, column: 2, scope: !1297)
!1301 = !DILocation(line: 408, column: 2, scope: !1296)
!1302 = !DILocation(line: 408, column: 2, scope: !1295)
!1303 = !DILocation(line: 408, column: 2, scope: !1299)
!1304 = !{i64 2154534709}
!1305 = !DILocation(line: 409, column: 1, scope: !1292)
!1306 = distinct !DISubprogram(name: "__preempt_count_add", scope: !1307, file: !1307, line: 78, type: !1308, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1310)
!1307 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!1308 = !DISubroutineType(types: !1309)
!1309 = !{null, !72}
!1310 = !{!1311, !1312, !1315}
!1311 = !DILocalVariable(name: "val", arg: 1, scope: !1306, file: !1307, line: 78, type: !72)
!1312 = !DILocalVariable(name: "pao_ID__", scope: !1313, file: !1307, line: 80, type: !1314)
!1313 = distinct !DILexicalBlock(scope: !1306, file: !1307, line: 80, column: 2)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!1315 = !DILocalVariable(name: "pto_val__", scope: !1316, file: !1307, line: 80, type: !170)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !1307, line: 80, column: 2)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !1307, line: 80, column: 2)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !1307, line: 80, column: 2)
!1319 = !DILocation(line: 78, column: 53, scope: !1306)
!1320 = !DILocation(line: 80, column: 2, scope: !1306)
!1321 = !DILocation(line: 80, column: 2, scope: !1313)
!1322 = !DILocation(line: 80, column: 2, scope: !1318)
!1323 = !DILocation(line: 80, column: 2, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1318, file: !1307, line: 80, column: 2)
!1325 = !{i64 2149531573}
!1326 = !DILocation(line: 80, column: 2, scope: !1317)
!1327 = !DILocation(line: 80, column: 2, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1317, file: !1307, line: 80, column: 2)
!1329 = !{i64 2149531868}
!1330 = !DILocation(line: 80, column: 2, scope: !1316)
!1331 = !{i64 2149532573}
!1332 = !DILocation(line: 81, column: 1, scope: !1306)
!1333 = distinct !DISubprogram(name: "kprobe_running", scope: !32, file: !32, line: 401, type: !1334, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1336)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!73}
!1336 = !{!1337, !1340, !1342}
!1337 = !DILocalVariable(name: "pscr_ret__", scope: !1338, file: !32, line: 403, type: !73)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !32, line: 403, column: 9)
!1339 = distinct !DILexicalBlock(scope: !1333, file: !32, line: 403, column: 9)
!1340 = !DILocalVariable(name: "__vpp_verify", scope: !1341, file: !32, line: 403, type: !239)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !32, line: 403, column: 9)
!1342 = !DILocalVariable(name: "pfo_val__", scope: !1343, file: !32, line: 403, type: !103)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !32, line: 403, column: 9)
!1344 = !DILocation(line: 403, column: 9, scope: !1339)
!1345 = !DILocation(line: 403, column: 9, scope: !1338)
!1346 = !DILocation(line: 403, column: 9, scope: !1341)
!1347 = !DILocation(line: 403, column: 9, scope: !1343)
!1348 = !{i64 2154530282}
!1349 = !DILocation(line: 403, column: 2, scope: !1333)
!1350 = !DISubprogram(name: "kprobes_inc_nmissed_count", scope: !32, file: !32, line: 290, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !73}
!1353 = distinct !DISubprogram(name: "get_kprobe_ctlblk", scope: !32, file: !32, line: 411, type: !1354, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!194}
!1356 = !{!1357, !1360}
!1357 = !DILocalVariable(name: "__vpp_verify", scope: !1358, file: !32, line: 413, type: !239)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !32, line: 413, column: 9)
!1359 = distinct !DILexicalBlock(scope: !1353, file: !32, line: 413, column: 9)
!1360 = !DILocalVariable(name: "tcp_ptr__", scope: !1361, file: !32, line: 413, type: !52)
!1361 = distinct !DILexicalBlock(scope: !1359, file: !32, line: 413, column: 9)
!1362 = !DILocation(line: 413, column: 9, scope: !1359)
!1363 = !DILocation(line: 413, column: 9, scope: !1358)
!1364 = !DILocation(line: 413, column: 9, scope: !1361)
!1365 = !{i64 2154535407}
!1366 = !DILocation(line: 413, column: 2, scope: !1353)
!1367 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !1368, file: !1368, line: 313, type: !1369, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1371)
!1368 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !63}
!1371 = !{!1372}
!1372 = !DILocalVariable(name: "op", arg: 1, scope: !1367, file: !1368, line: 313, type: !63)
!1373 = !DILocation(line: 313, column: 66, scope: !1367)
!1374 = !DILocation(line: 313, column: 72, scope: !1367)
!1375 = !DISubprogram(name: "opt_pre_handler", scope: !32, file: !32, line: 371, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !1307, file: !1307, line: 93, type: !1377, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1379)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!389}
!1379 = !{!1380}
!1380 = !DILocalVariable(name: "c", scope: !1381, file: !1307, line: 95, type: !389)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !1307, line: 95, column: 9)
!1382 = !DILocation(line: 95, column: 9, scope: !1381)
!1383 = !{i64 2149535929, i64 2149536022}
!1384 = !{i8 0, i8 2}
!1385 = !{}
!1386 = !DILocation(line: 95, column: 9, scope: !1376)
!1387 = !DILocation(line: 95, column: 2, scope: !1376)
!1388 = distinct !DISubprogram(name: "free_optinsn_slot", scope: !32, file: !32, line: 373, type: !1389, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !54, !72}
!1391 = !{!1392, !1393}
!1392 = !DILocalVariable(name: "slot", arg: 1, scope: !1388, file: !32, line: 373, type: !54)
!1393 = !DILocalVariable(name: "dirty", arg: 2, scope: !1388, file: !32, line: 373, type: !72)
!1394 = !DILocation(line: 373, column: 1, scope: !1388)
!1395 = !DISubprogram(name: "__free_insn_slot", scope: !32, file: !32, line: 311, type: !1396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !1398, !54, !72}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kprobe_insn_cache", file: !32, line: 299, size: 704, elements: !1400)
!1400 = !{!1401, !1449, !1453, !1457, !1458, !1459, !1460}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1399, file: !32, line: 300, baseType: !1402, size: 256)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1403, line: 66, size: 256, elements: !1404)
!1403 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1404 = !{!1405, !1415, !1443, !1448}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1402, file: !1403, line: 67, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1407, line: 13, baseType: !1408)
!1407 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !39, line: 181, baseType: !1409)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 179, size: 64, elements: !1410)
!1410 = !{!1411}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1409, file: !39, line: 180, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !58, line: 22, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !60, line: 30, baseType: !1414)
!1414 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1402, file: !1403, line: 68, baseType: !1416, size: 32, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !1417, line: 23, baseType: !1418)
!1417 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !1417, line: 14, size: 32, elements: !1419)
!1419 = !{!1420}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1418, file: !1417, line: 15, baseType: !1421, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !1422, line: 44, baseType: !1423)
!1422 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !1422, line: 14, size: 32, elements: !1424)
!1424 = !{!1425}
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1422, line: 15, baseType: !1426, size: 32)
!1426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1422, line: 15, size: 32, elements: !1427)
!1427 = !{!1428, !1433, !1438}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1426, file: !1422, line: 16, baseType: !1429, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !39, line: 174, baseType: !1430)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 172, size: 32, elements: !1431)
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1430, file: !39, line: 173, baseType: !72, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1426, file: !1422, line: 24, baseType: !1434, size: 16)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1426, file: !1422, line: 24, size: 16, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !1434, file: !1422, line: 25, baseType: !57, size: 8)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1434, file: !1422, line: 26, baseType: !57, size: 8, offset: 8)
!1438 = !DIDerivedType(tag: DW_TAG_member, scope: !1426, file: !1422, line: 28, baseType: !1439, size: 32)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1426, file: !1422, line: 28, size: 32, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !1439, file: !1422, line: 29, baseType: !99, size: 16)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1439, file: !1422, line: 30, baseType: !99, size: 16, offset: 16)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1402, file: !1403, line: 70, baseType: !1444, size: 32, offset: 96)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !1445, line: 15, size: 32, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!1446 = !{!1447}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1444, file: !1445, line: 20, baseType: !1429, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1402, file: !1403, line: 72, baseType: !46, size: 128, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1399, file: !32, line: 301, baseType: !1450, size: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!29}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1399, file: !32, line: 302, baseType: !1454, size: 64, offset: 320)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !29}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sym", scope: !1399, file: !32, line: 303, baseType: !63, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1399, file: !32, line: 304, baseType: !46, size: 128, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "insn_size", scope: !1399, file: !32, line: 305, baseType: !182, size: 64, offset: 576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_garbage", scope: !1399, file: !32, line: 306, baseType: !72, size: 32, offset: 640)
!1461 = !DISubprogram(name: "kallsyms_lookup_size_offset", scope: !1462, file: !1462, line: 81, type: !1463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1462 = !DIFile(filename: "./include/linux/kallsyms.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "797c3ad2c64a1b2c16a6a757c7a94236")
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!72, !52, !207, !207}
!1465 = !DISubprogram(name: "search_exception_tables", scope: !1466, file: !1466, line: 21, type: !1467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1466 = !DIFile(filename: "./include/linux/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1481929230e3bbd9bb07205c0c5f22e")
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!1469, !52}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1472, line: 23, size: 96, elements: !1473)
!1472 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1473 = !{!1474, !1475, !1476}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1471, file: !1472, line: 24, baseType: !72, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1471, file: !1472, line: 24, baseType: !72, size: 32, offset: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1471, file: !1472, line: 24, baseType: !72, size: 32, offset: 64)
!1477 = !DISubprogram(name: "recover_probed_instruction", scope: !1038, file: !1038, line: 83, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1478 = !DISubprogram(name: "insn_decode", scope: !6, file: !6, line: 151, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!72, !1481, !239, !72, !5}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!1482 = distinct !DISubprogram(name: "insn_jump_into_range", scope: !3, file: !3, line: 237, type: !1483, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1485)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!72, !1481, !52, !72}
!1485 = !{!1486, !1487, !1488, !1489}
!1486 = !DILocalVariable(name: "insn", arg: 1, scope: !1482, file: !3, line: 237, type: !1481)
!1487 = !DILocalVariable(name: "start", arg: 2, scope: !1482, file: !3, line: 237, type: !52)
!1488 = !DILocalVariable(name: "len", arg: 3, scope: !1482, file: !3, line: 237, type: !72)
!1489 = !DILocalVariable(name: "target", scope: !1482, file: !3, line: 239, type: !52)
!1490 = !DILocation(line: 237, column: 46, scope: !1482)
!1491 = !DILocation(line: 237, column: 66, scope: !1482)
!1492 = !DILocation(line: 237, column: 77, scope: !1482)
!1493 = !DILocation(line: 239, column: 2, scope: !1482)
!1494 = !DILocation(line: 239, column: 16, scope: !1482)
!1495 = !DILocation(line: 241, column: 10, scope: !1482)
!1496 = !DILocation(line: 241, column: 16, scope: !1482)
!1497 = !DILocation(line: 241, column: 23, scope: !1482)
!1498 = !DILocation(line: 241, column: 2, scope: !1482)
!1499 = !DILocation(line: 248, column: 3, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 241, column: 33)
!1501 = !DILocation(line: 250, column: 8, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 250, column: 7)
!1503 = !DILocation(line: 250, column: 14, scope: !1502)
!1504 = !DILocation(line: 250, column: 21, scope: !1502)
!1505 = !DILocation(line: 250, column: 30, scope: !1502)
!1506 = !DILocation(line: 250, column: 38, scope: !1502)
!1507 = !DILocation(line: 250, column: 7, scope: !1500)
!1508 = !DILocation(line: 251, column: 4, scope: !1502)
!1509 = !DILocation(line: 252, column: 3, scope: !1500)
!1510 = !DILocation(line: 254, column: 8, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 254, column: 7)
!1512 = !DILocation(line: 254, column: 14, scope: !1511)
!1513 = !DILocation(line: 254, column: 21, scope: !1511)
!1514 = !DILocation(line: 254, column: 30, scope: !1511)
!1515 = !DILocation(line: 254, column: 38, scope: !1511)
!1516 = !DILocation(line: 254, column: 7, scope: !1500)
!1517 = !DILocation(line: 255, column: 4, scope: !1511)
!1518 = !DILocation(line: 256, column: 3, scope: !1500)
!1519 = !DILocation(line: 258, column: 26, scope: !1482)
!1520 = !DILocation(line: 258, column: 32, scope: !1482)
!1521 = !DILocation(line: 258, column: 11, scope: !1482)
!1522 = !DILocation(line: 258, column: 44, scope: !1482)
!1523 = !DILocation(line: 258, column: 50, scope: !1482)
!1524 = !DILocation(line: 258, column: 60, scope: !1482)
!1525 = !DILocation(line: 258, column: 42, scope: !1482)
!1526 = !DILocation(line: 258, column: 9, scope: !1482)
!1527 = !DILocation(line: 260, column: 10, scope: !1482)
!1528 = !DILocation(line: 260, column: 19, scope: !1482)
!1529 = !DILocation(line: 260, column: 16, scope: !1482)
!1530 = !DILocation(line: 260, column: 26, scope: !1482)
!1531 = !DILocation(line: 260, column: 29, scope: !1482)
!1532 = !DILocation(line: 260, column: 39, scope: !1482)
!1533 = !DILocation(line: 260, column: 47, scope: !1482)
!1534 = !DILocation(line: 260, column: 45, scope: !1482)
!1535 = !DILocation(line: 260, column: 36, scope: !1482)
!1536 = !DILocation(line: 0, scope: !1482)
!1537 = !DILocation(line: 260, column: 2, scope: !1482)
!1538 = !DILocation(line: 261, column: 1, scope: !1482)
!1539 = distinct !DISubprogram(name: "kmalloc", scope: !19, file: !19, line: 591, type: !909, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1540)
!1540 = !{!1541, !1542, !1543}
!1541 = !DILocalVariable(name: "size", arg: 1, scope: !1539, file: !19, line: 591, type: !182)
!1542 = !DILocalVariable(name: "flags", arg: 2, scope: !1539, file: !19, line: 591, type: !186)
!1543 = !DILocalVariable(name: "index", scope: !1544, file: !19, line: 594, type: !7)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !19, line: 593, column: 42)
!1545 = distinct !DILexicalBlock(scope: !1539, file: !19, line: 593, column: 6)
!1546 = !DILocation(line: 591, column: 61, scope: !1539)
!1547 = !DILocation(line: 591, column: 73, scope: !1539)
!1548 = !DILocation(line: 593, column: 27, scope: !1545)
!1549 = !DILocation(line: 593, column: 6, scope: !1545)
!1550 = !DILocation(line: 593, column: 33, scope: !1545)
!1551 = !DILocation(line: 593, column: 36, scope: !1545)
!1552 = !DILocation(line: 593, column: 6, scope: !1539)
!1553 = !DILocation(line: 594, column: 3, scope: !1544)
!1554 = !DILocation(line: 594, column: 16, scope: !1544)
!1555 = !DILocation(line: 596, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1544, file: !19, line: 596, column: 7)
!1557 = !DILocation(line: 596, column: 12, scope: !1556)
!1558 = !DILocation(line: 596, column: 7, scope: !1544)
!1559 = !DILocation(line: 597, column: 25, scope: !1556)
!1560 = !DILocation(line: 597, column: 31, scope: !1556)
!1561 = !DILocation(line: 597, column: 11, scope: !1556)
!1562 = !DILocation(line: 597, column: 4, scope: !1556)
!1563 = !DILocation(line: 599, column: 11, scope: !1544)
!1564 = !DILocation(line: 599, column: 9, scope: !1544)
!1565 = !DILocation(line: 601, column: 33, scope: !1544)
!1566 = !DILocation(line: 601, column: 40, scope: !1544)
!1567 = !DILocation(line: 601, column: 20, scope: !1544)
!1568 = !DILocation(line: 601, column: 5, scope: !1544)
!1569 = !DILocation(line: 601, column: 51, scope: !1544)
!1570 = !DILocation(line: 602, column: 5, scope: !1544)
!1571 = !DILocation(line: 602, column: 12, scope: !1544)
!1572 = !DILocation(line: 600, column: 10, scope: !1544)
!1573 = !DILocation(line: 600, column: 3, scope: !1544)
!1574 = !DILocation(line: 603, column: 2, scope: !1545)
!1575 = !DILocation(line: 604, column: 19, scope: !1539)
!1576 = !DILocation(line: 604, column: 25, scope: !1539)
!1577 = !DILocation(line: 604, column: 9, scope: !1539)
!1578 = !DILocation(line: 604, column: 2, scope: !1539)
!1579 = !DILocation(line: 605, column: 1, scope: !1539)
!1580 = !DISubprogram(name: "kmalloc_large", scope: !19, file: !19, line: 531, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1581 = distinct !DISubprogram(name: "__kmalloc_index", scope: !19, file: !19, line: 444, type: !1582, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1584)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!7, !182, !389}
!1584 = !{!1585, !1586}
!1585 = !DILocalVariable(name: "size", arg: 1, scope: !1581, file: !19, line: 444, type: !182)
!1586 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1581, file: !19, line: 445, type: !389)
!1587 = !DILocation(line: 444, column: 60, scope: !1581)
!1588 = !DILocation(line: 445, column: 16, scope: !1581)
!1589 = !DILocation(line: 447, column: 7, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 447, column: 6)
!1591 = !DILocation(line: 447, column: 6, scope: !1581)
!1592 = !DILocation(line: 448, column: 3, scope: !1590)
!1593 = !DILocation(line: 450, column: 6, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 450, column: 6)
!1595 = !DILocation(line: 450, column: 11, scope: !1594)
!1596 = !DILocation(line: 450, column: 6, scope: !1581)
!1597 = !DILocation(line: 451, column: 3, scope: !1594)
!1598 = !DILocation(line: 453, column: 32, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 453, column: 6)
!1600 = !DILocation(line: 453, column: 37, scope: !1599)
!1601 = !DILocation(line: 453, column: 42, scope: !1599)
!1602 = !DILocation(line: 453, column: 45, scope: !1599)
!1603 = !DILocation(line: 453, column: 50, scope: !1599)
!1604 = !DILocation(line: 453, column: 6, scope: !1581)
!1605 = !DILocation(line: 454, column: 3, scope: !1599)
!1606 = !DILocation(line: 455, column: 32, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 455, column: 6)
!1608 = !DILocation(line: 455, column: 37, scope: !1607)
!1609 = !DILocation(line: 455, column: 43, scope: !1607)
!1610 = !DILocation(line: 455, column: 46, scope: !1607)
!1611 = !DILocation(line: 455, column: 51, scope: !1607)
!1612 = !DILocation(line: 455, column: 6, scope: !1581)
!1613 = !DILocation(line: 456, column: 3, scope: !1607)
!1614 = !DILocation(line: 457, column: 6, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 457, column: 6)
!1616 = !DILocation(line: 457, column: 11, scope: !1615)
!1617 = !DILocation(line: 457, column: 6, scope: !1581)
!1618 = !DILocation(line: 457, column: 26, scope: !1615)
!1619 = !DILocation(line: 458, column: 6, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 458, column: 6)
!1621 = !DILocation(line: 458, column: 11, scope: !1620)
!1622 = !DILocation(line: 458, column: 6, scope: !1581)
!1623 = !DILocation(line: 458, column: 26, scope: !1620)
!1624 = !DILocation(line: 459, column: 6, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 459, column: 6)
!1626 = !DILocation(line: 459, column: 11, scope: !1625)
!1627 = !DILocation(line: 459, column: 6, scope: !1581)
!1628 = !DILocation(line: 459, column: 26, scope: !1625)
!1629 = !DILocation(line: 460, column: 6, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 460, column: 6)
!1631 = !DILocation(line: 460, column: 11, scope: !1630)
!1632 = !DILocation(line: 460, column: 6, scope: !1581)
!1633 = !DILocation(line: 460, column: 26, scope: !1630)
!1634 = !DILocation(line: 461, column: 6, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 461, column: 6)
!1636 = !DILocation(line: 461, column: 11, scope: !1635)
!1637 = !DILocation(line: 461, column: 6, scope: !1581)
!1638 = !DILocation(line: 461, column: 26, scope: !1635)
!1639 = !DILocation(line: 462, column: 6, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 462, column: 6)
!1641 = !DILocation(line: 462, column: 11, scope: !1640)
!1642 = !DILocation(line: 462, column: 6, scope: !1581)
!1643 = !DILocation(line: 462, column: 26, scope: !1640)
!1644 = !DILocation(line: 463, column: 6, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 463, column: 6)
!1646 = !DILocation(line: 463, column: 11, scope: !1645)
!1647 = !DILocation(line: 463, column: 6, scope: !1581)
!1648 = !DILocation(line: 463, column: 26, scope: !1645)
!1649 = !DILocation(line: 464, column: 6, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 464, column: 6)
!1651 = !DILocation(line: 464, column: 11, scope: !1650)
!1652 = !DILocation(line: 464, column: 6, scope: !1581)
!1653 = !DILocation(line: 464, column: 26, scope: !1650)
!1654 = !DILocation(line: 465, column: 6, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 465, column: 6)
!1656 = !DILocation(line: 465, column: 11, scope: !1655)
!1657 = !DILocation(line: 465, column: 6, scope: !1581)
!1658 = !DILocation(line: 465, column: 26, scope: !1655)
!1659 = !DILocation(line: 466, column: 6, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 466, column: 6)
!1661 = !DILocation(line: 466, column: 11, scope: !1660)
!1662 = !DILocation(line: 466, column: 6, scope: !1581)
!1663 = !DILocation(line: 466, column: 26, scope: !1660)
!1664 = !DILocation(line: 467, column: 6, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 467, column: 6)
!1666 = !DILocation(line: 467, column: 11, scope: !1665)
!1667 = !DILocation(line: 467, column: 6, scope: !1581)
!1668 = !DILocation(line: 467, column: 26, scope: !1665)
!1669 = !DILocation(line: 468, column: 6, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 468, column: 6)
!1671 = !DILocation(line: 468, column: 11, scope: !1670)
!1672 = !DILocation(line: 468, column: 6, scope: !1581)
!1673 = !DILocation(line: 468, column: 26, scope: !1670)
!1674 = !DILocation(line: 469, column: 6, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 469, column: 6)
!1676 = !DILocation(line: 469, column: 11, scope: !1675)
!1677 = !DILocation(line: 469, column: 6, scope: !1581)
!1678 = !DILocation(line: 469, column: 26, scope: !1675)
!1679 = !DILocation(line: 470, column: 6, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 470, column: 6)
!1681 = !DILocation(line: 470, column: 11, scope: !1680)
!1682 = !DILocation(line: 470, column: 6, scope: !1581)
!1683 = !DILocation(line: 470, column: 26, scope: !1680)
!1684 = !DILocation(line: 471, column: 6, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 471, column: 6)
!1686 = !DILocation(line: 471, column: 11, scope: !1685)
!1687 = !DILocation(line: 471, column: 6, scope: !1581)
!1688 = !DILocation(line: 471, column: 26, scope: !1685)
!1689 = !DILocation(line: 472, column: 6, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 472, column: 6)
!1691 = !DILocation(line: 472, column: 11, scope: !1690)
!1692 = !DILocation(line: 472, column: 6, scope: !1581)
!1693 = !DILocation(line: 472, column: 26, scope: !1690)
!1694 = !DILocation(line: 473, column: 6, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 473, column: 6)
!1696 = !DILocation(line: 473, column: 11, scope: !1695)
!1697 = !DILocation(line: 473, column: 6, scope: !1581)
!1698 = !DILocation(line: 473, column: 26, scope: !1695)
!1699 = !DILocation(line: 474, column: 6, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 474, column: 6)
!1701 = !DILocation(line: 474, column: 11, scope: !1700)
!1702 = !DILocation(line: 474, column: 6, scope: !1581)
!1703 = !DILocation(line: 474, column: 27, scope: !1700)
!1704 = !DILocation(line: 475, column: 6, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 475, column: 6)
!1706 = !DILocation(line: 475, column: 11, scope: !1705)
!1707 = !DILocation(line: 475, column: 6, scope: !1581)
!1708 = !DILocation(line: 475, column: 32, scope: !1705)
!1709 = !DILocation(line: 477, column: 50, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1581, file: !19, line: 477, column: 6)
!1711 = !DILocation(line: 477, column: 6, scope: !1581)
!1712 = !DILocation(line: 478, column: 3, scope: !1710)
!1713 = !DILocation(line: 478, column: 3, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !19, line: 478, column: 3)
!1715 = distinct !DILexicalBlock(scope: !1710, file: !19, line: 478, column: 3)
!1716 = !{i32 -2142147072}
!1717 = !DILocation(line: 478, column: 3, scope: !1715)
!1718 = !DILocation(line: 480, column: 3, scope: !1710)
!1719 = !DILocation(line: 480, column: 3, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1710, file: !19, line: 480, column: 3)
!1721 = !DILocation(line: 480, column: 3, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1720, file: !19, line: 480, column: 3)
!1723 = !DILocation(line: 480, column: 3, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !19, line: 480, column: 3)
!1725 = !{i64 2152820427, i64 2152820456, i64 2152820502, i64 2152820560, i64 2152820614, i64 2152820668, i64 2152820723, i64 2152820754}
!1726 = !DILocation(line: 483, column: 2, scope: !1581)
!1727 = !DILocation(line: 484, column: 1, scope: !1581)
!1728 = !DISubprogram(name: "kmalloc_trace", scope: !19, file: !19, line: 525, type: !1729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!29, !1731, !186, !182}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1733, line: 11, flags: DIFlagFwdDecl)
!1733 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1734 = distinct !DISubprogram(name: "kmalloc_type", scope: !19, file: !19, line: 401, type: !1735, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1737)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!18, !186, !52}
!1737 = !{!1738, !1739}
!1738 = !DILocalVariable(name: "flags", arg: 1, scope: !1734, file: !19, line: 401, type: !186)
!1739 = !DILocalVariable(name: "caller", arg: 2, scope: !1734, file: !19, line: 401, type: !52)
!1740 = !DILocation(line: 401, column: 67, scope: !1734)
!1741 = !DILocation(line: 401, column: 88, scope: !1734)
!1742 = !DILocation(line: 407, column: 6, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1734, file: !19, line: 407, column: 6)
!1744 = !DILocation(line: 407, column: 6, scope: !1734)
!1745 = !DILocation(line: 413, column: 3, scope: !1743)
!1746 = !DILocation(line: 423, column: 38, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1734, file: !19, line: 423, column: 6)
!1748 = !DILocation(line: 423, column: 44, scope: !1747)
!1749 = !DILocation(line: 423, column: 6, scope: !1734)
!1750 = !DILocation(line: 424, column: 3, scope: !1747)
!1751 = !DILocation(line: 426, column: 3, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1734, file: !19, line: 425, column: 6)
!1753 = !DILocation(line: 429, column: 1, scope: !1734)
!1754 = !DISubprogram(name: "__kmalloc", scope: !19, file: !19, line: 488, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1755 = !DISubprogram(name: "__compiletime_assert_208", scope: !19, file: !19, line: 478, type: !1202, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1756 = !DISubprogram(name: "__get_insn_slot", scope: !32, file: !32, line: 310, type: !1757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!54, !1398}
!1759 = !DISubprogram(name: "__copy_instruction", scope: !1038, file: !1038, line: 89, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!72, !188, !188, !188, !1481}
!1762 = !DISubprogram(name: "can_boost", scope: !1038, file: !1038, line: 81, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!72, !1481, !29}
!1765 = distinct !DISubprogram(name: "ftrace_text_reserved", scope: !1766, file: !1766, line: 870, type: !1767, scopeLine: 871, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1769)
!1766 = !DIFile(filename: "./include/linux/ftrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4b80d89eac182dfc62518530b9fd5d2")
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!72, !239, !239}
!1769 = !{!1770, !1771}
!1770 = !DILocalVariable(name: "start", arg: 1, scope: !1765, file: !1766, line: 870, type: !239)
!1771 = !DILocalVariable(name: "end", arg: 2, scope: !1765, file: !1766, line: 870, type: !239)
!1772 = !DILocation(line: 870, column: 52, scope: !1765)
!1773 = !DILocation(line: 870, column: 71, scope: !1765)
!1774 = !DILocation(line: 872, column: 2, scope: !1765)
!1775 = !DISubprogram(name: "alternatives_text_reserved", scope: !1776, file: !1776, line: 139, type: !1777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1776 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!72, !29, !29}
!1779 = !DISubprogram(name: "jump_label_text_reserved", scope: !1780, file: !1780, line: 226, type: !1777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1780 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1781 = !DISubprogram(name: "static_call_text_reserved", scope: !1782, file: !1782, line: 183, type: !1777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1782 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!1783 = distinct !DISubprogram(name: "arch_test_bit", scope: !1784, file: !1784, line: 237, type: !1785, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1790)
!1784 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!389, !52, !1787}
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1789)
!1789 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!1790 = !{!1791, !1792}
!1791 = !DILocalVariable(name: "nr", arg: 1, scope: !1783, file: !1784, line: 237, type: !52)
!1792 = !DILocalVariable(name: "addr", arg: 2, scope: !1783, file: !1784, line: 237, type: !1787)
!1793 = !DILocation(line: 237, column: 29, scope: !1783)
!1794 = !DILocation(line: 237, column: 63, scope: !1783)
!1795 = !DILocation(line: 239, column: 30, scope: !1783)
!1796 = !DILocation(line: 239, column: 9, scope: !1783)
!1797 = !DILocation(line: 239, column: 54, scope: !1783)
!1798 = !DILocation(line: 239, column: 58, scope: !1783)
!1799 = !DILocation(line: 239, column: 36, scope: !1783)
!1800 = !DILocation(line: 240, column: 26, scope: !1783)
!1801 = !DILocation(line: 240, column: 30, scope: !1783)
!1802 = !DILocation(line: 240, column: 8, scope: !1783)
!1803 = !DILocation(line: 239, column: 2, scope: !1783)
!1804 = distinct !DISubprogram(name: "constant_test_bit", scope: !1784, file: !1784, line: 204, type: !1805, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1807)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!389, !187, !1787}
!1807 = !{!1808, !1809}
!1808 = !DILocalVariable(name: "nr", arg: 1, scope: !1804, file: !1784, line: 204, type: !187)
!1809 = !DILocalVariable(name: "addr", arg: 2, scope: !1804, file: !1784, line: 204, type: !1787)
!1810 = !DILocation(line: 204, column: 52, scope: !1804)
!1811 = !DILocation(line: 204, column: 86, scope: !1804)
!1812 = !DILocation(line: 206, column: 19, scope: !1804)
!1813 = !DILocation(line: 206, column: 22, scope: !1804)
!1814 = !DILocation(line: 206, column: 15, scope: !1804)
!1815 = !DILocation(line: 207, column: 4, scope: !1804)
!1816 = !DILocation(line: 207, column: 9, scope: !1804)
!1817 = !DILocation(line: 207, column: 12, scope: !1804)
!1818 = !DILocation(line: 206, column: 44, scope: !1804)
!1819 = !DILocation(line: 207, column: 37, scope: !1804)
!1820 = !DILocation(line: 206, column: 2, scope: !1804)
!1821 = distinct !DISubprogram(name: "variable_test_bit", scope: !1784, file: !1784, line: 224, type: !1805, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1822)
!1822 = !{!1823, !1824, !1825}
!1823 = !DILocalVariable(name: "nr", arg: 1, scope: !1821, file: !1784, line: 224, type: !187)
!1824 = !DILocalVariable(name: "addr", arg: 2, scope: !1821, file: !1784, line: 224, type: !1787)
!1825 = !DILocalVariable(name: "oldbit", scope: !1821, file: !1784, line: 226, type: !389)
!1826 = !DILocation(line: 224, column: 52, scope: !1821)
!1827 = !DILocation(line: 224, column: 86, scope: !1821)
!1828 = !DILocation(line: 226, column: 2, scope: !1821)
!1829 = !DILocation(line: 226, column: 7, scope: !1821)
!1830 = !DILocation(line: 231, column: 33, scope: !1821)
!1831 = !DILocation(line: 231, column: 46, scope: !1821)
!1832 = !DILocation(line: 228, column: 2, scope: !1821)
!1833 = !{i64 2147981787, i64 2147981861}
!1834 = !DILocation(line: 233, column: 9, scope: !1821)
!1835 = !DILocation(line: 234, column: 1, scope: !1821)
!1836 = !DILocation(line: 233, column: 2, scope: !1821)
!1837 = distinct !DISubprogram(name: "__list_del_entry", scope: !399, file: !399, line: 213, type: !1054, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1838)
!1838 = !{!1839}
!1839 = !DILocalVariable(name: "entry", arg: 1, scope: !1837, file: !399, line: 213, type: !49)
!1840 = !DILocation(line: 213, column: 55, scope: !1837)
!1841 = !DILocation(line: 215, column: 30, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1837, file: !399, line: 215, column: 6)
!1843 = !DILocation(line: 215, column: 7, scope: !1842)
!1844 = !DILocation(line: 215, column: 6, scope: !1837)
!1845 = !DILocation(line: 216, column: 3, scope: !1842)
!1846 = !DILocation(line: 218, column: 13, scope: !1837)
!1847 = !DILocation(line: 218, column: 20, scope: !1837)
!1848 = !DILocation(line: 218, column: 26, scope: !1837)
!1849 = !DILocation(line: 218, column: 33, scope: !1837)
!1850 = !DILocation(line: 218, column: 2, scope: !1837)
!1851 = !DILocation(line: 219, column: 1, scope: !1837)
!1852 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !399, file: !399, line: 35, type: !1054, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1853)
!1853 = !{!1854}
!1854 = !DILocalVariable(name: "list", arg: 1, scope: !1852, file: !399, line: 35, type: !49)
!1855 = !DILocation(line: 35, column: 53, scope: !1852)
!1856 = !DILocation(line: 37, column: 2, scope: !1852)
!1857 = !DILocation(line: 37, column: 2, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1852, file: !399, line: 37, column: 2)
!1859 = !DILocation(line: 37, column: 2, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1858, file: !399, line: 37, column: 2)
!1861 = !DILocation(line: 37, column: 2, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1858, file: !399, line: 37, column: 2)
!1863 = !DILocation(line: 38, column: 2, scope: !1852)
!1864 = !DILocation(line: 38, column: 2, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1852, file: !399, line: 38, column: 2)
!1866 = !DILocation(line: 38, column: 2, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1865, file: !399, line: 38, column: 2)
!1868 = !DILocation(line: 38, column: 2, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !399, line: 38, column: 2)
!1870 = !DILocation(line: 39, column: 1, scope: !1852)
!1871 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !399, file: !399, line: 134, type: !1872, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1874)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!389, !49}
!1874 = !{!1875}
!1875 = !DILocalVariable(name: "entry", arg: 1, scope: !1871, file: !399, line: 134, type: !49)
!1876 = !DILocation(line: 134, column: 61, scope: !1871)
!1877 = !DILocation(line: 136, column: 2, scope: !1871)
!1878 = distinct !DISubprogram(name: "__list_del", scope: !399, file: !399, line: 193, type: !1205, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1879)
!1879 = !{!1880, !1881}
!1880 = !DILocalVariable(name: "prev", arg: 1, scope: !1878, file: !399, line: 193, type: !49)
!1881 = !DILocalVariable(name: "next", arg: 2, scope: !1878, file: !399, line: 193, type: !49)
!1882 = !DILocation(line: 193, column: 50, scope: !1878)
!1883 = !DILocation(line: 193, column: 75, scope: !1878)
!1884 = !DILocation(line: 195, column: 15, scope: !1878)
!1885 = !DILocation(line: 195, column: 2, scope: !1878)
!1886 = !DILocation(line: 195, column: 8, scope: !1878)
!1887 = !DILocation(line: 195, column: 13, scope: !1878)
!1888 = !DILocation(line: 196, column: 2, scope: !1878)
!1889 = !DILocation(line: 196, column: 2, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1878, file: !399, line: 196, column: 2)
!1891 = !DILocation(line: 196, column: 2, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1890, file: !399, line: 196, column: 2)
!1893 = !DILocation(line: 196, column: 2, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1890, file: !399, line: 196, column: 2)
!1895 = !DILocation(line: 197, column: 1, scope: !1878)
!1896 = distinct !DISubprogram(name: "list_add", scope: !399, file: !399, line: 167, type: !1205, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1897)
!1897 = !{!1898, !1899}
!1898 = !DILocalVariable(name: "new", arg: 1, scope: !1896, file: !399, line: 167, type: !49)
!1899 = !DILocalVariable(name: "head", arg: 2, scope: !1896, file: !399, line: 167, type: !49)
!1900 = !DILocation(line: 167, column: 47, scope: !1896)
!1901 = !DILocation(line: 167, column: 70, scope: !1896)
!1902 = !DILocation(line: 169, column: 13, scope: !1896)
!1903 = !DILocation(line: 169, column: 18, scope: !1896)
!1904 = !DILocation(line: 169, column: 24, scope: !1896)
!1905 = !DILocation(line: 169, column: 30, scope: !1896)
!1906 = !DILocation(line: 169, column: 2, scope: !1896)
!1907 = !DILocation(line: 170, column: 1, scope: !1896)
!1908 = distinct !DISubprogram(name: "__list_add", scope: !399, file: !399, line: 146, type: !1909, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1911)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !49, !49, !49}
!1911 = !{!1912, !1913, !1914}
!1912 = !DILocalVariable(name: "new", arg: 1, scope: !1908, file: !399, line: 146, type: !49)
!1913 = !DILocalVariable(name: "prev", arg: 2, scope: !1908, file: !399, line: 147, type: !49)
!1914 = !DILocalVariable(name: "next", arg: 3, scope: !1908, file: !399, line: 148, type: !49)
!1915 = !DILocation(line: 146, column: 49, scope: !1908)
!1916 = !DILocation(line: 147, column: 28, scope: !1908)
!1917 = !DILocation(line: 148, column: 28, scope: !1908)
!1918 = !DILocation(line: 150, column: 24, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1908, file: !399, line: 150, column: 6)
!1920 = !DILocation(line: 150, column: 29, scope: !1919)
!1921 = !DILocation(line: 150, column: 35, scope: !1919)
!1922 = !DILocation(line: 150, column: 7, scope: !1919)
!1923 = !DILocation(line: 150, column: 6, scope: !1908)
!1924 = !DILocation(line: 151, column: 3, scope: !1919)
!1925 = !DILocation(line: 153, column: 15, scope: !1908)
!1926 = !DILocation(line: 153, column: 2, scope: !1908)
!1927 = !DILocation(line: 153, column: 8, scope: !1908)
!1928 = !DILocation(line: 153, column: 13, scope: !1908)
!1929 = !DILocation(line: 154, column: 14, scope: !1908)
!1930 = !DILocation(line: 154, column: 2, scope: !1908)
!1931 = !DILocation(line: 154, column: 7, scope: !1908)
!1932 = !DILocation(line: 154, column: 12, scope: !1908)
!1933 = !DILocation(line: 155, column: 14, scope: !1908)
!1934 = !DILocation(line: 155, column: 2, scope: !1908)
!1935 = !DILocation(line: 155, column: 7, scope: !1908)
!1936 = !DILocation(line: 155, column: 12, scope: !1908)
!1937 = !DILocation(line: 156, column: 2, scope: !1908)
!1938 = !DILocation(line: 156, column: 2, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1908, file: !399, line: 156, column: 2)
!1940 = !DILocation(line: 156, column: 2, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1939, file: !399, line: 156, column: 2)
!1942 = !DILocation(line: 156, column: 2, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !399, line: 156, column: 2)
!1944 = !DILocation(line: 157, column: 1, scope: !1908)
!1945 = distinct !DISubprogram(name: "__list_add_valid", scope: !399, file: !399, line: 128, type: !1946, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1948)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!389, !49, !49, !49}
!1948 = !{!1949, !1950, !1951}
!1949 = !DILocalVariable(name: "new", arg: 1, scope: !1945, file: !399, line: 128, type: !49)
!1950 = !DILocalVariable(name: "prev", arg: 2, scope: !1945, file: !399, line: 129, type: !49)
!1951 = !DILocalVariable(name: "next", arg: 3, scope: !1945, file: !399, line: 130, type: !49)
!1952 = !DILocation(line: 128, column: 55, scope: !1945)
!1953 = !DILocation(line: 129, column: 23, scope: !1945)
!1954 = !DILocation(line: 130, column: 23, scope: !1945)
!1955 = !DILocation(line: 132, column: 2, scope: !1945)
