; ModuleID = 'arch/x86/events/probe.c'
source_filename = "arch/x86/events/probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_perf_msr_probe: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad perf_msr_probe ; .previous"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.perf_msr = type { i64, ptr, ptr, i8, i64 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___addressable_perf_msr_probe189 = internal global ptr @perf_msr_probe, section ".discard.addressable", align 8, !dbg !0
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_perf_msr_probe189], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @perf_msr_probe(ptr noundef %msr, i32 noundef %cnt, i1 noundef zeroext %zero, ptr noundef %data) #0 align 16 !dbg !23 {
entry:
  %retval = alloca i64, align 8
  %msr.addr = alloca ptr, align 8
  %cnt.addr = alloca i32, align 4
  %zero.addr = alloca i8, align 1
  %data.addr = alloca ptr, align 8
  %avail = alloca i64, align 8
  %bit = alloca i32, align 4
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %grp = alloca ptr, align 8
  %mask = alloca i64, align 8
  store ptr %msr, ptr %msr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !425, metadata !DIExpression()), !dbg !439
  store i32 %cnt, ptr %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !426, metadata !DIExpression()), !dbg !440
  %frombool = zext i1 %zero to i8
  store i8 %frombool, ptr %zero.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %zero.addr, metadata !427, metadata !DIExpression()), !dbg !441
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !428, metadata !DIExpression()), !dbg !442
  call void @llvm.lifetime.start.p0(i64 8, ptr %avail) #6, !dbg !443
  call void @llvm.dbg.declare(metadata ptr %avail, metadata !429, metadata !DIExpression()), !dbg !444
  store i64 0, ptr %avail, align 8, !dbg !444
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #6, !dbg !445
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !430, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #6, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %val, metadata !431, metadata !DIExpression()), !dbg !448
  %0 = load i32, ptr %cnt.addr, align 4, !dbg !449
  %cmp = icmp sge i32 %0, 64, !dbg !451
  br i1 %cmp, label %if.then, label %if.end, !dbg !452

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !453
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !453

if.end:                                           ; preds = %entry
  store i32 0, ptr %bit, align 4, !dbg !454
  br label %for.cond, !dbg !455

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %bit, align 4, !dbg !456
  %2 = load i32, ptr %cnt.addr, align 4, !dbg !457
  %cmp1 = icmp ult i32 %1, %2, !dbg !458
  br i1 %cmp1, label %for.body, label %for.end, !dbg !459

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %msr.addr, align 8, !dbg !460
  %4 = load i32, ptr %bit, align 4, !dbg !461
  %idxprom = zext i32 %4 to i64, !dbg !460
  %arrayidx = getelementptr %struct.perf_msr, ptr %3, i64 %idxprom, !dbg !460
  %no_check = getelementptr inbounds %struct.perf_msr, ptr %arrayidx, i32 0, i32 3, !dbg !462
  %5 = load i8, ptr %no_check, align 8, !dbg !462, !range !463, !noundef !184
  %tobool = trunc i8 %5 to i1, !dbg !462
  br i1 %tobool, label %if.end43, label %if.then2, !dbg !464

if.then2:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %grp) #6, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %grp, metadata !432, metadata !DIExpression()), !dbg !466
  %6 = load ptr, ptr %msr.addr, align 8, !dbg !467
  %7 = load i32, ptr %bit, align 4, !dbg !468
  %idxprom3 = zext i32 %7 to i64, !dbg !467
  %arrayidx4 = getelementptr %struct.perf_msr, ptr %6, i64 %idxprom3, !dbg !467
  %grp5 = getelementptr inbounds %struct.perf_msr, ptr %arrayidx4, i32 0, i32 1, !dbg !469
  %8 = load ptr, ptr %grp5, align 8, !dbg !469
  store ptr %8, ptr %grp, align 8, !dbg !466
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #6, !dbg !470
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !438, metadata !DIExpression()), !dbg !471
  %9 = load ptr, ptr %grp, align 8, !dbg !472
  %tobool6 = icmp ne ptr %9, null, !dbg !472
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !474

if.then7:                                         ; preds = %if.then2
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !475

if.end8:                                          ; preds = %if.then2
  %10 = load ptr, ptr %grp, align 8, !dbg !476
  %is_visible = getelementptr inbounds %struct.attribute_group, ptr %10, i32 0, i32 1, !dbg !477
  store ptr @not_visible, ptr %is_visible, align 8, !dbg !478
  %11 = load ptr, ptr %msr.addr, align 8, !dbg !479
  %12 = load i32, ptr %bit, align 4, !dbg !481
  %idxprom9 = zext i32 %12 to i64, !dbg !479
  %arrayidx10 = getelementptr %struct.perf_msr, ptr %11, i64 %idxprom9, !dbg !479
  %msr11 = getelementptr inbounds %struct.perf_msr, ptr %arrayidx10, i32 0, i32 0, !dbg !482
  %13 = load i64, ptr %msr11, align 8, !dbg !482
  %tobool12 = icmp ne i64 %13, 0, !dbg !479
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !483

if.then13:                                        ; preds = %if.end8
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !484

if.end14:                                         ; preds = %if.end8
  %14 = load ptr, ptr %msr.addr, align 8, !dbg !485
  %15 = load i32, ptr %bit, align 4, !dbg !487
  %idxprom15 = zext i32 %15 to i64, !dbg !485
  %arrayidx16 = getelementptr %struct.perf_msr, ptr %14, i64 %idxprom15, !dbg !485
  %test = getelementptr inbounds %struct.perf_msr, ptr %arrayidx16, i32 0, i32 2, !dbg !488
  %16 = load ptr, ptr %test, align 8, !dbg !488
  %tobool17 = icmp ne ptr %16, null, !dbg !485
  br i1 %tobool17, label %land.lhs.true, label %if.end22, !dbg !489

