; ModuleID = 'arch/x86/mm/extable.c'
source_filename = "arch/x86/mm/extable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon.1, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.2, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i64, [88 x i8] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.6 }
%struct.atomic_t = type { i32 }
%union.anon.6 = type { i64 }
%struct.exception_table_entry = type { i32, i32, i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct.insn = type { %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %union.anon.4, %union.anon.5, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.insn_field = type { %union.anon.3, i8, i8 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { %struct.insn_field }
%union.anon.5 = type { %struct.insn_field }

@.str = private unnamed_addr constant [22 x i8] c"arch/x86/mm/extable.c\00", align 1, !dbg !0
@early_recursion_flag = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"PANIC: early exception 0x%02x IP %lx:%lx error %lx cr2 0x%lx\0A\00", align 1, !dbg !7
@ex_handler_uaccess.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [64 x i8] c"General protection fault in user access. Non-canonical address?\00", align 1, !dbg !119
@ex_handler_copy.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !124
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@ex_handler_fprestore.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !145
@.str.3 = private unnamed_addr constant [61 x i8] c"Bad FPU state detected at %pB, reinitializing FPU registers.\00", align 1, !dbg !165
@ex_handler_msr.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !170
@.str.4 = private unnamed_addr constant [93 x i8] c"\014unchecked MSR access error: WRMSR to 0x%x (tried to write 0x%08x%08x) at rIP: 0x%lx (%pS)\0A\00", align 1, !dbg !189
@ex_handler_msr.__already_done.5 = internal global i8 0, section ".data..once", align 1, !dbg !194
@.str.6 = private unnamed_addr constant [67 x i8] c"\014unchecked MSR access error: RDMSR from 0x%x at rIP: 0x%lx (%pS)\0A\00", align 1, !dbg !196
@pt_regs_nr.__dummy = internal global i64 0, align 8, !dbg !201
@mds_idle_clear = external dso_local global %struct.static_key_false, align 8
@mds_clear_cpu_buffers.ds = internal constant i16 24, align 2, !dbg !216

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ex_get_fixup_type(i64 noundef %ip) #0 align 16 !dbg !249 {
entry:
  %ip.addr = alloca i64, align 8
  %e = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !253, metadata !DIExpression()), !dbg !255
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #12, !dbg !256
  call void @llvm.dbg.declare(metadata ptr %e, metadata !254, metadata !DIExpression()), !dbg !257
  %0 = load i64, ptr %ip.addr, align 8, !dbg !258
  %call = call ptr @search_exception_tables(i64 noundef %0) #13, !dbg !259
  store ptr %call, ptr %e, align 8, !dbg !257
  %1 = load ptr, ptr %e, align 8, !dbg !260
  %tobool = icmp ne ptr %1, null, !dbg !260
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !260

cond.true:                                        ; preds = %entry
  br label %do.body, !dbg !261

do.body:                                          ; preds = %cond.true
  br label %do.cond, !dbg !264

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !264

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !261

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !266

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !266

do.end3:                                          ; preds = %do.cond2
  br label %do.body4, !dbg !261

do.body4:                                         ; preds = %do.end3
  br label %do.cond5, !dbg !268

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !268

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !261

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !270

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !270

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !261

do.body10:                                        ; preds = %do.end9
  br label %do.cond11, !dbg !272

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !272

do.end12:                                         ; preds = %do.cond11
  %2 = load ptr, ptr %e, align 8, !dbg !274
  %data = getelementptr inbounds %struct.exception_table_entry, ptr %2, i32 0, i32 2, !dbg !274
  %3 = load i32, ptr %data, align 4, !dbg !274
  %and = and i32 %3, 255, !dbg !274
  %shr = ashr i32 %and, 0, !dbg !274
  store i32 %shr, ptr %tmp, align 4, !dbg !274
  %4 = load i32, ptr %tmp, align 4, !dbg !274
  br label %cond.end, !dbg !260

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !260

cond.end:                                         ; preds = %cond.false, %do.end12
  %cond = phi i32 [ %4, %do.end12 ], [ 0, %cond.false ], !dbg !260
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #12, !dbg !275
  ret i32 %cond, !dbg !276
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !277 dso_local ptr @search_exception_tables(i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fixup_exception(ptr noundef %regs, i32 noundef %trapnr, i64 noundef %error_code, i64 noundef %fault_addr) #0 align 16 !dbg !281 {
entry:
  %retval = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %trapnr.addr = alloca i32, align 4
  %error_code.addr = alloca i64, align 8
  %fault_addr.addr = alloca i64, align 8
  %e = alloca ptr, align 8
  %type = alloca i32, align 4
  %reg = alloca i32, align 4
  %imm = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !285, metadata !DIExpression()), !dbg !293
  store i32 %trapnr, ptr %trapnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trapnr.addr, metadata !286, metadata !DIExpression()), !dbg !294
  store i64 %error_code, ptr %error_code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error_code.addr, metadata !287, metadata !DIExpression()), !dbg !295
  store i64 %fault_addr, ptr %fault_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fault_addr.addr, metadata !288, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #12, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %e, metadata !289, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #12, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %type, metadata !290, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #12, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !291, metadata !DIExpression()), !dbg !301
  call void @llvm.lifetime.start.p0(i64 4, ptr %imm) #12, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %imm, metadata !292, metadata !DIExpression()), !dbg !302
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !303
  %ip = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 16, !dbg !304
  %1 = load i64, ptr %ip, align 8, !dbg !304
  %call = call ptr @search_exception_tables(i64 noundef %1) #13, !dbg !305
  store ptr %call, ptr %e, align 8, !dbg !306
  %2 = load ptr, ptr %e, align 8, !dbg !307
  %tobool = icmp ne ptr %2, null, !dbg !307
  br i1 %tobool, label %if.end, label %if.then, !dbg !309

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !310

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !311

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !314

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !314

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !311

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !316

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !316

do.end3:                                          ; preds = %do.cond2
  br label %do.body4, !dbg !311

do.body4:                                         ; preds = %do.end3
  br label %do.cond5, !dbg !318

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !318

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !311

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !320

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !320

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !311

do.body10:                                        ; preds = %do.end9
  br label %do.cond11, !dbg !322

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !322

do.end12:                                         ; preds = %do.cond11
  %3 = load ptr, ptr %e, align 8, !dbg !324
  %data = getelementptr inbounds %struct.exception_table_entry, ptr %3, i32 0, i32 2, !dbg !324
  %4 = load i32, ptr %data, align 4, !dbg !324
  %and = and i32 %4, 255, !dbg !324
  %shr = ashr i32 %and, 0, !dbg !324
  store i32 %shr, ptr %tmp, align 4, !dbg !324
  %5 = load i32, ptr %tmp, align 4, !dbg !324
  store i32 %5, ptr %type, align 4, !dbg !325
  br label %do.body13, !dbg !326

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !329

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !329

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !326

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !331

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !331

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !326

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !333

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !333

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !326

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !335

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !335

do.end24:                                         ; preds = %do.cond23
  br label %do.body25, !dbg !326

do.body25:                                        ; preds = %do.end24
  br label %do.cond26, !dbg !337

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !337

do.end27:                                         ; preds = %do.cond26
  %6 = load ptr, ptr %e, align 8, !dbg !339
  %data29 = getelementptr inbounds %struct.exception_table_entry, ptr %6, i32 0, i32 2, !dbg !339
  %7 = load i32, ptr %data29, align 4, !dbg !339
  %and30 = and i32 %7, 3840, !dbg !339
  %shr31 = ashr i32 %and30, 8, !dbg !339
  store i32 %shr31, ptr %tmp28, align 4, !dbg !339
  %8 = load i32, ptr %tmp28, align 4, !dbg !339
  store i32 %8, ptr %reg, align 4, !dbg !340
  br label %do.body32, !dbg !341

do.body32:                                        ; preds = %do.end27
  br label %do.cond33, !dbg !344

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !344

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !341

do.body35:                                        ; preds = %do.end34
  br label %do.cond36, !dbg !346

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !346

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !341

do.body38:                                        ; preds = %do.end37
  br label %do.cond39, !dbg !348

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !348

do.end40:                                         ; preds = %do.cond39
  br label %do.body41, !dbg !341

do.body41:                                        ; preds = %do.end40
  br label %do.cond42, !dbg !350

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !350

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !341

do.body44:                                        ; preds = %do.end43
  br label %do.cond45, !dbg !352

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !352

do.end46:                                         ; preds = %do.cond45
  %9 = load ptr, ptr %e, align 8, !dbg !354
  %data48 = getelementptr inbounds %struct.exception_table_entry, ptr %9, i32 0, i32 2, !dbg !354
  %10 = load i32, ptr %data48, align 4, !dbg !354
  %and49 = and i32 %10, -65536, !dbg !354
  %shr50 = ashr i32 %and49, 16, !dbg !354
  store i32 %shr50, ptr %tmp47, align 4, !dbg !354
  %11 = load i32, ptr %tmp47, align 4, !dbg !354
  store i32 %11, ptr %imm, align 4, !dbg !355
  %12 = load i32, ptr %type, align 4, !dbg !356
  switch i32 %12, label %sw.epilog [
    i32 1, label %sw.bb
    i32 14, label %sw.bb
    i32 2, label %sw.bb52
    i32 15, label %sw.bb52
    i32 3, label %sw.bb55
    i32 4, label %sw.bb58
    i32 5, label %sw.bb61
    i32 6, label %sw.bb64
    i32 7, label %sw.bb67
    i32 8, label %sw.bb70
    i32 9, label %sw.bb73
    i32 10, label %sw.bb76
    i32 11, label %sw.bb79
    i32 12, label %sw.bb82
    i32 13, label %sw.bb83
    i32 16, label %sw.bb84
    i32 17, label %sw.bb85
    i32 18, label %sw.bb88
    i32 19, label %sw.bb91
    i32 20, label %sw.bb94
  ], !dbg !357

sw.bb:                                            ; preds = %do.end46, %do.end46
  %13 = load ptr, ptr %e, align 8, !dbg !358
  %14 = load ptr, ptr %regs.addr, align 8, !dbg !360
  %call51 = call zeroext i1 @ex_handler_default(ptr noundef %13, ptr noundef %14) #13, !dbg !361
  %conv = zext i1 %call51 to i32, !dbg !361
  store i32 %conv, ptr %retval, align 4, !dbg !362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !362

sw.bb52:                                          ; preds = %do.end46, %do.end46
  %15 = load ptr, ptr %e, align 8, !dbg !363
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !364
  %17 = load i32, ptr %trapnr.addr, align 4, !dbg !365
  %call53 = call zeroext i1 @ex_handler_fault(ptr noundef %15, ptr noundef %16, i32 noundef %17) #13, !dbg !366
  %conv54 = zext i1 %call53 to i32, !dbg !366
  store i32 %conv54, ptr %retval, align 4, !dbg !367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !367

sw.bb55:                                          ; preds = %do.end46
  %18 = load ptr, ptr %e, align 8, !dbg !368
  %19 = load ptr, ptr %regs.addr, align 8, !dbg !369
  %20 = load i32, ptr %trapnr.addr, align 4, !dbg !370
  %21 = load i64, ptr %fault_addr.addr, align 8, !dbg !371
  %call56 = call zeroext i1 @ex_handler_uaccess(ptr noundef %18, ptr noundef %19, i32 noundef %20, i64 noundef %21) #13, !dbg !372
  %conv57 = zext i1 %call56 to i32, !dbg !372
  store i32 %conv57, ptr %retval, align 4, !dbg !373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !373

sw.bb58:                                          ; preds = %do.end46
  %22 = load ptr, ptr %e, align 8, !dbg !374
  %23 = load ptr, ptr %regs.addr, align 8, !dbg !375
  %24 = load i32, ptr %trapnr.addr, align 4, !dbg !376
  %call59 = call zeroext i1 @ex_handler_copy(ptr noundef %22, ptr noundef %23, i32 noundef %24) #13, !dbg !377
  %conv60 = zext i1 %call59 to i32, !dbg !377
  store i32 %conv60, ptr %retval, align 4, !dbg !378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !378

sw.bb61:                                          ; preds = %do.end46
  %25 = load ptr, ptr %e, align 8, !dbg !379
  %26 = load ptr, ptr %regs.addr, align 8, !dbg !380
  %call62 = call zeroext i1 @ex_handler_clear_fs(ptr noundef %25, ptr noundef %26) #13, !dbg !381
  %conv63 = zext i1 %call62 to i32, !dbg !381
  store i32 %conv63, ptr %retval, align 4, !dbg !382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !382

sw.bb64:                                          ; preds = %do.end46
  %27 = load ptr, ptr %e, align 8, !dbg !383
  %28 = load ptr, ptr %regs.addr, align 8, !dbg !384
  %call65 = call zeroext i1 @ex_handler_fprestore(ptr noundef %27, ptr noundef %28) #13, !dbg !385
  %conv66 = zext i1 %call65 to i32, !dbg !385
  store i32 %conv66, ptr %retval, align 4, !dbg !386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !386

sw.bb67:                                          ; preds = %do.end46
  %29 = load ptr, ptr %e, align 8, !dbg !387
  %30 = load ptr, ptr %regs.addr, align 8, !dbg !388
  %call68 = call zeroext i1 @ex_handler_bpf(ptr noundef %29, ptr noundef %30) #13, !dbg !389
  %conv69 = zext i1 %call68 to i32, !dbg !389
  store i32 %conv69, ptr %retval, align 4, !dbg !390
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !390

sw.bb70:                                          ; preds = %do.end46
  %31 = load ptr, ptr %e, align 8, !dbg !391
  %32 = load ptr, ptr %regs.addr, align 8, !dbg !392
  %33 = load i32, ptr %reg, align 4, !dbg !393
  %call71 = call zeroext i1 @ex_handler_msr(ptr noundef %31, ptr noundef %32, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %33) #13, !dbg !394
  %conv72 = zext i1 %call71 to i32, !dbg !394
  store i32 %conv72, ptr %retval, align 4, !dbg !395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !395

sw.bb73:                                          ; preds = %do.end46
  %34 = load ptr, ptr %e, align 8, !dbg !396
  %35 = load ptr, ptr %regs.addr, align 8, !dbg !397
  %36 = load i32, ptr %reg, align 4, !dbg !398
  %call74 = call zeroext i1 @ex_handler_msr(ptr noundef %34, ptr noundef %35, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %36) #13, !dbg !399
  %conv75 = zext i1 %call74 to i32, !dbg !399
  store i32 %conv75, ptr %retval, align 4, !dbg !400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !400

sw.bb76:                                          ; preds = %do.end46
  %37 = load ptr, ptr %e, align 8, !dbg !401
  %38 = load ptr, ptr %regs.addr, align 8, !dbg !402
  %39 = load i32, ptr %reg, align 4, !dbg !403
  %call77 = call zeroext i1 @ex_handler_msr(ptr noundef %37, ptr noundef %38, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %39) #13, !dbg !404
  %conv78 = zext i1 %call77 to i32, !dbg !404
  store i32 %conv78, ptr %retval, align 4, !dbg !405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !405

sw.bb79:                                          ; preds = %do.end46
  %40 = load ptr, ptr %e, align 8, !dbg !406
  %41 = load ptr, ptr %regs.addr, align 8, !dbg !407
  %42 = load i32, ptr %reg, align 4, !dbg !408
  %call80 = call zeroext i1 @ex_handler_msr(ptr noundef %40, ptr noundef %41, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %42) #13, !dbg !409
  %conv81 = zext i1 %call80 to i32, !dbg !409
  store i32 %conv81, ptr %retval, align 4, !dbg !410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !410

sw.bb82:                                          ; preds = %do.end46
  %43 = load ptr, ptr %regs.addr, align 8, !dbg !411
  call void @ex_handler_msr_mce(ptr noundef %43, i1 noundef zeroext true) #14, !dbg !412
  unreachable, !dbg !412

sw.bb83:                                          ; preds = %do.end46
  %44 = load ptr, ptr %regs.addr, align 8, !dbg !413
  call void @ex_handler_msr_mce(ptr noundef %44, i1 noundef zeroext false) #14, !dbg !414
  unreachable, !dbg !414

sw.bb84:                                          ; preds = %do.end46
  %45 = load ptr, ptr %regs.addr, align 8, !dbg !415
  %sp = getelementptr inbounds %struct.pt_regs, ptr %45, i32 0, i32 19, !dbg !416
  %46 = load i64, ptr %sp, align 8, !dbg !417
  %add = add i64 %46, 8, !dbg !417
  store i64 %add, ptr %sp, align 8, !dbg !417
  br label %sw.bb85, !dbg !415

sw.bb85:                                          ; preds = %do.end46, %sw.bb84
  %47 = load ptr, ptr %e, align 8, !dbg !418
  %48 = load ptr, ptr %regs.addr, align 8, !dbg !419
  %49 = load i32, ptr %reg, align 4, !dbg !420
  %50 = load i32, ptr %imm, align 4, !dbg !421
  %call86 = call zeroext i1 @ex_handler_imm_reg(ptr noundef %47, ptr noundef %48, i32 noundef %49, i32 noundef %50) #13, !dbg !422
  %conv87 = zext i1 %call86 to i32, !dbg !422
  store i32 %conv87, ptr %retval, align 4, !dbg !423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !423

sw.bb88:                                          ; preds = %do.end46
  %51 = load ptr, ptr %e, align 8, !dbg !424
  %52 = load ptr, ptr %regs.addr, align 8, !dbg !425
  %53 = load i32, ptr %trapnr.addr, align 4, !dbg !426
  %call89 = call zeroext i1 @ex_handler_sgx(ptr noundef %51, ptr noundef %52, i32 noundef %53) #13, !dbg !427
  %conv90 = zext i1 %call89 to i32, !dbg !427
  store i32 %conv90, ptr %retval, align 4, !dbg !428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !428

sw.bb91:                                          ; preds = %do.end46
  %54 = load ptr, ptr %e, align 8, !dbg !429
  %55 = load ptr, ptr %regs.addr, align 8, !dbg !430
  %56 = load i32, ptr %trapnr.addr, align 4, !dbg !431
  %57 = load i64, ptr %fault_addr.addr, align 8, !dbg !432
  %58 = load i32, ptr %reg, align 4, !dbg !433
  %59 = load i32, ptr %imm, align 4, !dbg !434
  %call92 = call zeroext i1 @ex_handler_ucopy_len(ptr noundef %54, ptr noundef %55, i32 noundef %56, i64 noundef %57, i32 noundef %58, i32 noundef %59) #13, !dbg !435
  %conv93 = zext i1 %call92 to i32, !dbg !435
  store i32 %conv93, ptr %retval, align 4, !dbg !436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !436

sw.bb94:                                          ; preds = %do.end46
  %60 = load ptr, ptr %e, align 8, !dbg !437
  %61 = load ptr, ptr %regs.addr, align 8, !dbg !438
  %62 = load i64, ptr %fault_addr.addr, align 8, !dbg !439
  %call95 = call zeroext i1 @ex_handler_zeropad(ptr noundef %60, ptr noundef %61, i64 noundef %62) #13, !dbg !440
  %conv96 = zext i1 %call95 to i32, !dbg !440
  store i32 %conv96, ptr %retval, align 4, !dbg !441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !441

sw.epilog:                                        ; preds = %do.end46
  br label %do.body97, !dbg !442

do.body97:                                        ; preds = %sw.epilog
  br label %do.body98, !dbg !443

do.body98:                                        ; preds = %do.body97
  br label %do.cond99, !dbg !445

do.cond99:                                        ; preds = %do.body98
  br label %do.end100, !dbg !445

do.end100:                                        ; preds = %do.cond99
  br label %do.body101, !dbg !443

do.body101:                                       ; preds = %do.end100
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 304, i32 0, i64 12) #12, !dbg !447, !srcloc !449
  br label %do.cond102, !dbg !447

do.cond102:                                       ; preds = %do.body101
  br label %do.end103, !dbg !447

do.end103:                                        ; preds = %do.cond102
  unreachable, !dbg !443

do.cond104:                                       ; No predecessors!
  br label %do.end105, !dbg !443

do.end105:                                        ; preds = %do.cond104
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !450
  br label %cleanup, !dbg !450

