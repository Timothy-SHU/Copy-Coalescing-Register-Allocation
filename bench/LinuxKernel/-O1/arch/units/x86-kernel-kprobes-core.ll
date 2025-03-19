; ModuleID = 'arch/x86/kernel/kprobes/core.c'
source_filename = "arch/x86/kernel/kprobes/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kretprobe_blackpoint = type { ptr, ptr }
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
%struct.__arch_relative_insn = type <{ i8, i32 }>
%struct.insn = type { %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %union.anon.3, %union.anon.4, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.insn_field = type { %union.anon.2, i8, i8 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { %struct.insn_field }
%union.anon.4 = type { %struct.insn_field }
%struct.kprobe = type { %struct.hlist_node, %struct.list_head, i64, ptr, ptr, i32, ptr, ptr, i8, %struct.arch_specific_insn, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.arch_specific_insn = type { ptr, i8, i8, %union.anon, i32, ptr, i32 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i8, i8 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.5, i64, i64, %union.anon.6 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%struct.anon = type { i8 }
%struct.anon.1 = type { i8 }

@current_kprobe = hidden global ptr null, section ".data..percpu", align 8, !dbg !0
@.str = private unnamed_addr constant [12 x i8] c"__switch_to\00", align 1, !dbg !208
@kretprobe_blacklist = hidden global [2 x %struct.kretprobe_blackpoint] [%struct.kretprobe_blackpoint { ptr @.str, ptr null }, %struct.kretprobe_blackpoint zeroinitializer], align 16, !dbg !213
@kretprobe_blacklist_size = hidden constant i32 2, align 4, !dbg !222
@_kbl_addr_synthesize_reljump = internal global i64 ptrtoint (ptr @synthesize_reljump to i64), section "_kprobe_blacklist", align 8, !dbg !225
@_kbl_addr_synthesize_relcall = internal global i64 ptrtoint (ptr @synthesize_relcall to i64), section "_kprobe_blacklist", align 8, !dbg !227
@twobyte_is_boostable = internal global [8 x i32] [i32 -2147482804, i32 131087, i32 65535, i32 -1057959937, i32 -65536, i32 -117458117, i32 -1154547965, i32 1999551270], align 16, !dbg !269
@.str.1 = private unnamed_addr constant [64 x i8] c"\013Kprobes error: new displacement does not fit into s32 (%llx)\0A\00", align 1, !dbg !229
@_kbl_addr_kprobe_emulate_ifmodifiers = internal global i64 ptrtoint (ptr @kprobe_emulate_ifmodifiers to i64), section "_kprobe_blacklist", align 8, !dbg !234
@_kbl_addr_kprobe_emulate_ret = internal global i64 ptrtoint (ptr @kprobe_emulate_ret to i64), section "_kprobe_blacklist", align 8, !dbg !236
@_kbl_addr_kprobe_emulate_call = internal global i64 ptrtoint (ptr @kprobe_emulate_call to i64), section "_kprobe_blacklist", align 8, !dbg !238
@_kbl_addr_kprobe_emulate_jmp = internal global i64 ptrtoint (ptr @kprobe_emulate_jmp to i64), section "_kprobe_blacklist", align 8, !dbg !240
@_kbl_addr_kprobe_emulate_jcc = internal global i64 ptrtoint (ptr @kprobe_emulate_jcc to i64), section "_kprobe_blacklist", align 8, !dbg !242
@_kbl_addr_kprobe_emulate_loop = internal global i64 ptrtoint (ptr @kprobe_emulate_loop to i64), section "_kprobe_blacklist", align 8, !dbg !244
@_kbl_addr_kprobe_emulate_call_indirect = internal global i64 ptrtoint (ptr @kprobe_emulate_call_indirect to i64), section "_kprobe_blacklist", align 8, !dbg !246
@_kbl_addr_kprobe_emulate_jmp_indirect = internal global i64 ptrtoint (ptr @kprobe_emulate_jmp_indirect to i64), section "_kprobe_blacklist", align 8, !dbg !248
@_kbl_addr_kprobe_post_process = internal global i64 ptrtoint (ptr @kprobe_post_process to i64), section "_kprobe_blacklist", align 8, !dbg !250
@_kbl_addr_setup_singlestep = internal global i64 ptrtoint (ptr @setup_singlestep to i64), section "_kprobe_blacklist", align 8, !dbg !252
@_kbl_addr_resume_singlestep = internal global i64 ptrtoint (ptr @resume_singlestep to i64), section "_kprobe_blacklist", align 8, !dbg !254
@_kbl_addr_reenter_kprobe = internal global i64 ptrtoint (ptr @reenter_kprobe to i64), section "_kprobe_blacklist", align 8, !dbg !256
@_kbl_addr_kprobe_int3_handler = internal global i64 ptrtoint (ptr @kprobe_int3_handler to i64), section "_kprobe_blacklist", align 8, !dbg !258
@.str.2 = private unnamed_addr constant [31 x i8] c"arch/x86/kernel/kprobes/core.c\00", align 1, !dbg !260
@_kbl_addr_kprobe_fault_handler = internal global i64 ptrtoint (ptr @kprobe_fault_handler to i64), section "_kprobe_blacklist", align 8, !dbg !265
@__entry_text_start = external dso_local global [0 x i8], align 1
@__entry_text_end = external dso_local global [0 x i8], align 1
@kprobe_ctlblk = hidden global %struct.kprobe_ctlblk zeroinitializer, section ".data..percpu", align 8, !dbg !267
@x86_nops = external dso_local constant [0 x ptr], align 8
@int3_emulate_jcc.jcc_mask = internal constant [6 x i64] [i64 2048, i64 1, i64 64, i64 65, i64 128, i64 4], align 16, !dbg !275
@addrmode_regoffs = internal constant [16 x i32] [i32 80, i32 88, i32 96, i32 40, i32 152, i32 32, i32 104, i32 112, i32 72, i32 64, i32 56, i32 48, i32 24, i32 16, i32 8, i32 0], align 16, !dbg !293
@kprobe_insn_slots = external dso_local global %struct.kprobe_insn_cache, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"\013Unrecoverable kprobe detected.\0A\00", align 1, !dbg !298
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !303
@.str.5 = private unnamed_addr constant [6 x i8] c"write\00", align 1, !dbg !308
@llvm.compiler.used = appending global [16 x ptr] [ptr @_kbl_addr_synthesize_reljump, ptr @_kbl_addr_synthesize_relcall, ptr @_kbl_addr_kprobe_emulate_ifmodifiers, ptr @_kbl_addr_kprobe_emulate_ret, ptr @_kbl_addr_kprobe_emulate_call, ptr @_kbl_addr_kprobe_emulate_jmp, ptr @_kbl_addr_kprobe_emulate_jcc, ptr @_kbl_addr_kprobe_emulate_loop, ptr @_kbl_addr_kprobe_emulate_call_indirect, ptr @_kbl_addr_kprobe_emulate_jmp_indirect, ptr @_kbl_addr_kprobe_post_process, ptr @_kbl_addr_setup_singlestep, ptr @_kbl_addr_resume_singlestep, ptr @_kbl_addr_reenter_kprobe, ptr @_kbl_addr_kprobe_int3_handler, ptr @_kbl_addr_kprobe_fault_handler], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @synthesize_reljump(ptr noundef %dest, ptr noundef %from, ptr noundef %to) #0 align 16 !dbg !320 {
entry:
  %dest.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !324, metadata !DIExpression()), !dbg !327
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !325, metadata !DIExpression()), !dbg !328
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !326, metadata !DIExpression()), !dbg !329
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !330
  %1 = load ptr, ptr %from.addr, align 8, !dbg !331
  %2 = load ptr, ptr %to.addr, align 8, !dbg !332
  call void @__synthesize_relative_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext -23) #14, !dbg !333
  ret void, !dbg !334
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__synthesize_relative_insn(ptr noundef %dest, ptr noundef %from, ptr noundef %to, i8 noundef zeroext %op) #2 align 16 !dbg !44 {
entry:
  %dest.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %op.addr = alloca i8, align 1
  %insn = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !48, metadata !DIExpression()), !dbg !335
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !49, metadata !DIExpression()), !dbg !336
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !50, metadata !DIExpression()), !dbg !337
  store i8 %op, ptr %op.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !51, metadata !DIExpression()), !dbg !338
  call void @llvm.lifetime.start.p0(i64 8, ptr %insn) #15, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %insn, metadata !52, metadata !DIExpression()), !dbg !340
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !341
  store ptr %0, ptr %insn, align 8, !dbg !342
  %1 = load ptr, ptr %to.addr, align 8, !dbg !343
  %2 = ptrtoint ptr %1 to i64, !dbg !344
  %3 = load ptr, ptr %from.addr, align 8, !dbg !345
  %4 = ptrtoint ptr %3 to i64, !dbg !346
  %add = add i64 %4, 5, !dbg !347
  %sub = sub i64 %2, %add, !dbg !348
  %conv = trunc i64 %sub to i32, !dbg !349
  %5 = load ptr, ptr %insn, align 8, !dbg !350
  %raddr = getelementptr inbounds %struct.__arch_relative_insn, ptr %5, i32 0, i32 1, !dbg !351
  store i32 %conv, ptr %raddr, align 1, !dbg !352
  %6 = load i8, ptr %op.addr, align 1, !dbg !353
  %7 = load ptr, ptr %insn, align 8, !dbg !354
  %op1 = getelementptr inbounds %struct.__arch_relative_insn, ptr %7, i32 0, i32 0, !dbg !355
  store i8 %6, ptr %op1, align 1, !dbg !356
  call void @llvm.lifetime.end.p0(i64 8, ptr %insn) #15, !dbg !357
  ret void, !dbg !357
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @synthesize_relcall(ptr noundef %dest, ptr noundef %from, ptr noundef %to) #0 align 16 !dbg !358 {
entry:
  %dest.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !360, metadata !DIExpression()), !dbg !363
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !361, metadata !DIExpression()), !dbg !364
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !362, metadata !DIExpression()), !dbg !365
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !366
  %1 = load ptr, ptr %from.addr, align 8, !dbg !367
  %2 = load ptr, ptr %to.addr, align 8, !dbg !368
  call void @__synthesize_relative_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext -24) #14, !dbg !369
  ret void, !dbg !370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @can_boost(ptr noundef %insn, ptr noundef %addr) #0 align 16 !dbg !371 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %opcode = alloca i8, align 1
  %prefix = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %attr = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !423, metadata !DIExpression()), !dbg !432
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !424, metadata !DIExpression()), !dbg !433
  call void @llvm.lifetime.start.p0(i64 1, ptr %opcode) #15, !dbg !434
  call void @llvm.dbg.declare(metadata ptr %opcode, metadata !425, metadata !DIExpression()), !dbg !435
  call void @llvm.lifetime.start.p0(i64 1, ptr %prefix) #15, !dbg !436
  call void @llvm.dbg.declare(metadata ptr %prefix, metadata !426, metadata !DIExpression()), !dbg !437
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !438
  call void @llvm.dbg.declare(metadata ptr %i, metadata !427, metadata !DIExpression()), !dbg !439
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !440
  %1 = ptrtoint ptr %0 to i64, !dbg !442
  %call = call ptr @search_exception_tables(i64 noundef %1) #14, !dbg !443
  %tobool = icmp ne ptr %call, null, !dbg !443
  br i1 %tobool, label %if.then, label %if.end, !dbg !444

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !445

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !446
  %opcode1 = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 3, !dbg !448
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %opcode1, i32 0, i32 2, !dbg !449
  %3 = load i8, ptr %nbytes, align 1, !dbg !449
  %conv = zext i8 %3 to i32, !dbg !446
  %cmp = icmp eq i32 %conv, 2, !dbg !450
  br i1 %cmp, label %if.then3, label %if.end19, !dbg !451

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !452
  %opcode4 = getelementptr inbounds %struct.insn, ptr %4, i32 0, i32 3, !dbg !452
  %5 = getelementptr inbounds %struct.insn_field, ptr %opcode4, i32 0, i32 0, !dbg !452
  %arrayidx = getelementptr [4 x i8], ptr %5, i64 0, i64 1, !dbg !452
  %6 = load i8, ptr %arrayidx, align 1, !dbg !452
  %7 = call i1 @llvm.is.constant.i8(i8 %6), !dbg !452
  br i1 %7, label %land.lhs.true, label %cond.false, !dbg !452

land.lhs.true:                                    ; preds = %if.then3
  %conv5 = zext i1 icmp ne (i64 ptrtoint (ptr @twobyte_is_boostable to i64), i64 0) to i32, !dbg !452
  %8 = call i1 @llvm.is.constant.i32(i32 %conv5), !dbg !452
  br i1 %8, label %land.lhs.true6, label %cond.false, !dbg !452

land.lhs.true6:                                   ; preds = %land.lhs.true
  br i1 icmp ne (i64 ptrtoint (ptr @twobyte_is_boostable to i64), i64 0), label %land.lhs.true8, label %cond.false, !dbg !452

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %9 = load i64, ptr @twobyte_is_boostable, align 16, !dbg !452
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !452
  br i1 %10, label %cond.true, label %cond.false, !dbg !452

cond.true:                                        ; preds = %land.lhs.true8
  %11 = load ptr, ptr %insn.addr, align 8, !dbg !452
  %opcode9 = getelementptr inbounds %struct.insn, ptr %11, i32 0, i32 3, !dbg !452
  %12 = getelementptr inbounds %struct.insn_field, ptr %opcode9, i32 0, i32 0, !dbg !452
  %arrayidx10 = getelementptr [4 x i8], ptr %12, i64 0, i64 1, !dbg !452
  %13 = load i8, ptr %arrayidx10, align 1, !dbg !452
  %conv11 = zext i8 %13 to i64, !dbg !452
  %call12 = call zeroext i1 @const_test_bit(i64 noundef %conv11, ptr noundef @twobyte_is_boostable) #14, !dbg !452
  %conv13 = zext i1 %call12 to i32, !dbg !452
  br label %cond.end, !dbg !452

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true6, %land.lhs.true, %if.then3
  %14 = load ptr, ptr %insn.addr, align 8, !dbg !452
  %opcode14 = getelementptr inbounds %struct.insn, ptr %14, i32 0, i32 3, !dbg !452
  %15 = getelementptr inbounds %struct.insn_field, ptr %opcode14, i32 0, i32 0, !dbg !452
  %arrayidx15 = getelementptr [4 x i8], ptr %15, i64 0, i64 1, !dbg !452
  %16 = load i8, ptr %arrayidx15, align 1, !dbg !452
  %conv16 = zext i8 %16 to i64, !dbg !452
  %call17 = call zeroext i1 @_test_bit(i64 noundef %conv16, ptr noundef @twobyte_is_boostable) #14, !dbg !452
  %conv18 = zext i1 %call17 to i32, !dbg !452
  br label %cond.end, !dbg !452

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv13, %cond.true ], [ %conv18, %cond.false ], !dbg !452
  store i32 %cond, ptr %retval, align 4, !dbg !453
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !453

if.end19:                                         ; preds = %if.end
  %17 = load ptr, ptr %insn.addr, align 8, !dbg !454
  %opcode20 = getelementptr inbounds %struct.insn, ptr %17, i32 0, i32 3, !dbg !456
  %nbytes21 = getelementptr inbounds %struct.insn_field, ptr %opcode20, i32 0, i32 2, !dbg !457
  %18 = load i8, ptr %nbytes21, align 1, !dbg !457
  %conv22 = zext i8 %18 to i32, !dbg !454
  %cmp23 = icmp ne i32 %conv22, 1, !dbg !458
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !459

if.then25:                                        ; preds = %if.end19
  store i32 0, ptr %retval, align 4, !dbg !460
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !460

if.end26:                                         ; preds = %if.end19
  store i32 0, ptr %i, align 4, !dbg !461
  br label %for.cond, !dbg !461

for.cond:                                         ; preds = %for.inc, %if.end26
  %19 = load i32, ptr %i, align 4, !dbg !462
  %conv27 = sext i32 %19 to i64, !dbg !462
  %cmp28 = icmp ult i64 %conv27, 4, !dbg !462
  br i1 %cmp28, label %land.rhs, label %land.end, !dbg !462

land.rhs:                                         ; preds = %for.cond
  %20 = load ptr, ptr %insn.addr, align 8, !dbg !462
  %prefixes = getelementptr inbounds %struct.insn, ptr %20, i32 0, i32 0, !dbg !462
  %21 = getelementptr inbounds %struct.insn_field, ptr %prefixes, i32 0, i32 0, !dbg !462
  %22 = load i32, ptr %i, align 4, !dbg !462
  %idxprom = sext i32 %22 to i64, !dbg !462
  %arrayidx30 = getelementptr [4 x i8], ptr %21, i64 0, i64 %idxprom, !dbg !462
  %23 = load i8, ptr %arrayidx30, align 1, !dbg !462
  store i8 %23, ptr %prefix, align 1, !dbg !462
  %conv31 = zext i8 %23 to i32, !dbg !462
  %cmp32 = icmp ne i32 %conv31, 0, !dbg !462
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %24 = phi i1 [ false, %for.cond ], [ %cmp32, %land.rhs ], !dbg !463
  br i1 %24, label %for.body, label %for.end, !dbg !461

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr) #15, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !428, metadata !DIExpression()), !dbg !465
  %25 = load i8, ptr %prefix, align 1, !dbg !466
  %call34 = call i32 @inat_get_opcode_attribute(i8 noundef zeroext %25) #14, !dbg !467
  store i32 %call34, ptr %attr, align 4, !dbg !468
  %26 = load i8, ptr %prefix, align 1, !dbg !469
  %conv35 = zext i8 %26 to i32, !dbg !469
  %cmp36 = icmp eq i32 %conv35, 46, !dbg !471
  br i1 %cmp36, label %if.then40, label %lor.lhs.false, !dbg !472

lor.lhs.false:                                    ; preds = %for.body
  %27 = load i32, ptr %attr, align 4, !dbg !473
  %call38 = call i32 @inat_is_address_size_prefix(i32 noundef %27) #14, !dbg !474
  %tobool39 = icmp ne i32 %call38, 0, !dbg !474
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !475

if.then40:                                        ; preds = %lor.lhs.false, %for.body
  store i32 0, ptr %retval, align 4, !dbg !476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !476

if.end41:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !477
  br label %cleanup, !dbg !477

cleanup:                                          ; preds = %if.end41, %if.then40
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr) #15, !dbg !477
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup63 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !478

for.inc:                                          ; preds = %cleanup.cont
  %28 = load i32, ptr %i, align 4, !dbg !462
  %inc = add i32 %28, 1, !dbg !462
  store i32 %inc, ptr %i, align 4, !dbg !462
  br label %for.cond, !dbg !462, !llvm.loop !479

for.end:                                          ; preds = %land.end
  %29 = load ptr, ptr %insn.addr, align 8, !dbg !483
  %opcode42 = getelementptr inbounds %struct.insn, ptr %29, i32 0, i32 3, !dbg !484
  %30 = getelementptr inbounds %struct.insn_field, ptr %opcode42, i32 0, i32 0, !dbg !485
  %arrayidx43 = getelementptr [4 x i8], ptr %30, i64 0, i64 0, !dbg !483
  %31 = load i8, ptr %arrayidx43, align 8, !dbg !483
  store i8 %31, ptr %opcode, align 1, !dbg !486
  %32 = load i8, ptr %opcode, align 1, !dbg !487
  %conv44 = zext i8 %32 to i32, !dbg !487
  switch i32 %conv44, label %sw.default [
    i32 98, label %sw.bb
    i32 154, label %sw.bb46
    i32 214, label %sw.bb50
    i32 235, label %sw.bb54
    i32 254, label %sw.bb57
    i32 246, label %sw.bb56
    i32 247, label %sw.bb56
    i32 240, label %sw.bb55
    i32 241, label %sw.bb55
    i32 242, label %sw.bb55
    i32 243, label %sw.bb55
    i32 244, label %sw.bb55
    i32 232, label %sw.bb53
    i32 233, label %sw.bb53
    i32 224, label %sw.bb52
    i32 225, label %sw.bb52
    i32 226, label %sw.bb52
    i32 227, label %sw.bb52
    i32 216, label %sw.bb51
    i32 217, label %sw.bb51
    i32 218, label %sw.bb51
    i32 219, label %sw.bb51
    i32 220, label %sw.bb51
    i32 221, label %sw.bb51
    i32 222, label %sw.bb51
    i32 223, label %sw.bb51
    i32 208, label %sw.bb49
    i32 209, label %sw.bb49
    i32 210, label %sw.bb49
    i32 211, label %sw.bb49
    i32 204, label %sw.bb48
    i32 205, label %sw.bb48
    i32 206, label %sw.bb48
    i32 192, label %sw.bb47
    i32 193, label %sw.bb47
    i32 112, label %sw.bb45
    i32 113, label %sw.bb45
    i32 114, label %sw.bb45
    i32 115, label %sw.bb45
    i32 116, label %sw.bb45
    i32 117, label %sw.bb45
    i32 118, label %sw.bb45
    i32 119, label %sw.bb45
    i32 120, label %sw.bb45
    i32 121, label %sw.bb45
    i32 122, label %sw.bb45
    i32 123, label %sw.bb45
    i32 124, label %sw.bb45
    i32 125, label %sw.bb45
    i32 126, label %sw.bb45
    i32 127, label %sw.bb45
    i32 255, label %sw.bb58
  ], !dbg !488

sw.bb:                                            ; preds = %for.end
  br label %sw.bb45, !dbg !489

sw.bb45:                                          ; preds = %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %sw.bb
  br label %sw.bb46, !dbg !489

sw.bb46:                                          ; preds = %for.end, %sw.bb45
  br label %sw.bb47, !dbg !489

sw.bb47:                                          ; preds = %for.end, %for.end, %sw.bb46
  br label %sw.bb48, !dbg !489

sw.bb48:                                          ; preds = %for.end, %for.end, %for.end, %sw.bb47
  br label %sw.bb49, !dbg !489

sw.bb49:                                          ; preds = %for.end, %for.end, %for.end, %for.end, %sw.bb48
  br label %sw.bb50, !dbg !489

sw.bb50:                                          ; preds = %for.end, %sw.bb49
  br label %sw.bb51, !dbg !489

sw.bb51:                                          ; preds = %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %sw.bb50
  br label %sw.bb52, !dbg !489

sw.bb52:                                          ; preds = %for.end, %for.end, %for.end, %for.end, %sw.bb51
  br label %sw.bb53, !dbg !489

sw.bb53:                                          ; preds = %for.end, %for.end, %sw.bb52
  br label %sw.bb54, !dbg !489

sw.bb54:                                          ; preds = %for.end, %sw.bb53
  br label %sw.bb55, !dbg !489

sw.bb55:                                          ; preds = %for.end, %for.end, %for.end, %for.end, %for.end, %sw.bb54
  br label %sw.bb56, !dbg !489

sw.bb56:                                          ; preds = %for.end, %for.end, %sw.bb55
  br label %sw.bb57, !dbg !489

sw.bb57:                                          ; preds = %for.end, %sw.bb56
  store i32 0, ptr %retval, align 4, !dbg !490
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !490

sw.bb58:                                          ; preds = %for.end
  %33 = load ptr, ptr %insn.addr, align 8, !dbg !492
  %modrm = getelementptr inbounds %struct.insn, ptr %33, i32 0, i32 4, !dbg !492
  %34 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 0, !dbg !492
  %arrayidx59 = getelementptr [4 x i8], ptr %34, i64 0, i64 0, !dbg !492
  %35 = load i8, ptr %arrayidx59, align 8, !dbg !492
  %conv60 = zext i8 %35 to i32, !dbg !492
  %and = and i32 %conv60, 56, !dbg !492
  %shr = ashr i32 %and, 3, !dbg !492
  %cmp61 = icmp eq i32 %shr, 4, !dbg !493
  %conv62 = zext i1 %cmp61 to i32, !dbg !493
  store i32 %conv62, ptr %retval, align 4, !dbg !494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !494

sw.default:                                       ; preds = %for.end
  store i32 1, ptr %retval, align 4, !dbg !495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !495

cleanup63:                                        ; preds = %sw.default, %sw.bb58, %sw.bb57, %cleanup, %if.then25, %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !496
  call void @llvm.lifetime.end.p0(i64 1, ptr %prefix) #15, !dbg !496
  call void @llvm.lifetime.end.p0(i64 1, ptr %opcode) #15, !dbg !496
  %36 = load i32, ptr %retval, align 4, !dbg !496
  ret i32 %36, !dbg !496
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !497 dso_local ptr @search_exception_tables(i64 noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i8(i8) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !509 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !517, metadata !DIExpression()), !dbg !522
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !518, metadata !DIExpression()), !dbg !523
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %p, metadata !519, metadata !DIExpression()), !dbg !525
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !526
  %1 = load i64, ptr %nr.addr, align 8, !dbg !527
  %div = udiv i64 %1, 64, !dbg !527
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !528
  store ptr %add.ptr, ptr %p, align 8, !dbg !525
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !529
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !520, metadata !DIExpression()), !dbg !530
  %2 = load i64, ptr %nr.addr, align 8, !dbg !531
  %rem = urem i64 %2, 64, !dbg !531
  %shl = shl i64 1, %rem, !dbg !531
  store i64 %shl, ptr %mask, align 8, !dbg !530
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %val, metadata !521, metadata !DIExpression()), !dbg !533
  %3 = load ptr, ptr %p, align 8, !dbg !534
  %4 = load i64, ptr %3, align 8, !dbg !535
  store i64 %4, ptr %val, align 8, !dbg !533
  %5 = load i64, ptr %val, align 8, !dbg !536
  %6 = load i64, ptr %mask, align 8, !dbg !537
  %and = and i64 %5, %6, !dbg !538
  %tobool = icmp ne i64 %and, 0, !dbg !539
  %lnot = xor i1 %tobool, true, !dbg !539
  %lnot1 = xor i1 %lnot, true, !dbg !540
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !541
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !541
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !541
  ret i1 %lnot1, !dbg !542
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !543 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !546, metadata !DIExpression()), !dbg !548
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !547, metadata !DIExpression()), !dbg !549
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !550
  %1 = load i64, ptr %nr.addr, align 8, !dbg !551
  %div = udiv i64 %1, 64, !dbg !551
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !552
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !553
  %2 = load i64, ptr %nr.addr, align 8, !dbg !554
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !555
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !556
  ret i1 %call, !dbg !557
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !558 dso_local i32 @inat_get_opcode_attribute(i8 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @inat_is_address_size_prefix(i32 noundef %attr) #6 align 16 !dbg !562 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !566, metadata !DIExpression()), !dbg !567
  %0 = load i32, ptr %attr.addr, align 4, !dbg !568
  %and = and i32 %0, 15, !dbg !569
  %cmp = icmp eq i32 %and, 11, !dbg !570
  %conv = zext i1 %cmp to i32, !dbg !570
  ret i32 %conv, !dbg !571
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @recover_probed_instruction(ptr noundef %buf, i64 noundef %addr) #0 align 16 !dbg !572 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %__addr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !576, metadata !DIExpression()), !dbg !579
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !577, metadata !DIExpression()), !dbg !580
  call void @llvm.lifetime.start.p0(i64 8, ptr %__addr) #15, !dbg !581
  call void @llvm.dbg.declare(metadata ptr %__addr, metadata !578, metadata !DIExpression()), !dbg !582
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !583
  %1 = load i64, ptr %addr.addr, align 8, !dbg !584
  %call = call i64 @__recover_optprobed_insn(ptr noundef %0, i64 noundef %1) #14, !dbg !585
  store i64 %call, ptr %__addr, align 8, !dbg !586
  %2 = load i64, ptr %__addr, align 8, !dbg !587
  %3 = load i64, ptr %addr.addr, align 8, !dbg !589
  %cmp = icmp ne i64 %2, %3, !dbg !590
  br i1 %cmp, label %if.then, label %if.end, !dbg !591

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %__addr, align 8, !dbg !592
  store i64 %4, ptr %retval, align 8, !dbg !593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !593

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !594
  %6 = load i64, ptr %addr.addr, align 8, !dbg !595
  %call1 = call i64 @__recover_probed_insn(ptr noundef %5, i64 noundef %6) #14, !dbg !596
  store i64 %call1, ptr %retval, align 8, !dbg !597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !597

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %__addr) #15, !dbg !598
  %7 = load i64, ptr %retval, align 8, !dbg !598
  ret i64 %7, !dbg !598
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !599 dso_local i64 @__recover_optprobed_insn(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__recover_probed_insn(ptr noundef %buf, i64 noundef %addr) #0 align 16 !dbg !601 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %kp = alloca ptr, align 8
  %faddr = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !603, metadata !DIExpression()), !dbg !607
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !604, metadata !DIExpression()), !dbg !608
  call void @llvm.lifetime.start.p0(i64 8, ptr %kp) #15, !dbg !609
  call void @llvm.dbg.declare(metadata ptr %kp, metadata !605, metadata !DIExpression()), !dbg !610
  call void @llvm.lifetime.start.p0(i64 1, ptr %faddr) #15, !dbg !611
  call void @llvm.dbg.declare(metadata ptr %faddr, metadata !606, metadata !DIExpression()), !dbg !612
  %0 = load i64, ptr %addr.addr, align 8, !dbg !613
  %1 = inttoptr i64 %0 to ptr, !dbg !614
  %call = call ptr @get_kprobe(ptr noundef %1) #14, !dbg !615
  store ptr %call, ptr %kp, align 8, !dbg !616
  %2 = load i64, ptr %addr.addr, align 8, !dbg !617
  %call1 = call i64 @ftrace_location(i64 noundef %2) #14, !dbg !618
  %3 = load i64, ptr %addr.addr, align 8, !dbg !619
  %cmp = icmp eq i64 %call1, %3, !dbg !620
  %frombool = zext i1 %cmp to i8, !dbg !621
  store i8 %frombool, ptr %faddr, align 1, !dbg !621
  %4 = load ptr, ptr %kp, align 8, !dbg !622
  %tobool = icmp ne ptr %4, null, !dbg !622
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !624

land.lhs.true:                                    ; preds = %entry
  %5 = load i8, ptr %faddr, align 1, !dbg !625, !range !626, !noundef !627
  %tobool2 = trunc i8 %5 to i1, !dbg !625
  br i1 %tobool2, label %if.end, label %if.then, !dbg !628

if.then:                                          ; preds = %land.lhs.true
  %6 = load i64, ptr %addr.addr, align 8, !dbg !629
  store i64 %6, ptr %retval, align 8, !dbg !630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !630

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !631
  %8 = load i64, ptr %addr.addr, align 8, !dbg !633
  %9 = inttoptr i64 %8 to ptr, !dbg !634
  %call3 = call i64 @copy_from_kernel_nofault(ptr noundef %7, ptr noundef %9, i64 noundef 15) #14, !dbg !635
  %tobool4 = icmp ne i64 %call3, 0, !dbg !635
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !636

if.then5:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !637
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !637

if.end6:                                          ; preds = %if.end
  %10 = load i8, ptr %faddr, align 1, !dbg !638, !range !626, !noundef !627
  %tobool7 = trunc i8 %10 to i1, !dbg !638
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !640

if.then8:                                         ; preds = %if.end6
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !641
  %12 = load ptr, ptr getelementptr ([0 x ptr], ptr @x86_nops, i64 0, i64 5), align 8, !dbg !642
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %12, i64 5, i1 false), !dbg !643
  br label %if.end9, !dbg !643

if.else:                                          ; preds = %if.end6
  %13 = load ptr, ptr %kp, align 8, !dbg !644
  %opcode = getelementptr inbounds %struct.kprobe, ptr %13, i32 0, i32 8, !dbg !645
  %14 = load i8, ptr %opcode, align 8, !dbg !645
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !646
  %arrayidx = getelementptr i8, ptr %15, i64 0, !dbg !646
  store i8 %14, ptr %arrayidx, align 1, !dbg !647
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !648
  %17 = ptrtoint ptr %16 to i64, !dbg !649
  store i64 %17, ptr %retval, align 8, !dbg !650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !650

cleanup:                                          ; preds = %if.end9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %faddr) #15, !dbg !651
  call void @llvm.lifetime.end.p0(i64 8, ptr %kp) #15, !dbg !651
  %18 = load i64, ptr %retval, align 8, !dbg !651
  ret i64 %18, !dbg !651
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @arch_adjust_kprobe_addr(i64 noundef %addr, i64 noundef %offset, ptr noundef %on_func_entry) #0 align 16 !dbg !652 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %on_func_entry.addr = alloca ptr, align 8
  %insn = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !657, metadata !DIExpression()), !dbg !661
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !658, metadata !DIExpression()), !dbg !662
  store ptr %on_func_entry, ptr %on_func_entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %on_func_entry.addr, metadata !659, metadata !DIExpression()), !dbg !663
  call void @llvm.lifetime.start.p0(i64 4, ptr %insn) #15, !dbg !664
  call void @llvm.dbg.declare(metadata ptr %insn, metadata !660, metadata !DIExpression()), !dbg !665
  %0 = load i64, ptr %addr.addr, align 8, !dbg !666
  %1 = inttoptr i64 %0 to ptr, !dbg !668
  %call = call i64 @copy_from_kernel_nofault(ptr noundef %insn, ptr noundef %1, i64 noundef 4) #14, !dbg !669
  %tobool = icmp ne i64 %call, 0, !dbg !669
  br i1 %tobool, label %if.then, label %if.end, !dbg !670

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !671

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %insn, align 4, !dbg !672
  %call1 = call zeroext i1 @is_endbr(i32 noundef %2) #14, !dbg !674
  br i1 %call1, label %if.then2, label %if.else, !dbg !675

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr %offset.addr, align 8, !dbg !676
  %tobool3 = icmp ne i64 %3, 0, !dbg !676
  br i1 %tobool3, label %lor.rhs, label %lor.end, !dbg !678

lor.rhs:                                          ; preds = %if.then2
  %4 = load i64, ptr %offset.addr, align 8, !dbg !679
  %cmp = icmp eq i64 %4, 4, !dbg !680
  br label %lor.end, !dbg !678

lor.end:                                          ; preds = %lor.rhs, %if.then2
  %5 = phi i1 [ true, %if.then2 ], [ %cmp, %lor.rhs ]
  %6 = load ptr, ptr %on_func_entry.addr, align 8, !dbg !681
  %frombool = zext i1 %5 to i8, !dbg !682
  store i8 %frombool, ptr %6, align 1, !dbg !682
  %7 = load ptr, ptr %on_func_entry.addr, align 8, !dbg !683
  %8 = load i8, ptr %7, align 1, !dbg !685, !range !626, !noundef !627
  %tobool4 = trunc i8 %8 to i1, !dbg !685
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !686

if.then5:                                         ; preds = %lor.end
  store i64 4, ptr %offset.addr, align 8, !dbg !687
  br label %if.end6, !dbg !688

if.end6:                                          ; preds = %if.then5, %lor.end
  br label %if.end9, !dbg !689

if.else:                                          ; preds = %if.end
  %9 = load i64, ptr %offset.addr, align 8, !dbg !690
  %tobool7 = icmp ne i64 %9, 0, !dbg !692
  %lnot = xor i1 %tobool7, true, !dbg !692
  %10 = load ptr, ptr %on_func_entry.addr, align 8, !dbg !693
  %frombool8 = zext i1 %lnot to i8, !dbg !694
  store i8 %frombool8, ptr %10, align 1, !dbg !694
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end6
  %11 = load i64, ptr %addr.addr, align 8, !dbg !695
  %12 = load i64, ptr %offset.addr, align 8, !dbg !696
  %add = add i64 %11, %12, !dbg !697
  %13 = inttoptr i64 %add to ptr, !dbg !698
  store ptr %13, ptr %retval, align 8, !dbg !699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !699

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %insn) #15, !dbg !700
  %14 = load ptr, ptr %retval, align 8, !dbg !700
  ret ptr %14, !dbg !700
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !701 dso_local i64 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_endbr(i32 noundef %val) #6 align 16 !dbg !711 {
entry:
  %retval = alloca i1, align 1
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !716, metadata !DIExpression()), !dbg !717
  %0 = load i32, ptr %val.addr, align 4, !dbg !718
  %call = call i32 @gen_endbr_poison() #16, !dbg !720
  %cmp = icmp eq i32 %0, %call, !dbg !721
  br i1 %cmp, label %if.then, label %if.end, !dbg !722

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !723
  br label %return, !dbg !723

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %val.addr, align 4, !dbg !724
  %and = and i32 %1, -16777217, !dbg !724
  store i32 %and, ptr %val.addr, align 4, !dbg !724
  %2 = load i32, ptr %val.addr, align 4, !dbg !725
  %call1 = call i32 @gen_endbr() #16, !dbg !726
  %cmp2 = icmp eq i32 %2, %call1, !dbg !727
  store i1 %cmp2, ptr %retval, align 1, !dbg !728
  br label %return, !dbg !728

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !729
  ret i1 %3, !dbg !729
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__copy_instruction(ptr noundef %dest, ptr noundef %src, ptr noundef %real, ptr noundef %insn) #0 align 16 !dbg !730 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %real.addr = alloca ptr, align 8
  %insn.addr = alloca ptr, align 8
  %buf = alloca [15 x i8], align 1
  %recovered_insn = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %newdisp = alloca i64, align 8
  %disp = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !734, metadata !DIExpression()), !dbg !748
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !735, metadata !DIExpression()), !dbg !749
  store ptr %real, ptr %real.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %real.addr, metadata !736, metadata !DIExpression()), !dbg !750
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !737, metadata !DIExpression()), !dbg !751
  call void @llvm.lifetime.start.p0(i64 15, ptr %buf) #15, !dbg !752
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !738, metadata !DIExpression()), !dbg !753
  call void @llvm.lifetime.start.p0(i64 8, ptr %recovered_insn) #15, !dbg !754
  call void @llvm.dbg.declare(metadata ptr %recovered_insn, metadata !742, metadata !DIExpression()), !dbg !755
  %arraydecay = getelementptr inbounds [15 x i8], ptr %buf, i64 0, i64 0, !dbg !756
  %0 = load ptr, ptr %src.addr, align 8, !dbg !757
  %1 = ptrtoint ptr %0 to i64, !dbg !758
  %call = call i64 @recover_probed_instruction(ptr noundef %arraydecay, i64 noundef %1) #14, !dbg !759
  store i64 %call, ptr %recovered_insn, align 8, !dbg !755
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !760
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !743, metadata !DIExpression()), !dbg !761
  %2 = load i64, ptr %recovered_insn, align 8, !dbg !762
  %tobool = icmp ne i64 %2, 0, !dbg !762
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !764

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !765
  %tobool1 = icmp ne ptr %3, null, !dbg !765
  br i1 %tobool1, label %if.end, label %if.then, !dbg !766

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !767

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %dest.addr, align 8, !dbg !768
  %5 = load i64, ptr %recovered_insn, align 8, !dbg !770
  %6 = inttoptr i64 %5 to ptr, !dbg !771
  %call2 = call i64 @copy_from_kernel_nofault(ptr noundef %4, ptr noundef %6, i64 noundef 15) #14, !dbg !772
  %tobool3 = icmp ne i64 %call2, 0, !dbg !772
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !773

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !774
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !774

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %insn.addr, align 8, !dbg !775
  %8 = load ptr, ptr %dest.addr, align 8, !dbg !775
  %call6 = call i32 @insn_decode(ptr noundef %7, ptr noundef %8, i32 noundef 15, i32 noundef 2) #14, !dbg !775
  store i32 %call6, ptr %ret, align 4, !dbg !776
  %9 = load i32, ptr %ret, align 4, !dbg !777
  %cmp = icmp slt i32 %9, 0, !dbg !779
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !780

if.then7:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !781

if.end8:                                          ; preds = %if.end5
  %10 = load ptr, ptr %insn.addr, align 8, !dbg !782
  %call9 = call i32 @insn_has_emulate_prefix(ptr noundef %10) #14, !dbg !784
  %tobool10 = icmp ne i32 %call9, 0, !dbg !784
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !785

if.then11:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4, !dbg !786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !786

if.end12:                                         ; preds = %if.end8
  %11 = load ptr, ptr %insn.addr, align 8, !dbg !787
  %opcode = getelementptr inbounds %struct.insn, ptr %11, i32 0, i32 3, !dbg !789
  %12 = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 0, !dbg !790
  %arrayidx = getelementptr [4 x i8], ptr %12, i64 0, i64 0, !dbg !787
  %13 = load i8, ptr %arrayidx, align 8, !dbg !787
  %conv = zext i8 %13 to i32, !dbg !787
  %cmp13 = icmp eq i32 %conv, 204, !dbg !791
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !792

if.then15:                                        ; preds = %if.end12
  store i32 0, ptr %retval, align 4, !dbg !793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !793

if.end16:                                         ; preds = %if.end12
  %14 = load ptr, ptr %insn.addr, align 8, !dbg !794
  %call17 = call i32 @insn_masking_exception(ptr noundef %14) #14, !dbg !796
  %tobool18 = icmp ne i32 %call17, 0, !dbg !796
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !797

if.then19:                                        ; preds = %if.end16
  store i32 0, ptr %retval, align 4, !dbg !798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !798

if.end20:                                         ; preds = %if.end16
  %15 = load ptr, ptr %insn.addr, align 8, !dbg !799
  %call21 = call i32 @insn_rip_relative(ptr noundef %15) #14, !dbg !800
  %tobool22 = icmp ne i32 %call21, 0, !dbg !800
  br i1 %tobool22, label %if.then23, label %if.end36, !dbg !801

if.then23:                                        ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 8, ptr %newdisp) #15, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %newdisp, metadata !744, metadata !DIExpression()), !dbg !803
  call void @llvm.lifetime.start.p0(i64 8, ptr %disp) #15, !dbg !804
  call void @llvm.dbg.declare(metadata ptr %disp, metadata !747, metadata !DIExpression()), !dbg !805
  %16 = load ptr, ptr %src.addr, align 8, !dbg !806
  %17 = load ptr, ptr %insn.addr, align 8, !dbg !807
  %displacement = getelementptr inbounds %struct.insn, ptr %17, i32 0, i32 6, !dbg !808
  %18 = getelementptr inbounds %struct.insn_field, ptr %displacement, i32 0, i32 0, !dbg !809
  %19 = load i32, ptr %18, align 8, !dbg !809
  %conv24 = sext i32 %19 to i64, !dbg !810
  %add.ptr = getelementptr i8, ptr %16, i64 %conv24, !dbg !811
  %20 = load ptr, ptr %real.addr, align 8, !dbg !812
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !813
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i64, !dbg !813
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !813
  store i64 %sub.ptr.sub, ptr %newdisp, align 8, !dbg !814
  %21 = load i64, ptr %newdisp, align 8, !dbg !815
  %conv25 = trunc i64 %21 to i32, !dbg !817
  %conv26 = sext i32 %conv25 to i64, !dbg !818
  %22 = load i64, ptr %newdisp, align 8, !dbg !819
  %cmp27 = icmp ne i64 %conv26, %22, !dbg !820
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !821

if.then29:                                        ; preds = %if.then23
  br label %do.body, !dbg !822

do.body:                                          ; preds = %if.then29
  br label %do.cond, !dbg !825

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !825

do.end:                                           ; preds = %do.cond
  %23 = load i64, ptr %newdisp, align 8, !dbg !822
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i64 noundef %23) #17, !dbg !822
  store i32 %call30, ptr %tmp, align 4, !dbg !825
  %24 = load i32, ptr %tmp, align 4, !dbg !822
  store i32 0, ptr %retval, align 4, !dbg !827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !827

if.end31:                                         ; preds = %if.then23
  %25 = load ptr, ptr %dest.addr, align 8, !dbg !828
  %26 = load ptr, ptr %insn.addr, align 8, !dbg !829
  %call32 = call i32 @insn_offset_displacement(ptr noundef %26) #14, !dbg !830
  %idx.ext = sext i32 %call32 to i64, !dbg !831
  %add.ptr33 = getelementptr i8, ptr %25, i64 %idx.ext, !dbg !831
  store ptr %add.ptr33, ptr %disp, align 8, !dbg !832
  %27 = load i64, ptr %newdisp, align 8, !dbg !833
  %conv34 = trunc i64 %27 to i32, !dbg !834
  %28 = load ptr, ptr %disp, align 8, !dbg !835
  store i32 %conv34, ptr %28, align 4, !dbg !836
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !837
  br label %cleanup, !dbg !837

cleanup:                                          ; preds = %if.end31, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %disp) #15, !dbg !837
  call void @llvm.lifetime.end.p0(i64 8, ptr %newdisp) #15, !dbg !837
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup38 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end36, !dbg !838

if.end36:                                         ; preds = %cleanup.cont, %if.end20
  %29 = load ptr, ptr %insn.addr, align 8, !dbg !839
  %length = getelementptr inbounds %struct.insn, ptr %29, i32 0, i32 13, !dbg !840
  %30 = load i8, ptr %length, align 2, !dbg !840
  %conv37 = zext i8 %30 to i32, !dbg !839
  store i32 %conv37, ptr %retval, align 4, !dbg !841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !841

cleanup38:                                        ; preds = %if.end36, %cleanup, %if.then19, %if.then15, %if.then11, %if.then7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !842
  call void @llvm.lifetime.end.p0(i64 8, ptr %recovered_insn) #15, !dbg !842
  call void @llvm.lifetime.end.p0(i64 15, ptr %buf) #15, !dbg !842
  %31 = load i32, ptr %retval, align 4, !dbg !842
  ret i32 %31, !dbg !842
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !843 dso_local i32 @insn_decode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_has_emulate_prefix(ptr noundef %insn) #6 align 16 !dbg !846 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !850, metadata !DIExpression()), !dbg !851
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !852
  %emulate_prefix_size = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 9, !dbg !853
  %1 = load i32, ptr %emulate_prefix_size, align 8, !dbg !853
  %tobool = icmp ne i32 %1, 0, !dbg !854
  %lnot = xor i1 %tobool, true, !dbg !854
  %lnot1 = xor i1 %lnot, true, !dbg !855
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !855
  ret i32 %lnot.ext, !dbg !856
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_masking_exception(ptr noundef %insn) #6 align 16 !dbg !857 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !859, metadata !DIExpression()), !dbg !860
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !861
  %opcode = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 3, !dbg !862
  %1 = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 0, !dbg !863
  %arrayidx = getelementptr [4 x i8], ptr %1, i64 0, i64 0, !dbg !861
  %2 = load i8, ptr %arrayidx, align 8, !dbg !861
  %conv = zext i8 %2 to i32, !dbg !861
  %cmp = icmp eq i32 %conv, 31, !dbg !864
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !865

lor.rhs:                                          ; preds = %entry
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !866
  %opcode2 = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 3, !dbg !867
  %4 = getelementptr inbounds %struct.insn_field, ptr %opcode2, i32 0, i32 0, !dbg !868
  %arrayidx3 = getelementptr [4 x i8], ptr %4, i64 0, i64 0, !dbg !866
  %5 = load i8, ptr %arrayidx3, align 8, !dbg !866
  %conv4 = zext i8 %5 to i32, !dbg !866
  %cmp5 = icmp eq i32 %conv4, 142, !dbg !869
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !870

land.rhs:                                         ; preds = %lor.rhs
  %6 = load ptr, ptr %insn.addr, align 8, !dbg !871
  %modrm = getelementptr inbounds %struct.insn, ptr %6, i32 0, i32 4, !dbg !871
  %7 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 0, !dbg !871
  %arrayidx7 = getelementptr [4 x i8], ptr %7, i64 0, i64 0, !dbg !871
  %8 = load i8, ptr %arrayidx7, align 8, !dbg !871
  %conv8 = zext i8 %8 to i32, !dbg !871
  %and = and i32 %conv8, 56, !dbg !871
  %shr = ashr i32 %and, 3, !dbg !871
  %cmp9 = icmp eq i32 %shr, 2, !dbg !872
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %9 = phi i1 [ false, %lor.rhs ], [ %cmp9, %land.rhs ], !dbg !873
  br label %lor.end, !dbg !865

lor.end:                                          ; preds = %land.end, %entry
  %10 = phi i1 [ true, %entry ], [ %9, %land.end ]
  %lor.ext = zext i1 %10 to i32, !dbg !865
  ret i32 %lor.ext, !dbg !874
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !875 dso_local i32 @insn_rip_relative(ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !876 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_offset_displacement(ptr noundef %insn) #6 align 16 !dbg !880 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !882, metadata !DIExpression()), !dbg !883
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !884
  %call = call i32 @insn_offset_sib(ptr noundef %0) #14, !dbg !885
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !886
  %sib = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 5, !dbg !887
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %sib, i32 0, i32 2, !dbg !888
  %2 = load i8, ptr %nbytes, align 1, !dbg !888
  %conv = zext i8 %2 to i32, !dbg !886
  %add = add i32 %call, %conv, !dbg !889
  ret i32 %add, !dbg !890
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @alloc_insn_page() #0 align 16 !dbg !891 {
entry:
  %retval = alloca ptr, align 8
  %page = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #15, !dbg !896
  call void @llvm.dbg.declare(metadata ptr %page, metadata !895, metadata !DIExpression()), !dbg !897
  %call = call ptr @module_alloc(i64 noundef 4096) #14, !dbg !898
  store ptr %call, ptr %page, align 8, !dbg !899
  %0 = load ptr, ptr %page, align 8, !dbg !900
  %tobool = icmp ne ptr %0, null, !dbg !900
  br i1 %tobool, label %if.end, label %if.then, !dbg !902

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !903

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %page, align 8, !dbg !904
  %2 = ptrtoint ptr %1 to i64, !dbg !905
  %call1 = call i32 @set_memory_rox(i64 noundef %2, i32 noundef 1) #14, !dbg !906
  %3 = load ptr, ptr %page, align 8, !dbg !907
  store ptr %3, ptr %retval, align 8, !dbg !908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !908

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #15, !dbg !909
  %4 = load ptr, ptr %retval, align 8, !dbg !909
  ret ptr %4, !dbg !909
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !910 dso_local ptr @module_alloc(i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !914 dso_local i32 @set_memory_rox(i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kprobe_emulate_ifmodifiers(ptr noundef %p, ptr noundef %regs) #0 align 16 !dbg !918 {
entry:
  %p.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !920, metadata !DIExpression()), !dbg !922
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !921, metadata !DIExpression()), !dbg !923
  %0 = load ptr, ptr %p.addr, align 8, !dbg !924
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %0, i32 0, i32 9, !dbg !925
  %1 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 3, !dbg !926
  %2 = load i8, ptr %1, align 2, !dbg !926
  %conv = zext i8 %2 to i32, !dbg !924
  switch i32 %conv, label %sw.epilog [
    i32 250, label %sw.bb
    i32 251, label %sw.bb1
    i32 156, label %sw.bb3
    i32 157, label %sw.bb5
  ], !dbg !927

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !928
  %flags = getelementptr inbounds %struct.pt_regs, ptr %3, i32 0, i32 18, !dbg !930
  %4 = load i64, ptr %flags, align 8, !dbg !931
  %and = and i64 %4, -513, !dbg !931
  store i64 %and, ptr %flags, align 8, !dbg !931
  br label %sw.epilog, !dbg !932

sw.bb1:                                           ; preds = %entry
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !933
  %flags2 = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 18, !dbg !934
  %6 = load i64, ptr %flags2, align 8, !dbg !935
  %or = or i64 %6, 512, !dbg !935
  store i64 %or, ptr %flags2, align 8, !dbg !935
  br label %sw.epilog, !dbg !936

sw.bb3:                                           ; preds = %entry
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !937
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !938
  %flags4 = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 18, !dbg !939
  %9 = load i64, ptr %flags4, align 8, !dbg !939
  call void @int3_emulate_push(ptr noundef %7, i64 noundef %9) #14, !dbg !940
  br label %sw.epilog, !dbg !941

sw.bb5:                                           ; preds = %entry
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !942
  %call = call i64 @int3_emulate_pop(ptr noundef %10) #14, !dbg !943
  %11 = load ptr, ptr %regs.addr, align 8, !dbg !944
  %flags6 = getelementptr inbounds %struct.pt_regs, ptr %11, i32 0, i32 18, !dbg !945
  store i64 %call, ptr %flags6, align 8, !dbg !946
  br label %sw.epilog, !dbg !947

sw.epilog:                                        ; preds = %entry, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !948
  %ip = getelementptr inbounds %struct.pt_regs, ptr %12, i32 0, i32 16, !dbg !949
  %13 = load i64, ptr %ip, align 8, !dbg !949
  %sub = sub i64 %13, 1, !dbg !950
  %14 = load ptr, ptr %p.addr, align 8, !dbg !951
  %ainsn7 = getelementptr inbounds %struct.kprobe, ptr %14, i32 0, i32 9, !dbg !952
  %size = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn7, i32 0, i32 2, !dbg !953
  %15 = load i8, ptr %size, align 1, !dbg !953
  %conv8 = zext i8 %15 to i64, !dbg !951
  %add = add i64 %sub, %conv8, !dbg !954
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !955
  %ip9 = getelementptr inbounds %struct.pt_regs, ptr %16, i32 0, i32 16, !dbg !956
  store i64 %add, ptr %ip9, align 8, !dbg !957
  ret void, !dbg !958
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kprobe_emulate_ret(ptr noundef %p, ptr noundef %regs) #0 align 16 !dbg !959 {
entry:
  %p.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !961, metadata !DIExpression()), !dbg !963
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !962, metadata !DIExpression()), !dbg !964
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !965
  call void @int3_emulate_ret(ptr noundef %0) #14, !dbg !966
  ret void, !dbg !967
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kprobe_emulate_call(ptr noundef %p, ptr noundef %regs) #0 align 16 !dbg !968 {
entry:
  %p.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %func = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !970, metadata !DIExpression()), !dbg !973
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !971, metadata !DIExpression()), !dbg !974
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #15, !dbg !975
  call void @llvm.dbg.declare(metadata ptr %func, metadata !972, metadata !DIExpression()), !dbg !976
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !977
  %ip = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 16, !dbg !978
  %1 = load i64, ptr %ip, align 8, !dbg !978
  %sub = sub i64 %1, 1, !dbg !979
  %2 = load ptr, ptr %p.addr, align 8, !dbg !980
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %2, i32 0, i32 9, !dbg !981
  %size = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 2, !dbg !982
  %3 = load i8, ptr %size, align 1, !dbg !982
  %conv = zext i8 %3 to i64, !dbg !980
  %add = add i64 %sub, %conv, !dbg !983
  store i64 %add, ptr %func, align 8, !dbg !976
  %4 = load ptr, ptr %p.addr, align 8, !dbg !984
  %ainsn1 = getelementptr inbounds %struct.kprobe, ptr %4, i32 0, i32 9, !dbg !985
  %rel32 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn1, i32 0, i32 4, !dbg !986
  %5 = load i32, ptr %rel32, align 4, !dbg !986
  %conv2 = sext i32 %5 to i64, !dbg !984
  %6 = load i64, ptr %func, align 8, !dbg !987
  %add3 = add i64 %6, %conv2, !dbg !987
  store i64 %add3, ptr %func, align 8, !dbg !987
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !988
  %8 = load i64, ptr %func, align 8, !dbg !989
  call void @int3_emulate_call(ptr noundef %7, i64 noundef %8) #14, !dbg !990
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #15, !dbg !991
  ret void, !dbg !991
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kprobe_emulate_jmp(ptr noundef %p, ptr noundef %regs) #0 align 16 !dbg !992 {
entry:
  %p.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %ip = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !994, metadata !DIExpression()), !dbg !997
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !995, metadata !DIExpression()), !dbg !998
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #15, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !996, metadata !DIExpression()), !dbg !1000
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !1001
  %ip1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 16, !dbg !1002
  %1 = load i64, ptr %ip1, align 8, !dbg !1002
  %sub = sub i64 %1, 1, !dbg !1003
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1004
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %2, i32 0, i32 9, !dbg !1005
  %size = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 2, !dbg !1006
  %3 = load i8, ptr %size, align 1, !dbg !1006
  %conv = zext i8 %3 to i64, !dbg !1004
  %add = add i64 %sub, %conv, !dbg !1007
  store i64 %add, ptr %ip, align 8, !dbg !1000
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1008
  %ainsn2 = getelementptr inbounds %struct.kprobe, ptr %4, i32 0, i32 9, !dbg !1009
  %rel32 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn2, i32 0, i32 4, !dbg !1010
  %5 = load i32, ptr %rel32, align 4, !dbg !1010
  %conv3 = sext i32 %5 to i64, !dbg !1008
  %6 = load i64, ptr %ip, align 8, !dbg !1011
  %add4 = add i64 %6, %conv3, !dbg !1011
  store i64 %add4, ptr %ip, align 8, !dbg !1011
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !1012
  %8 = load i64, ptr %ip, align 8, !dbg !1013
  call void @int3_emulate_jmp(ptr noundef %7, i64 noundef %8) #14, !dbg !1014
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #15, !dbg !1015
  ret void, !dbg !1015
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kprobe_emulate_jcc(ptr noundef %p, ptr noundef %regs) #0 align 16 !dbg !1016 {
entry:
  %p.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %ip = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1018, metadata !DIExpression()), !dbg !1021
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1019, metadata !DIExpression()), !dbg !1022
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #15, !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !1020, metadata !DIExpression()), !dbg !1024
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !1025
  %ip1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 16, !dbg !1026
  %1 = load i64, ptr %ip1, align 8, !dbg !1026
  %sub = sub i64 %1, 1, !dbg !1027
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1028
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %2, i32 0, i32 9, !dbg !1029
  %size = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 2, !dbg !1030
  %3 = load i8, ptr %size, align 1, !dbg !1030
  %conv = zext i8 %3 to i64, !dbg !1028
  %add = add i64 %sub, %conv, !dbg !1031
  store i64 %add, ptr %ip, align 8, !dbg !1024
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !1032
  %5 = load ptr, ptr %p.addr, align 8, !dbg !1033
  %ainsn2 = getelementptr inbounds %struct.kprobe, ptr %5, i32 0, i32 9, !dbg !1034
  %6 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn2, i32 0, i32 3, !dbg !1035
  %type = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 0, !dbg !1036
  %7 = load i8, ptr %type, align 2, !dbg !1036
  %8 = load i64, ptr %ip, align 8, !dbg !1037
  %9 = load ptr, ptr %p.addr, align 8, !dbg !1038
  %ainsn3 = getelementptr inbounds %struct.kprobe, ptr %9, i32 0, i32 9, !dbg !1039
  %rel32 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn3, i32 0, i32 4, !dbg !1040
  %10 = load i32, ptr %rel32, align 4, !dbg !1040
  %conv4 = sext i32 %10 to i64, !dbg !1038
  call void @int3_emulate_jcc(ptr noundef %4, i8 noundef zeroext %7, i64 noundef %8, i64 noundef %conv4) #14, !dbg !1041
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #15, !dbg !1042
  ret void, !dbg !1042
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kprobe_emulate_loop(ptr noundef %p, ptr noundef %regs) #0 align 16 !dbg !1043 {
entry:
  %p.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %ip = alloca i64, align 8
  %match = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1045, metadata !DIExpression()), !dbg !1049
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1046, metadata !DIExpression()), !dbg !1050
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #15, !dbg !1051
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !1047, metadata !DIExpression()), !dbg !1052
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !1053
  %ip1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 16, !dbg !1054
  %1 = load i64, ptr %ip1, align 8, !dbg !1054
  %sub = sub i64 %1, 1, !dbg !1055
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1056
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %2, i32 0, i32 9, !dbg !1057
  %size = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 2, !dbg !1058
  %3 = load i8, ptr %size, align 1, !dbg !1058
  %conv = zext i8 %3 to i64, !dbg !1056
  %add = add i64 %sub, %conv, !dbg !1059
  store i64 %add, ptr %ip, align 8, !dbg !1052
  call void @llvm.lifetime.start.p0(i64 1, ptr %match) #15, !dbg !1060
  call void @llvm.dbg.declare(metadata ptr %match, metadata !1048, metadata !DIExpression()), !dbg !1061
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1062
  %ainsn2 = getelementptr inbounds %struct.kprobe, ptr %4, i32 0, i32 9, !dbg !1064
  %5 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn2, i32 0, i32 3, !dbg !1065
  %type = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 0, !dbg !1066
  %6 = load i8, ptr %type, align 2, !dbg !1066
  %conv3 = zext i8 %6 to i32, !dbg !1062
  %cmp = icmp ne i32 %conv3, 3, !dbg !1067
  br i1 %cmp, label %if.then, label %if.else31, !dbg !1068

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %p.addr, align 8, !dbg !1069
  %ainsn5 = getelementptr inbounds %struct.kprobe, ptr %7, i32 0, i32 9, !dbg !1072
  %8 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn5, i32 0, i32 3, !dbg !1073
  %asize = getelementptr inbounds %struct.anon.0, ptr %8, i32 0, i32 1, !dbg !1074
  %9 = load i8, ptr %asize, align 1, !dbg !1074
  %conv6 = zext i8 %9 to i32, !dbg !1069
  %cmp7 = icmp eq i32 %conv6, 32, !dbg !1075
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !1076

if.then9:                                         ; preds = %if.then
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !1077
  %cx = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 11, !dbg !1078
  %11 = load i32, ptr %cx, align 8, !dbg !1079
  %dec = add i32 %11, -1, !dbg !1079
  store i32 %dec, ptr %cx, align 8, !dbg !1079
  %cmp10 = icmp ne i32 %11, 0, !dbg !1080
  %frombool = zext i1 %cmp10 to i8, !dbg !1081
  store i8 %frombool, ptr %match, align 1, !dbg !1081
  br label %if.end30, !dbg !1082

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %p.addr, align 8, !dbg !1083
  %ainsn12 = getelementptr inbounds %struct.kprobe, ptr %12, i32 0, i32 9, !dbg !1085
  %13 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn12, i32 0, i32 3, !dbg !1086
  %asize13 = getelementptr inbounds %struct.anon.0, ptr %13, i32 0, i32 1, !dbg !1087
  %14 = load i8, ptr %asize13, align 1, !dbg !1087
  %conv14 = zext i8 %14 to i32, !dbg !1083
  %cmp15 = icmp eq i32 %conv14, 64, !dbg !1088
  br i1 %cmp15, label %if.then17, label %if.else23, !dbg !1089

if.then17:                                        ; preds = %if.else
  %15 = load ptr, ptr %regs.addr, align 8, !dbg !1090
  %cx18 = getelementptr inbounds %struct.pt_regs, ptr %15, i32 0, i32 11, !dbg !1091
  %16 = load i64, ptr %cx18, align 8, !dbg !1092
  %dec19 = add i64 %16, -1, !dbg !1092
  store i64 %dec19, ptr %cx18, align 8, !dbg !1092
  %cmp20 = icmp ne i64 %16, 0, !dbg !1093
  %frombool22 = zext i1 %cmp20 to i8, !dbg !1094
  store i8 %frombool22, ptr %match, align 1, !dbg !1094
  br label %if.end, !dbg !1095

if.else23:                                        ; preds = %if.else
  %17 = load ptr, ptr %regs.addr, align 8, !dbg !1096
  %cx24 = getelementptr inbounds %struct.pt_regs, ptr %17, i32 0, i32 11, !dbg !1097
  %18 = load i16, ptr %cx24, align 8, !dbg !1098
  %dec25 = add i16 %18, -1, !dbg !1098
  store i16 %dec25, ptr %cx24, align 8, !dbg !1098
  %conv26 = zext i16 %18 to i32, !dbg !1099
  %cmp27 = icmp ne i32 %conv26, 0, !dbg !1100
  %frombool29 = zext i1 %cmp27 to i8, !dbg !1101
  store i8 %frombool29, ptr %match, align 1, !dbg !1101
  br label %if.end

if.end:                                           ; preds = %if.else23, %if.then17
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then9
  br label %if.end61, !dbg !1102

if.else31:                                        ; preds = %entry
  %19 = load ptr, ptr %p.addr, align 8, !dbg !1103
  %ainsn32 = getelementptr inbounds %struct.kprobe, ptr %19, i32 0, i32 9, !dbg !1106
  %20 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn32, i32 0, i32 3, !dbg !1107
  %asize33 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 1, !dbg !1108
  %21 = load i8, ptr %asize33, align 1, !dbg !1108
  %conv34 = zext i8 %21 to i32, !dbg !1103
  %cmp35 = icmp eq i32 %conv34, 32, !dbg !1109
  br i1 %cmp35, label %if.then37, label %if.else42, !dbg !1110

if.then37:                                        ; preds = %if.else31
  %22 = load ptr, ptr %regs.addr, align 8, !dbg !1111
  %cx38 = getelementptr inbounds %struct.pt_regs, ptr %22, i32 0, i32 11, !dbg !1112
  %23 = load i32, ptr %cx38, align 8, !dbg !1113
  %cmp39 = icmp eq i32 %23, 0, !dbg !1114
  %frombool41 = zext i1 %cmp39 to i8, !dbg !1115
  store i8 %frombool41, ptr %match, align 1, !dbg !1115
  br label %if.end60, !dbg !1116

if.else42:                                        ; preds = %if.else31
  %24 = load ptr, ptr %p.addr, align 8, !dbg !1117
  %ainsn43 = getelementptr inbounds %struct.kprobe, ptr %24, i32 0, i32 9, !dbg !1119
  %25 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn43, i32 0, i32 3, !dbg !1120
  %asize44 = getelementptr inbounds %struct.anon.0, ptr %25, i32 0, i32 1, !dbg !1121
  %26 = load i8, ptr %asize44, align 1, !dbg !1121
  %conv45 = zext i8 %26 to i32, !dbg !1117
  %cmp46 = icmp eq i32 %conv45, 64, !dbg !1122
  br i1 %cmp46, label %if.then48, label %if.else53, !dbg !1123

if.then48:                                        ; preds = %if.else42
  %27 = load ptr, ptr %regs.addr, align 8, !dbg !1124
  %cx49 = getelementptr inbounds %struct.pt_regs, ptr %27, i32 0, i32 11, !dbg !1125
  %28 = load i64, ptr %cx49, align 8, !dbg !1126
  %cmp50 = icmp eq i64 %28, 0, !dbg !1127
  %frombool52 = zext i1 %cmp50 to i8, !dbg !1128
  store i8 %frombool52, ptr %match, align 1, !dbg !1128
  br label %if.end59, !dbg !1129

if.else53:                                        ; preds = %if.else42
  %29 = load ptr, ptr %regs.addr, align 8, !dbg !1130
  %cx54 = getelementptr inbounds %struct.pt_regs, ptr %29, i32 0, i32 11, !dbg !1131
  %30 = load i16, ptr %cx54, align 8, !dbg !1132
  %conv55 = zext i16 %30 to i32, !dbg !1132
  %cmp56 = icmp eq i32 %conv55, 0, !dbg !1133
  %frombool58 = zext i1 %cmp56 to i8, !dbg !1134
  store i8 %frombool58, ptr %match, align 1, !dbg !1134
  br label %if.end59

if.end59:                                         ; preds = %if.else53, %if.then48
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then37
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end30
  %31 = load ptr, ptr %p.addr, align 8, !dbg !1135
  %ainsn62 = getelementptr inbounds %struct.kprobe, ptr %31, i32 0, i32 9, !dbg !1137
  %32 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn62, i32 0, i32 3, !dbg !1138
  %type63 = getelementptr inbounds %struct.anon.0, ptr %32, i32 0, i32 0, !dbg !1139
  %33 = load i8, ptr %type63, align 2, !dbg !1139
  %conv64 = zext i8 %33 to i32, !dbg !1135
  %cmp65 = icmp eq i32 %conv64, 0, !dbg !1140
  br i1 %cmp65, label %if.then67, label %if.else71, !dbg !1141

if.then67:                                        ; preds = %if.end61
  %34 = load i8, ptr %match, align 1, !dbg !1142, !range !626, !noundef !627
  %tobool = trunc i8 %34 to i1, !dbg !1142
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1143

land.rhs:                                         ; preds = %if.then67
  %35 = load ptr, ptr %regs.addr, align 8, !dbg !1144
  %flags = getelementptr inbounds %struct.pt_regs, ptr %35, i32 0, i32 18, !dbg !1145
  %36 = load i64, ptr %flags, align 8, !dbg !1145
  %and = and i64 %36, 64, !dbg !1146
  %tobool69 = icmp ne i64 %and, 0, !dbg !1147
  %lnot = xor i1 %tobool69, true, !dbg !1147
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then67
  %37 = phi i1 [ false, %if.then67 ], [ %lnot, %land.rhs ], !dbg !1148
  %frombool70 = zext i1 %37 to i8, !dbg !1149
  store i8 %frombool70, ptr %match, align 1, !dbg !1149
  br label %if.end87, !dbg !1150

if.else71:                                        ; preds = %if.end61
  %38 = load ptr, ptr %p.addr, align 8, !dbg !1151
  %ainsn72 = getelementptr inbounds %struct.kprobe, ptr %38, i32 0, i32 9, !dbg !1153
  %39 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn72, i32 0, i32 3, !dbg !1154
  %type73 = getelementptr inbounds %struct.anon.0, ptr %39, i32 0, i32 0, !dbg !1155
  %40 = load i8, ptr %type73, align 2, !dbg !1155
  %conv74 = zext i8 %40 to i32, !dbg !1151
  %cmp75 = icmp eq i32 %conv74, 1, !dbg !1156
  br i1 %cmp75, label %if.then77, label %if.end86, !dbg !1157

if.then77:                                        ; preds = %if.else71
  %41 = load i8, ptr %match, align 1, !dbg !1158, !range !626, !noundef !627
  %tobool78 = trunc i8 %41 to i1, !dbg !1158
  br i1 %tobool78, label %land.rhs80, label %land.end84, !dbg !1159

land.rhs80:                                       ; preds = %if.then77
  %42 = load ptr, ptr %regs.addr, align 8, !dbg !1160
  %flags81 = getelementptr inbounds %struct.pt_regs, ptr %42, i32 0, i32 18, !dbg !1161
  %43 = load i64, ptr %flags81, align 8, !dbg !1161
  %and82 = and i64 %43, 64, !dbg !1162
  %tobool83 = icmp ne i64 %and82, 0, !dbg !1159
  br label %land.end84

land.end84:                                       ; preds = %land.rhs80, %if.then77
  %44 = phi i1 [ false, %if.then77 ], [ %tobool83, %land.rhs80 ], !dbg !1163
  %frombool85 = zext i1 %44 to i8, !dbg !1164
  store i8 %frombool85, ptr %match, align 1, !dbg !1164
  br label %if.end86, !dbg !1165

if.end86:                                         ; preds = %land.end84, %if.else71
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %land.end
  %45 = load i8, ptr %match, align 1, !dbg !1166, !range !626, !noundef !627
  %tobool88 = trunc i8 %45 to i1, !dbg !1166
  br i1 %tobool88, label %if.then89, label %if.end93, !dbg !1168

if.then89:                                        ; preds = %if.end87
  %46 = load ptr, ptr %p.addr, align 8, !dbg !1169
  %ainsn90 = getelementptr inbounds %struct.kprobe, ptr %46, i32 0, i32 9, !dbg !1170
  %rel32 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn90, i32 0, i32 4, !dbg !1171
  %47 = load i32, ptr %rel32, align 4, !dbg !1171
  %conv91 = sext i32 %47 to i64, !dbg !1169
  %48 = load i64, ptr %ip, align 8, !dbg !1172
  %add92 = add i64 %48, %conv91, !dbg !1172
  store i64 %add92, ptr %ip, align 8, !dbg !1172
  br label %if.end93, !dbg !1173

if.end93:                                         ; preds = %if.then89, %if.end87
  %49 = load ptr, ptr %regs.addr, align 8, !dbg !1174
  %50 = load i64, ptr %ip, align 8, !dbg !1175
  call void @int3_emulate_jmp(ptr noundef %49, i64 noundef %50) #14, !dbg !1176
  call void @llvm.lifetime.end.p0(i64 1, ptr %match) #15, !dbg !1177
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #15, !dbg !1177
  ret void, !dbg !1177
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kprobe_emulate_call_indirect(ptr noundef %p, ptr noundef %regs) #0 align 16 !dbg !1178 {
entry:
  %p.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %offs = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1180, metadata !DIExpression()), !dbg !1183
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1181, metadata !DIExpression()), !dbg !1184
  call void @llvm.lifetime.start.p0(i64 8, ptr %offs) #15, !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %offs, metadata !1182, metadata !DIExpression()), !dbg !1186
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1187
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %0, i32 0, i32 9, !dbg !1188
  %1 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 3, !dbg !1189
  %reg = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 0, !dbg !1190
  %2 = load i8, ptr %reg, align 2, !dbg !1190
  %idxprom = zext i8 %2 to i64, !dbg !1191
  %arrayidx = getelementptr [16 x i32], ptr @addrmode_regoffs, i64 0, i64 %idxprom, !dbg !1191
  %3 = load i32, ptr %arrayidx, align 4, !dbg !1191
  %conv = sext i32 %3 to i64, !dbg !1191
  store i64 %conv, ptr %offs, align 8, !dbg !1186
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !1192
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !1193
  %ip = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 16, !dbg !1194
  %6 = load i64, ptr %ip, align 8, !dbg !1194
  %sub = sub i64 %6, 1, !dbg !1195
  %7 = load ptr, ptr %p.addr, align 8, !dbg !1196
  %ainsn1 = getelementptr inbounds %struct.kprobe, ptr %7, i32 0, i32 9, !dbg !1197
  %size = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn1, i32 0, i32 2, !dbg !1198
  %8 = load i8, ptr %size, align 1, !dbg !1198
  %conv2 = zext i8 %8 to i64, !dbg !1196
  %add = add i64 %sub, %conv2, !dbg !1199
  call void @int3_emulate_push(ptr noundef %4, i64 noundef %add) #14, !dbg !1200
  %9 = load ptr, ptr %regs.addr, align 8, !dbg !1201
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !1202
  %11 = load i64, ptr %offs, align 8, !dbg !1203
  %conv3 = trunc i64 %11 to i32, !dbg !1203
  %call = call i64 @regs_get_register(ptr noundef %10, i32 noundef %conv3) #14, !dbg !1204
  call void @int3_emulate_jmp(ptr noundef %9, i64 noundef %call) #14, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 8, ptr %offs) #15, !dbg !1206
  ret void, !dbg !1206
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kprobe_emulate_jmp_indirect(ptr noundef %p, ptr noundef %regs) #0 align 16 !dbg !1207 {
entry:
  %p.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %offs = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1209, metadata !DIExpression()), !dbg !1212
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1210, metadata !DIExpression()), !dbg !1213
  call void @llvm.lifetime.start.p0(i64 8, ptr %offs) #15, !dbg !1214
  call void @llvm.dbg.declare(metadata ptr %offs, metadata !1211, metadata !DIExpression()), !dbg !1215
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1216
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %0, i32 0, i32 9, !dbg !1217
  %1 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 3, !dbg !1218
  %reg = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 0, !dbg !1219
  %2 = load i8, ptr %reg, align 2, !dbg !1219
  %idxprom = zext i8 %2 to i64, !dbg !1220
  %arrayidx = getelementptr [16 x i32], ptr @addrmode_regoffs, i64 0, i64 %idxprom, !dbg !1220
  %3 = load i32, ptr %arrayidx, align 4, !dbg !1220
  %conv = sext i32 %3 to i64, !dbg !1220
  store i64 %conv, ptr %offs, align 8, !dbg !1215
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !1221
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !1222
  %6 = load i64, ptr %offs, align 8, !dbg !1223
  %conv1 = trunc i64 %6 to i32, !dbg !1223
  %call = call i64 @regs_get_register(ptr noundef %5, i32 noundef %conv1) #14, !dbg !1224
  call void @int3_emulate_jmp(ptr noundef %4, i64 noundef %call) #14, !dbg !1225
  call void @llvm.lifetime.end.p0(i64 8, ptr %offs) #15, !dbg !1226
  ret void, !dbg !1226
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_prepare_kprobe(ptr noundef %p) #0 align 16 !dbg !1227 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1231, metadata !DIExpression()), !dbg !1233
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !1234
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1232, metadata !DIExpression()), !dbg !1235
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1236
  %addr = getelementptr inbounds %struct.kprobe, ptr %0, i32 0, i32 3, !dbg !1238
  %1 = load ptr, ptr %addr, align 8, !dbg !1238
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1239
  %addr1 = getelementptr inbounds %struct.kprobe, ptr %2, i32 0, i32 3, !dbg !1240
  %3 = load ptr, ptr %addr1, align 8, !dbg !1240
  %call = call i32 @alternatives_text_reserved(ptr noundef %1, ptr noundef %3) #14, !dbg !1241
  %tobool = icmp ne i32 %call, 0, !dbg !1241
  br i1 %tobool, label %if.then, label %if.end, !dbg !1242

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1243

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1244
  %addr2 = getelementptr inbounds %struct.kprobe, ptr %4, i32 0, i32 3, !dbg !1246
  %5 = load ptr, ptr %addr2, align 8, !dbg !1246
  %6 = ptrtoint ptr %5 to i64, !dbg !1247
  %call3 = call i32 @can_probe(i64 noundef %6) #14, !dbg !1248
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1248
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1249

if.then5:                                         ; preds = %if.end
  store i32 -84, ptr %retval, align 4, !dbg !1250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1250

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %p.addr, align 8, !dbg !1251
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %7, i32 0, i32 9, !dbg !1252
  call void @llvm.memset.p0.i64(ptr align 8 %ainsn, i8 0, i64 32, i1 false), !dbg !1253
  %call7 = call ptr @get_insn_slot() #14, !dbg !1254
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1255
  %ainsn8 = getelementptr inbounds %struct.kprobe, ptr %8, i32 0, i32 9, !dbg !1256
  %insn = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn8, i32 0, i32 0, !dbg !1257
  store ptr %call7, ptr %insn, align 8, !dbg !1258
  %9 = load ptr, ptr %p.addr, align 8, !dbg !1259
  %ainsn9 = getelementptr inbounds %struct.kprobe, ptr %9, i32 0, i32 9, !dbg !1261
  %insn10 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn9, i32 0, i32 0, !dbg !1262
  %10 = load ptr, ptr %insn10, align 8, !dbg !1262
  %tobool11 = icmp ne ptr %10, null, !dbg !1259
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !1263

if.then12:                                        ; preds = %if.end6
  store i32 -12, ptr %retval, align 4, !dbg !1264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1264

if.end13:                                         ; preds = %if.end6
  %11 = load ptr, ptr %p.addr, align 8, !dbg !1265
  %call14 = call i32 @arch_copy_kprobe(ptr noundef %11) #14, !dbg !1266
  store i32 %call14, ptr %ret, align 4, !dbg !1267
  %12 = load i32, ptr %ret, align 4, !dbg !1268
  %tobool15 = icmp ne i32 %12, 0, !dbg !1268
  br i1 %tobool15, label %if.then16, label %if.end21, !dbg !1270

if.then16:                                        ; preds = %if.end13
  %13 = load ptr, ptr %p.addr, align 8, !dbg !1271
  %ainsn17 = getelementptr inbounds %struct.kprobe, ptr %13, i32 0, i32 9, !dbg !1273
  %insn18 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn17, i32 0, i32 0, !dbg !1274
  %14 = load ptr, ptr %insn18, align 8, !dbg !1274
  call void @free_insn_slot(ptr noundef %14, i32 noundef 0) #14, !dbg !1275
  %15 = load ptr, ptr %p.addr, align 8, !dbg !1276
  %ainsn19 = getelementptr inbounds %struct.kprobe, ptr %15, i32 0, i32 9, !dbg !1277
  %insn20 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn19, i32 0, i32 0, !dbg !1278
  store ptr null, ptr %insn20, align 8, !dbg !1279
  br label %if.end21, !dbg !1280

if.end21:                                         ; preds = %if.then16, %if.end13
  %16 = load i32, ptr %ret, align 4, !dbg !1281
  store i32 %16, ptr %retval, align 4, !dbg !1282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1282

cleanup:                                          ; preds = %if.end21, %if.then12, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !1283
  %17 = load i32, ptr %retval, align 4, !dbg !1283
  ret i32 %17, !dbg !1283
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1284 dso_local i32 @alternatives_text_reserved(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @can_probe(i64 noundef %paddr) #0 align 16 !dbg !1288 {
entry:
  %retval = alloca i32, align 4
  %paddr.addr = alloca i64, align 8
  %addr = alloca i64, align 8
  %__addr = alloca i64, align 8
  %offset = alloca i64, align 8
  %insn = alloca %struct.insn, align 8
  %buf = alloca [15 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  %ret = alloca i32, align 4
  store i64 %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !1292, metadata !DIExpression()), !dbg !1301
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #15, !dbg !1302
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !1293, metadata !DIExpression()), !dbg !1303
  call void @llvm.lifetime.start.p0(i64 8, ptr %__addr) #15, !dbg !1302
  call void @llvm.dbg.declare(metadata ptr %__addr, metadata !1294, metadata !DIExpression()), !dbg !1304
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #15, !dbg !1302
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !1295, metadata !DIExpression()), !dbg !1305
  store i64 0, ptr %offset, align 8, !dbg !1305
  call void @llvm.lifetime.start.p0(i64 112, ptr %insn) #15, !dbg !1306
  call void @llvm.dbg.declare(metadata ptr %insn, metadata !1296, metadata !DIExpression()), !dbg !1307
  call void @llvm.lifetime.start.p0(i64 15, ptr %buf) #15, !dbg !1308
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1297, metadata !DIExpression()), !dbg !1309
  %0 = load i64, ptr %paddr.addr, align 8, !dbg !1310
  %call = call i32 @kallsyms_lookup_size_offset(i64 noundef %0, ptr noundef null, ptr noundef %offset) #14, !dbg !1312
  %tobool = icmp ne i32 %call, 0, !dbg !1312
  br i1 %tobool, label %if.end, label %if.then, !dbg !1313

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11, !dbg !1314

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %paddr.addr, align 8, !dbg !1315
  %2 = load i64, ptr %offset, align 8, !dbg !1316
  %sub = sub i64 %1, %2, !dbg !1317
  store i64 %sub, ptr %addr, align 8, !dbg !1318
  br label %while.cond, !dbg !1319

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %3 = load i64, ptr %addr, align 8, !dbg !1320
  %4 = load i64, ptr %paddr.addr, align 8, !dbg !1321
  %cmp = icmp ult i64 %3, %4, !dbg !1322
  br i1 %cmp, label %while.body, label %while.end, !dbg !1319

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !1323
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1298, metadata !DIExpression()), !dbg !1324
  %arraydecay = getelementptr inbounds [15 x i8], ptr %buf, i64 0, i64 0, !dbg !1325
  %5 = load i64, ptr %addr, align 8, !dbg !1326
  %call1 = call i64 @recover_probed_instruction(ptr noundef %arraydecay, i64 noundef %5) #14, !dbg !1327
  store i64 %call1, ptr %__addr, align 8, !dbg !1328
  %6 = load i64, ptr %__addr, align 8, !dbg !1329
  %tobool2 = icmp ne i64 %6, 0, !dbg !1329
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1331

if.then3:                                         ; preds = %while.body
  store i32 0, ptr %retval, align 4, !dbg !1332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1332

if.end4:                                          ; preds = %while.body
  %7 = load i64, ptr %__addr, align 8, !dbg !1333
  %8 = inttoptr i64 %7 to ptr, !dbg !1333
  %call5 = call i32 @insn_decode(ptr noundef %insn, ptr noundef %8, i32 noundef 15, i32 noundef 2) #14, !dbg !1333
  store i32 %call5, ptr %ret, align 4, !dbg !1334
  %9 = load i32, ptr %ret, align 4, !dbg !1335
  %cmp6 = icmp slt i32 %9, 0, !dbg !1337
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1338

if.then7:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !1339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1339

if.end8:                                          ; preds = %if.end4
  %length = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 13, !dbg !1340
  %10 = load i8, ptr %length, align 2, !dbg !1340
  %conv = zext i8 %10 to i64, !dbg !1341
  %11 = load i64, ptr %addr, align 8, !dbg !1342
  %add = add i64 %11, %conv, !dbg !1342
  store i64 %add, ptr %addr, align 8, !dbg !1342
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1343
  br label %cleanup, !dbg !1343

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !1343
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup11 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !1319, !llvm.loop !1344

while.end:                                        ; preds = %while.cond
  br label %out, !dbg !1345

out:                                              ; preds = %while.end
  call void @llvm.dbg.label(metadata !1300), !dbg !1347
  %12 = load i64, ptr %addr, align 8, !dbg !1348
  %13 = load i64, ptr %paddr.addr, align 8, !dbg !1349
  %cmp9 = icmp eq i64 %12, %13, !dbg !1350
  %conv10 = zext i1 %cmp9 to i32, !dbg !1350
  store i32 %conv10, ptr %retval, align 4, !dbg !1351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11, !dbg !1351

cleanup11:                                        ; preds = %out, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 15, ptr %buf) #15, !dbg !1352
  call void @llvm.lifetime.end.p0(i64 112, ptr %insn) #15, !dbg !1352
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #15, !dbg !1352
  call void @llvm.lifetime.end.p0(i64 8, ptr %__addr) #15, !dbg !1352
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #15, !dbg !1352
  %14 = load i32, ptr %retval, align 4, !dbg !1352
  ret i32 %14, !dbg !1352
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_insn_slot() #6 align 16 !dbg !1353 {
entry:
  %call = call ptr @__get_insn_slot(ptr noundef @kprobe_insn_slots) #14, !dbg !1356
  ret ptr %call, !dbg !1356
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_copy_kprobe(ptr noundef %p) #0 align 16 !dbg !1357 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %insn = alloca %struct.insn, align 8
  %buf = alloca [15 x i8], align 1
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1359, metadata !DIExpression()), !dbg !1364
  call void @llvm.lifetime.start.p0(i64 112, ptr %insn) #15, !dbg !1365
  call void @llvm.dbg.declare(metadata ptr %insn, metadata !1360, metadata !DIExpression()), !dbg !1366
  call void @llvm.lifetime.start.p0(i64 15, ptr %buf) #15, !dbg !1367
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1361, metadata !DIExpression()), !dbg !1368
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !1369
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1362, metadata !DIExpression()), !dbg !1370
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !1369
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1363, metadata !DIExpression()), !dbg !1371
  %arraydecay = getelementptr inbounds [15 x i8], ptr %buf, i64 0, i64 0, !dbg !1372
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1373
  %addr = getelementptr inbounds %struct.kprobe, ptr %0, i32 0, i32 3, !dbg !1374
  %1 = load ptr, ptr %addr, align 8, !dbg !1374
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1375
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %2, i32 0, i32 9, !dbg !1376
  %insn1 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 0, !dbg !1377
  %3 = load ptr, ptr %insn1, align 8, !dbg !1377
  %call = call i32 @__copy_instruction(ptr noundef %arraydecay, ptr noundef %1, ptr noundef %3, ptr noundef %insn) #14, !dbg !1378
  store i32 %call, ptr %len, align 4, !dbg !1379
  %4 = load i32, ptr %len, align 4, !dbg !1380
  %tobool = icmp ne i32 %4, 0, !dbg !1380
  br i1 %tobool, label %if.end, label %if.then, !dbg !1382

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1383

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8, !dbg !1384
  %call2 = call i32 @prepare_emulation(ptr noundef %5, ptr noundef %insn) #14, !dbg !1385
  store i32 %call2, ptr %ret, align 4, !dbg !1386
  %6 = load i32, ptr %ret, align 4, !dbg !1387
  %cmp = icmp slt i32 %6, 0, !dbg !1389
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !1390

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !dbg !1391
  store i32 %7, ptr %retval, align 4, !dbg !1392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1392

if.end4:                                          ; preds = %if.end
  %arraydecay5 = getelementptr inbounds [15 x i8], ptr %buf, i64 0, i64 0, !dbg !1393
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1394
  %call6 = call i32 @prepare_singlestep(ptr noundef %arraydecay5, ptr noundef %8, ptr noundef %insn) #14, !dbg !1395
  store i32 %call6, ptr %len, align 4, !dbg !1396
  %9 = load i32, ptr %len, align 4, !dbg !1397
  %cmp7 = icmp slt i32 %9, 0, !dbg !1399
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1400

if.then8:                                         ; preds = %if.end4
  %10 = load i32, ptr %len, align 4, !dbg !1401
  store i32 %10, ptr %retval, align 4, !dbg !1402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1402

if.end9:                                          ; preds = %if.end4
  %arrayidx = getelementptr [15 x i8], ptr %buf, i64 0, i64 0, !dbg !1403
  %11 = load i8, ptr %arrayidx, align 1, !dbg !1403
  %12 = load ptr, ptr %p.addr, align 8, !dbg !1404
  %opcode = getelementptr inbounds %struct.kprobe, ptr %12, i32 0, i32 8, !dbg !1405
  store i8 %11, ptr %opcode, align 8, !dbg !1406
  %13 = load i32, ptr %len, align 4, !dbg !1407
  %14 = load ptr, ptr %p.addr, align 8, !dbg !1408
  %ainsn10 = getelementptr inbounds %struct.kprobe, ptr %14, i32 0, i32 9, !dbg !1409
  %tp_len = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn10, i32 0, i32 6, !dbg !1410
  store i32 %13, ptr %tp_len, align 8, !dbg !1411
  %15 = load ptr, ptr %p.addr, align 8, !dbg !1412
  %ainsn11 = getelementptr inbounds %struct.kprobe, ptr %15, i32 0, i32 9, !dbg !1413
  %insn12 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn11, i32 0, i32 0, !dbg !1414
  %16 = load ptr, ptr %insn12, align 8, !dbg !1414
  %arraydecay13 = getelementptr inbounds [15 x i8], ptr %buf, i64 0, i64 0, !dbg !1415
  %17 = load i32, ptr %len, align 4, !dbg !1416
  %conv = sext i32 %17 to i64, !dbg !1416
  call void @perf_event_text_poke(ptr noundef %16, ptr noundef null, i64 noundef 0, ptr noundef %arraydecay13, i64 noundef %conv) #14, !dbg !1417
  %18 = load ptr, ptr %p.addr, align 8, !dbg !1418
  %ainsn14 = getelementptr inbounds %struct.kprobe, ptr %18, i32 0, i32 9, !dbg !1419
  %insn15 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn14, i32 0, i32 0, !dbg !1420
  %19 = load ptr, ptr %insn15, align 8, !dbg !1420
  %arraydecay16 = getelementptr inbounds [15 x i8], ptr %buf, i64 0, i64 0, !dbg !1421
  %20 = load i32, ptr %len, align 4, !dbg !1422
  %conv17 = sext i32 %20 to i64, !dbg !1422
  %call18 = call ptr @text_poke(ptr noundef %19, ptr noundef %arraydecay16, i64 noundef %conv17) #14, !dbg !1423
  store i32 0, ptr %retval, align 4, !dbg !1424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1424

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !1425
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !1425
  call void @llvm.lifetime.end.p0(i64 15, ptr %buf) #15, !dbg !1425
  call void @llvm.lifetime.end.p0(i64 112, ptr %insn) #15, !dbg !1425
  %21 = load i32, ptr %retval, align 4, !dbg !1425
  ret i32 %21, !dbg !1425
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_insn_slot(ptr noundef %slot, i32 noundef %dirty) #6 align 16 !dbg !1426 {
entry:
  %slot.addr = alloca ptr, align 8
  %dirty.addr = alloca i32, align 4
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !1430, metadata !DIExpression()), !dbg !1432
  store i32 %dirty, ptr %dirty.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dirty.addr, metadata !1431, metadata !DIExpression()), !dbg !1432
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !1432
  %1 = load i32, ptr %dirty.addr, align 4, !dbg !1432
  call void @__free_insn_slot(ptr noundef @kprobe_insn_slots, ptr noundef %0, i32 noundef %1) #14, !dbg !1432
  ret void, !dbg !1432
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_arm_kprobe(ptr noundef %p) #0 align 16 !dbg !1433 {
entry:
  %p.addr = alloca ptr, align 8
  %int3 = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1437, metadata !DIExpression()), !dbg !1439
  call void @llvm.lifetime.start.p0(i64 1, ptr %int3) #15, !dbg !1440
  call void @llvm.dbg.declare(metadata ptr %int3, metadata !1438, metadata !DIExpression()), !dbg !1441
  store i8 -52, ptr %int3, align 1, !dbg !1441
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1442
  %addr = getelementptr inbounds %struct.kprobe, ptr %0, i32 0, i32 3, !dbg !1443
  %1 = load ptr, ptr %addr, align 8, !dbg !1443
  %call = call ptr @text_poke(ptr noundef %1, ptr noundef %int3, i64 noundef 1) #14, !dbg !1444
  call void @text_poke_sync() #14, !dbg !1445
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1446
  %addr1 = getelementptr inbounds %struct.kprobe, ptr %2, i32 0, i32 3, !dbg !1447
  %3 = load ptr, ptr %addr1, align 8, !dbg !1447
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1448
  %opcode = getelementptr inbounds %struct.kprobe, ptr %4, i32 0, i32 8, !dbg !1449
  call void @perf_event_text_poke(ptr noundef %3, ptr noundef %opcode, i64 noundef 1, ptr noundef %int3, i64 noundef 1) #14, !dbg !1450
  call void @llvm.lifetime.end.p0(i64 1, ptr %int3) #15, !dbg !1451
  ret void, !dbg !1451
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1452 dso_local ptr @text_poke(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1455 dso_local void @text_poke_sync() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1458 dso_local void @perf_event_text_poke(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_disarm_kprobe(ptr noundef %p) #0 align 16 !dbg !1462 {
entry:
  %p.addr = alloca ptr, align 8
  %int3 = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1464, metadata !DIExpression()), !dbg !1466
  call void @llvm.lifetime.start.p0(i64 1, ptr %int3) #15, !dbg !1467
  call void @llvm.dbg.declare(metadata ptr %int3, metadata !1465, metadata !DIExpression()), !dbg !1468
  store i8 -52, ptr %int3, align 1, !dbg !1468
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1469
  %addr = getelementptr inbounds %struct.kprobe, ptr %0, i32 0, i32 3, !dbg !1470
  %1 = load ptr, ptr %addr, align 8, !dbg !1470
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1471
  %opcode = getelementptr inbounds %struct.kprobe, ptr %2, i32 0, i32 8, !dbg !1472
  call void @perf_event_text_poke(ptr noundef %1, ptr noundef %int3, i64 noundef 1, ptr noundef %opcode, i64 noundef 1) #14, !dbg !1473
  %3 = load ptr, ptr %p.addr, align 8, !dbg !1474
  %addr1 = getelementptr inbounds %struct.kprobe, ptr %3, i32 0, i32 3, !dbg !1475
  %4 = load ptr, ptr %addr1, align 8, !dbg !1475
  %5 = load ptr, ptr %p.addr, align 8, !dbg !1476
  %opcode2 = getelementptr inbounds %struct.kprobe, ptr %5, i32 0, i32 8, !dbg !1477
  %call = call ptr @text_poke(ptr noundef %4, ptr noundef %opcode2, i64 noundef 1) #14, !dbg !1478
  call void @text_poke_sync() #14, !dbg !1479
  call void @llvm.lifetime.end.p0(i64 1, ptr %int3) #15, !dbg !1480
  ret void, !dbg !1480
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_remove_kprobe(ptr noundef %p) #0 align 16 !dbg !1481 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1483, metadata !DIExpression()), !dbg !1484
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1485
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %0, i32 0, i32 9, !dbg !1487
  %insn = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 0, !dbg !1488
  %1 = load ptr, ptr %insn, align 8, !dbg !1488
  %tobool = icmp ne ptr %1, null, !dbg !1485
  br i1 %tobool, label %if.then, label %if.end, !dbg !1489

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1490
  %ainsn1 = getelementptr inbounds %struct.kprobe, ptr %2, i32 0, i32 9, !dbg !1492
  %insn2 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn1, i32 0, i32 0, !dbg !1493
  %3 = load ptr, ptr %insn2, align 8, !dbg !1493
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1494
  %ainsn3 = getelementptr inbounds %struct.kprobe, ptr %4, i32 0, i32 9, !dbg !1495
  %insn4 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn3, i32 0, i32 0, !dbg !1496
  %5 = load ptr, ptr %insn4, align 8, !dbg !1496
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1497
  %ainsn5 = getelementptr inbounds %struct.kprobe, ptr %6, i32 0, i32 9, !dbg !1498
  %tp_len = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn5, i32 0, i32 6, !dbg !1499
  %7 = load i32, ptr %tp_len, align 8, !dbg !1499
  %conv = sext i32 %7 to i64, !dbg !1497
  call void @perf_event_text_poke(ptr noundef %3, ptr noundef %5, i64 noundef %conv, ptr noundef null, i64 noundef 0) #14, !dbg !1500
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1501
  %ainsn6 = getelementptr inbounds %struct.kprobe, ptr %8, i32 0, i32 9, !dbg !1502
  %insn7 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn6, i32 0, i32 0, !dbg !1503
  %9 = load ptr, ptr %insn7, align 8, !dbg !1503
  %10 = load ptr, ptr %p.addr, align 8, !dbg !1504
  %ainsn8 = getelementptr inbounds %struct.kprobe, ptr %10, i32 0, i32 9, !dbg !1505
  %boostable = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn8, i32 0, i32 1, !dbg !1506
  %bf.load = load i8, ptr %boostable, align 8, !dbg !1506
  %bf.clear = and i8 %bf.load, 1, !dbg !1506
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1506
  call void @free_insn_slot(ptr noundef %9, i32 noundef %bf.cast) #14, !dbg !1507
  %11 = load ptr, ptr %p.addr, align 8, !dbg !1508
  %ainsn9 = getelementptr inbounds %struct.kprobe, ptr %11, i32 0, i32 9, !dbg !1509
  %insn10 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn9, i32 0, i32 0, !dbg !1510
  store ptr null, ptr %insn10, align 8, !dbg !1511
  br label %if.end, !dbg !1512

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1513
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kprobe_post_process(ptr noundef %cur, ptr noundef %regs, ptr noundef %kcb) #0 align 16 !dbg !1514 {
entry:
  %cur.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %kcb.addr = alloca ptr, align 8
  store ptr %cur, ptr %cur.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cur.addr, metadata !1518, metadata !DIExpression()), !dbg !1521
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1519, metadata !DIExpression()), !dbg !1522
  store ptr %kcb, ptr %kcb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcb.addr, metadata !1520, metadata !DIExpression()), !dbg !1523
  %0 = load ptr, ptr %kcb.addr, align 8, !dbg !1524
  %kprobe_status = getelementptr inbounds %struct.kprobe_ctlblk, ptr %0, i32 0, i32 0, !dbg !1526
  %1 = load i64, ptr %kprobe_status, align 8, !dbg !1526
  %cmp = icmp eq i64 %1, 4, !dbg !1527
  br i1 %cmp, label %if.then, label %if.else, !dbg !1528

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %kcb.addr, align 8, !dbg !1529
  call void @restore_previous_kprobe(ptr noundef %2) #14, !dbg !1531
  br label %if.end4, !dbg !1532

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %kcb.addr, align 8, !dbg !1533
  %kprobe_status1 = getelementptr inbounds %struct.kprobe_ctlblk, ptr %3, i32 0, i32 0, !dbg !1535
  store i64 8, ptr %kprobe_status1, align 8, !dbg !1536
  %4 = load ptr, ptr %cur.addr, align 8, !dbg !1537
  %post_handler = getelementptr inbounds %struct.kprobe, ptr %4, i32 0, i32 7, !dbg !1539
  %5 = load ptr, ptr %post_handler, align 8, !dbg !1539
  %tobool = icmp ne ptr %5, null, !dbg !1537
  br i1 %tobool, label %if.then2, label %if.end, !dbg !1540

if.then2:                                         ; preds = %if.else
  %6 = load ptr, ptr %cur.addr, align 8, !dbg !1541
  %post_handler3 = getelementptr inbounds %struct.kprobe, ptr %6, i32 0, i32 7, !dbg !1542
  %7 = load ptr, ptr %post_handler3, align 8, !dbg !1542
  %8 = load ptr, ptr %cur.addr, align 8, !dbg !1543
  %9 = load ptr, ptr %regs.addr, align 8, !dbg !1544
  call void %7(ptr noundef %8, ptr noundef %9, i64 noundef 0) #14, !dbg !1541
  br label %if.end, !dbg !1541

if.end:                                           ; preds = %if.then2, %if.else
  call void @reset_current_kprobe() #14, !dbg !1545
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  ret void, !dbg !1546
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @setup_singlestep(ptr noundef %p, ptr noundef %regs, ptr noundef %kcb, i32 noundef %reenter) #0 align 16 !dbg !1547 {
entry:
  %p.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %kcb.addr = alloca ptr, align 8
  %reenter.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1551, metadata !DIExpression()), !dbg !1555
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1552, metadata !DIExpression()), !dbg !1556
  store ptr %kcb, ptr %kcb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcb.addr, metadata !1553, metadata !DIExpression()), !dbg !1557
  store i32 %reenter, ptr %reenter.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reenter.addr, metadata !1554, metadata !DIExpression()), !dbg !1558
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1559
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !1561
  %2 = load i32, ptr %reenter.addr, align 4, !dbg !1562
  %call = call i32 @setup_detour_execution(ptr noundef %0, ptr noundef %1, i32 noundef %2) #14, !dbg !1563
  %tobool = icmp ne i32 %call, 0, !dbg !1563
  br i1 %tobool, label %if.then, label %if.end, !dbg !1564

if.then:                                          ; preds = %entry
  br label %return, !dbg !1565

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %reenter.addr, align 4, !dbg !1566
  %tobool1 = icmp ne i32 %3, 0, !dbg !1566
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !1568

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %kcb.addr, align 8, !dbg !1569
  call void @save_previous_kprobe(ptr noundef %4) #14, !dbg !1571
  %5 = load ptr, ptr %p.addr, align 8, !dbg !1572
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !1573
  %7 = load ptr, ptr %kcb.addr, align 8, !dbg !1574
  call void @set_current_kprobe(ptr noundef %5, ptr noundef %6, ptr noundef %7) #14, !dbg !1575
  %8 = load ptr, ptr %kcb.addr, align 8, !dbg !1576
  %kprobe_status = getelementptr inbounds %struct.kprobe_ctlblk, ptr %8, i32 0, i32 0, !dbg !1577
  store i64 4, ptr %kprobe_status, align 8, !dbg !1578
  br label %if.end4, !dbg !1579

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %kcb.addr, align 8, !dbg !1580
  %kprobe_status3 = getelementptr inbounds %struct.kprobe_ctlblk, ptr %9, i32 0, i32 0, !dbg !1581
  store i64 2, ptr %kprobe_status3, align 8, !dbg !1582
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %10 = load ptr, ptr %p.addr, align 8, !dbg !1583
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %10, i32 0, i32 9, !dbg !1585
  %emulate_op = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 5, !dbg !1586
  %11 = load ptr, ptr %emulate_op, align 8, !dbg !1586
  %tobool5 = icmp ne ptr %11, null, !dbg !1583
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !1587

if.then6:                                         ; preds = %if.end4
  %12 = load ptr, ptr %p.addr, align 8, !dbg !1588
  %ainsn7 = getelementptr inbounds %struct.kprobe, ptr %12, i32 0, i32 9, !dbg !1590
  %emulate_op8 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn7, i32 0, i32 5, !dbg !1591
  %13 = load ptr, ptr %emulate_op8, align 8, !dbg !1591
  %14 = load ptr, ptr %p.addr, align 8, !dbg !1592
  %15 = load ptr, ptr %regs.addr, align 8, !dbg !1593
  call void %13(ptr noundef %14, ptr noundef %15) #14, !dbg !1588
  %16 = load ptr, ptr %p.addr, align 8, !dbg !1594
  %17 = load ptr, ptr %regs.addr, align 8, !dbg !1595
  %18 = load ptr, ptr %kcb.addr, align 8, !dbg !1596
  call void @kprobe_post_process(ptr noundef %16, ptr noundef %17, ptr noundef %18) #14, !dbg !1597
  br label %return, !dbg !1598

if.end9:                                          ; preds = %if.end4
  %19 = load ptr, ptr %regs.addr, align 8, !dbg !1599
  %flags = getelementptr inbounds %struct.pt_regs, ptr %19, i32 0, i32 18, !dbg !1600
  %20 = load i64, ptr %flags, align 8, !dbg !1601
  %and = and i64 %20, -513, !dbg !1601
  store i64 %and, ptr %flags, align 8, !dbg !1601
  %21 = load ptr, ptr %p.addr, align 8, !dbg !1602
  %ainsn10 = getelementptr inbounds %struct.kprobe, ptr %21, i32 0, i32 9, !dbg !1603
  %insn = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn10, i32 0, i32 0, !dbg !1604
  %22 = load ptr, ptr %insn, align 8, !dbg !1604
  %23 = ptrtoint ptr %22 to i64, !dbg !1605
  %24 = load ptr, ptr %regs.addr, align 8, !dbg !1606
  %ip = getelementptr inbounds %struct.pt_regs, ptr %24, i32 0, i32 16, !dbg !1607
  store i64 %23, ptr %ip, align 8, !dbg !1608
  br label %return, !dbg !1609

return:                                           ; preds = %if.end9, %if.then6, %if.then
  ret void, !dbg !1609
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @resume_singlestep(ptr noundef %p, ptr noundef %regs, ptr noundef %kcb) #0 align 16 !dbg !1610 {
entry:
  %p.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %kcb.addr = alloca ptr, align 8
  %copy_ip = alloca i64, align 8
  %orig_ip = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1612, metadata !DIExpression()), !dbg !1617
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1613, metadata !DIExpression()), !dbg !1618
  store ptr %kcb, ptr %kcb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcb.addr, metadata !1614, metadata !DIExpression()), !dbg !1619
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy_ip) #15, !dbg !1620
  call void @llvm.dbg.declare(metadata ptr %copy_ip, metadata !1615, metadata !DIExpression()), !dbg !1621
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1622
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %0, i32 0, i32 9, !dbg !1623
  %insn = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 0, !dbg !1624
  %1 = load ptr, ptr %insn, align 8, !dbg !1624
  %2 = ptrtoint ptr %1 to i64, !dbg !1625
  store i64 %2, ptr %copy_ip, align 8, !dbg !1621
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_ip) #15, !dbg !1626
  call void @llvm.dbg.declare(metadata ptr %orig_ip, metadata !1616, metadata !DIExpression()), !dbg !1627
  %3 = load ptr, ptr %p.addr, align 8, !dbg !1628
  %addr = getelementptr inbounds %struct.kprobe, ptr %3, i32 0, i32 3, !dbg !1629
  %4 = load ptr, ptr %addr, align 8, !dbg !1629
  %5 = ptrtoint ptr %4 to i64, !dbg !1630
  store i64 %5, ptr %orig_ip, align 8, !dbg !1627
  %6 = load ptr, ptr %kcb.addr, align 8, !dbg !1631
  %kprobe_saved_flags = getelementptr inbounds %struct.kprobe_ctlblk, ptr %6, i32 0, i32 2, !dbg !1632
  %7 = load i64, ptr %kprobe_saved_flags, align 8, !dbg !1632
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !1633
  %flags = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 18, !dbg !1634
  %9 = load i64, ptr %flags, align 8, !dbg !1635
  %or = or i64 %9, %7, !dbg !1635
  store i64 %or, ptr %flags, align 8, !dbg !1635
  %10 = load i64, ptr %orig_ip, align 8, !dbg !1636
  %11 = load i64, ptr %copy_ip, align 8, !dbg !1637
  %sub = sub i64 %10, %11, !dbg !1638
  %sub1 = sub i64 %sub, 1, !dbg !1639
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !1640
  %ip = getelementptr inbounds %struct.pt_regs, ptr %12, i32 0, i32 16, !dbg !1641
  %13 = load i64, ptr %ip, align 8, !dbg !1642
  %add = add i64 %13, %sub1, !dbg !1642
  store i64 %add, ptr %ip, align 8, !dbg !1642
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_ip) #15, !dbg !1643
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy_ip) #15, !dbg !1643
  ret void, !dbg !1643
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @reenter_kprobe(ptr noundef %p, ptr noundef %regs, ptr noundef %kcb) #0 align 16 !dbg !1644 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %kcb.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp21 = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1648, metadata !DIExpression()), !dbg !1657
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1649, metadata !DIExpression()), !dbg !1658
  store ptr %kcb, ptr %kcb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcb.addr, metadata !1650, metadata !DIExpression()), !dbg !1659
  %0 = load ptr, ptr %kcb.addr, align 8, !dbg !1660
  %kprobe_status = getelementptr inbounds %struct.kprobe_ctlblk, ptr %0, i32 0, i32 0, !dbg !1661
  %1 = load i64, ptr %kprobe_status, align 8, !dbg !1661
  switch i64 %1, label %sw.default [
    i64 8, label %sw.bb
    i64 1, label %sw.bb
    i64 2, label %sw.bb
    i64 4, label %sw.bb1
  ], !dbg !1662

sw.bb:                                            ; preds = %entry, %entry, %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1663
  call void @kprobes_inc_nmissed_count(ptr noundef %2) #14, !dbg !1664
  %3 = load ptr, ptr %p.addr, align 8, !dbg !1665
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !1666
  %5 = load ptr, ptr %kcb.addr, align 8, !dbg !1667
  call void @setup_singlestep(ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef 1) #14, !dbg !1668
  br label %sw.epilog, !dbg !1669

sw.bb1:                                           ; preds = %entry
  br label %do.body, !dbg !1670

do.body:                                          ; preds = %sw.bb1
  br label %do.end, !dbg !1672

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #17, !dbg !1670
  store i32 %call, ptr %tmp, align 4, !dbg !1672
  %6 = load i32, ptr %tmp, align 4, !dbg !1670
  %7 = load ptr, ptr %p.addr, align 8, !dbg !1674
  call void @dump_kprobe(ptr noundef %7) #14, !dbg !1675
  br label %do.body2, !dbg !1676

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !1677

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1679

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !1677

do.body5:                                         ; preds = %do.end4
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 947, i32 0, i64 12) #15, !dbg !1681, !srcloc !1683
  br label %do.end6, !dbg !1681

do.end6:                                          ; preds = %do.body5
  unreachable, !dbg !1677

do.end7:                                          ; No predecessors!
  br label %sw.default, !dbg !1677

sw.default:                                       ; preds = %entry, %do.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1684
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1651, metadata !DIExpression()), !dbg !1684
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1684
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !1685
  %tobool = icmp ne i32 %8, 0, !dbg !1685
  %lnot = xor i1 %tobool, true, !dbg !1685
  %lnot8 = xor i1 %lnot, true, !dbg !1685
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !1685
  %conv = sext i32 %lnot.ext to i64, !dbg !1685
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1685
  %tobool9 = icmp ne i64 %expval, 0, !dbg !1685
  br i1 %tobool9, label %if.then, label %if.end, !dbg !1684

if.then:                                          ; preds = %sw.default
  br label %do.body10, !dbg !1685

do.body10:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !1686
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1654, metadata !DIExpression()), !dbg !1686
  store i32 2305, ptr %__flags, align 4, !dbg !1686
  br label %do.body11, !dbg !1686

do.body11:                                        ; preds = %do.body10
  br label %do.cond, !dbg !1687

do.cond:                                          ; preds = %do.body11
  br label %do.end12, !dbg !1687

do.end12:                                         ; preds = %do.cond
  br label %do.body13, !dbg !1686

do.body13:                                        ; preds = %do.end12
  %9 = load i32, ptr %__flags, align 4, !dbg !1689
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 950, i32 %9, i64 12) #15, !dbg !1689, !srcloc !1691
  br label %do.cond14, !dbg !1689

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1689

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !1686

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !1692

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1692

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !1685
  br label %do.cond19, !dbg !1686

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !1686

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !1686

if.end:                                           ; preds = %do.end20, %sw.default
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !1684
  %tobool22 = icmp ne i32 %10, 0, !dbg !1684
  %lnot23 = xor i1 %tobool22, true, !dbg !1684
  %lnot25 = xor i1 %lnot23, true, !dbg !1684
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !1684
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !1684
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !1684
  store i64 %expval28, ptr %tmp21, align 8, !dbg !1685
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1694
  %11 = load i64, ptr %tmp21, align 8, !dbg !1684
  store i32 0, ptr %retval, align 4, !dbg !1695
  br label %return, !dbg !1695

sw.epilog:                                        ; preds = %sw.bb
  store i32 1, ptr %retval, align 4, !dbg !1696
  br label %return, !dbg !1696

return:                                           ; preds = %sw.epilog, %if.end
  %12 = load i32, ptr %retval, align 4, !dbg !1697
  ret i32 %12, !dbg !1697
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kprobe_int3_handler(ptr noundef %regs) #0 align 16 !dbg !1698 {
entry:
  %retval = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %kcb = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1702, metadata !DIExpression()), !dbg !1706
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #15, !dbg !1707
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !1703, metadata !DIExpression()), !dbg !1708
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !1709
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1704, metadata !DIExpression()), !dbg !1710
  call void @llvm.lifetime.start.p0(i64 8, ptr %kcb) #15, !dbg !1711
  call void @llvm.dbg.declare(metadata ptr %kcb, metadata !1705, metadata !DIExpression()), !dbg !1712
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !1713
  %call = call i32 @user_mode(ptr noundef %0) #14, !dbg !1715
  %tobool = icmp ne i32 %call, 0, !dbg !1715
  br i1 %tobool, label %if.then, label %if.end, !dbg !1716

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1717

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !1718
  %ip = getelementptr inbounds %struct.pt_regs, ptr %1, i32 0, i32 16, !dbg !1719
  %2 = load i64, ptr %ip, align 8, !dbg !1719
  %sub = sub i64 %2, 1, !dbg !1720
  %3 = inttoptr i64 %sub to ptr, !dbg !1721
  store ptr %3, ptr %addr, align 8, !dbg !1722
  %call1 = call ptr @get_kprobe_ctlblk() #14, !dbg !1723
  store ptr %call1, ptr %kcb, align 8, !dbg !1724
  %4 = load ptr, ptr %addr, align 8, !dbg !1725
  %call2 = call ptr @get_kprobe(ptr noundef %4) #14, !dbg !1726
  store ptr %call2, ptr %p, align 8, !dbg !1727
  %5 = load ptr, ptr %p, align 8, !dbg !1728
  %tobool3 = icmp ne ptr %5, null, !dbg !1728
  br i1 %tobool3, label %if.then4, label %if.else20, !dbg !1730

if.then4:                                         ; preds = %if.end
  %call5 = call ptr @kprobe_running() #14, !dbg !1731
  %tobool6 = icmp ne ptr %call5, null, !dbg !1731
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !1734

if.then7:                                         ; preds = %if.then4
  %6 = load ptr, ptr %p, align 8, !dbg !1735
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !1738
  %8 = load ptr, ptr %kcb, align 8, !dbg !1739
  %call8 = call i32 @reenter_kprobe(ptr noundef %6, ptr noundef %7, ptr noundef %8) #14, !dbg !1740
  %tobool9 = icmp ne i32 %call8, 0, !dbg !1740
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1741

if.then10:                                        ; preds = %if.then7
  store i32 1, ptr %retval, align 4, !dbg !1742
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1742

if.end11:                                         ; preds = %if.then7
  br label %if.end19, !dbg !1743

if.else:                                          ; preds = %if.then4
  %9 = load ptr, ptr %p, align 8, !dbg !1744
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !1746
  %11 = load ptr, ptr %kcb, align 8, !dbg !1747
  call void @set_current_kprobe(ptr noundef %9, ptr noundef %10, ptr noundef %11) #14, !dbg !1748
  %12 = load ptr, ptr %kcb, align 8, !dbg !1749
  %kprobe_status = getelementptr inbounds %struct.kprobe_ctlblk, ptr %12, i32 0, i32 0, !dbg !1750
  store i64 1, ptr %kprobe_status, align 8, !dbg !1751
  %13 = load ptr, ptr %p, align 8, !dbg !1752
  %pre_handler = getelementptr inbounds %struct.kprobe, ptr %13, i32 0, i32 6, !dbg !1754
  %14 = load ptr, ptr %pre_handler, align 8, !dbg !1754
  %tobool12 = icmp ne ptr %14, null, !dbg !1752
  br i1 %tobool12, label %lor.lhs.false, label %if.then16, !dbg !1755

lor.lhs.false:                                    ; preds = %if.else
  %15 = load ptr, ptr %p, align 8, !dbg !1756
  %pre_handler13 = getelementptr inbounds %struct.kprobe, ptr %15, i32 0, i32 6, !dbg !1757
  %16 = load ptr, ptr %pre_handler13, align 8, !dbg !1757
  %17 = load ptr, ptr %p, align 8, !dbg !1758
  %18 = load ptr, ptr %regs.addr, align 8, !dbg !1759
  %call14 = call i32 %16(ptr noundef %17, ptr noundef %18) #14, !dbg !1756
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1756
  br i1 %tobool15, label %if.else17, label %if.then16, !dbg !1760

if.then16:                                        ; preds = %lor.lhs.false, %if.else
  %19 = load ptr, ptr %p, align 8, !dbg !1761
  %20 = load ptr, ptr %regs.addr, align 8, !dbg !1762
  %21 = load ptr, ptr %kcb, align 8, !dbg !1763
  call void @setup_singlestep(ptr noundef %19, ptr noundef %20, ptr noundef %21, i32 noundef 0) #14, !dbg !1764
  br label %if.end18, !dbg !1764

if.else17:                                        ; preds = %lor.lhs.false
  call void @reset_current_kprobe() #14, !dbg !1765
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  store i32 1, ptr %retval, align 4, !dbg !1766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1766

if.end19:                                         ; preds = %if.end11
  br label %if.end33, !dbg !1767

if.else20:                                        ; preds = %if.end
  %22 = load ptr, ptr %kcb, align 8, !dbg !1768
  %call21 = call i32 @kprobe_is_ss(ptr noundef %22) #14, !dbg !1770
  %tobool22 = icmp ne i32 %call21, 0, !dbg !1770
  br i1 %tobool22, label %if.then23, label %if.end32, !dbg !1771

if.then23:                                        ; preds = %if.else20
  %call24 = call ptr @kprobe_running() #14, !dbg !1772
  store ptr %call24, ptr %p, align 8, !dbg !1774
  %23 = load ptr, ptr %p, align 8, !dbg !1775
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %23, i32 0, i32 9, !dbg !1777
  %insn = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 0, !dbg !1778
  %24 = load ptr, ptr %insn, align 8, !dbg !1778
  %25 = ptrtoint ptr %24 to i64, !dbg !1779
  %26 = load ptr, ptr %regs.addr, align 8, !dbg !1780
  %ip25 = getelementptr inbounds %struct.pt_regs, ptr %26, i32 0, i32 16, !dbg !1781
  %27 = load i64, ptr %ip25, align 8, !dbg !1781
  %cmp = icmp ult i64 %25, %27, !dbg !1782
  br i1 %cmp, label %land.lhs.true, label %if.end31, !dbg !1783

land.lhs.true:                                    ; preds = %if.then23
  %28 = load ptr, ptr %p, align 8, !dbg !1784
  %ainsn26 = getelementptr inbounds %struct.kprobe, ptr %28, i32 0, i32 9, !dbg !1785
  %insn27 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn26, i32 0, i32 0, !dbg !1786
  %29 = load ptr, ptr %insn27, align 8, !dbg !1786
  %30 = ptrtoint ptr %29 to i64, !dbg !1787
  %add = add i64 %30, 15, !dbg !1788
  %31 = load ptr, ptr %regs.addr, align 8, !dbg !1789
  %ip28 = getelementptr inbounds %struct.pt_regs, ptr %31, i32 0, i32 16, !dbg !1790
  %32 = load i64, ptr %ip28, align 8, !dbg !1790
  %cmp29 = icmp ugt i64 %add, %32, !dbg !1791
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !1792

if.then30:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %p, align 8, !dbg !1793
  %34 = load ptr, ptr %regs.addr, align 8, !dbg !1795
  %35 = load ptr, ptr %kcb, align 8, !dbg !1796
  call void @resume_singlestep(ptr noundef %33, ptr noundef %34, ptr noundef %35) #14, !dbg !1797
  %36 = load ptr, ptr %p, align 8, !dbg !1798
  %37 = load ptr, ptr %regs.addr, align 8, !dbg !1799
  %38 = load ptr, ptr %kcb, align 8, !dbg !1800
  call void @kprobe_post_process(ptr noundef %36, ptr noundef %37, ptr noundef %38) #14, !dbg !1801
  store i32 1, ptr %retval, align 4, !dbg !1802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1802

if.end31:                                         ; preds = %land.lhs.true, %if.then23
  br label %if.end32, !dbg !1803

if.end32:                                         ; preds = %if.end31, %if.else20
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end19
  store i32 0, ptr %retval, align 4, !dbg !1804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1804

cleanup:                                          ; preds = %if.end33, %if.then30, %if.end18, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kcb) #15, !dbg !1805
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !1805
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #15, !dbg !1805
  %39 = load i32, ptr %retval, align 4, !dbg !1805
  ret i32 %39, !dbg !1805
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_mode(ptr noundef %regs) #2 align 16 !dbg !1806 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1808, metadata !DIExpression()), !dbg !1809
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !1810
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !1811
  %2 = load i16, ptr %1, align 8, !dbg !1811
  %conv = zext i16 %2 to i32, !dbg !1810
  %and = and i32 %conv, 3, !dbg !1812
  %tobool = icmp ne i32 %and, 0, !dbg !1813
  %lnot = xor i1 %tobool, true, !dbg !1813
  %lnot1 = xor i1 %lnot, true, !dbg !1814
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1814
  ret i32 %lnot.ext, !dbg !1815
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_kprobe_ctlblk() #6 align 16 !dbg !1816 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  br label %do.body, !dbg !1825

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1826
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1820, metadata !DIExpression()), !dbg !1826
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1826
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1826
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1825
  br label %do.end, !dbg !1826

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !1827
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !1823, metadata !DIExpression()), !dbg !1827
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @kprobe_ctlblk) #18, !dbg !1827, !srcloc !1828
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !1827
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !1827
  %3 = inttoptr i64 %2 to ptr, !dbg !1827
  store ptr %3, ptr %tmp1, align 8, !dbg !1827
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #15, !dbg !1825
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1827
  store ptr %4, ptr %tmp, align 8, !dbg !1826
  %5 = load ptr, ptr %tmp, align 8, !dbg !1825
  ret ptr %5, !dbg !1829
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1830 dso_local ptr @get_kprobe(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kprobe_running() #6 align 16 !dbg !1833 {
entry:
  %tmp = alloca ptr, align 8
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  call void @__this_cpu_preempt_check(ptr noundef @.str.4) #14, !dbg !1844
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !1845
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1837, metadata !DIExpression()), !dbg !1845
  br label %do.body, !dbg !1845

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1846
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1840, metadata !DIExpression()), !dbg !1846
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1846
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1846
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1845
  br label %do.cond, !dbg !1846

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1846

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !1847
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1842, metadata !DIExpression()), !dbg !1847
  %1 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @current_kprobe) #18, !dbg !1847, !srcloc !1848
  store i64 %1, ptr %pfo_val__, align 8, !dbg !1847
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !1847
  %3 = inttoptr i64 %2 to ptr, !dbg !1847
  store ptr %3, ptr %tmp1, align 8, !dbg !1847
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !1845
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1847
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !1845
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !1845
  store ptr %5, ptr %tmp2, align 8, !dbg !1845
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !1844
  %6 = load ptr, ptr %tmp2, align 8, !dbg !1845
  store ptr %6, ptr %tmp, align 8, !dbg !1844
  %7 = load ptr, ptr %tmp, align 8, !dbg !1844
  ret ptr %7, !dbg !1849
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_current_kprobe(ptr noundef %p, ptr noundef %regs, ptr noundef %kcb) #2 align 16 !dbg !1850 {
entry:
  %p.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %kcb.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1852, metadata !DIExpression()), !dbg !1861
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1853, metadata !DIExpression()), !dbg !1862
  store ptr %kcb, ptr %kcb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcb.addr, metadata !1854, metadata !DIExpression()), !dbg !1863
  call void @__this_cpu_preempt_check(ptr noundef @.str.5) #14, !dbg !1864
  br label %do.body, !dbg !1864

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1865

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1866
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1855, metadata !DIExpression()), !dbg !1866
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1866
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1866
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1865
  br label %do.end, !dbg !1866

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1865

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #15, !dbg !1867
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1859, metadata !DIExpression()), !dbg !1867
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1867
  %2 = ptrtoint ptr %1 to i64, !dbg !1867
  store i64 %2, ptr %pto_val__, align 8, !dbg !1867
  %3 = load i64, ptr %pto_val__, align 8, !dbg !1867
  call void asm "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @current_kprobe, i64 %3, ptr elementtype(ptr) @current_kprobe) #15, !dbg !1867, !srcloc !1868
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #15, !dbg !1865
  br label %do.end3, !dbg !1867

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1865

do.end4:                                          ; preds = %do.end3
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !1869
  %flags = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 18, !dbg !1870
  %5 = load i64, ptr %flags, align 8, !dbg !1870
  %and = and i64 %5, 512, !dbg !1871
  %6 = load ptr, ptr %kcb.addr, align 8, !dbg !1872
  %kprobe_old_flags = getelementptr inbounds %struct.kprobe_ctlblk, ptr %6, i32 0, i32 1, !dbg !1873
  store i64 %and, ptr %kprobe_old_flags, align 8, !dbg !1874
  %7 = load ptr, ptr %kcb.addr, align 8, !dbg !1875
  %kprobe_saved_flags = getelementptr inbounds %struct.kprobe_ctlblk, ptr %7, i32 0, i32 2, !dbg !1876
  store i64 %and, ptr %kprobe_saved_flags, align 8, !dbg !1877
  ret void, !dbg !1878
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reset_current_kprobe() #6 align 16 !dbg !1879 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  call void @__this_cpu_preempt_check(ptr noundef @.str.5) #14, !dbg !1887
  br label %do.body, !dbg !1887

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1888

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1889
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1881, metadata !DIExpression()), !dbg !1889
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1889
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1889
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1888
  br label %do.end, !dbg !1889

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1888

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #15, !dbg !1890
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1885, metadata !DIExpression()), !dbg !1890
  store i64 0, ptr %pto_val__, align 8, !dbg !1890
  %1 = load i64, ptr %pto_val__, align 8, !dbg !1890
  call void asm "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @current_kprobe, i64 %1, ptr elementtype(ptr) @current_kprobe) #15, !dbg !1890, !srcloc !1891
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #15, !dbg !1888
  br label %do.end3, !dbg !1890

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1888

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !1892
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kprobe_is_ss(ptr noundef %kcb) #2 align 16 !dbg !1893 {
entry:
  %kcb.addr = alloca ptr, align 8
  store ptr %kcb, ptr %kcb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcb.addr, metadata !1897, metadata !DIExpression()), !dbg !1898
  %0 = load ptr, ptr %kcb.addr, align 8, !dbg !1899
  %kprobe_status = getelementptr inbounds %struct.kprobe_ctlblk, ptr %0, i32 0, i32 0, !dbg !1900
  %1 = load i64, ptr %kprobe_status, align 8, !dbg !1900
  %cmp = icmp eq i64 %1, 2, !dbg !1901
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !1902

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %kcb.addr, align 8, !dbg !1903
  %kprobe_status1 = getelementptr inbounds %struct.kprobe_ctlblk, ptr %2, i32 0, i32 0, !dbg !1904
  %3 = load i64, ptr %kprobe_status1, align 8, !dbg !1904
  %cmp2 = icmp eq i64 %3, 4, !dbg !1905
  br label %lor.end, !dbg !1902

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32, !dbg !1902
  ret i32 %lor.ext, !dbg !1906
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kprobe_fault_handler(ptr noundef %regs, i32 noundef %trapnr) #0 align 16 !dbg !1907 {
entry:
  %regs.addr = alloca ptr, align 8
  %trapnr.addr = alloca i32, align 4
  %cur = alloca ptr, align 8
  %kcb = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1911, metadata !DIExpression()), !dbg !1922
  store i32 %trapnr, ptr %trapnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trapnr.addr, metadata !1912, metadata !DIExpression()), !dbg !1923
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #15, !dbg !1924
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !1913, metadata !DIExpression()), !dbg !1925
  %call = call ptr @kprobe_running() #14, !dbg !1926
  store ptr %call, ptr %cur, align 8, !dbg !1925
  call void @llvm.lifetime.start.p0(i64 8, ptr %kcb) #15, !dbg !1927
  call void @llvm.dbg.declare(metadata ptr %kcb, metadata !1914, metadata !DIExpression()), !dbg !1928
  %call1 = call ptr @get_kprobe_ctlblk() #14, !dbg !1929
  store ptr %call1, ptr %kcb, align 8, !dbg !1928
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !1930
  %ip = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 16, !dbg !1930
  %1 = load i64, ptr %ip, align 8, !dbg !1930
  %2 = load ptr, ptr %cur, align 8, !dbg !1930
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %2, i32 0, i32 9, !dbg !1930
  %insn = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 0, !dbg !1930
  %3 = load ptr, ptr %insn, align 8, !dbg !1930
  %4 = ptrtoint ptr %3 to i64, !dbg !1930
  %cmp = icmp eq i64 %1, %4, !dbg !1930
  %lnot = xor i1 %cmp, true, !dbg !1930
  %lnot2 = xor i1 %lnot, true, !dbg !1930
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1930
  %conv = sext i32 %lnot.ext to i64, !dbg !1930
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1930
  %tobool = icmp ne i64 %expval, 0, !dbg !1930
  br i1 %tobool, label %if.then, label %if.end43, !dbg !1931

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1932
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1915, metadata !DIExpression()), !dbg !1932
  %5 = load ptr, ptr %kcb, align 8, !dbg !1932
  %kprobe_status = getelementptr inbounds %struct.kprobe_ctlblk, ptr %5, i32 0, i32 0, !dbg !1932
  %6 = load i64, ptr %kprobe_status, align 8, !dbg !1932
  %cmp3 = icmp ne i64 %6, 2, !dbg !1932
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !1932

land.rhs:                                         ; preds = %if.then
  %7 = load ptr, ptr %kcb, align 8, !dbg !1932
  %kprobe_status5 = getelementptr inbounds %struct.kprobe_ctlblk, ptr %7, i32 0, i32 0, !dbg !1932
  %8 = load i64, ptr %kprobe_status5, align 8, !dbg !1932
  %cmp6 = icmp ne i64 %8, 4, !dbg !1932
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %9 = phi i1 [ false, %if.then ], [ %cmp6, %land.rhs ], !dbg !1933
  %lnot8 = xor i1 %9, true, !dbg !1932
  %lnot10 = xor i1 %lnot8, true, !dbg !1932
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !1932
  store i32 %lnot.ext11, ptr %__ret_warn_on, align 4, !dbg !1932
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !1934
  %tobool12 = icmp ne i32 %10, 0, !dbg !1934
  %lnot13 = xor i1 %tobool12, true, !dbg !1934
  %lnot15 = xor i1 %lnot13, true, !dbg !1934
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !1934
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !1934
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !1934
  %tobool19 = icmp ne i64 %expval18, 0, !dbg !1934
  br i1 %tobool19, label %if.then20, label %if.end, !dbg !1932

if.then20:                                        ; preds = %land.end
  br label %do.body, !dbg !1934

do.body:                                          ; preds = %if.then20
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !1935
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1919, metadata !DIExpression()), !dbg !1935
  store i32 2305, ptr %__flags, align 4, !dbg !1935
  br label %do.body21, !dbg !1935

do.body21:                                        ; preds = %do.body
  br label %do.cond, !dbg !1936

do.cond:                                          ; preds = %do.body21
  br label %do.end, !dbg !1936

do.end:                                           ; preds = %do.cond
  br label %do.body22, !dbg !1935

do.body22:                                        ; preds = %do.end
  %11 = load i32, ptr %__flags, align 4, !dbg !1938
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 1031, i32 %11, i64 12) #15, !dbg !1938, !srcloc !1940
  br label %do.cond23, !dbg !1938

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !1938

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !1935

do.body25:                                        ; preds = %do.end24
  br label %do.cond26, !dbg !1941

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !1941

do.end27:                                         ; preds = %do.cond26
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !1934
  br label %do.cond28, !dbg !1935

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !1935

do.end29:                                         ; preds = %do.cond28
  br label %if.end, !dbg !1935

if.end:                                           ; preds = %do.end29, %land.end
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !1932
  %tobool30 = icmp ne i32 %12, 0, !dbg !1932
  %lnot31 = xor i1 %tobool30, true, !dbg !1932
  %lnot33 = xor i1 %lnot31, true, !dbg !1932
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !1932
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !1932
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 0), !dbg !1932
  store i64 %expval36, ptr %tmp, align 8, !dbg !1934
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1943
  %13 = load i64, ptr %tmp, align 8, !dbg !1932
  %14 = load ptr, ptr %cur, align 8, !dbg !1944
  %addr = getelementptr inbounds %struct.kprobe, ptr %14, i32 0, i32 3, !dbg !1945
  %15 = load ptr, ptr %addr, align 8, !dbg !1945
  %16 = ptrtoint ptr %15 to i64, !dbg !1946
  %17 = load ptr, ptr %regs.addr, align 8, !dbg !1947
  %ip37 = getelementptr inbounds %struct.pt_regs, ptr %17, i32 0, i32 16, !dbg !1948
  store i64 %16, ptr %ip37, align 8, !dbg !1949
  %18 = load ptr, ptr %kcb, align 8, !dbg !1950
  %kprobe_old_flags = getelementptr inbounds %struct.kprobe_ctlblk, ptr %18, i32 0, i32 1, !dbg !1951
  %19 = load i64, ptr %kprobe_old_flags, align 8, !dbg !1951
  %20 = load ptr, ptr %regs.addr, align 8, !dbg !1952
  %flags = getelementptr inbounds %struct.pt_regs, ptr %20, i32 0, i32 18, !dbg !1953
  %21 = load i64, ptr %flags, align 8, !dbg !1954
  %or = or i64 %21, %19, !dbg !1954
  store i64 %or, ptr %flags, align 8, !dbg !1954
  %22 = load ptr, ptr %kcb, align 8, !dbg !1955
  %kprobe_status38 = getelementptr inbounds %struct.kprobe_ctlblk, ptr %22, i32 0, i32 0, !dbg !1957
  %23 = load i64, ptr %kprobe_status38, align 8, !dbg !1957
  %cmp39 = icmp eq i64 %23, 4, !dbg !1958
  br i1 %cmp39, label %if.then41, label %if.else, !dbg !1959

if.then41:                                        ; preds = %if.end
  %24 = load ptr, ptr %kcb, align 8, !dbg !1960
  call void @restore_previous_kprobe(ptr noundef %24) #14, !dbg !1961
  br label %if.end42, !dbg !1961

if.else:                                          ; preds = %if.end
  call void @reset_current_kprobe() #14, !dbg !1962
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then41
  br label %if.end43, !dbg !1963

if.end43:                                         ; preds = %if.end42, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %kcb) #15, !dbg !1964
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #15, !dbg !1964
  ret i32 0, !dbg !1965
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @restore_previous_kprobe(ptr noundef %kcb) #2 align 16 !dbg !1966 {
entry:
  %kcb.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  store ptr %kcb, ptr %kcb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcb.addr, metadata !1970, metadata !DIExpression()), !dbg !1977
  call void @__this_cpu_preempt_check(ptr noundef @.str.5) #14, !dbg !1978
  br label %do.body, !dbg !1978

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1979

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1980
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1971, metadata !DIExpression()), !dbg !1980
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1980
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1980
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1979
  br label %do.end, !dbg !1980

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1979

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #15, !dbg !1981
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1975, metadata !DIExpression()), !dbg !1981
  %1 = load ptr, ptr %kcb.addr, align 8, !dbg !1981
  %prev_kprobe = getelementptr inbounds %struct.kprobe_ctlblk, ptr %1, i32 0, i32 3, !dbg !1981
  %kp = getelementptr inbounds %struct.prev_kprobe, ptr %prev_kprobe, i32 0, i32 0, !dbg !1981
  %2 = load ptr, ptr %kp, align 8, !dbg !1981
  %3 = ptrtoint ptr %2 to i64, !dbg !1981
  store i64 %3, ptr %pto_val__, align 8, !dbg !1981
  %4 = load i64, ptr %pto_val__, align 8, !dbg !1981
  call void asm "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @current_kprobe, i64 %4, ptr elementtype(ptr) @current_kprobe) #15, !dbg !1981, !srcloc !1982
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #15, !dbg !1979
  br label %do.end3, !dbg !1981

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1979

do.end4:                                          ; preds = %do.end3
  %5 = load ptr, ptr %kcb.addr, align 8, !dbg !1983
  %prev_kprobe5 = getelementptr inbounds %struct.kprobe_ctlblk, ptr %5, i32 0, i32 3, !dbg !1984
  %status = getelementptr inbounds %struct.prev_kprobe, ptr %prev_kprobe5, i32 0, i32 1, !dbg !1985
  %6 = load i64, ptr %status, align 8, !dbg !1985
  %7 = load ptr, ptr %kcb.addr, align 8, !dbg !1986
  %kprobe_status = getelementptr inbounds %struct.kprobe_ctlblk, ptr %7, i32 0, i32 0, !dbg !1987
  store i64 %6, ptr %kprobe_status, align 8, !dbg !1988
  %8 = load ptr, ptr %kcb.addr, align 8, !dbg !1989
  %prev_kprobe6 = getelementptr inbounds %struct.kprobe_ctlblk, ptr %8, i32 0, i32 3, !dbg !1990
  %old_flags = getelementptr inbounds %struct.prev_kprobe, ptr %prev_kprobe6, i32 0, i32 2, !dbg !1991
  %9 = load i64, ptr %old_flags, align 8, !dbg !1991
  %10 = load ptr, ptr %kcb.addr, align 8, !dbg !1992
  %kprobe_old_flags = getelementptr inbounds %struct.kprobe_ctlblk, ptr %10, i32 0, i32 1, !dbg !1993
  store i64 %9, ptr %kprobe_old_flags, align 8, !dbg !1994
  %11 = load ptr, ptr %kcb.addr, align 8, !dbg !1995
  %prev_kprobe7 = getelementptr inbounds %struct.kprobe_ctlblk, ptr %11, i32 0, i32 3, !dbg !1996
  %saved_flags = getelementptr inbounds %struct.prev_kprobe, ptr %prev_kprobe7, i32 0, i32 3, !dbg !1997
  %12 = load i64, ptr %saved_flags, align 8, !dbg !1997
  %13 = load ptr, ptr %kcb.addr, align 8, !dbg !1998
  %kprobe_saved_flags = getelementptr inbounds %struct.kprobe_ctlblk, ptr %13, i32 0, i32 2, !dbg !1999
  store i64 %12, ptr %kprobe_saved_flags, align 8, !dbg !2000
  ret void, !dbg !2001
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @arch_populate_kprobe_blacklist() #10 section ".init.text" align 16 !dbg !2002 {
entry:
  %call = call i32 @kprobe_add_area_blacklist(i64 noundef ptrtoint (ptr @__entry_text_start to i64), i64 noundef ptrtoint (ptr @__entry_text_end to i64)) #14, !dbg !2005
  ret i32 %call, !dbg !2006
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2007 dso_local i32 @kprobe_add_area_blacklist(i64 noundef, i64 noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @arch_init_kprobes() #10 section ".init.text" align 16 !dbg !2010 {
entry:
  ret i32 0, !dbg !2011
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_trampoline_kprobe(ptr noundef %p) #0 align 16 !dbg !2012 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2014, metadata !DIExpression()), !dbg !2015
  ret i32 0, !dbg !2016
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !2017 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2025, metadata !DIExpression()), !dbg !2027
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2026, metadata !DIExpression()), !dbg !2028
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2029
  %1 = load i64, ptr %size.addr, align 8, !dbg !2030
  %conv = trunc i64 %1 to i32, !dbg !2030
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !2031
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2032
  %3 = load i64, ptr %size.addr, align 8, !dbg !2032
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !2032
  ret void, !dbg !2033
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !2034 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2037, metadata !DIExpression()), !dbg !2039
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2038, metadata !DIExpression()), !dbg !2040
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2041
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2042
  br i1 %1, label %cond.true, label %cond.false, !dbg !2042

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2043
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2044
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !2045
  %conv = zext i1 %call to i32, !dbg !2045
  br label %cond.end, !dbg !2042

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2046
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2047
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !2048
  %conv2 = zext i1 %call1 to i32, !dbg !2048
  br label %cond.end, !dbg !2042

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2042
  %tobool = icmp ne i32 %cond, 0, !dbg !2042
  ret i1 %tobool, !dbg !2049
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !2050 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2055, metadata !DIExpression()), !dbg !2057
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2056, metadata !DIExpression()), !dbg !2058
  ret i1 true, !dbg !2059
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !2060 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2065, metadata !DIExpression()), !dbg !2068
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2066, metadata !DIExpression()), !dbg !2069
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2067, metadata !DIExpression()), !dbg !2070
  ret void, !dbg !2071
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !2072 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2076, metadata !DIExpression()), !dbg !2078
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2077, metadata !DIExpression()), !dbg !2079
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2080
  %and = and i64 %0, 63, !dbg !2081
  %shl = shl i64 1, %and, !dbg !2082
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2083
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2084
  %shr = ashr i64 %2, 6, !dbg !2085
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2083
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2083
  %and1 = and i64 %shl, %3, !dbg !2086
  %cmp = icmp ne i64 %and1, 0, !dbg !2087
  ret i1 %cmp, !dbg !2088
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !2089 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2091, metadata !DIExpression()), !dbg !2094
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2092, metadata !DIExpression()), !dbg !2095
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !2096
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2093, metadata !DIExpression()), !dbg !2097
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2098
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2099
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !2100, !srcloc !2101
  %3 = icmp ult i8 %2, 2, !dbg !2100
  call void @llvm.assume(i1 %3), !dbg !2100
  store i8 %2, ptr %oldbit, align 1, !dbg !2100
  %4 = load i8, ptr %oldbit, align 1, !dbg !2102, !range !626, !noundef !627
  %tobool = trunc i8 %4 to i1, !dbg !2102
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !2103
  ret i1 %tobool, !dbg !2104
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ftrace_location(i64 noundef %ip) #6 align 16 !dbg !2105 {
entry:
  %ip.addr = alloca i64, align 8
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !2110, metadata !DIExpression()), !dbg !2111
  ret i64 0, !dbg !2112
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @gen_endbr_poison() #13 align 16 !dbg !2113 {
entry:
  ret i32 2035558, !dbg !2116
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @gen_endbr() #13 align 16 !dbg !2117 {
entry:
  %endbr = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %endbr) #15, !dbg !2120
  call void @llvm.dbg.declare(metadata ptr %endbr, metadata !2119, metadata !DIExpression()), !dbg !2121
  %0 = call i32 asm "mov $$~0xfa1e0ff3, $0\0A\09not $0\0A\09", "=&r,~{dirflag},~{fpsr},~{flags}"() #19, !dbg !2122, !srcloc !2123
  store i32 %0, ptr %endbr, align 4, !dbg !2122
  %1 = load i32, ptr %endbr, align 4, !dbg !2124
  call void @llvm.lifetime.end.p0(i64 4, ptr %endbr) #15, !dbg !2125
  ret i32 %1, !dbg !2126
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_offset_sib(ptr noundef %insn) #6 align 16 !dbg !2127 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !2129, metadata !DIExpression()), !dbg !2130
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !2131
  %call = call i32 @insn_offset_modrm(ptr noundef %0) #14, !dbg !2132
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !2133
  %modrm = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 4, !dbg !2134
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 2, !dbg !2135
  %2 = load i8, ptr %nbytes, align 1, !dbg !2135
  %conv = zext i8 %2 to i32, !dbg !2133
  %add = add i32 %call, %conv, !dbg !2136
  ret i32 %add, !dbg !2137
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_offset_modrm(ptr noundef %insn) #6 align 16 !dbg !2138 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !2140, metadata !DIExpression()), !dbg !2141
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !2142
  %call = call i32 @insn_offset_opcode(ptr noundef %0) #14, !dbg !2143
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !2144
  %opcode = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 3, !dbg !2145
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 2, !dbg !2146
  %2 = load i8, ptr %nbytes, align 1, !dbg !2146
  %conv = zext i8 %2 to i32, !dbg !2144
  %add = add i32 %call, %conv, !dbg !2147
  ret i32 %add, !dbg !2148
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_offset_opcode(ptr noundef %insn) #6 align 16 !dbg !2149 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !2151, metadata !DIExpression()), !dbg !2152
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !2153
  %call = call i32 @insn_offset_vex_prefix(ptr noundef %0) #14, !dbg !2154
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !2155
  %vex_prefix = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 2, !dbg !2156
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %vex_prefix, i32 0, i32 2, !dbg !2157
  %2 = load i8, ptr %nbytes, align 1, !dbg !2157
  %conv = zext i8 %2 to i32, !dbg !2155
  %add = add i32 %call, %conv, !dbg !2158
  ret i32 %add, !dbg !2159
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_offset_vex_prefix(ptr noundef %insn) #6 align 16 !dbg !2160 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !2162, metadata !DIExpression()), !dbg !2163
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !2164
  %call = call i32 @insn_offset_rex_prefix(ptr noundef %0) #14, !dbg !2165
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !2166
  %rex_prefix = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 1, !dbg !2167
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %rex_prefix, i32 0, i32 2, !dbg !2168
  %2 = load i8, ptr %nbytes, align 1, !dbg !2168
  %conv = zext i8 %2 to i32, !dbg !2166
  %add = add i32 %call, %conv, !dbg !2169
  ret i32 %add, !dbg !2170
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insn_offset_rex_prefix(ptr noundef %insn) #6 align 16 !dbg !2171 {
entry:
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !2173, metadata !DIExpression()), !dbg !2174
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !2175
  %prefixes = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 0, !dbg !2176
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %prefixes, i32 0, i32 2, !dbg !2177
  %1 = load i8, ptr %nbytes, align 1, !dbg !2177
  %conv = zext i8 %1 to i32, !dbg !2175
  ret i32 %conv, !dbg !2178
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @int3_emulate_push(ptr noundef %regs, i64 noundef %val) #2 align 16 !dbg !2179 {
entry:
  %regs.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !2183, metadata !DIExpression()), !dbg !2185
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2184, metadata !DIExpression()), !dbg !2186
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !2187
  %sp = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 19, !dbg !2188
  %1 = load i64, ptr %sp, align 8, !dbg !2189
  %sub = sub i64 %1, 8, !dbg !2189
  store i64 %sub, ptr %sp, align 8, !dbg !2189
  %2 = load i64, ptr %val.addr, align 8, !dbg !2190
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !2191
  %sp1 = getelementptr inbounds %struct.pt_regs, ptr %3, i32 0, i32 19, !dbg !2192
  %4 = load i64, ptr %sp1, align 8, !dbg !2192
  %5 = inttoptr i64 %4 to ptr, !dbg !2193
  store i64 %2, ptr %5, align 8, !dbg !2194
  ret void, !dbg !2195
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @int3_emulate_pop(ptr noundef %regs) #2 align 16 !dbg !2196 {
entry:
  %regs.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !2200, metadata !DIExpression()), !dbg !2202
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2201, metadata !DIExpression()), !dbg !2204
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !2205
  %sp = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 19, !dbg !2206
  %1 = load i64, ptr %sp, align 8, !dbg !2206
  %2 = inttoptr i64 %1 to ptr, !dbg !2207
  %3 = load i64, ptr %2, align 8, !dbg !2208
  store i64 %3, ptr %val, align 8, !dbg !2204
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !2209
  %sp1 = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 19, !dbg !2210
  %5 = load i64, ptr %sp1, align 8, !dbg !2211
  %add = add i64 %5, 8, !dbg !2211
  store i64 %add, ptr %sp1, align 8, !dbg !2211
  %6 = load i64, ptr %val, align 8, !dbg !2212
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !2213
  ret i64 %6, !dbg !2214
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @int3_emulate_ret(ptr noundef %regs) #2 align 16 !dbg !2215 {
entry:
  %regs.addr = alloca ptr, align 8
  %ip = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !2219, metadata !DIExpression()), !dbg !2221
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #15, !dbg !2222
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !2220, metadata !DIExpression()), !dbg !2223
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !2224
  %call = call i64 @int3_emulate_pop(ptr noundef %0) #14, !dbg !2225
  store i64 %call, ptr %ip, align 8, !dbg !2223
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !2226
  %2 = load i64, ptr %ip, align 8, !dbg !2227
  call void @int3_emulate_jmp(ptr noundef %1, i64 noundef %2) #14, !dbg !2228
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #15, !dbg !2229
  ret void, !dbg !2229
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @int3_emulate_jmp(ptr noundef %regs, i64 noundef %ip) #2 align 16 !dbg !2230 {
entry:
  %regs.addr = alloca ptr, align 8
  %ip.addr = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !2232, metadata !DIExpression()), !dbg !2234
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !2233, metadata !DIExpression()), !dbg !2235
  %0 = load i64, ptr %ip.addr, align 8, !dbg !2236
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !2237
  %ip1 = getelementptr inbounds %struct.pt_regs, ptr %1, i32 0, i32 16, !dbg !2238
  store i64 %0, ptr %ip1, align 8, !dbg !2239
  ret void, !dbg !2240
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @int3_emulate_call(ptr noundef %regs, i64 noundef %func) #2 align 16 !dbg !2241 {
entry:
  %regs.addr = alloca ptr, align 8
  %func.addr = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !2243, metadata !DIExpression()), !dbg !2245
  store i64 %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !2244, metadata !DIExpression()), !dbg !2246
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !2247
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !2248
  %ip = getelementptr inbounds %struct.pt_regs, ptr %1, i32 0, i32 16, !dbg !2249
  %2 = load i64, ptr %ip, align 8, !dbg !2249
  %sub = sub i64 %2, 1, !dbg !2250
  %add = add i64 %sub, 5, !dbg !2251
  call void @int3_emulate_push(ptr noundef %0, i64 noundef %add) #14, !dbg !2252
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !2253
  %4 = load i64, ptr %func.addr, align 8, !dbg !2254
  call void @int3_emulate_jmp(ptr noundef %3, i64 noundef %4) #14, !dbg !2255
  ret void, !dbg !2256
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @int3_emulate_jcc(ptr noundef %regs, i8 noundef zeroext %cc, i64 noundef %ip, i64 noundef %disp) #2 align 16 !dbg !277 {
entry:
  %regs.addr = alloca ptr, align 8
  %cc.addr = alloca i8, align 1
  %ip.addr = alloca i64, align 8
  %disp.addr = alloca i64, align 8
  %invert = alloca i8, align 1
  %match = alloca i8, align 1
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !282, metadata !DIExpression()), !dbg !2257
  store i8 %cc, ptr %cc.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %cc.addr, metadata !283, metadata !DIExpression()), !dbg !2258
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !284, metadata !DIExpression()), !dbg !2259
  store i64 %disp, ptr %disp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disp.addr, metadata !285, metadata !DIExpression()), !dbg !2260
  call void @llvm.lifetime.start.p0(i64 1, ptr %invert) #15, !dbg !2261
  call void @llvm.dbg.declare(metadata ptr %invert, metadata !286, metadata !DIExpression()), !dbg !2262
  %0 = load i8, ptr %cc.addr, align 1, !dbg !2263
  %conv = zext i8 %0 to i32, !dbg !2263
  %and = and i32 %conv, 1, !dbg !2264
  %tobool = icmp ne i32 %and, 0, !dbg !2263
  %frombool = zext i1 %tobool to i8, !dbg !2262
  store i8 %frombool, ptr %invert, align 1, !dbg !2262
  call void @llvm.lifetime.start.p0(i64 1, ptr %match) #15, !dbg !2265
  call void @llvm.dbg.declare(metadata ptr %match, metadata !289, metadata !DIExpression()), !dbg !2266
  %1 = load i8, ptr %cc.addr, align 1, !dbg !2267
  %conv1 = zext i8 %1 to i32, !dbg !2267
  %cmp = icmp slt i32 %conv1, 12, !dbg !2269
  br i1 %cmp, label %if.then, label %if.else, !dbg !2270

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !2271
  %flags = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 18, !dbg !2273
  %3 = load i64, ptr %flags, align 8, !dbg !2273
  %4 = load i8, ptr %cc.addr, align 1, !dbg !2274
  %conv3 = zext i8 %4 to i32, !dbg !2274
  %shr = ashr i32 %conv3, 1, !dbg !2275
  %idxprom = sext i32 %shr to i64, !dbg !2276
  %arrayidx = getelementptr [6 x i64], ptr @int3_emulate_jcc.jcc_mask, i64 0, i64 %idxprom, !dbg !2276
  %5 = load i64, ptr %arrayidx, align 8, !dbg !2276
  %and4 = and i64 %3, %5, !dbg !2277
  %tobool5 = icmp ne i64 %and4, 0, !dbg !2271
  %frombool6 = zext i1 %tobool5 to i8, !dbg !2278
  store i8 %frombool6, ptr %match, align 1, !dbg !2278
  br label %if.end25, !dbg !2279

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !2280
  %flags7 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 18, !dbg !2282
  %7 = load i64, ptr %flags7, align 8, !dbg !2282
  %and8 = and i64 %7, 128, !dbg !2283
  %shr9 = lshr i64 %and8, 7, !dbg !2284
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !2285
  %flags10 = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 18, !dbg !2286
  %9 = load i64, ptr %flags10, align 8, !dbg !2286
  %and11 = and i64 %9, 2048, !dbg !2287
  %shr12 = lshr i64 %and11, 11, !dbg !2288
  %xor = xor i64 %shr9, %shr12, !dbg !2289
  %tobool13 = icmp ne i64 %xor, 0, !dbg !2290
  %frombool14 = zext i1 %tobool13 to i8, !dbg !2291
  store i8 %frombool14, ptr %match, align 1, !dbg !2291
  %10 = load i8, ptr %cc.addr, align 1, !dbg !2292
  %conv15 = zext i8 %10 to i32, !dbg !2292
  %cmp16 = icmp sge i32 %conv15, 14, !dbg !2294
  br i1 %cmp16, label %if.then18, label %if.end, !dbg !2295

if.then18:                                        ; preds = %if.else
  %11 = load i8, ptr %match, align 1, !dbg !2296, !range !626, !noundef !627
  %tobool19 = trunc i8 %11 to i1, !dbg !2296
  br i1 %tobool19, label %lor.end, label %lor.rhs, !dbg !2297

lor.rhs:                                          ; preds = %if.then18
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !2298
  %flags21 = getelementptr inbounds %struct.pt_regs, ptr %12, i32 0, i32 18, !dbg !2299
  %13 = load i64, ptr %flags21, align 8, !dbg !2299
  %and22 = and i64 %13, 64, !dbg !2300
  %tobool23 = icmp ne i64 %and22, 0, !dbg !2297
  br label %lor.end, !dbg !2297

lor.end:                                          ; preds = %lor.rhs, %if.then18
  %14 = phi i1 [ true, %if.then18 ], [ %tobool23, %lor.rhs ]
  %frombool24 = zext i1 %14 to i8, !dbg !2301
  store i8 %frombool24, ptr %match, align 1, !dbg !2301
  br label %if.end, !dbg !2302

if.end:                                           ; preds = %lor.end, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then
  %15 = load i8, ptr %match, align 1, !dbg !2303, !range !626, !noundef !627
  %tobool26 = trunc i8 %15 to i1, !dbg !2303
  br i1 %tobool26, label %land.lhs.true, label %lor.lhs.false, !dbg !2305

land.lhs.true:                                    ; preds = %if.end25
  %16 = load i8, ptr %invert, align 1, !dbg !2306, !range !626, !noundef !627
  %tobool28 = trunc i8 %16 to i1, !dbg !2306
  br i1 %tobool28, label %lor.lhs.false, label %if.then33, !dbg !2307

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end25
  %17 = load i8, ptr %match, align 1, !dbg !2308, !range !626, !noundef !627
  %tobool29 = trunc i8 %17 to i1, !dbg !2308
  br i1 %tobool29, label %if.end34, label %land.lhs.true30, !dbg !2309

land.lhs.true30:                                  ; preds = %lor.lhs.false
  %18 = load i8, ptr %invert, align 1, !dbg !2310, !range !626, !noundef !627
  %tobool31 = trunc i8 %18 to i1, !dbg !2310
  br i1 %tobool31, label %if.then33, label %if.end34, !dbg !2311

if.then33:                                        ; preds = %land.lhs.true30, %land.lhs.true
  %19 = load i64, ptr %disp.addr, align 8, !dbg !2312
  %20 = load i64, ptr %ip.addr, align 8, !dbg !2313
  %add = add i64 %20, %19, !dbg !2313
  store i64 %add, ptr %ip.addr, align 8, !dbg !2313
  br label %if.end34, !dbg !2314

if.end34:                                         ; preds = %if.then33, %land.lhs.true30, %lor.lhs.false
  %21 = load ptr, ptr %regs.addr, align 8, !dbg !2315
  %22 = load i64, ptr %ip.addr, align 8, !dbg !2316
  call void @int3_emulate_jmp(ptr noundef %21, i64 noundef %22) #14, !dbg !2317
  call void @llvm.lifetime.end.p0(i64 1, ptr %match) #15, !dbg !2318
  call void @llvm.lifetime.end.p0(i64 1, ptr %invert) #15, !dbg !2318
  ret void, !dbg !2318
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @regs_get_register(ptr noundef %regs, i32 noundef %offset) #6 align 16 !dbg !2319 {
entry:
  %retval = alloca i64, align 8
  %regs.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !2323, metadata !DIExpression()), !dbg !2325
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !2324, metadata !DIExpression()), !dbg !2326
  %0 = load i32, ptr %offset.addr, align 4, !dbg !2327
  %conv = zext i32 %0 to i64, !dbg !2327
  %cmp = icmp ugt i64 %conv, 160, !dbg !2327
  %lnot = xor i1 %cmp, true, !dbg !2327
  %lnot2 = xor i1 %lnot, true, !dbg !2327
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2327
  %conv3 = sext i32 %lnot.ext to i64, !dbg !2327
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !2327
  %tobool = icmp ne i64 %expval, 0, !dbg !2327
  br i1 %tobool, label %if.then, label %if.end, !dbg !2329

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !2330
  br label %return, !dbg !2330

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !2331
  %2 = ptrtoint ptr %1 to i64, !dbg !2332
  %3 = load i32, ptr %offset.addr, align 4, !dbg !2333
  %conv4 = zext i32 %3 to i64, !dbg !2333
  %add = add i64 %2, %conv4, !dbg !2334
  %4 = inttoptr i64 %add to ptr, !dbg !2335
  %5 = load i64, ptr %4, align 8, !dbg !2336
  store i64 %5, ptr %retval, align 8, !dbg !2337
  br label %return, !dbg !2337

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, ptr %retval, align 8, !dbg !2338
  ret i64 %6, !dbg !2338
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2339 dso_local i32 @kallsyms_lookup_size_offset(i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2343 dso_local ptr @__get_insn_slot(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @prepare_emulation(ptr noundef %p, ptr noundef %insn) #0 align 16 !dbg !2404 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %insn.addr = alloca ptr, align 8
  %opcode = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2408, metadata !DIExpression()), !dbg !2411
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !2409, metadata !DIExpression()), !dbg !2412
  call void @llvm.lifetime.start.p0(i64 1, ptr %opcode) #15, !dbg !2413
  call void @llvm.dbg.declare(metadata ptr %opcode, metadata !2410, metadata !DIExpression()), !dbg !2414
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !2415
  %opcode1 = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 3, !dbg !2416
  %1 = getelementptr inbounds %struct.insn_field, ptr %opcode1, i32 0, i32 0, !dbg !2417
  %arrayidx = getelementptr [4 x i8], ptr %1, i64 0, i64 0, !dbg !2415
  %2 = load i8, ptr %arrayidx, align 8, !dbg !2415
  store i8 %2, ptr %opcode, align 1, !dbg !2414
  %3 = load i8, ptr %opcode, align 1, !dbg !2418
  %conv = zext i8 %3 to i32, !dbg !2418
  switch i32 %conv, label %sw.default [
    i32 250, label %sw.bb
    i32 251, label %sw.bb
    i32 156, label %sw.bb
    i32 157, label %sw.bb
    i32 194, label %sw.bb3
    i32 195, label %sw.bb3
    i32 202, label %sw.bb3
    i32 203, label %sw.bb3
    i32 154, label %sw.bb6
    i32 234, label %sw.bb6
    i32 204, label %sw.bb6
    i32 207, label %sw.bb6
    i32 232, label %sw.bb7
    i32 235, label %sw.bb16
    i32 233, label %sw.bb16
    i32 112, label %sw.bb41
    i32 113, label %sw.bb41
    i32 114, label %sw.bb41
    i32 115, label %sw.bb41
    i32 116, label %sw.bb41
    i32 117, label %sw.bb41
    i32 118, label %sw.bb41
    i32 119, label %sw.bb41
    i32 120, label %sw.bb41
    i32 121, label %sw.bb41
    i32 122, label %sw.bb41
    i32 123, label %sw.bb41
    i32 124, label %sw.bb41
    i32 125, label %sw.bb41
    i32 126, label %sw.bb41
    i32 127, label %sw.bb41
    i32 15, label %sw.bb49
    i32 224, label %sw.bb96
    i32 225, label %sw.bb96
    i32 226, label %sw.bb96
    i32 227, label %sw.bb96
    i32 255, label %sw.bb110
  ], !dbg !2419

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %4 = load ptr, ptr %p.addr, align 8, !dbg !2420
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %4, i32 0, i32 9, !dbg !2422
  %emulate_op = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn, i32 0, i32 5, !dbg !2423
  store ptr @kprobe_emulate_ifmodifiers, ptr %emulate_op, align 8, !dbg !2424
  %5 = load i8, ptr %opcode, align 1, !dbg !2425
  %6 = load ptr, ptr %p.addr, align 8, !dbg !2426
  %ainsn2 = getelementptr inbounds %struct.kprobe, ptr %6, i32 0, i32 9, !dbg !2427
  %7 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn2, i32 0, i32 3, !dbg !2428
  store i8 %5, ptr %7, align 2, !dbg !2429
  br label %sw.epilog152, !dbg !2430

sw.bb3:                                           ; preds = %entry, %entry, %entry, %entry
  %8 = load ptr, ptr %p.addr, align 8, !dbg !2431
  %ainsn4 = getelementptr inbounds %struct.kprobe, ptr %8, i32 0, i32 9, !dbg !2432
  %emulate_op5 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn4, i32 0, i32 5, !dbg !2433
  store ptr @kprobe_emulate_ret, ptr %emulate_op5, align 8, !dbg !2434
  br label %sw.epilog152, !dbg !2435

sw.bb6:                                           ; preds = %entry, %entry, %entry, %entry
  store i32 -95, ptr %retval, align 4, !dbg !2436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2436

sw.bb7:                                           ; preds = %entry
  %9 = load ptr, ptr %p.addr, align 8, !dbg !2437
  %ainsn8 = getelementptr inbounds %struct.kprobe, ptr %9, i32 0, i32 9, !dbg !2438
  %emulate_op9 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn8, i32 0, i32 5, !dbg !2439
  store ptr @kprobe_emulate_call, ptr %emulate_op9, align 8, !dbg !2440
  %10 = load ptr, ptr %insn.addr, align 8, !dbg !2441
  %11 = getelementptr inbounds %struct.insn, ptr %10, i32 0, i32 7, !dbg !2443
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %11, i32 0, i32 2, !dbg !2444
  %12 = load i8, ptr %nbytes, align 1, !dbg !2444
  %conv10 = zext i8 %12 to i32, !dbg !2441
  %cmp = icmp eq i32 %conv10, 2, !dbg !2445
  br i1 %cmp, label %if.then, label %if.else, !dbg !2446

if.then:                                          ; preds = %sw.bb7
  %13 = load ptr, ptr %insn.addr, align 8, !dbg !2447
  %14 = getelementptr inbounds %struct.insn, ptr %13, i32 0, i32 7, !dbg !2448
  %15 = getelementptr inbounds %struct.insn_field, ptr %14, i32 0, i32 0, !dbg !2449
  %16 = load i16, ptr %15, align 8, !dbg !2450
  %conv12 = sext i16 %16 to i32, !dbg !2450
  %17 = load ptr, ptr %p.addr, align 8, !dbg !2451
  %ainsn13 = getelementptr inbounds %struct.kprobe, ptr %17, i32 0, i32 9, !dbg !2452
  %rel32 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn13, i32 0, i32 4, !dbg !2453
  store i32 %conv12, ptr %rel32, align 4, !dbg !2454
  br label %if.end, !dbg !2451

if.else:                                          ; preds = %sw.bb7
  %18 = load ptr, ptr %insn.addr, align 8, !dbg !2455
  %19 = getelementptr inbounds %struct.insn, ptr %18, i32 0, i32 7, !dbg !2456
  %20 = getelementptr inbounds %struct.insn_field, ptr %19, i32 0, i32 0, !dbg !2457
  %21 = load i32, ptr %20, align 8, !dbg !2458
  %22 = load ptr, ptr %p.addr, align 8, !dbg !2459
  %ainsn14 = getelementptr inbounds %struct.kprobe, ptr %22, i32 0, i32 9, !dbg !2460
  %rel3215 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn14, i32 0, i32 4, !dbg !2461
  store i32 %21, ptr %rel3215, align 4, !dbg !2462
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog152, !dbg !2463

sw.bb16:                                          ; preds = %entry, %entry
  %23 = load ptr, ptr %p.addr, align 8, !dbg !2464
  %ainsn17 = getelementptr inbounds %struct.kprobe, ptr %23, i32 0, i32 9, !dbg !2465
  %emulate_op18 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn17, i32 0, i32 5, !dbg !2466
  store ptr @kprobe_emulate_jmp, ptr %emulate_op18, align 8, !dbg !2467
  %24 = load ptr, ptr %insn.addr, align 8, !dbg !2468
  %25 = getelementptr inbounds %struct.insn, ptr %24, i32 0, i32 7, !dbg !2470
  %nbytes19 = getelementptr inbounds %struct.insn_field, ptr %25, i32 0, i32 2, !dbg !2471
  %26 = load i8, ptr %nbytes19, align 1, !dbg !2471
  %conv20 = zext i8 %26 to i32, !dbg !2468
  %cmp21 = icmp eq i32 %conv20, 1, !dbg !2472
  br i1 %cmp21, label %if.then23, label %if.else27, !dbg !2473

if.then23:                                        ; preds = %sw.bb16
  %27 = load ptr, ptr %insn.addr, align 8, !dbg !2474
  %28 = getelementptr inbounds %struct.insn, ptr %27, i32 0, i32 7, !dbg !2475
  %29 = getelementptr inbounds %struct.insn_field, ptr %28, i32 0, i32 0, !dbg !2476
  %30 = load i8, ptr %29, align 8, !dbg !2477
  %conv24 = sext i8 %30 to i32, !dbg !2477
  %31 = load ptr, ptr %p.addr, align 8, !dbg !2478
  %ainsn25 = getelementptr inbounds %struct.kprobe, ptr %31, i32 0, i32 9, !dbg !2479
  %rel3226 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn25, i32 0, i32 4, !dbg !2480
  store i32 %conv24, ptr %rel3226, align 4, !dbg !2481
  br label %if.end40, !dbg !2478

if.else27:                                        ; preds = %sw.bb16
  %32 = load ptr, ptr %insn.addr, align 8, !dbg !2482
  %33 = getelementptr inbounds %struct.insn, ptr %32, i32 0, i32 7, !dbg !2484
  %nbytes28 = getelementptr inbounds %struct.insn_field, ptr %33, i32 0, i32 2, !dbg !2485
  %34 = load i8, ptr %nbytes28, align 1, !dbg !2485
  %conv29 = zext i8 %34 to i32, !dbg !2482
  %cmp30 = icmp eq i32 %conv29, 2, !dbg !2486
  br i1 %cmp30, label %if.then32, label %if.else36, !dbg !2487

if.then32:                                        ; preds = %if.else27
  %35 = load ptr, ptr %insn.addr, align 8, !dbg !2488
  %36 = getelementptr inbounds %struct.insn, ptr %35, i32 0, i32 7, !dbg !2489
  %37 = getelementptr inbounds %struct.insn_field, ptr %36, i32 0, i32 0, !dbg !2490
  %38 = load i16, ptr %37, align 8, !dbg !2491
  %conv33 = sext i16 %38 to i32, !dbg !2491
  %39 = load ptr, ptr %p.addr, align 8, !dbg !2492
  %ainsn34 = getelementptr inbounds %struct.kprobe, ptr %39, i32 0, i32 9, !dbg !2493
  %rel3235 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn34, i32 0, i32 4, !dbg !2494
  store i32 %conv33, ptr %rel3235, align 4, !dbg !2495
  br label %if.end39, !dbg !2492

if.else36:                                        ; preds = %if.else27
  %40 = load ptr, ptr %insn.addr, align 8, !dbg !2496
  %41 = getelementptr inbounds %struct.insn, ptr %40, i32 0, i32 7, !dbg !2497
  %42 = getelementptr inbounds %struct.insn_field, ptr %41, i32 0, i32 0, !dbg !2498
  %43 = load i32, ptr %42, align 8, !dbg !2499
  %44 = load ptr, ptr %p.addr, align 8, !dbg !2500
  %ainsn37 = getelementptr inbounds %struct.kprobe, ptr %44, i32 0, i32 9, !dbg !2501
  %rel3238 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn37, i32 0, i32 4, !dbg !2502
  store i32 %43, ptr %rel3238, align 4, !dbg !2503
  br label %if.end39

if.end39:                                         ; preds = %if.else36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then23
  br label %sw.epilog152, !dbg !2504

sw.bb41:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %45 = load ptr, ptr %p.addr, align 8, !dbg !2505
  %ainsn42 = getelementptr inbounds %struct.kprobe, ptr %45, i32 0, i32 9, !dbg !2506
  %emulate_op43 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn42, i32 0, i32 5, !dbg !2507
  store ptr @kprobe_emulate_jcc, ptr %emulate_op43, align 8, !dbg !2508
  %46 = load i8, ptr %opcode, align 1, !dbg !2509
  %conv44 = zext i8 %46 to i32, !dbg !2509
  %and = and i32 %conv44, 15, !dbg !2510
  %conv45 = trunc i32 %and to i8, !dbg !2509
  %47 = load ptr, ptr %p.addr, align 8, !dbg !2511
  %ainsn46 = getelementptr inbounds %struct.kprobe, ptr %47, i32 0, i32 9, !dbg !2512
  %48 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn46, i32 0, i32 3, !dbg !2513
  %type = getelementptr inbounds %struct.anon, ptr %48, i32 0, i32 0, !dbg !2514
  store i8 %conv45, ptr %type, align 2, !dbg !2515
  %49 = load ptr, ptr %insn.addr, align 8, !dbg !2516
  %50 = getelementptr inbounds %struct.insn, ptr %49, i32 0, i32 7, !dbg !2517
  %51 = getelementptr inbounds %struct.insn_field, ptr %50, i32 0, i32 0, !dbg !2518
  %52 = load i32, ptr %51, align 8, !dbg !2518
  %53 = load ptr, ptr %p.addr, align 8, !dbg !2519
  %ainsn47 = getelementptr inbounds %struct.kprobe, ptr %53, i32 0, i32 9, !dbg !2520
  %rel3248 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn47, i32 0, i32 4, !dbg !2521
  store i32 %52, ptr %rel3248, align 4, !dbg !2522
  br label %sw.epilog152, !dbg !2523

sw.bb49:                                          ; preds = %entry
  %54 = load ptr, ptr %insn.addr, align 8, !dbg !2524
  %opcode50 = getelementptr inbounds %struct.insn, ptr %54, i32 0, i32 3, !dbg !2525
  %55 = getelementptr inbounds %struct.insn_field, ptr %opcode50, i32 0, i32 0, !dbg !2526
  %arrayidx51 = getelementptr [4 x i8], ptr %55, i64 0, i64 1, !dbg !2524
  %56 = load i8, ptr %arrayidx51, align 1, !dbg !2524
  store i8 %56, ptr %opcode, align 1, !dbg !2527
  %57 = load i8, ptr %opcode, align 1, !dbg !2528
  %conv52 = zext i8 %57 to i32, !dbg !2528
  %and53 = and i32 %conv52, 240, !dbg !2530
  %cmp54 = icmp eq i32 %and53, 128, !dbg !2531
  br i1 %cmp54, label %if.then56, label %if.else76, !dbg !2532

if.then56:                                        ; preds = %sw.bb49
  %58 = load ptr, ptr %p.addr, align 8, !dbg !2533
  %ainsn57 = getelementptr inbounds %struct.kprobe, ptr %58, i32 0, i32 9, !dbg !2535
  %emulate_op58 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn57, i32 0, i32 5, !dbg !2536
  store ptr @kprobe_emulate_jcc, ptr %emulate_op58, align 8, !dbg !2537
  %59 = load i8, ptr %opcode, align 1, !dbg !2538
  %conv59 = zext i8 %59 to i32, !dbg !2538
  %and60 = and i32 %conv59, 15, !dbg !2539
  %conv61 = trunc i32 %and60 to i8, !dbg !2538
  %60 = load ptr, ptr %p.addr, align 8, !dbg !2540
  %ainsn62 = getelementptr inbounds %struct.kprobe, ptr %60, i32 0, i32 9, !dbg !2541
  %61 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn62, i32 0, i32 3, !dbg !2542
  %type63 = getelementptr inbounds %struct.anon, ptr %61, i32 0, i32 0, !dbg !2543
  store i8 %conv61, ptr %type63, align 2, !dbg !2544
  %62 = load ptr, ptr %insn.addr, align 8, !dbg !2545
  %63 = getelementptr inbounds %struct.insn, ptr %62, i32 0, i32 7, !dbg !2547
  %nbytes64 = getelementptr inbounds %struct.insn_field, ptr %63, i32 0, i32 2, !dbg !2548
  %64 = load i8, ptr %nbytes64, align 1, !dbg !2548
  %conv65 = zext i8 %64 to i32, !dbg !2545
  %cmp66 = icmp eq i32 %conv65, 2, !dbg !2549
  br i1 %cmp66, label %if.then68, label %if.else72, !dbg !2550

if.then68:                                        ; preds = %if.then56
  %65 = load ptr, ptr %insn.addr, align 8, !dbg !2551
  %66 = getelementptr inbounds %struct.insn, ptr %65, i32 0, i32 7, !dbg !2552
  %67 = getelementptr inbounds %struct.insn_field, ptr %66, i32 0, i32 0, !dbg !2553
  %68 = load i16, ptr %67, align 8, !dbg !2554
  %conv69 = sext i16 %68 to i32, !dbg !2554
  %69 = load ptr, ptr %p.addr, align 8, !dbg !2555
  %ainsn70 = getelementptr inbounds %struct.kprobe, ptr %69, i32 0, i32 9, !dbg !2556
  %rel3271 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn70, i32 0, i32 4, !dbg !2557
  store i32 %conv69, ptr %rel3271, align 4, !dbg !2558
  br label %if.end75, !dbg !2555

if.else72:                                        ; preds = %if.then56
  %70 = load ptr, ptr %insn.addr, align 8, !dbg !2559
  %71 = getelementptr inbounds %struct.insn, ptr %70, i32 0, i32 7, !dbg !2560
  %72 = getelementptr inbounds %struct.insn_field, ptr %71, i32 0, i32 0, !dbg !2561
  %73 = load i32, ptr %72, align 8, !dbg !2562
  %74 = load ptr, ptr %p.addr, align 8, !dbg !2563
  %ainsn73 = getelementptr inbounds %struct.kprobe, ptr %74, i32 0, i32 9, !dbg !2564
  %rel3274 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn73, i32 0, i32 4, !dbg !2565
  store i32 %73, ptr %rel3274, align 4, !dbg !2566
  br label %if.end75

if.end75:                                         ; preds = %if.else72, %if.then68
  br label %if.end95, !dbg !2567

if.else76:                                        ; preds = %sw.bb49
  %75 = load i8, ptr %opcode, align 1, !dbg !2568
  %conv77 = zext i8 %75 to i32, !dbg !2568
  %cmp78 = icmp eq i32 %conv77, 1, !dbg !2570
  br i1 %cmp78, label %land.lhs.true, label %if.end94, !dbg !2571

land.lhs.true:                                    ; preds = %if.else76
  %76 = load ptr, ptr %insn.addr, align 8, !dbg !2572
  %modrm = getelementptr inbounds %struct.insn, ptr %76, i32 0, i32 4, !dbg !2572
  %77 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 0, !dbg !2572
  %arrayidx80 = getelementptr [4 x i8], ptr %77, i64 0, i64 0, !dbg !2572
  %78 = load i8, ptr %arrayidx80, align 8, !dbg !2572
  %conv81 = zext i8 %78 to i32, !dbg !2572
  %and82 = and i32 %conv81, 56, !dbg !2572
  %shr = ashr i32 %and82, 3, !dbg !2572
  %cmp83 = icmp eq i32 %shr, 0, !dbg !2573
  br i1 %cmp83, label %land.lhs.true85, label %if.end94, !dbg !2574

land.lhs.true85:                                  ; preds = %land.lhs.true
  %79 = load ptr, ptr %insn.addr, align 8, !dbg !2575
  %modrm86 = getelementptr inbounds %struct.insn, ptr %79, i32 0, i32 4, !dbg !2575
  %80 = getelementptr inbounds %struct.insn_field, ptr %modrm86, i32 0, i32 0, !dbg !2575
  %arrayidx87 = getelementptr [4 x i8], ptr %80, i64 0, i64 0, !dbg !2575
  %81 = load i8, ptr %arrayidx87, align 8, !dbg !2575
  %conv88 = zext i8 %81 to i32, !dbg !2575
  %and89 = and i32 %conv88, 192, !dbg !2575
  %shr90 = ashr i32 %and89, 6, !dbg !2575
  %cmp91 = icmp eq i32 %shr90, 3, !dbg !2576
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !2577

if.then93:                                        ; preds = %land.lhs.true85
  store i32 -95, ptr %retval, align 4, !dbg !2578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2578

if.end94:                                         ; preds = %land.lhs.true85, %land.lhs.true, %if.else76
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end75
  br label %sw.epilog152, !dbg !2580

sw.bb96:                                          ; preds = %entry, %entry, %entry, %entry
  %82 = load ptr, ptr %p.addr, align 8, !dbg !2581
  %ainsn97 = getelementptr inbounds %struct.kprobe, ptr %82, i32 0, i32 9, !dbg !2582
  %emulate_op98 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn97, i32 0, i32 5, !dbg !2583
  store ptr @kprobe_emulate_loop, ptr %emulate_op98, align 8, !dbg !2584
  %83 = load i8, ptr %opcode, align 1, !dbg !2585
  %conv99 = zext i8 %83 to i32, !dbg !2585
  %and100 = and i32 %conv99, 3, !dbg !2586
  %conv101 = trunc i32 %and100 to i8, !dbg !2585
  %84 = load ptr, ptr %p.addr, align 8, !dbg !2587
  %ainsn102 = getelementptr inbounds %struct.kprobe, ptr %84, i32 0, i32 9, !dbg !2588
  %85 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn102, i32 0, i32 3, !dbg !2589
  %type103 = getelementptr inbounds %struct.anon.0, ptr %85, i32 0, i32 0, !dbg !2590
  store i8 %conv101, ptr %type103, align 2, !dbg !2591
  %86 = load ptr, ptr %insn.addr, align 8, !dbg !2592
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %86, i32 0, i32 12, !dbg !2593
  %87 = load i8, ptr %addr_bytes, align 1, !dbg !2593
  %conv104 = zext i8 %87 to i32, !dbg !2592
  %mul = mul i32 %conv104, 8, !dbg !2594
  %conv105 = trunc i32 %mul to i8, !dbg !2592
  %88 = load ptr, ptr %p.addr, align 8, !dbg !2595
  %ainsn106 = getelementptr inbounds %struct.kprobe, ptr %88, i32 0, i32 9, !dbg !2596
  %89 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn106, i32 0, i32 3, !dbg !2597
  %asize = getelementptr inbounds %struct.anon.0, ptr %89, i32 0, i32 1, !dbg !2598
  store i8 %conv105, ptr %asize, align 1, !dbg !2599
  %90 = load ptr, ptr %insn.addr, align 8, !dbg !2600
  %91 = getelementptr inbounds %struct.insn, ptr %90, i32 0, i32 7, !dbg !2601
  %92 = getelementptr inbounds %struct.insn_field, ptr %91, i32 0, i32 0, !dbg !2602
  %93 = load i8, ptr %92, align 8, !dbg !2603
  %conv107 = sext i8 %93 to i32, !dbg !2603
  %94 = load ptr, ptr %p.addr, align 8, !dbg !2604
  %ainsn108 = getelementptr inbounds %struct.kprobe, ptr %94, i32 0, i32 9, !dbg !2605
  %rel32109 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn108, i32 0, i32 4, !dbg !2606
  store i32 %conv107, ptr %rel32109, align 4, !dbg !2607
  br label %sw.epilog152, !dbg !2608

sw.bb110:                                         ; preds = %entry
  %95 = load ptr, ptr %insn.addr, align 8, !dbg !2609
  %modrm111 = getelementptr inbounds %struct.insn, ptr %95, i32 0, i32 4, !dbg !2610
  %96 = getelementptr inbounds %struct.insn_field, ptr %modrm111, i32 0, i32 0, !dbg !2611
  %arrayidx112 = getelementptr [4 x i8], ptr %96, i64 0, i64 0, !dbg !2609
  %97 = load i8, ptr %arrayidx112, align 8, !dbg !2609
  store i8 %97, ptr %opcode, align 1, !dbg !2612
  %98 = load i8, ptr %opcode, align 1, !dbg !2613
  %conv113 = zext i8 %98 to i32, !dbg !2613
  %and114 = and i32 %conv113, 56, !dbg !2613
  %shr115 = ashr i32 %and114, 3, !dbg !2613
  switch i32 %shr115, label %sw.epilog [
    i32 2, label %sw.bb116
    i32 4, label %sw.bb119
    i32 3, label %sw.bb122
    i32 5, label %sw.bb122
  ], !dbg !2614

sw.bb116:                                         ; preds = %sw.bb110
  %99 = load ptr, ptr %p.addr, align 8, !dbg !2615
  %ainsn117 = getelementptr inbounds %struct.kprobe, ptr %99, i32 0, i32 9, !dbg !2617
  %emulate_op118 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn117, i32 0, i32 5, !dbg !2618
  store ptr @kprobe_emulate_call_indirect, ptr %emulate_op118, align 8, !dbg !2619
  br label %sw.epilog, !dbg !2620

sw.bb119:                                         ; preds = %sw.bb110
  %100 = load ptr, ptr %p.addr, align 8, !dbg !2621
  %ainsn120 = getelementptr inbounds %struct.kprobe, ptr %100, i32 0, i32 9, !dbg !2622
  %emulate_op121 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn120, i32 0, i32 5, !dbg !2623
  store ptr @kprobe_emulate_jmp_indirect, ptr %emulate_op121, align 8, !dbg !2624
  br label %sw.epilog, !dbg !2625

sw.bb122:                                         ; preds = %sw.bb110, %sw.bb110
  store i32 -95, ptr %retval, align 4, !dbg !2626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2626

sw.epilog:                                        ; preds = %sw.bb110, %sw.bb119, %sw.bb116
  %101 = load ptr, ptr %p.addr, align 8, !dbg !2627
  %ainsn123 = getelementptr inbounds %struct.kprobe, ptr %101, i32 0, i32 9, !dbg !2629
  %emulate_op124 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn123, i32 0, i32 5, !dbg !2630
  %102 = load ptr, ptr %emulate_op124, align 8, !dbg !2630
  %tobool = icmp ne ptr %102, null, !dbg !2627
  br i1 %tobool, label %if.end126, label %if.then125, !dbg !2631

if.then125:                                       ; preds = %sw.epilog
  br label %sw.epilog152, !dbg !2632

if.end126:                                        ; preds = %sw.epilog
  %103 = load ptr, ptr %insn.addr, align 8, !dbg !2633
  %addr_bytes127 = getelementptr inbounds %struct.insn, ptr %103, i32 0, i32 12, !dbg !2635
  %104 = load i8, ptr %addr_bytes127, align 1, !dbg !2635
  %conv128 = zext i8 %104 to i64, !dbg !2633
  %cmp129 = icmp ne i64 %conv128, 8, !dbg !2636
  br i1 %cmp129, label %if.then131, label %if.end132, !dbg !2637

if.then131:                                       ; preds = %if.end126
  store i32 -95, ptr %retval, align 4, !dbg !2638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2638

if.end132:                                        ; preds = %if.end126
  %105 = load i8, ptr %opcode, align 1, !dbg !2639
  %conv133 = zext i8 %105 to i32, !dbg !2639
  %and134 = and i32 %conv133, 192, !dbg !2639
  %shr135 = ashr i32 %and134, 6, !dbg !2639
  %cmp136 = icmp ne i32 %shr135, 3, !dbg !2641
  br i1 %cmp136, label %if.then138, label %if.end139, !dbg !2642

if.then138:                                       ; preds = %if.end132
  store i32 -95, ptr %retval, align 4, !dbg !2643
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2643

if.end139:                                        ; preds = %if.end132
  %106 = load i8, ptr %opcode, align 1, !dbg !2644
  %conv140 = zext i8 %106 to i32, !dbg !2644
  %and141 = and i32 %conv140, 7, !dbg !2644
  %conv142 = trunc i32 %and141 to i8, !dbg !2644
  %107 = load ptr, ptr %p.addr, align 8, !dbg !2645
  %ainsn143 = getelementptr inbounds %struct.kprobe, ptr %107, i32 0, i32 9, !dbg !2646
  %108 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn143, i32 0, i32 3, !dbg !2647
  %reg = getelementptr inbounds %struct.anon.1, ptr %108, i32 0, i32 0, !dbg !2648
  store i8 %conv142, ptr %reg, align 2, !dbg !2649
  %109 = load ptr, ptr %insn.addr, align 8, !dbg !2650
  %rex_prefix = getelementptr inbounds %struct.insn, ptr %109, i32 0, i32 1, !dbg !2650
  %110 = getelementptr inbounds %struct.insn_field, ptr %rex_prefix, i32 0, i32 0, !dbg !2650
  %111 = load i32, ptr %110, align 8, !dbg !2650
  %and144 = and i32 %111, 1, !dbg !2650
  %tobool145 = icmp ne i32 %and144, 0, !dbg !2650
  br i1 %tobool145, label %if.then146, label %if.end151, !dbg !2652

if.then146:                                       ; preds = %if.end139
  %112 = load ptr, ptr %p.addr, align 8, !dbg !2653
  %ainsn147 = getelementptr inbounds %struct.kprobe, ptr %112, i32 0, i32 9, !dbg !2654
  %113 = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn147, i32 0, i32 3, !dbg !2655
  %reg148 = getelementptr inbounds %struct.anon.1, ptr %113, i32 0, i32 0, !dbg !2656
  %114 = load i8, ptr %reg148, align 2, !dbg !2657
  %conv149 = zext i8 %114 to i32, !dbg !2657
  %add = add i32 %conv149, 8, !dbg !2657
  %conv150 = trunc i32 %add to i8, !dbg !2657
  store i8 %conv150, ptr %reg148, align 2, !dbg !2657
  br label %if.end151, !dbg !2653

if.end151:                                        ; preds = %if.then146, %if.end139
  br label %sw.epilog152, !dbg !2658

sw.default:                                       ; preds = %entry
  br label %sw.epilog152, !dbg !2659

sw.epilog152:                                     ; preds = %sw.default, %if.end151, %if.then125, %sw.bb96, %if.end95, %sw.bb41, %if.end40, %if.end, %sw.bb3, %sw.bb
  %115 = load ptr, ptr %insn.addr, align 8, !dbg !2660
  %length = getelementptr inbounds %struct.insn, ptr %115, i32 0, i32 13, !dbg !2661
  %116 = load i8, ptr %length, align 2, !dbg !2661
  %117 = load ptr, ptr %p.addr, align 8, !dbg !2662
  %ainsn153 = getelementptr inbounds %struct.kprobe, ptr %117, i32 0, i32 9, !dbg !2663
  %size = getelementptr inbounds %struct.arch_specific_insn, ptr %ainsn153, i32 0, i32 2, !dbg !2664
  store i8 %116, ptr %size, align 1, !dbg !2665
  store i32 0, ptr %retval, align 4, !dbg !2666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2666

cleanup:                                          ; preds = %sw.epilog152, %if.then138, %if.then131, %sw.bb122, %if.then93, %sw.bb6
  call void @llvm.lifetime.end.p0(i64 1, ptr %opcode) #15, !dbg !2667
  %118 = load i32, ptr %retval, align 4, !dbg !2667
  ret i32 %118, !dbg !2667
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @prepare_singlestep(ptr noundef %buf, ptr noundef %p, ptr noundef %insn) #0 align 16 !dbg !2668 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %insn.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2672, metadata !DIExpression()), !dbg !2676
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2673, metadata !DIExpression()), !dbg !2677
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !2674, metadata !DIExpression()), !dbg !2678
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !2679
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2675, metadata !DIExpression()), !dbg !2680
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !2681
  %length = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 13, !dbg !2682
  %1 = load i8, ptr %length, align 2, !dbg !2682
  %conv = zext i8 %1 to i32, !dbg !2681
  store i32 %conv, ptr %len, align 4, !dbg !2680
  %2 = load i32, ptr %len, align 4, !dbg !2683
  %sub = sub i32 15, %2, !dbg !2687
  %cmp = icmp slt i32 %sub, 1, !dbg !2688
  br i1 %cmp, label %if.then, label %if.end, !dbg !2689

if.then:                                          ; preds = %entry
  store i32 -28, ptr %retval, align 4, !dbg !2690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2690

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2691
  %4 = load i32, ptr %len, align 4, !dbg !2692
  %idxprom = sext i32 %4 to i64, !dbg !2691
  %arrayidx = getelementptr i8, ptr %3, i64 %idxprom, !dbg !2691
  store i8 -52, ptr %arrayidx, align 1, !dbg !2693
  %5 = load i32, ptr %len, align 4, !dbg !2694
  %add = add i32 %5, 1, !dbg !2694
  store i32 %add, ptr %len, align 4, !dbg !2694
  %6 = load i32, ptr %len, align 4, !dbg !2695
  store i32 %6, ptr %retval, align 4, !dbg !2696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2696

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !2697
  %7 = load i32, ptr %retval, align 4, !dbg !2697
  ret i32 %7, !dbg !2697
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2698 dso_local void @__free_insn_slot(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2701 dso_local i32 @setup_detour_execution(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @save_previous_kprobe(ptr noundef %kcb) #2 align 16 !dbg !2704 {
entry:
  %kcb.addr = alloca ptr, align 8
  store ptr %kcb, ptr %kcb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kcb.addr, metadata !2706, metadata !DIExpression()), !dbg !2707
  %call = call ptr @kprobe_running() #14, !dbg !2708
  %0 = load ptr, ptr %kcb.addr, align 8, !dbg !2709
  %prev_kprobe = getelementptr inbounds %struct.kprobe_ctlblk, ptr %0, i32 0, i32 3, !dbg !2710
  %kp = getelementptr inbounds %struct.prev_kprobe, ptr %prev_kprobe, i32 0, i32 0, !dbg !2711
  store ptr %call, ptr %kp, align 8, !dbg !2712
  %1 = load ptr, ptr %kcb.addr, align 8, !dbg !2713
  %kprobe_status = getelementptr inbounds %struct.kprobe_ctlblk, ptr %1, i32 0, i32 0, !dbg !2714
  %2 = load i64, ptr %kprobe_status, align 8, !dbg !2714
  %3 = load ptr, ptr %kcb.addr, align 8, !dbg !2715
  %prev_kprobe1 = getelementptr inbounds %struct.kprobe_ctlblk, ptr %3, i32 0, i32 3, !dbg !2716
  %status = getelementptr inbounds %struct.prev_kprobe, ptr %prev_kprobe1, i32 0, i32 1, !dbg !2717
  store i64 %2, ptr %status, align 8, !dbg !2718
  %4 = load ptr, ptr %kcb.addr, align 8, !dbg !2719
  %kprobe_old_flags = getelementptr inbounds %struct.kprobe_ctlblk, ptr %4, i32 0, i32 1, !dbg !2720
  %5 = load i64, ptr %kprobe_old_flags, align 8, !dbg !2720
  %6 = load ptr, ptr %kcb.addr, align 8, !dbg !2721
  %prev_kprobe2 = getelementptr inbounds %struct.kprobe_ctlblk, ptr %6, i32 0, i32 3, !dbg !2722
  %old_flags = getelementptr inbounds %struct.prev_kprobe, ptr %prev_kprobe2, i32 0, i32 2, !dbg !2723
  store i64 %5, ptr %old_flags, align 8, !dbg !2724
  %7 = load ptr, ptr %kcb.addr, align 8, !dbg !2725
  %kprobe_saved_flags = getelementptr inbounds %struct.kprobe_ctlblk, ptr %7, i32 0, i32 2, !dbg !2726
  %8 = load i64, ptr %kprobe_saved_flags, align 8, !dbg !2726
  %9 = load ptr, ptr %kcb.addr, align 8, !dbg !2727
  %prev_kprobe3 = getelementptr inbounds %struct.kprobe_ctlblk, ptr %9, i32 0, i32 3, !dbg !2728
  %saved_flags = getelementptr inbounds %struct.prev_kprobe, ptr %prev_kprobe3, i32 0, i32 3, !dbg !2729
  store i64 %8, ptr %saved_flags, align 8, !dbg !2730
  ret void, !dbg !2731
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2732 dso_local void @kprobes_inc_nmissed_count(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2733 dso_local void @dump_kprobe(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #2 align 16 !dbg !2734 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !2739, metadata !DIExpression()), !dbg !2740
  ret void, !dbg !2741
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone nounwind willreturn memory(none) }
attributes #17 = { cold noredzone }
attributes #18 = { nounwind memory(read) }
attributes #19 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!311, !312, !313, !314, !315, !316, !317, !318}
!llvm.ident = !{!319}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "current_kprobe", scope: !2, file: !3, line: 61, type: !86, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/kprobes/.core.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/kprobes/core\22 -D KBUILD_BASENAME=\22core\22 -D KBUILD_MODNAME=\22core\22 -D __KBUILD_MODNAME=kmod_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/kprobes/core.ll arch/x86/kernel/kprobes/core.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !207, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/kprobes/core.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a8393c8b8a92a548327c03b8d7a2178")
!4 = !{!5, !13}
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
!18 = !{!19, !20, !21, !23, !24, !26, !27, !35, !36, !39, !41, !42, !56, !57, !60, !64, !68, !72, !76, !206, !86, !61}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !22, line: 42, baseType: !20)
!22 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprobe_opcode_t", file: !29, line: 26, baseType: !30)
!29 = !DIFile(filename: "./arch/x86/include/asm/kprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d86012779c16e4af7510ec19eb8bcd8b")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !31, line: 17, baseType: !32)
!31 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !33, line: 21, baseType: !34)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !31, line: 22, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !33, line: 30, baseType: !38)
!38 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !31, line: 20, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !33, line: 26, baseType: !26)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__arch_relative_insn", scope: !44, file: !3, line: 112, size: 40, elements: !53)
!44 = distinct !DISubprogram(name: "__synthesize_relative_insn", scope: !3, file: !3, line: 110, type: !45, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !19, !19, !19, !30}
!47 = !{!48, !49, !50, !51, !52}
!48 = !DILocalVariable(name: "dest", arg: 1, scope: !44, file: !3, line: 110, type: !19)
!49 = !DILocalVariable(name: "from", arg: 2, scope: !44, file: !3, line: 110, type: !19)
!50 = !DILocalVariable(name: "to", arg: 3, scope: !44, file: !3, line: 110, type: !19)
!51 = !DILocalVariable(name: "op", arg: 4, scope: !44, file: !3, line: 110, type: !30)
!52 = !DILocalVariable(name: "insn", scope: !44, file: !3, line: 115, type: !42)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !43, file: !3, line: 113, baseType: !30, size: 8)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "raddr", scope: !43, file: !3, line: 114, baseType: !39, size: 32, offset: 8)
!56 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !31, line: 21, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !7)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !31, line: 23, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !33, line: 31, baseType: !63)
!63 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !31, line: 19, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !33, line: 24, baseType: !67)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !31, line: 18, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !33, line: 23, baseType: !71)
!71 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !31, line: 16, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !33, line: 20, baseType: !75)
!75 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kprobe_ctlblk", file: !29, line: 108, size: 448, elements: !78)
!78 = !{!79, !80, !81, !82}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_status", scope: !77, file: !29, line: 109, baseType: !20, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_old_flags", scope: !77, file: !29, line: 110, baseType: !20, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_saved_flags", scope: !77, file: !29, line: 111, baseType: !20, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "prev_kprobe", scope: !77, file: !29, line: 112, baseType: !83, size: 256, offset: 192)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_kprobe", file: !29, line: 100, size: 256, elements: !84)
!84 = !{!85, !203, !204, !205}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !83, file: !29, line: 101, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kprobe", file: !88, line: 60, size: 1024, elements: !89)
!88 = !DIFile(filename: "./include/linux/kprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "110870054f860a0910edee7c61ce83a6")
!89 = !{!90, !97, !103, !104, !105, !109, !110, !167, !172, !173, !202}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !87, file: !88, line: 61, baseType: !91, size: 128)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !22, line: 198, size: 128, elements: !92)
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !22, line: 199, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !91, file: !22, line: 199, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !87, file: !88, line: 64, baseType: !98, size: 128, offset: 128)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !22, line: 190, size: 128, elements: !99)
!99 = !{!100, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !22, line: 191, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !98, file: !22, line: 191, baseType: !101, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "nmissed", scope: !87, file: !88, line: 67, baseType: !20, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !87, file: !88, line: 70, baseType: !27, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_name", scope: !87, file: !88, line: 73, baseType: !106, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !87, file: !88, line: 76, baseType: !7, size: 32, offset: 448)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pre_handler", scope: !87, file: !88, line: 79, baseType: !111, size: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprobe_pre_handler_t", file: !88, line: 54, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!26, !86, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !117, line: 103, size: 1344, elements: !118)
!117 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !147, !148, !149}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !116, file: !117, line: 109, baseType: !20, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !116, file: !117, line: 110, baseType: !20, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !116, file: !117, line: 111, baseType: !20, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !116, file: !117, line: 112, baseType: !20, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !116, file: !117, line: 113, baseType: !20, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !116, file: !117, line: 114, baseType: !20, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !116, file: !117, line: 117, baseType: !20, size: 64, offset: 384)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !116, file: !117, line: 118, baseType: !20, size: 64, offset: 448)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !116, file: !117, line: 119, baseType: !20, size: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !116, file: !117, line: 120, baseType: !20, size: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !116, file: !117, line: 121, baseType: !20, size: 64, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !116, file: !117, line: 122, baseType: !20, size: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !116, file: !117, line: 123, baseType: !20, size: 64, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !116, file: !117, line: 124, baseType: !20, size: 64, offset: 832)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !116, file: !117, line: 125, baseType: !20, size: 64, offset: 896)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !116, file: !117, line: 139, baseType: !20, size: 64, offset: 960)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !116, file: !117, line: 142, baseType: !20, size: 64, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !117, line: 144, baseType: !137, size: 64, offset: 1088)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !117, line: 144, size: 64, elements: !138)
!138 = !{!139, !140, !141}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !137, file: !117, line: 146, baseType: !65, size: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !137, file: !117, line: 148, baseType: !61, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !137, file: !117, line: 150, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !117, line: 59, size: 64, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !142, file: !117, line: 61, baseType: !61, size: 16, flags: DIFlagBitField, extraData: i64 0)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !142, file: !117, line: 63, baseType: !61, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !142, file: !117, line: 65, baseType: !61, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !117, line: 153, baseType: !20, size: 64, offset: 1152)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !116, file: !117, line: 154, baseType: !20, size: 64, offset: 1216)
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !117, line: 156, baseType: !150, size: 64, offset: 1280)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !117, line: 156, size: 64, elements: !151)
!151 = !{!152, !153, !154}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !150, file: !117, line: 158, baseType: !65, size: 16)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !150, file: !117, line: 160, baseType: !61, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !150, file: !117, line: 162, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !117, line: 69, size: 64, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !155, file: !117, line: 71, baseType: !61, size: 16, flags: DIFlagBitField, extraData: i64 0)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !155, file: !117, line: 73, baseType: !61, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !155, file: !117, line: 75, baseType: !61, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !155, file: !117, line: 77, baseType: !61, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !155, file: !117, line: 80, baseType: !61, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !155, file: !117, line: 83, baseType: !61, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !155, file: !117, line: 86, baseType: !61, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !155, file: !117, line: 88, baseType: !61, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !155, file: !117, line: 93, baseType: !61, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !155, file: !117, line: 100, baseType: !61, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "post_handler", scope: !87, file: !88, line: 82, baseType: !168, size: 64, offset: 576)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprobe_post_handler_t", file: !88, line: 55, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !86, !115, !20}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !87, file: !88, line: 85, baseType: !28, size: 8, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ainsn", scope: !87, file: !88, line: 88, baseType: !174, size: 256, offset: 704)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_specific_insn", file: !29, line: 54, size: 256, elements: !175)
!175 = !{!176, !177, !178, !179, !196, !197, !201}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !174, file: !29, line: 56, baseType: !27, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "boostable", scope: !174, file: !29, line: 64, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !174, file: !29, line: 65, baseType: !34, size: 8, offset: 72)
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !29, line: 66, baseType: !180, size: 16, offset: 80)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !29, line: 66, size: 16, elements: !181)
!181 = !{!182, !183, !187, !192}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !180, file: !29, line: 67, baseType: !34, size: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "jcc", scope: !180, file: !29, line: 70, baseType: !184, size: 8)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !180, file: !29, line: 68, size: 8, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !184, file: !29, line: 69, baseType: !34, size: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !180, file: !29, line: 74, baseType: !188, size: 16)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !180, file: !29, line: 71, size: 16, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !188, file: !29, line: 72, baseType: !34, size: 8)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "asize", scope: !188, file: !29, line: 73, baseType: !34, size: 8, offset: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "indirect", scope: !180, file: !29, line: 77, baseType: !193, size: 8)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !180, file: !29, line: 75, size: 8, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !193, file: !29, line: 76, baseType: !34, size: 8)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "rel32", scope: !174, file: !29, line: 79, baseType: !39, size: 32, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "emulate_op", scope: !174, file: !29, line: 80, baseType: !198, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !86, !115}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_len", scope: !174, file: !29, line: 82, baseType: !26, size: 32, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !88, line: 94, baseType: !58, size: 32, offset: 960)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !83, file: !29, line: 102, baseType: !20, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "old_flags", scope: !83, file: !29, line: 103, baseType: !20, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "saved_flags", scope: !83, file: !29, line: 104, baseType: !20, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!207 = !{!0, !208, !213, !222, !225, !227, !229, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !265, !267, !269, !275, !293, !298, !303, !308}
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 96, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 12)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "kretprobe_blacklist", scope: !2, file: !3, line: 101, type: !215, isLocal: false, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 256, elements: !220)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kretprobe_blackpoint", file: !88, line: 180, size: 128, elements: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !88, line: 181, baseType: !106, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !216, file: !88, line: 182, baseType: !19, size: 64, offset: 64)
!220 = !{!221}
!221 = !DISubrange(count: 2)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "kretprobe_blacklist_size", scope: !2, file: !3, line: 107, type: !224, isLocal: false, isDefinition: true)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "_kbl_addr_synthesize_reljump", scope: !2, file: !3, line: 127, type: !20, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "_kbl_addr_synthesize_relcall", scope: !2, file: !3, line: 134, type: !20, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !3, line: 416, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 512, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 64)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "_kbl_addr_kprobe_emulate_ifmodifiers", scope: !2, file: !3, line: 493, type: !20, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "_kbl_addr_kprobe_emulate_ret", scope: !2, file: !3, line: 499, type: !20, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "_kbl_addr_kprobe_emulate_call", scope: !2, file: !3, line: 508, type: !20, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "_kbl_addr_kprobe_emulate_jmp", scope: !2, file: !3, line: 517, type: !20, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "_kbl_addr_kprobe_emulate_jcc", scope: !2, file: !3, line: 525, type: !20, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "_kbl_addr_kprobe_emulate_loop", scope: !2, file: !3, line: 561, type: !20, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "_kbl_addr_kprobe_emulate_call_indirect", scope: !2, file: !3, line: 591, type: !20, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "_kbl_addr_kprobe_emulate_jmp_indirect", scope: !2, file: !3, line: 599, type: !20, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "_kbl_addr_kprobe_post_process", scope: !2, file: !3, line: 851, type: !20, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "_kbl_addr_setup_singlestep", scope: !2, file: !3, line: 890, type: !20, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "_kbl_addr_resume_singlestep", scope: !2, file: !3, line: 921, type: !20, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "_kbl_addr_reenter_kprobe", scope: !2, file: !3, line: 956, type: !20, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "_kbl_addr_kprobe_int3_handler", scope: !2, file: !3, line: 1021, type: !20, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1030, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 248, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 31)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "_kbl_addr_kprobe_fault_handler", scope: !2, file: !3, line: 1055, type: !20, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "kprobe_ctlblk", scope: !2, file: !3, line: 62, type: !77, isLocal: false, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "twobyte_is_boostable", scope: !2, file: !3, line: 77, type: !271, isLocal: true, isDefinition: true)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 256, elements: !273)
!272 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!273 = !{!274}
!274 = !DISubrange(count: 8)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "jcc_mask", scope: !277, file: !278, line: 191, type: !290, isLocal: true, isDefinition: true)
!277 = distinct !DISubprogram(name: "int3_emulate_jcc", scope: !278, file: !278, line: 189, type: !279, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !281)
!278 = !DIFile(filename: "./arch/x86/include/asm/text-patching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4df22955607f445a62da6adb58adb51")
!279 = !DISubroutineType(types: !280)
!280 = !{null, !115, !30, !20, !20}
!281 = !{!282, !283, !284, !285, !286, !289}
!282 = !DILocalVariable(name: "regs", arg: 1, scope: !277, file: !278, line: 189, type: !115)
!283 = !DILocalVariable(name: "cc", arg: 2, scope: !277, file: !278, line: 189, type: !30)
!284 = !DILocalVariable(name: "ip", arg: 3, scope: !277, file: !278, line: 189, type: !20)
!285 = !DILocalVariable(name: "disp", arg: 4, scope: !277, file: !278, line: 189, type: !20)
!286 = !DILocalVariable(name: "invert", scope: !277, file: !278, line: 200, type: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !22, line: 35, baseType: !288)
!288 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!289 = !DILocalVariable(name: "match", scope: !277, file: !278, line: 201, type: !287)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 384, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 6)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "addrmode_regoffs", scope: !2, file: !3, line: 563, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 512, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 16)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !3, line: 945, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 272, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 34)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !88, line: 403, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 40, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 5)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !3, line: 828, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 48, elements: !291)
!311 = !{i32 7, !"Dwarf Version", i32 5}
!312 = !{i32 2, !"Debug Info Version", i32 3}
!313 = !{i32 1, !"wchar_size", i32 2}
!314 = !{i32 8, !"cf-protection-branch", i32 1}
!315 = !{i32 4, !"function_return_thunk_extern", i32 1}
!316 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!317 = !{i32 1, !"Code Model", i32 2}
!318 = !{i32 1, !"override-stack-alignment", i32 8}
!319 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!320 = distinct !DISubprogram(name: "synthesize_reljump", scope: !3, file: !3, line: 123, type: !321, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !323)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !19, !19, !19}
!323 = !{!324, !325, !326}
!324 = !DILocalVariable(name: "dest", arg: 1, scope: !320, file: !3, line: 123, type: !19)
!325 = !DILocalVariable(name: "from", arg: 2, scope: !320, file: !3, line: 123, type: !19)
!326 = !DILocalVariable(name: "to", arg: 3, scope: !320, file: !3, line: 123, type: !19)
!327 = !DILocation(line: 123, column: 31, scope: !320)
!328 = !DILocation(line: 123, column: 43, scope: !320)
!329 = !DILocation(line: 123, column: 55, scope: !320)
!330 = !DILocation(line: 125, column: 29, scope: !320)
!331 = !DILocation(line: 125, column: 35, scope: !320)
!332 = !DILocation(line: 125, column: 41, scope: !320)
!333 = !DILocation(line: 125, column: 2, scope: !320)
!334 = !DILocation(line: 126, column: 1, scope: !320)
!335 = !DILocation(line: 110, column: 34, scope: !44)
!336 = !DILocation(line: 110, column: 46, scope: !44)
!337 = !DILocation(line: 110, column: 58, scope: !44)
!338 = !DILocation(line: 110, column: 65, scope: !44)
!339 = !DILocation(line: 112, column: 2, scope: !44)
!340 = !DILocation(line: 115, column: 14, scope: !44)
!341 = !DILocation(line: 117, column: 40, scope: !44)
!342 = !DILocation(line: 117, column: 7, scope: !44)
!343 = !DILocation(line: 118, column: 29, scope: !44)
!344 = !DILocation(line: 118, column: 22, scope: !44)
!345 = !DILocation(line: 118, column: 43, scope: !44)
!346 = !DILocation(line: 118, column: 36, scope: !44)
!347 = !DILocation(line: 118, column: 49, scope: !44)
!348 = !DILocation(line: 118, column: 33, scope: !44)
!349 = !DILocation(line: 118, column: 16, scope: !44)
!350 = !DILocation(line: 118, column: 2, scope: !44)
!351 = !DILocation(line: 118, column: 8, scope: !44)
!352 = !DILocation(line: 118, column: 14, scope: !44)
!353 = !DILocation(line: 119, column: 13, scope: !44)
!354 = !DILocation(line: 119, column: 2, scope: !44)
!355 = !DILocation(line: 119, column: 8, scope: !44)
!356 = !DILocation(line: 119, column: 11, scope: !44)
!357 = !DILocation(line: 120, column: 1, scope: !44)
!358 = distinct !DISubprogram(name: "synthesize_relcall", scope: !3, file: !3, line: 130, type: !321, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !359)
!359 = !{!360, !361, !362}
!360 = !DILocalVariable(name: "dest", arg: 1, scope: !358, file: !3, line: 130, type: !19)
!361 = !DILocalVariable(name: "from", arg: 2, scope: !358, file: !3, line: 130, type: !19)
!362 = !DILocalVariable(name: "to", arg: 3, scope: !358, file: !3, line: 130, type: !19)
!363 = !DILocation(line: 130, column: 31, scope: !358)
!364 = !DILocation(line: 130, column: 43, scope: !358)
!365 = !DILocation(line: 130, column: 55, scope: !358)
!366 = !DILocation(line: 132, column: 29, scope: !358)
!367 = !DILocation(line: 132, column: 35, scope: !358)
!368 = !DILocation(line: 132, column: 41, scope: !358)
!369 = !DILocation(line: 132, column: 2, scope: !358)
!370 = !DILocation(line: 133, column: 1, scope: !358)
!371 = distinct !DISubprogram(name: "can_boost", scope: !3, file: !3, line: 140, type: !372, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !422)
!372 = !DISubroutineType(types: !373)
!373 = !{!26, !374, !19}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn", file: !6, line: 68, size: 896, elements: !376)
!376 = !{!377, !393, !394, !395, !396, !397, !398, !399, !405, !410, !411, !413, !414, !415, !416, !417, !420, !421}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !375, file: !6, line: 69, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn_field", file: !6, line: 16, size: 64, elements: !379)
!379 = !{!380, !391, !392}
!380 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !6, line: 17, baseType: !381, size: 32)
!381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !6, line: 17, size: 32, elements: !382)
!382 = !{!383, !386}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !381, file: !6, line: 18, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_value_t", file: !385, line: 13, baseType: !26)
!385 = !DIFile(filename: "./arch/x86/include/asm/inat_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cebd64027eadc0d452590e3ac4fca7d6")
!386 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !381, file: !6, line: 19, baseType: !387, size: 32)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 32, elements: !389)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_byte_t", file: !385, line: 12, baseType: !34)
!389 = !{!390}
!390 = !DISubrange(count: 4)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "got", scope: !378, file: !6, line: 22, baseType: !34, size: 8, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !378, file: !6, line: 23, baseType: !34, size: 8, offset: 40)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "rex_prefix", scope: !375, file: !6, line: 73, baseType: !378, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "vex_prefix", scope: !375, file: !6, line: 74, baseType: !378, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !375, file: !6, line: 75, baseType: !378, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "modrm", scope: !375, file: !6, line: 80, baseType: !378, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !375, file: !6, line: 81, baseType: !378, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "displacement", scope: !375, file: !6, line: 82, baseType: !378, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !6, line: 83, baseType: !400, size: 64, offset: 448)
!400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !6, line: 83, size: 64, elements: !401)
!401 = !{!402, !403, !404}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "immediate", scope: !400, file: !6, line: 84, baseType: !378, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "moffset1", scope: !400, file: !6, line: 85, baseType: !378, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "immediate1", scope: !400, file: !6, line: 86, baseType: !378, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !6, line: 88, baseType: !406, size: 64, offset: 512)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !6, line: 88, size: 64, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "moffset2", scope: !406, file: !6, line: 89, baseType: !378, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "immediate2", scope: !406, file: !6, line: 90, baseType: !378, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "emulate_prefix_size", scope: !375, file: !6, line: 93, baseType: !26, size: 32, offset: 576)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !375, file: !6, line: 94, baseType: !412, size: 32, offset: 608)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_attr_t", file: !385, line: 11, baseType: !7)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "opnd_bytes", scope: !375, file: !6, line: 95, baseType: !34, size: 8, offset: 640)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "addr_bytes", scope: !375, file: !6, line: 96, baseType: !34, size: 8, offset: 648)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !375, file: !6, line: 97, baseType: !34, size: 8, offset: 656)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "x86_64", scope: !375, file: !6, line: 98, baseType: !34, size: 8, offset: 664)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "kaddr", scope: !375, file: !6, line: 100, baseType: !418, size: 64, offset: 704)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "end_kaddr", scope: !375, file: !6, line: 101, baseType: !418, size: 64, offset: 768)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next_byte", scope: !375, file: !6, line: 102, baseType: !418, size: 64, offset: 832)
!422 = !{!423, !424, !425, !426, !427, !428}
!423 = !DILocalVariable(name: "insn", arg: 1, scope: !371, file: !3, line: 140, type: !374)
!424 = !DILocalVariable(name: "addr", arg: 2, scope: !371, file: !3, line: 140, type: !19)
!425 = !DILocalVariable(name: "opcode", scope: !371, file: !3, line: 142, type: !28)
!426 = !DILocalVariable(name: "prefix", scope: !371, file: !3, line: 143, type: !388)
!427 = !DILocalVariable(name: "i", scope: !371, file: !3, line: 144, type: !26)
!428 = !DILocalVariable(name: "attr", scope: !429, file: !3, line: 158, type: !412)
!429 = distinct !DILexicalBlock(scope: !430, file: !3, line: 157, column: 40)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 157, column: 2)
!431 = distinct !DILexicalBlock(scope: !371, file: !3, line: 157, column: 2)
!432 = !DILocation(line: 140, column: 28, scope: !371)
!433 = !DILocation(line: 140, column: 40, scope: !371)
!434 = !DILocation(line: 142, column: 2, scope: !371)
!435 = !DILocation(line: 142, column: 18, scope: !371)
!436 = !DILocation(line: 143, column: 2, scope: !371)
!437 = !DILocation(line: 143, column: 14, scope: !371)
!438 = !DILocation(line: 144, column: 2, scope: !371)
!439 = !DILocation(line: 144, column: 6, scope: !371)
!440 = !DILocation(line: 146, column: 45, scope: !441)
!441 = distinct !DILexicalBlock(scope: !371, file: !3, line: 146, column: 6)
!442 = !DILocation(line: 146, column: 30, scope: !441)
!443 = !DILocation(line: 146, column: 6, scope: !441)
!444 = !DILocation(line: 146, column: 6, scope: !371)
!445 = !DILocation(line: 147, column: 3, scope: !441)
!446 = !DILocation(line: 150, column: 6, scope: !447)
!447 = distinct !DILexicalBlock(scope: !371, file: !3, line: 150, column: 6)
!448 = !DILocation(line: 150, column: 12, scope: !447)
!449 = !DILocation(line: 150, column: 19, scope: !447)
!450 = !DILocation(line: 150, column: 26, scope: !447)
!451 = !DILocation(line: 150, column: 6, scope: !371)
!452 = !DILocation(line: 151, column: 10, scope: !447)
!453 = !DILocation(line: 151, column: 3, scope: !447)
!454 = !DILocation(line: 154, column: 6, scope: !455)
!455 = distinct !DILexicalBlock(scope: !371, file: !3, line: 154, column: 6)
!456 = !DILocation(line: 154, column: 12, scope: !455)
!457 = !DILocation(line: 154, column: 19, scope: !455)
!458 = !DILocation(line: 154, column: 26, scope: !455)
!459 = !DILocation(line: 154, column: 6, scope: !371)
!460 = !DILocation(line: 155, column: 3, scope: !455)
!461 = !DILocation(line: 157, column: 2, scope: !431)
!462 = !DILocation(line: 157, column: 2, scope: !430)
!463 = !DILocation(line: 0, scope: !430)
!464 = !DILocation(line: 158, column: 3, scope: !429)
!465 = !DILocation(line: 158, column: 15, scope: !429)
!466 = !DILocation(line: 160, column: 36, scope: !429)
!467 = !DILocation(line: 160, column: 10, scope: !429)
!468 = !DILocation(line: 160, column: 8, scope: !429)
!469 = !DILocation(line: 162, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !429, file: !3, line: 162, column: 7)
!471 = !DILocation(line: 162, column: 14, scope: !470)
!472 = !DILocation(line: 162, column: 22, scope: !470)
!473 = !DILocation(line: 162, column: 53, scope: !470)
!474 = !DILocation(line: 162, column: 25, scope: !470)
!475 = !DILocation(line: 162, column: 7, scope: !429)
!476 = !DILocation(line: 163, column: 4, scope: !470)
!477 = !DILocation(line: 164, column: 2, scope: !430)
!478 = !DILocation(line: 164, column: 2, scope: !429)
!479 = distinct !{!479, !461, !480, !481, !482}
!480 = !DILocation(line: 164, column: 2, scope: !431)
!481 = !{!"llvm.loop.mustprogress"}
!482 = !{!"llvm.loop.unroll.disable"}
!483 = !DILocation(line: 166, column: 11, scope: !371)
!484 = !DILocation(line: 166, column: 17, scope: !371)
!485 = !DILocation(line: 166, column: 24, scope: !371)
!486 = !DILocation(line: 166, column: 9, scope: !371)
!487 = !DILocation(line: 168, column: 10, scope: !371)
!488 = !DILocation(line: 168, column: 2, scope: !371)
!489 = !DILocation(line: 168, column: 18, scope: !371)
!490 = !DILocation(line: 184, column: 3, scope: !491)
!491 = distinct !DILexicalBlock(scope: !371, file: !3, line: 168, column: 18)
!492 = !DILocation(line: 187, column: 10, scope: !491)
!493 = !DILocation(line: 187, column: 46, scope: !491)
!494 = !DILocation(line: 187, column: 3, scope: !491)
!495 = !DILocation(line: 189, column: 3, scope: !491)
!496 = !DILocation(line: 191, column: 1, scope: !371)
!497 = !DISubprogram(name: "search_exception_tables", scope: !498, file: !498, line: 21, type: !499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!498 = !DIFile(filename: "./include/linux/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1481929230e3bbd9bb07205c0c5f22e")
!499 = !DISubroutineType(types: !500)
!500 = !{!501, !20}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !504, line: 23, size: 96, elements: !505)
!504 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!505 = !{!506, !507, !508}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !503, file: !504, line: 24, baseType: !26, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !503, file: !504, line: 24, baseType: !26, size: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !503, file: !504, line: 24, baseType: !26, size: 32, offset: 64)
!509 = distinct !DISubprogram(name: "const_test_bit", scope: !510, file: !510, line: 166, type: !511, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !516)
!510 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!511 = !DISubroutineType(types: !512)
!512 = !{!287, !20, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!516 = !{!517, !518, !519, !520, !521}
!517 = !DILocalVariable(name: "nr", arg: 1, scope: !509, file: !510, line: 166, type: !20)
!518 = !DILocalVariable(name: "addr", arg: 2, scope: !509, file: !510, line: 166, type: !513)
!519 = !DILocalVariable(name: "p", scope: !509, file: !510, line: 168, type: !24)
!520 = !DILocalVariable(name: "mask", scope: !509, file: !510, line: 169, type: !20)
!521 = !DILocalVariable(name: "val", scope: !509, file: !510, line: 170, type: !20)
!522 = !DILocation(line: 166, column: 30, scope: !509)
!523 = !DILocation(line: 166, column: 64, scope: !509)
!524 = !DILocation(line: 168, column: 2, scope: !509)
!525 = !DILocation(line: 168, column: 23, scope: !509)
!526 = !DILocation(line: 168, column: 50, scope: !509)
!527 = !DILocation(line: 168, column: 57, scope: !509)
!528 = !DILocation(line: 168, column: 55, scope: !509)
!529 = !DILocation(line: 169, column: 2, scope: !509)
!530 = !DILocation(line: 169, column: 16, scope: !509)
!531 = !DILocation(line: 169, column: 23, scope: !509)
!532 = !DILocation(line: 170, column: 2, scope: !509)
!533 = !DILocation(line: 170, column: 16, scope: !509)
!534 = !DILocation(line: 170, column: 23, scope: !509)
!535 = !DILocation(line: 170, column: 22, scope: !509)
!536 = !DILocation(line: 172, column: 12, scope: !509)
!537 = !DILocation(line: 172, column: 18, scope: !509)
!538 = !DILocation(line: 172, column: 16, scope: !509)
!539 = !DILocation(line: 172, column: 10, scope: !509)
!540 = !DILocation(line: 172, column: 9, scope: !509)
!541 = !DILocation(line: 173, column: 1, scope: !509)
!542 = !DILocation(line: 172, column: 2, scope: !509)
!543 = distinct !DISubprogram(name: "_test_bit", scope: !544, file: !544, line: 139, type: !511, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !545)
!544 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!545 = !{!546, !547}
!546 = !DILocalVariable(name: "nr", arg: 1, scope: !543, file: !544, line: 139, type: !20)
!547 = !DILocalVariable(name: "addr", arg: 2, scope: !543, file: !544, line: 139, type: !513)
!548 = !DILocation(line: 139, column: 25, scope: !543)
!549 = !DILocation(line: 139, column: 59, scope: !543)
!550 = !DILocation(line: 141, column: 25, scope: !543)
!551 = !DILocation(line: 141, column: 32, scope: !543)
!552 = !DILocation(line: 141, column: 30, scope: !543)
!553 = !DILocation(line: 141, column: 2, scope: !543)
!554 = !DILocation(line: 142, column: 23, scope: !543)
!555 = !DILocation(line: 142, column: 27, scope: !543)
!556 = !DILocation(line: 142, column: 9, scope: !543)
!557 = !DILocation(line: 142, column: 2, scope: !543)
!558 = !DISubprogram(name: "inat_get_opcode_attribute", scope: !559, file: !559, line: 97, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!559 = !DIFile(filename: "./arch/x86/include/asm/inat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6bb7b4e1f3c9759f1cc04be8dd9de68a")
!560 = !DISubroutineType(types: !561)
!561 = !{!412, !388}
!562 = distinct !DISubprogram(name: "inat_is_address_size_prefix", scope: !559, file: !559, line: 116, type: !563, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{!26, !412}
!565 = !{!566}
!566 = !DILocalVariable(name: "attr", arg: 1, scope: !562, file: !559, line: 116, type: !412)
!567 = !DILocation(line: 116, column: 59, scope: !562)
!568 = !DILocation(line: 118, column: 10, scope: !562)
!569 = !DILocation(line: 118, column: 15, scope: !562)
!570 = !DILocation(line: 118, column: 32, scope: !562)
!571 = !DILocation(line: 118, column: 2, scope: !562)
!572 = distinct !DISubprogram(name: "recover_probed_instruction", scope: !3, file: !3, line: 244, type: !573, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !575)
!573 = !DISubroutineType(types: !574)
!574 = !{!20, !27, !20}
!575 = !{!576, !577, !578}
!576 = !DILocalVariable(name: "buf", arg: 1, scope: !572, file: !3, line: 244, type: !27)
!577 = !DILocalVariable(name: "addr", arg: 2, scope: !572, file: !3, line: 244, type: !20)
!578 = !DILocalVariable(name: "__addr", scope: !572, file: !3, line: 246, type: !20)
!579 = !DILocation(line: 244, column: 59, scope: !572)
!580 = !DILocation(line: 244, column: 78, scope: !572)
!581 = !DILocation(line: 246, column: 2, scope: !572)
!582 = !DILocation(line: 246, column: 16, scope: !572)
!583 = !DILocation(line: 248, column: 36, scope: !572)
!584 = !DILocation(line: 248, column: 41, scope: !572)
!585 = !DILocation(line: 248, column: 11, scope: !572)
!586 = !DILocation(line: 248, column: 9, scope: !572)
!587 = !DILocation(line: 249, column: 6, scope: !588)
!588 = distinct !DILexicalBlock(scope: !572, file: !3, line: 249, column: 6)
!589 = !DILocation(line: 249, column: 16, scope: !588)
!590 = !DILocation(line: 249, column: 13, scope: !588)
!591 = !DILocation(line: 249, column: 6, scope: !572)
!592 = !DILocation(line: 250, column: 10, scope: !588)
!593 = !DILocation(line: 250, column: 3, scope: !588)
!594 = !DILocation(line: 252, column: 31, scope: !572)
!595 = !DILocation(line: 252, column: 36, scope: !572)
!596 = !DILocation(line: 252, column: 9, scope: !572)
!597 = !DILocation(line: 252, column: 2, scope: !572)
!598 = !DILocation(line: 253, column: 1, scope: !572)
!599 = !DISubprogram(name: "__recover_optprobed_insn", scope: !600, file: !600, line: 97, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!600 = !DIFile(filename: "arch/x86/kernel/kprobes/common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53640aa4f6b1fa63b425906ff171e499")
!601 = distinct !DISubprogram(name: "__recover_probed_insn", scope: !3, file: !3, line: 194, type: !573, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !602)
!602 = !{!603, !604, !605, !606}
!603 = !DILocalVariable(name: "buf", arg: 1, scope: !601, file: !3, line: 194, type: !27)
!604 = !DILocalVariable(name: "addr", arg: 2, scope: !601, file: !3, line: 194, type: !20)
!605 = !DILocalVariable(name: "kp", scope: !601, file: !3, line: 196, type: !86)
!606 = !DILocalVariable(name: "faddr", scope: !601, file: !3, line: 197, type: !287)
!607 = !DILocation(line: 194, column: 40, scope: !601)
!608 = !DILocation(line: 194, column: 59, scope: !601)
!609 = !DILocation(line: 196, column: 2, scope: !601)
!610 = !DILocation(line: 196, column: 17, scope: !601)
!611 = !DILocation(line: 197, column: 2, scope: !601)
!612 = !DILocation(line: 197, column: 7, scope: !601)
!613 = !DILocation(line: 199, column: 26, scope: !601)
!614 = !DILocation(line: 199, column: 18, scope: !601)
!615 = !DILocation(line: 199, column: 7, scope: !601)
!616 = !DILocation(line: 199, column: 5, scope: !601)
!617 = !DILocation(line: 200, column: 26, scope: !601)
!618 = !DILocation(line: 200, column: 10, scope: !601)
!619 = !DILocation(line: 200, column: 35, scope: !601)
!620 = !DILocation(line: 200, column: 32, scope: !601)
!621 = !DILocation(line: 200, column: 8, scope: !601)
!622 = !DILocation(line: 205, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !601, file: !3, line: 205, column: 6)
!624 = !DILocation(line: 205, column: 10, scope: !623)
!625 = !DILocation(line: 205, column: 14, scope: !623)
!626 = !{i8 0, i8 2}
!627 = !{}
!628 = !DILocation(line: 205, column: 6, scope: !601)
!629 = !DILocation(line: 206, column: 10, scope: !623)
!630 = !DILocation(line: 206, column: 3, scope: !623)
!631 = !DILocation(line: 227, column: 31, scope: !632)
!632 = distinct !DILexicalBlock(scope: !601, file: !3, line: 227, column: 6)
!633 = !DILocation(line: 227, column: 44, scope: !632)
!634 = !DILocation(line: 227, column: 36, scope: !632)
!635 = !DILocation(line: 227, column: 6, scope: !632)
!636 = !DILocation(line: 227, column: 6, scope: !601)
!637 = !DILocation(line: 229, column: 3, scope: !632)
!638 = !DILocation(line: 231, column: 6, scope: !639)
!639 = distinct !DILexicalBlock(scope: !601, file: !3, line: 231, column: 6)
!640 = !DILocation(line: 231, column: 6, scope: !601)
!641 = !DILocation(line: 232, column: 10, scope: !639)
!642 = !DILocation(line: 232, column: 15, scope: !639)
!643 = !DILocation(line: 232, column: 3, scope: !639)
!644 = !DILocation(line: 234, column: 12, scope: !639)
!645 = !DILocation(line: 234, column: 16, scope: !639)
!646 = !DILocation(line: 234, column: 3, scope: !639)
!647 = !DILocation(line: 234, column: 10, scope: !639)
!648 = !DILocation(line: 235, column: 24, scope: !601)
!649 = !DILocation(line: 235, column: 9, scope: !601)
!650 = !DILocation(line: 235, column: 2, scope: !601)
!651 = !DILocation(line: 236, column: 1, scope: !601)
!652 = distinct !DISubprogram(name: "arch_adjust_kprobe_addr", scope: !3, file: !3, line: 335, type: !653, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !656)
!653 = !DISubroutineType(types: !654)
!654 = !{!27, !20, !20, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!656 = !{!657, !658, !659, !660}
!657 = !DILocalVariable(name: "addr", arg: 1, scope: !652, file: !3, line: 335, type: !20)
!658 = !DILocalVariable(name: "offset", arg: 2, scope: !652, file: !3, line: 335, type: !20)
!659 = !DILocalVariable(name: "on_func_entry", arg: 3, scope: !652, file: !3, line: 336, type: !655)
!660 = !DILocalVariable(name: "insn", scope: !652, file: !3, line: 338, type: !58)
!661 = !DILocation(line: 335, column: 56, scope: !652)
!662 = !DILocation(line: 335, column: 76, scope: !652)
!663 = !DILocation(line: 336, column: 13, scope: !652)
!664 = !DILocation(line: 338, column: 2, scope: !652)
!665 = !DILocation(line: 338, column: 6, scope: !652)
!666 = !DILocation(line: 344, column: 46, scope: !667)
!667 = distinct !DILexicalBlock(scope: !652, file: !3, line: 344, column: 6)
!668 = !DILocation(line: 344, column: 38, scope: !667)
!669 = !DILocation(line: 344, column: 6, scope: !667)
!670 = !DILocation(line: 344, column: 6, scope: !652)
!671 = !DILocation(line: 345, column: 3, scope: !667)
!672 = !DILocation(line: 347, column: 15, scope: !673)
!673 = distinct !DILexicalBlock(scope: !652, file: !3, line: 347, column: 6)
!674 = !DILocation(line: 347, column: 6, scope: !673)
!675 = !DILocation(line: 347, column: 6, scope: !652)
!676 = !DILocation(line: 348, column: 21, scope: !677)
!677 = distinct !DILexicalBlock(scope: !673, file: !3, line: 347, column: 22)
!678 = !DILocation(line: 348, column: 28, scope: !677)
!679 = !DILocation(line: 348, column: 31, scope: !677)
!680 = !DILocation(line: 348, column: 38, scope: !677)
!681 = !DILocation(line: 348, column: 4, scope: !677)
!682 = !DILocation(line: 348, column: 18, scope: !677)
!683 = !DILocation(line: 349, column: 8, scope: !684)
!684 = distinct !DILexicalBlock(scope: !677, file: !3, line: 349, column: 7)
!685 = !DILocation(line: 349, column: 7, scope: !684)
!686 = !DILocation(line: 349, column: 7, scope: !677)
!687 = !DILocation(line: 350, column: 11, scope: !684)
!688 = !DILocation(line: 350, column: 4, scope: !684)
!689 = !DILocation(line: 352, column: 2, scope: !677)
!690 = !DILocation(line: 353, column: 21, scope: !691)
!691 = distinct !DILexicalBlock(scope: !673, file: !3, line: 352, column: 9)
!692 = !DILocation(line: 353, column: 20, scope: !691)
!693 = !DILocation(line: 353, column: 4, scope: !691)
!694 = !DILocation(line: 353, column: 18, scope: !691)
!695 = !DILocation(line: 356, column: 29, scope: !652)
!696 = !DILocation(line: 356, column: 36, scope: !652)
!697 = !DILocation(line: 356, column: 34, scope: !652)
!698 = !DILocation(line: 356, column: 9, scope: !652)
!699 = !DILocation(line: 356, column: 2, scope: !652)
!700 = !DILocation(line: 357, column: 1, scope: !652)
!701 = !DISubprogram(name: "copy_from_kernel_nofault", scope: !702, file: !702, line: 374, type: !703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!702 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!703 = !DISubroutineType(types: !704)
!704 = !{!56, !19, !705, !707}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 61, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !709, line: 72, baseType: !710)
!709 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !709, line: 16, baseType: !20)
!711 = distinct !DISubprogram(name: "is_endbr", scope: !712, file: !712, line: 68, type: !713, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !715)
!712 = !DIFile(filename: "./arch/x86/include/asm/ibt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4ef64582d88d74150b3cb3d49f1e6881")
!713 = !DISubroutineType(types: !714)
!714 = !{!287, !58}
!715 = !{!716}
!716 = !DILocalVariable(name: "val", arg: 1, scope: !711, file: !712, line: 68, type: !58)
!717 = !DILocation(line: 68, column: 33, scope: !711)
!718 = !DILocation(line: 70, column: 6, scope: !719)
!719 = distinct !DILexicalBlock(scope: !711, file: !712, line: 70, column: 6)
!720 = !DILocation(line: 70, column: 13, scope: !719)
!721 = !DILocation(line: 70, column: 10, scope: !719)
!722 = !DILocation(line: 70, column: 6, scope: !711)
!723 = !DILocation(line: 71, column: 3, scope: !719)
!724 = !DILocation(line: 73, column: 6, scope: !711)
!725 = !DILocation(line: 74, column: 9, scope: !711)
!726 = !DILocation(line: 74, column: 16, scope: !711)
!727 = !DILocation(line: 74, column: 13, scope: !711)
!728 = !DILocation(line: 74, column: 2, scope: !711)
!729 = !DILocation(line: 75, column: 1, scope: !711)
!730 = distinct !DISubprogram(name: "__copy_instruction", scope: !3, file: !3, line: 366, type: !731, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{!26, !35, !35, !35, !374}
!733 = !{!734, !735, !736, !737, !738, !742, !743, !744, !747}
!734 = !DILocalVariable(name: "dest", arg: 1, scope: !730, file: !3, line: 366, type: !35)
!735 = !DILocalVariable(name: "src", arg: 2, scope: !730, file: !3, line: 366, type: !35)
!736 = !DILocalVariable(name: "real", arg: 3, scope: !730, file: !3, line: 366, type: !35)
!737 = !DILocalVariable(name: "insn", arg: 4, scope: !730, file: !3, line: 366, type: !374)
!738 = !DILocalVariable(name: "buf", scope: !730, file: !3, line: 368, type: !739)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 120, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 15)
!742 = !DILocalVariable(name: "recovered_insn", scope: !730, file: !3, line: 369, type: !20)
!743 = !DILocalVariable(name: "ret", scope: !730, file: !3, line: 370, type: !26)
!744 = !DILocalVariable(name: "newdisp", scope: !745, file: !3, line: 399, type: !36)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 398, column: 31)
!746 = distinct !DILexicalBlock(scope: !730, file: !3, line: 398, column: 6)
!747 = !DILocalVariable(name: "disp", scope: !745, file: !3, line: 400, type: !35)
!748 = !DILocation(line: 366, column: 28, scope: !730)
!749 = !DILocation(line: 366, column: 38, scope: !730)
!750 = !DILocation(line: 366, column: 47, scope: !730)
!751 = !DILocation(line: 366, column: 66, scope: !730)
!752 = !DILocation(line: 368, column: 2, scope: !730)
!753 = !DILocation(line: 368, column: 18, scope: !730)
!754 = !DILocation(line: 369, column: 2, scope: !730)
!755 = !DILocation(line: 369, column: 16, scope: !730)
!756 = !DILocation(line: 369, column: 60, scope: !730)
!757 = !DILocation(line: 369, column: 80, scope: !730)
!758 = !DILocation(line: 369, column: 65, scope: !730)
!759 = !DILocation(line: 369, column: 33, scope: !730)
!760 = !DILocation(line: 370, column: 2, scope: !730)
!761 = !DILocation(line: 370, column: 6, scope: !730)
!762 = !DILocation(line: 372, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !730, file: !3, line: 372, column: 6)
!764 = !DILocation(line: 372, column: 22, scope: !763)
!765 = !DILocation(line: 372, column: 26, scope: !763)
!766 = !DILocation(line: 372, column: 6, scope: !730)
!767 = !DILocation(line: 373, column: 3, scope: !763)
!768 = !DILocation(line: 376, column: 31, scope: !769)
!769 = distinct !DILexicalBlock(scope: !730, file: !3, line: 376, column: 6)
!770 = !DILocation(line: 376, column: 45, scope: !769)
!771 = !DILocation(line: 376, column: 37, scope: !769)
!772 = !DILocation(line: 376, column: 6, scope: !769)
!773 = !DILocation(line: 376, column: 6, scope: !730)
!774 = !DILocation(line: 378, column: 3, scope: !769)
!775 = !DILocation(line: 380, column: 8, scope: !730)
!776 = !DILocation(line: 380, column: 6, scope: !730)
!777 = !DILocation(line: 381, column: 6, scope: !778)
!778 = distinct !DILexicalBlock(scope: !730, file: !3, line: 381, column: 6)
!779 = !DILocation(line: 381, column: 10, scope: !778)
!780 = !DILocation(line: 381, column: 6, scope: !730)
!781 = !DILocation(line: 382, column: 3, scope: !778)
!782 = !DILocation(line: 385, column: 30, scope: !783)
!783 = distinct !DILexicalBlock(scope: !730, file: !3, line: 385, column: 6)
!784 = !DILocation(line: 385, column: 6, scope: !783)
!785 = !DILocation(line: 385, column: 6, scope: !730)
!786 = !DILocation(line: 386, column: 3, scope: !783)
!787 = !DILocation(line: 389, column: 6, scope: !788)
!788 = distinct !DILexicalBlock(scope: !730, file: !3, line: 389, column: 6)
!789 = !DILocation(line: 389, column: 12, scope: !788)
!790 = !DILocation(line: 389, column: 19, scope: !788)
!791 = !DILocation(line: 389, column: 28, scope: !788)
!792 = !DILocation(line: 389, column: 6, scope: !730)
!793 = !DILocation(line: 390, column: 3, scope: !788)
!794 = !DILocation(line: 393, column: 29, scope: !795)
!795 = distinct !DILexicalBlock(scope: !730, file: !3, line: 393, column: 6)
!796 = !DILocation(line: 393, column: 6, scope: !795)
!797 = !DILocation(line: 393, column: 6, scope: !730)
!798 = !DILocation(line: 394, column: 3, scope: !795)
!799 = !DILocation(line: 398, column: 24, scope: !746)
!800 = !DILocation(line: 398, column: 6, scope: !746)
!801 = !DILocation(line: 398, column: 6, scope: !730)
!802 = !DILocation(line: 399, column: 3, scope: !745)
!803 = !DILocation(line: 399, column: 7, scope: !745)
!804 = !DILocation(line: 400, column: 3, scope: !745)
!805 = !DILocation(line: 400, column: 7, scope: !745)
!806 = !DILocation(line: 413, column: 20, scope: !745)
!807 = !DILocation(line: 413, column: 32, scope: !745)
!808 = !DILocation(line: 413, column: 38, scope: !745)
!809 = !DILocation(line: 413, column: 51, scope: !745)
!810 = !DILocation(line: 413, column: 26, scope: !745)
!811 = !DILocation(line: 413, column: 24, scope: !745)
!812 = !DILocation(line: 414, column: 15, scope: !745)
!813 = !DILocation(line: 414, column: 6, scope: !745)
!814 = !DILocation(line: 413, column: 11, scope: !745)
!815 = !DILocation(line: 415, column: 19, scope: !816)
!816 = distinct !DILexicalBlock(scope: !745, file: !3, line: 415, column: 7)
!817 = !DILocation(line: 415, column: 13, scope: !816)
!818 = !DILocation(line: 415, column: 7, scope: !816)
!819 = !DILocation(line: 415, column: 30, scope: !816)
!820 = !DILocation(line: 415, column: 27, scope: !816)
!821 = !DILocation(line: 415, column: 7, scope: !745)
!822 = !DILocation(line: 416, column: 4, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 416, column: 4)
!824 = distinct !DILexicalBlock(scope: !816, file: !3, line: 415, column: 39)
!825 = !DILocation(line: 416, column: 4, scope: !826)
!826 = distinct !DILexicalBlock(scope: !823, file: !3, line: 416, column: 4)
!827 = !DILocation(line: 417, column: 4, scope: !824)
!828 = !DILocation(line: 419, column: 17, scope: !745)
!829 = !DILocation(line: 419, column: 49, scope: !745)
!830 = !DILocation(line: 419, column: 24, scope: !745)
!831 = !DILocation(line: 419, column: 22, scope: !745)
!832 = !DILocation(line: 419, column: 8, scope: !745)
!833 = !DILocation(line: 420, column: 25, scope: !745)
!834 = !DILocation(line: 420, column: 19, scope: !745)
!835 = !DILocation(line: 420, column: 12, scope: !745)
!836 = !DILocation(line: 420, column: 17, scope: !745)
!837 = !DILocation(line: 421, column: 2, scope: !746)
!838 = !DILocation(line: 421, column: 2, scope: !745)
!839 = !DILocation(line: 423, column: 9, scope: !730)
!840 = !DILocation(line: 423, column: 15, scope: !730)
!841 = !DILocation(line: 423, column: 2, scope: !730)
!842 = !DILocation(line: 424, column: 1, scope: !730)
!843 = !DISubprogram(name: "insn_decode", scope: !6, file: !6, line: 151, type: !844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!844 = !DISubroutineType(types: !845)
!845 = !{!26, !374, !705, !26, !5}
!846 = distinct !DISubprogram(name: "insn_has_emulate_prefix", scope: !6, file: !6, line: 178, type: !847, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{!26, !374}
!849 = !{!850}
!850 = !DILocalVariable(name: "insn", arg: 1, scope: !846, file: !6, line: 178, type: !374)
!851 = !DILocation(line: 178, column: 56, scope: !846)
!852 = !DILocation(line: 180, column: 11, scope: !846)
!853 = !DILocation(line: 180, column: 17, scope: !846)
!854 = !DILocation(line: 180, column: 10, scope: !846)
!855 = !DILocation(line: 180, column: 9, scope: !846)
!856 = !DILocation(line: 180, column: 2, scope: !846)
!857 = distinct !DISubprogram(name: "insn_masking_exception", scope: !6, file: !6, line: 269, type: !847, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !858)
!858 = !{!859}
!859 = !DILocalVariable(name: "insn", arg: 1, scope: !857, file: !6, line: 269, type: !374)
!860 = !DILocation(line: 269, column: 55, scope: !857)
!861 = !DILocation(line: 271, column: 9, scope: !857)
!862 = !DILocation(line: 271, column: 15, scope: !857)
!863 = !DILocation(line: 271, column: 22, scope: !857)
!864 = !DILocation(line: 271, column: 31, scope: !857)
!865 = !DILocation(line: 271, column: 48, scope: !857)
!866 = !DILocation(line: 272, column: 4, scope: !857)
!867 = !DILocation(line: 272, column: 10, scope: !857)
!868 = !DILocation(line: 272, column: 17, scope: !857)
!869 = !DILocation(line: 272, column: 26, scope: !857)
!870 = !DILocation(line: 272, column: 45, scope: !857)
!871 = !DILocation(line: 273, column: 4, scope: !857)
!872 = !DILocation(line: 273, column: 40, scope: !857)
!873 = !DILocation(line: 0, scope: !857)
!874 = !DILocation(line: 271, column: 2, scope: !857)
!875 = !DISubprogram(name: "insn_rip_relative", scope: !6, file: !6, line: 162, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!876 = !DISubprogram(name: "_printk", scope: !877, file: !877, line: 153, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!877 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!878 = !DISubroutineType(types: !879)
!879 = !{!26, !106, null}
!880 = distinct !DISubprogram(name: "insn_offset_displacement", scope: !6, file: !6, line: 234, type: !847, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !881)
!881 = !{!882}
!882 = !DILocalVariable(name: "insn", arg: 1, scope: !880, file: !6, line: 234, type: !374)
!883 = !DILocation(line: 234, column: 57, scope: !880)
!884 = !DILocation(line: 236, column: 25, scope: !880)
!885 = !DILocation(line: 236, column: 9, scope: !880)
!886 = !DILocation(line: 236, column: 33, scope: !880)
!887 = !DILocation(line: 236, column: 39, scope: !880)
!888 = !DILocation(line: 236, column: 43, scope: !880)
!889 = !DILocation(line: 236, column: 31, scope: !880)
!890 = !DILocation(line: 236, column: 2, scope: !880)
!891 = distinct !DISubprogram(name: "alloc_insn_page", scope: !3, file: !3, line: 456, type: !892, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !894)
!892 = !DISubroutineType(types: !893)
!893 = !{!19}
!894 = !{!895}
!895 = !DILocalVariable(name: "page", scope: !891, file: !3, line: 458, type: !19)
!896 = !DILocation(line: 458, column: 2, scope: !891)
!897 = !DILocation(line: 458, column: 8, scope: !891)
!898 = !DILocation(line: 460, column: 9, scope: !891)
!899 = !DILocation(line: 460, column: 7, scope: !891)
!900 = !DILocation(line: 461, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !891, file: !3, line: 461, column: 6)
!902 = !DILocation(line: 461, column: 6, scope: !891)
!903 = !DILocation(line: 462, column: 3, scope: !901)
!904 = !DILocation(line: 468, column: 32, scope: !891)
!905 = !DILocation(line: 468, column: 17, scope: !891)
!906 = !DILocation(line: 468, column: 2, scope: !891)
!907 = !DILocation(line: 470, column: 9, scope: !891)
!908 = !DILocation(line: 470, column: 2, scope: !891)
!909 = !DILocation(line: 471, column: 1, scope: !891)
!910 = !DISubprogram(name: "module_alloc", scope: !911, file: !911, line: 30, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DIFile(filename: "./include/linux/moduleloader.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5d20466398587ca532f36ed7c1e1f529")
!912 = !DISubroutineType(types: !913)
!913 = !{!19, !20}
!914 = !DISubprogram(name: "set_memory_rox", scope: !915, file: !915, line: 10, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!915 = !DIFile(filename: "./arch/x86/include/asm/set_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ed4c9c9f9b5c1359158a637c4326a39")
!916 = !DISubroutineType(types: !917)
!917 = !{!26, !20, !26}
!918 = distinct !DISubprogram(name: "kprobe_emulate_ifmodifiers", scope: !3, file: !3, line: 475, type: !199, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !919)
!919 = !{!920, !921}
!920 = !DILocalVariable(name: "p", arg: 1, scope: !918, file: !3, line: 475, type: !86)
!921 = !DILocalVariable(name: "regs", arg: 2, scope: !918, file: !3, line: 475, type: !115)
!922 = !DILocation(line: 475, column: 55, scope: !918)
!923 = !DILocation(line: 475, column: 74, scope: !918)
!924 = !DILocation(line: 477, column: 10, scope: !918)
!925 = !DILocation(line: 477, column: 13, scope: !918)
!926 = !DILocation(line: 477, column: 19, scope: !918)
!927 = !DILocation(line: 477, column: 2, scope: !918)
!928 = !DILocation(line: 479, column: 3, scope: !929)
!929 = distinct !DILexicalBlock(scope: !918, file: !3, line: 477, column: 27)
!930 = !DILocation(line: 479, column: 9, scope: !929)
!931 = !DILocation(line: 479, column: 15, scope: !929)
!932 = !DILocation(line: 480, column: 3, scope: !929)
!933 = !DILocation(line: 482, column: 3, scope: !929)
!934 = !DILocation(line: 482, column: 9, scope: !929)
!935 = !DILocation(line: 482, column: 15, scope: !929)
!936 = !DILocation(line: 483, column: 3, scope: !929)
!937 = !DILocation(line: 485, column: 21, scope: !929)
!938 = !DILocation(line: 485, column: 27, scope: !929)
!939 = !DILocation(line: 485, column: 33, scope: !929)
!940 = !DILocation(line: 485, column: 3, scope: !929)
!941 = !DILocation(line: 486, column: 3, scope: !929)
!942 = !DILocation(line: 488, column: 34, scope: !929)
!943 = !DILocation(line: 488, column: 17, scope: !929)
!944 = !DILocation(line: 488, column: 3, scope: !929)
!945 = !DILocation(line: 488, column: 9, scope: !929)
!946 = !DILocation(line: 488, column: 15, scope: !929)
!947 = !DILocation(line: 489, column: 3, scope: !929)
!948 = !DILocation(line: 491, column: 13, scope: !918)
!949 = !DILocation(line: 491, column: 19, scope: !918)
!950 = !DILocation(line: 491, column: 22, scope: !918)
!951 = !DILocation(line: 491, column: 41, scope: !918)
!952 = !DILocation(line: 491, column: 44, scope: !918)
!953 = !DILocation(line: 491, column: 50, scope: !918)
!954 = !DILocation(line: 491, column: 39, scope: !918)
!955 = !DILocation(line: 491, column: 2, scope: !918)
!956 = !DILocation(line: 491, column: 8, scope: !918)
!957 = !DILocation(line: 491, column: 11, scope: !918)
!958 = !DILocation(line: 492, column: 1, scope: !918)
!959 = distinct !DISubprogram(name: "kprobe_emulate_ret", scope: !3, file: !3, line: 495, type: !199, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !960)
!960 = !{!961, !962}
!961 = !DILocalVariable(name: "p", arg: 1, scope: !959, file: !3, line: 495, type: !86)
!962 = !DILocalVariable(name: "regs", arg: 2, scope: !959, file: !3, line: 495, type: !115)
!963 = !DILocation(line: 495, column: 47, scope: !959)
!964 = !DILocation(line: 495, column: 66, scope: !959)
!965 = !DILocation(line: 497, column: 19, scope: !959)
!966 = !DILocation(line: 497, column: 2, scope: !959)
!967 = !DILocation(line: 498, column: 1, scope: !959)
!968 = distinct !DISubprogram(name: "kprobe_emulate_call", scope: !3, file: !3, line: 501, type: !199, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !969)
!969 = !{!970, !971, !972}
!970 = !DILocalVariable(name: "p", arg: 1, scope: !968, file: !3, line: 501, type: !86)
!971 = !DILocalVariable(name: "regs", arg: 2, scope: !968, file: !3, line: 501, type: !115)
!972 = !DILocalVariable(name: "func", scope: !968, file: !3, line: 503, type: !20)
!973 = !DILocation(line: 501, column: 48, scope: !968)
!974 = !DILocation(line: 501, column: 67, scope: !968)
!975 = !DILocation(line: 503, column: 2, scope: !968)
!976 = !DILocation(line: 503, column: 16, scope: !968)
!977 = !DILocation(line: 503, column: 23, scope: !968)
!978 = !DILocation(line: 503, column: 29, scope: !968)
!979 = !DILocation(line: 503, column: 32, scope: !968)
!980 = !DILocation(line: 503, column: 51, scope: !968)
!981 = !DILocation(line: 503, column: 54, scope: !968)
!982 = !DILocation(line: 503, column: 60, scope: !968)
!983 = !DILocation(line: 503, column: 49, scope: !968)
!984 = !DILocation(line: 505, column: 10, scope: !968)
!985 = !DILocation(line: 505, column: 13, scope: !968)
!986 = !DILocation(line: 505, column: 19, scope: !968)
!987 = !DILocation(line: 505, column: 7, scope: !968)
!988 = !DILocation(line: 506, column: 20, scope: !968)
!989 = !DILocation(line: 506, column: 26, scope: !968)
!990 = !DILocation(line: 506, column: 2, scope: !968)
!991 = !DILocation(line: 507, column: 1, scope: !968)
!992 = distinct !DISubprogram(name: "kprobe_emulate_jmp", scope: !3, file: !3, line: 510, type: !199, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !993)
!993 = !{!994, !995, !996}
!994 = !DILocalVariable(name: "p", arg: 1, scope: !992, file: !3, line: 510, type: !86)
!995 = !DILocalVariable(name: "regs", arg: 2, scope: !992, file: !3, line: 510, type: !115)
!996 = !DILocalVariable(name: "ip", scope: !992, file: !3, line: 512, type: !20)
!997 = !DILocation(line: 510, column: 47, scope: !992)
!998 = !DILocation(line: 510, column: 66, scope: !992)
!999 = !DILocation(line: 512, column: 2, scope: !992)
!1000 = !DILocation(line: 512, column: 16, scope: !992)
!1001 = !DILocation(line: 512, column: 21, scope: !992)
!1002 = !DILocation(line: 512, column: 27, scope: !992)
!1003 = !DILocation(line: 512, column: 30, scope: !992)
!1004 = !DILocation(line: 512, column: 49, scope: !992)
!1005 = !DILocation(line: 512, column: 52, scope: !992)
!1006 = !DILocation(line: 512, column: 58, scope: !992)
!1007 = !DILocation(line: 512, column: 47, scope: !992)
!1008 = !DILocation(line: 514, column: 8, scope: !992)
!1009 = !DILocation(line: 514, column: 11, scope: !992)
!1010 = !DILocation(line: 514, column: 17, scope: !992)
!1011 = !DILocation(line: 514, column: 5, scope: !992)
!1012 = !DILocation(line: 515, column: 19, scope: !992)
!1013 = !DILocation(line: 515, column: 25, scope: !992)
!1014 = !DILocation(line: 515, column: 2, scope: !992)
!1015 = !DILocation(line: 516, column: 1, scope: !992)
!1016 = distinct !DISubprogram(name: "kprobe_emulate_jcc", scope: !3, file: !3, line: 519, type: !199, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1017)
!1017 = !{!1018, !1019, !1020}
!1018 = !DILocalVariable(name: "p", arg: 1, scope: !1016, file: !3, line: 519, type: !86)
!1019 = !DILocalVariable(name: "regs", arg: 2, scope: !1016, file: !3, line: 519, type: !115)
!1020 = !DILocalVariable(name: "ip", scope: !1016, file: !3, line: 521, type: !20)
!1021 = !DILocation(line: 519, column: 47, scope: !1016)
!1022 = !DILocation(line: 519, column: 66, scope: !1016)
!1023 = !DILocation(line: 521, column: 2, scope: !1016)
!1024 = !DILocation(line: 521, column: 16, scope: !1016)
!1025 = !DILocation(line: 521, column: 21, scope: !1016)
!1026 = !DILocation(line: 521, column: 27, scope: !1016)
!1027 = !DILocation(line: 521, column: 30, scope: !1016)
!1028 = !DILocation(line: 521, column: 49, scope: !1016)
!1029 = !DILocation(line: 521, column: 52, scope: !1016)
!1030 = !DILocation(line: 521, column: 58, scope: !1016)
!1031 = !DILocation(line: 521, column: 47, scope: !1016)
!1032 = !DILocation(line: 523, column: 19, scope: !1016)
!1033 = !DILocation(line: 523, column: 25, scope: !1016)
!1034 = !DILocation(line: 523, column: 28, scope: !1016)
!1035 = !DILocation(line: 523, column: 34, scope: !1016)
!1036 = !DILocation(line: 523, column: 38, scope: !1016)
!1037 = !DILocation(line: 523, column: 44, scope: !1016)
!1038 = !DILocation(line: 523, column: 48, scope: !1016)
!1039 = !DILocation(line: 523, column: 51, scope: !1016)
!1040 = !DILocation(line: 523, column: 57, scope: !1016)
!1041 = !DILocation(line: 523, column: 2, scope: !1016)
!1042 = !DILocation(line: 524, column: 1, scope: !1016)
!1043 = distinct !DISubprogram(name: "kprobe_emulate_loop", scope: !3, file: !3, line: 527, type: !199, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1044)
!1044 = !{!1045, !1046, !1047, !1048}
!1045 = !DILocalVariable(name: "p", arg: 1, scope: !1043, file: !3, line: 527, type: !86)
!1046 = !DILocalVariable(name: "regs", arg: 2, scope: !1043, file: !3, line: 527, type: !115)
!1047 = !DILocalVariable(name: "ip", scope: !1043, file: !3, line: 529, type: !20)
!1048 = !DILocalVariable(name: "match", scope: !1043, file: !3, line: 530, type: !287)
!1049 = !DILocation(line: 527, column: 48, scope: !1043)
!1050 = !DILocation(line: 527, column: 67, scope: !1043)
!1051 = !DILocation(line: 529, column: 2, scope: !1043)
!1052 = !DILocation(line: 529, column: 16, scope: !1043)
!1053 = !DILocation(line: 529, column: 21, scope: !1043)
!1054 = !DILocation(line: 529, column: 27, scope: !1043)
!1055 = !DILocation(line: 529, column: 30, scope: !1043)
!1056 = !DILocation(line: 529, column: 49, scope: !1043)
!1057 = !DILocation(line: 529, column: 52, scope: !1043)
!1058 = !DILocation(line: 529, column: 58, scope: !1043)
!1059 = !DILocation(line: 529, column: 47, scope: !1043)
!1060 = !DILocation(line: 530, column: 2, scope: !1043)
!1061 = !DILocation(line: 530, column: 7, scope: !1043)
!1062 = !DILocation(line: 532, column: 6, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 532, column: 6)
!1064 = !DILocation(line: 532, column: 9, scope: !1063)
!1065 = !DILocation(line: 532, column: 15, scope: !1063)
!1066 = !DILocation(line: 532, column: 20, scope: !1063)
!1067 = !DILocation(line: 532, column: 25, scope: !1063)
!1068 = !DILocation(line: 532, column: 6, scope: !1043)
!1069 = !DILocation(line: 533, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 533, column: 7)
!1071 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 532, column: 31)
!1072 = !DILocation(line: 533, column: 10, scope: !1070)
!1073 = !DILocation(line: 533, column: 16, scope: !1070)
!1074 = !DILocation(line: 533, column: 21, scope: !1070)
!1075 = !DILocation(line: 533, column: 27, scope: !1070)
!1076 = !DILocation(line: 533, column: 7, scope: !1071)
!1077 = !DILocation(line: 534, column: 23, scope: !1070)
!1078 = !DILocation(line: 534, column: 29, scope: !1070)
!1079 = !DILocation(line: 534, column: 32, scope: !1070)
!1080 = !DILocation(line: 534, column: 36, scope: !1070)
!1081 = !DILocation(line: 534, column: 10, scope: !1070)
!1082 = !DILocation(line: 534, column: 4, scope: !1070)
!1083 = !DILocation(line: 536, column: 12, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 536, column: 12)
!1085 = !DILocation(line: 536, column: 15, scope: !1084)
!1086 = !DILocation(line: 536, column: 21, scope: !1084)
!1087 = !DILocation(line: 536, column: 26, scope: !1084)
!1088 = !DILocation(line: 536, column: 32, scope: !1084)
!1089 = !DILocation(line: 536, column: 12, scope: !1070)
!1090 = !DILocation(line: 537, column: 23, scope: !1084)
!1091 = !DILocation(line: 537, column: 29, scope: !1084)
!1092 = !DILocation(line: 537, column: 32, scope: !1084)
!1093 = !DILocation(line: 537, column: 36, scope: !1084)
!1094 = !DILocation(line: 537, column: 10, scope: !1084)
!1095 = !DILocation(line: 537, column: 4, scope: !1084)
!1096 = !DILocation(line: 540, column: 23, scope: !1084)
!1097 = !DILocation(line: 540, column: 29, scope: !1084)
!1098 = !DILocation(line: 540, column: 32, scope: !1084)
!1099 = !DILocation(line: 540, column: 12, scope: !1084)
!1100 = !DILocation(line: 540, column: 36, scope: !1084)
!1101 = !DILocation(line: 540, column: 10, scope: !1084)
!1102 = !DILocation(line: 541, column: 2, scope: !1071)
!1103 = !DILocation(line: 542, column: 7, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 542, column: 7)
!1105 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 541, column: 9)
!1106 = !DILocation(line: 542, column: 10, scope: !1104)
!1107 = !DILocation(line: 542, column: 16, scope: !1104)
!1108 = !DILocation(line: 542, column: 21, scope: !1104)
!1109 = !DILocation(line: 542, column: 27, scope: !1104)
!1110 = !DILocation(line: 542, column: 7, scope: !1105)
!1111 = !DILocation(line: 543, column: 22, scope: !1104)
!1112 = !DILocation(line: 543, column: 28, scope: !1104)
!1113 = !DILocation(line: 543, column: 12, scope: !1104)
!1114 = !DILocation(line: 543, column: 32, scope: !1104)
!1115 = !DILocation(line: 543, column: 10, scope: !1104)
!1116 = !DILocation(line: 543, column: 4, scope: !1104)
!1117 = !DILocation(line: 545, column: 12, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 545, column: 12)
!1119 = !DILocation(line: 545, column: 15, scope: !1118)
!1120 = !DILocation(line: 545, column: 21, scope: !1118)
!1121 = !DILocation(line: 545, column: 26, scope: !1118)
!1122 = !DILocation(line: 545, column: 32, scope: !1118)
!1123 = !DILocation(line: 545, column: 12, scope: !1104)
!1124 = !DILocation(line: 546, column: 22, scope: !1118)
!1125 = !DILocation(line: 546, column: 28, scope: !1118)
!1126 = !DILocation(line: 546, column: 12, scope: !1118)
!1127 = !DILocation(line: 546, column: 32, scope: !1118)
!1128 = !DILocation(line: 546, column: 10, scope: !1118)
!1129 = !DILocation(line: 546, column: 4, scope: !1118)
!1130 = !DILocation(line: 549, column: 22, scope: !1118)
!1131 = !DILocation(line: 549, column: 28, scope: !1118)
!1132 = !DILocation(line: 549, column: 12, scope: !1118)
!1133 = !DILocation(line: 549, column: 32, scope: !1118)
!1134 = !DILocation(line: 549, column: 10, scope: !1118)
!1135 = !DILocation(line: 552, column: 6, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 552, column: 6)
!1137 = !DILocation(line: 552, column: 9, scope: !1136)
!1138 = !DILocation(line: 552, column: 15, scope: !1136)
!1139 = !DILocation(line: 552, column: 20, scope: !1136)
!1140 = !DILocation(line: 552, column: 25, scope: !1136)
!1141 = !DILocation(line: 552, column: 6, scope: !1043)
!1142 = !DILocation(line: 553, column: 11, scope: !1136)
!1143 = !DILocation(line: 553, column: 17, scope: !1136)
!1144 = !DILocation(line: 553, column: 22, scope: !1136)
!1145 = !DILocation(line: 553, column: 28, scope: !1136)
!1146 = !DILocation(line: 553, column: 34, scope: !1136)
!1147 = !DILocation(line: 553, column: 20, scope: !1136)
!1148 = !DILocation(line: 0, scope: !1136)
!1149 = !DILocation(line: 553, column: 9, scope: !1136)
!1150 = !DILocation(line: 553, column: 3, scope: !1136)
!1151 = !DILocation(line: 554, column: 11, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 554, column: 11)
!1153 = !DILocation(line: 554, column: 14, scope: !1152)
!1154 = !DILocation(line: 554, column: 20, scope: !1152)
!1155 = !DILocation(line: 554, column: 25, scope: !1152)
!1156 = !DILocation(line: 554, column: 30, scope: !1152)
!1157 = !DILocation(line: 554, column: 11, scope: !1136)
!1158 = !DILocation(line: 555, column: 11, scope: !1152)
!1159 = !DILocation(line: 555, column: 17, scope: !1152)
!1160 = !DILocation(line: 555, column: 21, scope: !1152)
!1161 = !DILocation(line: 555, column: 27, scope: !1152)
!1162 = !DILocation(line: 555, column: 33, scope: !1152)
!1163 = !DILocation(line: 0, scope: !1152)
!1164 = !DILocation(line: 555, column: 9, scope: !1152)
!1165 = !DILocation(line: 555, column: 3, scope: !1152)
!1166 = !DILocation(line: 557, column: 6, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 557, column: 6)
!1168 = !DILocation(line: 557, column: 6, scope: !1043)
!1169 = !DILocation(line: 558, column: 9, scope: !1167)
!1170 = !DILocation(line: 558, column: 12, scope: !1167)
!1171 = !DILocation(line: 558, column: 18, scope: !1167)
!1172 = !DILocation(line: 558, column: 6, scope: !1167)
!1173 = !DILocation(line: 558, column: 3, scope: !1167)
!1174 = !DILocation(line: 559, column: 19, scope: !1043)
!1175 = !DILocation(line: 559, column: 25, scope: !1043)
!1176 = !DILocation(line: 559, column: 2, scope: !1043)
!1177 = !DILocation(line: 560, column: 1, scope: !1043)
!1178 = distinct !DISubprogram(name: "kprobe_emulate_call_indirect", scope: !3, file: !3, line: 584, type: !199, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1179)
!1179 = !{!1180, !1181, !1182}
!1180 = !DILocalVariable(name: "p", arg: 1, scope: !1178, file: !3, line: 584, type: !86)
!1181 = !DILocalVariable(name: "regs", arg: 2, scope: !1178, file: !3, line: 584, type: !115)
!1182 = !DILocalVariable(name: "offs", scope: !1178, file: !3, line: 586, type: !20)
!1183 = !DILocation(line: 584, column: 57, scope: !1178)
!1184 = !DILocation(line: 584, column: 76, scope: !1178)
!1185 = !DILocation(line: 586, column: 2, scope: !1178)
!1186 = !DILocation(line: 586, column: 16, scope: !1178)
!1187 = !DILocation(line: 586, column: 40, scope: !1178)
!1188 = !DILocation(line: 586, column: 43, scope: !1178)
!1189 = !DILocation(line: 586, column: 49, scope: !1178)
!1190 = !DILocation(line: 586, column: 58, scope: !1178)
!1191 = !DILocation(line: 586, column: 23, scope: !1178)
!1192 = !DILocation(line: 588, column: 20, scope: !1178)
!1193 = !DILocation(line: 588, column: 26, scope: !1178)
!1194 = !DILocation(line: 588, column: 32, scope: !1178)
!1195 = !DILocation(line: 588, column: 35, scope: !1178)
!1196 = !DILocation(line: 588, column: 54, scope: !1178)
!1197 = !DILocation(line: 588, column: 57, scope: !1178)
!1198 = !DILocation(line: 588, column: 63, scope: !1178)
!1199 = !DILocation(line: 588, column: 52, scope: !1178)
!1200 = !DILocation(line: 588, column: 2, scope: !1178)
!1201 = !DILocation(line: 589, column: 19, scope: !1178)
!1202 = !DILocation(line: 589, column: 43, scope: !1178)
!1203 = !DILocation(line: 589, column: 49, scope: !1178)
!1204 = !DILocation(line: 589, column: 25, scope: !1178)
!1205 = !DILocation(line: 589, column: 2, scope: !1178)
!1206 = !DILocation(line: 590, column: 1, scope: !1178)
!1207 = distinct !DISubprogram(name: "kprobe_emulate_jmp_indirect", scope: !3, file: !3, line: 593, type: !199, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1208)
!1208 = !{!1209, !1210, !1211}
!1209 = !DILocalVariable(name: "p", arg: 1, scope: !1207, file: !3, line: 593, type: !86)
!1210 = !DILocalVariable(name: "regs", arg: 2, scope: !1207, file: !3, line: 593, type: !115)
!1211 = !DILocalVariable(name: "offs", scope: !1207, file: !3, line: 595, type: !20)
!1212 = !DILocation(line: 593, column: 56, scope: !1207)
!1213 = !DILocation(line: 593, column: 75, scope: !1207)
!1214 = !DILocation(line: 595, column: 2, scope: !1207)
!1215 = !DILocation(line: 595, column: 16, scope: !1207)
!1216 = !DILocation(line: 595, column: 40, scope: !1207)
!1217 = !DILocation(line: 595, column: 43, scope: !1207)
!1218 = !DILocation(line: 595, column: 49, scope: !1207)
!1219 = !DILocation(line: 595, column: 58, scope: !1207)
!1220 = !DILocation(line: 595, column: 23, scope: !1207)
!1221 = !DILocation(line: 597, column: 19, scope: !1207)
!1222 = !DILocation(line: 597, column: 43, scope: !1207)
!1223 = !DILocation(line: 597, column: 49, scope: !1207)
!1224 = !DILocation(line: 597, column: 25, scope: !1207)
!1225 = !DILocation(line: 597, column: 2, scope: !1207)
!1226 = !DILocation(line: 598, column: 1, scope: !1207)
!1227 = distinct !DISubprogram(name: "arch_prepare_kprobe", scope: !3, file: !3, line: 751, type: !1228, scopeLine: 752, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1230)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!26, !86}
!1230 = !{!1231, !1232}
!1231 = !DILocalVariable(name: "p", arg: 1, scope: !1227, file: !3, line: 751, type: !86)
!1232 = !DILocalVariable(name: "ret", scope: !1227, file: !3, line: 753, type: !26)
!1233 = !DILocation(line: 751, column: 40, scope: !1227)
!1234 = !DILocation(line: 753, column: 2, scope: !1227)
!1235 = !DILocation(line: 753, column: 6, scope: !1227)
!1236 = !DILocation(line: 755, column: 33, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 755, column: 6)
!1238 = !DILocation(line: 755, column: 36, scope: !1237)
!1239 = !DILocation(line: 755, column: 42, scope: !1237)
!1240 = !DILocation(line: 755, column: 45, scope: !1237)
!1241 = !DILocation(line: 755, column: 6, scope: !1237)
!1242 = !DILocation(line: 755, column: 6, scope: !1227)
!1243 = !DILocation(line: 756, column: 3, scope: !1237)
!1244 = !DILocation(line: 758, column: 32, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 758, column: 6)
!1246 = !DILocation(line: 758, column: 35, scope: !1245)
!1247 = !DILocation(line: 758, column: 17, scope: !1245)
!1248 = !DILocation(line: 758, column: 7, scope: !1245)
!1249 = !DILocation(line: 758, column: 6, scope: !1227)
!1250 = !DILocation(line: 759, column: 3, scope: !1245)
!1251 = !DILocation(line: 761, column: 10, scope: !1227)
!1252 = !DILocation(line: 761, column: 13, scope: !1227)
!1253 = !DILocation(line: 761, column: 2, scope: !1227)
!1254 = !DILocation(line: 764, column: 18, scope: !1227)
!1255 = !DILocation(line: 764, column: 2, scope: !1227)
!1256 = !DILocation(line: 764, column: 5, scope: !1227)
!1257 = !DILocation(line: 764, column: 11, scope: !1227)
!1258 = !DILocation(line: 764, column: 16, scope: !1227)
!1259 = !DILocation(line: 765, column: 7, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 765, column: 6)
!1261 = !DILocation(line: 765, column: 10, scope: !1260)
!1262 = !DILocation(line: 765, column: 16, scope: !1260)
!1263 = !DILocation(line: 765, column: 6, scope: !1227)
!1264 = !DILocation(line: 766, column: 3, scope: !1260)
!1265 = !DILocation(line: 768, column: 25, scope: !1227)
!1266 = !DILocation(line: 768, column: 8, scope: !1227)
!1267 = !DILocation(line: 768, column: 6, scope: !1227)
!1268 = !DILocation(line: 769, column: 6, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 769, column: 6)
!1270 = !DILocation(line: 769, column: 6, scope: !1227)
!1271 = !DILocation(line: 770, column: 18, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 769, column: 11)
!1273 = !DILocation(line: 770, column: 21, scope: !1272)
!1274 = !DILocation(line: 770, column: 27, scope: !1272)
!1275 = !DILocation(line: 770, column: 3, scope: !1272)
!1276 = !DILocation(line: 771, column: 3, scope: !1272)
!1277 = !DILocation(line: 771, column: 6, scope: !1272)
!1278 = !DILocation(line: 771, column: 12, scope: !1272)
!1279 = !DILocation(line: 771, column: 17, scope: !1272)
!1280 = !DILocation(line: 772, column: 2, scope: !1272)
!1281 = !DILocation(line: 774, column: 9, scope: !1227)
!1282 = !DILocation(line: 774, column: 2, scope: !1227)
!1283 = !DILocation(line: 775, column: 1, scope: !1227)
!1284 = !DISubprogram(name: "alternatives_text_reserved", scope: !1285, file: !1285, line: 139, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1285 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!26, !19, !19}
!1288 = distinct !DISubprogram(name: "can_probe", scope: !3, file: !3, line: 256, type: !1289, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!26, !20}
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298, !1300}
!1292 = !DILocalVariable(name: "paddr", arg: 1, scope: !1288, file: !3, line: 256, type: !20)
!1293 = !DILocalVariable(name: "addr", scope: !1288, file: !3, line: 258, type: !20)
!1294 = !DILocalVariable(name: "__addr", scope: !1288, file: !3, line: 258, type: !20)
!1295 = !DILocalVariable(name: "offset", scope: !1288, file: !3, line: 258, type: !20)
!1296 = !DILocalVariable(name: "insn", scope: !1288, file: !3, line: 259, type: !375)
!1297 = !DILocalVariable(name: "buf", scope: !1288, file: !3, line: 260, type: !739)
!1298 = !DILocalVariable(name: "ret", scope: !1299, file: !3, line: 268, type: !26)
!1299 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 267, column: 23)
!1300 = !DILabel(scope: !1288, name: "out", file: !3, line: 330)
!1301 = !DILocation(line: 256, column: 36, scope: !1288)
!1302 = !DILocation(line: 258, column: 2, scope: !1288)
!1303 = !DILocation(line: 258, column: 16, scope: !1288)
!1304 = !DILocation(line: 258, column: 22, scope: !1288)
!1305 = !DILocation(line: 258, column: 30, scope: !1288)
!1306 = !DILocation(line: 259, column: 2, scope: !1288)
!1307 = !DILocation(line: 259, column: 14, scope: !1288)
!1308 = !DILocation(line: 260, column: 2, scope: !1288)
!1309 = !DILocation(line: 260, column: 18, scope: !1288)
!1310 = !DILocation(line: 262, column: 35, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 262, column: 6)
!1312 = !DILocation(line: 262, column: 7, scope: !1311)
!1313 = !DILocation(line: 262, column: 6, scope: !1288)
!1314 = !DILocation(line: 263, column: 3, scope: !1311)
!1315 = !DILocation(line: 266, column: 9, scope: !1288)
!1316 = !DILocation(line: 266, column: 17, scope: !1288)
!1317 = !DILocation(line: 266, column: 15, scope: !1288)
!1318 = !DILocation(line: 266, column: 7, scope: !1288)
!1319 = !DILocation(line: 267, column: 2, scope: !1288)
!1320 = !DILocation(line: 267, column: 9, scope: !1288)
!1321 = !DILocation(line: 267, column: 16, scope: !1288)
!1322 = !DILocation(line: 267, column: 14, scope: !1288)
!1323 = !DILocation(line: 268, column: 3, scope: !1299)
!1324 = !DILocation(line: 268, column: 7, scope: !1299)
!1325 = !DILocation(line: 278, column: 39, scope: !1299)
!1326 = !DILocation(line: 278, column: 44, scope: !1299)
!1327 = !DILocation(line: 278, column: 12, scope: !1299)
!1328 = !DILocation(line: 278, column: 10, scope: !1299)
!1329 = !DILocation(line: 279, column: 8, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 279, column: 7)
!1331 = !DILocation(line: 279, column: 7, scope: !1299)
!1332 = !DILocation(line: 280, column: 4, scope: !1330)
!1333 = !DILocation(line: 282, column: 9, scope: !1299)
!1334 = !DILocation(line: 282, column: 7, scope: !1299)
!1335 = !DILocation(line: 283, column: 7, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 283, column: 7)
!1337 = !DILocation(line: 283, column: 11, scope: !1336)
!1338 = !DILocation(line: 283, column: 7, scope: !1299)
!1339 = !DILocation(line: 284, column: 4, scope: !1336)
!1340 = !DILocation(line: 295, column: 16, scope: !1299)
!1341 = !DILocation(line: 295, column: 11, scope: !1299)
!1342 = !DILocation(line: 295, column: 8, scope: !1299)
!1343 = !DILocation(line: 296, column: 2, scope: !1288)
!1344 = distinct !{!1344, !1319, !1343, !481, !482}
!1345 = !DILocation(line: 297, column: 6, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 297, column: 6)
!1347 = !DILocation(line: 330, column: 1, scope: !1288)
!1348 = !DILocation(line: 331, column: 10, scope: !1288)
!1349 = !DILocation(line: 331, column: 18, scope: !1288)
!1350 = !DILocation(line: 331, column: 15, scope: !1288)
!1351 = !DILocation(line: 331, column: 2, scope: !1288)
!1352 = !DILocation(line: 332, column: 1, scope: !1288)
!1353 = distinct !DISubprogram(name: "get_insn_slot", scope: !88, file: !88, line: 346, type: !1354, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!27}
!1356 = !DILocation(line: 346, column: 1, scope: !1353)
!1357 = distinct !DISubprogram(name: "arch_copy_kprobe", scope: !3, file: !3, line: 718, type: !1228, scopeLine: 719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1358)
!1358 = !{!1359, !1360, !1361, !1362, !1363}
!1359 = !DILocalVariable(name: "p", arg: 1, scope: !1357, file: !3, line: 718, type: !86)
!1360 = !DILocalVariable(name: "insn", scope: !1357, file: !3, line: 720, type: !375)
!1361 = !DILocalVariable(name: "buf", scope: !1357, file: !3, line: 721, type: !739)
!1362 = !DILocalVariable(name: "ret", scope: !1357, file: !3, line: 722, type: !26)
!1363 = !DILocalVariable(name: "len", scope: !1357, file: !3, line: 722, type: !26)
!1364 = !DILocation(line: 718, column: 44, scope: !1357)
!1365 = !DILocation(line: 720, column: 2, scope: !1357)
!1366 = !DILocation(line: 720, column: 14, scope: !1357)
!1367 = !DILocation(line: 721, column: 2, scope: !1357)
!1368 = !DILocation(line: 721, column: 18, scope: !1357)
!1369 = !DILocation(line: 722, column: 2, scope: !1357)
!1370 = !DILocation(line: 722, column: 6, scope: !1357)
!1371 = !DILocation(line: 722, column: 11, scope: !1357)
!1372 = !DILocation(line: 725, column: 27, scope: !1357)
!1373 = !DILocation(line: 725, column: 32, scope: !1357)
!1374 = !DILocation(line: 725, column: 35, scope: !1357)
!1375 = !DILocation(line: 725, column: 41, scope: !1357)
!1376 = !DILocation(line: 725, column: 44, scope: !1357)
!1377 = !DILocation(line: 725, column: 50, scope: !1357)
!1378 = !DILocation(line: 725, column: 8, scope: !1357)
!1379 = !DILocation(line: 725, column: 6, scope: !1357)
!1380 = !DILocation(line: 726, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 726, column: 6)
!1382 = !DILocation(line: 726, column: 6, scope: !1357)
!1383 = !DILocation(line: 727, column: 3, scope: !1381)
!1384 = !DILocation(line: 730, column: 26, scope: !1357)
!1385 = !DILocation(line: 730, column: 8, scope: !1357)
!1386 = !DILocation(line: 730, column: 6, scope: !1357)
!1387 = !DILocation(line: 731, column: 6, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 731, column: 6)
!1389 = !DILocation(line: 731, column: 10, scope: !1388)
!1390 = !DILocation(line: 731, column: 6, scope: !1357)
!1391 = !DILocation(line: 732, column: 10, scope: !1388)
!1392 = !DILocation(line: 732, column: 3, scope: !1388)
!1393 = !DILocation(line: 735, column: 27, scope: !1357)
!1394 = !DILocation(line: 735, column: 32, scope: !1357)
!1395 = !DILocation(line: 735, column: 8, scope: !1357)
!1396 = !DILocation(line: 735, column: 6, scope: !1357)
!1397 = !DILocation(line: 736, column: 6, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 736, column: 6)
!1399 = !DILocation(line: 736, column: 10, scope: !1398)
!1400 = !DILocation(line: 736, column: 6, scope: !1357)
!1401 = !DILocation(line: 737, column: 10, scope: !1398)
!1402 = !DILocation(line: 737, column: 3, scope: !1398)
!1403 = !DILocation(line: 740, column: 14, scope: !1357)
!1404 = !DILocation(line: 740, column: 2, scope: !1357)
!1405 = !DILocation(line: 740, column: 5, scope: !1357)
!1406 = !DILocation(line: 740, column: 12, scope: !1357)
!1407 = !DILocation(line: 742, column: 20, scope: !1357)
!1408 = !DILocation(line: 742, column: 2, scope: !1357)
!1409 = !DILocation(line: 742, column: 5, scope: !1357)
!1410 = !DILocation(line: 742, column: 11, scope: !1357)
!1411 = !DILocation(line: 742, column: 18, scope: !1357)
!1412 = !DILocation(line: 743, column: 23, scope: !1357)
!1413 = !DILocation(line: 743, column: 26, scope: !1357)
!1414 = !DILocation(line: 743, column: 32, scope: !1357)
!1415 = !DILocation(line: 743, column: 47, scope: !1357)
!1416 = !DILocation(line: 743, column: 52, scope: !1357)
!1417 = !DILocation(line: 743, column: 2, scope: !1357)
!1418 = !DILocation(line: 746, column: 12, scope: !1357)
!1419 = !DILocation(line: 746, column: 15, scope: !1357)
!1420 = !DILocation(line: 746, column: 21, scope: !1357)
!1421 = !DILocation(line: 746, column: 27, scope: !1357)
!1422 = !DILocation(line: 746, column: 32, scope: !1357)
!1423 = !DILocation(line: 746, column: 2, scope: !1357)
!1424 = !DILocation(line: 748, column: 2, scope: !1357)
!1425 = !DILocation(line: 749, column: 1, scope: !1357)
!1426 = distinct !DISubprogram(name: "free_insn_slot", scope: !88, file: !88, line: 346, type: !1427, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1429)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !27, !26}
!1429 = !{!1430, !1431}
!1430 = !DILocalVariable(name: "slot", arg: 1, scope: !1426, file: !88, line: 346, type: !27)
!1431 = !DILocalVariable(name: "dirty", arg: 2, scope: !1426, file: !88, line: 346, type: !26)
!1432 = !DILocation(line: 346, column: 1, scope: !1426)
!1433 = distinct !DISubprogram(name: "arch_arm_kprobe", scope: !3, file: !3, line: 777, type: !1434, scopeLine: 778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1436)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !86}
!1436 = !{!1437, !1438}
!1437 = !DILocalVariable(name: "p", arg: 1, scope: !1433, file: !3, line: 777, type: !86)
!1438 = !DILocalVariable(name: "int3", scope: !1433, file: !3, line: 779, type: !30)
!1439 = !DILocation(line: 777, column: 37, scope: !1433)
!1440 = !DILocation(line: 779, column: 2, scope: !1433)
!1441 = !DILocation(line: 779, column: 5, scope: !1433)
!1442 = !DILocation(line: 781, column: 12, scope: !1433)
!1443 = !DILocation(line: 781, column: 15, scope: !1433)
!1444 = !DILocation(line: 781, column: 2, scope: !1433)
!1445 = !DILocation(line: 782, column: 2, scope: !1433)
!1446 = !DILocation(line: 783, column: 23, scope: !1433)
!1447 = !DILocation(line: 783, column: 26, scope: !1433)
!1448 = !DILocation(line: 783, column: 33, scope: !1433)
!1449 = !DILocation(line: 783, column: 36, scope: !1433)
!1450 = !DILocation(line: 783, column: 2, scope: !1433)
!1451 = !DILocation(line: 784, column: 1, scope: !1433)
!1452 = !DISubprogram(name: "text_poke", scope: !278, file: !278, line: 44, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!19, !19, !705, !707}
!1455 = !DISubprogram(name: "text_poke_sync", scope: !278, file: !278, line: 45, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null}
!1458 = !DISubprogram(name: "perf_event_text_poke", scope: !1459, file: !1459, line: 1536, type: !1460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1459 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !705, !705, !707, !705, !707}
!1462 = distinct !DISubprogram(name: "arch_disarm_kprobe", scope: !3, file: !3, line: 786, type: !1434, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1463)
!1463 = !{!1464, !1465}
!1464 = !DILocalVariable(name: "p", arg: 1, scope: !1462, file: !3, line: 786, type: !86)
!1465 = !DILocalVariable(name: "int3", scope: !1462, file: !3, line: 788, type: !30)
!1466 = !DILocation(line: 786, column: 40, scope: !1462)
!1467 = !DILocation(line: 788, column: 2, scope: !1462)
!1468 = !DILocation(line: 788, column: 5, scope: !1462)
!1469 = !DILocation(line: 790, column: 23, scope: !1462)
!1470 = !DILocation(line: 790, column: 26, scope: !1462)
!1471 = !DILocation(line: 790, column: 43, scope: !1462)
!1472 = !DILocation(line: 790, column: 46, scope: !1462)
!1473 = !DILocation(line: 790, column: 2, scope: !1462)
!1474 = !DILocation(line: 791, column: 12, scope: !1462)
!1475 = !DILocation(line: 791, column: 15, scope: !1462)
!1476 = !DILocation(line: 791, column: 22, scope: !1462)
!1477 = !DILocation(line: 791, column: 25, scope: !1462)
!1478 = !DILocation(line: 791, column: 2, scope: !1462)
!1479 = !DILocation(line: 792, column: 2, scope: !1462)
!1480 = !DILocation(line: 793, column: 1, scope: !1462)
!1481 = distinct !DISubprogram(name: "arch_remove_kprobe", scope: !3, file: !3, line: 795, type: !1434, scopeLine: 796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1482)
!1482 = !{!1483}
!1483 = !DILocalVariable(name: "p", arg: 1, scope: !1481, file: !3, line: 795, type: !86)
!1484 = !DILocation(line: 795, column: 40, scope: !1481)
!1485 = !DILocation(line: 797, column: 6, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 797, column: 6)
!1487 = !DILocation(line: 797, column: 9, scope: !1486)
!1488 = !DILocation(line: 797, column: 15, scope: !1486)
!1489 = !DILocation(line: 797, column: 6, scope: !1481)
!1490 = !DILocation(line: 799, column: 24, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 797, column: 21)
!1492 = !DILocation(line: 799, column: 27, scope: !1491)
!1493 = !DILocation(line: 799, column: 33, scope: !1491)
!1494 = !DILocation(line: 799, column: 39, scope: !1491)
!1495 = !DILocation(line: 799, column: 42, scope: !1491)
!1496 = !DILocation(line: 799, column: 48, scope: !1491)
!1497 = !DILocation(line: 800, column: 10, scope: !1491)
!1498 = !DILocation(line: 800, column: 13, scope: !1491)
!1499 = !DILocation(line: 800, column: 19, scope: !1491)
!1500 = !DILocation(line: 799, column: 3, scope: !1491)
!1501 = !DILocation(line: 801, column: 18, scope: !1491)
!1502 = !DILocation(line: 801, column: 21, scope: !1491)
!1503 = !DILocation(line: 801, column: 27, scope: !1491)
!1504 = !DILocation(line: 801, column: 33, scope: !1491)
!1505 = !DILocation(line: 801, column: 36, scope: !1491)
!1506 = !DILocation(line: 801, column: 42, scope: !1491)
!1507 = !DILocation(line: 801, column: 3, scope: !1491)
!1508 = !DILocation(line: 802, column: 3, scope: !1491)
!1509 = !DILocation(line: 802, column: 6, scope: !1491)
!1510 = !DILocation(line: 802, column: 12, scope: !1491)
!1511 = !DILocation(line: 802, column: 17, scope: !1491)
!1512 = !DILocation(line: 803, column: 2, scope: !1491)
!1513 = !DILocation(line: 804, column: 1, scope: !1481)
!1514 = distinct !DISubprogram(name: "kprobe_post_process", scope: !3, file: !3, line: 833, type: !1515, scopeLine: 835, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{null, !86, !115, !76}
!1517 = !{!1518, !1519, !1520}
!1518 = !DILocalVariable(name: "cur", arg: 1, scope: !1514, file: !3, line: 833, type: !86)
!1519 = !DILocalVariable(name: "regs", arg: 2, scope: !1514, file: !3, line: 833, type: !115)
!1520 = !DILocalVariable(name: "kcb", arg: 3, scope: !1514, file: !3, line: 834, type: !76)
!1521 = !DILocation(line: 833, column: 48, scope: !1514)
!1522 = !DILocation(line: 833, column: 69, scope: !1514)
!1523 = !DILocation(line: 834, column: 33, scope: !1514)
!1524 = !DILocation(line: 837, column: 6, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 837, column: 6)
!1526 = !DILocation(line: 837, column: 11, scope: !1525)
!1527 = !DILocation(line: 837, column: 25, scope: !1525)
!1528 = !DILocation(line: 837, column: 6, scope: !1514)
!1529 = !DILocation(line: 839, column: 27, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 837, column: 44)
!1531 = !DILocation(line: 839, column: 3, scope: !1530)
!1532 = !DILocation(line: 840, column: 2, scope: !1530)
!1533 = !DILocation(line: 845, column: 3, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 840, column: 9)
!1535 = !DILocation(line: 845, column: 8, scope: !1534)
!1536 = !DILocation(line: 845, column: 22, scope: !1534)
!1537 = !DILocation(line: 846, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 846, column: 7)
!1539 = !DILocation(line: 846, column: 12, scope: !1538)
!1540 = !DILocation(line: 846, column: 7, scope: !1534)
!1541 = !DILocation(line: 847, column: 4, scope: !1538)
!1542 = !DILocation(line: 847, column: 9, scope: !1538)
!1543 = !DILocation(line: 847, column: 22, scope: !1538)
!1544 = !DILocation(line: 847, column: 27, scope: !1538)
!1545 = !DILocation(line: 848, column: 3, scope: !1534)
!1546 = !DILocation(line: 850, column: 1, scope: !1514)
!1547 = distinct !DISubprogram(name: "setup_singlestep", scope: !3, file: !3, line: 853, type: !1548, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !86, !115, !76, !26}
!1550 = !{!1551, !1552, !1553, !1554}
!1551 = !DILocalVariable(name: "p", arg: 1, scope: !1547, file: !3, line: 853, type: !86)
!1552 = !DILocalVariable(name: "regs", arg: 2, scope: !1547, file: !3, line: 853, type: !115)
!1553 = !DILocalVariable(name: "kcb", arg: 3, scope: !1547, file: !3, line: 854, type: !76)
!1554 = !DILocalVariable(name: "reenter", arg: 4, scope: !1547, file: !3, line: 854, type: !26)
!1555 = !DILocation(line: 853, column: 45, scope: !1547)
!1556 = !DILocation(line: 853, column: 64, scope: !1547)
!1557 = !DILocation(line: 854, column: 31, scope: !1547)
!1558 = !DILocation(line: 854, column: 40, scope: !1547)
!1559 = !DILocation(line: 856, column: 29, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 856, column: 6)
!1561 = !DILocation(line: 856, column: 32, scope: !1560)
!1562 = !DILocation(line: 856, column: 38, scope: !1560)
!1563 = !DILocation(line: 856, column: 6, scope: !1560)
!1564 = !DILocation(line: 856, column: 6, scope: !1547)
!1565 = !DILocation(line: 857, column: 3, scope: !1560)
!1566 = !DILocation(line: 873, column: 6, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 873, column: 6)
!1568 = !DILocation(line: 873, column: 6, scope: !1547)
!1569 = !DILocation(line: 874, column: 24, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 873, column: 15)
!1571 = !DILocation(line: 874, column: 3, scope: !1570)
!1572 = !DILocation(line: 875, column: 22, scope: !1570)
!1573 = !DILocation(line: 875, column: 25, scope: !1570)
!1574 = !DILocation(line: 875, column: 31, scope: !1570)
!1575 = !DILocation(line: 875, column: 3, scope: !1570)
!1576 = !DILocation(line: 876, column: 3, scope: !1570)
!1577 = !DILocation(line: 876, column: 8, scope: !1570)
!1578 = !DILocation(line: 876, column: 22, scope: !1570)
!1579 = !DILocation(line: 877, column: 2, scope: !1570)
!1580 = !DILocation(line: 878, column: 3, scope: !1567)
!1581 = !DILocation(line: 878, column: 8, scope: !1567)
!1582 = !DILocation(line: 878, column: 22, scope: !1567)
!1583 = !DILocation(line: 880, column: 6, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 880, column: 6)
!1585 = !DILocation(line: 880, column: 9, scope: !1584)
!1586 = !DILocation(line: 880, column: 15, scope: !1584)
!1587 = !DILocation(line: 880, column: 6, scope: !1547)
!1588 = !DILocation(line: 881, column: 3, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 880, column: 27)
!1590 = !DILocation(line: 881, column: 6, scope: !1589)
!1591 = !DILocation(line: 881, column: 12, scope: !1589)
!1592 = !DILocation(line: 881, column: 23, scope: !1589)
!1593 = !DILocation(line: 881, column: 26, scope: !1589)
!1594 = !DILocation(line: 882, column: 23, scope: !1589)
!1595 = !DILocation(line: 882, column: 26, scope: !1589)
!1596 = !DILocation(line: 882, column: 32, scope: !1589)
!1597 = !DILocation(line: 882, column: 3, scope: !1589)
!1598 = !DILocation(line: 883, column: 3, scope: !1589)
!1599 = !DILocation(line: 887, column: 2, scope: !1547)
!1600 = !DILocation(line: 887, column: 8, scope: !1547)
!1601 = !DILocation(line: 887, column: 14, scope: !1547)
!1602 = !DILocation(line: 888, column: 28, scope: !1547)
!1603 = !DILocation(line: 888, column: 31, scope: !1547)
!1604 = !DILocation(line: 888, column: 37, scope: !1547)
!1605 = !DILocation(line: 888, column: 13, scope: !1547)
!1606 = !DILocation(line: 888, column: 2, scope: !1547)
!1607 = !DILocation(line: 888, column: 8, scope: !1547)
!1608 = !DILocation(line: 888, column: 11, scope: !1547)
!1609 = !DILocation(line: 889, column: 1, scope: !1547)
!1610 = distinct !DISubprogram(name: "resume_singlestep", scope: !3, file: !3, line: 910, type: !1515, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1611)
!1611 = !{!1612, !1613, !1614, !1615, !1616}
!1612 = !DILocalVariable(name: "p", arg: 1, scope: !1610, file: !3, line: 910, type: !86)
!1613 = !DILocalVariable(name: "regs", arg: 2, scope: !1610, file: !3, line: 910, type: !115)
!1614 = !DILocalVariable(name: "kcb", arg: 3, scope: !1610, file: !3, line: 911, type: !76)
!1615 = !DILocalVariable(name: "copy_ip", scope: !1610, file: !3, line: 913, type: !20)
!1616 = !DILocalVariable(name: "orig_ip", scope: !1610, file: !3, line: 914, type: !20)
!1617 = !DILocation(line: 910, column: 46, scope: !1610)
!1618 = !DILocation(line: 910, column: 65, scope: !1610)
!1619 = !DILocation(line: 911, column: 32, scope: !1610)
!1620 = !DILocation(line: 913, column: 2, scope: !1610)
!1621 = !DILocation(line: 913, column: 16, scope: !1610)
!1622 = !DILocation(line: 913, column: 41, scope: !1610)
!1623 = !DILocation(line: 913, column: 44, scope: !1610)
!1624 = !DILocation(line: 913, column: 50, scope: !1610)
!1625 = !DILocation(line: 913, column: 26, scope: !1610)
!1626 = !DILocation(line: 914, column: 2, scope: !1610)
!1627 = !DILocation(line: 914, column: 16, scope: !1610)
!1628 = !DILocation(line: 914, column: 41, scope: !1610)
!1629 = !DILocation(line: 914, column: 44, scope: !1610)
!1630 = !DILocation(line: 914, column: 26, scope: !1610)
!1631 = !DILocation(line: 917, column: 17, scope: !1610)
!1632 = !DILocation(line: 917, column: 22, scope: !1610)
!1633 = !DILocation(line: 917, column: 2, scope: !1610)
!1634 = !DILocation(line: 917, column: 8, scope: !1610)
!1635 = !DILocation(line: 917, column: 14, scope: !1610)
!1636 = !DILocation(line: 919, column: 15, scope: !1610)
!1637 = !DILocation(line: 919, column: 25, scope: !1610)
!1638 = !DILocation(line: 919, column: 23, scope: !1610)
!1639 = !DILocation(line: 919, column: 34, scope: !1610)
!1640 = !DILocation(line: 919, column: 2, scope: !1610)
!1641 = !DILocation(line: 919, column: 8, scope: !1610)
!1642 = !DILocation(line: 919, column: 11, scope: !1610)
!1643 = !DILocation(line: 920, column: 1, scope: !1610)
!1644 = distinct !DISubprogram(name: "reenter_kprobe", scope: !3, file: !3, line: 928, type: !1645, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!26, !86, !115, !76}
!1647 = !{!1648, !1649, !1650, !1651, !1654}
!1648 = !DILocalVariable(name: "p", arg: 1, scope: !1644, file: !3, line: 928, type: !86)
!1649 = !DILocalVariable(name: "regs", arg: 2, scope: !1644, file: !3, line: 928, type: !115)
!1650 = !DILocalVariable(name: "kcb", arg: 3, scope: !1644, file: !3, line: 929, type: !76)
!1651 = !DILocalVariable(name: "__ret_warn_on", scope: !1652, file: !3, line: 950, type: !26)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 950, column: 3)
!1653 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 931, column: 30)
!1654 = !DILocalVariable(name: "__flags", scope: !1655, file: !3, line: 950, type: !26)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 950, column: 3)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 950, column: 3)
!1657 = !DILocation(line: 928, column: 42, scope: !1644)
!1658 = !DILocation(line: 928, column: 61, scope: !1644)
!1659 = !DILocation(line: 929, column: 28, scope: !1644)
!1660 = !DILocation(line: 931, column: 10, scope: !1644)
!1661 = !DILocation(line: 931, column: 15, scope: !1644)
!1662 = !DILocation(line: 931, column: 2, scope: !1644)
!1663 = !DILocation(line: 935, column: 29, scope: !1653)
!1664 = !DILocation(line: 935, column: 3, scope: !1653)
!1665 = !DILocation(line: 936, column: 20, scope: !1653)
!1666 = !DILocation(line: 936, column: 23, scope: !1653)
!1667 = !DILocation(line: 936, column: 29, scope: !1653)
!1668 = !DILocation(line: 936, column: 3, scope: !1653)
!1669 = !DILocation(line: 937, column: 3, scope: !1653)
!1670 = !DILocation(line: 945, column: 3, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 945, column: 3)
!1672 = !DILocation(line: 945, column: 3, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 945, column: 3)
!1674 = !DILocation(line: 946, column: 15, scope: !1653)
!1675 = !DILocation(line: 946, column: 3, scope: !1653)
!1676 = !DILocation(line: 947, column: 3, scope: !1653)
!1677 = !DILocation(line: 947, column: 3, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 947, column: 3)
!1679 = !DILocation(line: 947, column: 3, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 947, column: 3)
!1681 = !DILocation(line: 947, column: 3, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 947, column: 3)
!1683 = !{i64 2155548940, i64 2155548969, i64 2155549015, i64 2155549073, i64 2155549127, i64 2155549181, i64 2155549236, i64 2155549267}
!1684 = !DILocation(line: 950, column: 3, scope: !1652)
!1685 = !DILocation(line: 950, column: 3, scope: !1656)
!1686 = !DILocation(line: 950, column: 3, scope: !1655)
!1687 = !DILocation(line: 950, column: 3, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 950, column: 3)
!1689 = !DILocation(line: 950, column: 3, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 950, column: 3)
!1691 = !{i64 2155550161, i64 2155550190, i64 2155550236, i64 2155550294, i64 2155550348, i64 2155550402, i64 2155550457, i64 2155550488, i64 2155550796, i64 2155550802, i64 2155550849, i64 2155550872, i64 2155550898}
!1692 = !DILocation(line: 950, column: 3, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 950, column: 3)
!1694 = !DILocation(line: 950, column: 3, scope: !1653)
!1695 = !DILocation(line: 951, column: 3, scope: !1653)
!1696 = !DILocation(line: 954, column: 2, scope: !1644)
!1697 = !DILocation(line: 955, column: 1, scope: !1644)
!1698 = distinct !DISubprogram(name: "kprobe_int3_handler", scope: !3, file: !3, line: 968, type: !1699, scopeLine: 969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!26, !115}
!1701 = !{!1702, !1703, !1704, !1705}
!1702 = !DILocalVariable(name: "regs", arg: 1, scope: !1698, file: !3, line: 968, type: !115)
!1703 = !DILocalVariable(name: "addr", scope: !1698, file: !3, line: 970, type: !27)
!1704 = !DILocalVariable(name: "p", scope: !1698, file: !3, line: 971, type: !86)
!1705 = !DILocalVariable(name: "kcb", scope: !1698, file: !3, line: 972, type: !76)
!1706 = !DILocation(line: 968, column: 41, scope: !1698)
!1707 = !DILocation(line: 970, column: 2, scope: !1698)
!1708 = !DILocation(line: 970, column: 19, scope: !1698)
!1709 = !DILocation(line: 971, column: 2, scope: !1698)
!1710 = !DILocation(line: 971, column: 17, scope: !1698)
!1711 = !DILocation(line: 972, column: 2, scope: !1698)
!1712 = !DILocation(line: 972, column: 24, scope: !1698)
!1713 = !DILocation(line: 974, column: 16, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 974, column: 6)
!1715 = !DILocation(line: 974, column: 6, scope: !1714)
!1716 = !DILocation(line: 974, column: 6, scope: !1698)
!1717 = !DILocation(line: 975, column: 3, scope: !1714)
!1718 = !DILocation(line: 977, column: 29, scope: !1698)
!1719 = !DILocation(line: 977, column: 35, scope: !1698)
!1720 = !DILocation(line: 977, column: 38, scope: !1698)
!1721 = !DILocation(line: 977, column: 9, scope: !1698)
!1722 = !DILocation(line: 977, column: 7, scope: !1698)
!1723 = !DILocation(line: 984, column: 8, scope: !1698)
!1724 = !DILocation(line: 984, column: 6, scope: !1698)
!1725 = !DILocation(line: 985, column: 17, scope: !1698)
!1726 = !DILocation(line: 985, column: 6, scope: !1698)
!1727 = !DILocation(line: 985, column: 4, scope: !1698)
!1728 = !DILocation(line: 987, column: 6, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 987, column: 6)
!1730 = !DILocation(line: 987, column: 6, scope: !1698)
!1731 = !DILocation(line: 988, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 988, column: 7)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 987, column: 9)
!1734 = !DILocation(line: 988, column: 7, scope: !1733)
!1735 = !DILocation(line: 989, column: 23, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 989, column: 8)
!1737 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 988, column: 25)
!1738 = !DILocation(line: 989, column: 26, scope: !1736)
!1739 = !DILocation(line: 989, column: 32, scope: !1736)
!1740 = !DILocation(line: 989, column: 8, scope: !1736)
!1741 = !DILocation(line: 989, column: 8, scope: !1737)
!1742 = !DILocation(line: 990, column: 5, scope: !1736)
!1743 = !DILocation(line: 991, column: 3, scope: !1737)
!1744 = !DILocation(line: 992, column: 23, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 991, column: 10)
!1746 = !DILocation(line: 992, column: 26, scope: !1745)
!1747 = !DILocation(line: 992, column: 32, scope: !1745)
!1748 = !DILocation(line: 992, column: 4, scope: !1745)
!1749 = !DILocation(line: 993, column: 4, scope: !1745)
!1750 = !DILocation(line: 993, column: 9, scope: !1745)
!1751 = !DILocation(line: 993, column: 23, scope: !1745)
!1752 = !DILocation(line: 1002, column: 9, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 1002, column: 8)
!1754 = !DILocation(line: 1002, column: 12, scope: !1753)
!1755 = !DILocation(line: 1002, column: 24, scope: !1753)
!1756 = !DILocation(line: 1002, column: 28, scope: !1753)
!1757 = !DILocation(line: 1002, column: 31, scope: !1753)
!1758 = !DILocation(line: 1002, column: 43, scope: !1753)
!1759 = !DILocation(line: 1002, column: 46, scope: !1753)
!1760 = !DILocation(line: 1002, column: 8, scope: !1745)
!1761 = !DILocation(line: 1003, column: 22, scope: !1753)
!1762 = !DILocation(line: 1003, column: 25, scope: !1753)
!1763 = !DILocation(line: 1003, column: 31, scope: !1753)
!1764 = !DILocation(line: 1003, column: 5, scope: !1753)
!1765 = !DILocation(line: 1005, column: 5, scope: !1753)
!1766 = !DILocation(line: 1006, column: 4, scope: !1745)
!1767 = !DILocation(line: 1008, column: 2, scope: !1733)
!1768 = !DILocation(line: 1008, column: 26, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 1008, column: 13)
!1770 = !DILocation(line: 1008, column: 13, scope: !1769)
!1771 = !DILocation(line: 1008, column: 13, scope: !1729)
!1772 = !DILocation(line: 1009, column: 7, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 1008, column: 32)
!1774 = !DILocation(line: 1009, column: 5, scope: !1773)
!1775 = !DILocation(line: 1010, column: 22, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 1010, column: 7)
!1777 = !DILocation(line: 1010, column: 25, scope: !1776)
!1778 = !DILocation(line: 1010, column: 31, scope: !1776)
!1779 = !DILocation(line: 1010, column: 7, scope: !1776)
!1780 = !DILocation(line: 1010, column: 38, scope: !1776)
!1781 = !DILocation(line: 1010, column: 44, scope: !1776)
!1782 = !DILocation(line: 1010, column: 36, scope: !1776)
!1783 = !DILocation(line: 1010, column: 47, scope: !1776)
!1784 = !DILocation(line: 1011, column: 22, scope: !1776)
!1785 = !DILocation(line: 1011, column: 25, scope: !1776)
!1786 = !DILocation(line: 1011, column: 31, scope: !1776)
!1787 = !DILocation(line: 1011, column: 7, scope: !1776)
!1788 = !DILocation(line: 1011, column: 36, scope: !1776)
!1789 = !DILocation(line: 1011, column: 54, scope: !1776)
!1790 = !DILocation(line: 1011, column: 60, scope: !1776)
!1791 = !DILocation(line: 1011, column: 52, scope: !1776)
!1792 = !DILocation(line: 1010, column: 7, scope: !1773)
!1793 = !DILocation(line: 1013, column: 22, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1011, column: 64)
!1795 = !DILocation(line: 1013, column: 25, scope: !1794)
!1796 = !DILocation(line: 1013, column: 31, scope: !1794)
!1797 = !DILocation(line: 1013, column: 4, scope: !1794)
!1798 = !DILocation(line: 1014, column: 24, scope: !1794)
!1799 = !DILocation(line: 1014, column: 27, scope: !1794)
!1800 = !DILocation(line: 1014, column: 33, scope: !1794)
!1801 = !DILocation(line: 1014, column: 4, scope: !1794)
!1802 = !DILocation(line: 1015, column: 4, scope: !1794)
!1803 = !DILocation(line: 1017, column: 2, scope: !1773)
!1804 = !DILocation(line: 1019, column: 2, scope: !1698)
!1805 = !DILocation(line: 1020, column: 1, scope: !1698)
!1806 = distinct !DISubprogram(name: "user_mode", scope: !117, file: !117, line: 209, type: !1699, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1807)
!1807 = !{!1808}
!1808 = !DILocalVariable(name: "regs", arg: 1, scope: !1806, file: !117, line: 209, type: !115)
!1809 = !DILocation(line: 209, column: 54, scope: !1806)
!1810 = !DILocation(line: 214, column: 12, scope: !1806)
!1811 = !DILocation(line: 214, column: 18, scope: !1806)
!1812 = !DILocation(line: 214, column: 21, scope: !1806)
!1813 = !DILocation(line: 214, column: 10, scope: !1806)
!1814 = !DILocation(line: 214, column: 9, scope: !1806)
!1815 = !DILocation(line: 214, column: 2, scope: !1806)
!1816 = distinct !DISubprogram(name: "get_kprobe_ctlblk", scope: !88, file: !88, line: 411, type: !1817, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!76}
!1819 = !{!1820, !1823}
!1820 = !DILocalVariable(name: "__vpp_verify", scope: !1821, file: !88, line: 413, type: !705)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !88, line: 413, column: 9)
!1822 = distinct !DILexicalBlock(scope: !1816, file: !88, line: 413, column: 9)
!1823 = !DILocalVariable(name: "tcp_ptr__", scope: !1824, file: !88, line: 413, type: !20)
!1824 = distinct !DILexicalBlock(scope: !1822, file: !88, line: 413, column: 9)
!1825 = !DILocation(line: 413, column: 9, scope: !1822)
!1826 = !DILocation(line: 413, column: 9, scope: !1821)
!1827 = !DILocation(line: 413, column: 9, scope: !1824)
!1828 = !{i64 2154551996}
!1829 = !DILocation(line: 413, column: 2, scope: !1816)
!1830 = !DISubprogram(name: "get_kprobe", scope: !88, file: !88, line: 398, type: !1831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!86, !19}
!1833 = distinct !DISubprogram(name: "kprobe_running", scope: !88, file: !88, line: 401, type: !1834, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!86}
!1836 = !{!1837, !1840, !1842}
!1837 = !DILocalVariable(name: "pscr_ret__", scope: !1838, file: !88, line: 403, type: !86)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !88, line: 403, column: 9)
!1839 = distinct !DILexicalBlock(scope: !1833, file: !88, line: 403, column: 9)
!1840 = !DILocalVariable(name: "__vpp_verify", scope: !1841, file: !88, line: 403, type: !705)
!1841 = distinct !DILexicalBlock(scope: !1838, file: !88, line: 403, column: 9)
!1842 = !DILocalVariable(name: "pfo_val__", scope: !1843, file: !88, line: 403, type: !61)
!1843 = distinct !DILexicalBlock(scope: !1838, file: !88, line: 403, column: 9)
!1844 = !DILocation(line: 403, column: 9, scope: !1839)
!1845 = !DILocation(line: 403, column: 9, scope: !1838)
!1846 = !DILocation(line: 403, column: 9, scope: !1841)
!1847 = !DILocation(line: 403, column: 9, scope: !1843)
!1848 = !{i64 2154546871}
!1849 = !DILocation(line: 403, column: 2, scope: !1833)
!1850 = distinct !DISubprogram(name: "set_current_kprobe", scope: !3, file: !3, line: 825, type: !1515, scopeLine: 827, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1851)
!1851 = !{!1852, !1853, !1854, !1855, !1859}
!1852 = !DILocalVariable(name: "p", arg: 1, scope: !1850, file: !3, line: 825, type: !86)
!1853 = !DILocalVariable(name: "regs", arg: 2, scope: !1850, file: !3, line: 825, type: !115)
!1854 = !DILocalVariable(name: "kcb", arg: 3, scope: !1850, file: !3, line: 826, type: !76)
!1855 = !DILocalVariable(name: "__vpp_verify", scope: !1856, file: !3, line: 828, type: !705)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 828, column: 2)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 828, column: 2)
!1858 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 828, column: 2)
!1859 = !DILocalVariable(name: "pto_val__", scope: !1860, file: !3, line: 828, type: !61)
!1860 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 828, column: 2)
!1861 = !DILocation(line: 825, column: 35, scope: !1850)
!1862 = !DILocation(line: 825, column: 54, scope: !1850)
!1863 = !DILocation(line: 826, column: 28, scope: !1850)
!1864 = !DILocation(line: 828, column: 2, scope: !1858)
!1865 = !DILocation(line: 828, column: 2, scope: !1857)
!1866 = !DILocation(line: 828, column: 2, scope: !1856)
!1867 = !DILocation(line: 828, column: 2, scope: !1860)
!1868 = !{i64 2155546946}
!1869 = !DILocation(line: 830, column: 6, scope: !1850)
!1870 = !DILocation(line: 830, column: 12, scope: !1850)
!1871 = !DILocation(line: 830, column: 18, scope: !1850)
!1872 = !DILocation(line: 829, column: 28, scope: !1850)
!1873 = !DILocation(line: 829, column: 33, scope: !1850)
!1874 = !DILocation(line: 830, column: 3, scope: !1850)
!1875 = !DILocation(line: 829, column: 2, scope: !1850)
!1876 = !DILocation(line: 829, column: 7, scope: !1850)
!1877 = !DILocation(line: 829, column: 26, scope: !1850)
!1878 = !DILocation(line: 831, column: 1, scope: !1850)
!1879 = distinct !DISubprogram(name: "reset_current_kprobe", scope: !88, file: !88, line: 406, type: !1456, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1880)
!1880 = !{!1881, !1885}
!1881 = !DILocalVariable(name: "__vpp_verify", scope: !1882, file: !88, line: 408, type: !705)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !88, line: 408, column: 2)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !88, line: 408, column: 2)
!1884 = distinct !DILexicalBlock(scope: !1879, file: !88, line: 408, column: 2)
!1885 = !DILocalVariable(name: "pto_val__", scope: !1886, file: !88, line: 408, type: !61)
!1886 = distinct !DILexicalBlock(scope: !1883, file: !88, line: 408, column: 2)
!1887 = !DILocation(line: 408, column: 2, scope: !1884)
!1888 = !DILocation(line: 408, column: 2, scope: !1883)
!1889 = !DILocation(line: 408, column: 2, scope: !1882)
!1890 = !DILocation(line: 408, column: 2, scope: !1886)
!1891 = !{i64 2154551298}
!1892 = !DILocation(line: 409, column: 1, scope: !1879)
!1893 = distinct !DISubprogram(name: "kprobe_is_ss", scope: !3, file: !3, line: 958, type: !1894, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!26, !76}
!1896 = !{!1897}
!1897 = !DILocalVariable(name: "kcb", arg: 1, scope: !1893, file: !3, line: 958, type: !76)
!1898 = !DILocation(line: 958, column: 63, scope: !1893)
!1899 = !DILocation(line: 960, column: 10, scope: !1893)
!1900 = !DILocation(line: 960, column: 15, scope: !1893)
!1901 = !DILocation(line: 960, column: 29, scope: !1893)
!1902 = !DILocation(line: 960, column: 46, scope: !1893)
!1903 = !DILocation(line: 961, column: 3, scope: !1893)
!1904 = !DILocation(line: 961, column: 8, scope: !1893)
!1905 = !DILocation(line: 961, column: 22, scope: !1893)
!1906 = !DILocation(line: 960, column: 2, scope: !1893)
!1907 = distinct !DISubprogram(name: "kprobe_fault_handler", scope: !3, file: !3, line: 1023, type: !1908, scopeLine: 1024, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!26, !115, !26}
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1919}
!1911 = !DILocalVariable(name: "regs", arg: 1, scope: !1907, file: !3, line: 1023, type: !115)
!1912 = !DILocalVariable(name: "trapnr", arg: 2, scope: !1907, file: !3, line: 1023, type: !26)
!1913 = !DILocalVariable(name: "cur", scope: !1907, file: !3, line: 1025, type: !86)
!1914 = !DILocalVariable(name: "kcb", scope: !1907, file: !3, line: 1026, type: !76)
!1915 = !DILocalVariable(name: "__ret_warn_on", scope: !1916, file: !3, line: 1030, type: !26)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 1030, column: 3)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 1028, column: 60)
!1918 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 1028, column: 6)
!1919 = !DILocalVariable(name: "__flags", scope: !1920, file: !3, line: 1030, type: !26)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 1030, column: 3)
!1921 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 1030, column: 3)
!1922 = !DILocation(line: 1023, column: 42, scope: !1907)
!1923 = !DILocation(line: 1023, column: 52, scope: !1907)
!1924 = !DILocation(line: 1025, column: 2, scope: !1907)
!1925 = !DILocation(line: 1025, column: 17, scope: !1907)
!1926 = !DILocation(line: 1025, column: 23, scope: !1907)
!1927 = !DILocation(line: 1026, column: 2, scope: !1907)
!1928 = !DILocation(line: 1026, column: 24, scope: !1907)
!1929 = !DILocation(line: 1026, column: 30, scope: !1907)
!1930 = !DILocation(line: 1028, column: 6, scope: !1918)
!1931 = !DILocation(line: 1028, column: 6, scope: !1907)
!1932 = !DILocation(line: 1030, column: 3, scope: !1916)
!1933 = !DILocation(line: 0, scope: !1916)
!1934 = !DILocation(line: 1030, column: 3, scope: !1921)
!1935 = !DILocation(line: 1030, column: 3, scope: !1920)
!1936 = !DILocation(line: 1030, column: 3, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1030, column: 3)
!1938 = !DILocation(line: 1030, column: 3, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1030, column: 3)
!1940 = !{i64 2155552687, i64 2155552716, i64 2155552762, i64 2155552820, i64 2155552874, i64 2155552928, i64 2155552983, i64 2155553014, i64 2155553322, i64 2155553328, i64 2155553375, i64 2155553398, i64 2155553424}
!1941 = !DILocation(line: 1030, column: 3, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1030, column: 3)
!1943 = !DILocation(line: 1030, column: 3, scope: !1917)
!1944 = !DILocation(line: 1039, column: 29, scope: !1917)
!1945 = !DILocation(line: 1039, column: 34, scope: !1917)
!1946 = !DILocation(line: 1039, column: 14, scope: !1917)
!1947 = !DILocation(line: 1039, column: 3, scope: !1917)
!1948 = !DILocation(line: 1039, column: 9, scope: !1917)
!1949 = !DILocation(line: 1039, column: 12, scope: !1917)
!1950 = !DILocation(line: 1045, column: 18, scope: !1917)
!1951 = !DILocation(line: 1045, column: 23, scope: !1917)
!1952 = !DILocation(line: 1045, column: 3, scope: !1917)
!1953 = !DILocation(line: 1045, column: 9, scope: !1917)
!1954 = !DILocation(line: 1045, column: 15, scope: !1917)
!1955 = !DILocation(line: 1047, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 1047, column: 7)
!1957 = !DILocation(line: 1047, column: 12, scope: !1956)
!1958 = !DILocation(line: 1047, column: 26, scope: !1956)
!1959 = !DILocation(line: 1047, column: 7, scope: !1917)
!1960 = !DILocation(line: 1048, column: 28, scope: !1956)
!1961 = !DILocation(line: 1048, column: 4, scope: !1956)
!1962 = !DILocation(line: 1050, column: 4, scope: !1956)
!1963 = !DILocation(line: 1051, column: 2, scope: !1917)
!1964 = !DILocation(line: 1054, column: 1, scope: !1907)
!1965 = !DILocation(line: 1053, column: 2, scope: !1907)
!1966 = distinct !DISubprogram(name: "restore_previous_kprobe", scope: !3, file: !3, line: 816, type: !1967, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1969)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{null, !76}
!1969 = !{!1970, !1971, !1975}
!1970 = !DILocalVariable(name: "kcb", arg: 1, scope: !1966, file: !3, line: 816, type: !76)
!1971 = !DILocalVariable(name: "__vpp_verify", scope: !1972, file: !3, line: 818, type: !705)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 818, column: 2)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 818, column: 2)
!1974 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 818, column: 2)
!1975 = !DILocalVariable(name: "pto_val__", scope: !1976, file: !3, line: 818, type: !61)
!1976 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 818, column: 2)
!1977 = !DILocation(line: 816, column: 47, scope: !1966)
!1978 = !DILocation(line: 818, column: 2, scope: !1974)
!1979 = !DILocation(line: 818, column: 2, scope: !1973)
!1980 = !DILocation(line: 818, column: 2, scope: !1972)
!1981 = !DILocation(line: 818, column: 2, scope: !1976)
!1982 = !{i64 2155542696}
!1983 = !DILocation(line: 819, column: 23, scope: !1966)
!1984 = !DILocation(line: 819, column: 28, scope: !1966)
!1985 = !DILocation(line: 819, column: 40, scope: !1966)
!1986 = !DILocation(line: 819, column: 2, scope: !1966)
!1987 = !DILocation(line: 819, column: 7, scope: !1966)
!1988 = !DILocation(line: 819, column: 21, scope: !1966)
!1989 = !DILocation(line: 820, column: 26, scope: !1966)
!1990 = !DILocation(line: 820, column: 31, scope: !1966)
!1991 = !DILocation(line: 820, column: 43, scope: !1966)
!1992 = !DILocation(line: 820, column: 2, scope: !1966)
!1993 = !DILocation(line: 820, column: 7, scope: !1966)
!1994 = !DILocation(line: 820, column: 24, scope: !1966)
!1995 = !DILocation(line: 821, column: 28, scope: !1966)
!1996 = !DILocation(line: 821, column: 33, scope: !1966)
!1997 = !DILocation(line: 821, column: 45, scope: !1966)
!1998 = !DILocation(line: 821, column: 2, scope: !1966)
!1999 = !DILocation(line: 821, column: 7, scope: !1966)
!2000 = !DILocation(line: 821, column: 26, scope: !1966)
!2001 = !DILocation(line: 822, column: 1, scope: !1966)
!2002 = distinct !DISubprogram(name: "arch_populate_kprobe_blacklist", scope: !3, file: !3, line: 1057, type: !2003, scopeLine: 1058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!26}
!2005 = !DILocation(line: 1059, column: 9, scope: !2002)
!2006 = !DILocation(line: 1059, column: 2, scope: !2002)
!2007 = !DISubprogram(name: "kprobe_add_area_blacklist", scope: !88, file: !88, line: 297, type: !2008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!26, !20, !20}
!2010 = distinct !DISubprogram(name: "arch_init_kprobes", scope: !3, file: !3, line: 1063, type: !2003, scopeLine: 1064, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2011 = !DILocation(line: 1065, column: 2, scope: !2010)
!2012 = distinct !DISubprogram(name: "arch_trampoline_kprobe", scope: !3, file: !3, line: 1068, type: !1228, scopeLine: 1069, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2013 = !{!2014}
!2014 = !DILocalVariable(name: "p", arg: 1, scope: !2012, file: !3, line: 1068, type: !86)
!2015 = !DILocation(line: 1068, column: 43, scope: !2012)
!2016 = !DILocation(line: 1070, column: 2, scope: !2012)
!2017 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2018, file: !2018, line: 66, type: !2019, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2024)
!2018 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null, !2021, !707}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2023)
!2023 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2024 = !{!2025, !2026}
!2025 = !DILocalVariable(name: "v", arg: 1, scope: !2017, file: !2018, line: 66, type: !2021)
!2026 = !DILocalVariable(name: "size", arg: 2, scope: !2017, file: !2018, line: 66, type: !707)
!2027 = !DILocation(line: 66, column: 73, scope: !2017)
!2028 = !DILocation(line: 66, column: 83, scope: !2017)
!2029 = !DILocation(line: 68, column: 19, scope: !2017)
!2030 = !DILocation(line: 68, column: 22, scope: !2017)
!2031 = !DILocation(line: 68, column: 2, scope: !2017)
!2032 = !DILocation(line: 69, column: 2, scope: !2017)
!2033 = !DILocation(line: 70, column: 1, scope: !2017)
!2034 = distinct !DISubprogram(name: "arch_test_bit", scope: !2035, file: !2035, line: 237, type: !511, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2036)
!2035 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2036 = !{!2037, !2038}
!2037 = !DILocalVariable(name: "nr", arg: 1, scope: !2034, file: !2035, line: 237, type: !20)
!2038 = !DILocalVariable(name: "addr", arg: 2, scope: !2034, file: !2035, line: 237, type: !513)
!2039 = !DILocation(line: 237, column: 29, scope: !2034)
!2040 = !DILocation(line: 237, column: 63, scope: !2034)
!2041 = !DILocation(line: 239, column: 30, scope: !2034)
!2042 = !DILocation(line: 239, column: 9, scope: !2034)
!2043 = !DILocation(line: 239, column: 54, scope: !2034)
!2044 = !DILocation(line: 239, column: 58, scope: !2034)
!2045 = !DILocation(line: 239, column: 36, scope: !2034)
!2046 = !DILocation(line: 240, column: 26, scope: !2034)
!2047 = !DILocation(line: 240, column: 30, scope: !2034)
!2048 = !DILocation(line: 240, column: 8, scope: !2034)
!2049 = !DILocation(line: 239, column: 2, scope: !2034)
!2050 = distinct !DISubprogram(name: "kasan_check_read", scope: !2051, file: !2051, line: 40, type: !2052, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2054)
!2051 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!287, !2021, !7}
!2054 = !{!2055, !2056}
!2055 = !DILocalVariable(name: "p", arg: 1, scope: !2050, file: !2051, line: 40, type: !2021)
!2056 = !DILocalVariable(name: "size", arg: 2, scope: !2050, file: !2051, line: 40, type: !7)
!2057 = !DILocation(line: 40, column: 58, scope: !2050)
!2058 = !DILocation(line: 40, column: 74, scope: !2050)
!2059 = !DILocation(line: 42, column: 2, scope: !2050)
!2060 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2061, file: !2061, line: 229, type: !2062, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2064)
!2061 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !2021, !707, !26}
!2064 = !{!2065, !2066, !2067}
!2065 = !DILocalVariable(name: "ptr", arg: 1, scope: !2060, file: !2061, line: 229, type: !2021)
!2066 = !DILocalVariable(name: "size", arg: 2, scope: !2060, file: !2061, line: 229, type: !707)
!2067 = !DILocalVariable(name: "type", arg: 3, scope: !2060, file: !2061, line: 230, type: !26)
!2068 = !DILocation(line: 229, column: 60, scope: !2060)
!2069 = !DILocation(line: 229, column: 72, scope: !2060)
!2070 = !DILocation(line: 230, column: 15, scope: !2060)
!2071 = !DILocation(line: 230, column: 23, scope: !2060)
!2072 = distinct !DISubprogram(name: "constant_test_bit", scope: !2035, file: !2035, line: 204, type: !2073, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!287, !56, !513}
!2075 = !{!2076, !2077}
!2076 = !DILocalVariable(name: "nr", arg: 1, scope: !2072, file: !2035, line: 204, type: !56)
!2077 = !DILocalVariable(name: "addr", arg: 2, scope: !2072, file: !2035, line: 204, type: !513)
!2078 = !DILocation(line: 204, column: 52, scope: !2072)
!2079 = !DILocation(line: 204, column: 86, scope: !2072)
!2080 = !DILocation(line: 206, column: 19, scope: !2072)
!2081 = !DILocation(line: 206, column: 22, scope: !2072)
!2082 = !DILocation(line: 206, column: 15, scope: !2072)
!2083 = !DILocation(line: 207, column: 4, scope: !2072)
!2084 = !DILocation(line: 207, column: 9, scope: !2072)
!2085 = !DILocation(line: 207, column: 12, scope: !2072)
!2086 = !DILocation(line: 206, column: 44, scope: !2072)
!2087 = !DILocation(line: 207, column: 37, scope: !2072)
!2088 = !DILocation(line: 206, column: 2, scope: !2072)
!2089 = distinct !DISubprogram(name: "variable_test_bit", scope: !2035, file: !2035, line: 224, type: !2073, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!2090 = !{!2091, !2092, !2093}
!2091 = !DILocalVariable(name: "nr", arg: 1, scope: !2089, file: !2035, line: 224, type: !56)
!2092 = !DILocalVariable(name: "addr", arg: 2, scope: !2089, file: !2035, line: 224, type: !513)
!2093 = !DILocalVariable(name: "oldbit", scope: !2089, file: !2035, line: 226, type: !287)
!2094 = !DILocation(line: 224, column: 52, scope: !2089)
!2095 = !DILocation(line: 224, column: 86, scope: !2089)
!2096 = !DILocation(line: 226, column: 2, scope: !2089)
!2097 = !DILocation(line: 226, column: 7, scope: !2089)
!2098 = !DILocation(line: 231, column: 33, scope: !2089)
!2099 = !DILocation(line: 231, column: 46, scope: !2089)
!2100 = !DILocation(line: 228, column: 2, scope: !2089)
!2101 = !{i64 2147998376, i64 2147998450}
!2102 = !DILocation(line: 233, column: 9, scope: !2089)
!2103 = !DILocation(line: 234, column: 1, scope: !2089)
!2104 = !DILocation(line: 233, column: 2, scope: !2089)
!2105 = distinct !DISubprogram(name: "ftrace_location", scope: !2106, file: !2106, line: 874, type: !2107, scopeLine: 875, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2106 = !DIFile(filename: "./include/linux/ftrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4b80d89eac182dfc62518530b9fd5d2")
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!20, !20}
!2109 = !{!2110}
!2110 = !DILocalVariable(name: "ip", arg: 1, scope: !2105, file: !2106, line: 874, type: !20)
!2111 = !DILocation(line: 874, column: 59, scope: !2105)
!2112 = !DILocation(line: 876, column: 2, scope: !2105)
!2113 = distinct !DISubprogram(name: "gen_endbr_poison", scope: !712, file: !712, line: 59, type: !2114, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!58}
!2116 = !DILocation(line: 65, column: 2, scope: !2113)
!2117 = distinct !DISubprogram(name: "gen_endbr", scope: !712, file: !712, line: 44, type: !2114, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2118 = !{!2119}
!2119 = !DILocalVariable(name: "endbr", scope: !2117, file: !712, line: 46, type: !58)
!2120 = !DILocation(line: 46, column: 2, scope: !2117)
!2121 = !DILocation(line: 46, column: 6, scope: !2117)
!2122 = !DILocation(line: 52, column: 2, scope: !2117)
!2123 = !{i64 246710, i64 246739, i64 246765}
!2124 = !DILocation(line: 56, column: 9, scope: !2117)
!2125 = !DILocation(line: 57, column: 1, scope: !2117)
!2126 = !DILocation(line: 56, column: 2, scope: !2117)
!2127 = distinct !DISubprogram(name: "insn_offset_sib", scope: !6, file: !6, line: 230, type: !847, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2128)
!2128 = !{!2129}
!2129 = !DILocalVariable(name: "insn", arg: 1, scope: !2127, file: !6, line: 230, type: !374)
!2130 = !DILocation(line: 230, column: 48, scope: !2127)
!2131 = !DILocation(line: 232, column: 27, scope: !2127)
!2132 = !DILocation(line: 232, column: 9, scope: !2127)
!2133 = !DILocation(line: 232, column: 35, scope: !2127)
!2134 = !DILocation(line: 232, column: 41, scope: !2127)
!2135 = !DILocation(line: 232, column: 47, scope: !2127)
!2136 = !DILocation(line: 232, column: 33, scope: !2127)
!2137 = !DILocation(line: 232, column: 2, scope: !2127)
!2138 = distinct !DISubprogram(name: "insn_offset_modrm", scope: !6, file: !6, line: 226, type: !847, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2139)
!2139 = !{!2140}
!2140 = !DILocalVariable(name: "insn", arg: 1, scope: !2138, file: !6, line: 226, type: !374)
!2141 = !DILocation(line: 226, column: 50, scope: !2138)
!2142 = !DILocation(line: 228, column: 28, scope: !2138)
!2143 = !DILocation(line: 228, column: 9, scope: !2138)
!2144 = !DILocation(line: 228, column: 36, scope: !2138)
!2145 = !DILocation(line: 228, column: 42, scope: !2138)
!2146 = !DILocation(line: 228, column: 49, scope: !2138)
!2147 = !DILocation(line: 228, column: 34, scope: !2138)
!2148 = !DILocation(line: 228, column: 2, scope: !2138)
!2149 = distinct !DISubprogram(name: "insn_offset_opcode", scope: !6, file: !6, line: 222, type: !847, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2150)
!2150 = !{!2151}
!2151 = !DILocalVariable(name: "insn", arg: 1, scope: !2149, file: !6, line: 222, type: !374)
!2152 = !DILocation(line: 222, column: 51, scope: !2149)
!2153 = !DILocation(line: 224, column: 32, scope: !2149)
!2154 = !DILocation(line: 224, column: 9, scope: !2149)
!2155 = !DILocation(line: 224, column: 40, scope: !2149)
!2156 = !DILocation(line: 224, column: 46, scope: !2149)
!2157 = !DILocation(line: 224, column: 57, scope: !2149)
!2158 = !DILocation(line: 224, column: 38, scope: !2149)
!2159 = !DILocation(line: 224, column: 2, scope: !2149)
!2160 = distinct !DISubprogram(name: "insn_offset_vex_prefix", scope: !6, file: !6, line: 218, type: !847, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2161)
!2161 = !{!2162}
!2162 = !DILocalVariable(name: "insn", arg: 1, scope: !2160, file: !6, line: 218, type: !374)
!2163 = !DILocation(line: 218, column: 55, scope: !2160)
!2164 = !DILocation(line: 220, column: 32, scope: !2160)
!2165 = !DILocation(line: 220, column: 9, scope: !2160)
!2166 = !DILocation(line: 220, column: 40, scope: !2160)
!2167 = !DILocation(line: 220, column: 46, scope: !2160)
!2168 = !DILocation(line: 220, column: 57, scope: !2160)
!2169 = !DILocation(line: 220, column: 38, scope: !2160)
!2170 = !DILocation(line: 220, column: 2, scope: !2160)
!2171 = distinct !DISubprogram(name: "insn_offset_rex_prefix", scope: !6, file: !6, line: 214, type: !847, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2172)
!2172 = !{!2173}
!2173 = !DILocalVariable(name: "insn", arg: 1, scope: !2171, file: !6, line: 214, type: !374)
!2174 = !DILocation(line: 214, column: 55, scope: !2171)
!2175 = !DILocation(line: 216, column: 9, scope: !2171)
!2176 = !DILocation(line: 216, column: 15, scope: !2171)
!2177 = !DILocation(line: 216, column: 24, scope: !2171)
!2178 = !DILocation(line: 216, column: 2, scope: !2171)
!2179 = distinct !DISubprogram(name: "int3_emulate_push", scope: !278, file: !278, line: 151, type: !2180, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !115, !20}
!2182 = !{!2183, !2184}
!2183 = !DILocalVariable(name: "regs", arg: 1, scope: !2179, file: !278, line: 151, type: !115)
!2184 = !DILocalVariable(name: "val", arg: 2, scope: !2179, file: !278, line: 151, type: !20)
!2185 = !DILocation(line: 151, column: 40, scope: !2179)
!2186 = !DILocation(line: 151, column: 60, scope: !2179)
!2187 = !DILocation(line: 162, column: 2, scope: !2179)
!2188 = !DILocation(line: 162, column: 8, scope: !2179)
!2189 = !DILocation(line: 162, column: 11, scope: !2179)
!2190 = !DILocation(line: 163, column: 31, scope: !2179)
!2191 = !DILocation(line: 163, column: 20, scope: !2179)
!2192 = !DILocation(line: 163, column: 26, scope: !2179)
!2193 = !DILocation(line: 163, column: 3, scope: !2179)
!2194 = !DILocation(line: 163, column: 29, scope: !2179)
!2195 = !DILocation(line: 164, column: 1, scope: !2179)
!2196 = distinct !DISubprogram(name: "int3_emulate_pop", scope: !278, file: !278, line: 167, type: !2197, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!20, !115}
!2199 = !{!2200, !2201}
!2200 = !DILocalVariable(name: "regs", arg: 1, scope: !2196, file: !278, line: 167, type: !115)
!2201 = !DILocalVariable(name: "val", scope: !2196, file: !278, line: 169, type: !20)
!2202 = !DILocation(line: 167, column: 48, scope: !2196)
!2203 = !DILocation(line: 169, column: 2, scope: !2196)
!2204 = !DILocation(line: 169, column: 16, scope: !2196)
!2205 = !DILocation(line: 169, column: 40, scope: !2196)
!2206 = !DILocation(line: 169, column: 46, scope: !2196)
!2207 = !DILocation(line: 169, column: 23, scope: !2196)
!2208 = !DILocation(line: 169, column: 22, scope: !2196)
!2209 = !DILocation(line: 170, column: 2, scope: !2196)
!2210 = !DILocation(line: 170, column: 8, scope: !2196)
!2211 = !DILocation(line: 170, column: 11, scope: !2196)
!2212 = !DILocation(line: 171, column: 9, scope: !2196)
!2213 = !DILocation(line: 172, column: 1, scope: !2196)
!2214 = !DILocation(line: 171, column: 2, scope: !2196)
!2215 = distinct !DISubprogram(name: "int3_emulate_ret", scope: !278, file: !278, line: 182, type: !2216, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{null, !115}
!2218 = !{!2219, !2220}
!2219 = !DILocalVariable(name: "regs", arg: 1, scope: !2215, file: !278, line: 182, type: !115)
!2220 = !DILocalVariable(name: "ip", scope: !2215, file: !278, line: 184, type: !20)
!2221 = !DILocation(line: 182, column: 39, scope: !2215)
!2222 = !DILocation(line: 184, column: 2, scope: !2215)
!2223 = !DILocation(line: 184, column: 16, scope: !2215)
!2224 = !DILocation(line: 184, column: 38, scope: !2215)
!2225 = !DILocation(line: 184, column: 21, scope: !2215)
!2226 = !DILocation(line: 185, column: 19, scope: !2215)
!2227 = !DILocation(line: 185, column: 25, scope: !2215)
!2228 = !DILocation(line: 185, column: 2, scope: !2215)
!2229 = !DILocation(line: 186, column: 1, scope: !2215)
!2230 = distinct !DISubprogram(name: "int3_emulate_jmp", scope: !278, file: !278, line: 145, type: !2180, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2231)
!2231 = !{!2232, !2233}
!2232 = !DILocalVariable(name: "regs", arg: 1, scope: !2230, file: !278, line: 145, type: !115)
!2233 = !DILocalVariable(name: "ip", arg: 2, scope: !2230, file: !278, line: 145, type: !20)
!2234 = !DILocation(line: 145, column: 39, scope: !2230)
!2235 = !DILocation(line: 145, column: 59, scope: !2230)
!2236 = !DILocation(line: 147, column: 13, scope: !2230)
!2237 = !DILocation(line: 147, column: 2, scope: !2230)
!2238 = !DILocation(line: 147, column: 8, scope: !2230)
!2239 = !DILocation(line: 147, column: 11, scope: !2230)
!2240 = !DILocation(line: 148, column: 1, scope: !2230)
!2241 = distinct !DISubprogram(name: "int3_emulate_call", scope: !278, file: !278, line: 175, type: !2180, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2242 = !{!2243, !2244}
!2243 = !DILocalVariable(name: "regs", arg: 1, scope: !2241, file: !278, line: 175, type: !115)
!2244 = !DILocalVariable(name: "func", arg: 2, scope: !2241, file: !278, line: 175, type: !20)
!2245 = !DILocation(line: 175, column: 40, scope: !2241)
!2246 = !DILocation(line: 175, column: 60, scope: !2241)
!2247 = !DILocation(line: 177, column: 20, scope: !2241)
!2248 = !DILocation(line: 177, column: 26, scope: !2241)
!2249 = !DILocation(line: 177, column: 32, scope: !2241)
!2250 = !DILocation(line: 177, column: 35, scope: !2241)
!2251 = !DILocation(line: 177, column: 52, scope: !2241)
!2252 = !DILocation(line: 177, column: 2, scope: !2241)
!2253 = !DILocation(line: 178, column: 19, scope: !2241)
!2254 = !DILocation(line: 178, column: 25, scope: !2241)
!2255 = !DILocation(line: 178, column: 2, scope: !2241)
!2256 = !DILocation(line: 179, column: 1, scope: !2241)
!2257 = !DILocation(line: 189, column: 39, scope: !277)
!2258 = !DILocation(line: 189, column: 48, scope: !277)
!2259 = !DILocation(line: 189, column: 66, scope: !277)
!2260 = !DILocation(line: 189, column: 84, scope: !277)
!2261 = !DILocation(line: 200, column: 2, scope: !277)
!2262 = !DILocation(line: 200, column: 7, scope: !277)
!2263 = !DILocation(line: 200, column: 16, scope: !277)
!2264 = !DILocation(line: 200, column: 19, scope: !277)
!2265 = !DILocation(line: 201, column: 2, scope: !277)
!2266 = !DILocation(line: 201, column: 7, scope: !277)
!2267 = !DILocation(line: 203, column: 6, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !277, file: !278, line: 203, column: 6)
!2269 = !DILocation(line: 203, column: 9, scope: !2268)
!2270 = !DILocation(line: 203, column: 6, scope: !277)
!2271 = !DILocation(line: 204, column: 11, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2268, file: !278, line: 203, column: 16)
!2273 = !DILocation(line: 204, column: 17, scope: !2272)
!2274 = !DILocation(line: 204, column: 34, scope: !2272)
!2275 = !DILocation(line: 204, column: 37, scope: !2272)
!2276 = !DILocation(line: 204, column: 25, scope: !2272)
!2277 = !DILocation(line: 204, column: 23, scope: !2272)
!2278 = !DILocation(line: 204, column: 9, scope: !2272)
!2279 = !DILocation(line: 205, column: 2, scope: !2272)
!2280 = !DILocation(line: 206, column: 13, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2268, file: !278, line: 205, column: 9)
!2282 = !DILocation(line: 206, column: 19, scope: !2281)
!2283 = !DILocation(line: 206, column: 25, scope: !2281)
!2284 = !DILocation(line: 206, column: 42, scope: !2281)
!2285 = !DILocation(line: 207, column: 6, scope: !2281)
!2286 = !DILocation(line: 207, column: 12, scope: !2281)
!2287 = !DILocation(line: 207, column: 18, scope: !2281)
!2288 = !DILocation(line: 207, column: 35, scope: !2281)
!2289 = !DILocation(line: 206, column: 64, scope: !2281)
!2290 = !DILocation(line: 206, column: 11, scope: !2281)
!2291 = !DILocation(line: 206, column: 9, scope: !2281)
!2292 = !DILocation(line: 208, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2281, file: !278, line: 208, column: 7)
!2294 = !DILocation(line: 208, column: 10, scope: !2293)
!2295 = !DILocation(line: 208, column: 7, scope: !2281)
!2296 = !DILocation(line: 209, column: 12, scope: !2293)
!2297 = !DILocation(line: 209, column: 18, scope: !2293)
!2298 = !DILocation(line: 209, column: 22, scope: !2293)
!2299 = !DILocation(line: 209, column: 28, scope: !2293)
!2300 = !DILocation(line: 209, column: 34, scope: !2293)
!2301 = !DILocation(line: 209, column: 10, scope: !2293)
!2302 = !DILocation(line: 209, column: 4, scope: !2293)
!2303 = !DILocation(line: 212, column: 7, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !277, file: !278, line: 212, column: 6)
!2305 = !DILocation(line: 212, column: 13, scope: !2304)
!2306 = !DILocation(line: 212, column: 17, scope: !2304)
!2307 = !DILocation(line: 212, column: 25, scope: !2304)
!2308 = !DILocation(line: 212, column: 30, scope: !2304)
!2309 = !DILocation(line: 212, column: 36, scope: !2304)
!2310 = !DILocation(line: 212, column: 39, scope: !2304)
!2311 = !DILocation(line: 212, column: 6, scope: !277)
!2312 = !DILocation(line: 213, column: 9, scope: !2304)
!2313 = !DILocation(line: 213, column: 6, scope: !2304)
!2314 = !DILocation(line: 213, column: 3, scope: !2304)
!2315 = !DILocation(line: 215, column: 19, scope: !277)
!2316 = !DILocation(line: 215, column: 25, scope: !277)
!2317 = !DILocation(line: 215, column: 2, scope: !277)
!2318 = !DILocation(line: 216, column: 1, scope: !277)
!2319 = distinct !DISubprogram(name: "regs_get_register", scope: !117, file: !117, line: 331, type: !2320, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!20, !115, !7}
!2322 = !{!2323, !2324}
!2323 = !DILocalVariable(name: "regs", arg: 1, scope: !2319, file: !117, line: 331, type: !115)
!2324 = !DILocalVariable(name: "offset", arg: 2, scope: !2319, file: !117, line: 332, type: !7)
!2325 = !DILocation(line: 331, column: 63, scope: !2319)
!2326 = !DILocation(line: 332, column: 25, scope: !2319)
!2327 = !DILocation(line: 334, column: 6, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2319, file: !117, line: 334, column: 6)
!2329 = !DILocation(line: 334, column: 6, scope: !2319)
!2330 = !DILocation(line: 335, column: 3, scope: !2328)
!2331 = !DILocation(line: 348, column: 43, scope: !2319)
!2332 = !DILocation(line: 348, column: 28, scope: !2319)
!2333 = !DILocation(line: 348, column: 50, scope: !2319)
!2334 = !DILocation(line: 348, column: 48, scope: !2319)
!2335 = !DILocation(line: 348, column: 10, scope: !2319)
!2336 = !DILocation(line: 348, column: 9, scope: !2319)
!2337 = !DILocation(line: 348, column: 2, scope: !2319)
!2338 = !DILocation(line: 349, column: 1, scope: !2319)
!2339 = !DISubprogram(name: "kallsyms_lookup_size_offset", scope: !2340, file: !2340, line: 81, type: !2341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2340 = !DIFile(filename: "./include/linux/kallsyms.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "797c3ad2c64a1b2c16a6a757c7a94236")
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!26, !20, !23, !23}
!2343 = !DISubprogram(name: "__get_insn_slot", scope: !88, file: !88, line: 310, type: !2344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!27, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kprobe_insn_cache", file: !88, line: 299, size: 704, elements: !2348)
!2348 = !{!2349, !2394, !2396, !2400, !2401, !2402, !2403}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2347, file: !88, line: 300, baseType: !2350, size: 256)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !2351, line: 66, size: 256, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!2352 = !{!2353, !2360, !2388, !2393}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2350, file: !2351, line: 67, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !2355, line: 13, baseType: !2356)
!2355 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !22, line: 181, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 179, size: 64, elements: !2358)
!2358 = !{!2359}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !2357, file: !22, line: 180, baseType: !36, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2350, file: !2351, line: 68, baseType: !2361, size: 32, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !2362, line: 23, baseType: !2363)
!2362 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !2362, line: 14, size: 32, elements: !2364)
!2364 = !{!2365}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2363, file: !2362, line: 15, baseType: !2366, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !2367, line: 44, baseType: !2368)
!2367 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !2367, line: 14, size: 32, elements: !2369)
!2369 = !{!2370}
!2370 = !DIDerivedType(tag: DW_TAG_member, scope: !2368, file: !2367, line: 15, baseType: !2371, size: 32)
!2371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2368, file: !2367, line: 15, size: 32, elements: !2372)
!2372 = !{!2373, !2378, !2383}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2371, file: !2367, line: 16, baseType: !2374, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !22, line: 174, baseType: !2375)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 172, size: 32, elements: !2376)
!2376 = !{!2377}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !2375, file: !22, line: 173, baseType: !26, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !2367, line: 24, baseType: !2379, size: 16)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2371, file: !2367, line: 24, size: 16, elements: !2380)
!2380 = !{!2381, !2382}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !2379, file: !2367, line: 25, baseType: !30, size: 8)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2379, file: !2367, line: 26, baseType: !30, size: 8, offset: 8)
!2383 = !DIDerivedType(tag: DW_TAG_member, scope: !2371, file: !2367, line: 28, baseType: !2384, size: 32)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2371, file: !2367, line: 28, size: 32, elements: !2385)
!2385 = !{!2386, !2387}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !2384, file: !2367, line: 29, baseType: !65, size: 16)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2384, file: !2367, line: 30, baseType: !65, size: 16, offset: 16)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !2350, file: !2351, line: 70, baseType: !2389, size: 32, offset: 96)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !2390, line: 15, size: 32, elements: !2391)
!2390 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!2391 = !{!2392}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2389, file: !2390, line: 20, baseType: !2374, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !2350, file: !2351, line: 72, baseType: !98, size: 128, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2347, file: !88, line: 301, baseType: !2395, size: 64, offset: 256)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2347, file: !88, line: 302, baseType: !2397, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{null, !19}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "sym", scope: !2347, file: !88, line: 303, baseType: !106, size: 64, offset: 384)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2347, file: !88, line: 304, baseType: !98, size: 128, offset: 448)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "insn_size", scope: !2347, file: !88, line: 305, baseType: !707, size: 64, offset: 576)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_garbage", scope: !2347, file: !88, line: 306, baseType: !26, size: 32, offset: 640)
!2404 = distinct !DISubprogram(name: "prepare_emulation", scope: !3, file: !3, line: 601, type: !2405, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2407)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!26, !86, !374}
!2407 = !{!2408, !2409, !2410}
!2408 = !DILocalVariable(name: "p", arg: 1, scope: !2404, file: !3, line: 601, type: !86)
!2409 = !DILocalVariable(name: "insn", arg: 2, scope: !2404, file: !3, line: 601, type: !374)
!2410 = !DILocalVariable(name: "opcode", scope: !2404, file: !3, line: 603, type: !388)
!2411 = !DILocation(line: 601, column: 45, scope: !2404)
!2412 = !DILocation(line: 601, column: 61, scope: !2404)
!2413 = !DILocation(line: 603, column: 2, scope: !2404)
!2414 = !DILocation(line: 603, column: 14, scope: !2404)
!2415 = !DILocation(line: 603, column: 23, scope: !2404)
!2416 = !DILocation(line: 603, column: 29, scope: !2404)
!2417 = !DILocation(line: 603, column: 36, scope: !2404)
!2418 = !DILocation(line: 605, column: 10, scope: !2404)
!2419 = !DILocation(line: 605, column: 2, scope: !2404)
!2420 = !DILocation(line: 614, column: 3, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 605, column: 18)
!2422 = !DILocation(line: 614, column: 6, scope: !2421)
!2423 = !DILocation(line: 614, column: 12, scope: !2421)
!2424 = !DILocation(line: 614, column: 23, scope: !2421)
!2425 = !DILocation(line: 615, column: 21, scope: !2421)
!2426 = !DILocation(line: 615, column: 3, scope: !2421)
!2427 = !DILocation(line: 615, column: 6, scope: !2421)
!2428 = !DILocation(line: 615, column: 12, scope: !2421)
!2429 = !DILocation(line: 615, column: 19, scope: !2421)
!2430 = !DILocation(line: 616, column: 3, scope: !2421)
!2431 = !DILocation(line: 621, column: 3, scope: !2421)
!2432 = !DILocation(line: 621, column: 6, scope: !2421)
!2433 = !DILocation(line: 621, column: 12, scope: !2421)
!2434 = !DILocation(line: 621, column: 23, scope: !2421)
!2435 = !DILocation(line: 622, column: 3, scope: !2421)
!2436 = !DILocation(line: 627, column: 3, scope: !2421)
!2437 = !DILocation(line: 630, column: 3, scope: !2421)
!2438 = !DILocation(line: 630, column: 6, scope: !2421)
!2439 = !DILocation(line: 630, column: 12, scope: !2421)
!2440 = !DILocation(line: 630, column: 23, scope: !2421)
!2441 = !DILocation(line: 631, column: 7, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 631, column: 7)
!2443 = !DILocation(line: 631, column: 13, scope: !2442)
!2444 = !DILocation(line: 631, column: 23, scope: !2442)
!2445 = !DILocation(line: 631, column: 30, scope: !2442)
!2446 = !DILocation(line: 631, column: 7, scope: !2421)
!2447 = !DILocation(line: 632, column: 30, scope: !2442)
!2448 = !DILocation(line: 632, column: 36, scope: !2442)
!2449 = !DILocation(line: 632, column: 46, scope: !2442)
!2450 = !DILocation(line: 632, column: 21, scope: !2442)
!2451 = !DILocation(line: 632, column: 4, scope: !2442)
!2452 = !DILocation(line: 632, column: 7, scope: !2442)
!2453 = !DILocation(line: 632, column: 13, scope: !2442)
!2454 = !DILocation(line: 632, column: 19, scope: !2442)
!2455 = !DILocation(line: 634, column: 30, scope: !2442)
!2456 = !DILocation(line: 634, column: 36, scope: !2442)
!2457 = !DILocation(line: 634, column: 46, scope: !2442)
!2458 = !DILocation(line: 634, column: 21, scope: !2442)
!2459 = !DILocation(line: 634, column: 4, scope: !2442)
!2460 = !DILocation(line: 634, column: 7, scope: !2442)
!2461 = !DILocation(line: 634, column: 13, scope: !2442)
!2462 = !DILocation(line: 634, column: 19, scope: !2442)
!2463 = !DILocation(line: 635, column: 3, scope: !2421)
!2464 = !DILocation(line: 638, column: 3, scope: !2421)
!2465 = !DILocation(line: 638, column: 6, scope: !2421)
!2466 = !DILocation(line: 638, column: 12, scope: !2421)
!2467 = !DILocation(line: 638, column: 23, scope: !2421)
!2468 = !DILocation(line: 639, column: 7, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 639, column: 7)
!2470 = !DILocation(line: 639, column: 13, scope: !2469)
!2471 = !DILocation(line: 639, column: 23, scope: !2469)
!2472 = !DILocation(line: 639, column: 30, scope: !2469)
!2473 = !DILocation(line: 639, column: 7, scope: !2421)
!2474 = !DILocation(line: 640, column: 29, scope: !2469)
!2475 = !DILocation(line: 640, column: 35, scope: !2469)
!2476 = !DILocation(line: 640, column: 45, scope: !2469)
!2477 = !DILocation(line: 640, column: 21, scope: !2469)
!2478 = !DILocation(line: 640, column: 4, scope: !2469)
!2479 = !DILocation(line: 640, column: 7, scope: !2469)
!2480 = !DILocation(line: 640, column: 13, scope: !2469)
!2481 = !DILocation(line: 640, column: 19, scope: !2469)
!2482 = !DILocation(line: 641, column: 12, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 641, column: 12)
!2484 = !DILocation(line: 641, column: 18, scope: !2483)
!2485 = !DILocation(line: 641, column: 28, scope: !2483)
!2486 = !DILocation(line: 641, column: 35, scope: !2483)
!2487 = !DILocation(line: 641, column: 12, scope: !2469)
!2488 = !DILocation(line: 642, column: 30, scope: !2483)
!2489 = !DILocation(line: 642, column: 36, scope: !2483)
!2490 = !DILocation(line: 642, column: 46, scope: !2483)
!2491 = !DILocation(line: 642, column: 21, scope: !2483)
!2492 = !DILocation(line: 642, column: 4, scope: !2483)
!2493 = !DILocation(line: 642, column: 7, scope: !2483)
!2494 = !DILocation(line: 642, column: 13, scope: !2483)
!2495 = !DILocation(line: 642, column: 19, scope: !2483)
!2496 = !DILocation(line: 644, column: 30, scope: !2483)
!2497 = !DILocation(line: 644, column: 36, scope: !2483)
!2498 = !DILocation(line: 644, column: 46, scope: !2483)
!2499 = !DILocation(line: 644, column: 21, scope: !2483)
!2500 = !DILocation(line: 644, column: 4, scope: !2483)
!2501 = !DILocation(line: 644, column: 7, scope: !2483)
!2502 = !DILocation(line: 644, column: 13, scope: !2483)
!2503 = !DILocation(line: 644, column: 19, scope: !2483)
!2504 = !DILocation(line: 645, column: 3, scope: !2421)
!2505 = !DILocation(line: 648, column: 3, scope: !2421)
!2506 = !DILocation(line: 648, column: 6, scope: !2421)
!2507 = !DILocation(line: 648, column: 12, scope: !2421)
!2508 = !DILocation(line: 648, column: 23, scope: !2421)
!2509 = !DILocation(line: 649, column: 23, scope: !2421)
!2510 = !DILocation(line: 649, column: 30, scope: !2421)
!2511 = !DILocation(line: 649, column: 3, scope: !2421)
!2512 = !DILocation(line: 649, column: 6, scope: !2421)
!2513 = !DILocation(line: 649, column: 12, scope: !2421)
!2514 = !DILocation(line: 649, column: 16, scope: !2421)
!2515 = !DILocation(line: 649, column: 21, scope: !2421)
!2516 = !DILocation(line: 650, column: 20, scope: !2421)
!2517 = !DILocation(line: 650, column: 26, scope: !2421)
!2518 = !DILocation(line: 650, column: 36, scope: !2421)
!2519 = !DILocation(line: 650, column: 3, scope: !2421)
!2520 = !DILocation(line: 650, column: 6, scope: !2421)
!2521 = !DILocation(line: 650, column: 12, scope: !2421)
!2522 = !DILocation(line: 650, column: 18, scope: !2421)
!2523 = !DILocation(line: 651, column: 3, scope: !2421)
!2524 = !DILocation(line: 653, column: 12, scope: !2421)
!2525 = !DILocation(line: 653, column: 18, scope: !2421)
!2526 = !DILocation(line: 653, column: 25, scope: !2421)
!2527 = !DILocation(line: 653, column: 10, scope: !2421)
!2528 = !DILocation(line: 654, column: 8, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 654, column: 7)
!2530 = !DILocation(line: 654, column: 15, scope: !2529)
!2531 = !DILocation(line: 654, column: 23, scope: !2529)
!2532 = !DILocation(line: 654, column: 7, scope: !2421)
!2533 = !DILocation(line: 656, column: 4, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 654, column: 32)
!2535 = !DILocation(line: 656, column: 7, scope: !2534)
!2536 = !DILocation(line: 656, column: 13, scope: !2534)
!2537 = !DILocation(line: 656, column: 24, scope: !2534)
!2538 = !DILocation(line: 657, column: 24, scope: !2534)
!2539 = !DILocation(line: 657, column: 31, scope: !2534)
!2540 = !DILocation(line: 657, column: 4, scope: !2534)
!2541 = !DILocation(line: 657, column: 7, scope: !2534)
!2542 = !DILocation(line: 657, column: 13, scope: !2534)
!2543 = !DILocation(line: 657, column: 17, scope: !2534)
!2544 = !DILocation(line: 657, column: 22, scope: !2534)
!2545 = !DILocation(line: 658, column: 8, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 658, column: 8)
!2547 = !DILocation(line: 658, column: 14, scope: !2546)
!2548 = !DILocation(line: 658, column: 24, scope: !2546)
!2549 = !DILocation(line: 658, column: 31, scope: !2546)
!2550 = !DILocation(line: 658, column: 8, scope: !2534)
!2551 = !DILocation(line: 659, column: 31, scope: !2546)
!2552 = !DILocation(line: 659, column: 37, scope: !2546)
!2553 = !DILocation(line: 659, column: 47, scope: !2546)
!2554 = !DILocation(line: 659, column: 22, scope: !2546)
!2555 = !DILocation(line: 659, column: 5, scope: !2546)
!2556 = !DILocation(line: 659, column: 8, scope: !2546)
!2557 = !DILocation(line: 659, column: 14, scope: !2546)
!2558 = !DILocation(line: 659, column: 20, scope: !2546)
!2559 = !DILocation(line: 661, column: 31, scope: !2546)
!2560 = !DILocation(line: 661, column: 37, scope: !2546)
!2561 = !DILocation(line: 661, column: 47, scope: !2546)
!2562 = !DILocation(line: 661, column: 22, scope: !2546)
!2563 = !DILocation(line: 661, column: 5, scope: !2546)
!2564 = !DILocation(line: 661, column: 8, scope: !2546)
!2565 = !DILocation(line: 661, column: 14, scope: !2546)
!2566 = !DILocation(line: 661, column: 20, scope: !2546)
!2567 = !DILocation(line: 662, column: 3, scope: !2534)
!2568 = !DILocation(line: 662, column: 14, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 662, column: 14)
!2570 = !DILocation(line: 662, column: 21, scope: !2569)
!2571 = !DILocation(line: 662, column: 29, scope: !2569)
!2572 = !DILocation(line: 663, column: 7, scope: !2569)
!2573 = !DILocation(line: 663, column: 43, scope: !2569)
!2574 = !DILocation(line: 663, column: 48, scope: !2569)
!2575 = !DILocation(line: 664, column: 7, scope: !2569)
!2576 = !DILocation(line: 664, column: 43, scope: !2569)
!2577 = !DILocation(line: 662, column: 14, scope: !2529)
!2578 = !DILocation(line: 666, column: 4, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 664, column: 49)
!2580 = !DILocation(line: 668, column: 3, scope: !2421)
!2581 = !DILocation(line: 673, column: 3, scope: !2421)
!2582 = !DILocation(line: 673, column: 6, scope: !2421)
!2583 = !DILocation(line: 673, column: 12, scope: !2421)
!2584 = !DILocation(line: 673, column: 23, scope: !2421)
!2585 = !DILocation(line: 674, column: 24, scope: !2421)
!2586 = !DILocation(line: 674, column: 31, scope: !2421)
!2587 = !DILocation(line: 674, column: 3, scope: !2421)
!2588 = !DILocation(line: 674, column: 6, scope: !2421)
!2589 = !DILocation(line: 674, column: 12, scope: !2421)
!2590 = !DILocation(line: 674, column: 17, scope: !2421)
!2591 = !DILocation(line: 674, column: 22, scope: !2421)
!2592 = !DILocation(line: 675, column: 25, scope: !2421)
!2593 = !DILocation(line: 675, column: 31, scope: !2421)
!2594 = !DILocation(line: 675, column: 42, scope: !2421)
!2595 = !DILocation(line: 675, column: 3, scope: !2421)
!2596 = !DILocation(line: 675, column: 6, scope: !2421)
!2597 = !DILocation(line: 675, column: 12, scope: !2421)
!2598 = !DILocation(line: 675, column: 17, scope: !2421)
!2599 = !DILocation(line: 675, column: 23, scope: !2421)
!2600 = !DILocation(line: 676, column: 28, scope: !2421)
!2601 = !DILocation(line: 676, column: 34, scope: !2421)
!2602 = !DILocation(line: 676, column: 44, scope: !2421)
!2603 = !DILocation(line: 676, column: 20, scope: !2421)
!2604 = !DILocation(line: 676, column: 3, scope: !2421)
!2605 = !DILocation(line: 676, column: 6, scope: !2421)
!2606 = !DILocation(line: 676, column: 12, scope: !2421)
!2607 = !DILocation(line: 676, column: 18, scope: !2421)
!2608 = !DILocation(line: 677, column: 3, scope: !2421)
!2609 = !DILocation(line: 683, column: 12, scope: !2421)
!2610 = !DILocation(line: 683, column: 18, scope: !2421)
!2611 = !DILocation(line: 683, column: 24, scope: !2421)
!2612 = !DILocation(line: 683, column: 10, scope: !2421)
!2613 = !DILocation(line: 684, column: 11, scope: !2421)
!2614 = !DILocation(line: 684, column: 3, scope: !2421)
!2615 = !DILocation(line: 686, column: 4, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 684, column: 34)
!2617 = !DILocation(line: 686, column: 7, scope: !2616)
!2618 = !DILocation(line: 686, column: 13, scope: !2616)
!2619 = !DILocation(line: 686, column: 24, scope: !2616)
!2620 = !DILocation(line: 687, column: 4, scope: !2616)
!2621 = !DILocation(line: 689, column: 4, scope: !2616)
!2622 = !DILocation(line: 689, column: 7, scope: !2616)
!2623 = !DILocation(line: 689, column: 13, scope: !2616)
!2624 = !DILocation(line: 689, column: 24, scope: !2616)
!2625 = !DILocation(line: 690, column: 4, scope: !2616)
!2626 = !DILocation(line: 693, column: 4, scope: !2616)
!2627 = !DILocation(line: 696, column: 8, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 696, column: 7)
!2629 = !DILocation(line: 696, column: 11, scope: !2628)
!2630 = !DILocation(line: 696, column: 17, scope: !2628)
!2631 = !DILocation(line: 696, column: 7, scope: !2421)
!2632 = !DILocation(line: 697, column: 4, scope: !2628)
!2633 = !DILocation(line: 699, column: 7, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 699, column: 7)
!2635 = !DILocation(line: 699, column: 13, scope: !2634)
!2636 = !DILocation(line: 699, column: 24, scope: !2634)
!2637 = !DILocation(line: 699, column: 7, scope: !2421)
!2638 = !DILocation(line: 700, column: 4, scope: !2634)
!2639 = !DILocation(line: 701, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 701, column: 7)
!2641 = !DILocation(line: 701, column: 29, scope: !2640)
!2642 = !DILocation(line: 701, column: 7, scope: !2421)
!2643 = !DILocation(line: 702, column: 4, scope: !2640)
!2644 = !DILocation(line: 704, column: 27, scope: !2421)
!2645 = !DILocation(line: 704, column: 3, scope: !2421)
!2646 = !DILocation(line: 704, column: 6, scope: !2421)
!2647 = !DILocation(line: 704, column: 12, scope: !2421)
!2648 = !DILocation(line: 704, column: 21, scope: !2421)
!2649 = !DILocation(line: 704, column: 25, scope: !2421)
!2650 = !DILocation(line: 706, column: 7, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 706, column: 7)
!2652 = !DILocation(line: 706, column: 7, scope: !2421)
!2653 = !DILocation(line: 707, column: 4, scope: !2651)
!2654 = !DILocation(line: 707, column: 7, scope: !2651)
!2655 = !DILocation(line: 707, column: 13, scope: !2651)
!2656 = !DILocation(line: 707, column: 22, scope: !2651)
!2657 = !DILocation(line: 707, column: 26, scope: !2651)
!2658 = !DILocation(line: 709, column: 3, scope: !2421)
!2659 = !DILocation(line: 711, column: 3, scope: !2421)
!2660 = !DILocation(line: 713, column: 18, scope: !2404)
!2661 = !DILocation(line: 713, column: 24, scope: !2404)
!2662 = !DILocation(line: 713, column: 2, scope: !2404)
!2663 = !DILocation(line: 713, column: 5, scope: !2404)
!2664 = !DILocation(line: 713, column: 11, scope: !2404)
!2665 = !DILocation(line: 713, column: 16, scope: !2404)
!2666 = !DILocation(line: 715, column: 2, scope: !2404)
!2667 = !DILocation(line: 716, column: 1, scope: !2404)
!2668 = distinct !DISubprogram(name: "prepare_singlestep", scope: !3, file: !3, line: 427, type: !2669, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!26, !27, !86, !374}
!2671 = !{!2672, !2673, !2674, !2675}
!2672 = !DILocalVariable(name: "buf", arg: 1, scope: !2668, file: !3, line: 427, type: !27)
!2673 = !DILocalVariable(name: "p", arg: 2, scope: !2668, file: !3, line: 427, type: !86)
!2674 = !DILocalVariable(name: "insn", arg: 3, scope: !2668, file: !3, line: 428, type: !374)
!2675 = !DILocalVariable(name: "len", scope: !2668, file: !3, line: 430, type: !26)
!2676 = !DILocation(line: 427, column: 48, scope: !2668)
!2677 = !DILocation(line: 427, column: 68, scope: !2668)
!2678 = !DILocation(line: 428, column: 23, scope: !2668)
!2679 = !DILocation(line: 430, column: 2, scope: !2668)
!2680 = !DILocation(line: 430, column: 6, scope: !2668)
!2681 = !DILocation(line: 430, column: 12, scope: !2668)
!2682 = !DILocation(line: 430, column: 18, scope: !2668)
!2683 = !DILocation(line: 445, column: 23, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 445, column: 7)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 443, column: 9)
!2686 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 432, column: 6)
!2687 = !DILocation(line: 445, column: 21, scope: !2684)
!2688 = !DILocation(line: 445, column: 27, scope: !2684)
!2689 = !DILocation(line: 445, column: 7, scope: !2685)
!2690 = !DILocation(line: 446, column: 4, scope: !2684)
!2691 = !DILocation(line: 448, column: 3, scope: !2685)
!2692 = !DILocation(line: 448, column: 7, scope: !2685)
!2693 = !DILocation(line: 448, column: 12, scope: !2685)
!2694 = !DILocation(line: 449, column: 7, scope: !2685)
!2695 = !DILocation(line: 452, column: 9, scope: !2668)
!2696 = !DILocation(line: 452, column: 2, scope: !2668)
!2697 = !DILocation(line: 453, column: 1, scope: !2668)
!2698 = !DISubprogram(name: "__free_insn_slot", scope: !88, file: !88, line: 311, type: !2699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{null, !2346, !27, !26}
!2701 = !DISubprogram(name: "setup_detour_execution", scope: !600, file: !600, line: 96, type: !2702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!26, !86, !115, !26}
!2704 = distinct !DISubprogram(name: "save_previous_kprobe", scope: !3, file: !3, line: 807, type: !1967, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2705)
!2705 = !{!2706}
!2706 = !DILocalVariable(name: "kcb", arg: 1, scope: !2704, file: !3, line: 807, type: !76)
!2707 = !DILocation(line: 807, column: 44, scope: !2704)
!2708 = !DILocation(line: 809, column: 24, scope: !2704)
!2709 = !DILocation(line: 809, column: 2, scope: !2704)
!2710 = !DILocation(line: 809, column: 7, scope: !2704)
!2711 = !DILocation(line: 809, column: 19, scope: !2704)
!2712 = !DILocation(line: 809, column: 22, scope: !2704)
!2713 = !DILocation(line: 810, column: 28, scope: !2704)
!2714 = !DILocation(line: 810, column: 33, scope: !2704)
!2715 = !DILocation(line: 810, column: 2, scope: !2704)
!2716 = !DILocation(line: 810, column: 7, scope: !2704)
!2717 = !DILocation(line: 810, column: 19, scope: !2704)
!2718 = !DILocation(line: 810, column: 26, scope: !2704)
!2719 = !DILocation(line: 811, column: 31, scope: !2704)
!2720 = !DILocation(line: 811, column: 36, scope: !2704)
!2721 = !DILocation(line: 811, column: 2, scope: !2704)
!2722 = !DILocation(line: 811, column: 7, scope: !2704)
!2723 = !DILocation(line: 811, column: 19, scope: !2704)
!2724 = !DILocation(line: 811, column: 29, scope: !2704)
!2725 = !DILocation(line: 812, column: 33, scope: !2704)
!2726 = !DILocation(line: 812, column: 38, scope: !2704)
!2727 = !DILocation(line: 812, column: 2, scope: !2704)
!2728 = !DILocation(line: 812, column: 7, scope: !2704)
!2729 = !DILocation(line: 812, column: 19, scope: !2704)
!2730 = !DILocation(line: 812, column: 31, scope: !2704)
!2731 = !DILocation(line: 813, column: 1, scope: !2704)
!2732 = !DISubprogram(name: "kprobes_inc_nmissed_count", scope: !88, file: !88, line: 290, type: !1434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2733 = !DISubprogram(name: "dump_kprobe", scope: !88, file: !88, line: 440, type: !1434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2734 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !2735, file: !2735, line: 313, type: !2736, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2738)
!2735 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!2736 = !DISubroutineType(types: !2737)
!2737 = !{null, !106}
!2738 = !{!2739}
!2739 = !DILocalVariable(name: "op", arg: 1, scope: !2734, file: !2735, line: 313, type: !106)
!2740 = !DILocation(line: 313, column: 66, scope: !2734)
!2741 = !DILocation(line: 313, column: 72, scope: !2734)