land.lhs.true:                                    ; preds = %if.end14
  %17 = load ptr, ptr %msr.addr, align 8, !dbg !490
  %18 = load i32, ptr %bit, align 4, !dbg !491
  %idxprom18 = zext i32 %18 to i64, !dbg !490
  %arrayidx19 = getelementptr %struct.perf_msr, ptr %17, i64 %idxprom18, !dbg !490
  %test20 = getelementptr inbounds %struct.perf_msr, ptr %arrayidx19, i32 0, i32 2, !dbg !492
  %19 = load ptr, ptr %test20, align 8, !dbg !492
  %20 = load i32, ptr %bit, align 4, !dbg !493
  %21 = load ptr, ptr %data.addr, align 8, !dbg !494
  %call = call zeroext i1 %19(i32 noundef %20, ptr noundef %21) #7, !dbg !490
  br i1 %call, label %if.end22, label %if.then21, !dbg !495

if.then21:                                        ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !496

if.end22:                                         ; preds = %land.lhs.true, %if.end14
  %22 = load ptr, ptr %msr.addr, align 8, !dbg !497
  %23 = load i32, ptr %bit, align 4, !dbg !499
  %idxprom23 = zext i32 %23 to i64, !dbg !497
  %arrayidx24 = getelementptr %struct.perf_msr, ptr %22, i64 %idxprom23, !dbg !497
  %msr25 = getelementptr inbounds %struct.perf_msr, ptr %arrayidx24, i32 0, i32 0, !dbg !500
  %24 = load i64, ptr %msr25, align 8, !dbg !500
  %conv = trunc i64 %24 to i32, !dbg !497
  %call26 = call i32 @rdmsrl_safe(i32 noundef %conv, ptr noundef %val) #7, !dbg !501
  %tobool27 = icmp ne i32 %call26, 0, !dbg !501
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !502

if.then28:                                        ; preds = %if.end22
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !503

if.end29:                                         ; preds = %if.end22
  %25 = load ptr, ptr %msr.addr, align 8, !dbg !504
  %26 = load i32, ptr %bit, align 4, !dbg !505
  %idxprom30 = zext i32 %26 to i64, !dbg !504
  %arrayidx31 = getelementptr %struct.perf_msr, ptr %25, i64 %idxprom30, !dbg !504
  %mask32 = getelementptr inbounds %struct.perf_msr, ptr %arrayidx31, i32 0, i32 4, !dbg !506
  %27 = load i64, ptr %mask32, align 8, !dbg !506
  store i64 %27, ptr %mask, align 8, !dbg !507
  %28 = load i64, ptr %mask, align 8, !dbg !508
  %tobool33 = icmp ne i64 %28, 0, !dbg !508
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !510

if.then34:                                        ; preds = %if.end29
  store i64 -1, ptr %mask, align 8, !dbg !511
  br label %if.end35, !dbg !512

if.end35:                                         ; preds = %if.then34, %if.end29
  %29 = load i8, ptr %zero.addr, align 1, !dbg !513, !range !463, !noundef !184
  %tobool36 = trunc i8 %29 to i1, !dbg !513
  br i1 %tobool36, label %if.end40, label %land.lhs.true37, !dbg !515

land.lhs.true37:                                  ; preds = %if.end35
  %30 = load i64, ptr %val, align 8, !dbg !516
  %31 = load i64, ptr %mask, align 8, !dbg !517
  %and = and i64 %30, %31, !dbg !518
  %tobool38 = icmp ne i64 %and, 0, !dbg !518
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !519

if.then39:                                        ; preds = %land.lhs.true37
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !520

if.end40:                                         ; preds = %land.lhs.true37, %if.end35
  %32 = load ptr, ptr %grp, align 8, !dbg !521
  %is_visible41 = getelementptr inbounds %struct.attribute_group, ptr %32, i32 0, i32 1, !dbg !522
  store ptr null, ptr %is_visible41, align 8, !dbg !523
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !524
  br label %cleanup, !dbg !524

cleanup:                                          ; preds = %if.end40, %if.then39, %if.then28, %if.then21, %if.then13, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #6, !dbg !524
  call void @llvm.lifetime.end.p0(i64 8, ptr %grp) #6, !dbg !524
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end43, !dbg !525

if.end43:                                         ; preds = %cleanup.cont, %for.body
  %33 = load i32, ptr %bit, align 4, !dbg !526
  %sh_prom = zext i32 %33 to i64, !dbg !526
  %shl = shl i64 1, %sh_prom, !dbg !526
  %34 = load i64, ptr %avail, align 8, !dbg !527
  %or = or i64 %34, %shl, !dbg !527
  store i64 %or, ptr %avail, align 8, !dbg !527
  br label %for.inc, !dbg !528

for.inc:                                          ; preds = %if.end43, %cleanup
  %35 = load i32, ptr %bit, align 4, !dbg !529
  %inc = add i32 %35, 1, !dbg !529
  store i32 %inc, ptr %bit, align 4, !dbg !529
  br label %for.cond, !dbg !530, !llvm.loop !531

for.end:                                          ; preds = %for.cond
  %36 = load i64, ptr %avail, align 8, !dbg !535
  store i64 %36, ptr %retval, align 8, !dbg !536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !536