cleanup:                                          ; preds = %do.end105, %sw.bb94, %sw.bb91, %sw.bb88, %sw.bb85, %sw.bb79, %sw.bb76, %sw.bb73, %sw.bb70, %sw.bb67, %sw.bb64, %sw.bb61, %sw.bb58, %sw.bb55, %sw.bb52, %sw.bb, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %imm) #12, !dbg !450
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #12, !dbg !450
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #12, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #12, !dbg !450
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %63 = load i32, ptr %retval, align 4, !dbg !450
  ret i32 %63, !dbg !450

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ex_handler_default(ptr noundef %e, ptr noundef %regs) #0 align 16 !dbg !451 {
entry:
  %e.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !453, metadata !DIExpression()), !dbg !455
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !454, metadata !DIExpression()), !dbg !456
  %0 = load ptr, ptr %e.addr, align 8, !dbg !457
  %data = getelementptr inbounds %struct.exception_table_entry, ptr %0, i32 0, i32 2, !dbg !459
  %1 = load i32, ptr %data, align 4, !dbg !459
  %and = and i32 %1, 4096, !dbg !460
  %tobool = icmp ne i32 %and, 0, !dbg !460
  br i1 %tobool, label %if.then, label %if.end, !dbg !461

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !462
  %ax = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 10, !dbg !463
  store i64 0, ptr %ax, align 8, !dbg !464
  br label %if.end, !dbg !462

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %e.addr, align 8, !dbg !465
  %data1 = getelementptr inbounds %struct.exception_table_entry, ptr %3, i32 0, i32 2, !dbg !467
  %4 = load i32, ptr %data1, align 4, !dbg !467
  %and2 = and i32 %4, 8192, !dbg !468
  %tobool3 = icmp ne i32 %and2, 0, !dbg !468
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !469

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !470
  %dx = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 12, !dbg !471
  store i64 0, ptr %dx, align 8, !dbg !472
  br label %if.end5, !dbg !470

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load ptr, ptr %e.addr, align 8, !dbg !473
  %call = call i64 @ex_fixup_addr(ptr noundef %6) #13, !dbg !474
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !475
  %ip = getelementptr inbounds %struct.pt_regs, ptr %7, i32 0, i32 16, !dbg !476
  store i64 %call, ptr %ip, align 8, !dbg !477
  ret i1 true, !dbg !478
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ex_handler_fault(ptr noundef %fixup, ptr noundef %regs, i32 noundef %trapnr) #0 align 16 !dbg !479 {
entry:
  %fixup.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %trapnr.addr = alloca i32, align 4
  store ptr %fixup, ptr %fixup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fixup.addr, metadata !481, metadata !DIExpression()), !dbg !484
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !482, metadata !DIExpression()), !dbg !485
  store i32 %trapnr, ptr %trapnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trapnr.addr, metadata !483, metadata !DIExpression()), !dbg !486
  %0 = load i32, ptr %trapnr.addr, align 4, !dbg !487
  %conv = sext i32 %0 to i64, !dbg !487
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !488
  %ax = getelementptr inbounds %struct.pt_regs, ptr %1, i32 0, i32 10, !dbg !489
  store i64 %conv, ptr %ax, align 8, !dbg !490
  %2 = load ptr, ptr %fixup.addr, align 8, !dbg !491
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !492
  %call = call zeroext i1 @ex_handler_default(ptr noundef %2, ptr noundef %3) #13, !dbg !493
  ret i1 %call, !dbg !494
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ex_handler_uaccess(ptr noundef %fixup, ptr noundef %regs, i32 noundef %trapnr, i64 noundef %fault_address) #0 align 16 !dbg !14 {
entry:
  %fixup.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %trapnr.addr = alloca i32, align 4
  %fault_address.addr = alloca i64, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp51 = alloca i64, align 8
  %tmp60 = alloca i64, align 8
  store ptr %fixup, ptr %fixup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fixup.addr, metadata !224, metadata !DIExpression()), !dbg !495
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !225, metadata !DIExpression()), !dbg !496
  store i32 %trapnr, ptr %trapnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trapnr.addr, metadata !226, metadata !DIExpression()), !dbg !497
  store i64 %fault_address, ptr %fault_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fault_address.addr, metadata !227, metadata !DIExpression()), !dbg !498
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #12, !dbg !499
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !228, metadata !DIExpression()), !dbg !499
  %0 = load i32, ptr %trapnr.addr, align 4, !dbg !499
  %cmp = icmp eq i32 %0, 13, !dbg !499
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !499

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %fault_address.addr, align 8, !dbg !499
  %call = call zeroext i1 @gp_fault_address_ok(i64 noundef %1) #13, !dbg !499
  %lnot = xor i1 %call, true, !dbg !499
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !500
  %lnot1 = xor i1 %2, true, !dbg !499
  %lnot2 = xor i1 %lnot1, true, !dbg !499
  %frombool = zext i1 %lnot2 to i8, !dbg !499
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !499
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #12, !dbg !501
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !230, metadata !DIExpression()), !dbg !501
  %3 = load i8, ptr %__ret_do_once, align 1, !dbg !501, !range !502, !noundef !503
  %tobool = trunc i8 %3 to i1, !dbg !501
  %lnot3 = xor i1 %tobool, true, !dbg !501
  %lnot4 = xor i1 %lnot3, true, !dbg !501
  %frombool5 = zext i1 %lnot4 to i8, !dbg !501
  store i8 %frombool5, ptr %__ret_cond, align 1, !dbg !501
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #12, !dbg !501
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !233, metadata !DIExpression()), !dbg !501
  store i8 0, ptr %__ret_once, align 1, !dbg !501
  %4 = load i8, ptr %__ret_cond, align 1, !dbg !504, !range !502, !noundef !503
  %tobool6 = trunc i8 %4 to i1, !dbg !504
  br i1 %tobool6, label %land.rhs7, label %land.end10, !dbg !504

land.rhs7:                                        ; preds = %land.end
  %5 = load i8, ptr @ex_handler_uaccess.__already_done, align 1, !dbg !504, !range !502, !noundef !503
  %tobool8 = trunc i8 %5 to i1, !dbg !504
  %lnot9 = xor i1 %tobool8, true, !dbg !504
  br label %land.end10

land.end10:                                       ; preds = %land.rhs7, %land.end
  %6 = phi i1 [ false, %land.end ], [ %lnot9, %land.rhs7 ], !dbg !506
  %lnot11 = xor i1 %6, true, !dbg !504
  %lnot12 = xor i1 %lnot11, true, !dbg !504
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !504
  %conv = sext i32 %lnot.ext to i64, !dbg !504
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !504
  %tobool13 = icmp ne i64 %expval, 0, !dbg !504
  br i1 %tobool13, label %if.then, label %if.end, !dbg !501

if.then:                                          ; preds = %land.end10
  store i8 1, ptr @ex_handler_uaccess.__already_done, align 1, !dbg !507
  store i8 1, ptr %__ret_once, align 1, !dbg !507
  br label %if.end, !dbg !507

if.end:                                           ; preds = %if.then, %land.end10
  %7 = load i8, ptr %__ret_once, align 1, !dbg !501, !range !502, !noundef !503
  %tobool14 = trunc i8 %7 to i1, !dbg !501
  %lnot15 = xor i1 %tobool14, true, !dbg !501
  %lnot17 = xor i1 %lnot15, true, !dbg !501
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !501
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !501
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !501
  store i64 %expval20, ptr %tmp, align 8, !dbg !504
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #12, !dbg !509
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #12, !dbg !509
  %8 = load i64, ptr %tmp, align 8, !dbg !501
  %tobool21 = icmp ne i64 %8, 0, !dbg !509
  br i1 %tobool21, label %if.then22, label %if.end59, !dbg !499

if.then22:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !234, metadata !DIExpression()), !dbg !510
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !510
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !511
  %tobool23 = icmp ne i32 %9, 0, !dbg !511
  %lnot24 = xor i1 %tobool23, true, !dbg !511
  %lnot26 = xor i1 %lnot24, true, !dbg !511
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !511
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !511
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !511
  %tobool30 = icmp ne i64 %expval29, 0, !dbg !511
  br i1 %tobool30, label %if.then31, label %if.end50, !dbg !510

if.then31:                                        ; preds = %if.then22
  br label %do.body, !dbg !511

do.body:                                          ; preds = %if.then31
  br label %do.body32, !dbg !512

do.body32:                                        ; preds = %do.body
  br label %do.cond, !dbg !513

do.cond:                                          ; preds = %do.body32
  br label %do.end, !dbg !513

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.2) #13, !dbg !512
  br label %do.body33, !dbg !512

do.body33:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !515
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !236, metadata !DIExpression()), !dbg !515
  store i32 2313, ptr %__flags, align 4, !dbg !515
  br label %do.body34, !dbg !515

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !516

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !516

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !515

do.body37:                                        ; preds = %do.end36
  %10 = load i32, ptr %__flags, align 4, !dbg !518
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 162, i32 %10, i64 12) #12, !dbg !518, !srcloc !520
  br label %do.cond38, !dbg !518

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !518

do.end39:                                         ; preds = %do.cond38
  br label %do.body40, !dbg !515

do.body40:                                        ; preds = %do.end39
  br label %do.cond41, !dbg !521

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !521

do.end42:                                         ; preds = %do.cond41
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !512
  br label %do.cond43, !dbg !515

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !515

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !512

do.body45:                                        ; preds = %do.end44
  br label %do.cond46, !dbg !523

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !523

do.end47:                                         ; preds = %do.cond46
  br label %do.cond48, !dbg !512

do.cond48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !512

do.end49:                                         ; preds = %do.cond48
  br label %if.end50, !dbg !512

if.end50:                                         ; preds = %do.end49, %if.then22
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !510
  %tobool52 = icmp ne i32 %11, 0, !dbg !510
  %lnot53 = xor i1 %tobool52, true, !dbg !510
  %lnot55 = xor i1 %lnot53, true, !dbg !510
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !510
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !510
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !510
  store i64 %expval58, ptr %tmp51, align 8, !dbg !511
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !509
  %12 = load i64, ptr %tmp51, align 8, !dbg !510
  br label %if.end59, !dbg !509

if.end59:                                         ; preds = %if.end50, %if.end
  %13 = load i8, ptr %__ret_do_once, align 1, !dbg !499, !range !502, !noundef !503
  %tobool61 = trunc i8 %13 to i1, !dbg !499
  %lnot62 = xor i1 %tobool61, true, !dbg !499
  %lnot64 = xor i1 %lnot62, true, !dbg !499
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !499
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !499
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !499
  store i64 %expval67, ptr %tmp60, align 8, !dbg !509
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #12, !dbg !525
  %14 = load i64, ptr %tmp60, align 8, !dbg !499
  %15 = load ptr, ptr %fixup.addr, align 8, !dbg !526
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !527
  %call68 = call zeroext i1 @ex_handler_default(ptr noundef %15, ptr noundef %16) #13, !dbg !528
  ret i1 %call68, !dbg !529
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ex_handler_copy(ptr noundef %fixup, ptr noundef %regs, i32 noundef %trapnr) #0 align 16 !dbg !126 {
entry:
  %fixup.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %trapnr.addr = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp48 = alloca i64, align 8
  %tmp57 = alloca i64, align 8
  store ptr %fixup, ptr %fixup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fixup.addr, metadata !130, metadata !DIExpression()), !dbg !530
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !131, metadata !DIExpression()), !dbg !531
  store i32 %trapnr, ptr %trapnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trapnr.addr, metadata !132, metadata !DIExpression()), !dbg !532
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #12, !dbg !533
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !133, metadata !DIExpression()), !dbg !533
  %0 = load i32, ptr %trapnr.addr, align 4, !dbg !533
  %cmp = icmp eq i32 %0, 13, !dbg !533
  %lnot = xor i1 %cmp, true, !dbg !533
  %lnot1 = xor i1 %lnot, true, !dbg !533
  %frombool = zext i1 %lnot1 to i8, !dbg !533
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !533
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #12, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !135, metadata !DIExpression()), !dbg !534
  %1 = load i8, ptr %__ret_do_once, align 1, !dbg !534, !range !502, !noundef !503
  %tobool = trunc i8 %1 to i1, !dbg !534
  %lnot2 = xor i1 %tobool, true, !dbg !534
  %lnot3 = xor i1 %lnot2, true, !dbg !534
  %frombool4 = zext i1 %lnot3 to i8, !dbg !534
  store i8 %frombool4, ptr %__ret_cond, align 1, !dbg !534
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #12, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !138, metadata !DIExpression()), !dbg !534
  store i8 0, ptr %__ret_once, align 1, !dbg !534
  %2 = load i8, ptr %__ret_cond, align 1, !dbg !535, !range !502, !noundef !503
  %tobool5 = trunc i8 %2 to i1, !dbg !535
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !535

land.rhs:                                         ; preds = %entry
  %3 = load i8, ptr @ex_handler_copy.__already_done, align 1, !dbg !535, !range !502, !noundef !503
  %tobool6 = trunc i8 %3 to i1, !dbg !535
  %lnot7 = xor i1 %tobool6, true, !dbg !535
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot7, %land.rhs ], !dbg !537
  %lnot8 = xor i1 %4, true, !dbg !535
  %lnot9 = xor i1 %lnot8, true, !dbg !535
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !535
  %conv = sext i32 %lnot.ext to i64, !dbg !535
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !535
  %tobool10 = icmp ne i64 %expval, 0, !dbg !535
  br i1 %tobool10, label %if.then, label %if.end, !dbg !534

if.then:                                          ; preds = %land.end
  store i8 1, ptr @ex_handler_copy.__already_done, align 1, !dbg !538
  store i8 1, ptr %__ret_once, align 1, !dbg !538
  br label %if.end, !dbg !538

if.end:                                           ; preds = %if.then, %land.end
  %5 = load i8, ptr %__ret_once, align 1, !dbg !534, !range !502, !noundef !503
  %tobool11 = trunc i8 %5 to i1, !dbg !534
  %lnot12 = xor i1 %tobool11, true, !dbg !534
  %lnot14 = xor i1 %lnot12, true, !dbg !534
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !534
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !534
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !534
  store i64 %expval17, ptr %tmp, align 8, !dbg !535
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #12, !dbg !540
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #12, !dbg !540
  %6 = load i64, ptr %tmp, align 8, !dbg !534
  %tobool18 = icmp ne i64 %6, 0, !dbg !540
  br i1 %tobool18, label %if.then19, label %if.end56, !dbg !533

if.then19:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !139, metadata !DIExpression()), !dbg !541
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !541
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !542
  %tobool20 = icmp ne i32 %7, 0, !dbg !542
  %lnot21 = xor i1 %tobool20, true, !dbg !542
  %lnot23 = xor i1 %lnot21, true, !dbg !542
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !542
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !542
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !542
  %tobool27 = icmp ne i64 %expval26, 0, !dbg !542
  br i1 %tobool27, label %if.then28, label %if.end47, !dbg !541

if.then28:                                        ; preds = %if.then19
  br label %do.body, !dbg !542

do.body:                                          ; preds = %if.then28
  br label %do.body29, !dbg !543

do.body29:                                        ; preds = %do.body
  br label %do.cond, !dbg !544

do.cond:                                          ; preds = %do.body29
  br label %do.end, !dbg !544

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.2) #13, !dbg !543
  br label %do.body30, !dbg !543

do.body30:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !141, metadata !DIExpression()), !dbg !546
  store i32 2313, ptr %__flags, align 4, !dbg !546
  br label %do.body31, !dbg !546

do.body31:                                        ; preds = %do.body30
  br label %do.cond32, !dbg !547

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !547

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !546

do.body34:                                        ; preds = %do.end33
  %8 = load i32, ptr %__flags, align 4, !dbg !549
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 169, i32 %8, i64 12) #12, !dbg !549, !srcloc !551
  br label %do.cond35, !dbg !549

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !549

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !546

do.body37:                                        ; preds = %do.end36
  br label %do.cond38, !dbg !552

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !552

do.end39:                                         ; preds = %do.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !543
  br label %do.cond40, !dbg !546

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !546

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !543

do.body42:                                        ; preds = %do.end41
  br label %do.cond43, !dbg !554

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !554

do.end44:                                         ; preds = %do.cond43
  br label %do.cond45, !dbg !543

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !543

do.end46:                                         ; preds = %do.cond45
  br label %if.end47, !dbg !543

if.end47:                                         ; preds = %do.end46, %if.then19
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !541
  %tobool49 = icmp ne i32 %9, 0, !dbg !541
  %lnot50 = xor i1 %tobool49, true, !dbg !541
  %lnot52 = xor i1 %lnot50, true, !dbg !541
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !541
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !541
  %expval55 = call i64 @llvm.expect.i64(i64 %conv54, i64 0), !dbg !541
  store i64 %expval55, ptr %tmp48, align 8, !dbg !542
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !540
  %10 = load i64, ptr %tmp48, align 8, !dbg !541
  br label %if.end56, !dbg !540

if.end56:                                         ; preds = %if.end47, %if.end
  %11 = load i8, ptr %__ret_do_once, align 1, !dbg !533, !range !502, !noundef !503
  %tobool58 = trunc i8 %11 to i1, !dbg !533
  %lnot59 = xor i1 %tobool58, true, !dbg !533
  %lnot61 = xor i1 %lnot59, true, !dbg !533
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !533
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !533
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0), !dbg !533
  store i64 %expval64, ptr %tmp57, align 8, !dbg !540
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #12, !dbg !556
  %12 = load i64, ptr %tmp57, align 8, !dbg !533
  %13 = load ptr, ptr %fixup.addr, align 8, !dbg !557
  %14 = load ptr, ptr %regs.addr, align 8, !dbg !558
  %15 = load i32, ptr %trapnr.addr, align 4, !dbg !559
  %call = call zeroext i1 @ex_handler_fault(ptr noundef %13, ptr noundef %14, i32 noundef %15) #13, !dbg !560
  ret i1 %call, !dbg !561
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ex_handler_clear_fs(ptr noundef %fixup, ptr noundef %regs) #0 align 16 !dbg !562 {
entry:
  %fixup.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %fixup, ptr %fixup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fixup.addr, metadata !564, metadata !DIExpression()), !dbg !566
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !565, metadata !DIExpression()), !dbg !567
  br i1 false, label %cond.true, label %cond.false2, !dbg !568

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !569

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.then, label %if.end, !dbg !569

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 714, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !569
  br i1 %call, label %if.then, label %if.end, !dbg !569

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 714) #13, !dbg !569
  br i1 %call3, label %if.then, label %if.end, !dbg !568

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void asm sideeffect "mov $0, %fs", "rm,~{dirflag},~{fpsr},~{flags}"(i32 43) #12, !dbg !571, !srcloc !572
  br label %if.end, !dbg !571

if.end:                                           ; preds = %if.then, %cond.false2, %cond.false, %cond.true1
  call void asm sideeffect "mov $0, %fs", "rm,~{dirflag},~{fpsr},~{flags}"(i32 0) #12, !dbg !573, !srcloc !574
  %0 = load ptr, ptr %fixup.addr, align 8, !dbg !575
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !576
  %call4 = call zeroext i1 @ex_handler_default(ptr noundef %0, ptr noundef %1) #13, !dbg !577
  ret i1 %call4, !dbg !578
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ex_handler_fprestore(ptr noundef %fixup, ptr noundef %regs) #0 align 16 !dbg !147 {
entry:
  %fixup.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp46 = alloca i64, align 8
  %tmp55 = alloca i64, align 8
  store ptr %fixup, ptr %fixup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fixup.addr, metadata !151, metadata !DIExpression()), !dbg !579
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !152, metadata !DIExpression()), !dbg !580
  %0 = load ptr, ptr %fixup.addr, align 8, !dbg !581
  %call = call i64 @ex_fixup_addr(ptr noundef %0) #13, !dbg !582
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !583
  %ip = getelementptr inbounds %struct.pt_regs, ptr %1, i32 0, i32 16, !dbg !584
  store i64 %call, ptr %ip, align 8, !dbg !585
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #12, !dbg !586
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !153, metadata !DIExpression()), !dbg !586
  store i8 1, ptr %__ret_do_once, align 1, !dbg !586
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #12, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !155, metadata !DIExpression()), !dbg !587
  %2 = load i8, ptr %__ret_do_once, align 1, !dbg !587, !range !502, !noundef !503
  %tobool = trunc i8 %2 to i1, !dbg !587
  %lnot = xor i1 %tobool, true, !dbg !587
  %lnot1 = xor i1 %lnot, true, !dbg !587
  %frombool = zext i1 %lnot1 to i8, !dbg !587
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !587
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #12, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !158, metadata !DIExpression()), !dbg !587
  store i8 0, ptr %__ret_once, align 1, !dbg !587
  %3 = load i8, ptr %__ret_cond, align 1, !dbg !588, !range !502, !noundef !503
  %tobool2 = trunc i8 %3 to i1, !dbg !588
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !588

land.rhs:                                         ; preds = %entry
  %4 = load i8, ptr @ex_handler_fprestore.__already_done, align 1, !dbg !588, !range !502, !noundef !503
  %tobool3 = trunc i8 %4 to i1, !dbg !588
  %lnot4 = xor i1 %tobool3, true, !dbg !588
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %lnot4, %land.rhs ], !dbg !590
  %lnot5 = xor i1 %5, true, !dbg !588
  %lnot6 = xor i1 %lnot5, true, !dbg !588
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !588
  %conv = sext i32 %lnot.ext to i64, !dbg !588
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !588
  %tobool7 = icmp ne i64 %expval, 0, !dbg !588
  br i1 %tobool7, label %if.then, label %if.end, !dbg !587

if.then:                                          ; preds = %land.end
  store i8 1, ptr @ex_handler_fprestore.__already_done, align 1, !dbg !591
  store i8 1, ptr %__ret_once, align 1, !dbg !591
  br label %if.end, !dbg !591

if.end:                                           ; preds = %if.then, %land.end
  %6 = load i8, ptr %__ret_once, align 1, !dbg !587, !range !502, !noundef !503
  %tobool8 = trunc i8 %6 to i1, !dbg !587
  %lnot9 = xor i1 %tobool8, true, !dbg !587
  %lnot11 = xor i1 %lnot9, true, !dbg !587
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !587
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !587
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !587
  store i64 %expval14, ptr %tmp, align 8, !dbg !588
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #12, !dbg !593
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #12, !dbg !593
  %7 = load i64, ptr %tmp, align 8, !dbg !587
  %tobool15 = icmp ne i64 %7, 0, !dbg !593
  br i1 %tobool15, label %if.then16, label %if.end54, !dbg !586

if.then16:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !594
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !159, metadata !DIExpression()), !dbg !594
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !594
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !595
  %tobool17 = icmp ne i32 %8, 0, !dbg !595
  %lnot18 = xor i1 %tobool17, true, !dbg !595
  %lnot20 = xor i1 %lnot18, true, !dbg !595
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !595
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !595
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !595
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !595
  br i1 %tobool24, label %if.then25, label %if.end45, !dbg !594

if.then25:                                        ; preds = %if.then16
  br label %do.body, !dbg !595

do.body:                                          ; preds = %if.then25
  br label %do.body26, !dbg !596

do.body26:                                        ; preds = %do.body
  br label %do.cond, !dbg !597

do.cond:                                          ; preds = %do.body26
  br label %do.end, !dbg !597

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %regs.addr, align 8, !dbg !596
  %call27 = call i64 @instruction_pointer(ptr noundef %9) #13, !dbg !596
  %10 = inttoptr i64 %call27 to ptr, !dbg !596
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.3, ptr noundef %10) #13, !dbg !596
  br label %do.body28, !dbg !596