cleanup44:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #6, !dbg !537
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #6, !dbg !537
  call void @llvm.lifetime.end.p0(i64 8, ptr %avail) #6, !dbg !537
  %37 = load i64, ptr %retval, align 8, !dbg !537
  ret i64 %37, !dbg !537

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @not_visible(ptr noundef %kobj, ptr noundef %attr, i32 noundef %i) #0 align 16 !dbg !538 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !540, metadata !DIExpression()), !dbg !543
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !541, metadata !DIExpression()), !dbg !544
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !542, metadata !DIExpression()), !dbg !545
  ret i16 0, !dbg !546
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdmsrl_safe(i32 noundef %msr, ptr noundef %p) #3 align 16 !dbg !547 {
entry:
  %msr.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !553, metadata !DIExpression()), !dbg !556
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !554, metadata !DIExpression()), !dbg !557
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %err, metadata !555, metadata !DIExpression()), !dbg !559
  %0 = load i32, ptr %msr.addr, align 4, !dbg !560
  %call = call i64 @native_read_msr_safe(i32 noundef %0, ptr noundef %err) #7, !dbg !561
  %1 = load ptr, ptr %p.addr, align 8, !dbg !562
  store i64 %call, ptr %1, align 8, !dbg !563
  %2 = load i32, ptr %err, align 4, !dbg !564
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !565
  ret i32 %2, !dbg !566
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #3 align 16 !dbg !567 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !572, metadata !DIExpression()), !dbg !576
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !573, metadata !DIExpression()), !dbg !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #6, !dbg !578
  call void @llvm.dbg.declare(metadata ptr %low, metadata !574, metadata !DIExpression()), !dbg !578
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #6, !dbg !578
  call void @llvm.dbg.declare(metadata ptr %high, metadata !575, metadata !DIExpression()), !dbg !578
  %0 = load ptr, ptr %err.addr, align 8, !dbg !579
  %1 = load i32, ptr %msr.addr, align 4, !dbg !580
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #6, !dbg !581, !srcloc !582
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !581
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !581
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !581
  store i32 %asmresult, ptr %0, align 4, !dbg !581
  store i64 %asmresult1, ptr %low, align 8, !dbg !581
  store i64 %asmresult2, ptr %high, align 8, !dbg !581
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #7, !dbg !583
  br i1 %call, label %if.then, label %if.end, !dbg !585

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !586
  %4 = load i64, ptr %low, align 8, !dbg !587
  %5 = load i64, ptr %high, align 8, !dbg !587
  %shl = shl i64 %5, 32, !dbg !587
  %or = or i64 %4, %shl, !dbg !587
  %6 = load ptr, ptr %err.addr, align 8, !dbg !588
  %7 = load i32, ptr %6, align 4, !dbg !589
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #7, !dbg !590
  br label %if.end, !dbg !590

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !591
  %9 = load i64, ptr %high, align 8, !dbg !591
  %shl3 = shl i64 %9, 32, !dbg !591
  %or4 = or i64 %8, %shl3, !dbg !591
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #6, !dbg !592
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #6, !dbg !592
  ret i64 %or4, !dbg !593
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #4 align 16 !dbg !594 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !617, metadata !DIExpression()), !dbg !618
  %0 = load ptr, ptr %key.addr, align 8, !dbg !619
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #7, !dbg !620
  ret i1 %call, !dbg !621
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !622 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !625 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !630, metadata !DIExpression()), !dbg !633
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !631, metadata !DIExpression()), !dbg !634
  %0 = load ptr, ptr %key.addr, align 8, !dbg !635
  %1 = load i8, ptr %branch.addr, align 1, !dbg !636, !range !463, !noundef !184
  %tobool = trunc i8 %1 to i1, !dbg !636
  %conv = zext i1 %tobool to i32, !dbg !636
  %or = or i32 2, %conv, !dbg !637
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #6
          to label %asm.fallthrough [label %l_yes], !dbg !638, !srcloc !639

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !640
  br label %return, !dbg !640

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !632), !dbg !641
  store i1 true, ptr %retval, align 1, !dbg !642
  br label %return, !dbg !642

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !643
  ret i1 %2, !dbg !643
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_perf_msr_probe189", scope: !2, file: !3, line: 63, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/events/.probe.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/events/probe\22 -D KBUILD_BASENAME=\22probe\22 -D KBUILD_MODNAME=\22probe\22 -D __KBUILD_MODNAME=kmod_probe -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/events/probe.ll arch/x86/events/probe.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/events/probe.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "118faf15a0d68f594bbb2788ea3fbf9f")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0}
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 8, !"cf-protection-branch", i32 1}
!18 = !{i32 4, !"function_return_thunk_extern", i32 1}
!19 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!20 = !{i32 1, !"Code Model", i32 2}
!21 = !{i32 1, !"override-stack-alignment", i32 8}
!22 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!23 = distinct !DISubprogram(name: "perf_msr_probe", scope: !3, file: !3, line: 19, type: !24, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !424)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !27, !61, !383, !12}
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_msr", file: !29, line: 6, size: 320, elements: !30)
!29 = !DIFile(filename: "arch/x86/events/probe.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "735e24e786030d98ace6e9085068cd43")
!30 = !{!31, !37, !418, !422, !423}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "msr", scope: !28, file: !29, line: 7, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !33, line: 23, baseType: !34)
!33 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !35, line: 31, baseType: !36)
!35 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!36 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "grp", scope: !28, file: !29, line: 8, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !40, line: 84, size: 320, elements: !41)
!40 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!41 = !{!42, !46, !62, !414, !416}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !40, line: 85, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !39, file: !40, line: 86, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !53, !56, !61}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !51, line: 24, baseType: !52)
!51 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!52 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !55, line: 20, flags: DIFlagFwdDecl)
!55 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !40, line: 30, size: 128, elements: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !57, file: !40, line: 31, baseType: !43, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !57, file: !40, line: 32, baseType: !50, size: 16, offset: 64)
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !39, file: !40, line: 88, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!50, !53, !66, !61}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !40, line: 175, size: 512, elements: !68)
!68 = !{!69, !70, !75, !76, !83, !98, !99}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !67, file: !40, line: 176, baseType: !57, size: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !67, file: !40, line: 177, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 61, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !73, line: 72, baseType: !74)
!73 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !73, line: 16, baseType: !26)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !67, file: !40, line: 178, baseType: !12, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !67, file: !40, line: 179, baseType: !77, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !82, line: 32, flags: DIFlagFwdDecl)
!82 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !67, file: !40, line: 180, baseType: !84, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !91, !53, !66, !94, !95, !71}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !51, line: 66, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !73, line: 73, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !73, line: 15, baseType: !90)
!90 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !93, line: 537, flags: DIFlagFwdDecl)
!93 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !51, line: 52, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !73, line: 88, baseType: !97)
!97 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !67, file: !40, line: 182, baseType: !84, size: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !67, file: !40, line: 184, baseType: !100, size: 64, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!61, !91, !53, !66, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !82, line: 625, size: 1344, elements: !105)
!105 = !{!106, !123, !363, !369, !376, !377, !382, !385, !397, !398, !401, !405, !406, !407, !408, !409, !412}
!106 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !82, line: 628, baseType: !107, size: 128)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !82, line: 628, size: 128, elements: !108)
!108 = !{!109, !114}
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !107, file: !82, line: 629, baseType: !110, size: 128)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !107, file: !82, line: 629, size: 128, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !110, file: !82, line: 631, baseType: !26, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !110, file: !82, line: 632, baseType: !26, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !107, file: !82, line: 635, baseType: !115, size: 128, align: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !51, line: 232, size: 128, align: 64, elements: !116)
!116 = !{!117, !119}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !115, file: !51, line: 233, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !115, file: !51, line: 234, baseType: !120, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !118}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !104, file: !82, line: 639, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !82, line: 733, size: 10240, elements: !126)
!126 = !{!127, !359}
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !82, line: 734, baseType: !128, size: 10240)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !125, file: !82, line: 734, size: 10240, elements: !129)
!129 = !{!130, !138, !187, !191, !192, !193, !194, !195, !196, !204, !205, !206, !212, !213, !222, !223, !224, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !276, !290, !293, !325, !326, !327, !330, !333, !334, !337, !338, !339, !346, !347}
!130 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !82, line: 739, baseType: !131, size: 512, align: 512)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !82, line: 739, size: 512, align: 512, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !131, file: !82, line: 747, baseType: !134, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !51, line: 174, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 172, size: 32, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !135, file: !51, line: 173, baseType: !61, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !128, file: !82, line: 750, baseType: !139, size: 128, offset: 512)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !140, line: 218, size: 128, elements: !141)
!140 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!141 = !{!142, !185, !186}
!142 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !140, line: 219, baseType: !143, size: 32)
!143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !140, line: 219, size: 32, elements: !144)
!144 = !{!145, !181}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !143, file: !140, line: 220, baseType: !146, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !147, line: 29, baseType: !148)
!147 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !147, line: 17, size: 32, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !148, file: !147, line: 18, baseType: !151, size: 32)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !147, line: 18, size: 32, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !151, file: !147, line: 19, baseType: !154, size: 32)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !155, line: 14, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !154, file: !155, line: 15, baseType: !158, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !159, line: 44, baseType: !160)
!159 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !159, line: 14, size: 32, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !159, line: 15, baseType: !163, size: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !159, line: 15, size: 32, elements: !164)
!164 = !{!165, !166, !174}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !163, file: !159, line: 16, baseType: !134, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !159, line: 24, baseType: !167, size: 16)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !163, file: !159, line: 24, size: 16, elements: !168)
!168 = !{!169, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !167, file: !159, line: 25, baseType: !170, size: 8)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !33, line: 17, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !35, line: 21, baseType: !172)
!172 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !167, file: !159, line: 26, baseType: !170, size: 8, offset: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !159, line: 28, baseType: !175, size: 32)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !163, file: !159, line: 28, size: 32, elements: !176)
!176 = !{!177, !180}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !175, file: !159, line: 29, baseType: !178, size: 16)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !33, line: 19, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !35, line: 24, baseType: !52)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !175, file: !159, line: 30, baseType: !178, size: 16, offset: 16)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !143, file: !140, line: 221, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !140, line: 197, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 197, elements: !184)
!184 = !{}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !139, file: !140, line: 223, baseType: !7, size: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !139, file: !140, line: 224, baseType: !12, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !128, file: !82, line: 752, baseType: !188, size: 64, offset: 640)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!26, !91, !26, !26, !26, !26}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !128, file: !82, line: 756, baseType: !26, size: 64, offset: 704)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !128, file: !82, line: 757, baseType: !26, size: 64, offset: 768)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !128, file: !82, line: 760, baseType: !26, size: 64, offset: 832)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !128, file: !82, line: 761, baseType: !26, size: 64, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !128, file: !82, line: 763, baseType: !26, size: 64, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !128, file: !82, line: 764, baseType: !197, size: 64, offset: 1024)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !93, line: 299, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 299, size: 64, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !199, file: !93, line: 299, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !203, line: 18, baseType: !26)
!203 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!204 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !128, file: !82, line: 773, baseType: !134, size: 32, offset: 1088)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !128, file: !82, line: 785, baseType: !134, size: 32, offset: 1120)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !128, file: !82, line: 795, baseType: !207, size: 64, offset: 1152)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !82, line: 726, size: 128, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !208, file: !82, line: 727, baseType: !32, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !208, file: !82, line: 728, baseType: !61, size: 32, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !128, file: !82, line: 801, baseType: !26, size: 64, offset: 1216)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !128, file: !82, line: 804, baseType: !214, size: 64, offset: 1280)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !215, line: 13, baseType: !216)
!215 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !51, line: 181, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 179, size: 64, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !217, file: !51, line: 180, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !33, line: 22, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !35, line: 30, baseType: !97)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !128, file: !82, line: 806, baseType: !61, size: 32, offset: 1344)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !128, file: !82, line: 808, baseType: !146, size: 32, offset: 1376)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !128, file: !82, line: 823, baseType: !225, size: 320, offset: 1408)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !226, line: 48, size: 320, elements: !227)
!226 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!227 = !{!228, !229, !230, !235, !237}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !225, file: !226, line: 49, baseType: !214, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !225, file: !226, line: 55, baseType: !214, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !225, file: !226, line: 57, baseType: !231, size: 32, offset: 128)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !232, line: 15, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !231, file: !232, line: 20, baseType: !134, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !225, file: !226, line: 59, baseType: !236, size: 32, offset: 160)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !155, line: 23, baseType: !154)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !225, file: !226, line: 60, baseType: !238, size: 128, offset: 192)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !51, line: 190, size: 128, elements: !239)
!239 = !{!240, !242}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !51, line: 191, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !238, file: !51, line: 191, baseType: !241, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !128, file: !82, line: 825, baseType: !238, size: 128, offset: 1728)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !128, file: !82, line: 845, baseType: !61, size: 32, offset: 1856)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !128, file: !82, line: 849, baseType: !26, size: 64, offset: 1920)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !128, file: !82, line: 850, baseType: !26, size: 64, offset: 1984)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !128, file: !82, line: 852, baseType: !26, size: 64, offset: 2048)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !128, file: !82, line: 853, baseType: !26, size: 64, offset: 2112)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !128, file: !82, line: 854, baseType: !216, size: 64, offset: 2176)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !128, file: !82, line: 855, baseType: !26, size: 64, offset: 2240)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !128, file: !82, line: 856, baseType: !26, size: 64, offset: 2304)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !128, file: !82, line: 857, baseType: !26, size: 64, offset: 2368)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !128, file: !82, line: 858, baseType: !26, size: 64, offset: 2432)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !128, file: !82, line: 865, baseType: !255, size: 32, offset: 2496)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !256, line: 69, baseType: !257)
!256 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !256, line: 64, size: 32, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !257, file: !256, line: 65, baseType: !7, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !128, file: !82, line: 867, baseType: !146, size: 32, offset: 2528)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !128, file: !82, line: 869, baseType: !26, size: 64, offset: 2560)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !128, file: !82, line: 869, baseType: !26, size: 64, offset: 2624)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !128, file: !82, line: 869, baseType: !26, size: 64, offset: 2688)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !128, file: !82, line: 869, baseType: !26, size: 64, offset: 2752)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !128, file: !82, line: 870, baseType: !26, size: 64, offset: 2816)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !128, file: !82, line: 870, baseType: !26, size: 64, offset: 2880)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !128, file: !82, line: 870, baseType: !26, size: 64, offset: 2944)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !128, file: !82, line: 871, baseType: !26, size: 64, offset: 3008)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !128, file: !82, line: 871, baseType: !26, size: 64, offset: 3072)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !128, file: !82, line: 871, baseType: !26, size: 64, offset: 3136)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !128, file: !82, line: 871, baseType: !26, size: 64, offset: 3200)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !128, file: !82, line: 873, baseType: !273, size: 3328, offset: 3264)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 3328, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 52)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !128, file: !82, line: 875, baseType: !277, size: 1280, offset: 6592)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 1280, elements: !288)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !279, line: 22, size: 320, elements: !280)
!279 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!280 = !{!281, !282, !283, !284}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !278, file: !279, line: 23, baseType: !236, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !278, file: !279, line: 24, baseType: !220, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !278, file: !279, line: 26, baseType: !238, size: 128, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !278, file: !279, line: 28, baseType: !285, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !33, line: 20, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !35, line: 26, baseType: !61)
!288 = !{!289}
!289 = !DISubrange(count: 4)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !128, file: !82, line: 877, baseType: !291, size: 64, offset: 7872)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !82, line: 877, flags: DIFlagFwdDecl)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !128, file: !82, line: 880, baseType: !294, size: 1088, offset: 7936)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !295, line: 72, baseType: !296)
!295 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 23, size: 1088, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !305, !306, !314, !315, !319, !320, !321}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !296, file: !295, line: 28, baseType: !32, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !296, file: !295, line: 38, baseType: !216, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !296, file: !295, line: 40, baseType: !26, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !296, file: !295, line: 43, baseType: !225, size: 320, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !296, file: !295, line: 44, baseType: !303, size: 64, offset: 512)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !295, line: 44, flags: DIFlagFwdDecl)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !295, line: 48, baseType: !26, size: 64, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !296, file: !295, line: 59, baseType: !307, size: 256, offset: 640)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !308, line: 66, size: 256, elements: !309)
!308 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!309 = !{!310, !311, !312, !313}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !307, file: !308, line: 67, baseType: !214, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !307, file: !308, line: 68, baseType: !236, size: 32, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !307, file: !308, line: 70, baseType: !231, size: 32, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !307, file: !308, line: 72, baseType: !238, size: 128, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !296, file: !295, line: 60, baseType: !12, size: 64, offset: 896)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !296, file: !295, line: 61, baseType: !316, size: 64, offset: 960)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !295, line: 61, flags: DIFlagFwdDecl)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !296, file: !295, line: 63, baseType: !134, size: 32, offset: 1024)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !296, file: !295, line: 69, baseType: !178, size: 16, offset: 1056)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !296, file: !295, line: 70, baseType: !322, size: 16, offset: 1072)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !33, line: 18, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !35, line: 23, baseType: !324)
!324 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !82, line: 882, baseType: !26, size: 64, offset: 9024)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !128, file: !82, line: 885, baseType: !146, size: 32, offset: 9088)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !128, file: !82, line: 886, baseType: !328, size: 64, offset: 9152)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !82, line: 732, flags: DIFlagFwdDecl)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !128, file: !82, line: 901, baseType: !331, size: 64, offset: 9216)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !82, line: 901, flags: DIFlagFwdDecl)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !128, file: !82, line: 904, baseType: !91, size: 64, offset: 9280)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !128, file: !82, line: 906, baseType: !335, size: 64, offset: 9344)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !82, line: 906, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !128, file: !82, line: 930, baseType: !134, size: 32, offset: 9408)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !128, file: !82, line: 933, baseType: !134, size: 32, offset: 9440)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !128, file: !82, line: 935, baseType: !340, size: 64, offset: 9472)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !341, line: 103, size: 64, elements: !342)
!341 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !340, file: !341, line: 104, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !341, line: 101, flags: DIFlagFwdDecl)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !128, file: !82, line: 940, baseType: !214, size: 64, offset: 9536)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !128, file: !82, line: 942, baseType: !348, size: 256, offset: 9600)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !349, line: 98, size: 256, elements: !350)
!349 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!350 = !{!351, !352, !353}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !348, file: !349, line: 99, baseType: !214, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !348, file: !349, line: 100, baseType: !238, size: 128, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !348, file: !349, line: 101, baseType: !354, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !349, line: 21, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !125, file: !82, line: 986, baseType: !360, offset: 10240)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: -1)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !104, file: !82, line: 640, baseType: !364, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !93, line: 297, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !93, line: 297, size: 64, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !365, file: !93, line: 297, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !203, line: 19, baseType: !26)
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !82, line: 646, baseType: !370, size: 64, offset: 256)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !82, line: 646, size: 64, elements: !371)
!371 = !{!372, !375}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !370, file: !82, line: 647, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !82, line: 542, baseType: !26)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !370, file: !82, line: 648, baseType: !374, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !104, file: !82, line: 666, baseType: !61, size: 32, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !104, file: !82, line: 667, baseType: !378, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !82, line: 579, size: 320, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !379, file: !82, line: 580, baseType: !225, size: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !104, file: !82, line: 670, baseType: !383, size: 8, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !51, line: 35, baseType: !384)
!384 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !104, file: !82, line: 681, baseType: !386, size: 256, offset: 512)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !82, line: 678, size: 256, elements: !387)
!387 = !{!388, !396}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !386, file: !82, line: 679, baseType: !389, size: 192, align: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !390, line: 5, size: 192, align: 64, elements: !391)
!390 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!391 = !{!392, !393, !395}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !389, file: !390, line: 6, baseType: !26, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !389, file: !390, line: 7, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !389, file: !390, line: 8, baseType: !394, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !386, file: !82, line: 680, baseType: !26, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !104, file: !82, line: 689, baseType: !238, size: 128, offset: 768)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !104, file: !82, line: 691, baseType: !399, size: 64, offset: 896)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !82, line: 691, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !104, file: !82, line: 694, baseType: !402, size: 64, offset: 960)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !82, line: 694, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !104, file: !82, line: 697, baseType: !26, size: 64, offset: 1024)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !104, file: !82, line: 699, baseType: !91, size: 64, offset: 1088)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !104, file: !82, line: 700, baseType: !12, size: 64, offset: 1152)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !104, file: !82, line: 711, baseType: !214, size: 64, offset: 1216)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !104, file: !82, line: 717, baseType: !410, size: 64, offset: 1280)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !82, line: 717, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !104, file: !82, line: 722, baseType: !413, offset: 1344)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !82, line: 570, elements: !184)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !39, file: !40, line: 90, baseType: !415, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !39, file: !40, line: 91, baseType: !417, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !28, file: !29, line: 9, baseType: !419, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!383, !61, !12}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "no_check", scope: !28, file: !29, line: 10, baseType: !383, size: 8, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !28, file: !29, line: 11, baseType: !32, size: 64, offset: 256)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !438}
!425 = !DILocalVariable(name: "msr", arg: 1, scope: !23, file: !3, line: 19, type: !27)
!426 = !DILocalVariable(name: "cnt", arg: 2, scope: !23, file: !3, line: 19, type: !61)
!427 = !DILocalVariable(name: "zero", arg: 3, scope: !23, file: !3, line: 19, type: !383)
!428 = !DILocalVariable(name: "data", arg: 4, scope: !23, file: !3, line: 19, type: !12)
!429 = !DILocalVariable(name: "avail", scope: !23, file: !3, line: 21, type: !26)
!430 = !DILocalVariable(name: "bit", scope: !23, file: !3, line: 22, type: !7)
!431 = !DILocalVariable(name: "val", scope: !23, file: !3, line: 23, type: !32)
!432 = !DILocalVariable(name: "grp", scope: !433, file: !3, line: 30, type: !38)
!433 = distinct !DILexicalBlock(scope: !434, file: !3, line: 29, column: 27)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 29, column: 7)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 28, column: 34)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 28, column: 2)
!437 = distinct !DILexicalBlock(scope: !23, file: !3, line: 28, column: 2)
!438 = !DILocalVariable(name: "mask", scope: !433, file: !3, line: 31, type: !32)
!439 = !DILocation(line: 19, column: 33, scope: !23)
!440 = !DILocation(line: 19, column: 42, scope: !23)
!441 = !DILocation(line: 19, column: 52, scope: !23)
!442 = !DILocation(line: 19, column: 64, scope: !23)
!443 = !DILocation(line: 21, column: 2, scope: !23)
!444 = !DILocation(line: 21, column: 16, scope: !23)
!445 = !DILocation(line: 22, column: 2, scope: !23)
!446 = !DILocation(line: 22, column: 15, scope: !23)
!447 = !DILocation(line: 23, column: 2, scope: !23)
!448 = !DILocation(line: 23, column: 6, scope: !23)
!449 = !DILocation(line: 25, column: 6, scope: !450)
!450 = distinct !DILexicalBlock(scope: !23, file: !3, line: 25, column: 6)
!451 = !DILocation(line: 25, column: 10, scope: !450)
!452 = !DILocation(line: 25, column: 6, scope: !23)
!453 = !DILocation(line: 26, column: 3, scope: !450)
!454 = !DILocation(line: 28, column: 11, scope: !437)
!455 = !DILocation(line: 28, column: 7, scope: !437)
!456 = !DILocation(line: 28, column: 16, scope: !436)
!457 = !DILocation(line: 28, column: 22, scope: !436)
!458 = !DILocation(line: 28, column: 20, scope: !436)
!459 = !DILocation(line: 28, column: 2, scope: !437)
!460 = !DILocation(line: 29, column: 8, scope: !434)
!461 = !DILocation(line: 29, column: 12, scope: !434)
!462 = !DILocation(line: 29, column: 17, scope: !434)
!463 = !{i8 0, i8 2}
!464 = !DILocation(line: 29, column: 7, scope: !435)
!465 = !DILocation(line: 30, column: 4, scope: !433)
!466 = !DILocation(line: 30, column: 28, scope: !433)
!467 = !DILocation(line: 30, column: 34, scope: !433)
!468 = !DILocation(line: 30, column: 38, scope: !433)
!469 = !DILocation(line: 30, column: 43, scope: !433)
!470 = !DILocation(line: 31, column: 4, scope: !433)
!471 = !DILocation(line: 31, column: 8, scope: !433)
!472 = !DILocation(line: 34, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !433, file: !3, line: 34, column: 8)
!474 = !DILocation(line: 34, column: 8, scope: !433)
!475 = !DILocation(line: 35, column: 5, scope: !473)
!476 = !DILocation(line: 37, column: 4, scope: !433)
!477 = !DILocation(line: 37, column: 9, scope: !433)
!478 = !DILocation(line: 37, column: 20, scope: !433)
!479 = !DILocation(line: 40, column: 9, scope: !480)
!480 = distinct !DILexicalBlock(scope: !433, file: !3, line: 40, column: 8)
!481 = !DILocation(line: 40, column: 13, scope: !480)
!482 = !DILocation(line: 40, column: 18, scope: !480)
!483 = !DILocation(line: 40, column: 8, scope: !433)
!484 = !DILocation(line: 41, column: 5, scope: !480)
!485 = !DILocation(line: 43, column: 8, scope: !486)
!486 = distinct !DILexicalBlock(scope: !433, file: !3, line: 43, column: 8)
!487 = !DILocation(line: 43, column: 12, scope: !486)
!488 = !DILocation(line: 43, column: 17, scope: !486)
!489 = !DILocation(line: 43, column: 22, scope: !486)
!490 = !DILocation(line: 43, column: 26, scope: !486)
!491 = !DILocation(line: 43, column: 30, scope: !486)
!492 = !DILocation(line: 43, column: 35, scope: !486)
!493 = !DILocation(line: 43, column: 40, scope: !486)
!494 = !DILocation(line: 43, column: 45, scope: !486)
!495 = !DILocation(line: 43, column: 8, scope: !433)
!496 = !DILocation(line: 44, column: 5, scope: !486)
!497 = !DILocation(line: 46, column: 20, scope: !498)
!498 = distinct !DILexicalBlock(scope: !433, file: !3, line: 46, column: 8)
!499 = !DILocation(line: 46, column: 24, scope: !498)
!500 = !DILocation(line: 46, column: 29, scope: !498)
!501 = !DILocation(line: 46, column: 8, scope: !498)
!502 = !DILocation(line: 46, column: 8, scope: !433)
!503 = !DILocation(line: 47, column: 5, scope: !498)
!504 = !DILocation(line: 49, column: 11, scope: !433)
!505 = !DILocation(line: 49, column: 15, scope: !433)
!506 = !DILocation(line: 49, column: 20, scope: !433)
!507 = !DILocation(line: 49, column: 9, scope: !433)
!508 = !DILocation(line: 50, column: 9, scope: !509)
!509 = distinct !DILexicalBlock(scope: !433, file: !3, line: 50, column: 8)
!510 = !DILocation(line: 50, column: 8, scope: !433)
!511 = !DILocation(line: 51, column: 10, scope: !509)
!512 = !DILocation(line: 51, column: 5, scope: !509)
!513 = !DILocation(line: 53, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !433, file: !3, line: 53, column: 8)
!515 = !DILocation(line: 53, column: 14, scope: !514)
!516 = !DILocation(line: 53, column: 19, scope: !514)
!517 = !DILocation(line: 53, column: 25, scope: !514)
!518 = !DILocation(line: 53, column: 23, scope: !514)
!519 = !DILocation(line: 53, column: 8, scope: !433)
!520 = !DILocation(line: 54, column: 5, scope: !514)
!521 = !DILocation(line: 56, column: 4, scope: !433)
!522 = !DILocation(line: 56, column: 9, scope: !433)
!523 = !DILocation(line: 56, column: 20, scope: !433)
!524 = !DILocation(line: 57, column: 3, scope: !434)
!525 = !DILocation(line: 57, column: 3, scope: !433)
!526 = !DILocation(line: 58, column: 12, scope: !435)
!527 = !DILocation(line: 58, column: 9, scope: !435)
!528 = !DILocation(line: 59, column: 2, scope: !435)
!529 = !DILocation(line: 28, column: 30, scope: !436)
!530 = !DILocation(line: 28, column: 2, scope: !436)
!531 = distinct !{!531, !459, !532, !533, !534}
!532 = !DILocation(line: 59, column: 2, scope: !437)
!533 = !{!"llvm.loop.mustprogress"}
!534 = !{!"llvm.loop.unroll.disable"}
!535 = !DILocation(line: 61, column: 9, scope: !23)
!536 = !DILocation(line: 61, column: 2, scope: !23)
!537 = !DILocation(line: 62, column: 1, scope: !23)
!538 = distinct !DISubprogram(name: "not_visible", scope: !3, file: !3, line: 8, type: !48, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !539)
!539 = !{!540, !541, !542}
!540 = !DILocalVariable(name: "kobj", arg: 1, scope: !538, file: !3, line: 8, type: !53)
!541 = !DILocalVariable(name: "attr", arg: 2, scope: !538, file: !3, line: 8, type: !56)
!542 = !DILocalVariable(name: "i", arg: 3, scope: !538, file: !3, line: 8, type: !61)
!543 = !DILocation(line: 8, column: 29, scope: !538)
!544 = !DILocation(line: 8, column: 53, scope: !538)
!545 = !DILocation(line: 8, column: 63, scope: !538)
!546 = !DILocation(line: 10, column: 2, scope: !538)
!547 = distinct !DISubprogram(name: "rdmsrl_safe", scope: !548, file: !548, line: 281, type: !549, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !552)
!548 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!549 = !DISubroutineType(types: !550)
!550 = !{!61, !7, !551}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!552 = !{!553, !554, !555}
!553 = !DILocalVariable(name: "msr", arg: 1, scope: !547, file: !548, line: 281, type: !7)
!554 = !DILocalVariable(name: "p", arg: 2, scope: !547, file: !548, line: 281, type: !551)
!555 = !DILocalVariable(name: "err", scope: !547, file: !548, line: 283, type: !61)
!556 = !DILocation(line: 281, column: 44, scope: !547)
!557 = !DILocation(line: 281, column: 69, scope: !547)
!558 = !DILocation(line: 283, column: 2, scope: !547)
!559 = !DILocation(line: 283, column: 6, scope: !547)
!560 = !DILocation(line: 285, column: 28, scope: !547)
!561 = !DILocation(line: 285, column: 7, scope: !547)
!562 = !DILocation(line: 285, column: 3, scope: !547)
!563 = !DILocation(line: 285, column: 5, scope: !547)
!564 = !DILocation(line: 286, column: 9, scope: !547)
!565 = !DILocation(line: 287, column: 1, scope: !547)
!566 = !DILocation(line: 286, column: 2, scope: !547)
!567 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !548, file: !548, line: 126, type: !568, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !571)
!568 = !DISubroutineType(types: !569)
!569 = !{!36, !7, !570}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!571 = !{!572, !573, !574, !575}
!572 = !DILocalVariable(name: "msr", arg: 1, scope: !567, file: !548, line: 126, type: !7)
!573 = !DILocalVariable(name: "err", arg: 2, scope: !567, file: !548, line: 127, type: !570)
!574 = !DILocalVariable(name: "low", scope: !567, file: !548, line: 129, type: !26)
!575 = !DILocalVariable(name: "high", scope: !567, file: !548, line: 129, type: !26)
!576 = !DILocation(line: 126, column: 68, scope: !567)
!577 = !DILocation(line: 127, column: 18, scope: !567)
!578 = !DILocation(line: 129, column: 2, scope: !567)
!579 = !DILocation(line: 134, column: 23, scope: !567)
!580 = !DILocation(line: 135, column: 15, scope: !567)
!581 = !DILocation(line: 131, column: 2, scope: !567)
!582 = !{i64 1909680, i64 1909721, i64 1909725, i64 2149411287, i64 2149411312, i64 2149411347, i64 2149411564, i64 2149411617, i64 2149411648, i64 2149411679, i64 2149411757, i64 2149411791, i64 2149411829, i64 2149411872, i64 2149411895, i64 2149411933, i64 2149411955, i64 2149411986, i64 2149412071, i64 2149412105, i64 2149412143, i64 2149412186, i64 2149412209, i64 2149412247, i64 2149412269, i64 2149412303, i64 2149412365, i64 2149412388, i64 2149411413, i64 2149412462, i64 2149411524}
!583 = !DILocation(line: 136, column: 6, scope: !584)
!584 = distinct !DILexicalBlock(scope: !567, file: !548, line: 136, column: 6)
!585 = !DILocation(line: 136, column: 6, scope: !567)
!586 = !DILocation(line: 137, column: 21, scope: !584)
!587 = !DILocation(line: 137, column: 26, scope: !584)
!588 = !DILocation(line: 137, column: 56, scope: !584)
!589 = !DILocation(line: 137, column: 55, scope: !584)
!590 = !DILocation(line: 137, column: 3, scope: !584)
!591 = !DILocation(line: 138, column: 9, scope: !567)
!592 = !DILocation(line: 139, column: 1, scope: !567)
!593 = !DILocation(line: 138, column: 2, scope: !567)
!594 = distinct !DISubprogram(name: "static_key_false", scope: !595, file: !595, line: 205, type: !596, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!595 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!596 = !DISubroutineType(types: !597)
!597 = !{!383, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !595, line: 85, size: 128, elements: !600)
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !599, file: !595, line: 86, baseType: !134, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !595, line: 101, baseType: !603, size: 64, offset: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !595, line: 101, size: 64, elements: !604)
!604 = !{!605, !606, !613}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !595, line: 102, baseType: !26, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !603, file: !595, line: 103, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !595, line: 117, size: 128, elements: !609)
!609 = !{!610, !611, !612}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !608, file: !595, line: 118, baseType: !286, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !608, file: !595, line: 119, baseType: !286, size: 32, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !608, file: !595, line: 120, baseType: !90, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !603, file: !595, line: 104, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !595, line: 104, flags: DIFlagFwdDecl)
!616 = !{!617}
!617 = !DILocalVariable(name: "key", arg: 1, scope: !594, file: !595, line: 205, type: !598)
!618 = !DILocation(line: 205, column: 65, scope: !594)
!619 = !DILocation(line: 207, column: 28, scope: !594)
!620 = !DILocation(line: 207, column: 9, scope: !594)
!621 = !DILocation(line: 207, column: 2, scope: !594)
!622 = !DISubprogram(name: "do_trace_read_msr", scope: !548, file: !548, line: 65, type: !623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !7, !32, !61}
!625 = distinct !DISubprogram(name: "arch_static_branch", scope: !626, file: !626, line: 25, type: !627, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !629)
!626 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!627 = !DISubroutineType(types: !628)
!628 = !{!383, !598, !383}
!629 = !{!630, !631, !632}
!630 = !DILocalVariable(name: "key", arg: 1, scope: !625, file: !626, line: 25, type: !598)
!631 = !DILocalVariable(name: "branch", arg: 2, scope: !625, file: !626, line: 25, type: !383)
!632 = !DILabel(scope: !625, name: "l_yes", file: !626, line: 33)
!633 = !DILocation(line: 25, column: 67, scope: !625)
!634 = !DILocation(line: 25, column: 77, scope: !625)
!635 = !DILocation(line: 30, column: 13, scope: !625)
!636 = !DILocation(line: 30, column: 28, scope: !625)
!637 = !DILocation(line: 30, column: 26, scope: !625)
!638 = !DILocation(line: 27, column: 2, scope: !625)
!639 = !{i64 964800, i64 964844, i64 2148449527, i64 2148449548, i64 2148449574, i64 2148449607, i64 2148449641, i64 2148449665}
!640 = !DILocation(line: 32, column: 2, scope: !625)
!641 = !DILocation(line: 33, column: 1, scope: !625)
!642 = !DILocation(line: 34, column: 2, scope: !625)
!643 = !DILocation(line: 35, column: 1, scope: !625)