do.body28:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !599
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !161, metadata !DIExpression()), !dbg !599
  store i32 2313, ptr %__flags, align 4, !dbg !599
  br label %do.body29, !dbg !599

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !600

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !600

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !599

do.body32:                                        ; preds = %do.end31
  %11 = load i32, ptr %__flags, align 4, !dbg !602
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 127, i32 %11, i64 12) #12, !dbg !602, !srcloc !604
  br label %do.cond33, !dbg !602

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !602

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !599

do.body35:                                        ; preds = %do.end34
  br label %do.cond36, !dbg !605

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !605

do.end37:                                         ; preds = %do.cond36
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !596
  br label %do.cond38, !dbg !599

do.cond38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !599

do.end39:                                         ; preds = %do.cond38
  br label %do.body40, !dbg !596

do.body40:                                        ; preds = %do.end39
  br label %do.cond41, !dbg !607

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !607

do.end42:                                         ; preds = %do.cond41
  br label %do.cond43, !dbg !596

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !596

do.end44:                                         ; preds = %do.cond43
  br label %if.end45, !dbg !596

if.end45:                                         ; preds = %do.end44, %if.then16
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !594
  %tobool47 = icmp ne i32 %12, 0, !dbg !594
  %lnot48 = xor i1 %tobool47, true, !dbg !594
  %lnot50 = xor i1 %lnot48, true, !dbg !594
  %lnot.ext51 = zext i1 %lnot50 to i32, !dbg !594
  %conv52 = sext i32 %lnot.ext51 to i64, !dbg !594
  %expval53 = call i64 @llvm.expect.i64(i64 %conv52, i64 0), !dbg !594
  store i64 %expval53, ptr %tmp46, align 8, !dbg !595
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !593
  %13 = load i64, ptr %tmp46, align 8, !dbg !594
  br label %if.end54, !dbg !593

if.end54:                                         ; preds = %if.end45, %if.end
  %14 = load i8, ptr %__ret_do_once, align 1, !dbg !586, !range !502, !noundef !503
  %tobool56 = trunc i8 %14 to i1, !dbg !586
  %lnot57 = xor i1 %tobool56, true, !dbg !586
  %lnot59 = xor i1 %lnot57, true, !dbg !586
  %lnot.ext60 = zext i1 %lnot59 to i32, !dbg !586
  %conv61 = sext i32 %lnot.ext60 to i64, !dbg !586
  %expval62 = call i64 @llvm.expect.i64(i64 %conv61, i64 0), !dbg !586
  store i64 %expval62, ptr %tmp55, align 8, !dbg !593
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #12, !dbg !609
  %15 = load i64, ptr %tmp55, align 8, !dbg !586
  call void @fpu_reset_from_exception_fixup() #13, !dbg !610
  ret i1 true, !dbg !611
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ex_handler_bpf(ptr noundef %x, ptr noundef %regs) #4 align 16 !dbg !612 {
entry:
  %x.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !614, metadata !DIExpression()), !dbg !616
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !615, metadata !DIExpression()), !dbg !617
  ret i1 false, !dbg !618
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ex_handler_msr(ptr noundef %fixup, ptr noundef %regs, i1 noundef zeroext %wrmsr, i1 noundef zeroext %safe, i32 noundef %reg) #0 align 16 !dbg !172 {
entry:
  %fixup.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %wrmsr.addr = alloca i8, align 1
  %safe.addr = alloca i8, align 1
  %reg.addr = alloca i32, align 4
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp22 = alloca i32, align 4
  %__ret_cond28 = alloca i8, align 1
  %__ret_once40 = alloca i8, align 1
  %tmp57 = alloca i64, align 8
  %tmp69 = alloca i32, align 4
  store ptr %fixup, ptr %fixup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fixup.addr, metadata !176, metadata !DIExpression()), !dbg !619
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !177, metadata !DIExpression()), !dbg !620
  %frombool = zext i1 %wrmsr to i8
  store i8 %frombool, ptr %wrmsr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %wrmsr.addr, metadata !178, metadata !DIExpression()), !dbg !621
  %frombool1 = zext i1 %safe to i8
  store i8 %frombool1, ptr %safe.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %safe.addr, metadata !179, metadata !DIExpression()), !dbg !622
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !180, metadata !DIExpression()), !dbg !623
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #12, !dbg !624
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !181, metadata !DIExpression()), !dbg !624
  %0 = load i8, ptr %safe.addr, align 1, !dbg !624, !range !502, !noundef !503
  %tobool = trunc i8 %0 to i1, !dbg !624
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !624

land.rhs:                                         ; preds = %entry
  %1 = load i8, ptr %wrmsr.addr, align 1, !dbg !624, !range !502, !noundef !503
  %tobool2 = trunc i8 %1 to i1, !dbg !624
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !625
  %lnot = xor i1 %2, true, !dbg !624
  %lnot3 = xor i1 %lnot, true, !dbg !624
  %frombool4 = zext i1 %lnot3 to i8, !dbg !624
  store i8 %frombool4, ptr %__ret_cond, align 1, !dbg !624
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #12, !dbg !624
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !184, metadata !DIExpression()), !dbg !624
  store i8 0, ptr %__ret_once, align 1, !dbg !624
  %3 = load i8, ptr %__ret_cond, align 1, !dbg !626, !range !502, !noundef !503
  %tobool5 = trunc i8 %3 to i1, !dbg !626
  br i1 %tobool5, label %land.rhs6, label %land.end9, !dbg !626

land.rhs6:                                        ; preds = %land.end
  %4 = load i8, ptr @ex_handler_msr.__already_done, align 1, !dbg !626, !range !502, !noundef !503
  %tobool7 = trunc i8 %4 to i1, !dbg !626
  %lnot8 = xor i1 %tobool7, true, !dbg !626
  br label %land.end9

land.end9:                                        ; preds = %land.rhs6, %land.end
  %5 = phi i1 [ false, %land.end ], [ %lnot8, %land.rhs6 ], !dbg !628
  %lnot10 = xor i1 %5, true, !dbg !626
  %lnot11 = xor i1 %lnot10, true, !dbg !626
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !626
  %conv = sext i32 %lnot.ext to i64, !dbg !626
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !626
  %tobool12 = icmp ne i64 %expval, 0, !dbg !626
  br i1 %tobool12, label %if.then, label %if.end, !dbg !624

if.then:                                          ; preds = %land.end9
  store i8 1, ptr @ex_handler_msr.__already_done, align 1, !dbg !629
  store i8 1, ptr %__ret_once, align 1, !dbg !629
  br label %if.end, !dbg !629

if.end:                                           ; preds = %if.then, %land.end9
  %6 = load i8, ptr %__ret_once, align 1, !dbg !624, !range !502, !noundef !503
  %tobool13 = trunc i8 %6 to i1, !dbg !624
  %lnot14 = xor i1 %tobool13, true, !dbg !624
  %lnot16 = xor i1 %lnot14, true, !dbg !624
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !624
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !624
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !624
  store i64 %expval19, ptr %tmp, align 8, !dbg !626
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #12, !dbg !631
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #12, !dbg !631
  %7 = load i64, ptr %tmp, align 8, !dbg !624
  %tobool20 = icmp ne i64 %7, 0, !dbg !631
  br i1 %tobool20, label %if.then21, label %if.end27, !dbg !632

if.then21:                                        ; preds = %if.end
  br label %do.body, !dbg !633

do.body:                                          ; preds = %if.then21
  br label %do.end, !dbg !636

do.end:                                           ; preds = %do.body
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !633
  %cx = getelementptr inbounds %struct.pt_regs, ptr %8, i32 0, i32 11, !dbg !633
  %9 = load i64, ptr %cx, align 8, !dbg !633
  %conv23 = trunc i64 %9 to i32, !dbg !633
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !633
  %dx = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 12, !dbg !633
  %11 = load i64, ptr %dx, align 8, !dbg !633
  %conv24 = trunc i64 %11 to i32, !dbg !633
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !633
  %ax = getelementptr inbounds %struct.pt_regs, ptr %12, i32 0, i32 10, !dbg !633
  %13 = load i64, ptr %ax, align 8, !dbg !633
  %conv25 = trunc i64 %13 to i32, !dbg !633
  %14 = load ptr, ptr %regs.addr, align 8, !dbg !633
  %ip = getelementptr inbounds %struct.pt_regs, ptr %14, i32 0, i32 16, !dbg !633
  %15 = load i64, ptr %ip, align 8, !dbg !633
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !633
  %ip26 = getelementptr inbounds %struct.pt_regs, ptr %16, i32 0, i32 16, !dbg !633
  %17 = load i64, ptr %ip26, align 8, !dbg !633
  %18 = inttoptr i64 %17 to ptr, !dbg !633
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %conv23, i32 noundef %conv24, i32 noundef %conv25, i64 noundef %15, ptr noundef %18) #15, !dbg !633
  store i32 %call, ptr %tmp22, align 4, !dbg !636
  %19 = load i32, ptr %tmp22, align 4, !dbg !633
  %20 = load ptr, ptr %regs.addr, align 8, !dbg !638
  call void @show_stack_regs(ptr noundef %20) #13, !dbg !639
  br label %if.end27, !dbg !640

if.end27:                                         ; preds = %do.end, %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond28) #12, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %__ret_cond28, metadata !185, metadata !DIExpression()), !dbg !641
  %21 = load i8, ptr %safe.addr, align 1, !dbg !641, !range !502, !noundef !503
  %tobool29 = trunc i8 %21 to i1, !dbg !641
  br i1 %tobool29, label %land.end34, label %land.rhs30, !dbg !641

land.rhs30:                                       ; preds = %if.end27
  %22 = load i8, ptr %wrmsr.addr, align 1, !dbg !641, !range !502, !noundef !503
  %tobool31 = trunc i8 %22 to i1, !dbg !641
  %lnot32 = xor i1 %tobool31, true, !dbg !641
  br label %land.end34

land.end34:                                       ; preds = %land.rhs30, %if.end27
  %23 = phi i1 [ false, %if.end27 ], [ %lnot32, %land.rhs30 ], !dbg !642
  %lnot35 = xor i1 %23, true, !dbg !641
  %lnot37 = xor i1 %lnot35, true, !dbg !641
  %frombool39 = zext i1 %lnot37 to i8, !dbg !641
  store i8 %frombool39, ptr %__ret_cond28, align 1, !dbg !641
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once40) #12, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %__ret_once40, metadata !188, metadata !DIExpression()), !dbg !641
  store i8 0, ptr %__ret_once40, align 1, !dbg !641
  %24 = load i8, ptr %__ret_cond28, align 1, !dbg !643, !range !502, !noundef !503
  %tobool41 = trunc i8 %24 to i1, !dbg !643
  br i1 %tobool41, label %land.rhs43, label %land.end47, !dbg !643

land.rhs43:                                       ; preds = %land.end34
  %25 = load i8, ptr @ex_handler_msr.__already_done.5, align 1, !dbg !643, !range !502, !noundef !503
  %tobool44 = trunc i8 %25 to i1, !dbg !643
  %lnot45 = xor i1 %tobool44, true, !dbg !643
  br label %land.end47

land.end47:                                       ; preds = %land.rhs43, %land.end34
  %26 = phi i1 [ false, %land.end34 ], [ %lnot45, %land.rhs43 ], !dbg !645
  %lnot48 = xor i1 %26, true, !dbg !643
  %lnot50 = xor i1 %lnot48, true, !dbg !643
  %lnot.ext51 = zext i1 %lnot50 to i32, !dbg !643
  %conv52 = sext i32 %lnot.ext51 to i64, !dbg !643
  %expval53 = call i64 @llvm.expect.i64(i64 %conv52, i64 0), !dbg !643
  %tobool54 = icmp ne i64 %expval53, 0, !dbg !643
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !641

if.then55:                                        ; preds = %land.end47
  store i8 1, ptr @ex_handler_msr.__already_done.5, align 1, !dbg !646
  store i8 1, ptr %__ret_once40, align 1, !dbg !646
  br label %if.end56, !dbg !646

if.end56:                                         ; preds = %if.then55, %land.end47
  %27 = load i8, ptr %__ret_once40, align 1, !dbg !641, !range !502, !noundef !503
  %tobool58 = trunc i8 %27 to i1, !dbg !641
  %lnot59 = xor i1 %tobool58, true, !dbg !641
  %lnot61 = xor i1 %lnot59, true, !dbg !641
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !641
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !641
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0), !dbg !641
  store i64 %expval64, ptr %tmp57, align 8, !dbg !643
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once40) #12, !dbg !648
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond28) #12, !dbg !648
  %28 = load i64, ptr %tmp57, align 8, !dbg !641
  %tobool65 = icmp ne i64 %28, 0, !dbg !648
  br i1 %tobool65, label %if.then66, label %if.end75, !dbg !649

if.then66:                                        ; preds = %if.end56
  br label %do.body67, !dbg !650

do.body67:                                        ; preds = %if.then66
  br label %do.end68, !dbg !653

do.end68:                                         ; preds = %do.body67
  %29 = load ptr, ptr %regs.addr, align 8, !dbg !650
  %cx70 = getelementptr inbounds %struct.pt_regs, ptr %29, i32 0, i32 11, !dbg !650
  %30 = load i64, ptr %cx70, align 8, !dbg !650
  %conv71 = trunc i64 %30 to i32, !dbg !650
  %31 = load ptr, ptr %regs.addr, align 8, !dbg !650
  %ip72 = getelementptr inbounds %struct.pt_regs, ptr %31, i32 0, i32 16, !dbg !650
  %32 = load i64, ptr %ip72, align 8, !dbg !650
  %33 = load ptr, ptr %regs.addr, align 8, !dbg !650
  %ip73 = getelementptr inbounds %struct.pt_regs, ptr %33, i32 0, i32 16, !dbg !650
  %34 = load i64, ptr %ip73, align 8, !dbg !650
  %35 = inttoptr i64 %34 to ptr, !dbg !650
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i32 noundef %conv71, i64 noundef %32, ptr noundef %35) #15, !dbg !650
  store i32 %call74, ptr %tmp69, align 4, !dbg !653
  %36 = load i32, ptr %tmp69, align 4, !dbg !650
  %37 = load ptr, ptr %regs.addr, align 8, !dbg !655
  call void @show_stack_regs(ptr noundef %37) #13, !dbg !656
  br label %if.end75, !dbg !657

if.end75:                                         ; preds = %do.end68, %if.end56
  %38 = load i8, ptr %wrmsr.addr, align 1, !dbg !658, !range !502, !noundef !503
  %tobool76 = trunc i8 %38 to i1, !dbg !658
  br i1 %tobool76, label %if.end80, label %if.then77, !dbg !660

if.then77:                                        ; preds = %if.end75
  %39 = load ptr, ptr %regs.addr, align 8, !dbg !661
  %ax78 = getelementptr inbounds %struct.pt_regs, ptr %39, i32 0, i32 10, !dbg !663
  store i64 0, ptr %ax78, align 8, !dbg !664
  %40 = load ptr, ptr %regs.addr, align 8, !dbg !665
  %dx79 = getelementptr inbounds %struct.pt_regs, ptr %40, i32 0, i32 12, !dbg !666
  store i64 0, ptr %dx79, align 8, !dbg !667
  br label %if.end80, !dbg !668

if.end80:                                         ; preds = %if.then77, %if.end75
  %41 = load i8, ptr %safe.addr, align 1, !dbg !669, !range !502, !noundef !503
  %tobool81 = trunc i8 %41 to i1, !dbg !669
  br i1 %tobool81, label %if.then82, label %if.end84, !dbg !671

if.then82:                                        ; preds = %if.end80
  %42 = load ptr, ptr %regs.addr, align 8, !dbg !672
  %43 = load i32, ptr %reg.addr, align 4, !dbg !673
  %call83 = call ptr @pt_regs_nr(ptr noundef %42, i32 noundef %43) #13, !dbg !674
  store i64 -5, ptr %call83, align 8, !dbg !675
  br label %if.end84, !dbg !676

if.end84:                                         ; preds = %if.then82, %if.end80
  %44 = load ptr, ptr %fixup.addr, align 8, !dbg !677
  %45 = load ptr, ptr %regs.addr, align 8, !dbg !678
  %call85 = call zeroext i1 @ex_handler_default(ptr noundef %44, ptr noundef %45) #13, !dbg !679
  ret i1 %call85, !dbg !680
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !681 dso_local void @ex_handler_msr_mce(ptr noundef, i1 noundef zeroext) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ex_handler_imm_reg(ptr noundef %fixup, ptr noundef %regs, i32 noundef %reg, i32 noundef %imm) #0 align 16 !dbg !684 {
entry:
  %fixup.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %imm.addr = alloca i32, align 4
  store ptr %fixup, ptr %fixup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fixup.addr, metadata !688, metadata !DIExpression()), !dbg !692
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !689, metadata !DIExpression()), !dbg !693
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !690, metadata !DIExpression()), !dbg !694
  store i32 %imm, ptr %imm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %imm.addr, metadata !691, metadata !DIExpression()), !dbg !695
  %0 = load i32, ptr %imm.addr, align 4, !dbg !696
  %conv = sext i32 %0 to i64, !dbg !697
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !698
  %2 = load i32, ptr %reg.addr, align 4, !dbg !699
  %call = call ptr @pt_regs_nr(ptr noundef %1, i32 noundef %2) #13, !dbg !700
  store i64 %conv, ptr %call, align 8, !dbg !701
  %3 = load ptr, ptr %fixup.addr, align 8, !dbg !702
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !703
  %call1 = call zeroext i1 @ex_handler_default(ptr noundef %3, ptr noundef %4) #13, !dbg !704
  ret i1 %call1, !dbg !705
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ex_handler_sgx(ptr noundef %fixup, ptr noundef %regs, i32 noundef %trapnr) #0 align 16 !dbg !706 {
entry:
  %fixup.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %trapnr.addr = alloca i32, align 4
  store ptr %fixup, ptr %fixup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fixup.addr, metadata !708, metadata !DIExpression()), !dbg !711
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !709, metadata !DIExpression()), !dbg !712
  store i32 %trapnr, ptr %trapnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trapnr.addr, metadata !710, metadata !DIExpression()), !dbg !713
  %0 = load i32, ptr %trapnr.addr, align 4, !dbg !714
  %or = or i32 %0, 1073741824, !dbg !715
  %conv = sext i32 %or to i64, !dbg !714
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !716
  %ax = getelementptr inbounds %struct.pt_regs, ptr %1, i32 0, i32 10, !dbg !717
  store i64 %conv, ptr %ax, align 8, !dbg !718
  %2 = load ptr, ptr %fixup.addr, align 8, !dbg !719
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !720
  %call = call zeroext i1 @ex_handler_default(ptr noundef %2, ptr noundef %3) #13, !dbg !721
  ret i1 %call, !dbg !722
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ex_handler_ucopy_len(ptr noundef %fixup, ptr noundef %regs, i32 noundef %trapnr, i64 noundef %fault_address, i32 noundef %reg, i32 noundef %imm) #0 align 16 !dbg !723 {
entry:
  %fixup.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %trapnr.addr = alloca i32, align 4
  %fault_address.addr = alloca i64, align 8
  %reg.addr = alloca i32, align 4
  %imm.addr = alloca i32, align 4
  store ptr %fixup, ptr %fixup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fixup.addr, metadata !727, metadata !DIExpression()), !dbg !733
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !728, metadata !DIExpression()), !dbg !734
  store i32 %trapnr, ptr %trapnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trapnr.addr, metadata !729, metadata !DIExpression()), !dbg !735
  store i64 %fault_address, ptr %fault_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fault_address.addr, metadata !730, metadata !DIExpression()), !dbg !736
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !731, metadata !DIExpression()), !dbg !737
  store i32 %imm, ptr %imm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %imm.addr, metadata !732, metadata !DIExpression()), !dbg !738
  %0 = load i32, ptr %imm.addr, align 4, !dbg !739
  %conv = sext i32 %0 to i64, !dbg !739
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !740
  %cx = getelementptr inbounds %struct.pt_regs, ptr %1, i32 0, i32 11, !dbg !741
  %2 = load i64, ptr %cx, align 8, !dbg !741
  %mul = mul i64 %conv, %2, !dbg !742
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !743
  %4 = load i32, ptr %reg.addr, align 4, !dbg !744
  %call = call ptr @pt_regs_nr(ptr noundef %3, i32 noundef %4) #13, !dbg !745
  %5 = load i64, ptr %call, align 8, !dbg !746
  %add = add i64 %mul, %5, !dbg !747
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !748
  %cx1 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 11, !dbg !749
  store i64 %add, ptr %cx1, align 8, !dbg !750
  %7 = load ptr, ptr %fixup.addr, align 8, !dbg !751
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !752
  %9 = load i32, ptr %trapnr.addr, align 4, !dbg !753
  %10 = load i64, ptr %fault_address.addr, align 8, !dbg !754
  %call2 = call zeroext i1 @ex_handler_uaccess(ptr noundef %7, ptr noundef %8, i32 noundef %9, i64 noundef %10) #13, !dbg !755
  ret i1 %call2, !dbg !756
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ex_handler_zeropad(ptr noundef %e, ptr noundef %regs, i64 noundef %fault_addr) #0 align 16 !dbg !757 {
entry:
  %retval = alloca i1, align 1
  %e.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %fault_addr.addr = alloca i64, align 8
  %insn = alloca %struct.insn, align 8
  %mask = alloca i64, align 8
  %offset = alloca i64, align 8
  %addr = alloca i64, align 8
  %next_ip = alloca i64, align 8
  %len = alloca i64, align 8
  %reg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !761, metadata !DIExpression()), !dbg !820
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !762, metadata !DIExpression()), !dbg !821
  store i64 %fault_addr, ptr %fault_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fault_addr.addr, metadata !763, metadata !DIExpression()), !dbg !822
  call void @llvm.lifetime.start.p0(i64 112, ptr %insn) #12, !dbg !823
  call void @llvm.dbg.declare(metadata ptr %insn, metadata !764, metadata !DIExpression()), !dbg !824
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #12, !dbg !825
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !813, metadata !DIExpression()), !dbg !826
  store i64 7, ptr %mask, align 8, !dbg !826
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #12, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !815, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #12, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !816, metadata !DIExpression()), !dbg !829
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_ip) #12, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %next_ip, metadata !817, metadata !DIExpression()), !dbg !830
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #12, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %len, metadata !818, metadata !DIExpression()), !dbg !831
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg) #12, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !819, metadata !DIExpression()), !dbg !833
  %0 = load ptr, ptr %e.addr, align 8, !dbg !834
  %call = call i64 @ex_fixup_addr(ptr noundef %0) #13, !dbg !835
  store i64 %call, ptr %next_ip, align 8, !dbg !836
  %1 = load i64, ptr %next_ip, align 8, !dbg !837
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !838
  %ip = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 16, !dbg !839
  %3 = load i64, ptr %ip, align 8, !dbg !839
  %sub = sub i64 %1, %3, !dbg !840
  store i64 %sub, ptr %len, align 8, !dbg !841
  %4 = load i64, ptr %len, align 8, !dbg !842
  %cmp = icmp ugt i64 %4, 15, !dbg !844
  br i1 %cmp, label %if.then, label %if.end, !dbg !845

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !846

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !847
  %ip1 = getelementptr inbounds %struct.pt_regs, ptr %5, i32 0, i32 16, !dbg !849
  %6 = load i64, ptr %ip1, align 8, !dbg !849
  %7 = inttoptr i64 %6 to ptr, !dbg !850
  %8 = load i64, ptr %len, align 8, !dbg !851
  %conv = trunc i64 %8 to i32, !dbg !851
  %call2 = call i32 @insn_decode(ptr noundef %insn, ptr noundef %7, i32 noundef %conv, i32 noundef 2) #13, !dbg !852
  %tobool = icmp ne i32 %call2, 0, !dbg !852
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !853

if.then3:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !854
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !854

if.end4:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 13, !dbg !855
  %9 = load i8, ptr %length, align 2, !dbg !855
  %conv5 = zext i8 %9 to i64, !dbg !857
  %10 = load i64, ptr %len, align 8, !dbg !858
  %cmp6 = icmp ne i64 %conv5, %10, !dbg !859
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !860

if.then8:                                         ; preds = %if.end4
  store i1 false, ptr %retval, align 1, !dbg !861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !861

if.end9:                                          ; preds = %if.end4
  %opcode = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 3, !dbg !862
  %11 = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 0, !dbg !864
  %arrayidx = getelementptr [4 x i8], ptr %11, i64 0, i64 0, !dbg !865
  %12 = load i8, ptr %arrayidx, align 8, !dbg !865
  %conv10 = zext i8 %12 to i32, !dbg !865
  %cmp11 = icmp ne i32 %conv10, 139, !dbg !866
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !867

if.then13:                                        ; preds = %if.end9
  store i1 false, ptr %retval, align 1, !dbg !868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !868

if.end14:                                         ; preds = %if.end9
  %opnd_bytes = getelementptr inbounds %struct.insn, ptr %insn, i32 0, i32 11, !dbg !869
  %13 = load i8, ptr %opnd_bytes, align 8, !dbg !869
  %conv15 = zext i8 %13 to i64, !dbg !871
  %cmp16 = icmp ne i64 %conv15, 8, !dbg !872
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !873

if.then18:                                        ; preds = %if.end14
  store i1 false, ptr %retval, align 1, !dbg !874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !874

if.end19:                                         ; preds = %if.end14
  %14 = load ptr, ptr %regs.addr, align 8, !dbg !875
  %call20 = call ptr @insn_get_addr_ref(ptr noundef %insn, ptr noundef %14) #13, !dbg !876
  %15 = ptrtoint ptr %call20 to i64, !dbg !877
  store i64 %15, ptr %addr, align 8, !dbg !878
  %16 = load i64, ptr %addr, align 8, !dbg !879
  %cmp21 = icmp eq i64 %16, -1, !dbg !881
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !882

if.then23:                                        ; preds = %if.end19
  store i1 false, ptr %retval, align 1, !dbg !883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !883

if.end24:                                         ; preds = %if.end19
  %17 = load i64, ptr %addr, align 8, !dbg !884
  %and = and i64 %17, 7, !dbg !885
  store i64 %and, ptr %offset, align 8, !dbg !886
  %18 = load i64, ptr %addr, align 8, !dbg !887
  %and25 = and i64 %18, -8, !dbg !888
  store i64 %and25, ptr %addr, align 8, !dbg !889
  %19 = load i64, ptr %fault_addr.addr, align 8, !dbg !890
  %20 = load i64, ptr %addr, align 8, !dbg !892
  %add = add i64 %20, 8, !dbg !893
  %cmp26 = icmp ne i64 %19, %add, !dbg !894
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !895

if.then28:                                        ; preds = %if.end24
  store i1 false, ptr %retval, align 1, !dbg !896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !896

if.end29:                                         ; preds = %if.end24
  %21 = load ptr, ptr %regs.addr, align 8, !dbg !897
  %call30 = call ptr @insn_get_modrm_reg_ptr(ptr noundef %insn, ptr noundef %21) #13, !dbg !898
  store ptr %call30, ptr %reg, align 8, !dbg !899
  %22 = load ptr, ptr %reg, align 8, !dbg !900
  %tobool31 = icmp ne ptr %22, null, !dbg !900
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !902

if.then32:                                        ; preds = %if.end29
  store i1 false, ptr %retval, align 1, !dbg !903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !903

if.end33:                                         ; preds = %if.end29
  %23 = load i64, ptr %addr, align 8, !dbg !904
  %24 = inttoptr i64 %23 to ptr, !dbg !905
  %25 = load i64, ptr %24, align 8, !dbg !906
  %26 = load i64, ptr %offset, align 8, !dbg !907
  %mul = mul i64 %26, 8, !dbg !908
  %shr = lshr i64 %25, %mul, !dbg !909
  %27 = load ptr, ptr %reg, align 8, !dbg !910
  store i64 %shr, ptr %27, align 8, !dbg !911
  %28 = load ptr, ptr %e.addr, align 8, !dbg !912
  %29 = load ptr, ptr %regs.addr, align 8, !dbg !913
  %call34 = call zeroext i1 @ex_handler_default(ptr noundef %28, ptr noundef %29) #13, !dbg !914
  store i1 %call34, ptr %retval, align 1, !dbg !915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !915

cleanup:                                          ; preds = %if.end33, %if.then32, %if.then28, %if.then23, %if.then18, %if.then13, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg) #12, !dbg !916
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #12, !dbg !916
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_ip) #12, !dbg !916
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #12, !dbg !916
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #12, !dbg !916
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #12, !dbg !916
  call void @llvm.lifetime.end.p0(i64 112, ptr %insn) #12, !dbg !916
  %30 = load i1, ptr %retval, align 1, !dbg !916
  ret i1 %30, !dbg !916
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @early_fixup_exception(ptr noundef %regs, i32 noundef %trapnr) #6 section ".init.text" align 16 !dbg !917 {
entry:
  %regs.addr = alloca ptr, align 8
  %trapnr.addr = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !921, metadata !DIExpression()), !dbg !925
  store i32 %trapnr, ptr %trapnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trapnr.addr, metadata !922, metadata !DIExpression()), !dbg !926
  %0 = load i32, ptr %trapnr.addr, align 4, !dbg !927
  %cmp = icmp eq i32 %0, 2, !dbg !929
  br i1 %cmp, label %if.then, label %if.end, !dbg !930

if.then:                                          ; preds = %entry
  br label %return, !dbg !931

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @early_recursion_flag, align 4, !dbg !932
  %cmp1 = icmp ugt i32 %1, 2, !dbg !934
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !935

if.then2:                                         ; preds = %if.end
  br label %halt_loop, !dbg !936

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !937
  %3 = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 17, !dbg !939
  %4 = load i16, ptr %3, align 8, !dbg !939
  %conv = zext i16 %4 to i32, !dbg !937
  %cmp4 = icmp ne i32 %conv, 16, !dbg !940
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !941

if.then6:                                         ; preds = %if.end3
  br label %fail, !dbg !942

if.end7:                                          ; preds = %if.end3
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !943
  %6 = load i32, ptr %trapnr.addr, align 4, !dbg !945
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !946
  %orig_ax = getelementptr inbounds %struct.pt_regs, ptr %7, i32 0, i32 15, !dbg !947
  %8 = load i64, ptr %orig_ax, align 8, !dbg !947
  %call = call i32 @fixup_exception(ptr noundef %5, i32 noundef %6, i64 noundef %8, i64 noundef 0) #13, !dbg !948
  %tobool = icmp ne i32 %call, 0, !dbg !948
  br i1 %tobool, label %if.then8, label %if.end9, !dbg !949

if.then8:                                         ; preds = %if.end7
  br label %return, !dbg !950

if.end9:                                          ; preds = %if.end7
  %9 = load i32, ptr %trapnr.addr, align 4, !dbg !951
  %cmp10 = icmp eq i32 %9, 6, !dbg !953
  br i1 %cmp10, label %if.then12, label %if.end19, !dbg !954

if.then12:                                        ; preds = %if.end9
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !955
  %ip = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 16, !dbg !958
  %11 = load i64, ptr %ip, align 8, !dbg !958
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !959
  %call13 = call i32 @report_bug(i64 noundef %11, ptr noundef %12) #13, !dbg !960
  %cmp14 = icmp eq i32 %call13, 1, !dbg !961
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !962

if.then16:                                        ; preds = %if.then12
  %13 = load ptr, ptr %regs.addr, align 8, !dbg !963
  %ip17 = getelementptr inbounds %struct.pt_regs, ptr %13, i32 0, i32 16, !dbg !965
  %14 = load i64, ptr %ip17, align 8, !dbg !966
  %add = add i64 %14, 2, !dbg !966
  store i64 %add, ptr %ip17, align 8, !dbg !966
  br label %return, !dbg !967

if.end18:                                         ; preds = %if.then12
  br label %if.end19, !dbg !968

if.end19:                                         ; preds = %if.end18, %if.end9
  br label %fail, !dbg !969

fail:                                             ; preds = %if.end19, %if.then6
  call void @llvm.dbg.label(metadata !923), !dbg !970
  %15 = load i32, ptr %trapnr.addr, align 4, !dbg !971
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !972
  %17 = getelementptr inbounds %struct.pt_regs, ptr %16, i32 0, i32 17, !dbg !973
  %18 = load i16, ptr %17, align 8, !dbg !973
  %conv20 = zext i16 %18 to i64, !dbg !974
  %19 = load ptr, ptr %regs.addr, align 8, !dbg !975
  %ip21 = getelementptr inbounds %struct.pt_regs, ptr %19, i32 0, i32 16, !dbg !976
  %20 = load i64, ptr %ip21, align 8, !dbg !976
  %21 = load ptr, ptr %regs.addr, align 8, !dbg !977
  %orig_ax22 = getelementptr inbounds %struct.pt_regs, ptr %21, i32 0, i32 15, !dbg !978
  %22 = load i64, ptr %orig_ax22, align 8, !dbg !978
  %call23 = call i64 @read_cr2() #13, !dbg !979
  call void (ptr, ...) @early_printk(ptr noundef @.str.1, i32 noundef %15, i64 noundef %conv20, i64 noundef %20, i64 noundef %22, i64 noundef %call23) #13, !dbg !980
  %23 = load ptr, ptr %regs.addr, align 8, !dbg !981
  call void @show_regs(ptr noundef %23) #13, !dbg !982
  br label %halt_loop, !dbg !982

halt_loop:                                        ; preds = %fail, %if.then2
  call void @llvm.dbg.label(metadata !924), !dbg !983
  br label %while.body, !dbg !984

while.body:                                       ; preds = %halt_loop, %while.body
  call void @halt() #13, !dbg !985
  br label %while.body, !dbg !984, !llvm.loop !986

return:                                           ; preds = %if.then16, %if.then8, %if.then
  ret void, !dbg !989
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !990 dso_local i32 @report_bug(i64 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !993 dso_local void @early_printk(ptr noundef, ...) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @read_cr2() #7 align 16 !dbg !997 {
entry:
  %call = call i64 @native_read_cr2() #13, !dbg !1001
  ret i64 %call, !dbg !1002
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1003 dso_local void @show_regs(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @halt() #7 align 16 !dbg !1007 {
entry:
  call void @native_halt() #13, !dbg !1009
  ret void, !dbg !1010
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ex_fixup_addr(ptr noundef %x) #4 align 16 !dbg !1011 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1015, metadata !DIExpression()), !dbg !1016
  %0 = load ptr, ptr %x.addr, align 8, !dbg !1017
  %fixup = getelementptr inbounds %struct.exception_table_entry, ptr %0, i32 0, i32 1, !dbg !1018
  %1 = ptrtoint ptr %fixup to i64, !dbg !1019
  %2 = load ptr, ptr %x.addr, align 8, !dbg !1020
  %fixup1 = getelementptr inbounds %struct.exception_table_entry, ptr %2, i32 0, i32 1, !dbg !1021
  %3 = load i32, ptr %fixup1, align 4, !dbg !1021
  %conv = sext i32 %3 to i64, !dbg !1020
  %add = add i64 %1, %conv, !dbg !1022
  ret i64 %add, !dbg !1023
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gp_fault_address_ok(i64 noundef %fault_address) #0 align 16 !dbg !1024 {
entry:
  %retval = alloca i1, align 1
  %fault_address.addr = alloca i64, align 8
  store i64 %fault_address, ptr %fault_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fault_address.addr, metadata !1028, metadata !DIExpression()), !dbg !1029
  %0 = load i64, ptr %fault_address.addr, align 8, !dbg !1030
  %cmp = icmp sge i64 %0, 0, !dbg !1030
  br i1 %cmp, label %if.then, label %if.end, !dbg !1032

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !1033
  br label %return, !dbg !1033

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %fault_address.addr, align 8, !dbg !1034
  %sub = sub i64 %1, 4096, !dbg !1034
  store i64 %sub, ptr %fault_address.addr, align 8, !dbg !1034
  %2 = load i64, ptr %fault_address.addr, align 8, !dbg !1035
  %cmp1 = icmp sge i64 %2, 0, !dbg !1035
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1037

if.then2:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !1038
  br label %return, !dbg !1038

if.end3:                                          ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !1039
  br label %return, !dbg !1039

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !1040
  ret i1 %3, !dbg !1040
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1041 dso_local void @__warn_printk(ptr noundef, ...) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1043 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1051, metadata !DIExpression()), !dbg !1053
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1052, metadata !DIExpression()), !dbg !1054
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1055
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1056
  br i1 %1, label %cond.true, label %cond.false, !dbg !1056

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1057
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1058
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !1059
  %conv = zext i1 %call to i32, !dbg !1059
  br label %cond.end, !dbg !1056

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1060
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1061
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !1062
  %conv2 = zext i1 %call1 to i32, !dbg !1062
  br label %cond.end, !dbg !1056

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1056
  %tobool = icmp ne i32 %cond, 0, !dbg !1056
  ret i1 %tobool, !dbg !1063
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #7 align 16 !dbg !1064 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !1069, metadata !DIExpression()), !dbg !1072
  %0 = load i16, ptr %bit.addr, align 2, !dbg !1073
  %1 = load i16, ptr %bit.addr, align 2, !dbg !1074
  %conv = zext i16 %1 to i32, !dbg !1074
  %and = and i32 %conv, 7, !dbg !1075
  %shl = shl i32 1, %and, !dbg !1076
  %2 = load i16, ptr %bit.addr, align 2, !dbg !1077
  %conv1 = zext i16 %2 to i32, !dbg !1077
  %shr = ashr i32 %conv1, 3, !dbg !1078
  %idxprom = sext i32 %shr to i64, !dbg !1079
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !1079
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #12
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !1080, !srcloc !1081

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !1080

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !1070), !dbg !1082
  store i1 true, ptr %retval, align 1, !dbg !1083
  br label %return, !dbg !1083

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !1071), !dbg !1084
  store i1 false, ptr %retval, align 1, !dbg !1085
  br label %return, !dbg !1085

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !1086
  ret i1 %3, !dbg !1086
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1087 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1091, metadata !DIExpression()), !dbg !1093
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1092, metadata !DIExpression()), !dbg !1094
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1095
  %and = and i64 %0, 63, !dbg !1096
  %shl = shl i64 1, %and, !dbg !1097
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1098
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1099
  %shr = ashr i64 %2, 6, !dbg !1100
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1098
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1098
  %and1 = and i64 %shl, %3, !dbg !1101
  %cmp = icmp ne i64 %and1, 0, !dbg !1102
  ret i1 %cmp, !dbg !1103
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1104 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1106, metadata !DIExpression()), !dbg !1109
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1107, metadata !DIExpression()), !dbg !1110
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !1111
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1108, metadata !DIExpression()), !dbg !1112
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1113
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1114
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !1115, !srcloc !1116
  %3 = icmp ult i8 %2, 2, !dbg !1115
  call void @llvm.assume(i1 %3), !dbg !1115
  store i8 %2, ptr %oldbit, align 1, !dbg !1115
  %4 = load i8, ptr %oldbit, align 1, !dbg !1117, !range !502, !noundef !503
  %tobool = trunc i8 %4 to i1, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !1118
  ret i1 %tobool, !dbg !1119
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @instruction_pointer(ptr noundef %regs) #4 align 16 !dbg !1120 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !1124, metadata !DIExpression()), !dbg !1125
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !1126
  %ip = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 16, !dbg !1127
  %1 = load i64, ptr %ip, align 8, !dbg !1127
  ret i64 %1, !dbg !1128
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1129 dso_local void @fpu_reset_from_exception_fixup() #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1131 dso_local i32 @_printk(ptr noundef, ...) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1134 dso_local void @show_stack_regs(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pt_regs_nr(ptr noundef %regs, i32 noundef %nr) #4 align 16 !dbg !203 {
entry:
  %retval = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  %reg_offset = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !207, metadata !DIExpression()), !dbg !1136
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !208, metadata !DIExpression()), !dbg !1137
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg_offset) #12, !dbg !1138
  call void @llvm.dbg.declare(metadata ptr %reg_offset, metadata !209, metadata !DIExpression()), !dbg !1139
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !1140
  %1 = load i32, ptr %nr.addr, align 4, !dbg !1141
  %call = call i32 @pt_regs_offset(ptr noundef %0, i32 noundef %1) #13, !dbg !1142
  store i32 %call, ptr %reg_offset, align 4, !dbg !1139
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !210, metadata !DIExpression()), !dbg !1143
  %2 = load i32, ptr %reg_offset, align 4, !dbg !1143
  %cmp = icmp slt i32 %2, 0, !dbg !1143
  %lnot = xor i1 %cmp, true, !dbg !1143
  %lnot1 = xor i1 %lnot, true, !dbg !1143
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1143
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1143
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1144
  %tobool = icmp ne i32 %3, 0, !dbg !1144
  %lnot2 = xor i1 %tobool, true, !dbg !1144
  %lnot4 = xor i1 %lnot2, true, !dbg !1144
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !1144
  %conv = sext i32 %lnot.ext5 to i64, !dbg !1144
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1144
  %tobool6 = icmp ne i64 %expval, 0, !dbg !1144
  br i1 %tobool6, label %if.then, label %if.end, !dbg !1143

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1144

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !1145
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !213, metadata !DIExpression()), !dbg !1145
  store i32 2307, ptr %__flags, align 4, !dbg !1145
  br label %do.body7, !dbg !1145

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !1146

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !1146

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !1145

do.body8:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !1148
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 20, i32 %4, i64 12) #12, !dbg !1148, !srcloc !1150
  br label %do.cond9, !dbg !1148

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1148

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !1145

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !1151

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1151

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !1144
  br label %do.cond14, !dbg !1145

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !1145

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !1145

if.end:                                           ; preds = %do.end15, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !1143
  %tobool16 = icmp ne i32 %5, 0, !dbg !1143
  %lnot17 = xor i1 %tobool16, true, !dbg !1143
  %lnot19 = xor i1 %lnot17, true, !dbg !1143
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !1143
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !1143
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !1143
  store i64 %expval22, ptr %tmp, align 8, !dbg !1144
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !1153
  %6 = load i64, ptr %tmp, align 8, !dbg !1143
  %tobool23 = icmp ne i64 %6, 0, !dbg !1153
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1154

if.then24:                                        ; preds = %if.end
  store ptr @pt_regs_nr.__dummy, ptr %retval, align 8, !dbg !1155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1155

if.end25:                                         ; preds = %if.end
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !1156
  %8 = ptrtoint ptr %7 to i64, !dbg !1157
  %9 = load i32, ptr %reg_offset, align 4, !dbg !1158
  %conv26 = sext i32 %9 to i64, !dbg !1158
  %add = add i64 %8, %conv26, !dbg !1159
  %10 = inttoptr i64 %add to ptr, !dbg !1160
  store ptr %10, ptr %retval, align 8, !dbg !1161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1161

cleanup:                                          ; preds = %if.end25, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg_offset) #12, !dbg !1162
  %11 = load ptr, ptr %retval, align 8, !dbg !1162
  ret ptr %11, !dbg !1162
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1163 dso_local i32 @pt_regs_offset(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1167 dso_local i32 @insn_decode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1173 dso_local ptr @insn_get_addr_ref(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1176 dso_local ptr @insn_get_modrm_reg_ptr(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_cr2() #7 align 16 !dbg !1179 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !1182
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1181, metadata !DIExpression()), !dbg !1183
  %0 = call i64 asm sideeffect "mov %cr2,$0\0A\09", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) inttoptr (i64 4096 to ptr)) #12, !dbg !1184, !srcloc !1185
  store i64 %0, ptr %val, align 8, !dbg !1184
  %1 = load i64, ptr %val, align 8, !dbg !1186
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !1187
  ret i64 %1, !dbg !1188
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_halt() #7 align 16 !dbg !1189 {
entry:
  call void @mds_idle_clear_cpu_buffers() #13, !dbg !1190
  call void asm sideeffect "hlt", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !1191, !srcloc !1192
  ret void, !dbg !1193
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mds_idle_clear_cpu_buffers() #7 align 16 !dbg !1194 {
entry:
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #12, !dbg !1199
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !1196, metadata !DIExpression()), !dbg !1199
  %call = call zeroext i1 @arch_static_branch_jump(ptr noundef @mds_idle_clear, i1 noundef zeroext true) #13, !dbg !1200
  %lnot = xor i1 %call, true, !dbg !1200
  %frombool = zext i1 %lnot to i8, !dbg !1200
  store i8 %frombool, ptr %branch, align 1, !dbg !1200
  %0 = load i8, ptr %branch, align 1, !dbg !1199, !range !502, !noundef !503
  %tobool = trunc i8 %0 to i1, !dbg !1199
  %lnot1 = xor i1 %tobool, true, !dbg !1199
  %lnot2 = xor i1 %lnot1, true, !dbg !1199
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1199
  %conv = sext i32 %lnot.ext to i64, !dbg !1199
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1199
  store i64 %expval, ptr %tmp, align 8, !dbg !1203
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #12, !dbg !1204
  %1 = load i64, ptr %tmp, align 8, !dbg !1199
  %tobool3 = icmp ne i64 %1, 0, !dbg !1204
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1205

if.then:                                          ; preds = %entry
  call void @mds_clear_cpu_buffers() #13, !dbg !1206
  br label %if.end, !dbg !1206

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1207
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch_jump(ptr noundef %key, i1 noundef zeroext %branch) #7 align 16 !dbg !1208 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1240, metadata !DIExpression()), !dbg !1243
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !1241, metadata !DIExpression()), !dbg !1244
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1245
  %1 = load i8, ptr %branch.addr, align 1, !dbg !1246, !range !502, !noundef !503
  %tobool = trunc i8 %1 to i1, !dbg !1246
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i1 %tobool) #12
          to label %asm.fallthrough [label %l_yes], !dbg !1247, !srcloc !1248

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1249
  br label %return, !dbg !1249

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !1242), !dbg !1250
  store i1 true, ptr %retval, align 1, !dbg !1251
  br label %return, !dbg !1251

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !1252
  ret i1 %2, !dbg !1252
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mds_clear_cpu_buffers() #7 align 16 !dbg !218 {
entry:
  call void asm sideeffect "verw $0", "*m,~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) @mds_clear_cpu_buffers.ds) #12, !dbg !1253, !srcloc !1254
  ret void, !dbg !1255
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { noredzone noreturn }
attributes #15 = { cold noredzone }

!llvm.dbg.cu = !{!90}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/mm/extable.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e909364e734719fcfde55dbca3d7d07a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 22)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 360, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 62)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__already_done", scope: !14, file: !2, line: 161, type: !17, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "ex_handler_uaccess", scope: !2, file: !2, line: 157, type: !15, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !223)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !20, !29, !26, !34}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !18, line: 35, baseType: !19)
!18 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!19 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !23, line: 23, size: 96, elements: !24)
!23 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!24 = !{!25, !27, !28}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !22, file: !23, line: 24, baseType: !26, size: 32)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !22, file: !23, line: 24, baseType: !26, size: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !22, file: !23, line: 24, baseType: !26, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !31, line: 103, size: 1344, elements: !32)
!31 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!32 = !{!33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !70, !71, !72}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !30, file: !31, line: 109, baseType: !34, size: 64)
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !30, file: !31, line: 110, baseType: !34, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !30, file: !31, line: 111, baseType: !34, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !30, file: !31, line: 112, baseType: !34, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !30, file: !31, line: 113, baseType: !34, size: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !30, file: !31, line: 114, baseType: !34, size: 64, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !30, file: !31, line: 117, baseType: !34, size: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !30, file: !31, line: 118, baseType: !34, size: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !30, file: !31, line: 119, baseType: !34, size: 64, offset: 512)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !30, file: !31, line: 120, baseType: !34, size: 64, offset: 576)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !30, file: !31, line: 121, baseType: !34, size: 64, offset: 640)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !30, file: !31, line: 122, baseType: !34, size: 64, offset: 704)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !30, file: !31, line: 123, baseType: !34, size: 64, offset: 768)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !30, file: !31, line: 124, baseType: !34, size: 64, offset: 832)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !30, file: !31, line: 125, baseType: !34, size: 64, offset: 896)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !30, file: !31, line: 139, baseType: !34, size: 64, offset: 960)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !30, file: !31, line: 142, baseType: !34, size: 64, offset: 1024)
!51 = !DIDerivedType(tag: DW_TAG_member, scope: !30, file: !31, line: 144, baseType: !52, size: 64, offset: 1088)
!52 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !30, file: !31, line: 144, size: 64, elements: !53)
!53 = !{!54, !60, !64}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !52, file: !31, line: 146, baseType: !55, size: 16)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !56, line: 19, baseType: !57)
!56 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !58, line: 24, baseType: !59)
!58 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !52, file: !31, line: 148, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !56, line: 23, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !58, line: 31, baseType: !63)
!63 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !52, file: !31, line: 150, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !31, line: 59, size: 64, elements: !66)
!66 = !{!67, !68, !69}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !65, file: !31, line: 61, baseType: !61, size: 16, flags: DIFlagBitField, extraData: i64 0)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !65, file: !31, line: 63, baseType: !61, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !65, file: !31, line: 65, baseType: !61, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !30, file: !31, line: 153, baseType: !34, size: 64, offset: 1152)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !30, file: !31, line: 154, baseType: !34, size: 64, offset: 1216)
!72 = !DIDerivedType(tag: DW_TAG_member, scope: !30, file: !31, line: 156, baseType: !73, size: 64, offset: 1280)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !30, file: !31, line: 156, size: 64, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !73, file: !31, line: 158, baseType: !55, size: 16)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !73, file: !31, line: 160, baseType: !61, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !73, file: !31, line: 162, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !31, line: 69, size: 64, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !78, file: !31, line: 71, baseType: !61, size: 16, flags: DIFlagBitField, extraData: i64 0)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !78, file: !31, line: 73, baseType: !61, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !78, file: !31, line: 75, baseType: !61, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !78, file: !31, line: 77, baseType: !61, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !78, file: !31, line: 80, baseType: !61, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !31, line: 83, baseType: !61, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !78, file: !31, line: 86, baseType: !61, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !78, file: !31, line: 88, baseType: !61, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !78, file: !31, line: 93, baseType: !61, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !78, file: !31, line: 100, baseType: !61, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!90 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/mm/.extable.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/mm/extable\22 -D KBUILD_BASENAME=\22extable\22 -D KBUILD_MODNAME=\22extable\22 -D __KBUILD_MODNAME=kmod_extable -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/mm/extable.ll arch/x86/mm/extable.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !91, retainedTypes: !111, globals: !118, splitDebugInlining: false, nameTableKind: None)
!91 = !{!92, !98, !104}
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 10, baseType: !94, size: 32, elements: !95)
!93 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0)
!97 = !DIEnumerator(name: "true", value: 1)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bug_trap_type", file: !99, line: 9, baseType: !94, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90678d2f644c0a5a4005e4cc9a8b8472")
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "BUG_TRAP_TYPE_NONE", value: 0)
!102 = !DIEnumerator(name: "BUG_TRAP_TYPE_WARN", value: 1)
!103 = !DIEnumerator(name: "BUG_TRAP_TYPE_BUG", value: 2)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "insn_mode", file: !105, line: 143, baseType: !94, size: 32, elements: !106)
!105 = !DIFile(filename: "./arch/x86/include/asm/insn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca1df7461e09b68408eb75c2e122471d")
!106 = !{!107, !108, !109, !110}
!107 = !DIEnumerator(name: "INSN_MODE_32", value: 0)
!108 = !DIEnumerator(name: "INSN_MODE_64", value: 1)
!109 = !DIEnumerator(name: "INSN_MODE_KERN", value: 2)
!110 = !DIEnumerator(name: "INSN_NUM_MODES", value: 3)
!111 = !{!26, !94, !34, !112, !113, !114, !116, !117}
!112 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!118 = !{!0, !7, !12, !119, !124, !145, !165, !170, !189, !194, !196, !201, !216}
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 64)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "__already_done", scope: !126, file: !2, line: 169, type: !17, isLocal: true, isDefinition: true)
!126 = distinct !DISubprogram(name: "ex_handler_copy", scope: !2, file: !2, line: 166, type: !127, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{!17, !20, !29, !26}
!129 = !{!130, !131, !132, !133, !135, !138, !139, !141}
!130 = !DILocalVariable(name: "fixup", arg: 1, scope: !126, file: !2, line: 166, type: !20)
!131 = !DILocalVariable(name: "regs", arg: 2, scope: !126, file: !2, line: 167, type: !29)
!132 = !DILocalVariable(name: "trapnr", arg: 3, scope: !126, file: !2, line: 167, type: !26)
!133 = !DILocalVariable(name: "__ret_do_once", scope: !134, file: !2, line: 169, type: !17)
!134 = distinct !DILexicalBlock(scope: !126, file: !2, line: 169, column: 2)
!135 = !DILocalVariable(name: "__ret_cond", scope: !136, file: !2, line: 169, type: !17)
!136 = distinct !DILexicalBlock(scope: !137, file: !2, line: 169, column: 2)
!137 = distinct !DILexicalBlock(scope: !134, file: !2, line: 169, column: 2)
!138 = !DILocalVariable(name: "__ret_once", scope: !136, file: !2, line: 169, type: !17)
!139 = !DILocalVariable(name: "__ret_warn_on", scope: !140, file: !2, line: 169, type: !26)
!140 = distinct !DILexicalBlock(scope: !137, file: !2, line: 169, column: 2)
!141 = !DILocalVariable(name: "__flags", scope: !142, file: !2, line: 169, type: !26)
!142 = distinct !DILexicalBlock(scope: !143, file: !2, line: 169, column: 2)
!143 = distinct !DILexicalBlock(scope: !144, file: !2, line: 169, column: 2)
!144 = distinct !DILexicalBlock(scope: !140, file: !2, line: 169, column: 2)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "__already_done", scope: !147, file: !2, line: 126, type: !17, isLocal: true, isDefinition: true)
!147 = distinct !DISubprogram(name: "ex_handler_fprestore", scope: !2, file: !2, line: 121, type: !148, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !150)
!148 = !DISubroutineType(types: !149)
!149 = !{!17, !20, !29}
!150 = !{!151, !152, !153, !155, !158, !159, !161}
!151 = !DILocalVariable(name: "fixup", arg: 1, scope: !147, file: !2, line: 121, type: !20)
!152 = !DILocalVariable(name: "regs", arg: 2, scope: !147, file: !2, line: 122, type: !29)
!153 = !DILocalVariable(name: "__ret_do_once", scope: !154, file: !2, line: 126, type: !17)
!154 = distinct !DILexicalBlock(scope: !147, file: !2, line: 126, column: 2)
!155 = !DILocalVariable(name: "__ret_cond", scope: !156, file: !2, line: 126, type: !17)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 126, column: 2)
!157 = distinct !DILexicalBlock(scope: !154, file: !2, line: 126, column: 2)
!158 = !DILocalVariable(name: "__ret_once", scope: !156, file: !2, line: 126, type: !17)
!159 = !DILocalVariable(name: "__ret_warn_on", scope: !160, file: !2, line: 126, type: !26)
!160 = distinct !DILexicalBlock(scope: !157, file: !2, line: 126, column: 2)
!161 = !DILocalVariable(name: "__flags", scope: !162, file: !2, line: 126, type: !26)
!162 = distinct !DILexicalBlock(scope: !163, file: !2, line: 126, column: 2)
!163 = distinct !DILexicalBlock(scope: !164, file: !2, line: 126, column: 2)
!164 = distinct !DILexicalBlock(scope: !160, file: !2, line: 126, column: 2)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 61)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "__already_done", scope: !172, file: !2, line: 176, type: !17, isLocal: true, isDefinition: true)
!172 = distinct !DISubprogram(name: "ex_handler_msr", scope: !2, file: !2, line: 173, type: !173, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !175)
!173 = !DISubroutineType(types: !174)
!174 = !{!17, !20, !29, !17, !17, !26}
!175 = !{!176, !177, !178, !179, !180, !181, !184, !185, !188}
!176 = !DILocalVariable(name: "fixup", arg: 1, scope: !172, file: !2, line: 173, type: !20)
!177 = !DILocalVariable(name: "regs", arg: 2, scope: !172, file: !2, line: 174, type: !29)
!178 = !DILocalVariable(name: "wrmsr", arg: 3, scope: !172, file: !2, line: 174, type: !17)
!179 = !DILocalVariable(name: "safe", arg: 4, scope: !172, file: !2, line: 174, type: !17)
!180 = !DILocalVariable(name: "reg", arg: 5, scope: !172, file: !2, line: 174, type: !26)
!181 = !DILocalVariable(name: "__ret_cond", scope: !182, file: !2, line: 176, type: !17)
!182 = distinct !DILexicalBlock(scope: !183, file: !2, line: 176, column: 6)
!183 = distinct !DILexicalBlock(scope: !172, file: !2, line: 176, column: 6)
!184 = !DILocalVariable(name: "__ret_once", scope: !182, file: !2, line: 176, type: !17)
!185 = !DILocalVariable(name: "__ret_cond", scope: !186, file: !2, line: 183, type: !17)
!186 = distinct !DILexicalBlock(scope: !187, file: !2, line: 183, column: 6)
!187 = distinct !DILexicalBlock(scope: !172, file: !2, line: 183, column: 6)
!188 = !DILocalVariable(name: "__ret_once", scope: !186, file: !2, line: 183, type: !17)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 744, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 93)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "__already_done", scope: !172, file: !2, line: 183, type: !17, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 67)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "__dummy", scope: !203, file: !2, line: 18, type: !34, isLocal: true, isDefinition: true)
!203 = distinct !DISubprogram(name: "pt_regs_nr", scope: !2, file: !2, line: 15, type: !204, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{!113, !29, !26}
!206 = !{!207, !208, !209, !210, !213}
!207 = !DILocalVariable(name: "regs", arg: 1, scope: !203, file: !2, line: 15, type: !29)
!208 = !DILocalVariable(name: "nr", arg: 2, scope: !203, file: !2, line: 15, type: !26)
!209 = !DILocalVariable(name: "reg_offset", scope: !203, file: !2, line: 17, type: !26)
!210 = !DILocalVariable(name: "__ret_warn_on", scope: !211, file: !2, line: 20, type: !26)
!211 = distinct !DILexicalBlock(scope: !212, file: !2, line: 20, column: 6)
!212 = distinct !DILexicalBlock(scope: !203, file: !2, line: 20, column: 6)
!213 = !DILocalVariable(name: "__flags", scope: !214, file: !2, line: 20, type: !26)
!214 = distinct !DILexicalBlock(scope: !215, file: !2, line: 20, column: 6)
!215 = distinct !DILexicalBlock(scope: !211, file: !2, line: 20, column: 6)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "ds", scope: !218, file: !219, line: 608, type: !222, isLocal: true, isDefinition: true)
!218 = distinct !DISubprogram(name: "mds_clear_cpu_buffers", scope: !219, file: !219, line: 606, type: !220, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90)
!219 = !DIFile(filename: "./arch/x86/include/asm/nospec-branch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f9617eaa9a9e58d8d33cc8c440e36ce0")
!220 = !DISubroutineType(types: !221)
!221 = !{null}
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!223 = !{!224, !225, !226, !227, !228, !230, !233, !234, !236}
!224 = !DILocalVariable(name: "fixup", arg: 1, scope: !14, file: !2, line: 157, type: !20)
!225 = !DILocalVariable(name: "regs", arg: 2, scope: !14, file: !2, line: 158, type: !29)
!226 = !DILocalVariable(name: "trapnr", arg: 3, scope: !14, file: !2, line: 158, type: !26)
!227 = !DILocalVariable(name: "fault_address", arg: 4, scope: !14, file: !2, line: 159, type: !34)
!228 = !DILocalVariable(name: "__ret_do_once", scope: !229, file: !2, line: 161, type: !17)
!229 = distinct !DILexicalBlock(scope: !14, file: !2, line: 161, column: 2)
!230 = !DILocalVariable(name: "__ret_cond", scope: !231, file: !2, line: 161, type: !17)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 161, column: 2)
!232 = distinct !DILexicalBlock(scope: !229, file: !2, line: 161, column: 2)
!233 = !DILocalVariable(name: "__ret_once", scope: !231, file: !2, line: 161, type: !17)
!234 = !DILocalVariable(name: "__ret_warn_on", scope: !235, file: !2, line: 161, type: !26)
!235 = distinct !DILexicalBlock(scope: !232, file: !2, line: 161, column: 2)
!236 = !DILocalVariable(name: "__flags", scope: !237, file: !2, line: 161, type: !26)
!237 = distinct !DILexicalBlock(scope: !238, file: !2, line: 161, column: 2)
!238 = distinct !DILexicalBlock(scope: !239, file: !2, line: 161, column: 2)
!239 = distinct !DILexicalBlock(scope: !235, file: !2, line: 161, column: 2)
!240 = !{i32 7, !"Dwarf Version", i32 5}
!241 = !{i32 2, !"Debug Info Version", i32 3}
!242 = !{i32 1, !"wchar_size", i32 2}
!243 = !{i32 8, !"cf-protection-branch", i32 1}
!244 = !{i32 4, !"function_return_thunk_extern", i32 1}
!245 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!246 = !{i32 1, !"Code Model", i32 2}
!247 = !{i32 1, !"override-stack-alignment", i32 8}
!248 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!249 = distinct !DISubprogram(name: "ex_get_fixup_type", scope: !2, file: !2, line: 226, type: !250, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !252)
!250 = !DISubroutineType(types: !251)
!251 = !{!26, !34}
!252 = !{!253, !254}
!253 = !DILocalVariable(name: "ip", arg: 1, scope: !249, file: !2, line: 226, type: !34)
!254 = !DILocalVariable(name: "e", scope: !249, file: !2, line: 228, type: !20)
!255 = !DILocation(line: 226, column: 37, scope: !249)
!256 = !DILocation(line: 228, column: 2, scope: !249)
!257 = !DILocation(line: 228, column: 38, scope: !249)
!258 = !DILocation(line: 228, column: 66, scope: !249)
!259 = !DILocation(line: 228, column: 42, scope: !249)
!260 = !DILocation(line: 230, column: 9, scope: !249)
!261 = !DILocation(line: 230, column: 13, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !2, line: 230, column: 13)
!263 = distinct !DILexicalBlock(scope: !249, file: !2, line: 230, column: 13)
!264 = !DILocation(line: 230, column: 13, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !2, line: 230, column: 13)
!266 = !DILocation(line: 230, column: 13, scope: !267)
!267 = distinct !DILexicalBlock(scope: !262, file: !2, line: 230, column: 13)
!268 = !DILocation(line: 230, column: 13, scope: !269)
!269 = distinct !DILexicalBlock(scope: !262, file: !2, line: 230, column: 13)
!270 = !DILocation(line: 230, column: 13, scope: !271)
!271 = distinct !DILexicalBlock(scope: !262, file: !2, line: 230, column: 13)
!272 = !DILocation(line: 230, column: 13, scope: !273)
!273 = distinct !DILexicalBlock(scope: !262, file: !2, line: 230, column: 13)
!274 = !DILocation(line: 230, column: 13, scope: !263)
!275 = !DILocation(line: 231, column: 1, scope: !249)
!276 = !DILocation(line: 230, column: 2, scope: !249)
!277 = !DISubprogram(name: "search_exception_tables", scope: !278, file: !278, line: 21, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DIFile(filename: "./include/linux/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1481929230e3bbd9bb07205c0c5f22e")
!279 = !DISubroutineType(types: !280)
!280 = !{!20, !34}
!281 = distinct !DISubprogram(name: "fixup_exception", scope: !2, file: !2, line: 233, type: !282, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{!26, !29, !26, !34, !34}
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292}
!285 = !DILocalVariable(name: "regs", arg: 1, scope: !281, file: !2, line: 233, type: !29)
!286 = !DILocalVariable(name: "trapnr", arg: 2, scope: !281, file: !2, line: 233, type: !26)
!287 = !DILocalVariable(name: "error_code", arg: 3, scope: !281, file: !2, line: 233, type: !34)
!288 = !DILocalVariable(name: "fault_addr", arg: 4, scope: !281, file: !2, line: 234, type: !34)
!289 = !DILocalVariable(name: "e", scope: !281, file: !2, line: 236, type: !20)
!290 = !DILocalVariable(name: "type", scope: !281, file: !2, line: 237, type: !26)
!291 = !DILocalVariable(name: "reg", scope: !281, file: !2, line: 237, type: !26)
!292 = !DILocalVariable(name: "imm", scope: !281, file: !2, line: 237, type: !26)
!293 = !DILocation(line: 233, column: 37, scope: !281)
!294 = !DILocation(line: 233, column: 47, scope: !281)
!295 = !DILocation(line: 233, column: 69, scope: !281)
!296 = !DILocation(line: 234, column: 21, scope: !281)
!297 = !DILocation(line: 236, column: 2, scope: !281)
!298 = !DILocation(line: 236, column: 38, scope: !281)
!299 = !DILocation(line: 237, column: 2, scope: !281)
!300 = !DILocation(line: 237, column: 6, scope: !281)
!301 = !DILocation(line: 237, column: 12, scope: !281)
!302 = !DILocation(line: 237, column: 17, scope: !281)
!303 = !DILocation(line: 253, column: 30, scope: !281)
!304 = !DILocation(line: 253, column: 36, scope: !281)
!305 = !DILocation(line: 253, column: 6, scope: !281)
!306 = !DILocation(line: 253, column: 4, scope: !281)
!307 = !DILocation(line: 254, column: 7, scope: !308)
!308 = distinct !DILexicalBlock(scope: !281, file: !2, line: 254, column: 6)
!309 = !DILocation(line: 254, column: 6, scope: !281)
!310 = !DILocation(line: 255, column: 3, scope: !308)
!311 = !DILocation(line: 257, column: 9, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !2, line: 257, column: 9)
!313 = distinct !DILexicalBlock(scope: !281, file: !2, line: 257, column: 9)
!314 = !DILocation(line: 257, column: 9, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !2, line: 257, column: 9)
!316 = !DILocation(line: 257, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !312, file: !2, line: 257, column: 9)
!318 = !DILocation(line: 257, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !312, file: !2, line: 257, column: 9)
!320 = !DILocation(line: 257, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !312, file: !2, line: 257, column: 9)
!322 = !DILocation(line: 257, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !312, file: !2, line: 257, column: 9)
!324 = !DILocation(line: 257, column: 9, scope: !313)
!325 = !DILocation(line: 257, column: 7, scope: !281)
!326 = !DILocation(line: 258, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !2, line: 258, column: 9)
!328 = distinct !DILexicalBlock(scope: !281, file: !2, line: 258, column: 9)
!329 = !DILocation(line: 258, column: 9, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !2, line: 258, column: 9)
!331 = !DILocation(line: 258, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !2, line: 258, column: 9)
!333 = !DILocation(line: 258, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !327, file: !2, line: 258, column: 9)
!335 = !DILocation(line: 258, column: 9, scope: !336)
!336 = distinct !DILexicalBlock(scope: !327, file: !2, line: 258, column: 9)
!337 = !DILocation(line: 258, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !327, file: !2, line: 258, column: 9)
!339 = !DILocation(line: 258, column: 9, scope: !328)
!340 = !DILocation(line: 258, column: 7, scope: !281)
!341 = !DILocation(line: 259, column: 9, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !2, line: 259, column: 9)
!343 = distinct !DILexicalBlock(scope: !281, file: !2, line: 259, column: 9)
!344 = !DILocation(line: 259, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !2, line: 259, column: 9)
!346 = !DILocation(line: 259, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !342, file: !2, line: 259, column: 9)
!348 = !DILocation(line: 259, column: 9, scope: !349)
!349 = distinct !DILexicalBlock(scope: !342, file: !2, line: 259, column: 9)
!350 = !DILocation(line: 259, column: 9, scope: !351)
!351 = distinct !DILexicalBlock(scope: !342, file: !2, line: 259, column: 9)
!352 = !DILocation(line: 259, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !342, file: !2, line: 259, column: 9)
!354 = !DILocation(line: 259, column: 9, scope: !343)
!355 = !DILocation(line: 259, column: 7, scope: !281)
!356 = !DILocation(line: 261, column: 10, scope: !281)
!357 = !DILocation(line: 261, column: 2, scope: !281)
!358 = !DILocation(line: 264, column: 29, scope: !359)
!359 = distinct !DILexicalBlock(scope: !281, file: !2, line: 261, column: 16)
!360 = !DILocation(line: 264, column: 32, scope: !359)
!361 = !DILocation(line: 264, column: 10, scope: !359)
!362 = !DILocation(line: 264, column: 3, scope: !359)
!363 = !DILocation(line: 267, column: 27, scope: !359)
!364 = !DILocation(line: 267, column: 30, scope: !359)
!365 = !DILocation(line: 267, column: 36, scope: !359)
!366 = !DILocation(line: 267, column: 10, scope: !359)
!367 = !DILocation(line: 267, column: 3, scope: !359)
!368 = !DILocation(line: 269, column: 29, scope: !359)
!369 = !DILocation(line: 269, column: 32, scope: !359)
!370 = !DILocation(line: 269, column: 38, scope: !359)
!371 = !DILocation(line: 269, column: 46, scope: !359)
!372 = !DILocation(line: 269, column: 10, scope: !359)
!373 = !DILocation(line: 269, column: 3, scope: !359)
!374 = !DILocation(line: 271, column: 26, scope: !359)
!375 = !DILocation(line: 271, column: 29, scope: !359)
!376 = !DILocation(line: 271, column: 35, scope: !359)
!377 = !DILocation(line: 271, column: 10, scope: !359)
!378 = !DILocation(line: 271, column: 3, scope: !359)
!379 = !DILocation(line: 273, column: 30, scope: !359)
!380 = !DILocation(line: 273, column: 33, scope: !359)
!381 = !DILocation(line: 273, column: 10, scope: !359)
!382 = !DILocation(line: 273, column: 3, scope: !359)
!383 = !DILocation(line: 275, column: 31, scope: !359)
!384 = !DILocation(line: 275, column: 34, scope: !359)
!385 = !DILocation(line: 275, column: 10, scope: !359)
!386 = !DILocation(line: 275, column: 3, scope: !359)
!387 = !DILocation(line: 277, column: 25, scope: !359)
!388 = !DILocation(line: 277, column: 28, scope: !359)
!389 = !DILocation(line: 277, column: 10, scope: !359)
!390 = !DILocation(line: 277, column: 3, scope: !359)
!391 = !DILocation(line: 279, column: 25, scope: !359)
!392 = !DILocation(line: 279, column: 28, scope: !359)
!393 = !DILocation(line: 279, column: 47, scope: !359)
!394 = !DILocation(line: 279, column: 10, scope: !359)
!395 = !DILocation(line: 279, column: 3, scope: !359)
!396 = !DILocation(line: 281, column: 25, scope: !359)
!397 = !DILocation(line: 281, column: 28, scope: !359)
!398 = !DILocation(line: 281, column: 48, scope: !359)
!399 = !DILocation(line: 281, column: 10, scope: !359)
!400 = !DILocation(line: 281, column: 3, scope: !359)
!401 = !DILocation(line: 283, column: 25, scope: !359)
!402 = !DILocation(line: 283, column: 28, scope: !359)
!403 = !DILocation(line: 283, column: 46, scope: !359)
!404 = !DILocation(line: 283, column: 10, scope: !359)
!405 = !DILocation(line: 283, column: 3, scope: !359)
!406 = !DILocation(line: 285, column: 25, scope: !359)
!407 = !DILocation(line: 285, column: 28, scope: !359)
!408 = !DILocation(line: 285, column: 47, scope: !359)
!409 = !DILocation(line: 285, column: 10, scope: !359)
!410 = !DILocation(line: 285, column: 3, scope: !359)
!411 = !DILocation(line: 287, column: 22, scope: !359)
!412 = !DILocation(line: 287, column: 3, scope: !359)
!413 = !DILocation(line: 290, column: 22, scope: !359)
!414 = !DILocation(line: 290, column: 3, scope: !359)
!415 = !DILocation(line: 293, column: 3, scope: !359)
!416 = !DILocation(line: 293, column: 9, scope: !359)
!417 = !DILocation(line: 293, column: 12, scope: !359)
!418 = !DILocation(line: 296, column: 29, scope: !359)
!419 = !DILocation(line: 296, column: 32, scope: !359)
!420 = !DILocation(line: 296, column: 38, scope: !359)
!421 = !DILocation(line: 296, column: 43, scope: !359)
!422 = !DILocation(line: 296, column: 10, scope: !359)
!423 = !DILocation(line: 296, column: 3, scope: !359)
!424 = !DILocation(line: 298, column: 25, scope: !359)
!425 = !DILocation(line: 298, column: 28, scope: !359)
!426 = !DILocation(line: 298, column: 34, scope: !359)
!427 = !DILocation(line: 298, column: 10, scope: !359)
!428 = !DILocation(line: 298, column: 3, scope: !359)
!429 = !DILocation(line: 300, column: 31, scope: !359)
!430 = !DILocation(line: 300, column: 34, scope: !359)
!431 = !DILocation(line: 300, column: 40, scope: !359)
!432 = !DILocation(line: 300, column: 48, scope: !359)
!433 = !DILocation(line: 300, column: 60, scope: !359)
!434 = !DILocation(line: 300, column: 65, scope: !359)
!435 = !DILocation(line: 300, column: 10, scope: !359)
!436 = !DILocation(line: 300, column: 3, scope: !359)
!437 = !DILocation(line: 302, column: 29, scope: !359)
!438 = !DILocation(line: 302, column: 32, scope: !359)
!439 = !DILocation(line: 302, column: 38, scope: !359)
!440 = !DILocation(line: 302, column: 10, scope: !359)
!441 = !DILocation(line: 302, column: 3, scope: !359)
!442 = !DILocation(line: 304, column: 2, scope: !281)
!443 = !DILocation(line: 304, column: 2, scope: !444)
!444 = distinct !DILexicalBlock(scope: !281, file: !2, line: 304, column: 2)
!445 = !DILocation(line: 304, column: 2, scope: !446)
!446 = distinct !DILexicalBlock(scope: !444, file: !2, line: 304, column: 2)
!447 = !DILocation(line: 304, column: 2, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !2, line: 304, column: 2)
!449 = !{i64 2155903328, i64 2155903357, i64 2155903403, i64 2155903461, i64 2155903515, i64 2155903569, i64 2155903624, i64 2155903655}
!450 = !DILocation(line: 305, column: 1, scope: !281)
!451 = distinct !DISubprogram(name: "ex_handler_default", scope: !2, file: !2, line: 32, type: !148, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !452)
!452 = !{!453, !454}
!453 = !DILocalVariable(name: "e", arg: 1, scope: !451, file: !2, line: 32, type: !20)
!454 = !DILocalVariable(name: "regs", arg: 2, scope: !451, file: !2, line: 33, type: !29)
!455 = !DILocation(line: 32, column: 68, scope: !451)
!456 = !DILocation(line: 33, column: 27, scope: !451)
!457 = !DILocation(line: 35, column: 6, scope: !458)
!458 = distinct !DILexicalBlock(scope: !451, file: !2, line: 35, column: 6)
!459 = !DILocation(line: 35, column: 9, scope: !458)
!460 = !DILocation(line: 35, column: 14, scope: !458)
!461 = !DILocation(line: 35, column: 6, scope: !451)
!462 = !DILocation(line: 36, column: 3, scope: !458)
!463 = !DILocation(line: 36, column: 9, scope: !458)
!464 = !DILocation(line: 36, column: 12, scope: !458)
!465 = !DILocation(line: 37, column: 6, scope: !466)
!466 = distinct !DILexicalBlock(scope: !451, file: !2, line: 37, column: 6)
!467 = !DILocation(line: 37, column: 9, scope: !466)
!468 = !DILocation(line: 37, column: 14, scope: !466)
!469 = !DILocation(line: 37, column: 6, scope: !451)
!470 = !DILocation(line: 38, column: 3, scope: !466)
!471 = !DILocation(line: 38, column: 9, scope: !466)
!472 = !DILocation(line: 38, column: 12, scope: !466)
!473 = !DILocation(line: 40, column: 27, scope: !451)
!474 = !DILocation(line: 40, column: 13, scope: !451)
!475 = !DILocation(line: 40, column: 2, scope: !451)
!476 = !DILocation(line: 40, column: 8, scope: !451)
!477 = !DILocation(line: 40, column: 11, scope: !451)
!478 = !DILocation(line: 41, column: 2, scope: !451)
!479 = distinct !DISubprogram(name: "ex_handler_fault", scope: !2, file: !2, line: 97, type: !127, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !480)
!480 = !{!481, !482, !483}
!481 = !DILocalVariable(name: "fixup", arg: 1, scope: !479, file: !2, line: 97, type: !20)
!482 = !DILocalVariable(name: "regs", arg: 2, scope: !479, file: !2, line: 98, type: !29)
!483 = !DILocalVariable(name: "trapnr", arg: 3, scope: !479, file: !2, line: 98, type: !26)
!484 = !DILocation(line: 97, column: 66, scope: !479)
!485 = !DILocation(line: 98, column: 25, scope: !479)
!486 = !DILocation(line: 98, column: 35, scope: !479)
!487 = !DILocation(line: 100, column: 13, scope: !479)
!488 = !DILocation(line: 100, column: 2, scope: !479)
!489 = !DILocation(line: 100, column: 8, scope: !479)
!490 = !DILocation(line: 100, column: 11, scope: !479)
!491 = !DILocation(line: 101, column: 28, scope: !479)
!492 = !DILocation(line: 101, column: 35, scope: !479)
!493 = !DILocation(line: 101, column: 9, scope: !479)
!494 = !DILocation(line: 101, column: 2, scope: !479)
!495 = !DILocation(line: 157, column: 68, scope: !14)
!496 = !DILocation(line: 158, column: 27, scope: !14)
!497 = !DILocation(line: 158, column: 37, scope: !14)
!498 = !DILocation(line: 159, column: 25, scope: !14)
!499 = !DILocation(line: 161, column: 2, scope: !229)
!500 = !DILocation(line: 0, scope: !229)
!501 = !DILocation(line: 161, column: 2, scope: !231)
!502 = !{i8 0, i8 2}
!503 = !{}
!504 = !DILocation(line: 161, column: 2, scope: !505)
!505 = distinct !DILexicalBlock(scope: !231, file: !2, line: 161, column: 2)
!506 = !DILocation(line: 0, scope: !505)
!507 = !DILocation(line: 161, column: 2, scope: !508)
!508 = distinct !DILexicalBlock(scope: !505, file: !2, line: 161, column: 2)
!509 = !DILocation(line: 161, column: 2, scope: !232)
!510 = !DILocation(line: 161, column: 2, scope: !235)
!511 = !DILocation(line: 161, column: 2, scope: !239)
!512 = !DILocation(line: 161, column: 2, scope: !238)
!513 = !DILocation(line: 161, column: 2, scope: !514)
!514 = distinct !DILexicalBlock(scope: !238, file: !2, line: 161, column: 2)
!515 = !DILocation(line: 161, column: 2, scope: !237)
!516 = !DILocation(line: 161, column: 2, scope: !517)
!517 = distinct !DILexicalBlock(scope: !237, file: !2, line: 161, column: 2)
!518 = !DILocation(line: 161, column: 2, scope: !519)
!519 = distinct !DILexicalBlock(scope: !237, file: !2, line: 161, column: 2)
!520 = !{i64 2155821538, i64 2155821567, i64 2155821613, i64 2155821671, i64 2155821725, i64 2155821779, i64 2155821834, i64 2155821865, i64 2155822173, i64 2155822179, i64 2155822226, i64 2155822249, i64 2155822275}
!521 = !DILocation(line: 161, column: 2, scope: !522)
!522 = distinct !DILexicalBlock(scope: !237, file: !2, line: 161, column: 2)
!523 = !DILocation(line: 161, column: 2, scope: !524)
!524 = distinct !DILexicalBlock(scope: !238, file: !2, line: 161, column: 2)
!525 = !DILocation(line: 161, column: 2, scope: !14)
!526 = !DILocation(line: 163, column: 28, scope: !14)
!527 = !DILocation(line: 163, column: 35, scope: !14)
!528 = !DILocation(line: 163, column: 9, scope: !14)
!529 = !DILocation(line: 163, column: 2, scope: !14)
!530 = !DILocation(line: 166, column: 65, scope: !126)
!531 = !DILocation(line: 167, column: 24, scope: !126)
!532 = !DILocation(line: 167, column: 34, scope: !126)
!533 = !DILocation(line: 169, column: 2, scope: !134)
!534 = !DILocation(line: 169, column: 2, scope: !136)
!535 = !DILocation(line: 169, column: 2, scope: !536)
!536 = distinct !DILexicalBlock(scope: !136, file: !2, line: 169, column: 2)
!537 = !DILocation(line: 0, scope: !536)
!538 = !DILocation(line: 169, column: 2, scope: !539)
!539 = distinct !DILexicalBlock(scope: !536, file: !2, line: 169, column: 2)
!540 = !DILocation(line: 169, column: 2, scope: !137)
!541 = !DILocation(line: 169, column: 2, scope: !140)
!542 = !DILocation(line: 169, column: 2, scope: !144)
!543 = !DILocation(line: 169, column: 2, scope: !143)
!544 = !DILocation(line: 169, column: 2, scope: !545)
!545 = distinct !DILexicalBlock(scope: !143, file: !2, line: 169, column: 2)
!546 = !DILocation(line: 169, column: 2, scope: !142)
!547 = !DILocation(line: 169, column: 2, scope: !548)
!548 = distinct !DILexicalBlock(scope: !142, file: !2, line: 169, column: 2)
!549 = !DILocation(line: 169, column: 2, scope: !550)
!550 = distinct !DILexicalBlock(scope: !142, file: !2, line: 169, column: 2)
!551 = !{i64 2155824268, i64 2155824297, i64 2155824343, i64 2155824401, i64 2155824455, i64 2155824509, i64 2155824564, i64 2155824595, i64 2155824903, i64 2155824909, i64 2155824956, i64 2155824979, i64 2155825005}
!552 = !DILocation(line: 169, column: 2, scope: !553)
!553 = distinct !DILexicalBlock(scope: !142, file: !2, line: 169, column: 2)
!554 = !DILocation(line: 169, column: 2, scope: !555)
!555 = distinct !DILexicalBlock(scope: !143, file: !2, line: 169, column: 2)
!556 = !DILocation(line: 169, column: 2, scope: !126)
!557 = !DILocation(line: 170, column: 26, scope: !126)
!558 = !DILocation(line: 170, column: 33, scope: !126)
!559 = !DILocation(line: 170, column: 39, scope: !126)
!560 = !DILocation(line: 170, column: 9, scope: !126)
!561 = !DILocation(line: 170, column: 2, scope: !126)
!562 = distinct !DISubprogram(name: "ex_handler_clear_fs", scope: !2, file: !2, line: 201, type: !148, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !563)
!563 = !{!564, !565}
!564 = !DILocalVariable(name: "fixup", arg: 1, scope: !562, file: !2, line: 201, type: !20)
!565 = !DILocalVariable(name: "regs", arg: 2, scope: !562, file: !2, line: 202, type: !29)
!566 = !DILocation(line: 201, column: 69, scope: !562)
!567 = !DILocation(line: 202, column: 21, scope: !562)
!568 = !DILocation(line: 204, column: 6, scope: !562)
!569 = !DILocation(line: 204, column: 6, scope: !570)
!570 = distinct !DILexicalBlock(scope: !562, file: !2, line: 204, column: 6)
!571 = !DILocation(line: 205, column: 3, scope: !570)
!572 = !{i64 6094}
!573 = !DILocation(line: 206, column: 2, scope: !562)
!574 = !{i64 6147}
!575 = !DILocation(line: 207, column: 28, scope: !562)
!576 = !DILocation(line: 207, column: 35, scope: !562)
!577 = !DILocation(line: 207, column: 9, scope: !562)
!578 = !DILocation(line: 207, column: 2, scope: !562)
!579 = !DILocation(line: 121, column: 70, scope: !147)
!580 = !DILocation(line: 122, column: 22, scope: !147)
!581 = !DILocation(line: 124, column: 27, scope: !147)
!582 = !DILocation(line: 124, column: 13, scope: !147)
!583 = !DILocation(line: 124, column: 2, scope: !147)
!584 = !DILocation(line: 124, column: 8, scope: !147)
!585 = !DILocation(line: 124, column: 11, scope: !147)
!586 = !DILocation(line: 126, column: 2, scope: !154)
!587 = !DILocation(line: 126, column: 2, scope: !156)
!588 = !DILocation(line: 126, column: 2, scope: !589)
!589 = distinct !DILexicalBlock(scope: !156, file: !2, line: 126, column: 2)
!590 = !DILocation(line: 0, scope: !589)
!591 = !DILocation(line: 126, column: 2, scope: !592)
!592 = distinct !DILexicalBlock(scope: !589, file: !2, line: 126, column: 2)
!593 = !DILocation(line: 126, column: 2, scope: !157)
!594 = !DILocation(line: 126, column: 2, scope: !160)
!595 = !DILocation(line: 126, column: 2, scope: !164)
!596 = !DILocation(line: 126, column: 2, scope: !163)
!597 = !DILocation(line: 126, column: 2, scope: !598)
!598 = distinct !DILexicalBlock(scope: !163, file: !2, line: 126, column: 2)
!599 = !DILocation(line: 126, column: 2, scope: !162)
!600 = !DILocation(line: 126, column: 2, scope: !601)
!601 = distinct !DILexicalBlock(scope: !162, file: !2, line: 126, column: 2)
!602 = !DILocation(line: 126, column: 2, scope: !603)
!603 = distinct !DILexicalBlock(scope: !162, file: !2, line: 126, column: 2)
!604 = !{i64 2155818608, i64 2155818637, i64 2155818683, i64 2155818741, i64 2155818795, i64 2155818849, i64 2155818904, i64 2155818935, i64 2155819243, i64 2155819249, i64 2155819296, i64 2155819319, i64 2155819345}
!605 = !DILocation(line: 126, column: 2, scope: !606)
!606 = distinct !DILexicalBlock(scope: !162, file: !2, line: 126, column: 2)
!607 = !DILocation(line: 126, column: 2, scope: !608)
!608 = distinct !DILexicalBlock(scope: !163, file: !2, line: 126, column: 2)
!609 = !DILocation(line: 126, column: 2, scope: !147)
!610 = !DILocation(line: 129, column: 2, scope: !147)
!611 = !DILocation(line: 130, column: 2, scope: !147)
!612 = distinct !DISubprogram(name: "ex_handler_bpf", scope: !23, file: !23, line: 57, type: !148, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !613)
!613 = !{!614, !615}
!614 = !DILocalVariable(name: "x", arg: 1, scope: !612, file: !23, line: 57, type: !20)
!615 = !DILocalVariable(name: "regs", arg: 2, scope: !612, file: !23, line: 58, type: !29)
!616 = !DILocation(line: 57, column: 71, scope: !612)
!617 = !DILocation(line: 58, column: 23, scope: !612)
!618 = !DILocation(line: 58, column: 31, scope: !612)
!619 = !DILocation(line: 173, column: 64, scope: !172)
!620 = !DILocation(line: 174, column: 23, scope: !172)
!621 = !DILocation(line: 174, column: 34, scope: !172)
!622 = !DILocation(line: 174, column: 46, scope: !172)
!623 = !DILocation(line: 174, column: 56, scope: !172)
!624 = !DILocation(line: 176, column: 6, scope: !182)
!625 = !DILocation(line: 0, scope: !182)
!626 = !DILocation(line: 176, column: 6, scope: !627)
!627 = distinct !DILexicalBlock(scope: !182, file: !2, line: 176, column: 6)
!628 = !DILocation(line: 0, scope: !627)
!629 = !DILocation(line: 176, column: 6, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !2, line: 176, column: 6)
!631 = !DILocation(line: 176, column: 6, scope: !183)
!632 = !DILocation(line: 176, column: 6, scope: !172)
!633 = !DILocation(line: 177, column: 3, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !2, line: 177, column: 3)
!635 = distinct !DILexicalBlock(scope: !183, file: !2, line: 176, column: 38)
!636 = !DILocation(line: 177, column: 3, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !2, line: 177, column: 3)
!638 = !DILocation(line: 180, column: 19, scope: !635)
!639 = !DILocation(line: 180, column: 3, scope: !635)
!640 = !DILocation(line: 181, column: 2, scope: !635)
!641 = !DILocation(line: 183, column: 6, scope: !186)
!642 = !DILocation(line: 0, scope: !186)
!643 = !DILocation(line: 183, column: 6, scope: !644)
!644 = distinct !DILexicalBlock(scope: !186, file: !2, line: 183, column: 6)
!645 = !DILocation(line: 0, scope: !644)
!646 = !DILocation(line: 183, column: 6, scope: !647)
!647 = distinct !DILexicalBlock(scope: !644, file: !2, line: 183, column: 6)
!648 = !DILocation(line: 183, column: 6, scope: !187)
!649 = !DILocation(line: 183, column: 6, scope: !172)
!650 = !DILocation(line: 184, column: 3, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !2, line: 184, column: 3)
!652 = distinct !DILexicalBlock(scope: !187, file: !2, line: 183, column: 39)
!653 = !DILocation(line: 184, column: 3, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !2, line: 184, column: 3)
!655 = !DILocation(line: 186, column: 19, scope: !652)
!656 = !DILocation(line: 186, column: 3, scope: !652)
!657 = !DILocation(line: 187, column: 2, scope: !652)
!658 = !DILocation(line: 189, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !172, file: !2, line: 189, column: 6)
!660 = !DILocation(line: 189, column: 6, scope: !172)
!661 = !DILocation(line: 191, column: 3, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !2, line: 189, column: 14)
!663 = !DILocation(line: 191, column: 9, scope: !662)
!664 = !DILocation(line: 191, column: 12, scope: !662)
!665 = !DILocation(line: 192, column: 3, scope: !662)
!666 = !DILocation(line: 192, column: 9, scope: !662)
!667 = !DILocation(line: 192, column: 12, scope: !662)
!668 = !DILocation(line: 193, column: 2, scope: !662)
!669 = !DILocation(line: 195, column: 6, scope: !670)
!670 = distinct !DILexicalBlock(scope: !172, file: !2, line: 195, column: 6)
!671 = !DILocation(line: 195, column: 6, scope: !172)
!672 = !DILocation(line: 196, column: 15, scope: !670)
!673 = !DILocation(line: 196, column: 21, scope: !670)
!674 = !DILocation(line: 196, column: 4, scope: !670)
!675 = !DILocation(line: 196, column: 26, scope: !670)
!676 = !DILocation(line: 196, column: 3, scope: !670)
!677 = !DILocation(line: 198, column: 28, scope: !172)
!678 = !DILocation(line: 198, column: 35, scope: !172)
!679 = !DILocation(line: 198, column: 9, scope: !172)
!680 = !DILocation(line: 198, column: 2, scope: !172)
!681 = !DISubprogram(name: "ex_handler_msr_mce", scope: !23, file: !23, line: 45, type: !682, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !29, !17}
!684 = distinct !DISubprogram(name: "ex_handler_imm_reg", scope: !2, file: !2, line: 210, type: !685, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{!17, !20, !29, !26, !26}
!687 = !{!688, !689, !690, !691}
!688 = !DILocalVariable(name: "fixup", arg: 1, scope: !684, file: !2, line: 210, type: !20)
!689 = !DILocalVariable(name: "regs", arg: 2, scope: !684, file: !2, line: 211, type: !29)
!690 = !DILocalVariable(name: "reg", arg: 3, scope: !684, file: !2, line: 211, type: !26)
!691 = !DILocalVariable(name: "imm", arg: 4, scope: !684, file: !2, line: 211, type: !26)
!692 = !DILocation(line: 210, column: 68, scope: !684)
!693 = !DILocation(line: 211, column: 27, scope: !684)
!694 = !DILocation(line: 211, column: 37, scope: !684)
!695 = !DILocation(line: 211, column: 46, scope: !684)
!696 = !DILocation(line: 213, column: 33, scope: !684)
!697 = !DILocation(line: 213, column: 27, scope: !684)
!698 = !DILocation(line: 213, column: 14, scope: !684)
!699 = !DILocation(line: 213, column: 20, scope: !684)
!700 = !DILocation(line: 213, column: 3, scope: !684)
!701 = !DILocation(line: 213, column: 25, scope: !684)
!702 = !DILocation(line: 214, column: 28, scope: !684)
!703 = !DILocation(line: 214, column: 35, scope: !684)
!704 = !DILocation(line: 214, column: 9, scope: !684)
!705 = !DILocation(line: 214, column: 2, scope: !684)
!706 = distinct !DISubprogram(name: "ex_handler_sgx", scope: !2, file: !2, line: 104, type: !127, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !707)
!707 = !{!708, !709, !710}
!708 = !DILocalVariable(name: "fixup", arg: 1, scope: !706, file: !2, line: 104, type: !20)
!709 = !DILocalVariable(name: "regs", arg: 2, scope: !706, file: !2, line: 105, type: !29)
!710 = !DILocalVariable(name: "trapnr", arg: 3, scope: !706, file: !2, line: 105, type: !26)
!711 = !DILocation(line: 104, column: 64, scope: !706)
!712 = !DILocation(line: 105, column: 23, scope: !706)
!713 = !DILocation(line: 105, column: 33, scope: !706)
!714 = !DILocation(line: 107, column: 13, scope: !706)
!715 = !DILocation(line: 107, column: 20, scope: !706)
!716 = !DILocation(line: 107, column: 2, scope: !706)
!717 = !DILocation(line: 107, column: 8, scope: !706)
!718 = !DILocation(line: 107, column: 11, scope: !706)
!719 = !DILocation(line: 108, column: 28, scope: !706)
!720 = !DILocation(line: 108, column: 35, scope: !706)
!721 = !DILocation(line: 108, column: 9, scope: !706)
!722 = !DILocation(line: 108, column: 2, scope: !706)
!723 = distinct !DISubprogram(name: "ex_handler_ucopy_len", scope: !2, file: !2, line: 217, type: !724, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{!17, !20, !29, !26, !34, !26, !26}
!726 = !{!727, !728, !729, !730, !731, !732}
!727 = !DILocalVariable(name: "fixup", arg: 1, scope: !723, file: !2, line: 217, type: !20)
!728 = !DILocalVariable(name: "regs", arg: 2, scope: !723, file: !2, line: 218, type: !29)
!729 = !DILocalVariable(name: "trapnr", arg: 3, scope: !723, file: !2, line: 218, type: !26)
!730 = !DILocalVariable(name: "fault_address", arg: 4, scope: !723, file: !2, line: 219, type: !34)
!731 = !DILocalVariable(name: "reg", arg: 5, scope: !723, file: !2, line: 220, type: !26)
!732 = !DILocalVariable(name: "imm", arg: 6, scope: !723, file: !2, line: 220, type: !26)
!733 = !DILocation(line: 217, column: 70, scope: !723)
!734 = !DILocation(line: 218, column: 23, scope: !723)
!735 = !DILocation(line: 218, column: 33, scope: !723)
!736 = !DILocation(line: 219, column: 21, scope: !723)
!737 = !DILocation(line: 220, column: 11, scope: !723)
!738 = !DILocation(line: 220, column: 20, scope: !723)
!739 = !DILocation(line: 222, column: 13, scope: !723)
!740 = !DILocation(line: 222, column: 19, scope: !723)
!741 = !DILocation(line: 222, column: 25, scope: !723)
!742 = !DILocation(line: 222, column: 17, scope: !723)
!743 = !DILocation(line: 222, column: 42, scope: !723)
!744 = !DILocation(line: 222, column: 48, scope: !723)
!745 = !DILocation(line: 222, column: 31, scope: !723)
!746 = !DILocation(line: 222, column: 30, scope: !723)
!747 = !DILocation(line: 222, column: 28, scope: !723)
!748 = !DILocation(line: 222, column: 2, scope: !723)
!749 = !DILocation(line: 222, column: 8, scope: !723)
!750 = !DILocation(line: 222, column: 11, scope: !723)
!751 = !DILocation(line: 223, column: 28, scope: !723)
!752 = !DILocation(line: 223, column: 35, scope: !723)
!753 = !DILocation(line: 223, column: 41, scope: !723)
!754 = !DILocation(line: 223, column: 49, scope: !723)
!755 = !DILocation(line: 223, column: 9, scope: !723)
!756 = !DILocation(line: 223, column: 2, scope: !723)
!757 = distinct !DISubprogram(name: "ex_handler_zeropad", scope: !2, file: !2, line: 56, type: !758, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{!17, !20, !29, !34}
!760 = !{!761, !762, !763, !764, !813, !815, !816, !817, !818, !819}
!761 = !DILocalVariable(name: "e", arg: 1, scope: !757, file: !2, line: 56, type: !20)
!762 = !DILocalVariable(name: "regs", arg: 2, scope: !757, file: !2, line: 57, type: !29)
!763 = !DILocalVariable(name: "fault_addr", arg: 3, scope: !757, file: !2, line: 58, type: !34)
!764 = !DILocalVariable(name: "insn", scope: !757, file: !2, line: 60, type: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn", file: !105, line: 68, size: 896, elements: !766)
!766 = !{!767, !784, !785, !786, !787, !788, !789, !790, !796, !801, !802, !804, !805, !806, !807, !808, !811, !812}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !765, file: !105, line: 69, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn_field", file: !105, line: 16, size: 64, elements: !769)
!769 = !{!770, !782, !783}
!770 = !DIDerivedType(tag: DW_TAG_member, scope: !768, file: !105, line: 17, baseType: !771, size: 32)
!771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !768, file: !105, line: 17, size: 32, elements: !772)
!772 = !{!773, !776}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !771, file: !105, line: 18, baseType: !774, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_value_t", file: !775, line: 13, baseType: !26)
!775 = !DIFile(filename: "./arch/x86/include/asm/inat_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cebd64027eadc0d452590e3ac4fca7d6")
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !771, file: !105, line: 19, baseType: !777, size: 32)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 32, elements: !780)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_byte_t", file: !775, line: 12, baseType: !779)
!779 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!780 = !{!781}
!781 = !DISubrange(count: 4)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "got", scope: !768, file: !105, line: 22, baseType: !779, size: 8, offset: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !768, file: !105, line: 23, baseType: !779, size: 8, offset: 40)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rex_prefix", scope: !765, file: !105, line: 73, baseType: !768, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "vex_prefix", scope: !765, file: !105, line: 74, baseType: !768, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !765, file: !105, line: 75, baseType: !768, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "modrm", scope: !765, file: !105, line: 80, baseType: !768, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !765, file: !105, line: 81, baseType: !768, size: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "displacement", scope: !765, file: !105, line: 82, baseType: !768, size: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !105, line: 83, baseType: !791, size: 64, offset: 448)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !765, file: !105, line: 83, size: 64, elements: !792)
!792 = !{!793, !794, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "immediate", scope: !791, file: !105, line: 84, baseType: !768, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "moffset1", scope: !791, file: !105, line: 85, baseType: !768, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "immediate1", scope: !791, file: !105, line: 86, baseType: !768, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !105, line: 88, baseType: !797, size: 64, offset: 512)
!797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !765, file: !105, line: 88, size: 64, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "moffset2", scope: !797, file: !105, line: 89, baseType: !768, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "immediate2", scope: !797, file: !105, line: 90, baseType: !768, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "emulate_prefix_size", scope: !765, file: !105, line: 93, baseType: !26, size: 32, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !765, file: !105, line: 94, baseType: !803, size: 32, offset: 608)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_attr_t", file: !775, line: 11, baseType: !94)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "opnd_bytes", scope: !765, file: !105, line: 95, baseType: !779, size: 8, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "addr_bytes", scope: !765, file: !105, line: 96, baseType: !779, size: 8, offset: 648)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !765, file: !105, line: 97, baseType: !779, size: 8, offset: 656)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "x86_64", scope: !765, file: !105, line: 98, baseType: !779, size: 8, offset: 664)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "kaddr", scope: !765, file: !105, line: 100, baseType: !809, size: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "end_kaddr", scope: !765, file: !105, line: 101, baseType: !809, size: 64, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "next_byte", scope: !765, file: !105, line: 102, baseType: !809, size: 64, offset: 832)
!813 = !DILocalVariable(name: "mask", scope: !757, file: !2, line: 61, type: !814)
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!815 = !DILocalVariable(name: "offset", scope: !757, file: !2, line: 62, type: !34)
!816 = !DILocalVariable(name: "addr", scope: !757, file: !2, line: 62, type: !34)
!817 = !DILocalVariable(name: "next_ip", scope: !757, file: !2, line: 62, type: !34)
!818 = !DILocalVariable(name: "len", scope: !757, file: !2, line: 62, type: !34)
!819 = !DILocalVariable(name: "reg", scope: !757, file: !2, line: 63, type: !113)
!820 = !DILocation(line: 56, column: 68, scope: !757)
!821 = !DILocation(line: 57, column: 27, scope: !757)
!822 = !DILocation(line: 58, column: 25, scope: !757)
!823 = !DILocation(line: 60, column: 2, scope: !757)
!824 = !DILocation(line: 60, column: 14, scope: !757)
!825 = !DILocation(line: 61, column: 2, scope: !757)
!826 = !DILocation(line: 61, column: 22, scope: !757)
!827 = !DILocation(line: 62, column: 2, scope: !757)
!828 = !DILocation(line: 62, column: 16, scope: !757)
!829 = !DILocation(line: 62, column: 24, scope: !757)
!830 = !DILocation(line: 62, column: 30, scope: !757)
!831 = !DILocation(line: 62, column: 39, scope: !757)
!832 = !DILocation(line: 63, column: 2, scope: !757)
!833 = !DILocation(line: 63, column: 17, scope: !757)
!834 = !DILocation(line: 65, column: 26, scope: !757)
!835 = !DILocation(line: 65, column: 12, scope: !757)
!836 = !DILocation(line: 65, column: 10, scope: !757)
!837 = !DILocation(line: 66, column: 8, scope: !757)
!838 = !DILocation(line: 66, column: 18, scope: !757)
!839 = !DILocation(line: 66, column: 24, scope: !757)
!840 = !DILocation(line: 66, column: 16, scope: !757)
!841 = !DILocation(line: 66, column: 6, scope: !757)
!842 = !DILocation(line: 67, column: 6, scope: !843)
!843 = distinct !DILexicalBlock(scope: !757, file: !2, line: 67, column: 6)
!844 = !DILocation(line: 67, column: 10, scope: !843)
!845 = !DILocation(line: 67, column: 6, scope: !757)
!846 = !DILocation(line: 68, column: 3, scope: !843)
!847 = !DILocation(line: 70, column: 34, scope: !848)
!848 = distinct !DILexicalBlock(scope: !757, file: !2, line: 70, column: 6)
!849 = !DILocation(line: 70, column: 40, scope: !848)
!850 = !DILocation(line: 70, column: 25, scope: !848)
!851 = !DILocation(line: 70, column: 44, scope: !848)
!852 = !DILocation(line: 70, column: 6, scope: !848)
!853 = !DILocation(line: 70, column: 6, scope: !757)
!854 = !DILocation(line: 71, column: 3, scope: !848)
!855 = !DILocation(line: 72, column: 11, scope: !856)
!856 = distinct !DILexicalBlock(scope: !757, file: !2, line: 72, column: 6)
!857 = !DILocation(line: 72, column: 6, scope: !856)
!858 = !DILocation(line: 72, column: 21, scope: !856)
!859 = !DILocation(line: 72, column: 18, scope: !856)
!860 = !DILocation(line: 72, column: 6, scope: !757)
!861 = !DILocation(line: 73, column: 3, scope: !856)
!862 = !DILocation(line: 75, column: 11, scope: !863)
!863 = distinct !DILexicalBlock(scope: !757, file: !2, line: 75, column: 6)
!864 = !DILocation(line: 75, column: 18, scope: !863)
!865 = !DILocation(line: 75, column: 6, scope: !863)
!866 = !DILocation(line: 75, column: 27, scope: !863)
!867 = !DILocation(line: 75, column: 6, scope: !757)
!868 = !DILocation(line: 76, column: 3, scope: !863)
!869 = !DILocation(line: 77, column: 11, scope: !870)
!870 = distinct !DILexicalBlock(scope: !757, file: !2, line: 77, column: 6)
!871 = !DILocation(line: 77, column: 6, scope: !870)
!872 = !DILocation(line: 77, column: 22, scope: !870)
!873 = !DILocation(line: 77, column: 6, scope: !757)
!874 = !DILocation(line: 78, column: 3, scope: !870)
!875 = !DILocation(line: 80, column: 50, scope: !757)
!876 = !DILocation(line: 80, column: 25, scope: !757)
!877 = !DILocation(line: 80, column: 9, scope: !757)
!878 = !DILocation(line: 80, column: 7, scope: !757)
!879 = !DILocation(line: 81, column: 6, scope: !880)
!880 = distinct !DILexicalBlock(scope: !757, file: !2, line: 81, column: 6)
!881 = !DILocation(line: 81, column: 11, scope: !880)
!882 = !DILocation(line: 81, column: 6, scope: !757)
!883 = !DILocation(line: 82, column: 3, scope: !880)
!884 = !DILocation(line: 84, column: 11, scope: !757)
!885 = !DILocation(line: 84, column: 16, scope: !757)
!886 = !DILocation(line: 84, column: 9, scope: !757)
!887 = !DILocation(line: 85, column: 9, scope: !757)
!888 = !DILocation(line: 85, column: 14, scope: !757)
!889 = !DILocation(line: 85, column: 7, scope: !757)
!890 = !DILocation(line: 86, column: 6, scope: !891)
!891 = distinct !DILexicalBlock(scope: !757, file: !2, line: 86, column: 6)
!892 = !DILocation(line: 86, column: 20, scope: !891)
!893 = !DILocation(line: 86, column: 25, scope: !891)
!894 = !DILocation(line: 86, column: 17, scope: !891)
!895 = !DILocation(line: 86, column: 6, scope: !757)
!896 = !DILocation(line: 87, column: 3, scope: !891)
!897 = !DILocation(line: 89, column: 38, scope: !757)
!898 = !DILocation(line: 89, column: 8, scope: !757)
!899 = !DILocation(line: 89, column: 6, scope: !757)
!900 = !DILocation(line: 90, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !757, file: !2, line: 90, column: 6)
!902 = !DILocation(line: 90, column: 6, scope: !757)
!903 = !DILocation(line: 91, column: 3, scope: !901)
!904 = !DILocation(line: 93, column: 27, scope: !757)
!905 = !DILocation(line: 93, column: 10, scope: !757)
!906 = !DILocation(line: 93, column: 9, scope: !757)
!907 = !DILocation(line: 93, column: 36, scope: !757)
!908 = !DILocation(line: 93, column: 43, scope: !757)
!909 = !DILocation(line: 93, column: 32, scope: !757)
!910 = !DILocation(line: 93, column: 3, scope: !757)
!911 = !DILocation(line: 93, column: 7, scope: !757)
!912 = !DILocation(line: 94, column: 28, scope: !757)
!913 = !DILocation(line: 94, column: 31, scope: !757)
!914 = !DILocation(line: 94, column: 9, scope: !757)
!915 = !DILocation(line: 94, column: 2, scope: !757)
!916 = !DILocation(line: 95, column: 1, scope: !757)
!917 = distinct !DISubprogram(name: "early_fixup_exception", scope: !2, file: !2, line: 310, type: !918, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !920)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !29, !26}
!920 = !{!921, !922, !923, !924}
!921 = !DILocalVariable(name: "regs", arg: 1, scope: !917, file: !2, line: 310, type: !29)
!922 = !DILocalVariable(name: "trapnr", arg: 2, scope: !917, file: !2, line: 310, type: !26)
!923 = !DILabel(scope: !917, name: "fail", file: !2, line: 359)
!924 = !DILabel(scope: !917, name: "halt_loop", file: !2, line: 366)
!925 = !DILocation(line: 310, column: 51, scope: !917)
!926 = !DILocation(line: 310, column: 61, scope: !917)
!927 = !DILocation(line: 313, column: 6, scope: !928)
!928 = distinct !DILexicalBlock(scope: !917, file: !2, line: 313, column: 6)
!929 = !DILocation(line: 313, column: 13, scope: !928)
!930 = !DILocation(line: 313, column: 6, scope: !917)
!931 = !DILocation(line: 314, column: 3, scope: !928)
!932 = !DILocation(line: 316, column: 6, scope: !933)
!933 = distinct !DILexicalBlock(scope: !917, file: !2, line: 316, column: 6)
!934 = !DILocation(line: 316, column: 27, scope: !933)
!935 = !DILocation(line: 316, column: 6, scope: !917)
!936 = !DILocation(line: 317, column: 3, scope: !933)
!937 = !DILocation(line: 325, column: 26, scope: !938)
!938 = distinct !DILexicalBlock(scope: !917, file: !2, line: 325, column: 6)
!939 = !DILocation(line: 325, column: 32, scope: !938)
!940 = !DILocation(line: 325, column: 35, scope: !938)
!941 = !DILocation(line: 325, column: 6, scope: !917)
!942 = !DILocation(line: 326, column: 3, scope: !938)
!943 = !DILocation(line: 342, column: 22, scope: !944)
!944 = distinct !DILexicalBlock(scope: !917, file: !2, line: 342, column: 6)
!945 = !DILocation(line: 342, column: 28, scope: !944)
!946 = !DILocation(line: 342, column: 36, scope: !944)
!947 = !DILocation(line: 342, column: 42, scope: !944)
!948 = !DILocation(line: 342, column: 6, scope: !944)
!949 = !DILocation(line: 342, column: 6, scope: !917)
!950 = !DILocation(line: 343, column: 3, scope: !944)
!951 = !DILocation(line: 345, column: 6, scope: !952)
!952 = distinct !DILexicalBlock(scope: !917, file: !2, line: 345, column: 6)
!953 = !DILocation(line: 345, column: 13, scope: !952)
!954 = !DILocation(line: 345, column: 6, scope: !917)
!955 = !DILocation(line: 346, column: 18, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !2, line: 346, column: 7)
!957 = distinct !DILexicalBlock(scope: !952, file: !2, line: 345, column: 29)
!958 = !DILocation(line: 346, column: 24, scope: !956)
!959 = !DILocation(line: 346, column: 28, scope: !956)
!960 = !DILocation(line: 346, column: 7, scope: !956)
!961 = !DILocation(line: 346, column: 34, scope: !956)
!962 = !DILocation(line: 346, column: 7, scope: !957)
!963 = !DILocation(line: 348, column: 4, scope: !964)
!964 = distinct !DILexicalBlock(scope: !956, file: !2, line: 346, column: 57)
!965 = !DILocation(line: 348, column: 10, scope: !964)
!966 = !DILocation(line: 348, column: 13, scope: !964)
!967 = !DILocation(line: 349, column: 4, scope: !964)
!968 = !DILocation(line: 357, column: 2, scope: !957)
!969 = !DILocation(line: 345, column: 16, scope: !952)
!970 = !DILocation(line: 359, column: 1, scope: !917)
!971 = !DILocation(line: 361, column: 18, scope: !917)
!972 = !DILocation(line: 361, column: 41, scope: !917)
!973 = !DILocation(line: 361, column: 47, scope: !917)
!974 = !DILocation(line: 361, column: 26, scope: !917)
!975 = !DILocation(line: 361, column: 51, scope: !917)
!976 = !DILocation(line: 361, column: 57, scope: !917)
!977 = !DILocation(line: 362, column: 8, scope: !917)
!978 = !DILocation(line: 362, column: 14, scope: !917)
!979 = !DILocation(line: 362, column: 23, scope: !917)
!980 = !DILocation(line: 360, column: 2, scope: !917)
!981 = !DILocation(line: 364, column: 12, scope: !917)
!982 = !DILocation(line: 364, column: 2, scope: !917)
!983 = !DILocation(line: 366, column: 1, scope: !917)
!984 = !DILocation(line: 367, column: 2, scope: !917)
!985 = !DILocation(line: 368, column: 3, scope: !917)
!986 = distinct !{!986, !984, !987, !988}
!987 = !DILocation(line: 368, column: 8, scope: !917)
!988 = !{!"llvm.loop.unroll.disable"}
!989 = !DILocation(line: 369, column: 1, scope: !917)
!990 = !DISubprogram(name: "report_bug", scope: !99, file: !99, line: 44, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DISubroutineType(types: !992)
!992 = !{!98, !34, !29}
!993 = !DISubprogram(name: "early_printk", scope: !994, file: !994, line: 135, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!995 = !DISubroutineType(types: !996)
!996 = !{null, !114, null}
!997 = distinct !DISubprogram(name: "read_cr2", scope: !998, file: !998, line: 142, type: !999, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90)
!998 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!999 = !DISubroutineType(types: !1000)
!1000 = !{!34}
!1001 = !DILocation(line: 144, column: 9, scope: !997)
!1002 = !DILocation(line: 144, column: 2, scope: !997)
!1003 = !DISubprogram(name: "show_regs", scope: !1004, file: !1004, line: 26, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1004 = !DIFile(filename: "./include/linux/sched/debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "162ea9be471e54e9534d809de8723629")
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !29}
!1007 = distinct !DISubprogram(name: "halt", scope: !1008, file: !1008, line: 93, type: !220, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90)
!1008 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1009 = !DILocation(line: 95, column: 2, scope: !1007)
!1010 = !DILocation(line: 96, column: 1, scope: !1007)
!1011 = distinct !DISubprogram(name: "ex_fixup_addr", scope: !2, file: !2, line: 27, type: !1012, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !1014)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!34, !20}
!1014 = !{!1015}
!1015 = !DILocalVariable(name: "x", arg: 1, scope: !1011, file: !2, line: 27, type: !20)
!1016 = !DILocation(line: 27, column: 51, scope: !1011)
!1017 = !DILocation(line: 29, column: 25, scope: !1011)
!1018 = !DILocation(line: 29, column: 28, scope: !1011)
!1019 = !DILocation(line: 29, column: 9, scope: !1011)
!1020 = !DILocation(line: 29, column: 36, scope: !1011)
!1021 = !DILocation(line: 29, column: 39, scope: !1011)
!1022 = !DILocation(line: 29, column: 34, scope: !1011)
!1023 = !DILocation(line: 29, column: 2, scope: !1011)
!1024 = distinct !DISubprogram(name: "gp_fault_address_ok", scope: !2, file: !2, line: 142, type: !1025, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!17, !34}
!1027 = !{!1028}
!1028 = !DILocalVariable(name: "fault_address", arg: 1, scope: !1024, file: !2, line: 142, type: !34)
!1029 = !DILocation(line: 142, column: 47, scope: !1024)
!1030 = !DILocation(line: 146, column: 6, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 146, column: 6)
!1032 = !DILocation(line: 146, column: 6, scope: !1024)
!1033 = !DILocation(line: 147, column: 3, scope: !1031)
!1034 = !DILocation(line: 150, column: 16, scope: !1024)
!1035 = !DILocation(line: 151, column: 6, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 151, column: 6)
!1037 = !DILocation(line: 151, column: 6, scope: !1024)
!1038 = !DILocation(line: 152, column: 3, scope: !1036)
!1039 = !DILocation(line: 154, column: 2, scope: !1024)
!1040 = !DILocation(line: 155, column: 1, scope: !1024)
!1041 = !DISubprogram(name: "__warn_printk", scope: !1042, file: !1042, line: 93, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1042 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1043 = distinct !DISubprogram(name: "arch_test_bit", scope: !1044, file: !1044, line: 237, type: !1045, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !1050)
!1044 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!17, !34, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1049 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!1050 = !{!1051, !1052}
!1051 = !DILocalVariable(name: "nr", arg: 1, scope: !1043, file: !1044, line: 237, type: !34)
!1052 = !DILocalVariable(name: "addr", arg: 2, scope: !1043, file: !1044, line: 237, type: !1047)
!1053 = !DILocation(line: 237, column: 29, scope: !1043)
!1054 = !DILocation(line: 237, column: 63, scope: !1043)
!1055 = !DILocation(line: 239, column: 30, scope: !1043)
!1056 = !DILocation(line: 239, column: 9, scope: !1043)
!1057 = !DILocation(line: 239, column: 54, scope: !1043)
!1058 = !DILocation(line: 239, column: 58, scope: !1043)
!1059 = !DILocation(line: 239, column: 36, scope: !1043)
!1060 = !DILocation(line: 240, column: 26, scope: !1043)
!1061 = !DILocation(line: 240, column: 30, scope: !1043)
!1062 = !DILocation(line: 240, column: 8, scope: !1043)
!1063 = !DILocation(line: 239, column: 2, scope: !1043)
!1064 = distinct !DISubprogram(name: "_static_cpu_has", scope: !1065, file: !1065, line: 173, type: !1066, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !1068)
!1065 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!17, !55}
!1068 = !{!1069, !1070, !1071}
!1069 = !DILocalVariable(name: "bit", arg: 1, scope: !1064, file: !1065, line: 173, type: !55)
!1070 = !DILabel(scope: !1064, name: "t_yes", file: !1065, line: 187)
!1071 = !DILabel(scope: !1064, name: "t_no", file: !1065, line: 189)
!1072 = !DILocation(line: 173, column: 49, scope: !1064)
!1073 = !DILocation(line: 183, column: 24, scope: !1064)
!1074 = !DILocation(line: 184, column: 30, scope: !1064)
!1075 = !DILocation(line: 184, column: 34, scope: !1064)
!1076 = !DILocation(line: 184, column: 26, scope: !1064)
!1077 = !DILocation(line: 185, column: 70, scope: !1064)
!1078 = !DILocation(line: 185, column: 74, scope: !1064)
!1079 = !DILocation(line: 185, column: 25, scope: !1064)
!1080 = !DILocation(line: 175, column: 2, scope: !1064)
!1081 = !{i64 2149592539, i64 2149592572, i64 2149592578, i64 2149592594, i64 2149592613, i64 2149592644, i64 2149593597, i64 2149592186, i64 2149593603, i64 2149593651, i64 2149593715, i64 2149593779, i64 2149593836, i64 2149594043, i64 2149594091, i64 2149594155, i64 2149594219, i64 2149594276, i64 2149592304, i64 2149592329, i64 2149594486, i64 2149594614, i64 2149594547, i64 2149594628, i64 2149594642, i64 2149594758, i64 2149594703, i64 2149594772, i64 2149592463, i64 1719284, i64 1719324, i64 1719333, i64 1719383, i64 1719404, i64 1719424}
!1082 = !DILocation(line: 187, column: 1, scope: !1064)
!1083 = !DILocation(line: 188, column: 2, scope: !1064)
!1084 = !DILocation(line: 189, column: 1, scope: !1064)
!1085 = !DILocation(line: 190, column: 2, scope: !1064)
!1086 = !DILocation(line: 191, column: 1, scope: !1064)
!1087 = distinct !DISubprogram(name: "constant_test_bit", scope: !1044, file: !1044, line: 204, type: !1088, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!17, !112, !1047}
!1090 = !{!1091, !1092}
!1091 = !DILocalVariable(name: "nr", arg: 1, scope: !1087, file: !1044, line: 204, type: !112)
!1092 = !DILocalVariable(name: "addr", arg: 2, scope: !1087, file: !1044, line: 204, type: !1047)
!1093 = !DILocation(line: 204, column: 52, scope: !1087)
!1094 = !DILocation(line: 204, column: 86, scope: !1087)
!1095 = !DILocation(line: 206, column: 19, scope: !1087)
!1096 = !DILocation(line: 206, column: 22, scope: !1087)
!1097 = !DILocation(line: 206, column: 15, scope: !1087)
!1098 = !DILocation(line: 207, column: 4, scope: !1087)
!1099 = !DILocation(line: 207, column: 9, scope: !1087)
!1100 = !DILocation(line: 207, column: 12, scope: !1087)
!1101 = !DILocation(line: 206, column: 44, scope: !1087)
!1102 = !DILocation(line: 207, column: 37, scope: !1087)
!1103 = !DILocation(line: 206, column: 2, scope: !1087)
!1104 = distinct !DISubprogram(name: "variable_test_bit", scope: !1044, file: !1044, line: 224, type: !1088, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !1105)
!1105 = !{!1106, !1107, !1108}
!1106 = !DILocalVariable(name: "nr", arg: 1, scope: !1104, file: !1044, line: 224, type: !112)
!1107 = !DILocalVariable(name: "addr", arg: 2, scope: !1104, file: !1044, line: 224, type: !1047)
!1108 = !DILocalVariable(name: "oldbit", scope: !1104, file: !1044, line: 226, type: !17)
!1109 = !DILocation(line: 224, column: 52, scope: !1104)
!1110 = !DILocation(line: 224, column: 86, scope: !1104)
!1111 = !DILocation(line: 226, column: 2, scope: !1104)
!1112 = !DILocation(line: 226, column: 7, scope: !1104)
!1113 = !DILocation(line: 231, column: 33, scope: !1104)
!1114 = !DILocation(line: 231, column: 46, scope: !1104)
!1115 = !DILocation(line: 228, column: 2, scope: !1104)
!1116 = !{i64 2147944341, i64 2147944415}
!1117 = !DILocation(line: 233, column: 9, scope: !1104)
!1118 = !DILocation(line: 234, column: 1, scope: !1104)
!1119 = !DILocation(line: 233, column: 2, scope: !1104)
!1120 = distinct !DISubprogram(name: "instruction_pointer", scope: !31, file: !31, line: 285, type: !1121, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!34, !29}
!1123 = !{!1124}
!1124 = !DILocalVariable(name: "regs", arg: 1, scope: !1120, file: !31, line: 285, type: !29)
!1125 = !DILocation(line: 285, column: 65, scope: !1120)
!1126 = !DILocation(line: 287, column: 9, scope: !1120)
!1127 = !DILocation(line: 287, column: 15, scope: !1120)
!1128 = !DILocation(line: 287, column: 2, scope: !1120)
!1129 = !DISubprogram(name: "fpu_reset_from_exception_fixup", scope: !1130, file: !1130, line: 117, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1130 = !DIFile(filename: "./arch/x86/include/asm/fpu/api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "69298eced5ce9b488888ff68abf966e3")
!1131 = !DISubprogram(name: "_printk", scope: !994, file: !994, line: 153, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!26, !114, null}
!1134 = !DISubprogram(name: "show_stack_regs", scope: !1135, file: !1135, line: 38, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1135 = !DIFile(filename: "./arch/x86/include/asm/kdebug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b9e116c256f8ca47b10b852f08e11a")
!1136 = !DILocation(line: 15, column: 57, scope: !203)
!1137 = !DILocation(line: 15, column: 67, scope: !203)
!1138 = !DILocation(line: 17, column: 2, scope: !203)
!1139 = !DILocation(line: 17, column: 6, scope: !203)
!1140 = !DILocation(line: 17, column: 34, scope: !203)
!1141 = !DILocation(line: 17, column: 40, scope: !203)
!1142 = !DILocation(line: 17, column: 19, scope: !203)
!1143 = !DILocation(line: 20, column: 6, scope: !211)
!1144 = !DILocation(line: 20, column: 6, scope: !215)
!1145 = !DILocation(line: 20, column: 6, scope: !214)
!1146 = !DILocation(line: 20, column: 6, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !214, file: !2, line: 20, column: 6)
!1148 = !DILocation(line: 20, column: 6, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !214, file: !2, line: 20, column: 6)
!1150 = !{i64 2155815530, i64 2155815559, i64 2155815605, i64 2155815663, i64 2155815717, i64 2155815771, i64 2155815826, i64 2155815857, i64 2155816165, i64 2155816171, i64 2155816218, i64 2155816241, i64 2155816267}
!1151 = !DILocation(line: 20, column: 6, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !214, file: !2, line: 20, column: 6)
!1153 = !DILocation(line: 20, column: 6, scope: !212)
!1154 = !DILocation(line: 20, column: 6, scope: !203)
!1155 = !DILocation(line: 21, column: 3, scope: !212)
!1156 = !DILocation(line: 23, column: 42, scope: !203)
!1157 = !DILocation(line: 23, column: 27, scope: !203)
!1158 = !DILocation(line: 23, column: 49, scope: !203)
!1159 = !DILocation(line: 23, column: 47, scope: !203)
!1160 = !DILocation(line: 23, column: 9, scope: !203)
!1161 = !DILocation(line: 23, column: 2, scope: !203)
!1162 = !DILocation(line: 24, column: 1, scope: !203)
!1163 = !DISubprogram(name: "pt_regs_offset", scope: !1164, file: !1164, line: 18, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1164 = !DIFile(filename: "./arch/x86/include/asm/insn-eval.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b770eccb38ab563431b148e70067df62")
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!26, !29, !26}
!1167 = !DISubprogram(name: "insn_decode", scope: !105, file: !105, line: 151, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!26, !1170, !1171, !26, !104}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1173 = !DISubprogram(name: "insn_get_addr_ref", scope: !1164, file: !1164, line: 21, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!116, !1170, !29}
!1176 = !DISubprogram(name: "insn_get_modrm_reg_ptr", scope: !1164, file: !1164, line: 24, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!113, !1170, !29}
!1179 = distinct !DISubprogram(name: "native_read_cr2", scope: !998, file: !998, line: 33, type: !999, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !1180)
!1180 = !{!1181}
!1181 = !DILocalVariable(name: "val", scope: !1179, file: !998, line: 35, type: !34)
!1182 = !DILocation(line: 35, column: 2, scope: !1179)
!1183 = !DILocation(line: 35, column: 16, scope: !1179)
!1184 = !DILocation(line: 36, column: 2, scope: !1179)
!1185 = !{i64 2045252, i64 2045267}
!1186 = !DILocation(line: 37, column: 9, scope: !1179)
!1187 = !DILocation(line: 38, column: 1, scope: !1179)
!1188 = !DILocation(line: 37, column: 2, scope: !1179)
!1189 = distinct !DISubprogram(name: "native_halt", scope: !1008, file: !1008, line: 51, type: !220, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90)
!1190 = !DILocation(line: 53, column: 2, scope: !1189)
!1191 = !DILocation(line: 54, column: 2, scope: !1189)
!1192 = !{i64 1448818}
!1193 = !DILocation(line: 55, column: 1, scope: !1189)
!1194 = distinct !DISubprogram(name: "mds_idle_clear_cpu_buffers", scope: !219, file: !219, line: 627, type: !220, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !1195)
!1195 = !{!1196}
!1196 = !DILocalVariable(name: "branch", scope: !1197, file: !219, line: 629, type: !17)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !219, line: 629, column: 6)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !219, line: 629, column: 6)
!1199 = !DILocation(line: 629, column: 6, scope: !1197)
!1200 = !DILocation(line: 629, column: 6, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !219, line: 629, column: 6)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !219, line: 629, column: 6)
!1203 = !DILocation(line: 629, column: 6, scope: !1202)
!1204 = !DILocation(line: 629, column: 6, scope: !1198)
!1205 = !DILocation(line: 629, column: 6, scope: !1194)
!1206 = !DILocation(line: 630, column: 3, scope: !1198)
!1207 = !DILocation(line: 631, column: 1, scope: !1194)
!1208 = distinct !DISubprogram(name: "arch_static_branch_jump", scope: !1209, file: !1209, line: 53, type: !1210, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !90, retainedNodes: !1239)
!1209 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!17, !1212, !1238}
!1212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1215, line: 85, size: 128, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1216 = !{!1217, !1222}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1214, file: !1215, line: 86, baseType: !1218, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !18, line: 174, baseType: !1219)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 172, size: 32, elements: !1220)
!1220 = !{!1221}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1219, file: !18, line: 173, baseType: !26, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1215, line: 101, baseType: !1223, size: 64, offset: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !1215, line: 101, size: 64, elements: !1224)
!1224 = !{!1225, !1226, !1235}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1223, file: !1215, line: 102, baseType: !34, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1223, file: !1215, line: 103, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1215, line: 117, size: 128, elements: !1229)
!1229 = !{!1230, !1233, !1234}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1228, file: !1215, line: 118, baseType: !1231, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !56, line: 20, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !58, line: 26, baseType: !26)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1228, file: !1215, line: 119, baseType: !1231, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1228, file: !1215, line: 120, baseType: !112, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1223, file: !1215, line: 104, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1215, line: 104, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!1239 = !{!1240, !1241, !1242}
!1240 = !DILocalVariable(name: "key", arg: 1, scope: !1208, file: !1209, line: 53, type: !1212)
!1241 = !DILocalVariable(name: "branch", arg: 2, scope: !1208, file: !1209, line: 53, type: !1238)
!1242 = !DILabel(scope: !1208, name: "l_yes", file: !1209, line: 61)
!1243 = !DILocation(line: 53, column: 79, scope: !1208)
!1244 = !DILocation(line: 53, column: 95, scope: !1208)
!1245 = !DILocation(line: 58, column: 13, scope: !1208)
!1246 = !DILocation(line: 58, column: 24, scope: !1208)
!1247 = !DILocation(line: 55, column: 2, scope: !1208)
!1248 = !{i64 1506335, i64 1506358, i64 2148991105, i64 2148991126, i64 2148991152, i64 2148991185, i64 2148991219, i64 2148991243}
!1249 = !DILocation(line: 60, column: 2, scope: !1208)
!1250 = !DILocation(line: 61, column: 1, scope: !1208)
!1251 = !DILocation(line: 62, column: 2, scope: !1208)
!1252 = !DILocation(line: 63, column: 1, scope: !1208)
!1253 = !DILocation(line: 619, column: 2, scope: !218)
!1254 = !{i64 1488066}
!1255 = !DILocation(line: 620, column: 1, scope: !218)
