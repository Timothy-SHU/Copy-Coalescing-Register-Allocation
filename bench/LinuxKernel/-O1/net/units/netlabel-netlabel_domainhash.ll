; ModuleID = 'net/netlabel/netlabel_domainhash.c'
source_filename = "net/netlabel/netlabel_domainhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.netlbl_domhsh_tbl = type { ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.netlbl_dom_map = type { ptr, %struct.netlbl_dommap_def, i16, i32, %struct.list_head, %struct.callback_head }
%struct.netlbl_dommap_def = type { i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.netlbl_domaddr_map = type { %struct.list_head, %struct.list_head }
%struct.netlbl_af4list = type { i32, i32, i32, %struct.list_head }
%struct.netlbl_af6list = type { %struct.in6_addr, %struct.in6_addr, i32, %struct.list_head }
%struct.in6_addr = type { %union.anon.3 }
%union.anon.3 = type { [4 x i32] }
%struct.netlbl_domaddr4_map = type { %struct.netlbl_dommap_def, %struct.netlbl_af4list }
%struct.netlbl_domaddr6_map = type { %struct.netlbl_dommap_def, %struct.netlbl_af6list }
%struct.cipso_v4_doi = type { i32, i32, %union.anon.4, [5 x i8], %struct.refcount_struct, %struct.list_head, %struct.callback_head }
%union.anon.4 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.calipso_doi = type { i32, i32, %struct.refcount_struct, %struct.list_head, %struct.callback_head }
%struct.in_addr = type { i32 }

@netlbl_domhsh_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !0
@netlbl_domhsh = internal global ptr null, align 8, !dbg !205
@netlbl_domhsh_def_ipv4 = internal global ptr null, align 8, !dbg !207
@netlbl_domhsh_def_ipv6 = internal global ptr null, align 8, !dbg !209
@.str = private unnamed_addr constant [22 x i8] c" nlbl_domain=%s res=1\00", align 1, !dbg !195
@.str.1 = private unnamed_addr constant [10 x i8] c"(default)\00", align 1, !dbg !200
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !211
@.str.3 = private unnamed_addr constant [16 x i8] c" nlbl_domain=%s\00", align 1, !dbg !216
@.str.4 = private unnamed_addr constant [21 x i8] c" nlbl_protocol=unlbl\00", align 1, !dbg !219
@.str.5 = private unnamed_addr constant [35 x i8] c"net/netlabel/netlabel_domainhash.c\00", align 1, !dbg !221
@.str.6 = private unnamed_addr constant [36 x i8] c" nlbl_protocol=cipsov4 cipso_doi=%u\00", align 1, !dbg !226
@.str.7 = private unnamed_addr constant [38 x i8] c" nlbl_protocol=calipso calipso_doi=%u\00", align 1, !dbg !231
@.str.8 = private unnamed_addr constant [8 x i8] c" res=%u\00", align 1, !dbg !236

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @netlbl_domhsh_init(i32 noundef %size) #0 section ".init.text" align 16 !dbg !278 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %iter = alloca i32, align 4
  %hsh_tbl = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_r_a_p__v = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !282, metadata !DIExpression()), !dbg !287
  call void @llvm.lifetime.start.p0(i64 4, ptr %iter) #15, !dbg !288
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !283, metadata !DIExpression()), !dbg !289
  call void @llvm.lifetime.start.p0(i64 8, ptr %hsh_tbl) #15, !dbg !290
  call void @llvm.dbg.declare(metadata ptr %hsh_tbl, metadata !284, metadata !DIExpression()), !dbg !291
  %0 = load i32, ptr %size.addr, align 4, !dbg !292
  %cmp = icmp eq i32 %0, 0, !dbg !294
  br i1 %cmp, label %if.then, label %if.end, !dbg !295

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !296

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kmalloc(i64 noundef 16, i32 noundef 3264) #16, !dbg !297
  store ptr %call, ptr %hsh_tbl, align 8, !dbg !298
  %1 = load ptr, ptr %hsh_tbl, align 8, !dbg !299
  %cmp1 = icmp eq ptr %1, null, !dbg !301
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !302

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !303

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %size.addr, align 4, !dbg !304
  %shl = shl i32 1, %2, !dbg !305
  %3 = load ptr, ptr %hsh_tbl, align 8, !dbg !306
  %size4 = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %3, i32 0, i32 1, !dbg !307
  store i32 %shl, ptr %size4, align 8, !dbg !308
  %4 = load ptr, ptr %hsh_tbl, align 8, !dbg !309
  %size5 = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %4, i32 0, i32 1, !dbg !310
  %5 = load i32, ptr %size5, align 8, !dbg !310
  %conv = zext i32 %5 to i64, !dbg !309
  %call6 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 16, i32 noundef 3264) #17, !dbg !311
  %6 = load ptr, ptr %hsh_tbl, align 8, !dbg !312
  %tbl = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %6, i32 0, i32 0, !dbg !313
  store ptr %call6, ptr %tbl, align 8, !dbg !314
  %7 = load ptr, ptr %hsh_tbl, align 8, !dbg !315
  %tbl7 = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %7, i32 0, i32 0, !dbg !317
  %8 = load ptr, ptr %tbl7, align 8, !dbg !317
  %cmp8 = icmp eq ptr %8, null, !dbg !318
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !319

if.then10:                                        ; preds = %if.end3
  %9 = load ptr, ptr %hsh_tbl, align 8, !dbg !320
  call void @kfree(ptr noundef %9) #18, !dbg !322
  store i32 -12, ptr %retval, align 4, !dbg !323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !323

if.end11:                                         ; preds = %if.end3
  store i32 0, ptr %iter, align 4, !dbg !324
  br label %for.cond, !dbg !326

for.cond:                                         ; preds = %for.inc, %if.end11
  %10 = load i32, ptr %iter, align 4, !dbg !327
  %11 = load ptr, ptr %hsh_tbl, align 8, !dbg !329
  %size12 = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %11, i32 0, i32 1, !dbg !330
  %12 = load i32, ptr %size12, align 8, !dbg !330
  %cmp13 = icmp ult i32 %10, %12, !dbg !331
  br i1 %cmp13, label %for.body, label %for.end, !dbg !332

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %hsh_tbl, align 8, !dbg !333
  %tbl15 = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %13, i32 0, i32 0, !dbg !334
  %14 = load ptr, ptr %tbl15, align 8, !dbg !334
  %15 = load i32, ptr %iter, align 4, !dbg !335
  %idxprom = zext i32 %15 to i64, !dbg !333
  %arrayidx = getelementptr %struct.list_head, ptr %14, i64 %idxprom, !dbg !333
  call void @INIT_LIST_HEAD(ptr noundef %arrayidx) #18, !dbg !336
  br label %for.inc, !dbg !336

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %iter, align 4, !dbg !337
  %inc = add i32 %16, 1, !dbg !337
  store i32 %inc, ptr %iter, align 4, !dbg !337
  br label %for.cond, !dbg !338, !llvm.loop !339

for.end:                                          ; preds = %for.cond
  call void @spin_lock(ptr noundef @netlbl_domhsh_lock) #18, !dbg !343
  br label %do.body, !dbg !344

do.body:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #15, !dbg !345
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !285, metadata !DIExpression()), !dbg !345
  %17 = load ptr, ptr %hsh_tbl, align 8, !dbg !345
  %18 = ptrtoint ptr %17 to i64, !dbg !345
  store i64 %18, ptr %_r_a_p__v, align 8, !dbg !345
  br i1 false, label %land.lhs.true, label %if.else, !dbg !346

land.lhs.true:                                    ; preds = %do.body
  %19 = load i64, ptr %_r_a_p__v, align 8, !dbg !346
  %cmp16 = icmp eq i64 %19, 0, !dbg !346
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !345

if.then18:                                        ; preds = %land.lhs.true
  br label %do.body19, !dbg !346

do.body19:                                        ; preds = %if.then18
  br label %do.body20, !dbg !348

do.body20:                                        ; preds = %do.body19
  br label %do.cond, !dbg !350

do.cond:                                          ; preds = %do.body20
  br label %do.end, !dbg !350

do.end:                                           ; preds = %do.cond
  br label %do.body21, !dbg !348

do.body21:                                        ; preds = %do.end
  %20 = load i64, ptr %_r_a_p__v, align 8, !dbg !352
  %21 = inttoptr i64 %20 to ptr, !dbg !352
  store volatile ptr %21, ptr @netlbl_domhsh, align 8, !dbg !352
  br label %do.cond22, !dbg !352

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !352

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !348

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !348

do.end25:                                         ; preds = %do.cond24
  br label %if.end47, !dbg !348

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body26, !dbg !346

do.body26:                                        ; preds = %if.else
  br label %do.body27, !dbg !354

do.body27:                                        ; preds = %do.body26
  br label %do.cond28, !dbg !356

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !356

do.end29:                                         ; preds = %do.cond28
  br label %do.body30, !dbg !354

do.body30:                                        ; preds = %do.end29
  br label %do.body31, !dbg !358

do.body31:                                        ; preds = %do.body30
  br label %do.cond32, !dbg !360

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !360

do.end33:                                         ; preds = %do.cond32
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !358, !srcloc !362
  br label %do.body34, !dbg !358

do.body34:                                        ; preds = %do.end33
  br label %do.body35, !dbg !363

do.body35:                                        ; preds = %do.body34
  br label %do.cond36, !dbg !365

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !365

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !363

do.body38:                                        ; preds = %do.end37
  %22 = load i64, ptr %_r_a_p__v, align 8, !dbg !367
  %23 = inttoptr i64 %22 to ptr, !dbg !367
  store volatile ptr %23, ptr @netlbl_domhsh, align 8, !dbg !367
  br label %do.cond39, !dbg !367

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !367

do.end40:                                         ; preds = %do.cond39
  br label %do.cond41, !dbg !363

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !363

do.end42:                                         ; preds = %do.cond41
  br label %do.cond43, !dbg !358

do.cond43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !358

do.end44:                                         ; preds = %do.cond43
  br label %do.cond45, !dbg !354

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !354

do.end46:                                         ; preds = %do.cond45
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %do.end25
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #15, !dbg !344
  br label %do.cond48, !dbg !345

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !345

do.end49:                                         ; preds = %do.cond48
  call void @spin_unlock(ptr noundef @netlbl_domhsh_lock) #18, !dbg !369
  store i32 0, ptr %retval, align 4, !dbg !370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !370

cleanup:                                          ; preds = %do.end49, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hsh_tbl) #15, !dbg !371
  call void @llvm.lifetime.end.p0(i64 4, ptr %iter) #15, !dbg !371
  %24 = load i32, ptr %retval, align 4, !dbg !371
  ret i32 %24, !dbg !371
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !372 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !380, metadata !DIExpression()), !dbg !385
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !381, metadata !DIExpression()), !dbg !386
  %0 = load i64, ptr %size.addr, align 8, !dbg !387
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !388
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !389

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !390
  %tobool = icmp ne i64 %2, 0, !dbg !390
  br i1 %tobool, label %if.then, label %if.end7, !dbg !391

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !392
  call void @llvm.dbg.declare(metadata ptr %index, metadata !382, metadata !DIExpression()), !dbg !393
  %3 = load i64, ptr %size.addr, align 8, !dbg !394
  %cmp = icmp ugt i64 %3, 8192, !dbg !396
  br i1 %cmp, label %if.then1, label %if.end, !dbg !397

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !398
  %5 = load i32, ptr %flags.addr, align 4, !dbg !399
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !400
  store ptr %call, ptr %retval, align 8, !dbg !401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !401

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !402
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !402
  store i32 %call2, ptr %index, align 4, !dbg !403
  %7 = load i32, ptr %flags.addr, align 4, !dbg !404
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !405
  %9 = ptrtoint ptr %8 to i64, !dbg !405
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !406
  %idxprom = zext i32 %call3 to i64, !dbg !407
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !407
  %10 = load i32, ptr %index, align 4, !dbg !408
  %idxprom4 = zext i32 %10 to i64, !dbg !407
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !407
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !407
  %12 = load i32, ptr %flags.addr, align 4, !dbg !409
  %13 = load i64, ptr %size.addr, align 8, !dbg !410
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !411
  store ptr %call6, ptr %retval, align 8, !dbg !412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !412

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !413
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !414
  %15 = load i32, ptr %flags.addr, align 4, !dbg !415
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !416
  store ptr %call8, ptr %retval, align 8, !dbg !417
  br label %return, !dbg !417

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !418
  ret ptr %16, !dbg !418
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !419 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !423, metadata !DIExpression()), !dbg !426
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !424, metadata !DIExpression()), !dbg !427
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !425, metadata !DIExpression()), !dbg !428
  %0 = load i64, ptr %n.addr, align 8, !dbg !429
  %1 = load i64, ptr %size.addr, align 8, !dbg !430
  %2 = load i32, ptr %flags.addr, align 4, !dbg !431
  %or = or i32 %2, 256, !dbg !432
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #17, !dbg !433
  ret ptr %call, !dbg !434
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !435 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !440 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !445, metadata !DIExpression()), !dbg !446
  br label %do.body, !dbg !447

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !448

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !450

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !448

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !452
  %1 = load ptr, ptr %list.addr, align 8, !dbg !452
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !452
  store volatile ptr %0, ptr %next, align 8, !dbg !452
  br label %do.end3, !dbg !452

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !448

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !454

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !455

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !457

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !455

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !459
  %3 = load ptr, ptr %list.addr, align 8, !dbg !459
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !459
  store volatile ptr %2, ptr %prev, align 8, !dbg !459
  br label %do.end9, !dbg !459

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !455

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !461
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #7 align 16 !dbg !462 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !468, metadata !DIExpression()), !dbg !469
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !470
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !470
  call void @_raw_spin_lock(ptr noundef %1) #18, !dbg !470
  ret void, !dbg !471
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #7 align 16 !dbg !472 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !476
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !476
  call void @_raw_spin_unlock(ptr noundef %1) #18, !dbg !476
  ret void, !dbg !477
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlbl_domhsh_add(ptr noundef %entry1, ptr noundef %audit_info) #8 align 16 !dbg !478 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %audit_info.addr = alloca ptr, align 8
  %ret_val = alloca i32, align 4
  %entry_old = alloca ptr, align 8
  %entry_b = alloca ptr, align 8
  %iter4 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %iter6 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %bkt = alloca i32, align 4
  %__UNIQUE_ID_rcu561 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  %_r_a_p__v64 = alloca i64, align 8
  %_r_a_p__v119 = alloca i64, align 8
  %_r_a_p__v159 = alloca i64, align 8
  %old_list4 = alloca ptr, align 8
  %old_list6 = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !496, metadata !DIExpression()), !dbg !527
  store ptr %audit_info, ptr %audit_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %audit_info.addr, metadata !497, metadata !DIExpression()), !dbg !528
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_val) #15, !dbg !529
  call void @llvm.dbg.declare(metadata ptr %ret_val, metadata !498, metadata !DIExpression()), !dbg !530
  store i32 0, ptr %ret_val, align 4, !dbg !530
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_old) #15, !dbg !531
  call void @llvm.dbg.declare(metadata ptr %entry_old, metadata !499, metadata !DIExpression()), !dbg !532
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_b) #15, !dbg !531
  call void @llvm.dbg.declare(metadata ptr %entry_b, metadata !500, metadata !DIExpression()), !dbg !533
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter4) #15, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %iter4, metadata !501, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp4) #15, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %tmp4, metadata !502, metadata !DIExpression()), !dbg !537
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter6) #15, !dbg !538
  call void @llvm.dbg.declare(metadata ptr %iter6, metadata !503, metadata !DIExpression()), !dbg !539
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp6) #15, !dbg !540
  call void @llvm.dbg.declare(metadata ptr %tmp6, metadata !504, metadata !DIExpression()), !dbg !541
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !542
  %call = call i32 @netlbl_domhsh_validate(ptr noundef %0) #18, !dbg !543
  store i32 %call, ptr %ret_val, align 4, !dbg !544
  %1 = load i32, ptr %ret_val, align 4, !dbg !545
  %cmp = icmp ne i32 %1, 0, !dbg !547
  br i1 %cmp, label %if.then, label %if.end, !dbg !548

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret_val, align 4, !dbg !549
  store i32 %2, ptr %retval, align 4, !dbg !550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup369, !dbg !550

if.end:                                           ; preds = %entry
  call void @rcu_read_lock() #18, !dbg !551
  call void @spin_lock(ptr noundef @netlbl_domhsh_lock) #18, !dbg !552
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !553
  %domain = getelementptr inbounds %struct.netlbl_dom_map, ptr %3, i32 0, i32 0, !dbg !555
  %4 = load ptr, ptr %domain, align 8, !dbg !555
  %cmp2 = icmp ne ptr %4, null, !dbg !556
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !557

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !558
  %domain4 = getelementptr inbounds %struct.netlbl_dom_map, ptr %5, i32 0, i32 0, !dbg !559
  %6 = load ptr, ptr %domain4, align 8, !dbg !559
  %7 = load ptr, ptr %entry.addr, align 8, !dbg !560
  %family = getelementptr inbounds %struct.netlbl_dom_map, ptr %7, i32 0, i32 2, !dbg !561
  %8 = load i16, ptr %family, align 8, !dbg !561
  %call5 = call ptr @netlbl_domhsh_search(ptr noundef %6, i16 noundef zeroext %8) #18, !dbg !562
  store ptr %call5, ptr %entry_old, align 8, !dbg !563
  br label %if.end9, !dbg !564

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %entry.addr, align 8, !dbg !565
  %domain6 = getelementptr inbounds %struct.netlbl_dom_map, ptr %9, i32 0, i32 0, !dbg !566
  %10 = load ptr, ptr %domain6, align 8, !dbg !566
  %11 = load ptr, ptr %entry.addr, align 8, !dbg !567
  %family7 = getelementptr inbounds %struct.netlbl_dom_map, ptr %11, i32 0, i32 2, !dbg !568
  %12 = load i16, ptr %family7, align 8, !dbg !568
  %call8 = call ptr @netlbl_domhsh_search_def(ptr noundef %10, i16 noundef zeroext %12) #18, !dbg !569
  store ptr %call8, ptr %entry_old, align 8, !dbg !570
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %13 = load ptr, ptr %entry_old, align 8, !dbg !571
  %cmp10 = icmp eq ptr %13, null, !dbg !572
  br i1 %cmp10, label %if.then11, label %if.else239, !dbg !573

if.then11:                                        ; preds = %if.end9
  %14 = load ptr, ptr %entry.addr, align 8, !dbg !574
  %valid = getelementptr inbounds %struct.netlbl_dom_map, ptr %14, i32 0, i32 3, !dbg !575
  store i32 1, ptr %valid, align 4, !dbg !576
  %15 = load ptr, ptr %entry.addr, align 8, !dbg !577
  %domain12 = getelementptr inbounds %struct.netlbl_dom_map, ptr %15, i32 0, i32 0, !dbg !578
  %16 = load ptr, ptr %domain12, align 8, !dbg !578
  %cmp13 = icmp ne ptr %16, null, !dbg !579
  br i1 %cmp13, label %if.then14, label %if.else21, !dbg !580

if.then14:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %bkt) #15, !dbg !581
  call void @llvm.dbg.declare(metadata ptr %bkt, metadata !505, metadata !DIExpression()), !dbg !582
  %17 = load ptr, ptr %entry.addr, align 8, !dbg !583
  %domain15 = getelementptr inbounds %struct.netlbl_dom_map, ptr %17, i32 0, i32 0, !dbg !584
  %18 = load ptr, ptr %domain15, align 8, !dbg !584
  %call16 = call i32 @netlbl_domhsh_hash(ptr noundef %18) #18, !dbg !585
  store i32 %call16, ptr %bkt, align 4, !dbg !582
  %19 = load ptr, ptr %entry.addr, align 8, !dbg !586
  %list = getelementptr inbounds %struct.netlbl_dom_map, ptr %19, i32 0, i32 4, !dbg !587
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu561) #15, !dbg !588
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu561, metadata !510, metadata !DIExpression()), !dbg !588
  br label %do.body, !dbg !589

do.body:                                          ; preds = %if.then14
  br label %do.cond, !dbg !591

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !591

do.end:                                           ; preds = %do.cond
  %20 = load volatile ptr, ptr @netlbl_domhsh, align 8, !dbg !589
  store ptr %20, ptr %tmp, align 8, !dbg !591
  %21 = load ptr, ptr %tmp, align 8, !dbg !589
  store ptr %21, ptr %__UNIQUE_ID_rcu561, align 8, !dbg !588
  br label %do.body17, !dbg !588

do.body17:                                        ; preds = %do.end
  br label %do.cond18, !dbg !593

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !593

do.end19:                                         ; preds = %do.cond18
  %22 = load ptr, ptr %__UNIQUE_ID_rcu561, align 8, !dbg !588
  store ptr %22, ptr %tmp20, align 8, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu561) #15, !dbg !595
  %23 = load ptr, ptr %tmp20, align 8, !dbg !588
  %tbl = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %23, i32 0, i32 0, !dbg !596
  %24 = load ptr, ptr %tbl, align 8, !dbg !596
  %25 = load i32, ptr %bkt, align 4, !dbg !597
  %idxprom = zext i32 %25 to i64, !dbg !595
  %arrayidx = getelementptr %struct.list_head, ptr %24, i64 %idxprom, !dbg !595
  call void @list_add_tail_rcu(ptr noundef %list, ptr noundef %arrayidx) #18, !dbg !598
  call void @llvm.lifetime.end.p0(i64 4, ptr %bkt) #15, !dbg !599
  br label %if.end198, !dbg !600

if.else21:                                        ; preds = %if.then11
  %26 = load ptr, ptr %entry.addr, align 8, !dbg !601
  %list22 = getelementptr inbounds %struct.netlbl_dom_map, ptr %26, i32 0, i32 4, !dbg !602
  call void @INIT_LIST_HEAD(ptr noundef %list22) #18, !dbg !603
  %27 = load ptr, ptr %entry.addr, align 8, !dbg !604
  %family23 = getelementptr inbounds %struct.netlbl_dom_map, ptr %27, i32 0, i32 2, !dbg !605
  %28 = load i16, ptr %family23, align 8, !dbg !605
  %conv = zext i16 %28 to i32, !dbg !604
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 10, label %sw.bb62
    i32 0, label %sw.bb103
  ], !dbg !606

sw.bb:                                            ; preds = %if.else21
  br label %do.body24, !dbg !607

do.body24:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #15, !dbg !608
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !512, metadata !DIExpression()), !dbg !608
  %29 = load ptr, ptr %entry.addr, align 8, !dbg !608
  %30 = ptrtoint ptr %29 to i64, !dbg !608
  store i64 %30, ptr %_r_a_p__v, align 8, !dbg !608
  br i1 false, label %land.lhs.true, label %if.else37, !dbg !609

land.lhs.true:                                    ; preds = %do.body24
  %31 = load i64, ptr %_r_a_p__v, align 8, !dbg !609
  %cmp25 = icmp eq i64 %31, 0, !dbg !609
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !608

if.then27:                                        ; preds = %land.lhs.true
  br label %do.body28, !dbg !609

do.body28:                                        ; preds = %if.then27
  br label %do.body29, !dbg !611

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !613

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !613

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !611

do.body32:                                        ; preds = %do.end31
  %32 = load i64, ptr %_r_a_p__v, align 8, !dbg !615
  %33 = inttoptr i64 %32 to ptr, !dbg !615
  store volatile ptr %33, ptr @netlbl_domhsh_def_ipv4, align 8, !dbg !615
  br label %do.cond33, !dbg !615

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !615

do.end34:                                         ; preds = %do.cond33
  br label %do.cond35, !dbg !611

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !611

do.end36:                                         ; preds = %do.cond35
  br label %if.end59, !dbg !611

if.else37:                                        ; preds = %land.lhs.true, %do.body24
  br label %do.body38, !dbg !609

do.body38:                                        ; preds = %if.else37
  br label %do.body39, !dbg !617

do.body39:                                        ; preds = %do.body38
  br label %do.cond40, !dbg !619

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !619

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !617

do.body42:                                        ; preds = %do.end41
  br label %do.body43, !dbg !621

do.body43:                                        ; preds = %do.body42
  br label %do.cond44, !dbg !623

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !623

do.end45:                                         ; preds = %do.cond44
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !621, !srcloc !625
  br label %do.body46, !dbg !621

do.body46:                                        ; preds = %do.end45
  br label %do.body47, !dbg !626

do.body47:                                        ; preds = %do.body46
  br label %do.cond48, !dbg !628

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !628

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !626

do.body50:                                        ; preds = %do.end49
  %34 = load i64, ptr %_r_a_p__v, align 8, !dbg !630
  %35 = inttoptr i64 %34 to ptr, !dbg !630
  store volatile ptr %35, ptr @netlbl_domhsh_def_ipv4, align 8, !dbg !630
  br label %do.cond51, !dbg !630

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !630

do.end52:                                         ; preds = %do.cond51
  br label %do.cond53, !dbg !626

do.cond53:                                        ; preds = %do.end52
  br label %do.end54, !dbg !626

do.end54:                                         ; preds = %do.cond53
  br label %do.cond55, !dbg !621

do.cond55:                                        ; preds = %do.end54
  br label %do.end56, !dbg !621

do.end56:                                         ; preds = %do.cond55
  br label %do.cond57, !dbg !617

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !617

do.end58:                                         ; preds = %do.cond57
  br label %if.end59

if.end59:                                         ; preds = %do.end58, %do.end36
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #15, !dbg !607
  br label %do.cond60, !dbg !608

do.cond60:                                        ; preds = %if.end59
  br label %do.end61, !dbg !608

do.end61:                                         ; preds = %do.cond60
  br label %sw.epilog, !dbg !632

sw.bb62:                                          ; preds = %if.else21
  br label %do.body63, !dbg !633

do.body63:                                        ; preds = %sw.bb62
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v64) #15, !dbg !634
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v64, metadata !516, metadata !DIExpression()), !dbg !634
  %36 = load ptr, ptr %entry.addr, align 8, !dbg !634
  %37 = ptrtoint ptr %36 to i64, !dbg !634
  store i64 %37, ptr %_r_a_p__v64, align 8, !dbg !634
  br i1 false, label %land.lhs.true65, label %if.else78, !dbg !635

land.lhs.true65:                                  ; preds = %do.body63
  %38 = load i64, ptr %_r_a_p__v64, align 8, !dbg !635
  %cmp66 = icmp eq i64 %38, 0, !dbg !635
  br i1 %cmp66, label %if.then68, label %if.else78, !dbg !634

if.then68:                                        ; preds = %land.lhs.true65
  br label %do.body69, !dbg !635

do.body69:                                        ; preds = %if.then68
  br label %do.body70, !dbg !637

do.body70:                                        ; preds = %do.body69
  br label %do.cond71, !dbg !639

do.cond71:                                        ; preds = %do.body70
  br label %do.end72, !dbg !639

do.end72:                                         ; preds = %do.cond71
  br label %do.body73, !dbg !637

do.body73:                                        ; preds = %do.end72
  %39 = load i64, ptr %_r_a_p__v64, align 8, !dbg !641
  %40 = inttoptr i64 %39 to ptr, !dbg !641
  store volatile ptr %40, ptr @netlbl_domhsh_def_ipv6, align 8, !dbg !641
  br label %do.cond74, !dbg !641

do.cond74:                                        ; preds = %do.body73
  br label %do.end75, !dbg !641

do.end75:                                         ; preds = %do.cond74
  br label %do.cond76, !dbg !637

do.cond76:                                        ; preds = %do.end75
  br label %do.end77, !dbg !637

do.end77:                                         ; preds = %do.cond76
  br label %if.end100, !dbg !637

if.else78:                                        ; preds = %land.lhs.true65, %do.body63
  br label %do.body79, !dbg !635

do.body79:                                        ; preds = %if.else78
  br label %do.body80, !dbg !643

do.body80:                                        ; preds = %do.body79
  br label %do.cond81, !dbg !645

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !645

do.end82:                                         ; preds = %do.cond81
  br label %do.body83, !dbg !643

do.body83:                                        ; preds = %do.end82
  br label %do.body84, !dbg !647

do.body84:                                        ; preds = %do.body83
  br label %do.cond85, !dbg !649

do.cond85:                                        ; preds = %do.body84
  br label %do.end86, !dbg !649

do.end86:                                         ; preds = %do.cond85
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !647, !srcloc !651
  br label %do.body87, !dbg !647

do.body87:                                        ; preds = %do.end86
  br label %do.body88, !dbg !652

do.body88:                                        ; preds = %do.body87
  br label %do.cond89, !dbg !654

do.cond89:                                        ; preds = %do.body88
  br label %do.end90, !dbg !654

do.end90:                                         ; preds = %do.cond89
  br label %do.body91, !dbg !652

do.body91:                                        ; preds = %do.end90
  %41 = load i64, ptr %_r_a_p__v64, align 8, !dbg !656
  %42 = inttoptr i64 %41 to ptr, !dbg !656
  store volatile ptr %42, ptr @netlbl_domhsh_def_ipv6, align 8, !dbg !656
  br label %do.cond92, !dbg !656

do.cond92:                                        ; preds = %do.body91
  br label %do.end93, !dbg !656

do.end93:                                         ; preds = %do.cond92
  br label %do.cond94, !dbg !652

do.cond94:                                        ; preds = %do.end93
  br label %do.end95, !dbg !652

do.end95:                                         ; preds = %do.cond94
  br label %do.cond96, !dbg !647

do.cond96:                                        ; preds = %do.end95
  br label %do.end97, !dbg !647

do.end97:                                         ; preds = %do.cond96
  br label %do.cond98, !dbg !643

do.cond98:                                        ; preds = %do.end97
  br label %do.end99, !dbg !643

do.end99:                                         ; preds = %do.cond98
  br label %if.end100

if.end100:                                        ; preds = %do.end99, %do.end77
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v64) #15, !dbg !633
  br label %do.cond101, !dbg !634

do.cond101:                                       ; preds = %if.end100
  br label %do.end102, !dbg !634

do.end102:                                        ; preds = %do.cond101
  br label %sw.epilog, !dbg !658

sw.bb103:                                         ; preds = %if.else21
  %43 = load ptr, ptr %entry.addr, align 8, !dbg !659
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %43, i32 0, i32 1, !dbg !661
  %type = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def, i32 0, i32 0, !dbg !662
  %44 = load i32, ptr %type, align 8, !dbg !662
  %cmp104 = icmp ne i32 %44, 5, !dbg !663
  br i1 %cmp104, label %if.then106, label %if.end107, !dbg !664

if.then106:                                       ; preds = %sw.bb103
  store i32 -22, ptr %ret_val, align 4, !dbg !665
  br label %add_return, !dbg !667

if.end107:                                        ; preds = %sw.bb103
  %call108 = call noalias ptr @kzalloc(i64 noundef 64, i32 noundef 2080) #16, !dbg !668
  store ptr %call108, ptr %entry_b, align 8, !dbg !669
  %45 = load ptr, ptr %entry_b, align 8, !dbg !670
  %cmp109 = icmp eq ptr %45, null, !dbg !672
  br i1 %cmp109, label %if.then111, label %if.end112, !dbg !673

if.then111:                                       ; preds = %if.end107
  store i32 -12, ptr %ret_val, align 4, !dbg !674
  br label %add_return, !dbg !676

if.end112:                                        ; preds = %if.end107
  %46 = load ptr, ptr %entry_b, align 8, !dbg !677
  %family113 = getelementptr inbounds %struct.netlbl_dom_map, ptr %46, i32 0, i32 2, !dbg !678
  store i16 10, ptr %family113, align 8, !dbg !679
  %47 = load ptr, ptr %entry_b, align 8, !dbg !680
  %def114 = getelementptr inbounds %struct.netlbl_dom_map, ptr %47, i32 0, i32 1, !dbg !681
  %type115 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def114, i32 0, i32 0, !dbg !682
  store i32 5, ptr %type115, align 8, !dbg !683
  %48 = load ptr, ptr %entry_b, align 8, !dbg !684
  %valid116 = getelementptr inbounds %struct.netlbl_dom_map, ptr %48, i32 0, i32 3, !dbg !685
  store i32 1, ptr %valid116, align 4, !dbg !686
  %49 = load ptr, ptr %entry.addr, align 8, !dbg !687
  %family117 = getelementptr inbounds %struct.netlbl_dom_map, ptr %49, i32 0, i32 2, !dbg !688
  store i16 2, ptr %family117, align 8, !dbg !689
  br label %do.body118, !dbg !690

do.body118:                                       ; preds = %if.end112
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v119) #15, !dbg !691
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v119, metadata !518, metadata !DIExpression()), !dbg !691
  %50 = load ptr, ptr %entry.addr, align 8, !dbg !691
  %51 = ptrtoint ptr %50 to i64, !dbg !691
  store i64 %51, ptr %_r_a_p__v119, align 8, !dbg !691
  br i1 false, label %land.lhs.true120, label %if.else133, !dbg !692

land.lhs.true120:                                 ; preds = %do.body118
  %52 = load i64, ptr %_r_a_p__v119, align 8, !dbg !692
  %cmp121 = icmp eq i64 %52, 0, !dbg !692
  br i1 %cmp121, label %if.then123, label %if.else133, !dbg !691

if.then123:                                       ; preds = %land.lhs.true120
  br label %do.body124, !dbg !692

do.body124:                                       ; preds = %if.then123
  br label %do.body125, !dbg !694

do.body125:                                       ; preds = %do.body124
  br label %do.cond126, !dbg !696

do.cond126:                                       ; preds = %do.body125
  br label %do.end127, !dbg !696

do.end127:                                        ; preds = %do.cond126
  br label %do.body128, !dbg !694

do.body128:                                       ; preds = %do.end127
  %53 = load i64, ptr %_r_a_p__v119, align 8, !dbg !698
  %54 = inttoptr i64 %53 to ptr, !dbg !698
  store volatile ptr %54, ptr @netlbl_domhsh_def_ipv4, align 8, !dbg !698
  br label %do.cond129, !dbg !698

do.cond129:                                       ; preds = %do.body128
  br label %do.end130, !dbg !698

do.end130:                                        ; preds = %do.cond129
  br label %do.cond131, !dbg !694

do.cond131:                                       ; preds = %do.end130
  br label %do.end132, !dbg !694

do.end132:                                        ; preds = %do.cond131
  br label %if.end155, !dbg !694

if.else133:                                       ; preds = %land.lhs.true120, %do.body118
  br label %do.body134, !dbg !692

do.body134:                                       ; preds = %if.else133
  br label %do.body135, !dbg !700

do.body135:                                       ; preds = %do.body134
  br label %do.cond136, !dbg !702

do.cond136:                                       ; preds = %do.body135
  br label %do.end137, !dbg !702

do.end137:                                        ; preds = %do.cond136
  br label %do.body138, !dbg !700

do.body138:                                       ; preds = %do.end137
  br label %do.body139, !dbg !704

do.body139:                                       ; preds = %do.body138
  br label %do.cond140, !dbg !706

do.cond140:                                       ; preds = %do.body139
  br label %do.end141, !dbg !706

do.end141:                                        ; preds = %do.cond140
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !704, !srcloc !708
  br label %do.body142, !dbg !704

do.body142:                                       ; preds = %do.end141
  br label %do.body143, !dbg !709

do.body143:                                       ; preds = %do.body142
  br label %do.cond144, !dbg !711

do.cond144:                                       ; preds = %do.body143
  br label %do.end145, !dbg !711

do.end145:                                        ; preds = %do.cond144
  br label %do.body146, !dbg !709

do.body146:                                       ; preds = %do.end145
  %55 = load i64, ptr %_r_a_p__v119, align 8, !dbg !713
  %56 = inttoptr i64 %55 to ptr, !dbg !713
  store volatile ptr %56, ptr @netlbl_domhsh_def_ipv4, align 8, !dbg !713
  br label %do.cond147, !dbg !713

do.cond147:                                       ; preds = %do.body146
  br label %do.end148, !dbg !713

do.end148:                                        ; preds = %do.cond147
  br label %do.cond149, !dbg !709

do.cond149:                                       ; preds = %do.end148
  br label %do.end150, !dbg !709

do.end150:                                        ; preds = %do.cond149
  br label %do.cond151, !dbg !704

do.cond151:                                       ; preds = %do.end150
  br label %do.end152, !dbg !704

do.end152:                                        ; preds = %do.cond151
  br label %do.cond153, !dbg !700

do.cond153:                                       ; preds = %do.end152
  br label %do.end154, !dbg !700

do.end154:                                        ; preds = %do.cond153
  br label %if.end155

if.end155:                                        ; preds = %do.end154, %do.end132
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v119) #15, !dbg !690
  br label %do.cond156, !dbg !691

do.cond156:                                       ; preds = %if.end155
  br label %do.end157, !dbg !691

do.end157:                                        ; preds = %do.cond156
  br label %do.body158, !dbg !715

do.body158:                                       ; preds = %do.end157
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v159) #15, !dbg !716
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v159, metadata !520, metadata !DIExpression()), !dbg !716
  %57 = load ptr, ptr %entry_b, align 8, !dbg !716
  %58 = ptrtoint ptr %57 to i64, !dbg !716
  store i64 %58, ptr %_r_a_p__v159, align 8, !dbg !716
  br i1 false, label %land.lhs.true160, label %if.else173, !dbg !717

land.lhs.true160:                                 ; preds = %do.body158
  %59 = load i64, ptr %_r_a_p__v159, align 8, !dbg !717
  %cmp161 = icmp eq i64 %59, 0, !dbg !717
  br i1 %cmp161, label %if.then163, label %if.else173, !dbg !716

if.then163:                                       ; preds = %land.lhs.true160
  br label %do.body164, !dbg !717

do.body164:                                       ; preds = %if.then163
  br label %do.body165, !dbg !719

do.body165:                                       ; preds = %do.body164
  br label %do.cond166, !dbg !721

do.cond166:                                       ; preds = %do.body165
  br label %do.end167, !dbg !721

do.end167:                                        ; preds = %do.cond166
  br label %do.body168, !dbg !719

do.body168:                                       ; preds = %do.end167
  %60 = load i64, ptr %_r_a_p__v159, align 8, !dbg !723
  %61 = inttoptr i64 %60 to ptr, !dbg !723
  store volatile ptr %61, ptr @netlbl_domhsh_def_ipv6, align 8, !dbg !723
  br label %do.cond169, !dbg !723

do.cond169:                                       ; preds = %do.body168
  br label %do.end170, !dbg !723

do.end170:                                        ; preds = %do.cond169
  br label %do.cond171, !dbg !719

do.cond171:                                       ; preds = %do.end170
  br label %do.end172, !dbg !719

do.end172:                                        ; preds = %do.cond171
  br label %if.end195, !dbg !719

if.else173:                                       ; preds = %land.lhs.true160, %do.body158
  br label %do.body174, !dbg !717

do.body174:                                       ; preds = %if.else173
  br label %do.body175, !dbg !725

do.body175:                                       ; preds = %do.body174
  br label %do.cond176, !dbg !727

do.cond176:                                       ; preds = %do.body175
  br label %do.end177, !dbg !727

do.end177:                                        ; preds = %do.cond176
  br label %do.body178, !dbg !725

do.body178:                                       ; preds = %do.end177
  br label %do.body179, !dbg !729

do.body179:                                       ; preds = %do.body178
  br label %do.cond180, !dbg !731

do.cond180:                                       ; preds = %do.body179
  br label %do.end181, !dbg !731

do.end181:                                        ; preds = %do.cond180
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !729, !srcloc !733
  br label %do.body182, !dbg !729

do.body182:                                       ; preds = %do.end181
  br label %do.body183, !dbg !734

do.body183:                                       ; preds = %do.body182
  br label %do.cond184, !dbg !736

do.cond184:                                       ; preds = %do.body183
  br label %do.end185, !dbg !736

do.end185:                                        ; preds = %do.cond184
  br label %do.body186, !dbg !734

do.body186:                                       ; preds = %do.end185
  %62 = load i64, ptr %_r_a_p__v159, align 8, !dbg !738
  %63 = inttoptr i64 %62 to ptr, !dbg !738
  store volatile ptr %63, ptr @netlbl_domhsh_def_ipv6, align 8, !dbg !738
  br label %do.cond187, !dbg !738

do.cond187:                                       ; preds = %do.body186
  br label %do.end188, !dbg !738

do.end188:                                        ; preds = %do.cond187
  br label %do.cond189, !dbg !734

do.cond189:                                       ; preds = %do.end188
  br label %do.end190, !dbg !734

do.end190:                                        ; preds = %do.cond189
  br label %do.cond191, !dbg !729

do.cond191:                                       ; preds = %do.end190
  br label %do.end192, !dbg !729

do.end192:                                        ; preds = %do.cond191
  br label %do.cond193, !dbg !725

do.cond193:                                       ; preds = %do.end192
  br label %do.end194, !dbg !725

do.end194:                                        ; preds = %do.cond193
  br label %if.end195

if.end195:                                        ; preds = %do.end194, %do.end172
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v159) #15, !dbg !715
  br label %do.cond196, !dbg !716

do.cond196:                                       ; preds = %if.end195
  br label %do.end197, !dbg !716

do.end197:                                        ; preds = %do.cond196
  br label %sw.epilog, !dbg !740

sw.default:                                       ; preds = %if.else21
  store i32 -22, ptr %ret_val, align 4, !dbg !741
  br label %add_return, !dbg !742

sw.epilog:                                        ; preds = %do.end197, %do.end102, %do.end61
  br label %if.end198

if.end198:                                        ; preds = %sw.epilog, %do.end19
  %64 = load ptr, ptr %entry.addr, align 8, !dbg !743
  %def199 = getelementptr inbounds %struct.netlbl_dom_map, ptr %64, i32 0, i32 1, !dbg !745
  %type200 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def199, i32 0, i32 0, !dbg !746
  %65 = load i32, ptr %type200, align 8, !dbg !746
  %cmp201 = icmp eq i32 %65, 6, !dbg !747
  br i1 %cmp201, label %if.then203, label %if.else237, !dbg !748

if.then203:                                       ; preds = %if.end198
  %66 = load ptr, ptr %entry.addr, align 8, !dbg !749
  %def204 = getelementptr inbounds %struct.netlbl_dom_map, ptr %66, i32 0, i32 1, !dbg !749
  %67 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def204, i32 0, i32 1, !dbg !749
  %68 = load ptr, ptr %67, align 8, !dbg !749
  %list4 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %68, i32 0, i32 0, !dbg !749
  %next = getelementptr inbounds %struct.list_head, ptr %list4, i32 0, i32 0, !dbg !749
  %69 = load ptr, ptr %next, align 8, !dbg !749
  %70 = load ptr, ptr %entry.addr, align 8, !dbg !749
  %def205 = getelementptr inbounds %struct.netlbl_dom_map, ptr %70, i32 0, i32 1, !dbg !749
  %71 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def205, i32 0, i32 1, !dbg !749
  %72 = load ptr, ptr %71, align 8, !dbg !749
  %list4206 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %72, i32 0, i32 0, !dbg !749
  %call207 = call ptr @__af4list_valid_rcu(ptr noundef %69, ptr noundef %list4206) #18, !dbg !749
  store ptr %call207, ptr %iter4, align 8, !dbg !749
  br label %for.cond, !dbg !749

for.cond:                                         ; preds = %for.inc, %if.then203
  %73 = load ptr, ptr %iter4, align 8, !dbg !752
  %list208 = getelementptr inbounds %struct.netlbl_af4list, ptr %73, i32 0, i32 3, !dbg !752
  %74 = load ptr, ptr %entry.addr, align 8, !dbg !752
  %def209 = getelementptr inbounds %struct.netlbl_dom_map, ptr %74, i32 0, i32 1, !dbg !752
  %75 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def209, i32 0, i32 1, !dbg !752
  %76 = load ptr, ptr %75, align 8, !dbg !752
  %list4210 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %76, i32 0, i32 0, !dbg !752
  %cmp211 = icmp ne ptr %list208, %list4210, !dbg !752
  br i1 %cmp211, label %for.body, label %for.end, !dbg !749

for.body:                                         ; preds = %for.cond
  %77 = load ptr, ptr %entry.addr, align 8, !dbg !754
  %78 = load ptr, ptr %iter4, align 8, !dbg !755
  %79 = load i32, ptr %ret_val, align 4, !dbg !756
  %80 = load ptr, ptr %audit_info.addr, align 8, !dbg !757
  call void @netlbl_domhsh_audit_add(ptr noundef %77, ptr noundef %78, ptr noundef null, i32 noundef %79, ptr noundef %80) #18, !dbg !758
  br label %for.inc, !dbg !758

for.inc:                                          ; preds = %for.body
  %81 = load ptr, ptr %iter4, align 8, !dbg !752
  %list213 = getelementptr inbounds %struct.netlbl_af4list, ptr %81, i32 0, i32 3, !dbg !752
  %next214 = getelementptr inbounds %struct.list_head, ptr %list213, i32 0, i32 0, !dbg !752
  %82 = load ptr, ptr %next214, align 8, !dbg !752
  %83 = load ptr, ptr %entry.addr, align 8, !dbg !752
  %def215 = getelementptr inbounds %struct.netlbl_dom_map, ptr %83, i32 0, i32 1, !dbg !752
  %84 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def215, i32 0, i32 1, !dbg !752
  %85 = load ptr, ptr %84, align 8, !dbg !752
  %list4216 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %85, i32 0, i32 0, !dbg !752
  %call217 = call ptr @__af4list_valid_rcu(ptr noundef %82, ptr noundef %list4216) #18, !dbg !752
  store ptr %call217, ptr %iter4, align 8, !dbg !752
  br label %for.cond, !dbg !752, !llvm.loop !759

for.end:                                          ; preds = %for.cond
  %86 = load ptr, ptr %entry.addr, align 8, !dbg !761
  %def218 = getelementptr inbounds %struct.netlbl_dom_map, ptr %86, i32 0, i32 1, !dbg !761
  %87 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def218, i32 0, i32 1, !dbg !761
  %88 = load ptr, ptr %87, align 8, !dbg !761
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %88, i32 0, i32 1, !dbg !761
  %next219 = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !761
  %89 = load ptr, ptr %next219, align 8, !dbg !761
  %90 = load ptr, ptr %entry.addr, align 8, !dbg !761
  %def220 = getelementptr inbounds %struct.netlbl_dom_map, ptr %90, i32 0, i32 1, !dbg !761
  %91 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def220, i32 0, i32 1, !dbg !761
  %92 = load ptr, ptr %91, align 8, !dbg !761
  %list6221 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %92, i32 0, i32 1, !dbg !761
  %call222 = call ptr @__af6list_valid_rcu(ptr noundef %89, ptr noundef %list6221) #18, !dbg !761
  store ptr %call222, ptr %iter6, align 8, !dbg !761
  br label %for.cond223, !dbg !761

for.cond223:                                      ; preds = %for.inc230, %for.end
  %93 = load ptr, ptr %iter6, align 8, !dbg !763
  %list224 = getelementptr inbounds %struct.netlbl_af6list, ptr %93, i32 0, i32 3, !dbg !763
  %94 = load ptr, ptr %entry.addr, align 8, !dbg !763
  %def225 = getelementptr inbounds %struct.netlbl_dom_map, ptr %94, i32 0, i32 1, !dbg !763
  %95 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def225, i32 0, i32 1, !dbg !763
  %96 = load ptr, ptr %95, align 8, !dbg !763
  %list6226 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %96, i32 0, i32 1, !dbg !763
  %cmp227 = icmp ne ptr %list224, %list6226, !dbg !763
  br i1 %cmp227, label %for.body229, label %for.end236, !dbg !761

for.body229:                                      ; preds = %for.cond223
  %97 = load ptr, ptr %entry.addr, align 8, !dbg !765
  %98 = load ptr, ptr %iter6, align 8, !dbg !766
  %99 = load i32, ptr %ret_val, align 4, !dbg !767
  %100 = load ptr, ptr %audit_info.addr, align 8, !dbg !768
  call void @netlbl_domhsh_audit_add(ptr noundef %97, ptr noundef null, ptr noundef %98, i32 noundef %99, ptr noundef %100) #18, !dbg !769
  br label %for.inc230, !dbg !769

for.inc230:                                       ; preds = %for.body229
  %101 = load ptr, ptr %iter6, align 8, !dbg !763
  %list231 = getelementptr inbounds %struct.netlbl_af6list, ptr %101, i32 0, i32 3, !dbg !763
  %next232 = getelementptr inbounds %struct.list_head, ptr %list231, i32 0, i32 0, !dbg !763
  %102 = load ptr, ptr %next232, align 8, !dbg !763
  %103 = load ptr, ptr %entry.addr, align 8, !dbg !763
  %def233 = getelementptr inbounds %struct.netlbl_dom_map, ptr %103, i32 0, i32 1, !dbg !763
  %104 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def233, i32 0, i32 1, !dbg !763
  %105 = load ptr, ptr %104, align 8, !dbg !763
  %list6234 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %105, i32 0, i32 1, !dbg !763
  %call235 = call ptr @__af6list_valid_rcu(ptr noundef %102, ptr noundef %list6234) #18, !dbg !763
  store ptr %call235, ptr %iter6, align 8, !dbg !763
  br label %for.cond223, !dbg !763, !llvm.loop !770

for.end236:                                       ; preds = %for.cond223
  br label %if.end238, !dbg !772

if.else237:                                       ; preds = %if.end198
  %106 = load ptr, ptr %entry.addr, align 8, !dbg !773
  %107 = load i32, ptr %ret_val, align 4, !dbg !774
  %108 = load ptr, ptr %audit_info.addr, align 8, !dbg !775
  call void @netlbl_domhsh_audit_add(ptr noundef %106, ptr noundef null, ptr noundef null, i32 noundef %107, ptr noundef %108) #18, !dbg !776
  br label %if.end238

if.end238:                                        ; preds = %if.else237, %for.end236
  br label %if.end368, !dbg !777

if.else239:                                       ; preds = %if.end9
  %109 = load ptr, ptr %entry_old, align 8, !dbg !778
  %def240 = getelementptr inbounds %struct.netlbl_dom_map, ptr %109, i32 0, i32 1, !dbg !779
  %type241 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def240, i32 0, i32 0, !dbg !780
  %110 = load i32, ptr %type241, align 8, !dbg !780
  %cmp242 = icmp eq i32 %110, 6, !dbg !781
  br i1 %cmp242, label %land.lhs.true244, label %if.else366, !dbg !782

land.lhs.true244:                                 ; preds = %if.else239
  %111 = load ptr, ptr %entry.addr, align 8, !dbg !783
  %def245 = getelementptr inbounds %struct.netlbl_dom_map, ptr %111, i32 0, i32 1, !dbg !784
  %type246 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def245, i32 0, i32 0, !dbg !785
  %112 = load i32, ptr %type246, align 8, !dbg !785
  %cmp247 = icmp eq i32 %112, 6, !dbg !786
  br i1 %cmp247, label %if.then249, label %if.else366, !dbg !787

if.then249:                                       ; preds = %land.lhs.true244
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_list4) #15, !dbg !788
  call void @llvm.dbg.declare(metadata ptr %old_list4, metadata !522, metadata !DIExpression()), !dbg !789
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_list6) #15, !dbg !790
  call void @llvm.dbg.declare(metadata ptr %old_list6, metadata !525, metadata !DIExpression()), !dbg !791
  %113 = load ptr, ptr %entry_old, align 8, !dbg !792
  %def250 = getelementptr inbounds %struct.netlbl_dom_map, ptr %113, i32 0, i32 1, !dbg !793
  %114 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def250, i32 0, i32 1, !dbg !794
  %115 = load ptr, ptr %114, align 8, !dbg !794
  %list4251 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %115, i32 0, i32 0, !dbg !795
  store ptr %list4251, ptr %old_list4, align 8, !dbg !796
  %116 = load ptr, ptr %entry_old, align 8, !dbg !797
  %def252 = getelementptr inbounds %struct.netlbl_dom_map, ptr %116, i32 0, i32 1, !dbg !798
  %117 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def252, i32 0, i32 1, !dbg !799
  %118 = load ptr, ptr %117, align 8, !dbg !799
  %list6253 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %118, i32 0, i32 1, !dbg !800
  store ptr %list6253, ptr %old_list6, align 8, !dbg !801
  %119 = load ptr, ptr %entry.addr, align 8, !dbg !802
  %def254 = getelementptr inbounds %struct.netlbl_dom_map, ptr %119, i32 0, i32 1, !dbg !802
  %120 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def254, i32 0, i32 1, !dbg !802
  %121 = load ptr, ptr %120, align 8, !dbg !802
  %list4255 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %121, i32 0, i32 0, !dbg !802
  %next256 = getelementptr inbounds %struct.list_head, ptr %list4255, i32 0, i32 0, !dbg !802
  %122 = load ptr, ptr %next256, align 8, !dbg !802
  %123 = load ptr, ptr %entry.addr, align 8, !dbg !802
  %def257 = getelementptr inbounds %struct.netlbl_dom_map, ptr %123, i32 0, i32 1, !dbg !802
  %124 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def257, i32 0, i32 1, !dbg !802
  %125 = load ptr, ptr %124, align 8, !dbg !802
  %list4258 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %125, i32 0, i32 0, !dbg !802
  %call259 = call ptr @__af4list_valid_rcu(ptr noundef %122, ptr noundef %list4258) #18, !dbg !802
  store ptr %call259, ptr %iter4, align 8, !dbg !802
  br label %for.cond260, !dbg !802

for.cond260:                                      ; preds = %for.inc270, %if.then249
  %126 = load ptr, ptr %iter4, align 8, !dbg !804
  %list261 = getelementptr inbounds %struct.netlbl_af4list, ptr %126, i32 0, i32 3, !dbg !804
  %127 = load ptr, ptr %entry.addr, align 8, !dbg !804
  %def262 = getelementptr inbounds %struct.netlbl_dom_map, ptr %127, i32 0, i32 1, !dbg !804
  %128 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def262, i32 0, i32 1, !dbg !804
  %129 = load ptr, ptr %128, align 8, !dbg !804
  %list4263 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %129, i32 0, i32 0, !dbg !804
  %cmp264 = icmp ne ptr %list261, %list4263, !dbg !804
  br i1 %cmp264, label %for.body266, label %for.end276, !dbg !802

for.body266:                                      ; preds = %for.cond260
  %130 = load ptr, ptr %iter4, align 8, !dbg !806
  %addr = getelementptr inbounds %struct.netlbl_af4list, ptr %130, i32 0, i32 0, !dbg !808
  %131 = load i32, ptr %addr, align 8, !dbg !808
  %132 = load ptr, ptr %iter4, align 8, !dbg !809
  %mask = getelementptr inbounds %struct.netlbl_af4list, ptr %132, i32 0, i32 1, !dbg !810
  %133 = load i32, ptr %mask, align 4, !dbg !810
  %134 = load ptr, ptr %old_list4, align 8, !dbg !811
  %call267 = call ptr @netlbl_af4list_search_exact(i32 noundef %131, i32 noundef %133, ptr noundef %134) #18, !dbg !812
  %tobool = icmp ne ptr %call267, null, !dbg !812
  br i1 %tobool, label %if.then268, label %if.end269, !dbg !813

if.then268:                                       ; preds = %for.body266
  store i32 -17, ptr %ret_val, align 4, !dbg !814
  store i32 51, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !816

if.end269:                                        ; preds = %for.body266
  br label %for.inc270, !dbg !817

for.inc270:                                       ; preds = %if.end269
  %135 = load ptr, ptr %iter4, align 8, !dbg !804
  %list271 = getelementptr inbounds %struct.netlbl_af4list, ptr %135, i32 0, i32 3, !dbg !804
  %next272 = getelementptr inbounds %struct.list_head, ptr %list271, i32 0, i32 0, !dbg !804
  %136 = load ptr, ptr %next272, align 8, !dbg !804
  %137 = load ptr, ptr %entry.addr, align 8, !dbg !804
  %def273 = getelementptr inbounds %struct.netlbl_dom_map, ptr %137, i32 0, i32 1, !dbg !804
  %138 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def273, i32 0, i32 1, !dbg !804
  %139 = load ptr, ptr %138, align 8, !dbg !804
  %list4274 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %139, i32 0, i32 0, !dbg !804
  %call275 = call ptr @__af4list_valid_rcu(ptr noundef %136, ptr noundef %list4274) #18, !dbg !804
  store ptr %call275, ptr %iter4, align 8, !dbg !804
  br label %for.cond260, !dbg !804, !llvm.loop !818

for.end276:                                       ; preds = %for.cond260
  %140 = load ptr, ptr %entry.addr, align 8, !dbg !820
  %def277 = getelementptr inbounds %struct.netlbl_dom_map, ptr %140, i32 0, i32 1, !dbg !820
  %141 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def277, i32 0, i32 1, !dbg !820
  %142 = load ptr, ptr %141, align 8, !dbg !820
  %list6278 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %142, i32 0, i32 1, !dbg !820
  %next279 = getelementptr inbounds %struct.list_head, ptr %list6278, i32 0, i32 0, !dbg !820
  %143 = load ptr, ptr %next279, align 8, !dbg !820
  %144 = load ptr, ptr %entry.addr, align 8, !dbg !820
  %def280 = getelementptr inbounds %struct.netlbl_dom_map, ptr %144, i32 0, i32 1, !dbg !820
  %145 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def280, i32 0, i32 1, !dbg !820
  %146 = load ptr, ptr %145, align 8, !dbg !820
  %list6281 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %146, i32 0, i32 1, !dbg !820
  %call282 = call ptr @__af6list_valid_rcu(ptr noundef %143, ptr noundef %list6281) #18, !dbg !820
  store ptr %call282, ptr %iter6, align 8, !dbg !820
  br label %for.cond283, !dbg !820

for.cond283:                                      ; preds = %for.inc296, %for.end276
  %147 = load ptr, ptr %iter6, align 8, !dbg !822
  %list284 = getelementptr inbounds %struct.netlbl_af6list, ptr %147, i32 0, i32 3, !dbg !822
  %148 = load ptr, ptr %entry.addr, align 8, !dbg !822
  %def285 = getelementptr inbounds %struct.netlbl_dom_map, ptr %148, i32 0, i32 1, !dbg !822
  %149 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def285, i32 0, i32 1, !dbg !822
  %150 = load ptr, ptr %149, align 8, !dbg !822
  %list6286 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %150, i32 0, i32 1, !dbg !822
  %cmp287 = icmp ne ptr %list284, %list6286, !dbg !822
  br i1 %cmp287, label %for.body289, label %for.end302, !dbg !820

for.body289:                                      ; preds = %for.cond283
  %151 = load ptr, ptr %iter6, align 8, !dbg !824
  %addr290 = getelementptr inbounds %struct.netlbl_af6list, ptr %151, i32 0, i32 0, !dbg !826
  %152 = load ptr, ptr %iter6, align 8, !dbg !827
  %mask291 = getelementptr inbounds %struct.netlbl_af6list, ptr %152, i32 0, i32 1, !dbg !828
  %153 = load ptr, ptr %old_list6, align 8, !dbg !829
  %call292 = call ptr @netlbl_af6list_search_exact(ptr noundef %addr290, ptr noundef %mask291, ptr noundef %153) #18, !dbg !830
  %tobool293 = icmp ne ptr %call292, null, !dbg !830
  br i1 %tobool293, label %if.then294, label %if.end295, !dbg !831

if.then294:                                       ; preds = %for.body289
  store i32 -17, ptr %ret_val, align 4, !dbg !832
  store i32 51, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !834

if.end295:                                        ; preds = %for.body289
  br label %for.inc296, !dbg !835

for.inc296:                                       ; preds = %if.end295
  %154 = load ptr, ptr %iter6, align 8, !dbg !822
  %list297 = getelementptr inbounds %struct.netlbl_af6list, ptr %154, i32 0, i32 3, !dbg !822
  %next298 = getelementptr inbounds %struct.list_head, ptr %list297, i32 0, i32 0, !dbg !822
  %155 = load ptr, ptr %next298, align 8, !dbg !822
  %156 = load ptr, ptr %entry.addr, align 8, !dbg !822
  %def299 = getelementptr inbounds %struct.netlbl_dom_map, ptr %156, i32 0, i32 1, !dbg !822
  %157 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def299, i32 0, i32 1, !dbg !822
  %158 = load ptr, ptr %157, align 8, !dbg !822
  %list6300 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %158, i32 0, i32 1, !dbg !822
  %call301 = call ptr @__af6list_valid_rcu(ptr noundef %155, ptr noundef %list6300) #18, !dbg !822
  store ptr %call301, ptr %iter6, align 8, !dbg !822
  br label %for.cond283, !dbg !822, !llvm.loop !836

for.end302:                                       ; preds = %for.cond283
  %159 = load ptr, ptr %entry.addr, align 8, !dbg !838
  %def303 = getelementptr inbounds %struct.netlbl_dom_map, ptr %159, i32 0, i32 1, !dbg !838
  %160 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def303, i32 0, i32 1, !dbg !838
  %161 = load ptr, ptr %160, align 8, !dbg !838
  %list4304 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %161, i32 0, i32 0, !dbg !838
  %next305 = getelementptr inbounds %struct.list_head, ptr %list4304, i32 0, i32 0, !dbg !838
  %162 = load ptr, ptr %next305, align 8, !dbg !838
  %163 = load ptr, ptr %entry.addr, align 8, !dbg !838
  %def306 = getelementptr inbounds %struct.netlbl_dom_map, ptr %163, i32 0, i32 1, !dbg !838
  %164 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def306, i32 0, i32 1, !dbg !838
  %165 = load ptr, ptr %164, align 8, !dbg !838
  %list4307 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %165, i32 0, i32 0, !dbg !838
  %call308 = call ptr @__af4list_valid(ptr noundef %162, ptr noundef %list4307) #18, !dbg !838
  store ptr %call308, ptr %iter4, align 8, !dbg !838
  %166 = load ptr, ptr %iter4, align 8, !dbg !838
  %list309 = getelementptr inbounds %struct.netlbl_af4list, ptr %166, i32 0, i32 3, !dbg !838
  %next310 = getelementptr inbounds %struct.list_head, ptr %list309, i32 0, i32 0, !dbg !838
  %167 = load ptr, ptr %next310, align 8, !dbg !838
  %168 = load ptr, ptr %entry.addr, align 8, !dbg !838
  %def311 = getelementptr inbounds %struct.netlbl_dom_map, ptr %168, i32 0, i32 1, !dbg !838
  %169 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def311, i32 0, i32 1, !dbg !838
  %170 = load ptr, ptr %169, align 8, !dbg !838
  %list4312 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %170, i32 0, i32 0, !dbg !838
  %call313 = call ptr @__af4list_valid(ptr noundef %167, ptr noundef %list4312) #18, !dbg !838
  store ptr %call313, ptr %tmp4, align 8, !dbg !838
  br label %for.cond314, !dbg !838

for.cond314:                                      ; preds = %for.inc327, %for.end302
  %171 = load ptr, ptr %iter4, align 8, !dbg !840
  %list315 = getelementptr inbounds %struct.netlbl_af4list, ptr %171, i32 0, i32 3, !dbg !840
  %172 = load ptr, ptr %entry.addr, align 8, !dbg !840
  %def316 = getelementptr inbounds %struct.netlbl_dom_map, ptr %172, i32 0, i32 1, !dbg !840
  %173 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def316, i32 0, i32 1, !dbg !840
  %174 = load ptr, ptr %173, align 8, !dbg !840
  %list4317 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %174, i32 0, i32 0, !dbg !840
  %cmp318 = icmp ne ptr %list315, %list4317, !dbg !840
  br i1 %cmp318, label %for.body320, label %for.end333, !dbg !838

for.body320:                                      ; preds = %for.cond314
  %175 = load ptr, ptr %iter4, align 8, !dbg !842
  call void @netlbl_af4list_remove_entry(ptr noundef %175) #18, !dbg !844
  %176 = load ptr, ptr %iter4, align 8, !dbg !845
  %valid321 = getelementptr inbounds %struct.netlbl_af4list, ptr %176, i32 0, i32 2, !dbg !846
  store i32 1, ptr %valid321, align 8, !dbg !847
  %177 = load ptr, ptr %iter4, align 8, !dbg !848
  %178 = load ptr, ptr %old_list4, align 8, !dbg !849
  %call322 = call i32 @netlbl_af4list_add(ptr noundef %177, ptr noundef %178) #18, !dbg !850
  store i32 %call322, ptr %ret_val, align 4, !dbg !851
  %179 = load ptr, ptr %entry_old, align 8, !dbg !852
  %180 = load ptr, ptr %iter4, align 8, !dbg !853
  %181 = load i32, ptr %ret_val, align 4, !dbg !854
  %182 = load ptr, ptr %audit_info.addr, align 8, !dbg !855
  call void @netlbl_domhsh_audit_add(ptr noundef %179, ptr noundef %180, ptr noundef null, i32 noundef %181, ptr noundef %182) #18, !dbg !856
  %183 = load i32, ptr %ret_val, align 4, !dbg !857
  %cmp323 = icmp ne i32 %183, 0, !dbg !859
  br i1 %cmp323, label %if.then325, label %if.end326, !dbg !860

if.then325:                                       ; preds = %for.body320
  store i32 51, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !861

if.end326:                                        ; preds = %for.body320
  br label %for.inc327, !dbg !862

for.inc327:                                       ; preds = %if.end326
  %184 = load ptr, ptr %tmp4, align 8, !dbg !840
  store ptr %184, ptr %iter4, align 8, !dbg !840
  %185 = load ptr, ptr %iter4, align 8, !dbg !840
  %list328 = getelementptr inbounds %struct.netlbl_af4list, ptr %185, i32 0, i32 3, !dbg !840
  %next329 = getelementptr inbounds %struct.list_head, ptr %list328, i32 0, i32 0, !dbg !840
  %186 = load ptr, ptr %next329, align 8, !dbg !840
  %187 = load ptr, ptr %entry.addr, align 8, !dbg !840
  %def330 = getelementptr inbounds %struct.netlbl_dom_map, ptr %187, i32 0, i32 1, !dbg !840
  %188 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def330, i32 0, i32 1, !dbg !840
  %189 = load ptr, ptr %188, align 8, !dbg !840
  %list4331 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %189, i32 0, i32 0, !dbg !840
  %call332 = call ptr @__af4list_valid(ptr noundef %186, ptr noundef %list4331) #18, !dbg !840
  store ptr %call332, ptr %tmp4, align 8, !dbg !840
  br label %for.cond314, !dbg !840, !llvm.loop !863

for.end333:                                       ; preds = %for.cond314
  %190 = load ptr, ptr %entry.addr, align 8, !dbg !865
  %def334 = getelementptr inbounds %struct.netlbl_dom_map, ptr %190, i32 0, i32 1, !dbg !865
  %191 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def334, i32 0, i32 1, !dbg !865
  %192 = load ptr, ptr %191, align 8, !dbg !865
  %list6335 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %192, i32 0, i32 1, !dbg !865
  %next336 = getelementptr inbounds %struct.list_head, ptr %list6335, i32 0, i32 0, !dbg !865
  %193 = load ptr, ptr %next336, align 8, !dbg !865
  %194 = load ptr, ptr %entry.addr, align 8, !dbg !865
  %def337 = getelementptr inbounds %struct.netlbl_dom_map, ptr %194, i32 0, i32 1, !dbg !865
  %195 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def337, i32 0, i32 1, !dbg !865
  %196 = load ptr, ptr %195, align 8, !dbg !865
  %list6338 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %196, i32 0, i32 1, !dbg !865
  %call339 = call ptr @__af6list_valid(ptr noundef %193, ptr noundef %list6338) #18, !dbg !865
  store ptr %call339, ptr %iter6, align 8, !dbg !865
  %197 = load ptr, ptr %iter6, align 8, !dbg !865
  %list340 = getelementptr inbounds %struct.netlbl_af6list, ptr %197, i32 0, i32 3, !dbg !865
  %next341 = getelementptr inbounds %struct.list_head, ptr %list340, i32 0, i32 0, !dbg !865
  %198 = load ptr, ptr %next341, align 8, !dbg !865
  %199 = load ptr, ptr %entry.addr, align 8, !dbg !865
  %def342 = getelementptr inbounds %struct.netlbl_dom_map, ptr %199, i32 0, i32 1, !dbg !865
  %200 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def342, i32 0, i32 1, !dbg !865
  %201 = load ptr, ptr %200, align 8, !dbg !865
  %list6343 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %201, i32 0, i32 1, !dbg !865
  %call344 = call ptr @__af6list_valid(ptr noundef %198, ptr noundef %list6343) #18, !dbg !865
  store ptr %call344, ptr %tmp6, align 8, !dbg !865
  br label %for.cond345, !dbg !865

for.cond345:                                      ; preds = %for.inc358, %for.end333
  %202 = load ptr, ptr %iter6, align 8, !dbg !867
  %list346 = getelementptr inbounds %struct.netlbl_af6list, ptr %202, i32 0, i32 3, !dbg !867
  %203 = load ptr, ptr %entry.addr, align 8, !dbg !867
  %def347 = getelementptr inbounds %struct.netlbl_dom_map, ptr %203, i32 0, i32 1, !dbg !867
  %204 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def347, i32 0, i32 1, !dbg !867
  %205 = load ptr, ptr %204, align 8, !dbg !867
  %list6348 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %205, i32 0, i32 1, !dbg !867
  %cmp349 = icmp ne ptr %list346, %list6348, !dbg !867
  br i1 %cmp349, label %for.body351, label %for.end364, !dbg !865

for.body351:                                      ; preds = %for.cond345
  %206 = load ptr, ptr %iter6, align 8, !dbg !869
  call void @netlbl_af6list_remove_entry(ptr noundef %206) #18, !dbg !871
  %207 = load ptr, ptr %iter6, align 8, !dbg !872
  %valid352 = getelementptr inbounds %struct.netlbl_af6list, ptr %207, i32 0, i32 2, !dbg !873
  store i32 1, ptr %valid352, align 8, !dbg !874
  %208 = load ptr, ptr %iter6, align 8, !dbg !875
  %209 = load ptr, ptr %old_list6, align 8, !dbg !876
  %call353 = call i32 @netlbl_af6list_add(ptr noundef %208, ptr noundef %209) #18, !dbg !877
  store i32 %call353, ptr %ret_val, align 4, !dbg !878
  %210 = load ptr, ptr %entry_old, align 8, !dbg !879
  %211 = load ptr, ptr %iter6, align 8, !dbg !880
  %212 = load i32, ptr %ret_val, align 4, !dbg !881
  %213 = load ptr, ptr %audit_info.addr, align 8, !dbg !882
  call void @netlbl_domhsh_audit_add(ptr noundef %210, ptr noundef null, ptr noundef %211, i32 noundef %212, ptr noundef %213) #18, !dbg !883
  %214 = load i32, ptr %ret_val, align 4, !dbg !884
  %cmp354 = icmp ne i32 %214, 0, !dbg !886
  br i1 %cmp354, label %if.then356, label %if.end357, !dbg !887

if.then356:                                       ; preds = %for.body351
  store i32 51, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !888

if.end357:                                        ; preds = %for.body351
  br label %for.inc358, !dbg !889

for.inc358:                                       ; preds = %if.end357
  %215 = load ptr, ptr %tmp6, align 8, !dbg !867
  store ptr %215, ptr %iter6, align 8, !dbg !867
  %216 = load ptr, ptr %iter6, align 8, !dbg !867
  %list359 = getelementptr inbounds %struct.netlbl_af6list, ptr %216, i32 0, i32 3, !dbg !867
  %next360 = getelementptr inbounds %struct.list_head, ptr %list359, i32 0, i32 0, !dbg !867
  %217 = load ptr, ptr %next360, align 8, !dbg !867
  %218 = load ptr, ptr %entry.addr, align 8, !dbg !867
  %def361 = getelementptr inbounds %struct.netlbl_dom_map, ptr %218, i32 0, i32 1, !dbg !867
  %219 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def361, i32 0, i32 1, !dbg !867
  %220 = load ptr, ptr %219, align 8, !dbg !867
  %list6362 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %220, i32 0, i32 1, !dbg !867
  %call363 = call ptr @__af6list_valid(ptr noundef %217, ptr noundef %list6362) #18, !dbg !867
  store ptr %call363, ptr %tmp6, align 8, !dbg !867
  br label %for.cond345, !dbg !867, !llvm.loop !890

for.end364:                                       ; preds = %for.cond345
  %221 = load ptr, ptr %entry.addr, align 8, !dbg !892
  %rcu = getelementptr inbounds %struct.netlbl_dom_map, ptr %221, i32 0, i32 5, !dbg !893
  call void @netlbl_domhsh_free_entry(ptr noundef %rcu) #18, !dbg !894
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !895
  br label %cleanup, !dbg !895

cleanup:                                          ; preds = %if.then356, %if.then325, %if.then294, %if.then268, %for.end364
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_list6) #15, !dbg !895
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_list4) #15, !dbg !895
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup369 [
    i32 0, label %cleanup.cont
    i32 51, label %add_return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end367, !dbg !896

if.else366:                                       ; preds = %land.lhs.true244, %if.else239
  store i32 -22, ptr %ret_val, align 4, !dbg !897
  br label %if.end367

if.end367:                                        ; preds = %if.else366, %cleanup.cont
  br label %if.end368

if.end368:                                        ; preds = %if.end367, %if.end238
  br label %add_return, !dbg !898

add_return:                                       ; preds = %if.end368, %cleanup, %sw.default, %if.then111, %if.then106
  call void @llvm.dbg.label(metadata !526), !dbg !899
  call void @spin_unlock(ptr noundef @netlbl_domhsh_lock) #18, !dbg !900
  call void @rcu_read_unlock() #18, !dbg !901
  %222 = load i32, ptr %ret_val, align 4, !dbg !902
  store i32 %222, ptr %retval, align 4, !dbg !903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup369, !dbg !903

cleanup369:                                       ; preds = %add_return, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp6) #15, !dbg !904
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter6) #15, !dbg !904
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp4) #15, !dbg !904
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter4) #15, !dbg !904
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_b) #15, !dbg !904
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_old) #15, !dbg !904
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_val) #15, !dbg !904
  %223 = load i32, ptr %retval, align 4, !dbg !904
  ret i32 %223, !dbg !904
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @netlbl_domhsh_validate(ptr noundef %entry1) #8 align 16 !dbg !905 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %iter4 = alloca ptr, align 8
  %map4 = alloca ptr, align 8
  %iter6 = alloca ptr, align 8
  %map6 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr93 = alloca ptr, align 8
  %tmp94 = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !911, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter4) #15, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %iter4, metadata !912, metadata !DIExpression()), !dbg !929
  call void @llvm.lifetime.start.p0(i64 8, ptr %map4) #15, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %map4, metadata !913, metadata !DIExpression()), !dbg !931
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter6) #15, !dbg !932
  call void @llvm.dbg.declare(metadata ptr %iter6, metadata !914, metadata !DIExpression()), !dbg !933
  call void @llvm.lifetime.start.p0(i64 8, ptr %map6) #15, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %map6, metadata !915, metadata !DIExpression()), !dbg !935
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !936
  %cmp = icmp eq ptr %0, null, !dbg !938
  br i1 %cmp, label %if.then, label %if.end, !dbg !939

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !940

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !941
  %family = getelementptr inbounds %struct.netlbl_dom_map, ptr %1, i32 0, i32 2, !dbg !943
  %2 = load i16, ptr %family, align 8, !dbg !943
  %conv = zext i16 %2 to i32, !dbg !941
  %cmp2 = icmp ne i32 %conv, 2, !dbg !944
  br i1 %cmp2, label %land.lhs.true, label %if.end16, !dbg !945

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !946
  %family4 = getelementptr inbounds %struct.netlbl_dom_map, ptr %3, i32 0, i32 2, !dbg !947
  %4 = load i16, ptr %family4, align 8, !dbg !947
  %conv5 = zext i16 %4 to i32, !dbg !946
  %cmp6 = icmp ne i32 %conv5, 10, !dbg !948
  br i1 %cmp6, label %land.lhs.true8, label %if.end16, !dbg !949

land.lhs.true8:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !950
  %family9 = getelementptr inbounds %struct.netlbl_dom_map, ptr %5, i32 0, i32 2, !dbg !951
  %6 = load i16, ptr %family9, align 8, !dbg !951
  %conv10 = zext i16 %6 to i32, !dbg !950
  %cmp11 = icmp ne i32 %conv10, 0, !dbg !952
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !953

lor.lhs.false:                                    ; preds = %land.lhs.true8
  %7 = load ptr, ptr %entry.addr, align 8, !dbg !954
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %7, i32 0, i32 1, !dbg !955
  %type = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def, i32 0, i32 0, !dbg !956
  %8 = load i32, ptr %type, align 8, !dbg !956
  %cmp13 = icmp ne i32 %8, 5, !dbg !957
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !958

if.then15:                                        ; preds = %lor.lhs.false, %land.lhs.true8
  store i32 -22, ptr %retval, align 4, !dbg !959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !959

if.end16:                                         ; preds = %lor.lhs.false, %land.lhs.true, %if.end
  %9 = load ptr, ptr %entry.addr, align 8, !dbg !960
  %def17 = getelementptr inbounds %struct.netlbl_dom_map, ptr %9, i32 0, i32 1, !dbg !961
  %type18 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def17, i32 0, i32 0, !dbg !962
  %10 = load i32, ptr %type18, align 8, !dbg !962
  switch i32 %10, label %sw.default119 [
    i32 5, label %sw.bb
    i32 3, label %sw.bb32
    i32 7, label %sw.bb43
    i32 6, label %sw.bb54
  ], !dbg !963

sw.bb:                                            ; preds = %if.end16
  %11 = load ptr, ptr %entry.addr, align 8, !dbg !964
  %def19 = getelementptr inbounds %struct.netlbl_dom_map, ptr %11, i32 0, i32 1, !dbg !966
  %12 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def19, i32 0, i32 1, !dbg !967
  %13 = load ptr, ptr %12, align 8, !dbg !967
  %cmp20 = icmp ne ptr %13, null, !dbg !968
  br i1 %cmp20, label %if.then30, label %lor.lhs.false22, !dbg !969

lor.lhs.false22:                                  ; preds = %sw.bb
  %14 = load ptr, ptr %entry.addr, align 8, !dbg !970
  %def23 = getelementptr inbounds %struct.netlbl_dom_map, ptr %14, i32 0, i32 1, !dbg !971
  %15 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def23, i32 0, i32 1, !dbg !972
  %16 = load ptr, ptr %15, align 8, !dbg !972
  %cmp24 = icmp ne ptr %16, null, !dbg !973
  br i1 %cmp24, label %if.then30, label %lor.lhs.false26, !dbg !974

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %17 = load ptr, ptr %entry.addr, align 8, !dbg !975
  %def27 = getelementptr inbounds %struct.netlbl_dom_map, ptr %17, i32 0, i32 1, !dbg !976
  %18 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def27, i32 0, i32 1, !dbg !977
  %19 = load ptr, ptr %18, align 8, !dbg !977
  %cmp28 = icmp ne ptr %19, null, !dbg !978
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !979

if.then30:                                        ; preds = %lor.lhs.false26, %lor.lhs.false22, %sw.bb
  store i32 -22, ptr %retval, align 4, !dbg !980
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !980

if.end31:                                         ; preds = %lor.lhs.false26
  br label %sw.epilog120, !dbg !981

sw.bb32:                                          ; preds = %if.end16
  %20 = load ptr, ptr %entry.addr, align 8, !dbg !982
  %family33 = getelementptr inbounds %struct.netlbl_dom_map, ptr %20, i32 0, i32 2, !dbg !984
  %21 = load i16, ptr %family33, align 8, !dbg !984
  %conv34 = zext i16 %21 to i32, !dbg !982
  %cmp35 = icmp ne i32 %conv34, 2, !dbg !985
  br i1 %cmp35, label %if.then41, label %lor.lhs.false37, !dbg !986

lor.lhs.false37:                                  ; preds = %sw.bb32
  %22 = load ptr, ptr %entry.addr, align 8, !dbg !987
  %def38 = getelementptr inbounds %struct.netlbl_dom_map, ptr %22, i32 0, i32 1, !dbg !988
  %23 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def38, i32 0, i32 1, !dbg !989
  %24 = load ptr, ptr %23, align 8, !dbg !989
  %cmp39 = icmp eq ptr %24, null, !dbg !990
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !991

if.then41:                                        ; preds = %lor.lhs.false37, %sw.bb32
  store i32 -22, ptr %retval, align 4, !dbg !992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !992

if.end42:                                         ; preds = %lor.lhs.false37
  br label %sw.epilog120, !dbg !993

sw.bb43:                                          ; preds = %if.end16
  %25 = load ptr, ptr %entry.addr, align 8, !dbg !994
  %family44 = getelementptr inbounds %struct.netlbl_dom_map, ptr %25, i32 0, i32 2, !dbg !996
  %26 = load i16, ptr %family44, align 8, !dbg !996
  %conv45 = zext i16 %26 to i32, !dbg !994
  %cmp46 = icmp ne i32 %conv45, 10, !dbg !997
  br i1 %cmp46, label %if.then52, label %lor.lhs.false48, !dbg !998

lor.lhs.false48:                                  ; preds = %sw.bb43
  %27 = load ptr, ptr %entry.addr, align 8, !dbg !999
  %def49 = getelementptr inbounds %struct.netlbl_dom_map, ptr %27, i32 0, i32 1, !dbg !1000
  %28 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def49, i32 0, i32 1, !dbg !1001
  %29 = load ptr, ptr %28, align 8, !dbg !1001
  %cmp50 = icmp eq ptr %29, null, !dbg !1002
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !1003

if.then52:                                        ; preds = %lor.lhs.false48, %sw.bb43
  store i32 -22, ptr %retval, align 4, !dbg !1004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1004

if.end53:                                         ; preds = %lor.lhs.false48
  br label %sw.epilog120, !dbg !1005

sw.bb54:                                          ; preds = %if.end16
  %30 = load ptr, ptr %entry.addr, align 8, !dbg !1006
  %def55 = getelementptr inbounds %struct.netlbl_dom_map, ptr %30, i32 0, i32 1, !dbg !1006
  %31 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def55, i32 0, i32 1, !dbg !1006
  %32 = load ptr, ptr %31, align 8, !dbg !1006
  %list4 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %32, i32 0, i32 0, !dbg !1006
  %next = getelementptr inbounds %struct.list_head, ptr %list4, i32 0, i32 0, !dbg !1006
  %33 = load ptr, ptr %next, align 8, !dbg !1006
  %34 = load ptr, ptr %entry.addr, align 8, !dbg !1006
  %def56 = getelementptr inbounds %struct.netlbl_dom_map, ptr %34, i32 0, i32 1, !dbg !1006
  %35 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def56, i32 0, i32 1, !dbg !1006
  %36 = load ptr, ptr %35, align 8, !dbg !1006
  %list457 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %36, i32 0, i32 0, !dbg !1006
  %call = call ptr @__af4list_valid(ptr noundef %33, ptr noundef %list457) #18, !dbg !1006
  store ptr %call, ptr %iter4, align 8, !dbg !1006
  br label %for.cond, !dbg !1006

for.cond:                                         ; preds = %for.inc, %sw.bb54
  %37 = load ptr, ptr %iter4, align 8, !dbg !1007
  %list = getelementptr inbounds %struct.netlbl_af4list, ptr %37, i32 0, i32 3, !dbg !1007
  %38 = load ptr, ptr %entry.addr, align 8, !dbg !1007
  %def58 = getelementptr inbounds %struct.netlbl_dom_map, ptr %38, i32 0, i32 1, !dbg !1007
  %39 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def58, i32 0, i32 1, !dbg !1007
  %40 = load ptr, ptr %39, align 8, !dbg !1007
  %list459 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %40, i32 0, i32 0, !dbg !1007
  %cmp60 = icmp ne ptr %list, %list459, !dbg !1007
  br i1 %cmp60, label %for.body, label %for.end, !dbg !1006

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !1008
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !916, metadata !DIExpression()), !dbg !1008
  %41 = load ptr, ptr %iter4, align 8, !dbg !1008
  store ptr %41, ptr %__mptr, align 8, !dbg !1008
  %42 = load ptr, ptr %__mptr, align 8, !dbg !1008
  %add.ptr = getelementptr i8, ptr %42, i64 -16, !dbg !1008
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1008
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !1009
  %43 = load ptr, ptr %tmp, align 8, !dbg !1008
  store ptr %43, ptr %map4, align 8, !dbg !1010
  %44 = load ptr, ptr %map4, align 8, !dbg !1011
  %def62 = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %44, i32 0, i32 0, !dbg !1012
  %type63 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def62, i32 0, i32 0, !dbg !1013
  %45 = load i32, ptr %type63, align 8, !dbg !1013
  switch i32 %45, label %sw.default [
    i32 5, label %sw.bb64
    i32 3, label %sw.bb70
  ], !dbg !1014

sw.bb64:                                          ; preds = %for.body
  %46 = load ptr, ptr %map4, align 8, !dbg !1015
  %def65 = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %46, i32 0, i32 0, !dbg !1018
  %47 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def65, i32 0, i32 1, !dbg !1019
  %48 = load ptr, ptr %47, align 8, !dbg !1019
  %cmp66 = icmp ne ptr %48, null, !dbg !1020
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !1021

if.then68:                                        ; preds = %sw.bb64
  store i32 -22, ptr %retval, align 4, !dbg !1022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1022

if.end69:                                         ; preds = %sw.bb64
  br label %sw.epilog, !dbg !1023

sw.bb70:                                          ; preds = %for.body
  %49 = load ptr, ptr %map4, align 8, !dbg !1024
  %def71 = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %49, i32 0, i32 0, !dbg !1026
  %50 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def71, i32 0, i32 1, !dbg !1027
  %51 = load ptr, ptr %50, align 8, !dbg !1027
  %cmp72 = icmp eq ptr %51, null, !dbg !1028
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !1029

if.then74:                                        ; preds = %sw.bb70
  store i32 -22, ptr %retval, align 4, !dbg !1030
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1030

if.end75:                                         ; preds = %sw.bb70
  br label %sw.epilog, !dbg !1031

sw.default:                                       ; preds = %for.body
  store i32 -22, ptr %retval, align 4, !dbg !1032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1032

sw.epilog:                                        ; preds = %if.end75, %if.end69
  br label %for.inc, !dbg !1033

for.inc:                                          ; preds = %sw.epilog
  %52 = load ptr, ptr %iter4, align 8, !dbg !1007
  %list76 = getelementptr inbounds %struct.netlbl_af4list, ptr %52, i32 0, i32 3, !dbg !1007
  %next77 = getelementptr inbounds %struct.list_head, ptr %list76, i32 0, i32 0, !dbg !1007
  %53 = load ptr, ptr %next77, align 8, !dbg !1007
  %54 = load ptr, ptr %entry.addr, align 8, !dbg !1007
  %def78 = getelementptr inbounds %struct.netlbl_dom_map, ptr %54, i32 0, i32 1, !dbg !1007
  %55 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def78, i32 0, i32 1, !dbg !1007
  %56 = load ptr, ptr %55, align 8, !dbg !1007
  %list479 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %56, i32 0, i32 0, !dbg !1007
  %call80 = call ptr @__af4list_valid(ptr noundef %53, ptr noundef %list479) #18, !dbg !1007
  store ptr %call80, ptr %iter4, align 8, !dbg !1007
  br label %for.cond, !dbg !1007, !llvm.loop !1034

for.end:                                          ; preds = %for.cond
  %57 = load ptr, ptr %entry.addr, align 8, !dbg !1036
  %def81 = getelementptr inbounds %struct.netlbl_dom_map, ptr %57, i32 0, i32 1, !dbg !1036
  %58 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def81, i32 0, i32 1, !dbg !1036
  %59 = load ptr, ptr %58, align 8, !dbg !1036
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %59, i32 0, i32 1, !dbg !1036
  %next82 = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !1036
  %60 = load ptr, ptr %next82, align 8, !dbg !1036
  %61 = load ptr, ptr %entry.addr, align 8, !dbg !1036
  %def83 = getelementptr inbounds %struct.netlbl_dom_map, ptr %61, i32 0, i32 1, !dbg !1036
  %62 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def83, i32 0, i32 1, !dbg !1036
  %63 = load ptr, ptr %62, align 8, !dbg !1036
  %list684 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %63, i32 0, i32 1, !dbg !1036
  %call85 = call ptr @__af6list_valid(ptr noundef %60, ptr noundef %list684) #18, !dbg !1036
  store ptr %call85, ptr %iter6, align 8, !dbg !1036
  br label %for.cond86, !dbg !1036

for.cond86:                                       ; preds = %for.inc112, %for.end
  %64 = load ptr, ptr %iter6, align 8, !dbg !1037
  %list87 = getelementptr inbounds %struct.netlbl_af6list, ptr %64, i32 0, i32 3, !dbg !1037
  %65 = load ptr, ptr %entry.addr, align 8, !dbg !1037
  %def88 = getelementptr inbounds %struct.netlbl_dom_map, ptr %65, i32 0, i32 1, !dbg !1037
  %66 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def88, i32 0, i32 1, !dbg !1037
  %67 = load ptr, ptr %66, align 8, !dbg !1037
  %list689 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %67, i32 0, i32 1, !dbg !1037
  %cmp90 = icmp ne ptr %list87, %list689, !dbg !1037
  br i1 %cmp90, label %for.body92, label %for.end118, !dbg !1036

for.body92:                                       ; preds = %for.cond86
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr93) #15, !dbg !1038
  call void @llvm.dbg.declare(metadata ptr %__mptr93, metadata !922, metadata !DIExpression()), !dbg !1038
  %68 = load ptr, ptr %iter6, align 8, !dbg !1038
  store ptr %68, ptr %__mptr93, align 8, !dbg !1038
  %69 = load ptr, ptr %__mptr93, align 8, !dbg !1038
  %add.ptr95 = getelementptr i8, ptr %69, i64 -16, !dbg !1038
  store ptr %add.ptr95, ptr %tmp94, align 8, !dbg !1038
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr93) #15, !dbg !1039
  %70 = load ptr, ptr %tmp94, align 8, !dbg !1038
  store ptr %70, ptr %map6, align 8, !dbg !1040
  %71 = load ptr, ptr %map6, align 8, !dbg !1041
  %def96 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %71, i32 0, i32 0, !dbg !1042
  %type97 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def96, i32 0, i32 0, !dbg !1043
  %72 = load i32, ptr %type97, align 8, !dbg !1043
  switch i32 %72, label %sw.default110 [
    i32 5, label %sw.bb98
    i32 7, label %sw.bb104
  ], !dbg !1044

sw.bb98:                                          ; preds = %for.body92
  %73 = load ptr, ptr %map6, align 8, !dbg !1045
  %def99 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %73, i32 0, i32 0, !dbg !1048
  %74 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def99, i32 0, i32 1, !dbg !1049
  %75 = load ptr, ptr %74, align 8, !dbg !1049
  %cmp100 = icmp ne ptr %75, null, !dbg !1050
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !1051

if.then102:                                       ; preds = %sw.bb98
  store i32 -22, ptr %retval, align 4, !dbg !1052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1052

if.end103:                                        ; preds = %sw.bb98
  br label %sw.epilog111, !dbg !1053

sw.bb104:                                         ; preds = %for.body92
  %76 = load ptr, ptr %map6, align 8, !dbg !1054
  %def105 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %76, i32 0, i32 0, !dbg !1056
  %77 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def105, i32 0, i32 1, !dbg !1057
  %78 = load ptr, ptr %77, align 8, !dbg !1057
  %cmp106 = icmp eq ptr %78, null, !dbg !1058
  br i1 %cmp106, label %if.then108, label %if.end109, !dbg !1059

if.then108:                                       ; preds = %sw.bb104
  store i32 -22, ptr %retval, align 4, !dbg !1060
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1060

if.end109:                                        ; preds = %sw.bb104
  br label %sw.epilog111, !dbg !1061

sw.default110:                                    ; preds = %for.body92
  store i32 -22, ptr %retval, align 4, !dbg !1062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1062

sw.epilog111:                                     ; preds = %if.end109, %if.end103
  br label %for.inc112, !dbg !1063

for.inc112:                                       ; preds = %sw.epilog111
  %79 = load ptr, ptr %iter6, align 8, !dbg !1037
  %list113 = getelementptr inbounds %struct.netlbl_af6list, ptr %79, i32 0, i32 3, !dbg !1037
  %next114 = getelementptr inbounds %struct.list_head, ptr %list113, i32 0, i32 0, !dbg !1037
  %80 = load ptr, ptr %next114, align 8, !dbg !1037
  %81 = load ptr, ptr %entry.addr, align 8, !dbg !1037
  %def115 = getelementptr inbounds %struct.netlbl_dom_map, ptr %81, i32 0, i32 1, !dbg !1037
  %82 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def115, i32 0, i32 1, !dbg !1037
  %83 = load ptr, ptr %82, align 8, !dbg !1037
  %list6116 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %83, i32 0, i32 1, !dbg !1037
  %call117 = call ptr @__af6list_valid(ptr noundef %80, ptr noundef %list6116) #18, !dbg !1037
  store ptr %call117, ptr %iter6, align 8, !dbg !1037
  br label %for.cond86, !dbg !1037, !llvm.loop !1064

for.end118:                                       ; preds = %for.cond86
  br label %sw.epilog120, !dbg !1066

sw.default119:                                    ; preds = %if.end16
  store i32 -22, ptr %retval, align 4, !dbg !1067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1067

sw.epilog120:                                     ; preds = %for.end118, %if.end53, %if.end42, %if.end31
  store i32 0, ptr %retval, align 4, !dbg !1068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1068

cleanup:                                          ; preds = %sw.epilog120, %sw.default119, %sw.default110, %if.then108, %if.then102, %sw.default, %if.then74, %if.then68, %if.then52, %if.then41, %if.then30, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %map6) #15, !dbg !1069
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter6) #15, !dbg !1069
  call void @llvm.lifetime.end.p0(i64 8, ptr %map4) #15, !dbg !1069
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter4) #15, !dbg !1069
  %84 = load i32, ptr %retval, align 4, !dbg !1069
  ret i32 %84, !dbg !1069
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #7 align 16 !dbg !1070 {
entry:
  call void @__rcu_read_lock() #18, !dbg !1074
  br label %do.body, !dbg !1075

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1076

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !1078

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !1079

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !1081
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @netlbl_domhsh_search(ptr noundef %domain, i16 noundef zeroext %family) #8 align 16 !dbg !1082 {
entry:
  %retval = alloca ptr, align 8
  %domain.addr = alloca ptr, align 8
  %family.addr = alloca i16, align 2
  %bkt = alloca i32, align 4
  %bkt_list = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %__UNIQUE_ID_rcu550 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr18 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !1088, metadata !DIExpression()), !dbg !1103
  store i16 %family, ptr %family.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %family.addr, metadata !1089, metadata !DIExpression()), !dbg !1104
  call void @llvm.lifetime.start.p0(i64 4, ptr %bkt) #15, !dbg !1105
  call void @llvm.dbg.declare(metadata ptr %bkt, metadata !1090, metadata !DIExpression()), !dbg !1106
  call void @llvm.lifetime.start.p0(i64 8, ptr %bkt_list) #15, !dbg !1107
  call void @llvm.dbg.declare(metadata ptr %bkt_list, metadata !1091, metadata !DIExpression()), !dbg !1108
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #15, !dbg !1109
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !1092, metadata !DIExpression()), !dbg !1110
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !1111
  %cmp = icmp ne ptr %0, null, !dbg !1112
  br i1 %cmp, label %if.then, label %if.end27, !dbg !1113

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %domain.addr, align 8, !dbg !1114
  %call = call i32 @netlbl_domhsh_hash(ptr noundef %1) #18, !dbg !1115
  store i32 %call, ptr %bkt, align 4, !dbg !1116
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu550) #15, !dbg !1117
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu550, metadata !1093, metadata !DIExpression()), !dbg !1117
  br label %do.body, !dbg !1118

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1120

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1120

do.end:                                           ; preds = %do.cond
  %2 = load volatile ptr, ptr @netlbl_domhsh, align 8, !dbg !1118
  store ptr %2, ptr %tmp, align 8, !dbg !1120
  %3 = load ptr, ptr %tmp, align 8, !dbg !1118
  store ptr %3, ptr %__UNIQUE_ID_rcu550, align 8, !dbg !1117
  br label %do.body1, !dbg !1117

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !1122

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !1122

do.end3:                                          ; preds = %do.cond2
  %4 = load ptr, ptr %__UNIQUE_ID_rcu550, align 8, !dbg !1117
  store ptr %4, ptr %tmp4, align 8, !dbg !1122
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu550) #15, !dbg !1124
  %5 = load ptr, ptr %tmp4, align 8, !dbg !1117
  %tbl = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %5, i32 0, i32 0, !dbg !1125
  %6 = load ptr, ptr %tbl, align 8, !dbg !1125
  %7 = load i32, ptr %bkt, align 4, !dbg !1126
  %idxprom = zext i32 %7 to i64, !dbg !1124
  %arrayidx = getelementptr %struct.list_head, ptr %6, i64 %idxprom, !dbg !1124
  store ptr %arrayidx, ptr %bkt_list, align 8, !dbg !1127
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !1128
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1097, metadata !DIExpression()), !dbg !1128
  br label %do.body5, !dbg !1129

do.body5:                                         ; preds = %do.end3
  br label %do.cond6, !dbg !1131

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1131

do.end7:                                          ; preds = %do.cond6
  %8 = load ptr, ptr %bkt_list, align 8, !dbg !1129
  %next = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 0, !dbg !1129
  %9 = load volatile ptr, ptr %next, align 8, !dbg !1129
  store ptr %9, ptr %tmp8, align 8, !dbg !1131
  %10 = load ptr, ptr %tmp8, align 8, !dbg !1129
  store ptr %10, ptr %__mptr, align 8, !dbg !1128
  %11 = load ptr, ptr %__mptr, align 8, !dbg !1128
  %add.ptr = getelementptr i8, ptr %11, i64 -32, !dbg !1128
  store ptr %add.ptr, ptr %tmp9, align 8, !dbg !1128
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !1133
  %12 = load ptr, ptr %tmp9, align 8, !dbg !1128
  store ptr %12, ptr %iter, align 8, !dbg !1133
  br label %for.cond, !dbg !1133

for.cond:                                         ; preds = %do.end21, %do.end7
  %13 = load ptr, ptr %iter, align 8, !dbg !1134
  %list = getelementptr inbounds %struct.netlbl_dom_map, ptr %13, i32 0, i32 4, !dbg !1134
  %14 = load ptr, ptr %bkt_list, align 8, !dbg !1134
  %cmp10 = icmp ne ptr %list, %14, !dbg !1134
  br i1 %cmp10, label %for.body, label %for.end, !dbg !1133

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %iter, align 8, !dbg !1135
  %valid = getelementptr inbounds %struct.netlbl_dom_map, ptr %15, i32 0, i32 3, !dbg !1137
  %16 = load i32, ptr %valid, align 4, !dbg !1137
  %tobool = icmp ne i32 %16, 0, !dbg !1135
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1138

land.lhs.true:                                    ; preds = %for.body
  %17 = load ptr, ptr %iter, align 8, !dbg !1139
  %family11 = getelementptr inbounds %struct.netlbl_dom_map, ptr %17, i32 0, i32 2, !dbg !1140
  %18 = load i16, ptr %family11, align 8, !dbg !1140
  %19 = load i16, ptr %family.addr, align 2, !dbg !1141
  %call12 = call zeroext i1 @netlbl_family_match(i16 noundef zeroext %18, i16 noundef zeroext %19) #18, !dbg !1142
  br i1 %call12, label %land.lhs.true13, label %if.end, !dbg !1143

land.lhs.true13:                                  ; preds = %land.lhs.true
  %20 = load ptr, ptr %iter, align 8, !dbg !1144
  %domain14 = getelementptr inbounds %struct.netlbl_dom_map, ptr %20, i32 0, i32 0, !dbg !1145
  %21 = load ptr, ptr %domain14, align 8, !dbg !1145
  %22 = load ptr, ptr %domain.addr, align 8, !dbg !1146
  %call15 = call i32 @strcmp(ptr noundef %21, ptr noundef %22) #18, !dbg !1147
  %cmp16 = icmp eq i32 %call15, 0, !dbg !1148
  br i1 %cmp16, label %if.then17, label %if.end, !dbg !1149

if.then17:                                        ; preds = %land.lhs.true13
  %23 = load ptr, ptr %iter, align 8, !dbg !1150
  store ptr %23, ptr %retval, align 8, !dbg !1151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1151

if.end:                                           ; preds = %land.lhs.true13, %land.lhs.true, %for.body
  br label %for.inc, !dbg !1152

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #15, !dbg !1153
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !1100, metadata !DIExpression()), !dbg !1153
  br label %do.body19, !dbg !1154

do.body19:                                        ; preds = %for.inc
  br label %do.cond20, !dbg !1156

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !1156

do.end21:                                         ; preds = %do.cond20
  %24 = load ptr, ptr %iter, align 8, !dbg !1154
  %list23 = getelementptr inbounds %struct.netlbl_dom_map, ptr %24, i32 0, i32 4, !dbg !1154
  %next24 = getelementptr inbounds %struct.list_head, ptr %list23, i32 0, i32 0, !dbg !1154
  %25 = load volatile ptr, ptr %next24, align 8, !dbg !1154
  store ptr %25, ptr %tmp22, align 8, !dbg !1156
  %26 = load ptr, ptr %tmp22, align 8, !dbg !1154
  store ptr %26, ptr %__mptr18, align 8, !dbg !1153
  %27 = load ptr, ptr %__mptr18, align 8, !dbg !1153
  %add.ptr26 = getelementptr i8, ptr %27, i64 -32, !dbg !1153
  store ptr %add.ptr26, ptr %tmp25, align 8, !dbg !1153
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #15, !dbg !1134
  %28 = load ptr, ptr %tmp25, align 8, !dbg !1153
  store ptr %28, ptr %iter, align 8, !dbg !1134
  br label %for.cond, !dbg !1134, !llvm.loop !1158

for.end:                                          ; preds = %for.cond
  br label %if.end27, !dbg !1160

if.end27:                                         ; preds = %for.end, %entry
  store ptr null, ptr %retval, align 8, !dbg !1161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1161

cleanup:                                          ; preds = %if.end27, %if.then17
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #15, !dbg !1162
  call void @llvm.lifetime.end.p0(i64 8, ptr %bkt_list) #15, !dbg !1162
  call void @llvm.lifetime.end.p0(i64 4, ptr %bkt) #15, !dbg !1162
  %29 = load ptr, ptr %retval, align 8, !dbg !1162
  ret ptr %29, !dbg !1162
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @netlbl_domhsh_search_def(ptr noundef %domain, i16 noundef zeroext %family) #8 align 16 !dbg !1163 {
entry:
  %retval = alloca ptr, align 8
  %domain.addr = alloca ptr, align 8
  %family.addr = alloca i16, align 2
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu554 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %__UNIQUE_ID_rcu556 = alloca ptr, align 8
  %tmp28 = alloca ptr, align 8
  %tmp32 = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !1165, metadata !DIExpression()), !dbg !1176
  store i16 %family, ptr %family.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %family.addr, metadata !1166, metadata !DIExpression()), !dbg !1177
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !1178
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1167, metadata !DIExpression()), !dbg !1179
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !1180
  %1 = load i16, ptr %family.addr, align 2, !dbg !1181
  %call = call ptr @netlbl_domhsh_search(ptr noundef %0, i16 noundef zeroext %1) #18, !dbg !1182
  store ptr %call, ptr %entry1, align 8, !dbg !1183
  %2 = load ptr, ptr %entry1, align 8, !dbg !1184
  %cmp = icmp ne ptr %2, null, !dbg !1186
  br i1 %cmp, label %if.then, label %if.end, !dbg !1187

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %entry1, align 8, !dbg !1188
  store ptr %3, ptr %retval, align 8, !dbg !1189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1189

if.end:                                           ; preds = %entry
  %4 = load i16, ptr %family.addr, align 2, !dbg !1190
  %conv = zext i16 %4 to i32, !dbg !1190
  %cmp2 = icmp eq i32 %conv, 2, !dbg !1191
  br i1 %cmp2, label %if.then7, label %lor.lhs.false, !dbg !1192

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i16, ptr %family.addr, align 2, !dbg !1193
  %conv4 = zext i16 %5 to i32, !dbg !1193
  %cmp5 = icmp eq i32 %conv4, 0, !dbg !1194
  br i1 %cmp5, label %if.then7, label %if.end16, !dbg !1195

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu554) #15, !dbg !1196
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu554, metadata !1168, metadata !DIExpression()), !dbg !1196
  br label %do.body, !dbg !1197

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !1199

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1199

do.end:                                           ; preds = %do.cond
  %6 = load volatile ptr, ptr @netlbl_domhsh_def_ipv4, align 8, !dbg !1197
  store ptr %6, ptr %tmp, align 8, !dbg !1199
  %7 = load ptr, ptr %tmp, align 8, !dbg !1197
  store ptr %7, ptr %__UNIQUE_ID_rcu554, align 8, !dbg !1196
  br label %do.body8, !dbg !1196

do.body8:                                         ; preds = %do.end
  br label %do.cond9, !dbg !1201

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1201

do.end10:                                         ; preds = %do.cond9
  %8 = load ptr, ptr %__UNIQUE_ID_rcu554, align 8, !dbg !1196
  store ptr %8, ptr %tmp11, align 8, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu554) #15, !dbg !1203
  %9 = load ptr, ptr %tmp11, align 8, !dbg !1196
  store ptr %9, ptr %entry1, align 8, !dbg !1204
  %10 = load ptr, ptr %entry1, align 8, !dbg !1205
  %cmp12 = icmp ne ptr %10, null, !dbg !1207
  br i1 %cmp12, label %land.lhs.true, label %if.end15, !dbg !1208

land.lhs.true:                                    ; preds = %do.end10
  %11 = load ptr, ptr %entry1, align 8, !dbg !1209
  %valid = getelementptr inbounds %struct.netlbl_dom_map, ptr %11, i32 0, i32 3, !dbg !1210
  %12 = load i32, ptr %valid, align 4, !dbg !1210
  %tobool = icmp ne i32 %12, 0, !dbg !1209
  br i1 %tobool, label %if.then14, label %if.end15, !dbg !1211

if.then14:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %entry1, align 8, !dbg !1212
  store ptr %13, ptr %retval, align 8, !dbg !1213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1213

if.end15:                                         ; preds = %land.lhs.true, %do.end10
  br label %if.end16, !dbg !1214

if.end16:                                         ; preds = %if.end15, %lor.lhs.false
  %14 = load i16, ptr %family.addr, align 2, !dbg !1215
  %conv17 = zext i16 %14 to i32, !dbg !1215
  %cmp18 = icmp eq i32 %conv17, 10, !dbg !1216
  br i1 %cmp18, label %if.then24, label %lor.lhs.false20, !dbg !1217

lor.lhs.false20:                                  ; preds = %if.end16
  %15 = load i16, ptr %family.addr, align 2, !dbg !1218
  %conv21 = zext i16 %15 to i32, !dbg !1218
  %cmp22 = icmp eq i32 %conv21, 0, !dbg !1219
  br i1 %cmp22, label %if.then24, label %if.end40, !dbg !1220

if.then24:                                        ; preds = %lor.lhs.false20, %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu556) #15, !dbg !1221
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu556, metadata !1172, metadata !DIExpression()), !dbg !1221
  br label %do.body25, !dbg !1222

do.body25:                                        ; preds = %if.then24
  br label %do.cond26, !dbg !1224

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !1224

do.end27:                                         ; preds = %do.cond26
  %16 = load volatile ptr, ptr @netlbl_domhsh_def_ipv6, align 8, !dbg !1222
  store ptr %16, ptr %tmp28, align 8, !dbg !1224
  %17 = load ptr, ptr %tmp28, align 8, !dbg !1222
  store ptr %17, ptr %__UNIQUE_ID_rcu556, align 8, !dbg !1221
  br label %do.body29, !dbg !1221

do.body29:                                        ; preds = %do.end27
  br label %do.cond30, !dbg !1226

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !1226

do.end31:                                         ; preds = %do.cond30
  %18 = load ptr, ptr %__UNIQUE_ID_rcu556, align 8, !dbg !1221
  store ptr %18, ptr %tmp32, align 8, !dbg !1226
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu556) #15, !dbg !1228
  %19 = load ptr, ptr %tmp32, align 8, !dbg !1221
  store ptr %19, ptr %entry1, align 8, !dbg !1229
  %20 = load ptr, ptr %entry1, align 8, !dbg !1230
  %cmp33 = icmp ne ptr %20, null, !dbg !1232
  br i1 %cmp33, label %land.lhs.true35, label %if.end39, !dbg !1233

land.lhs.true35:                                  ; preds = %do.end31
  %21 = load ptr, ptr %entry1, align 8, !dbg !1234
  %valid36 = getelementptr inbounds %struct.netlbl_dom_map, ptr %21, i32 0, i32 3, !dbg !1235
  %22 = load i32, ptr %valid36, align 4, !dbg !1235
  %tobool37 = icmp ne i32 %22, 0, !dbg !1234
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !1236

if.then38:                                        ; preds = %land.lhs.true35
  %23 = load ptr, ptr %entry1, align 8, !dbg !1237
  store ptr %23, ptr %retval, align 8, !dbg !1238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1238

if.end39:                                         ; preds = %land.lhs.true35, %do.end31
  br label %if.end40, !dbg !1239

if.end40:                                         ; preds = %if.end39, %lor.lhs.false20
  store ptr null, ptr %retval, align 8, !dbg !1240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1240

cleanup:                                          ; preds = %if.end40, %if.then38, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !1241
  %24 = load ptr, ptr %retval, align 8, !dbg !1241
  ret ptr %24, !dbg !1241
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @netlbl_domhsh_hash(ptr noundef %key) #8 align 16 !dbg !1242 {
entry:
  %key.addr = alloca ptr, align 8
  %iter = alloca i32, align 4
  %val = alloca i32, align 4
  %len = alloca i32, align 4
  %__UNIQUE_ID_rcu548 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1246, metadata !DIExpression()), !dbg !1252
  call void @llvm.lifetime.start.p0(i64 4, ptr %iter) #15, !dbg !1253
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !1247, metadata !DIExpression()), !dbg !1254
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #15, !dbg !1255
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1248, metadata !DIExpression()), !dbg !1256
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !1257
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1249, metadata !DIExpression()), !dbg !1258
  store i32 0, ptr %iter, align 4, !dbg !1259
  store i32 0, ptr %val, align 4, !dbg !1261
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1262
  %call = call i64 @strlen(ptr noundef %0) #18, !dbg !1263
  %conv = trunc i64 %call to i32, !dbg !1263
  store i32 %conv, ptr %len, align 4, !dbg !1264
  br label %for.cond, !dbg !1265

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %iter, align 4, !dbg !1266
  %2 = load i32, ptr %len, align 4, !dbg !1268
  %cmp = icmp ult i32 %1, %2, !dbg !1269
  br i1 %cmp, label %for.body, label %for.end, !dbg !1270

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %val, align 4, !dbg !1271
  %shl = shl i32 %3, 4, !dbg !1272
  %4 = load i32, ptr %val, align 4, !dbg !1273
  %shr = lshr i32 %4, 28, !dbg !1274
  %or = or i32 %shl, %shr, !dbg !1275
  %5 = load ptr, ptr %key.addr, align 8, !dbg !1276
  %6 = load i32, ptr %iter, align 4, !dbg !1277
  %idxprom = zext i32 %6 to i64, !dbg !1276
  %arrayidx = getelementptr i8, ptr %5, i64 %idxprom, !dbg !1276
  %7 = load i8, ptr %arrayidx, align 1, !dbg !1276
  %conv2 = zext i8 %7 to i32, !dbg !1276
  %xor = xor i32 %or, %conv2, !dbg !1278
  store i32 %xor, ptr %val, align 4, !dbg !1279
  br label %for.inc, !dbg !1280

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %iter, align 4, !dbg !1281
  %inc = add i32 %8, 1, !dbg !1281
  store i32 %inc, ptr %iter, align 4, !dbg !1281
  br label %for.cond, !dbg !1282, !llvm.loop !1283

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %val, align 4, !dbg !1285
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu548) #15, !dbg !1286
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu548, metadata !1250, metadata !DIExpression()), !dbg !1286
  br label %do.body, !dbg !1287

do.body:                                          ; preds = %for.end
  br label %do.cond, !dbg !1289

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1289

do.end:                                           ; preds = %do.cond
  %10 = load volatile ptr, ptr @netlbl_domhsh, align 8, !dbg !1287
  store ptr %10, ptr %tmp, align 8, !dbg !1289
  %11 = load ptr, ptr %tmp, align 8, !dbg !1287
  store ptr %11, ptr %__UNIQUE_ID_rcu548, align 8, !dbg !1286
  br label %do.body3, !dbg !1286

do.body3:                                         ; preds = %do.end
  br label %do.cond4, !dbg !1291

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !1291

do.end5:                                          ; preds = %do.cond4
  %12 = load ptr, ptr %__UNIQUE_ID_rcu548, align 8, !dbg !1286
  store ptr %12, ptr %tmp6, align 8, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu548) #15, !dbg !1293
  %13 = load ptr, ptr %tmp6, align 8, !dbg !1286
  %size = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %13, i32 0, i32 1, !dbg !1294
  %14 = load i32, ptr %size, align 8, !dbg !1294
  %sub = sub i32 %14, 1, !dbg !1295
  %and = and i32 %9, %sub, !dbg !1296
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !1297
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #15, !dbg !1297
  call void @llvm.lifetime.end.p0(i64 4, ptr %iter) #15, !dbg !1297
  ret i32 %and, !dbg !1298
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !1299 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1304, metadata !DIExpression()), !dbg !1306
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1305, metadata !DIExpression()), !dbg !1307
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1308
  %1 = load ptr, ptr %head.addr, align 8, !dbg !1309
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1310
  %2 = load ptr, ptr %prev, align 8, !dbg !1310
  %3 = load ptr, ptr %head.addr, align 8, !dbg !1311
  call void @__list_add_rcu(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18, !dbg !1312
  ret void, !dbg !1313
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !1314 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1316, metadata !DIExpression()), !dbg !1318
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1317, metadata !DIExpression()), !dbg !1319
  %0 = load i64, ptr %size.addr, align 8, !dbg !1320
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1321
  %or = or i32 %1, 256, !dbg !1322
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !1323
  ret ptr %call, !dbg !1324
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__af4list_valid_rcu(ptr noundef %s, ptr noundef %h) #6 align 16 !dbg !1325 {
entry:
  %s.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %i = alloca ptr, align 8
  %n = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__UNIQUE_ID_rcu544 = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1329, metadata !DIExpression()), !dbg !1340
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !1330, metadata !DIExpression()), !dbg !1341
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !1342
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1331, metadata !DIExpression()), !dbg !1343
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1344
  store ptr %0, ptr %i, align 8, !dbg !1343
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #15, !dbg !1345
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1332, metadata !DIExpression()), !dbg !1346
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1333, metadata !DIExpression()), !dbg !1347
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1347
  store ptr %1, ptr %__mptr, align 8, !dbg !1347
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1347
  %add.ptr = getelementptr i8, ptr %2, i64 -16, !dbg !1347
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1347
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !1348
  %3 = load ptr, ptr %tmp, align 8, !dbg !1347
  store ptr %3, ptr %n, align 8, !dbg !1346
  br label %while.cond, !dbg !1349

while.cond:                                       ; preds = %do.end4, %entry
  %4 = load ptr, ptr %i, align 8, !dbg !1350
  %5 = load ptr, ptr %h.addr, align 8, !dbg !1351
  %cmp = icmp ne ptr %4, %5, !dbg !1352
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1353

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %n, align 8, !dbg !1354
  %valid = getelementptr inbounds %struct.netlbl_af4list, ptr %6, i32 0, i32 2, !dbg !1355
  %7 = load i32, ptr %valid, align 8, !dbg !1355
  %tobool = icmp ne i32 %7, 0, !dbg !1356
  %lnot = xor i1 %tobool, true, !dbg !1356
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !1357
  br i1 %8, label %while.body, label %while.end, !dbg !1349

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu544) #15, !dbg !1358
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu544, metadata !1335, metadata !DIExpression()), !dbg !1358
  br label %do.body, !dbg !1359

do.body:                                          ; preds = %while.body
  br label %do.cond, !dbg !1361

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1361

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %i, align 8, !dbg !1359
  %next = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !1359
  %10 = load volatile ptr, ptr %next, align 8, !dbg !1359
  store ptr %10, ptr %tmp1, align 8, !dbg !1361
  %11 = load ptr, ptr %tmp1, align 8, !dbg !1359
  store ptr %11, ptr %__UNIQUE_ID_rcu544, align 8, !dbg !1358
  br label %do.body2, !dbg !1358

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !1363

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1363

do.end4:                                          ; preds = %do.cond3
  %12 = load ptr, ptr %__UNIQUE_ID_rcu544, align 8, !dbg !1358
  store ptr %12, ptr %tmp5, align 8, !dbg !1363
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu544) #15, !dbg !1365
  %13 = load ptr, ptr %tmp5, align 8, !dbg !1358
  store ptr %13, ptr %i, align 8, !dbg !1366
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #15, !dbg !1367
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !1338, metadata !DIExpression()), !dbg !1367
  %14 = load ptr, ptr %i, align 8, !dbg !1367
  store ptr %14, ptr %__mptr6, align 8, !dbg !1367
  %15 = load ptr, ptr %__mptr6, align 8, !dbg !1367
  %add.ptr8 = getelementptr i8, ptr %15, i64 -16, !dbg !1367
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !1367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #15, !dbg !1368
  %16 = load ptr, ptr %tmp7, align 8, !dbg !1367
  store ptr %16, ptr %n, align 8, !dbg !1369
  br label %while.cond, !dbg !1349, !llvm.loop !1370

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %n, align 8, !dbg !1372
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #15, !dbg !1373
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !1373
  ret ptr %17, !dbg !1374
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @netlbl_domhsh_audit_add(ptr noundef %entry1, ptr noundef %addr4, ptr noundef %addr6, i32 noundef %result, ptr noundef %audit_info) #8 align 16 !dbg !1375 {
entry:
  %entry.addr = alloca ptr, align 8
  %addr4.addr = alloca ptr, align 8
  %addr6.addr = alloca ptr, align 8
  %result.addr = alloca i32, align 4
  %audit_info.addr = alloca ptr, align 8
  %audit_buf = alloca ptr, align 8
  %cipsov4 = alloca ptr, align 8
  %calipso = alloca ptr, align 8
  %type = alloca i32, align 4
  %map4 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %map6 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1379, metadata !DIExpression()), !dbg !1403
  store ptr %addr4, ptr %addr4.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr4.addr, metadata !1380, metadata !DIExpression()), !dbg !1404
  store ptr %addr6, ptr %addr6.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr6.addr, metadata !1381, metadata !DIExpression()), !dbg !1405
  store i32 %result, ptr %result.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !1382, metadata !DIExpression()), !dbg !1406
  store ptr %audit_info, ptr %audit_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %audit_info.addr, metadata !1383, metadata !DIExpression()), !dbg !1407
  call void @llvm.lifetime.start.p0(i64 8, ptr %audit_buf) #15, !dbg !1408
  call void @llvm.dbg.declare(metadata ptr %audit_buf, metadata !1384, metadata !DIExpression()), !dbg !1409
  call void @llvm.lifetime.start.p0(i64 8, ptr %cipsov4) #15, !dbg !1410
  call void @llvm.dbg.declare(metadata ptr %cipsov4, metadata !1388, metadata !DIExpression()), !dbg !1411
  store ptr null, ptr %cipsov4, align 8, !dbg !1411
  call void @llvm.lifetime.start.p0(i64 8, ptr %calipso) #15, !dbg !1412
  call void @llvm.dbg.declare(metadata ptr %calipso, metadata !1389, metadata !DIExpression()), !dbg !1413
  store ptr null, ptr %calipso, align 8, !dbg !1413
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !1414
  call void @llvm.dbg.declare(metadata ptr %type, metadata !1390, metadata !DIExpression()), !dbg !1415
  %0 = load ptr, ptr %audit_info.addr, align 8, !dbg !1416
  %call = call ptr @netlbl_audit_start_common(i32 noundef 1409, ptr noundef %0) #18, !dbg !1417
  store ptr %call, ptr %audit_buf, align 8, !dbg !1418
  %1 = load ptr, ptr %audit_buf, align 8, !dbg !1419
  %cmp = icmp ne ptr %1, null, !dbg !1420
  br i1 %cmp, label %if.then, label %if.end66, !dbg !1421

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %audit_buf, align 8, !dbg !1422
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !1423
  %domain = getelementptr inbounds %struct.netlbl_dom_map, ptr %3, i32 0, i32 0, !dbg !1424
  %4 = load ptr, ptr %domain, align 8, !dbg !1424
  %tobool = icmp ne ptr %4, null, !dbg !1423
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1423

cond.true:                                        ; preds = %if.then
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !1425
  %domain2 = getelementptr inbounds %struct.netlbl_dom_map, ptr %5, i32 0, i32 0, !dbg !1426
  %6 = load ptr, ptr %domain2, align 8, !dbg !1426
  br label %cond.end, !dbg !1423

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !1423

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ @.str.1, %cond.false ], !dbg !1423
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %2, ptr noundef @.str.3, ptr noundef %cond) #18, !dbg !1427
  %7 = load ptr, ptr %addr4.addr, align 8, !dbg !1428
  %cmp3 = icmp ne ptr %7, null, !dbg !1429
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !1430

if.then4:                                         ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %map4) #15, !dbg !1431
  call void @llvm.dbg.declare(metadata ptr %map4, metadata !1391, metadata !DIExpression()), !dbg !1432
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !1433
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1396, metadata !DIExpression()), !dbg !1433
  %8 = load ptr, ptr %addr4.addr, align 8, !dbg !1433
  store ptr %8, ptr %__mptr, align 8, !dbg !1433
  %9 = load ptr, ptr %__mptr, align 8, !dbg !1433
  %add.ptr = getelementptr i8, ptr %9, i64 -16, !dbg !1433
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1433
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !1434
  %10 = load ptr, ptr %tmp, align 8, !dbg !1433
  store ptr %10, ptr %map4, align 8, !dbg !1435
  %11 = load ptr, ptr %map4, align 8, !dbg !1436
  %def = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %11, i32 0, i32 0, !dbg !1437
  %type5 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def, i32 0, i32 0, !dbg !1438
  %12 = load i32, ptr %type5, align 8, !dbg !1438
  store i32 %12, ptr %type, align 4, !dbg !1439
  %13 = load ptr, ptr %map4, align 8, !dbg !1440
  %def6 = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %13, i32 0, i32 0, !dbg !1441
  %14 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def6, i32 0, i32 1, !dbg !1442
  %15 = load ptr, ptr %14, align 8, !dbg !1442
  store ptr %15, ptr %cipsov4, align 8, !dbg !1443
  %16 = load ptr, ptr %audit_buf, align 8, !dbg !1444
  %17 = load ptr, ptr %addr4.addr, align 8, !dbg !1445
  %addr = getelementptr inbounds %struct.netlbl_af4list, ptr %17, i32 0, i32 0, !dbg !1446
  %18 = load i32, ptr %addr, align 8, !dbg !1446
  %19 = load ptr, ptr %addr4.addr, align 8, !dbg !1447
  %mask = getelementptr inbounds %struct.netlbl_af4list, ptr %19, i32 0, i32 1, !dbg !1448
  %20 = load i32, ptr %mask, align 4, !dbg !1448
  call void @netlbl_af4list_audit_addr(ptr noundef %16, i32 noundef 0, ptr noundef null, i32 noundef %18, i32 noundef %20) #18, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 8, ptr %map4) #15, !dbg !1450
  br label %if.end22, !dbg !1451

if.else:                                          ; preds = %cond.end
  %21 = load ptr, ptr %addr6.addr, align 8, !dbg !1452
  %cmp7 = icmp ne ptr %21, null, !dbg !1453
  br i1 %cmp7, label %if.then8, label %if.else17, !dbg !1454

if.then8:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %map6) #15, !dbg !1455
  call void @llvm.dbg.declare(metadata ptr %map6, metadata !1398, metadata !DIExpression()), !dbg !1456
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #15, !dbg !1457
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !1401, metadata !DIExpression()), !dbg !1457
  %22 = load ptr, ptr %addr6.addr, align 8, !dbg !1457
  store ptr %22, ptr %__mptr9, align 8, !dbg !1457
  %23 = load ptr, ptr %__mptr9, align 8, !dbg !1457
  %add.ptr11 = getelementptr i8, ptr %23, i64 -16, !dbg !1457
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #15, !dbg !1458
  %24 = load ptr, ptr %tmp10, align 8, !dbg !1457
  store ptr %24, ptr %map6, align 8, !dbg !1459
  %25 = load ptr, ptr %map6, align 8, !dbg !1460
  %def12 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %25, i32 0, i32 0, !dbg !1461
  %type13 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def12, i32 0, i32 0, !dbg !1462
  %26 = load i32, ptr %type13, align 8, !dbg !1462
  store i32 %26, ptr %type, align 4, !dbg !1463
  %27 = load ptr, ptr %map6, align 8, !dbg !1464
  %def14 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %27, i32 0, i32 0, !dbg !1465
  %28 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def14, i32 0, i32 1, !dbg !1466
  %29 = load ptr, ptr %28, align 8, !dbg !1466
  store ptr %29, ptr %calipso, align 8, !dbg !1467
  %30 = load ptr, ptr %audit_buf, align 8, !dbg !1468
  %31 = load ptr, ptr %addr6.addr, align 8, !dbg !1469
  %addr15 = getelementptr inbounds %struct.netlbl_af6list, ptr %31, i32 0, i32 0, !dbg !1470
  %32 = load ptr, ptr %addr6.addr, align 8, !dbg !1471
  %mask16 = getelementptr inbounds %struct.netlbl_af6list, ptr %32, i32 0, i32 1, !dbg !1472
  call void @netlbl_af6list_audit_addr(ptr noundef %30, i32 noundef 0, ptr noundef null, ptr noundef %addr15, ptr noundef %mask16) #18, !dbg !1473
  call void @llvm.lifetime.end.p0(i64 8, ptr %map6) #15, !dbg !1474
  br label %if.end, !dbg !1475

if.else17:                                        ; preds = %if.else
  %33 = load ptr, ptr %entry.addr, align 8, !dbg !1476
  %def18 = getelementptr inbounds %struct.netlbl_dom_map, ptr %33, i32 0, i32 1, !dbg !1478
  %type19 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def18, i32 0, i32 0, !dbg !1479
  %34 = load i32, ptr %type19, align 8, !dbg !1479
  store i32 %34, ptr %type, align 4, !dbg !1480
  %35 = load ptr, ptr %entry.addr, align 8, !dbg !1481
  %def20 = getelementptr inbounds %struct.netlbl_dom_map, ptr %35, i32 0, i32 1, !dbg !1482
  %36 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def20, i32 0, i32 1, !dbg !1483
  %37 = load ptr, ptr %36, align 8, !dbg !1483
  store ptr %37, ptr %cipsov4, align 8, !dbg !1484
  %38 = load ptr, ptr %entry.addr, align 8, !dbg !1485
  %def21 = getelementptr inbounds %struct.netlbl_dom_map, ptr %38, i32 0, i32 1, !dbg !1486
  %39 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def21, i32 0, i32 1, !dbg !1487
  %40 = load ptr, ptr %39, align 8, !dbg !1487
  store ptr %40, ptr %calipso, align 8, !dbg !1488
  br label %if.end

if.end:                                           ; preds = %if.else17, %if.then8
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then4
  %41 = load i32, ptr %type, align 4, !dbg !1489
  switch i32 %41, label %sw.epilog [
    i32 5, label %sw.bb
    i32 3, label %sw.bb23
    i32 7, label %sw.bb38
  ], !dbg !1490

sw.bb:                                            ; preds = %if.end22
  %42 = load ptr, ptr %audit_buf, align 8, !dbg !1491
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %42, ptr noundef @.str.4) #18, !dbg !1493
  br label %sw.epilog, !dbg !1494

sw.bb23:                                          ; preds = %if.end22
  br label %do.body, !dbg !1495

do.body:                                          ; preds = %sw.bb23
  %43 = load ptr, ptr %cipsov4, align 8, !dbg !1496
  %cmp24 = icmp eq ptr %43, null, !dbg !1496
  %lnot = xor i1 %cmp24, true, !dbg !1496
  %lnot25 = xor i1 %lnot, true, !dbg !1496
  %lnot.ext = zext i1 %lnot25 to i32, !dbg !1496
  %conv = sext i32 %lnot.ext to i64, !dbg !1496
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1496
  %tobool26 = icmp ne i64 %expval, 0, !dbg !1496
  br i1 %tobool26, label %if.then27, label %if.end35, !dbg !1499

if.then27:                                        ; preds = %do.body
  br label %do.body28, !dbg !1496

do.body28:                                        ; preds = %if.then27
  br label %do.body29, !dbg !1500

do.body29:                                        ; preds = %do.body28
  br label %do.cond, !dbg !1502

do.cond:                                          ; preds = %do.body29
  br label %do.end, !dbg !1502

do.end:                                           ; preds = %do.cond
  br label %do.body30, !dbg !1500

do.body30:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 249, i32 0, i64 12) #15, !dbg !1504, !srcloc !1506
  br label %do.cond31, !dbg !1504

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !1504

do.end32:                                         ; preds = %do.cond31
  unreachable, !dbg !1500

do.cond33:                                        ; No predecessors!
  br label %do.end34, !dbg !1500

do.end34:                                         ; preds = %do.cond33
  br label %if.end35, !dbg !1500

if.end35:                                         ; preds = %do.end34, %do.body
  br label %do.cond36, !dbg !1499

do.cond36:                                        ; preds = %if.end35
  br label %do.end37, !dbg !1499

do.end37:                                         ; preds = %do.cond36
  %44 = load ptr, ptr %audit_buf, align 8, !dbg !1507
  %45 = load ptr, ptr %cipsov4, align 8, !dbg !1508
  %doi = getelementptr inbounds %struct.cipso_v4_doi, ptr %45, i32 0, i32 0, !dbg !1509
  %46 = load i32, ptr %doi, align 8, !dbg !1509
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %44, ptr noundef @.str.6, i32 noundef %46) #18, !dbg !1510
  br label %sw.epilog, !dbg !1511

sw.bb38:                                          ; preds = %if.end22
  br label %do.body39, !dbg !1512

do.body39:                                        ; preds = %sw.bb38
  %47 = load ptr, ptr %calipso, align 8, !dbg !1513
  %cmp40 = icmp eq ptr %47, null, !dbg !1513
  %lnot42 = xor i1 %cmp40, true, !dbg !1513
  %lnot44 = xor i1 %lnot42, true, !dbg !1513
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !1513
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !1513
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !1513
  %tobool48 = icmp ne i64 %expval47, 0, !dbg !1513
  br i1 %tobool48, label %if.then49, label %if.end59, !dbg !1516

if.then49:                                        ; preds = %do.body39
  br label %do.body50, !dbg !1513

do.body50:                                        ; preds = %if.then49
  br label %do.body51, !dbg !1517

do.body51:                                        ; preds = %do.body50
  br label %do.cond52, !dbg !1519

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !1519

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !1517

do.body54:                                        ; preds = %do.end53
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 255, i32 0, i64 12) #15, !dbg !1521, !srcloc !1523
  br label %do.cond55, !dbg !1521

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !1521

do.end56:                                         ; preds = %do.cond55
  unreachable, !dbg !1517

do.cond57:                                        ; No predecessors!
  br label %do.end58, !dbg !1517

do.end58:                                         ; preds = %do.cond57
  br label %if.end59, !dbg !1517

if.end59:                                         ; preds = %do.end58, %do.body39
  br label %do.cond60, !dbg !1516

do.cond60:                                        ; preds = %if.end59
  br label %do.end61, !dbg !1516

do.end61:                                         ; preds = %do.cond60
  %48 = load ptr, ptr %audit_buf, align 8, !dbg !1524
  %49 = load ptr, ptr %calipso, align 8, !dbg !1525
  %doi62 = getelementptr inbounds %struct.calipso_doi, ptr %49, i32 0, i32 0, !dbg !1526
  %50 = load i32, ptr %doi62, align 8, !dbg !1526
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %48, ptr noundef @.str.7, i32 noundef %50) #18, !dbg !1527
  br label %sw.epilog, !dbg !1528

sw.epilog:                                        ; preds = %if.end22, %do.end61, %do.end37, %sw.bb
  %51 = load ptr, ptr %audit_buf, align 8, !dbg !1529
  %52 = load i32, ptr %result.addr, align 4, !dbg !1530
  %cmp63 = icmp eq i32 %52, 0, !dbg !1531
  %53 = zext i1 %cmp63 to i64, !dbg !1530
  %cond65 = select i1 %cmp63, i32 1, i32 0, !dbg !1530
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %51, ptr noundef @.str.8, i32 noundef %cond65) #18, !dbg !1532
  %54 = load ptr, ptr %audit_buf, align 8, !dbg !1533
  call void @audit_log_end(ptr noundef %54) #18, !dbg !1534
  br label %if.end66, !dbg !1535

if.end66:                                         ; preds = %sw.epilog, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 8, ptr %calipso) #15, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 8, ptr %cipsov4) #15, !dbg !1536
  call void @llvm.lifetime.end.p0(i64 8, ptr %audit_buf) #15, !dbg !1536
  ret void, !dbg !1536
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__af6list_valid_rcu(ptr noundef %s, ptr noundef %h) #6 align 16 !dbg !1537 {
entry:
  %s.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %i = alloca ptr, align 8
  %n = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__UNIQUE_ID_rcu546 = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1541, metadata !DIExpression()), !dbg !1552
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !1542, metadata !DIExpression()), !dbg !1553
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !1554
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1543, metadata !DIExpression()), !dbg !1555
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1556
  store ptr %0, ptr %i, align 8, !dbg !1555
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #15, !dbg !1557
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1544, metadata !DIExpression()), !dbg !1558
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !1559
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1545, metadata !DIExpression()), !dbg !1559
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1559
  store ptr %1, ptr %__mptr, align 8, !dbg !1559
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1559
  %add.ptr = getelementptr i8, ptr %2, i64 -40, !dbg !1559
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1559
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !1560
  %3 = load ptr, ptr %tmp, align 8, !dbg !1559
  store ptr %3, ptr %n, align 8, !dbg !1558
  br label %while.cond, !dbg !1561

while.cond:                                       ; preds = %do.end4, %entry
  %4 = load ptr, ptr %i, align 8, !dbg !1562
  %5 = load ptr, ptr %h.addr, align 8, !dbg !1563
  %cmp = icmp ne ptr %4, %5, !dbg !1564
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1565

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %n, align 8, !dbg !1566
  %valid = getelementptr inbounds %struct.netlbl_af6list, ptr %6, i32 0, i32 2, !dbg !1567
  %7 = load i32, ptr %valid, align 8, !dbg !1567
  %tobool = icmp ne i32 %7, 0, !dbg !1568
  %lnot = xor i1 %tobool, true, !dbg !1568
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !1569
  br i1 %8, label %while.body, label %while.end, !dbg !1561

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu546) #15, !dbg !1570
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu546, metadata !1547, metadata !DIExpression()), !dbg !1570
  br label %do.body, !dbg !1571

do.body:                                          ; preds = %while.body
  br label %do.cond, !dbg !1573

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1573

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %i, align 8, !dbg !1571
  %next = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !1571
  %10 = load volatile ptr, ptr %next, align 8, !dbg !1571
  store ptr %10, ptr %tmp1, align 8, !dbg !1573
  %11 = load ptr, ptr %tmp1, align 8, !dbg !1571
  store ptr %11, ptr %__UNIQUE_ID_rcu546, align 8, !dbg !1570
  br label %do.body2, !dbg !1570

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !1575

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1575

do.end4:                                          ; preds = %do.cond3
  %12 = load ptr, ptr %__UNIQUE_ID_rcu546, align 8, !dbg !1570
  store ptr %12, ptr %tmp5, align 8, !dbg !1575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu546) #15, !dbg !1577
  %13 = load ptr, ptr %tmp5, align 8, !dbg !1570
  store ptr %13, ptr %i, align 8, !dbg !1578
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #15, !dbg !1579
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !1550, metadata !DIExpression()), !dbg !1579
  %14 = load ptr, ptr %i, align 8, !dbg !1579
  store ptr %14, ptr %__mptr6, align 8, !dbg !1579
  %15 = load ptr, ptr %__mptr6, align 8, !dbg !1579
  %add.ptr8 = getelementptr i8, ptr %15, i64 -40, !dbg !1579
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !1579
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #15, !dbg !1580
  %16 = load ptr, ptr %tmp7, align 8, !dbg !1579
  store ptr %16, ptr %n, align 8, !dbg !1581
  br label %while.cond, !dbg !1561, !llvm.loop !1582

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %n, align 8, !dbg !1584
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #15, !dbg !1585
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !1585
  ret ptr %17, !dbg !1586
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1587 dso_local ptr @netlbl_af4list_search_exact(i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1590 dso_local ptr @netlbl_af6list_search_exact(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__af4list_valid(ptr noundef %s, ptr noundef %h) #6 align 16 !dbg !1595 {
entry:
  %s.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %i = alloca ptr, align 8
  %n = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1597, metadata !DIExpression()), !dbg !1606
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !1598, metadata !DIExpression()), !dbg !1607
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !1608
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1599, metadata !DIExpression()), !dbg !1609
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1610
  store ptr %0, ptr %i, align 8, !dbg !1609
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #15, !dbg !1611
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1600, metadata !DIExpression()), !dbg !1612
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !1613
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1601, metadata !DIExpression()), !dbg !1613
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1613
  store ptr %1, ptr %__mptr, align 8, !dbg !1613
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1613
  %add.ptr = getelementptr i8, ptr %2, i64 -16, !dbg !1613
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1613
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !1614
  %3 = load ptr, ptr %tmp, align 8, !dbg !1613
  store ptr %3, ptr %n, align 8, !dbg !1612
  br label %while.cond, !dbg !1615

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %i, align 8, !dbg !1616
  %5 = load ptr, ptr %h.addr, align 8, !dbg !1617
  %cmp = icmp ne ptr %4, %5, !dbg !1618
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1619

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %n, align 8, !dbg !1620
  %valid = getelementptr inbounds %struct.netlbl_af4list, ptr %6, i32 0, i32 2, !dbg !1621
  %7 = load i32, ptr %valid, align 8, !dbg !1621
  %tobool = icmp ne i32 %7, 0, !dbg !1622
  %lnot = xor i1 %tobool, true, !dbg !1622
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !1623
  br i1 %8, label %while.body, label %while.end, !dbg !1615

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %i, align 8, !dbg !1624
  %next = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !1625
  %10 = load ptr, ptr %next, align 8, !dbg !1625
  store ptr %10, ptr %i, align 8, !dbg !1626
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !1627
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !1603, metadata !DIExpression()), !dbg !1627
  %11 = load ptr, ptr %i, align 8, !dbg !1627
  store ptr %11, ptr %__mptr1, align 8, !dbg !1627
  %12 = load ptr, ptr %__mptr1, align 8, !dbg !1627
  %add.ptr3 = getelementptr i8, ptr %12, i64 -16, !dbg !1627
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !1627
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !1628
  %13 = load ptr, ptr %tmp2, align 8, !dbg !1627
  store ptr %13, ptr %n, align 8, !dbg !1629
  br label %while.cond, !dbg !1615, !llvm.loop !1630

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %n, align 8, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #15, !dbg !1633
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !1633
  ret ptr %14, !dbg !1634
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1635 dso_local void @netlbl_af4list_remove_entry(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1638 dso_local i32 @netlbl_af4list_add(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__af6list_valid(ptr noundef %s, ptr noundef %h) #6 align 16 !dbg !1641 {
entry:
  %s.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %i = alloca ptr, align 8
  %n = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1643, metadata !DIExpression()), !dbg !1652
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !1644, metadata !DIExpression()), !dbg !1653
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15, !dbg !1654
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1645, metadata !DIExpression()), !dbg !1655
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1656
  store ptr %0, ptr %i, align 8, !dbg !1655
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #15, !dbg !1657
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1646, metadata !DIExpression()), !dbg !1658
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !1659
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1647, metadata !DIExpression()), !dbg !1659
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1659
  store ptr %1, ptr %__mptr, align 8, !dbg !1659
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1659
  %add.ptr = getelementptr i8, ptr %2, i64 -40, !dbg !1659
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1659
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !1660
  %3 = load ptr, ptr %tmp, align 8, !dbg !1659
  store ptr %3, ptr %n, align 8, !dbg !1658
  br label %while.cond, !dbg !1661

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %i, align 8, !dbg !1662
  %5 = load ptr, ptr %h.addr, align 8, !dbg !1663
  %cmp = icmp ne ptr %4, %5, !dbg !1664
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1665

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %n, align 8, !dbg !1666
  %valid = getelementptr inbounds %struct.netlbl_af6list, ptr %6, i32 0, i32 2, !dbg !1667
  %7 = load i32, ptr %valid, align 8, !dbg !1667
  %tobool = icmp ne i32 %7, 0, !dbg !1668
  %lnot = xor i1 %tobool, true, !dbg !1668
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !1669
  br i1 %8, label %while.body, label %while.end, !dbg !1661

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %i, align 8, !dbg !1670
  %next = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !1671
  %10 = load ptr, ptr %next, align 8, !dbg !1671
  store ptr %10, ptr %i, align 8, !dbg !1672
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !1673
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !1649, metadata !DIExpression()), !dbg !1673
  %11 = load ptr, ptr %i, align 8, !dbg !1673
  store ptr %11, ptr %__mptr1, align 8, !dbg !1673
  %12 = load ptr, ptr %__mptr1, align 8, !dbg !1673
  %add.ptr3 = getelementptr i8, ptr %12, i64 -40, !dbg !1673
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !1674
  %13 = load ptr, ptr %tmp2, align 8, !dbg !1673
  store ptr %13, ptr %n, align 8, !dbg !1675
  br label %while.cond, !dbg !1661, !llvm.loop !1676

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %n, align 8, !dbg !1678
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #15, !dbg !1679
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15, !dbg !1679
  ret ptr %14, !dbg !1680
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1681 dso_local void @netlbl_af6list_remove_entry(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1684 dso_local i32 @netlbl_af6list_add(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @netlbl_domhsh_free_entry(ptr noundef %entry1) #8 align 16 !dbg !1687 {
entry:
  %entry.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %iter4 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %iter6 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %__mptr37 = alloca ptr, align 8
  %tmp38 = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1689, metadata !DIExpression()), !dbg !1709
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #15, !dbg !1710
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !1690, metadata !DIExpression()), !dbg !1711
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter4) #15, !dbg !1712
  call void @llvm.dbg.declare(metadata ptr %iter4, metadata !1691, metadata !DIExpression()), !dbg !1713
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp4) #15, !dbg !1714
  call void @llvm.dbg.declare(metadata ptr %tmp4, metadata !1692, metadata !DIExpression()), !dbg !1715
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter6) #15, !dbg !1716
  call void @llvm.dbg.declare(metadata ptr %iter6, metadata !1693, metadata !DIExpression()), !dbg !1717
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp6) #15, !dbg !1718
  call void @llvm.dbg.declare(metadata ptr %tmp6, metadata !1694, metadata !DIExpression()), !dbg !1719
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !1720
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1695, metadata !DIExpression()), !dbg !1720
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1720
  store ptr %0, ptr %__mptr, align 8, !dbg !1720
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1720
  %add.ptr = getelementptr i8, ptr %1, i64 -48, !dbg !1720
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1720
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !1721
  %2 = load ptr, ptr %tmp, align 8, !dbg !1720
  store ptr %2, ptr %ptr, align 8, !dbg !1722
  %3 = load ptr, ptr %ptr, align 8, !dbg !1723
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %3, i32 0, i32 1, !dbg !1724
  %type = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def, i32 0, i32 0, !dbg !1725
  %4 = load i32, ptr %type, align 8, !dbg !1725
  %cmp = icmp eq i32 %4, 6, !dbg !1726
  br i1 %cmp, label %if.then, label %if.end, !dbg !1727

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ptr, align 8, !dbg !1728
  %def2 = getelementptr inbounds %struct.netlbl_dom_map, ptr %5, i32 0, i32 1, !dbg !1728
  %6 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def2, i32 0, i32 1, !dbg !1728
  %7 = load ptr, ptr %6, align 8, !dbg !1728
  %list4 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %7, i32 0, i32 0, !dbg !1728
  %next = getelementptr inbounds %struct.list_head, ptr %list4, i32 0, i32 0, !dbg !1728
  %8 = load ptr, ptr %next, align 8, !dbg !1728
  %9 = load ptr, ptr %ptr, align 8, !dbg !1728
  %def3 = getelementptr inbounds %struct.netlbl_dom_map, ptr %9, i32 0, i32 1, !dbg !1728
  %10 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def3, i32 0, i32 1, !dbg !1728
  %11 = load ptr, ptr %10, align 8, !dbg !1728
  %list44 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %11, i32 0, i32 0, !dbg !1728
  %call = call ptr @__af4list_valid(ptr noundef %8, ptr noundef %list44) #18, !dbg !1728
  store ptr %call, ptr %iter4, align 8, !dbg !1728
  %12 = load ptr, ptr %iter4, align 8, !dbg !1728
  %list = getelementptr inbounds %struct.netlbl_af4list, ptr %12, i32 0, i32 3, !dbg !1728
  %next5 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !1728
  %13 = load ptr, ptr %next5, align 8, !dbg !1728
  %14 = load ptr, ptr %ptr, align 8, !dbg !1728
  %def6 = getelementptr inbounds %struct.netlbl_dom_map, ptr %14, i32 0, i32 1, !dbg !1728
  %15 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def6, i32 0, i32 1, !dbg !1728
  %16 = load ptr, ptr %15, align 8, !dbg !1728
  %list47 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %16, i32 0, i32 0, !dbg !1728
  %call8 = call ptr @__af4list_valid(ptr noundef %13, ptr noundef %list47) #18, !dbg !1728
  store ptr %call8, ptr %tmp4, align 8, !dbg !1728
  br label %for.cond, !dbg !1728

for.cond:                                         ; preds = %for.inc, %if.then
  %17 = load ptr, ptr %iter4, align 8, !dbg !1729
  %list9 = getelementptr inbounds %struct.netlbl_af4list, ptr %17, i32 0, i32 3, !dbg !1729
  %18 = load ptr, ptr %ptr, align 8, !dbg !1729
  %def10 = getelementptr inbounds %struct.netlbl_dom_map, ptr %18, i32 0, i32 1, !dbg !1729
  %19 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def10, i32 0, i32 1, !dbg !1729
  %20 = load ptr, ptr %19, align 8, !dbg !1729
  %list411 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %20, i32 0, i32 0, !dbg !1729
  %cmp12 = icmp ne ptr %list9, %list411, !dbg !1729
  br i1 %cmp12, label %for.body, label %for.end, !dbg !1728

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %iter4, align 8, !dbg !1730
  call void @netlbl_af4list_remove_entry(ptr noundef %21) #18, !dbg !1731
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #15, !dbg !1732
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !1697, metadata !DIExpression()), !dbg !1732
  %22 = load ptr, ptr %iter4, align 8, !dbg !1732
  store ptr %22, ptr %__mptr13, align 8, !dbg !1732
  %23 = load ptr, ptr %__mptr13, align 8, !dbg !1732
  %add.ptr15 = getelementptr i8, ptr %23, i64 -16, !dbg !1732
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #15, !dbg !1733
  %24 = load ptr, ptr %tmp14, align 8, !dbg !1732
  call void @kfree(ptr noundef %24) #18, !dbg !1734
  br label %for.inc, !dbg !1735

for.inc:                                          ; preds = %for.body
  %25 = load ptr, ptr %tmp4, align 8, !dbg !1729
  store ptr %25, ptr %iter4, align 8, !dbg !1729
  %26 = load ptr, ptr %iter4, align 8, !dbg !1729
  %list16 = getelementptr inbounds %struct.netlbl_af4list, ptr %26, i32 0, i32 3, !dbg !1729
  %next17 = getelementptr inbounds %struct.list_head, ptr %list16, i32 0, i32 0, !dbg !1729
  %27 = load ptr, ptr %next17, align 8, !dbg !1729
  %28 = load ptr, ptr %ptr, align 8, !dbg !1729
  %def18 = getelementptr inbounds %struct.netlbl_dom_map, ptr %28, i32 0, i32 1, !dbg !1729
  %29 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def18, i32 0, i32 1, !dbg !1729
  %30 = load ptr, ptr %29, align 8, !dbg !1729
  %list419 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %30, i32 0, i32 0, !dbg !1729
  %call20 = call ptr @__af4list_valid(ptr noundef %27, ptr noundef %list419) #18, !dbg !1729
  store ptr %call20, ptr %tmp4, align 8, !dbg !1729
  br label %for.cond, !dbg !1729, !llvm.loop !1736

for.end:                                          ; preds = %for.cond
  %31 = load ptr, ptr %ptr, align 8, !dbg !1738
  %def21 = getelementptr inbounds %struct.netlbl_dom_map, ptr %31, i32 0, i32 1, !dbg !1738
  %32 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def21, i32 0, i32 1, !dbg !1738
  %33 = load ptr, ptr %32, align 8, !dbg !1738
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %33, i32 0, i32 1, !dbg !1738
  %next22 = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !1738
  %34 = load ptr, ptr %next22, align 8, !dbg !1738
  %35 = load ptr, ptr %ptr, align 8, !dbg !1738
  %def23 = getelementptr inbounds %struct.netlbl_dom_map, ptr %35, i32 0, i32 1, !dbg !1738
  %36 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def23, i32 0, i32 1, !dbg !1738
  %37 = load ptr, ptr %36, align 8, !dbg !1738
  %list624 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %37, i32 0, i32 1, !dbg !1738
  %call25 = call ptr @__af6list_valid(ptr noundef %34, ptr noundef %list624) #18, !dbg !1738
  store ptr %call25, ptr %iter6, align 8, !dbg !1738
  %38 = load ptr, ptr %iter6, align 8, !dbg !1738
  %list26 = getelementptr inbounds %struct.netlbl_af6list, ptr %38, i32 0, i32 3, !dbg !1738
  %next27 = getelementptr inbounds %struct.list_head, ptr %list26, i32 0, i32 0, !dbg !1738
  %39 = load ptr, ptr %next27, align 8, !dbg !1738
  %40 = load ptr, ptr %ptr, align 8, !dbg !1738
  %def28 = getelementptr inbounds %struct.netlbl_dom_map, ptr %40, i32 0, i32 1, !dbg !1738
  %41 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def28, i32 0, i32 1, !dbg !1738
  %42 = load ptr, ptr %41, align 8, !dbg !1738
  %list629 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %42, i32 0, i32 1, !dbg !1738
  %call30 = call ptr @__af6list_valid(ptr noundef %39, ptr noundef %list629) #18, !dbg !1738
  store ptr %call30, ptr %tmp6, align 8, !dbg !1738
  br label %for.cond31, !dbg !1738

for.cond31:                                       ; preds = %for.inc40, %for.end
  %43 = load ptr, ptr %iter6, align 8, !dbg !1739
  %list32 = getelementptr inbounds %struct.netlbl_af6list, ptr %43, i32 0, i32 3, !dbg !1739
  %44 = load ptr, ptr %ptr, align 8, !dbg !1739
  %def33 = getelementptr inbounds %struct.netlbl_dom_map, ptr %44, i32 0, i32 1, !dbg !1739
  %45 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def33, i32 0, i32 1, !dbg !1739
  %46 = load ptr, ptr %45, align 8, !dbg !1739
  %list634 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %46, i32 0, i32 1, !dbg !1739
  %cmp35 = icmp ne ptr %list32, %list634, !dbg !1739
  br i1 %cmp35, label %for.body36, label %for.end46, !dbg !1738

for.body36:                                       ; preds = %for.cond31
  %47 = load ptr, ptr %iter6, align 8, !dbg !1740
  call void @netlbl_af6list_remove_entry(ptr noundef %47) #18, !dbg !1741
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr37) #15, !dbg !1742
  call void @llvm.dbg.declare(metadata ptr %__mptr37, metadata !1704, metadata !DIExpression()), !dbg !1742
  %48 = load ptr, ptr %iter6, align 8, !dbg !1742
  store ptr %48, ptr %__mptr37, align 8, !dbg !1742
  %49 = load ptr, ptr %__mptr37, align 8, !dbg !1742
  %add.ptr39 = getelementptr i8, ptr %49, i64 -16, !dbg !1742
  store ptr %add.ptr39, ptr %tmp38, align 8, !dbg !1742
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr37) #15, !dbg !1743
  %50 = load ptr, ptr %tmp38, align 8, !dbg !1742
  call void @kfree(ptr noundef %50) #18, !dbg !1744
  br label %for.inc40, !dbg !1745

for.inc40:                                        ; preds = %for.body36
  %51 = load ptr, ptr %tmp6, align 8, !dbg !1739
  store ptr %51, ptr %iter6, align 8, !dbg !1739
  %52 = load ptr, ptr %iter6, align 8, !dbg !1739
  %list41 = getelementptr inbounds %struct.netlbl_af6list, ptr %52, i32 0, i32 3, !dbg !1739
  %next42 = getelementptr inbounds %struct.list_head, ptr %list41, i32 0, i32 0, !dbg !1739
  %53 = load ptr, ptr %next42, align 8, !dbg !1739
  %54 = load ptr, ptr %ptr, align 8, !dbg !1739
  %def43 = getelementptr inbounds %struct.netlbl_dom_map, ptr %54, i32 0, i32 1, !dbg !1739
  %55 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def43, i32 0, i32 1, !dbg !1739
  %56 = load ptr, ptr %55, align 8, !dbg !1739
  %list644 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %56, i32 0, i32 1, !dbg !1739
  %call45 = call ptr @__af6list_valid(ptr noundef %53, ptr noundef %list644) #18, !dbg !1739
  store ptr %call45, ptr %tmp6, align 8, !dbg !1739
  br label %for.cond31, !dbg !1739, !llvm.loop !1746

for.end46:                                        ; preds = %for.cond31
  %57 = load ptr, ptr %ptr, align 8, !dbg !1748
  %def47 = getelementptr inbounds %struct.netlbl_dom_map, ptr %57, i32 0, i32 1, !dbg !1749
  %58 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def47, i32 0, i32 1, !dbg !1750
  %59 = load ptr, ptr %58, align 8, !dbg !1750
  call void @kfree(ptr noundef %59) #18, !dbg !1751
  br label %if.end, !dbg !1752

if.end:                                           ; preds = %for.end46, %entry
  %60 = load ptr, ptr %ptr, align 8, !dbg !1753
  %domain = getelementptr inbounds %struct.netlbl_dom_map, ptr %60, i32 0, i32 0, !dbg !1754
  %61 = load ptr, ptr %domain, align 8, !dbg !1754
  call void @kfree(ptr noundef %61) #18, !dbg !1755
  %62 = load ptr, ptr %ptr, align 8, !dbg !1756
  call void @kfree(ptr noundef %62) #18, !dbg !1757
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp6) #15, !dbg !1758
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter6) #15, !dbg !1758
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp4) #15, !dbg !1758
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter4) #15, !dbg !1758
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #15, !dbg !1758
  ret void, !dbg !1758
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #6 align 16 !dbg !1759 {
entry:
  br label %do.body, !dbg !1760

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1761

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #18, !dbg !1763
  br label %do.body1, !dbg !1764

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !1765

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !1767
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlbl_domhsh_add_default(ptr noundef %entry1, ptr noundef %audit_info) #8 align 16 !dbg !1768 {
entry:
  %entry.addr = alloca ptr, align 8
  %audit_info.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1770, metadata !DIExpression()), !dbg !1772
  store ptr %audit_info, ptr %audit_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %audit_info.addr, metadata !1771, metadata !DIExpression()), !dbg !1773
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1774
  %1 = load ptr, ptr %audit_info.addr, align 8, !dbg !1775
  %call = call i32 @netlbl_domhsh_add(ptr noundef %0, ptr noundef %1) #18, !dbg !1776
  ret i32 %call, !dbg !1777
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlbl_domhsh_remove_entry(ptr noundef %entry1, ptr noundef %audit_info) #8 align 16 !dbg !1778 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %audit_info.addr = alloca ptr, align 8
  %ret_val = alloca i32, align 4
  %audit_buf = alloca ptr, align 8
  %iter4 = alloca ptr, align 8
  %map4 = alloca ptr, align 8
  %iter6 = alloca ptr, align 8
  %map6 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu575 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__UNIQUE_ID_rcu578 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp65 = alloca ptr, align 8
  %__mptr83 = alloca ptr, align 8
  %tmp84 = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1780, metadata !DIExpression()), !dbg !1807
  store ptr %audit_info, ptr %audit_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %audit_info.addr, metadata !1781, metadata !DIExpression()), !dbg !1808
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_val) #15, !dbg !1809
  call void @llvm.dbg.declare(metadata ptr %ret_val, metadata !1782, metadata !DIExpression()), !dbg !1810
  store i32 0, ptr %ret_val, align 4, !dbg !1810
  call void @llvm.lifetime.start.p0(i64 8, ptr %audit_buf) #15, !dbg !1811
  call void @llvm.dbg.declare(metadata ptr %audit_buf, metadata !1783, metadata !DIExpression()), !dbg !1812
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter4) #15, !dbg !1813
  call void @llvm.dbg.declare(metadata ptr %iter4, metadata !1784, metadata !DIExpression()), !dbg !1814
  call void @llvm.lifetime.start.p0(i64 8, ptr %map4) #15, !dbg !1815
  call void @llvm.dbg.declare(metadata ptr %map4, metadata !1785, metadata !DIExpression()), !dbg !1816
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter6) #15, !dbg !1817
  call void @llvm.dbg.declare(metadata ptr %iter6, metadata !1786, metadata !DIExpression()), !dbg !1818
  call void @llvm.lifetime.start.p0(i64 8, ptr %map6) #15, !dbg !1819
  call void @llvm.dbg.declare(metadata ptr %map6, metadata !1787, metadata !DIExpression()), !dbg !1820
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1821
  %cmp = icmp eq ptr %0, null, !dbg !1823
  br i1 %cmp, label %if.then, label %if.end, !dbg !1824

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !1825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1825

if.end:                                           ; preds = %entry
  call void @spin_lock(ptr noundef @netlbl_domhsh_lock) #18, !dbg !1826
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1827
  %valid = getelementptr inbounds %struct.netlbl_dom_map, ptr %1, i32 0, i32 3, !dbg !1828
  %2 = load i32, ptr %valid, align 4, !dbg !1828
  %tobool = icmp ne i32 %2, 0, !dbg !1827
  br i1 %tobool, label %if.then2, label %if.else47, !dbg !1829

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !1830
  %valid3 = getelementptr inbounds %struct.netlbl_dom_map, ptr %3, i32 0, i32 3, !dbg !1831
  store i32 0, ptr %valid3, align 4, !dbg !1832
  %4 = load ptr, ptr %entry.addr, align 8, !dbg !1833
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu575) #15, !dbg !1834
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu575, metadata !1788, metadata !DIExpression()), !dbg !1834
  br label %do.body, !dbg !1835

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !1837

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1837

do.end:                                           ; preds = %do.cond
  %5 = load volatile ptr, ptr @netlbl_domhsh_def_ipv4, align 8, !dbg !1835
  store ptr %5, ptr %tmp, align 8, !dbg !1837
  %6 = load ptr, ptr %tmp, align 8, !dbg !1835
  store ptr %6, ptr %__UNIQUE_ID_rcu575, align 8, !dbg !1834
  br label %do.body4, !dbg !1834

do.body4:                                         ; preds = %do.end
  br label %do.cond5, !dbg !1839

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1839

do.end6:                                          ; preds = %do.cond5
  %7 = load ptr, ptr %__UNIQUE_ID_rcu575, align 8, !dbg !1834
  store ptr %7, ptr %tmp7, align 8, !dbg !1839
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu575) #15, !dbg !1841
  %8 = load ptr, ptr %tmp7, align 8, !dbg !1834
  %cmp8 = icmp eq ptr %4, %8, !dbg !1842
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !1843

if.then9:                                         ; preds = %do.end6
  br label %do.body10, !dbg !1844

do.body10:                                        ; preds = %if.then9
  br label %do.body11, !dbg !1845

do.body11:                                        ; preds = %do.body10
  br label %do.body12, !dbg !1847

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !1849

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1849

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !1847

do.body15:                                        ; preds = %do.end14
  store volatile ptr null, ptr @netlbl_domhsh_def_ipv4, align 8, !dbg !1851
  br label %do.cond16, !dbg !1851

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !1851

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !1847

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !1847

do.end19:                                         ; preds = %do.cond18
  br label %do.cond20, !dbg !1845

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !1845

do.end21:                                         ; preds = %do.cond20
  br label %if.end46, !dbg !1845

if.else:                                          ; preds = %do.end6
  %9 = load ptr, ptr %entry.addr, align 8, !dbg !1853
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu578) #15, !dbg !1854
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu578, metadata !1793, metadata !DIExpression()), !dbg !1854
  br label %do.body22, !dbg !1855

do.body22:                                        ; preds = %if.else
  br label %do.cond23, !dbg !1857

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !1857

do.end24:                                         ; preds = %do.cond23
  %10 = load volatile ptr, ptr @netlbl_domhsh_def_ipv6, align 8, !dbg !1855
  store ptr %10, ptr %tmp25, align 8, !dbg !1857
  %11 = load ptr, ptr %tmp25, align 8, !dbg !1855
  store ptr %11, ptr %__UNIQUE_ID_rcu578, align 8, !dbg !1854
  br label %do.body26, !dbg !1854

do.body26:                                        ; preds = %do.end24
  br label %do.cond27, !dbg !1859

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !1859

do.end28:                                         ; preds = %do.cond27
  %12 = load ptr, ptr %__UNIQUE_ID_rcu578, align 8, !dbg !1854
  store ptr %12, ptr %tmp29, align 8, !dbg !1859
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu578) #15, !dbg !1861
  %13 = load ptr, ptr %tmp29, align 8, !dbg !1854
  %cmp30 = icmp eq ptr %9, %13, !dbg !1862
  br i1 %cmp30, label %if.then31, label %if.else44, !dbg !1863

if.then31:                                        ; preds = %do.end28
  br label %do.body32, !dbg !1864

do.body32:                                        ; preds = %if.then31
  br label %do.body33, !dbg !1865

do.body33:                                        ; preds = %do.body32
  br label %do.body34, !dbg !1867

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !1869

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !1869

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !1867

do.body37:                                        ; preds = %do.end36
  store volatile ptr null, ptr @netlbl_domhsh_def_ipv6, align 8, !dbg !1871
  br label %do.cond38, !dbg !1871

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !1871

do.end39:                                         ; preds = %do.cond38
  br label %do.cond40, !dbg !1867

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !1867

do.end41:                                         ; preds = %do.cond40
  br label %do.cond42, !dbg !1865

do.cond42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !1865

do.end43:                                         ; preds = %do.cond42
  br label %if.end45, !dbg !1865

if.else44:                                        ; preds = %do.end28
  %14 = load ptr, ptr %entry.addr, align 8, !dbg !1873
  %list = getelementptr inbounds %struct.netlbl_dom_map, ptr %14, i32 0, i32 4, !dbg !1874
  call void @list_del_rcu(ptr noundef %list) #18, !dbg !1875
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %do.end43
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %do.end21
  br label %if.end48, !dbg !1876

if.else47:                                        ; preds = %if.end
  store i32 -2, ptr %ret_val, align 4, !dbg !1877
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.end46
  call void @spin_unlock(ptr noundef @netlbl_domhsh_lock) #18, !dbg !1878
  %15 = load i32, ptr %ret_val, align 4, !dbg !1879
  %tobool49 = icmp ne i32 %15, 0, !dbg !1879
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !1881

if.then50:                                        ; preds = %if.end48
  %16 = load i32, ptr %ret_val, align 4, !dbg !1882
  store i32 %16, ptr %retval, align 4, !dbg !1883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1883

if.end51:                                         ; preds = %if.end48
  %17 = load ptr, ptr %audit_info.addr, align 8, !dbg !1884
  %call = call ptr @netlbl_audit_start_common(i32 noundef 1410, ptr noundef %17) #18, !dbg !1885
  store ptr %call, ptr %audit_buf, align 8, !dbg !1886
  %18 = load ptr, ptr %audit_buf, align 8, !dbg !1887
  %cmp52 = icmp ne ptr %18, null, !dbg !1889
  br i1 %cmp52, label %if.then53, label %if.end56, !dbg !1890

if.then53:                                        ; preds = %if.end51
  %19 = load ptr, ptr %audit_buf, align 8, !dbg !1891
  %20 = load ptr, ptr %entry.addr, align 8, !dbg !1893
  %domain = getelementptr inbounds %struct.netlbl_dom_map, ptr %20, i32 0, i32 0, !dbg !1894
  %21 = load ptr, ptr %domain, align 8, !dbg !1894
  %tobool54 = icmp ne ptr %21, null, !dbg !1893
  br i1 %tobool54, label %cond.true, label %cond.false, !dbg !1893

cond.true:                                        ; preds = %if.then53
  %22 = load ptr, ptr %entry.addr, align 8, !dbg !1895
  %domain55 = getelementptr inbounds %struct.netlbl_dom_map, ptr %22, i32 0, i32 0, !dbg !1896
  %23 = load ptr, ptr %domain55, align 8, !dbg !1896
  br label %cond.end, !dbg !1893

cond.false:                                       ; preds = %if.then53
  br label %cond.end, !dbg !1893

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %23, %cond.true ], [ @.str.1, %cond.false ], !dbg !1893
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %19, ptr noundef @.str, ptr noundef %cond) #18, !dbg !1897
  %24 = load ptr, ptr %audit_buf, align 8, !dbg !1898
  call void @audit_log_end(ptr noundef %24) #18, !dbg !1899
  br label %if.end56, !dbg !1900

if.end56:                                         ; preds = %cond.end, %if.end51
  %25 = load ptr, ptr %entry.addr, align 8, !dbg !1901
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %25, i32 0, i32 1, !dbg !1902
  %type = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def, i32 0, i32 0, !dbg !1903
  %26 = load i32, ptr %type, align 8, !dbg !1903
  switch i32 %26, label %sw.epilog [
    i32 6, label %sw.bb
    i32 3, label %sw.bb94
    i32 7, label %sw.bb96
  ], !dbg !1904

sw.bb:                                            ; preds = %if.end56
  %27 = load ptr, ptr %entry.addr, align 8, !dbg !1905
  %def57 = getelementptr inbounds %struct.netlbl_dom_map, ptr %27, i32 0, i32 1, !dbg !1905
  %28 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def57, i32 0, i32 1, !dbg !1905
  %29 = load ptr, ptr %28, align 8, !dbg !1905
  %list4 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %29, i32 0, i32 0, !dbg !1905
  %next = getelementptr inbounds %struct.list_head, ptr %list4, i32 0, i32 0, !dbg !1905
  %30 = load ptr, ptr %next, align 8, !dbg !1905
  %31 = load ptr, ptr %entry.addr, align 8, !dbg !1905
  %def58 = getelementptr inbounds %struct.netlbl_dom_map, ptr %31, i32 0, i32 1, !dbg !1905
  %32 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def58, i32 0, i32 1, !dbg !1905
  %33 = load ptr, ptr %32, align 8, !dbg !1905
  %list459 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %33, i32 0, i32 0, !dbg !1905
  %call60 = call ptr @__af4list_valid_rcu(ptr noundef %30, ptr noundef %list459) #18, !dbg !1905
  store ptr %call60, ptr %iter4, align 8, !dbg !1905
  br label %for.cond, !dbg !1905

for.cond:                                         ; preds = %for.inc, %sw.bb
  %34 = load ptr, ptr %iter4, align 8, !dbg !1906
  %list61 = getelementptr inbounds %struct.netlbl_af4list, ptr %34, i32 0, i32 3, !dbg !1906
  %35 = load ptr, ptr %entry.addr, align 8, !dbg !1906
  %def62 = getelementptr inbounds %struct.netlbl_dom_map, ptr %35, i32 0, i32 1, !dbg !1906
  %36 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def62, i32 0, i32 1, !dbg !1906
  %37 = load ptr, ptr %36, align 8, !dbg !1906
  %list463 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %37, i32 0, i32 0, !dbg !1906
  %cmp64 = icmp ne ptr %list61, %list463, !dbg !1906
  br i1 %cmp64, label %for.body, label %for.end, !dbg !1905

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !1907
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1796, metadata !DIExpression()), !dbg !1907
  %38 = load ptr, ptr %iter4, align 8, !dbg !1907
  store ptr %38, ptr %__mptr, align 8, !dbg !1907
  %39 = load ptr, ptr %__mptr, align 8, !dbg !1907
  %add.ptr = getelementptr i8, ptr %39, i64 -16, !dbg !1907
  store ptr %add.ptr, ptr %tmp65, align 8, !dbg !1907
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !1908
  %40 = load ptr, ptr %tmp65, align 8, !dbg !1907
  store ptr %40, ptr %map4, align 8, !dbg !1909
  %41 = load ptr, ptr %map4, align 8, !dbg !1910
  %def66 = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %41, i32 0, i32 0, !dbg !1911
  %42 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def66, i32 0, i32 1, !dbg !1912
  %43 = load ptr, ptr %42, align 8, !dbg !1912
  call void @cipso_v4_doi_putdef(ptr noundef %43) #18, !dbg !1913
  br label %for.inc, !dbg !1914

for.inc:                                          ; preds = %for.body
  %44 = load ptr, ptr %iter4, align 8, !dbg !1906
  %list67 = getelementptr inbounds %struct.netlbl_af4list, ptr %44, i32 0, i32 3, !dbg !1906
  %next68 = getelementptr inbounds %struct.list_head, ptr %list67, i32 0, i32 0, !dbg !1906
  %45 = load ptr, ptr %next68, align 8, !dbg !1906
  %46 = load ptr, ptr %entry.addr, align 8, !dbg !1906
  %def69 = getelementptr inbounds %struct.netlbl_dom_map, ptr %46, i32 0, i32 1, !dbg !1906
  %47 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def69, i32 0, i32 1, !dbg !1906
  %48 = load ptr, ptr %47, align 8, !dbg !1906
  %list470 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %48, i32 0, i32 0, !dbg !1906
  %call71 = call ptr @__af4list_valid_rcu(ptr noundef %45, ptr noundef %list470) #18, !dbg !1906
  store ptr %call71, ptr %iter4, align 8, !dbg !1906
  br label %for.cond, !dbg !1906, !llvm.loop !1915

for.end:                                          ; preds = %for.cond
  %49 = load ptr, ptr %entry.addr, align 8, !dbg !1917
  %def72 = getelementptr inbounds %struct.netlbl_dom_map, ptr %49, i32 0, i32 1, !dbg !1917
  %50 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def72, i32 0, i32 1, !dbg !1917
  %51 = load ptr, ptr %50, align 8, !dbg !1917
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %51, i32 0, i32 1, !dbg !1917
  %next73 = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !1917
  %52 = load ptr, ptr %next73, align 8, !dbg !1917
  %53 = load ptr, ptr %entry.addr, align 8, !dbg !1917
  %def74 = getelementptr inbounds %struct.netlbl_dom_map, ptr %53, i32 0, i32 1, !dbg !1917
  %54 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def74, i32 0, i32 1, !dbg !1917
  %55 = load ptr, ptr %54, align 8, !dbg !1917
  %list675 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %55, i32 0, i32 1, !dbg !1917
  %call76 = call ptr @__af6list_valid_rcu(ptr noundef %52, ptr noundef %list675) #18, !dbg !1917
  store ptr %call76, ptr %iter6, align 8, !dbg !1917
  br label %for.cond77, !dbg !1917

for.cond77:                                       ; preds = %for.inc87, %for.end
  %56 = load ptr, ptr %iter6, align 8, !dbg !1918
  %list78 = getelementptr inbounds %struct.netlbl_af6list, ptr %56, i32 0, i32 3, !dbg !1918
  %57 = load ptr, ptr %entry.addr, align 8, !dbg !1918
  %def79 = getelementptr inbounds %struct.netlbl_dom_map, ptr %57, i32 0, i32 1, !dbg !1918
  %58 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def79, i32 0, i32 1, !dbg !1918
  %59 = load ptr, ptr %58, align 8, !dbg !1918
  %list680 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %59, i32 0, i32 1, !dbg !1918
  %cmp81 = icmp ne ptr %list78, %list680, !dbg !1918
  br i1 %cmp81, label %for.body82, label %for.end93, !dbg !1917

for.body82:                                       ; preds = %for.cond77
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr83) #15, !dbg !1919
  call void @llvm.dbg.declare(metadata ptr %__mptr83, metadata !1802, metadata !DIExpression()), !dbg !1919
  %60 = load ptr, ptr %iter6, align 8, !dbg !1919
  store ptr %60, ptr %__mptr83, align 8, !dbg !1919
  %61 = load ptr, ptr %__mptr83, align 8, !dbg !1919
  %add.ptr85 = getelementptr i8, ptr %61, i64 -16, !dbg !1919
  store ptr %add.ptr85, ptr %tmp84, align 8, !dbg !1919
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr83) #15, !dbg !1920
  %62 = load ptr, ptr %tmp84, align 8, !dbg !1919
  store ptr %62, ptr %map6, align 8, !dbg !1921
  %63 = load ptr, ptr %map6, align 8, !dbg !1922
  %def86 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %63, i32 0, i32 0, !dbg !1923
  %64 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def86, i32 0, i32 1, !dbg !1924
  %65 = load ptr, ptr %64, align 8, !dbg !1924
  call void @calipso_doi_putdef(ptr noundef %65) #18, !dbg !1925
  br label %for.inc87, !dbg !1926

for.inc87:                                        ; preds = %for.body82
  %66 = load ptr, ptr %iter6, align 8, !dbg !1918
  %list88 = getelementptr inbounds %struct.netlbl_af6list, ptr %66, i32 0, i32 3, !dbg !1918
  %next89 = getelementptr inbounds %struct.list_head, ptr %list88, i32 0, i32 0, !dbg !1918
  %67 = load ptr, ptr %next89, align 8, !dbg !1918
  %68 = load ptr, ptr %entry.addr, align 8, !dbg !1918
  %def90 = getelementptr inbounds %struct.netlbl_dom_map, ptr %68, i32 0, i32 1, !dbg !1918
  %69 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def90, i32 0, i32 1, !dbg !1918
  %70 = load ptr, ptr %69, align 8, !dbg !1918
  %list691 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %70, i32 0, i32 1, !dbg !1918
  %call92 = call ptr @__af6list_valid_rcu(ptr noundef %67, ptr noundef %list691) #18, !dbg !1918
  store ptr %call92, ptr %iter6, align 8, !dbg !1918
  br label %for.cond77, !dbg !1918, !llvm.loop !1927

for.end93:                                        ; preds = %for.cond77
  br label %sw.epilog, !dbg !1929

sw.bb94:                                          ; preds = %if.end56
  %71 = load ptr, ptr %entry.addr, align 8, !dbg !1930
  %def95 = getelementptr inbounds %struct.netlbl_dom_map, ptr %71, i32 0, i32 1, !dbg !1931
  %72 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def95, i32 0, i32 1, !dbg !1932
  %73 = load ptr, ptr %72, align 8, !dbg !1932
  call void @cipso_v4_doi_putdef(ptr noundef %73) #18, !dbg !1933
  br label %sw.epilog, !dbg !1934

sw.bb96:                                          ; preds = %if.end56
  %74 = load ptr, ptr %entry.addr, align 8, !dbg !1935
  %def97 = getelementptr inbounds %struct.netlbl_dom_map, ptr %74, i32 0, i32 1, !dbg !1936
  %75 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def97, i32 0, i32 1, !dbg !1937
  %76 = load ptr, ptr %75, align 8, !dbg !1937
  call void @calipso_doi_putdef(ptr noundef %76) #18, !dbg !1938
  br label %sw.epilog, !dbg !1939

sw.epilog:                                        ; preds = %if.end56, %sw.bb96, %sw.bb94, %for.end93
  %77 = load ptr, ptr %entry.addr, align 8, !dbg !1940
  %rcu = getelementptr inbounds %struct.netlbl_dom_map, ptr %77, i32 0, i32 5, !dbg !1941
  call void @call_rcu(ptr noundef %rcu, ptr noundef @netlbl_domhsh_free_entry) #18, !dbg !1942
  %78 = load i32, ptr %ret_val, align 4, !dbg !1943
  store i32 %78, ptr %retval, align 4, !dbg !1944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1944

cleanup:                                          ; preds = %sw.epilog, %if.then50, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %map6) #15, !dbg !1945
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter6) #15, !dbg !1945
  call void @llvm.lifetime.end.p0(i64 8, ptr %map4) #15, !dbg !1945
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter4) #15, !dbg !1945
  call void @llvm.lifetime.end.p0(i64 8, ptr %audit_buf) #15, !dbg !1945
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_val) #15, !dbg !1945
  %79 = load i32, ptr %retval, align 4, !dbg !1945
  ret i32 %79, !dbg !1945
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_rcu(ptr noundef %entry1) #6 align 16 !dbg !1946 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1948, metadata !DIExpression()), !dbg !1949
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1950
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !1951
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1952
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1953
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !1954
  ret void, !dbg !1955
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1956 dso_local ptr @netlbl_audit_start_common(i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1960 dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1963 dso_local void @audit_log_end(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1966 dso_local void @cipso_v4_doi_putdef(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1969 dso_local void @calipso_doi_putdef(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1973 dso_local void @call_rcu(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlbl_domhsh_remove_af4(ptr noundef %domain, ptr noundef %addr, ptr noundef %mask, ptr noundef %audit_info) #8 align 16 !dbg !1977 {
entry:
  %retval = alloca i32, align 4
  %domain.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %audit_info.addr = alloca ptr, align 8
  %entry_map = alloca ptr, align 8
  %entry_addr = alloca ptr, align 8
  %iter4 = alloca ptr, align 8
  %iter6 = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !1987, metadata !DIExpression()), !dbg !2000
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1988, metadata !DIExpression()), !dbg !2001
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !1989, metadata !DIExpression()), !dbg !2002
  store ptr %audit_info, ptr %audit_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %audit_info.addr, metadata !1990, metadata !DIExpression()), !dbg !2003
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_map) #15, !dbg !2004
  call void @llvm.dbg.declare(metadata ptr %entry_map, metadata !1991, metadata !DIExpression()), !dbg !2005
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_addr) #15, !dbg !2006
  call void @llvm.dbg.declare(metadata ptr %entry_addr, metadata !1992, metadata !DIExpression()), !dbg !2007
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter4) #15, !dbg !2008
  call void @llvm.dbg.declare(metadata ptr %iter4, metadata !1993, metadata !DIExpression()), !dbg !2009
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter6) #15, !dbg !2010
  call void @llvm.dbg.declare(metadata ptr %iter6, metadata !1994, metadata !DIExpression()), !dbg !2011
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1995, metadata !DIExpression()), !dbg !2013
  call void @rcu_read_lock() #18, !dbg !2014
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !2015
  %tobool = icmp ne ptr %0, null, !dbg !2015
  br i1 %tobool, label %if.then, label %if.else, !dbg !2017

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %domain.addr, align 8, !dbg !2018
  %call = call ptr @netlbl_domhsh_search(ptr noundef %1, i16 noundef zeroext 2) #18, !dbg !2019
  store ptr %call, ptr %entry_map, align 8, !dbg !2020
  br label %if.end, !dbg !2021

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %domain.addr, align 8, !dbg !2022
  %call2 = call ptr @netlbl_domhsh_search_def(ptr noundef %2, i16 noundef zeroext 2) #18, !dbg !2023
  store ptr %call2, ptr %entry_map, align 8, !dbg !2024
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %entry_map, align 8, !dbg !2025
  %cmp = icmp eq ptr %3, null, !dbg !2027
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !2028

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %entry_map, align 8, !dbg !2029
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %4, i32 0, i32 1, !dbg !2030
  %type = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def, i32 0, i32 0, !dbg !2031
  %5 = load i32, ptr %type, align 8, !dbg !2031
  %cmp3 = icmp ne i32 %5, 6, !dbg !2032
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2033

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  br label %remove_af4_failure, !dbg !2034

if.end5:                                          ; preds = %lor.lhs.false
  call void @spin_lock(ptr noundef @netlbl_domhsh_lock) #18, !dbg !2035
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !2036
  %s_addr = getelementptr inbounds %struct.in_addr, ptr %6, i32 0, i32 0, !dbg !2037
  %7 = load i32, ptr %s_addr, align 4, !dbg !2037
  %8 = load ptr, ptr %mask.addr, align 8, !dbg !2038
  %s_addr6 = getelementptr inbounds %struct.in_addr, ptr %8, i32 0, i32 0, !dbg !2039
  %9 = load i32, ptr %s_addr6, align 4, !dbg !2039
  %10 = load ptr, ptr %entry_map, align 8, !dbg !2040
  %def7 = getelementptr inbounds %struct.netlbl_dom_map, ptr %10, i32 0, i32 1, !dbg !2041
  %11 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def7, i32 0, i32 1, !dbg !2042
  %12 = load ptr, ptr %11, align 8, !dbg !2042
  %list4 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %12, i32 0, i32 0, !dbg !2043
  %call8 = call ptr @netlbl_af4list_remove(i32 noundef %7, i32 noundef %9, ptr noundef %list4) #18, !dbg !2044
  store ptr %call8, ptr %entry_addr, align 8, !dbg !2045
  call void @spin_unlock(ptr noundef @netlbl_domhsh_lock) #18, !dbg !2046
  %13 = load ptr, ptr %entry_addr, align 8, !dbg !2047
  %cmp9 = icmp eq ptr %13, null, !dbg !2049
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2050

if.then10:                                        ; preds = %if.end5
  br label %remove_af4_failure, !dbg !2051

if.end11:                                         ; preds = %if.end5
  %14 = load ptr, ptr %entry_map, align 8, !dbg !2052
  %def12 = getelementptr inbounds %struct.netlbl_dom_map, ptr %14, i32 0, i32 1, !dbg !2052
  %15 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def12, i32 0, i32 1, !dbg !2052
  %16 = load ptr, ptr %15, align 8, !dbg !2052
  %list413 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %16, i32 0, i32 0, !dbg !2052
  %next = getelementptr inbounds %struct.list_head, ptr %list413, i32 0, i32 0, !dbg !2052
  %17 = load ptr, ptr %next, align 8, !dbg !2052
  %18 = load ptr, ptr %entry_map, align 8, !dbg !2052
  %def14 = getelementptr inbounds %struct.netlbl_dom_map, ptr %18, i32 0, i32 1, !dbg !2052
  %19 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def14, i32 0, i32 1, !dbg !2052
  %20 = load ptr, ptr %19, align 8, !dbg !2052
  %list415 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %20, i32 0, i32 0, !dbg !2052
  %call16 = call ptr @__af4list_valid_rcu(ptr noundef %17, ptr noundef %list415) #18, !dbg !2052
  store ptr %call16, ptr %iter4, align 8, !dbg !2052
  br label %for.cond, !dbg !2052

for.cond:                                         ; preds = %for.inc, %if.end11
  %21 = load ptr, ptr %iter4, align 8, !dbg !2054
  %list = getelementptr inbounds %struct.netlbl_af4list, ptr %21, i32 0, i32 3, !dbg !2054
  %22 = load ptr, ptr %entry_map, align 8, !dbg !2054
  %def17 = getelementptr inbounds %struct.netlbl_dom_map, ptr %22, i32 0, i32 1, !dbg !2054
  %23 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def17, i32 0, i32 1, !dbg !2054
  %24 = load ptr, ptr %23, align 8, !dbg !2054
  %list418 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %24, i32 0, i32 0, !dbg !2054
  %cmp19 = icmp ne ptr %list, %list418, !dbg !2054
  br i1 %cmp19, label %for.body, label %for.end, !dbg !2052

for.body:                                         ; preds = %for.cond
  br label %remove_af4_single_addr, !dbg !2056

for.inc:                                          ; No predecessors!
  %25 = load ptr, ptr %iter4, align 8, !dbg !2054
  %list20 = getelementptr inbounds %struct.netlbl_af4list, ptr %25, i32 0, i32 3, !dbg !2054
  %next21 = getelementptr inbounds %struct.list_head, ptr %list20, i32 0, i32 0, !dbg !2054
  %26 = load ptr, ptr %next21, align 8, !dbg !2054
  %27 = load ptr, ptr %entry_map, align 8, !dbg !2054
  %def22 = getelementptr inbounds %struct.netlbl_dom_map, ptr %27, i32 0, i32 1, !dbg !2054
  %28 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def22, i32 0, i32 1, !dbg !2054
  %29 = load ptr, ptr %28, align 8, !dbg !2054
  %list423 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %29, i32 0, i32 0, !dbg !2054
  %call24 = call ptr @__af4list_valid_rcu(ptr noundef %26, ptr noundef %list423) #18, !dbg !2054
  store ptr %call24, ptr %iter4, align 8, !dbg !2054
  br label %for.cond, !dbg !2054, !llvm.loop !2057

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %entry_map, align 8, !dbg !2059
  %def25 = getelementptr inbounds %struct.netlbl_dom_map, ptr %30, i32 0, i32 1, !dbg !2059
  %31 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def25, i32 0, i32 1, !dbg !2059
  %32 = load ptr, ptr %31, align 8, !dbg !2059
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %32, i32 0, i32 1, !dbg !2059
  %next26 = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !2059
  %33 = load ptr, ptr %next26, align 8, !dbg !2059
  %34 = load ptr, ptr %entry_map, align 8, !dbg !2059
  %def27 = getelementptr inbounds %struct.netlbl_dom_map, ptr %34, i32 0, i32 1, !dbg !2059
  %35 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def27, i32 0, i32 1, !dbg !2059
  %36 = load ptr, ptr %35, align 8, !dbg !2059
  %list628 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %36, i32 0, i32 1, !dbg !2059
  %call29 = call ptr @__af6list_valid_rcu(ptr noundef %33, ptr noundef %list628) #18, !dbg !2059
  store ptr %call29, ptr %iter6, align 8, !dbg !2059
  br label %for.cond30, !dbg !2059

for.cond30:                                       ; preds = %for.inc36, %for.end
  %37 = load ptr, ptr %iter6, align 8, !dbg !2061
  %list31 = getelementptr inbounds %struct.netlbl_af6list, ptr %37, i32 0, i32 3, !dbg !2061
  %38 = load ptr, ptr %entry_map, align 8, !dbg !2061
  %def32 = getelementptr inbounds %struct.netlbl_dom_map, ptr %38, i32 0, i32 1, !dbg !2061
  %39 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def32, i32 0, i32 1, !dbg !2061
  %40 = load ptr, ptr %39, align 8, !dbg !2061
  %list633 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %40, i32 0, i32 1, !dbg !2061
  %cmp34 = icmp ne ptr %list31, %list633, !dbg !2061
  br i1 %cmp34, label %for.body35, label %for.end42, !dbg !2059

for.body35:                                       ; preds = %for.cond30
  br label %remove_af4_single_addr, !dbg !2063

for.inc36:                                        ; No predecessors!
  %41 = load ptr, ptr %iter6, align 8, !dbg !2061
  %list37 = getelementptr inbounds %struct.netlbl_af6list, ptr %41, i32 0, i32 3, !dbg !2061
  %next38 = getelementptr inbounds %struct.list_head, ptr %list37, i32 0, i32 0, !dbg !2061
  %42 = load ptr, ptr %next38, align 8, !dbg !2061
  %43 = load ptr, ptr %entry_map, align 8, !dbg !2061
  %def39 = getelementptr inbounds %struct.netlbl_dom_map, ptr %43, i32 0, i32 1, !dbg !2061
  %44 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def39, i32 0, i32 1, !dbg !2061
  %45 = load ptr, ptr %44, align 8, !dbg !2061
  %list640 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %45, i32 0, i32 1, !dbg !2061
  %call41 = call ptr @__af6list_valid_rcu(ptr noundef %42, ptr noundef %list640) #18, !dbg !2061
  store ptr %call41, ptr %iter6, align 8, !dbg !2061
  br label %for.cond30, !dbg !2061, !llvm.loop !2064

for.end42:                                        ; preds = %for.cond30
  %46 = load ptr, ptr %entry_map, align 8, !dbg !2066
  %47 = load ptr, ptr %audit_info.addr, align 8, !dbg !2067
  %call43 = call i32 @netlbl_domhsh_remove_entry(ptr noundef %46, ptr noundef %47) #18, !dbg !2068
  br label %remove_af4_single_addr, !dbg !2068

remove_af4_single_addr:                           ; preds = %for.end42, %for.body35, %for.body
  call void @llvm.dbg.label(metadata !1996), !dbg !2069
  call void @rcu_read_unlock() #18, !dbg !2070
  call void @synchronize_rcu() #18, !dbg !2071
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2072
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1997, metadata !DIExpression()), !dbg !2072
  %48 = load ptr, ptr %entry_addr, align 8, !dbg !2072
  store ptr %48, ptr %__mptr, align 8, !dbg !2072
  %49 = load ptr, ptr %__mptr, align 8, !dbg !2072
  %add.ptr = getelementptr i8, ptr %49, i64 -16, !dbg !2072
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2072
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2073
  %50 = load ptr, ptr %tmp, align 8, !dbg !2072
  store ptr %50, ptr %entry1, align 8, !dbg !2074
  %51 = load ptr, ptr %entry1, align 8, !dbg !2075
  %def44 = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %51, i32 0, i32 0, !dbg !2076
  %52 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def44, i32 0, i32 1, !dbg !2077
  %53 = load ptr, ptr %52, align 8, !dbg !2077
  call void @cipso_v4_doi_putdef(ptr noundef %53) #18, !dbg !2078
  %54 = load ptr, ptr %entry1, align 8, !dbg !2079
  call void @kfree(ptr noundef %54) #18, !dbg !2080
  store i32 0, ptr %retval, align 4, !dbg !2081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2081

remove_af4_failure:                               ; preds = %if.then10, %if.then4
  call void @llvm.dbg.label(metadata !1999), !dbg !2082
  call void @rcu_read_unlock() #18, !dbg !2083
  store i32 -2, ptr %retval, align 4, !dbg !2084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2084

cleanup:                                          ; preds = %remove_af4_failure, %remove_af4_single_addr
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !2085
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter6) #15, !dbg !2085
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter4) #15, !dbg !2085
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_addr) #15, !dbg !2085
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_map) #15, !dbg !2085
  %55 = load i32, ptr %retval, align 4, !dbg !2085
  ret i32 %55, !dbg !2085
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2086 dso_local ptr @netlbl_af4list_remove(i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2087 dso_local void @synchronize_rcu() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlbl_domhsh_remove_af6(ptr noundef %domain, ptr noundef %addr, ptr noundef %mask, ptr noundef %audit_info) #8 align 16 !dbg !2088 {
entry:
  %retval = alloca i32, align 4
  %domain.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %audit_info.addr = alloca ptr, align 8
  %entry_map = alloca ptr, align 8
  %entry_addr = alloca ptr, align 8
  %iter4 = alloca ptr, align 8
  %iter6 = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !2092, metadata !DIExpression()), !dbg !2105
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2093, metadata !DIExpression()), !dbg !2106
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !2094, metadata !DIExpression()), !dbg !2107
  store ptr %audit_info, ptr %audit_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %audit_info.addr, metadata !2095, metadata !DIExpression()), !dbg !2108
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_map) #15, !dbg !2109
  call void @llvm.dbg.declare(metadata ptr %entry_map, metadata !2096, metadata !DIExpression()), !dbg !2110
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_addr) #15, !dbg !2111
  call void @llvm.dbg.declare(metadata ptr %entry_addr, metadata !2097, metadata !DIExpression()), !dbg !2112
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter4) #15, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %iter4, metadata !2098, metadata !DIExpression()), !dbg !2114
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter6) #15, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %iter6, metadata !2099, metadata !DIExpression()), !dbg !2116
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !2117
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2100, metadata !DIExpression()), !dbg !2118
  call void @rcu_read_lock() #18, !dbg !2119
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !2120
  %tobool = icmp ne ptr %0, null, !dbg !2120
  br i1 %tobool, label %if.then, label %if.else, !dbg !2122

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %domain.addr, align 8, !dbg !2123
  %call = call ptr @netlbl_domhsh_search(ptr noundef %1, i16 noundef zeroext 10) #18, !dbg !2124
  store ptr %call, ptr %entry_map, align 8, !dbg !2125
  br label %if.end, !dbg !2126

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %domain.addr, align 8, !dbg !2127
  %call2 = call ptr @netlbl_domhsh_search_def(ptr noundef %2, i16 noundef zeroext 10) #18, !dbg !2128
  store ptr %call2, ptr %entry_map, align 8, !dbg !2129
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %entry_map, align 8, !dbg !2130
  %cmp = icmp eq ptr %3, null, !dbg !2132
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !2133

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %entry_map, align 8, !dbg !2134
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %4, i32 0, i32 1, !dbg !2135
  %type = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def, i32 0, i32 0, !dbg !2136
  %5 = load i32, ptr %type, align 8, !dbg !2136
  %cmp3 = icmp ne i32 %5, 6, !dbg !2137
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2138

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  br label %remove_af6_failure, !dbg !2139

if.end5:                                          ; preds = %lor.lhs.false
  call void @spin_lock(ptr noundef @netlbl_domhsh_lock) #18, !dbg !2140
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !2141
  %7 = load ptr, ptr %mask.addr, align 8, !dbg !2142
  %8 = load ptr, ptr %entry_map, align 8, !dbg !2143
  %def6 = getelementptr inbounds %struct.netlbl_dom_map, ptr %8, i32 0, i32 1, !dbg !2144
  %9 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def6, i32 0, i32 1, !dbg !2145
  %10 = load ptr, ptr %9, align 8, !dbg !2145
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %10, i32 0, i32 1, !dbg !2146
  %call7 = call ptr @netlbl_af6list_remove(ptr noundef %6, ptr noundef %7, ptr noundef %list6) #18, !dbg !2147
  store ptr %call7, ptr %entry_addr, align 8, !dbg !2148
  call void @spin_unlock(ptr noundef @netlbl_domhsh_lock) #18, !dbg !2149
  %11 = load ptr, ptr %entry_addr, align 8, !dbg !2150
  %cmp8 = icmp eq ptr %11, null, !dbg !2152
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2153

if.then9:                                         ; preds = %if.end5
  br label %remove_af6_failure, !dbg !2154

if.end10:                                         ; preds = %if.end5
  %12 = load ptr, ptr %entry_map, align 8, !dbg !2155
  %def11 = getelementptr inbounds %struct.netlbl_dom_map, ptr %12, i32 0, i32 1, !dbg !2155
  %13 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def11, i32 0, i32 1, !dbg !2155
  %14 = load ptr, ptr %13, align 8, !dbg !2155
  %list4 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %14, i32 0, i32 0, !dbg !2155
  %next = getelementptr inbounds %struct.list_head, ptr %list4, i32 0, i32 0, !dbg !2155
  %15 = load ptr, ptr %next, align 8, !dbg !2155
  %16 = load ptr, ptr %entry_map, align 8, !dbg !2155
  %def12 = getelementptr inbounds %struct.netlbl_dom_map, ptr %16, i32 0, i32 1, !dbg !2155
  %17 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def12, i32 0, i32 1, !dbg !2155
  %18 = load ptr, ptr %17, align 8, !dbg !2155
  %list413 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %18, i32 0, i32 0, !dbg !2155
  %call14 = call ptr @__af4list_valid_rcu(ptr noundef %15, ptr noundef %list413) #18, !dbg !2155
  store ptr %call14, ptr %iter4, align 8, !dbg !2155
  br label %for.cond, !dbg !2155

for.cond:                                         ; preds = %for.inc, %if.end10
  %19 = load ptr, ptr %iter4, align 8, !dbg !2157
  %list = getelementptr inbounds %struct.netlbl_af4list, ptr %19, i32 0, i32 3, !dbg !2157
  %20 = load ptr, ptr %entry_map, align 8, !dbg !2157
  %def15 = getelementptr inbounds %struct.netlbl_dom_map, ptr %20, i32 0, i32 1, !dbg !2157
  %21 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def15, i32 0, i32 1, !dbg !2157
  %22 = load ptr, ptr %21, align 8, !dbg !2157
  %list416 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %22, i32 0, i32 0, !dbg !2157
  %cmp17 = icmp ne ptr %list, %list416, !dbg !2157
  br i1 %cmp17, label %for.body, label %for.end, !dbg !2155

for.body:                                         ; preds = %for.cond
  br label %remove_af6_single_addr, !dbg !2159

for.inc:                                          ; No predecessors!
  %23 = load ptr, ptr %iter4, align 8, !dbg !2157
  %list18 = getelementptr inbounds %struct.netlbl_af4list, ptr %23, i32 0, i32 3, !dbg !2157
  %next19 = getelementptr inbounds %struct.list_head, ptr %list18, i32 0, i32 0, !dbg !2157
  %24 = load ptr, ptr %next19, align 8, !dbg !2157
  %25 = load ptr, ptr %entry_map, align 8, !dbg !2157
  %def20 = getelementptr inbounds %struct.netlbl_dom_map, ptr %25, i32 0, i32 1, !dbg !2157
  %26 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def20, i32 0, i32 1, !dbg !2157
  %27 = load ptr, ptr %26, align 8, !dbg !2157
  %list421 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %27, i32 0, i32 0, !dbg !2157
  %call22 = call ptr @__af4list_valid_rcu(ptr noundef %24, ptr noundef %list421) #18, !dbg !2157
  store ptr %call22, ptr %iter4, align 8, !dbg !2157
  br label %for.cond, !dbg !2157, !llvm.loop !2160

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %entry_map, align 8, !dbg !2162
  %def23 = getelementptr inbounds %struct.netlbl_dom_map, ptr %28, i32 0, i32 1, !dbg !2162
  %29 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def23, i32 0, i32 1, !dbg !2162
  %30 = load ptr, ptr %29, align 8, !dbg !2162
  %list624 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %30, i32 0, i32 1, !dbg !2162
  %next25 = getelementptr inbounds %struct.list_head, ptr %list624, i32 0, i32 0, !dbg !2162
  %31 = load ptr, ptr %next25, align 8, !dbg !2162
  %32 = load ptr, ptr %entry_map, align 8, !dbg !2162
  %def26 = getelementptr inbounds %struct.netlbl_dom_map, ptr %32, i32 0, i32 1, !dbg !2162
  %33 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def26, i32 0, i32 1, !dbg !2162
  %34 = load ptr, ptr %33, align 8, !dbg !2162
  %list627 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %34, i32 0, i32 1, !dbg !2162
  %call28 = call ptr @__af6list_valid_rcu(ptr noundef %31, ptr noundef %list627) #18, !dbg !2162
  store ptr %call28, ptr %iter6, align 8, !dbg !2162
  br label %for.cond29, !dbg !2162

for.cond29:                                       ; preds = %for.inc35, %for.end
  %35 = load ptr, ptr %iter6, align 8, !dbg !2164
  %list30 = getelementptr inbounds %struct.netlbl_af6list, ptr %35, i32 0, i32 3, !dbg !2164
  %36 = load ptr, ptr %entry_map, align 8, !dbg !2164
  %def31 = getelementptr inbounds %struct.netlbl_dom_map, ptr %36, i32 0, i32 1, !dbg !2164
  %37 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def31, i32 0, i32 1, !dbg !2164
  %38 = load ptr, ptr %37, align 8, !dbg !2164
  %list632 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %38, i32 0, i32 1, !dbg !2164
  %cmp33 = icmp ne ptr %list30, %list632, !dbg !2164
  br i1 %cmp33, label %for.body34, label %for.end41, !dbg !2162

for.body34:                                       ; preds = %for.cond29
  br label %remove_af6_single_addr, !dbg !2166

for.inc35:                                        ; No predecessors!
  %39 = load ptr, ptr %iter6, align 8, !dbg !2164
  %list36 = getelementptr inbounds %struct.netlbl_af6list, ptr %39, i32 0, i32 3, !dbg !2164
  %next37 = getelementptr inbounds %struct.list_head, ptr %list36, i32 0, i32 0, !dbg !2164
  %40 = load ptr, ptr %next37, align 8, !dbg !2164
  %41 = load ptr, ptr %entry_map, align 8, !dbg !2164
  %def38 = getelementptr inbounds %struct.netlbl_dom_map, ptr %41, i32 0, i32 1, !dbg !2164
  %42 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def38, i32 0, i32 1, !dbg !2164
  %43 = load ptr, ptr %42, align 8, !dbg !2164
  %list639 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %43, i32 0, i32 1, !dbg !2164
  %call40 = call ptr @__af6list_valid_rcu(ptr noundef %40, ptr noundef %list639) #18, !dbg !2164
  store ptr %call40, ptr %iter6, align 8, !dbg !2164
  br label %for.cond29, !dbg !2164, !llvm.loop !2167

for.end41:                                        ; preds = %for.cond29
  %44 = load ptr, ptr %entry_map, align 8, !dbg !2169
  %45 = load ptr, ptr %audit_info.addr, align 8, !dbg !2170
  %call42 = call i32 @netlbl_domhsh_remove_entry(ptr noundef %44, ptr noundef %45) #18, !dbg !2171
  br label %remove_af6_single_addr, !dbg !2171

remove_af6_single_addr:                           ; preds = %for.end41, %for.body34, %for.body
  call void @llvm.dbg.label(metadata !2101), !dbg !2172
  call void @rcu_read_unlock() #18, !dbg !2173
  call void @synchronize_rcu() #18, !dbg !2174
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2175
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2102, metadata !DIExpression()), !dbg !2175
  %46 = load ptr, ptr %entry_addr, align 8, !dbg !2175
  store ptr %46, ptr %__mptr, align 8, !dbg !2175
  %47 = load ptr, ptr %__mptr, align 8, !dbg !2175
  %add.ptr = getelementptr i8, ptr %47, i64 -16, !dbg !2175
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2175
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2176
  %48 = load ptr, ptr %tmp, align 8, !dbg !2175
  store ptr %48, ptr %entry1, align 8, !dbg !2177
  %49 = load ptr, ptr %entry1, align 8, !dbg !2178
  %def43 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %49, i32 0, i32 0, !dbg !2179
  %50 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def43, i32 0, i32 1, !dbg !2180
  %51 = load ptr, ptr %50, align 8, !dbg !2180
  call void @calipso_doi_putdef(ptr noundef %51) #18, !dbg !2181
  %52 = load ptr, ptr %entry1, align 8, !dbg !2182
  call void @kfree(ptr noundef %52) #18, !dbg !2183
  store i32 0, ptr %retval, align 4, !dbg !2184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2184

remove_af6_failure:                               ; preds = %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !2104), !dbg !2185
  call void @rcu_read_unlock() #18, !dbg !2186
  store i32 -2, ptr %retval, align 4, !dbg !2187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2187

cleanup:                                          ; preds = %remove_af6_failure, %remove_af6_single_addr
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !2188
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter6) #15, !dbg !2188
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter4) #15, !dbg !2188
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_addr) #15, !dbg !2188
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_map) #15, !dbg !2188
  %53 = load i32, ptr %retval, align 4, !dbg !2188
  ret i32 %53, !dbg !2188
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2189 dso_local ptr @netlbl_af6list_remove(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlbl_domhsh_remove(ptr noundef %domain, i16 noundef zeroext %family, ptr noundef %audit_info) #8 align 16 !dbg !2190 {
entry:
  %domain.addr = alloca ptr, align 8
  %family.addr = alloca i16, align 2
  %audit_info.addr = alloca ptr, align 8
  %ret_val = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %ret_val2 = alloca i32, align 4
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !2194, metadata !DIExpression()), !dbg !2203
  store i16 %family, ptr %family.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %family.addr, metadata !2195, metadata !DIExpression()), !dbg !2204
  store ptr %audit_info, ptr %audit_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %audit_info.addr, metadata !2196, metadata !DIExpression()), !dbg !2205
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_val) #15, !dbg !2206
  call void @llvm.dbg.declare(metadata ptr %ret_val, metadata !2197, metadata !DIExpression()), !dbg !2207
  store i32 -22, ptr %ret_val, align 4, !dbg !2207
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !2208
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2198, metadata !DIExpression()), !dbg !2209
  call void @rcu_read_lock() #18, !dbg !2210
  %0 = load i16, ptr %family.addr, align 2, !dbg !2211
  %conv = zext i16 %0 to i32, !dbg !2211
  %cmp = icmp eq i32 %conv, 2, !dbg !2213
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2214

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16, ptr %family.addr, align 2, !dbg !2215
  %conv3 = zext i16 %1 to i32, !dbg !2215
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !2216
  br i1 %cmp4, label %if.then, label %if.end14, !dbg !2217

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %domain.addr, align 8, !dbg !2218
  %tobool = icmp ne ptr %2, null, !dbg !2218
  br i1 %tobool, label %if.then6, label %if.else, !dbg !2221

if.then6:                                         ; preds = %if.then
  %3 = load ptr, ptr %domain.addr, align 8, !dbg !2222
  %call = call ptr @netlbl_domhsh_search(ptr noundef %3, i16 noundef zeroext 2) #18, !dbg !2223
  store ptr %call, ptr %entry1, align 8, !dbg !2224
  br label %if.end, !dbg !2225

if.else:                                          ; preds = %if.then
  %4 = load ptr, ptr %domain.addr, align 8, !dbg !2226
  %call7 = call ptr @netlbl_domhsh_search_def(ptr noundef %4, i16 noundef zeroext 2) #18, !dbg !2227
  store ptr %call7, ptr %entry1, align 8, !dbg !2228
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %5 = load ptr, ptr %entry1, align 8, !dbg !2229
  %6 = load ptr, ptr %audit_info.addr, align 8, !dbg !2230
  %call8 = call i32 @netlbl_domhsh_remove_entry(ptr noundef %5, ptr noundef %6) #18, !dbg !2231
  store i32 %call8, ptr %ret_val, align 4, !dbg !2232
  %7 = load i32, ptr %ret_val, align 4, !dbg !2233
  %tobool9 = icmp ne i32 %7, 0, !dbg !2233
  br i1 %tobool9, label %land.lhs.true, label %if.end13, !dbg !2235

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, ptr %ret_val, align 4, !dbg !2236
  %cmp10 = icmp ne i32 %8, -2, !dbg !2237
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !2238

if.then12:                                        ; preds = %land.lhs.true
  br label %done, !dbg !2239

if.end13:                                         ; preds = %land.lhs.true, %if.end
  br label %if.end14, !dbg !2240

if.end14:                                         ; preds = %if.end13, %lor.lhs.false
  %9 = load i16, ptr %family.addr, align 2, !dbg !2241
  %conv15 = zext i16 %9 to i32, !dbg !2241
  %cmp16 = icmp eq i32 %conv15, 10, !dbg !2242
  br i1 %cmp16, label %if.then22, label %lor.lhs.false18, !dbg !2243

lor.lhs.false18:                                  ; preds = %if.end14
  %10 = load i16, ptr %family.addr, align 2, !dbg !2244
  %conv19 = zext i16 %10 to i32, !dbg !2244
  %cmp20 = icmp eq i32 %conv19, 0, !dbg !2245
  br i1 %cmp20, label %if.then22, label %if.end34, !dbg !2246

if.then22:                                        ; preds = %lor.lhs.false18, %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_val2) #15, !dbg !2247
  call void @llvm.dbg.declare(metadata ptr %ret_val2, metadata !2199, metadata !DIExpression()), !dbg !2248
  %11 = load ptr, ptr %domain.addr, align 8, !dbg !2249
  %tobool23 = icmp ne ptr %11, null, !dbg !2249
  br i1 %tobool23, label %if.then24, label %if.else26, !dbg !2251

if.then24:                                        ; preds = %if.then22
  %12 = load ptr, ptr %domain.addr, align 8, !dbg !2252
  %call25 = call ptr @netlbl_domhsh_search(ptr noundef %12, i16 noundef zeroext 10) #18, !dbg !2253
  store ptr %call25, ptr %entry1, align 8, !dbg !2254
  br label %if.end28, !dbg !2255

if.else26:                                        ; preds = %if.then22
  %13 = load ptr, ptr %domain.addr, align 8, !dbg !2256
  %call27 = call ptr @netlbl_domhsh_search_def(ptr noundef %13, i16 noundef zeroext 10) #18, !dbg !2257
  store ptr %call27, ptr %entry1, align 8, !dbg !2258
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then24
  %14 = load ptr, ptr %entry1, align 8, !dbg !2259
  %15 = load ptr, ptr %audit_info.addr, align 8, !dbg !2260
  %call29 = call i32 @netlbl_domhsh_remove_entry(ptr noundef %14, ptr noundef %15) #18, !dbg !2261
  store i32 %call29, ptr %ret_val2, align 4, !dbg !2262
  %16 = load i32, ptr %ret_val2, align 4, !dbg !2263
  %cmp30 = icmp ne i32 %16, -2, !dbg !2265
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !2266

if.then32:                                        ; preds = %if.end28
  %17 = load i32, ptr %ret_val2, align 4, !dbg !2267
  store i32 %17, ptr %ret_val, align 4, !dbg !2268
  br label %if.end33, !dbg !2269

if.end33:                                         ; preds = %if.then32, %if.end28
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_val2) #15, !dbg !2270
  br label %if.end34, !dbg !2271

if.end34:                                         ; preds = %if.end33, %lor.lhs.false18
  br label %done, !dbg !2272

done:                                             ; preds = %if.end34, %if.then12
  call void @llvm.dbg.label(metadata !2202), !dbg !2273
  call void @rcu_read_unlock() #18, !dbg !2274
  %18 = load i32, ptr %ret_val, align 4, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !2276
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_val) #15, !dbg !2276
  ret i32 %18, !dbg !2277
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlbl_domhsh_remove_default(i16 noundef zeroext %family, ptr noundef %audit_info) #8 align 16 !dbg !2278 {
entry:
  %family.addr = alloca i16, align 2
  %audit_info.addr = alloca ptr, align 8
  store i16 %family, ptr %family.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %family.addr, metadata !2282, metadata !DIExpression()), !dbg !2284
  store ptr %audit_info, ptr %audit_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %audit_info.addr, metadata !2283, metadata !DIExpression()), !dbg !2285
  %0 = load i16, ptr %family.addr, align 2, !dbg !2286
  %1 = load ptr, ptr %audit_info.addr, align 8, !dbg !2287
  %call = call i32 @netlbl_domhsh_remove(ptr noundef null, i16 noundef zeroext %0, ptr noundef %1) #18, !dbg !2288
  ret i32 %call, !dbg !2289
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @netlbl_domhsh_getentry(ptr noundef %domain, i16 noundef zeroext %family) #8 align 16 !dbg !2290 {
entry:
  %retval = alloca ptr, align 8
  %domain.addr = alloca ptr, align 8
  %family.addr = alloca i16, align 2
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !2292, metadata !DIExpression()), !dbg !2294
  store i16 %family, ptr %family.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %family.addr, metadata !2293, metadata !DIExpression()), !dbg !2295
  %0 = load i16, ptr %family.addr, align 2, !dbg !2296
  %conv = zext i16 %0 to i32, !dbg !2296
  %cmp = icmp eq i32 %conv, 0, !dbg !2298
  br i1 %cmp, label %if.then, label %if.end, !dbg !2299

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2300
  br label %return, !dbg !2300

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %domain.addr, align 8, !dbg !2301
  %2 = load i16, ptr %family.addr, align 2, !dbg !2302
  %call = call ptr @netlbl_domhsh_search_def(ptr noundef %1, i16 noundef zeroext %2) #18, !dbg !2303
  store ptr %call, ptr %retval, align 8, !dbg !2304
  br label %return, !dbg !2304

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !2305
  ret ptr %3, !dbg !2305
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @netlbl_domhsh_getentry_af4(ptr noundef %domain, i32 noundef %addr) #8 align 16 !dbg !2306 {
entry:
  %retval = alloca ptr, align 8
  %domain.addr = alloca ptr, align 8
  %addr.addr = alloca i32, align 4
  %dom_iter = alloca ptr, align 8
  %addr_iter = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !2311, metadata !DIExpression()), !dbg !2317
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2312, metadata !DIExpression()), !dbg !2318
  call void @llvm.lifetime.start.p0(i64 8, ptr %dom_iter) #15, !dbg !2319
  call void @llvm.dbg.declare(metadata ptr %dom_iter, metadata !2313, metadata !DIExpression()), !dbg !2320
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr_iter) #15, !dbg !2321
  call void @llvm.dbg.declare(metadata ptr %addr_iter, metadata !2314, metadata !DIExpression()), !dbg !2322
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !2323
  %call = call ptr @netlbl_domhsh_search_def(ptr noundef %0, i16 noundef zeroext 2) #18, !dbg !2324
  store ptr %call, ptr %dom_iter, align 8, !dbg !2325
  %1 = load ptr, ptr %dom_iter, align 8, !dbg !2326
  %cmp = icmp eq ptr %1, null, !dbg !2328
  br i1 %cmp, label %if.then, label %if.end, !dbg !2329

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2330
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2330

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dom_iter, align 8, !dbg !2331
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %2, i32 0, i32 1, !dbg !2333
  %type = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def, i32 0, i32 0, !dbg !2334
  %3 = load i32, ptr %type, align 8, !dbg !2334
  %cmp1 = icmp ne i32 %3, 6, !dbg !2335
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !2336

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %dom_iter, align 8, !dbg !2337
  %def3 = getelementptr inbounds %struct.netlbl_dom_map, ptr %4, i32 0, i32 1, !dbg !2338
  store ptr %def3, ptr %retval, align 8, !dbg !2339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2339

if.end4:                                          ; preds = %if.end
  %5 = load i32, ptr %addr.addr, align 4, !dbg !2340
  %6 = load ptr, ptr %dom_iter, align 8, !dbg !2341
  %def5 = getelementptr inbounds %struct.netlbl_dom_map, ptr %6, i32 0, i32 1, !dbg !2342
  %7 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def5, i32 0, i32 1, !dbg !2343
  %8 = load ptr, ptr %7, align 8, !dbg !2343
  %list4 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %8, i32 0, i32 0, !dbg !2344
  %call6 = call ptr @netlbl_af4list_search(i32 noundef %5, ptr noundef %list4) #18, !dbg !2345
  store ptr %call6, ptr %addr_iter, align 8, !dbg !2346
  %9 = load ptr, ptr %addr_iter, align 8, !dbg !2347
  %cmp7 = icmp eq ptr %9, null, !dbg !2349
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2350

if.then8:                                         ; preds = %if.end4
  store ptr null, ptr %retval, align 8, !dbg !2351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2351

if.end9:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2352
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2315, metadata !DIExpression()), !dbg !2352
  %10 = load ptr, ptr %addr_iter, align 8, !dbg !2352
  store ptr %10, ptr %__mptr, align 8, !dbg !2352
  %11 = load ptr, ptr %__mptr, align 8, !dbg !2352
  %add.ptr = getelementptr i8, ptr %11, i64 -16, !dbg !2352
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2352
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2353
  %12 = load ptr, ptr %tmp, align 8, !dbg !2352
  %def10 = getelementptr inbounds %struct.netlbl_domaddr4_map, ptr %12, i32 0, i32 0, !dbg !2354
  store ptr %def10, ptr %retval, align 8, !dbg !2355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2355

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr_iter) #15, !dbg !2356
  call void @llvm.lifetime.end.p0(i64 8, ptr %dom_iter) #15, !dbg !2356
  %13 = load ptr, ptr %retval, align 8, !dbg !2356
  ret ptr %13, !dbg !2356
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2357 dso_local ptr @netlbl_af4list_search(i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @netlbl_domhsh_getentry_af6(ptr noundef %domain, ptr noundef %addr) #8 align 16 !dbg !2360 {
entry:
  %retval = alloca ptr, align 8
  %domain.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %dom_iter = alloca ptr, align 8
  %addr_iter = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !2364, metadata !DIExpression()), !dbg !2370
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2365, metadata !DIExpression()), !dbg !2371
  call void @llvm.lifetime.start.p0(i64 8, ptr %dom_iter) #15, !dbg !2372
  call void @llvm.dbg.declare(metadata ptr %dom_iter, metadata !2366, metadata !DIExpression()), !dbg !2373
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr_iter) #15, !dbg !2374
  call void @llvm.dbg.declare(metadata ptr %addr_iter, metadata !2367, metadata !DIExpression()), !dbg !2375
  %0 = load ptr, ptr %domain.addr, align 8, !dbg !2376
  %call = call ptr @netlbl_domhsh_search_def(ptr noundef %0, i16 noundef zeroext 10) #18, !dbg !2377
  store ptr %call, ptr %dom_iter, align 8, !dbg !2378
  %1 = load ptr, ptr %dom_iter, align 8, !dbg !2379
  %cmp = icmp eq ptr %1, null, !dbg !2381
  br i1 %cmp, label %if.then, label %if.end, !dbg !2382

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2383

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dom_iter, align 8, !dbg !2384
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %2, i32 0, i32 1, !dbg !2386
  %type = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def, i32 0, i32 0, !dbg !2387
  %3 = load i32, ptr %type, align 8, !dbg !2387
  %cmp1 = icmp ne i32 %3, 6, !dbg !2388
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !2389

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %dom_iter, align 8, !dbg !2390
  %def3 = getelementptr inbounds %struct.netlbl_dom_map, ptr %4, i32 0, i32 1, !dbg !2391
  store ptr %def3, ptr %retval, align 8, !dbg !2392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2392

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2393
  %6 = load ptr, ptr %dom_iter, align 8, !dbg !2394
  %def5 = getelementptr inbounds %struct.netlbl_dom_map, ptr %6, i32 0, i32 1, !dbg !2395
  %7 = getelementptr inbounds %struct.netlbl_dommap_def, ptr %def5, i32 0, i32 1, !dbg !2396
  %8 = load ptr, ptr %7, align 8, !dbg !2396
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %8, i32 0, i32 1, !dbg !2397
  %call6 = call ptr @netlbl_af6list_search(ptr noundef %5, ptr noundef %list6) #18, !dbg !2398
  store ptr %call6, ptr %addr_iter, align 8, !dbg !2399
  %9 = load ptr, ptr %addr_iter, align 8, !dbg !2400
  %cmp7 = icmp eq ptr %9, null, !dbg !2402
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2403

if.then8:                                         ; preds = %if.end4
  store ptr null, ptr %retval, align 8, !dbg !2404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2404

if.end9:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2405
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2368, metadata !DIExpression()), !dbg !2405
  %10 = load ptr, ptr %addr_iter, align 8, !dbg !2405
  store ptr %10, ptr %__mptr, align 8, !dbg !2405
  %11 = load ptr, ptr %__mptr, align 8, !dbg !2405
  %add.ptr = getelementptr i8, ptr %11, i64 -16, !dbg !2405
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2405
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2406
  %12 = load ptr, ptr %tmp, align 8, !dbg !2405
  %def10 = getelementptr inbounds %struct.netlbl_domaddr6_map, ptr %12, i32 0, i32 0, !dbg !2407
  store ptr %def10, ptr %retval, align 8, !dbg !2408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2408

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr_iter) #15, !dbg !2409
  call void @llvm.lifetime.end.p0(i64 8, ptr %dom_iter) #15, !dbg !2409
  %13 = load ptr, ptr %retval, align 8, !dbg !2409
  ret ptr %13, !dbg !2409
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2410 dso_local ptr @netlbl_af6list_search(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlbl_domhsh_walk(ptr noundef %skip_bkt, ptr noundef %skip_chain, ptr noundef %callback, ptr noundef %cb_arg) #8 align 16 !dbg !2413 {
entry:
  %skip_bkt.addr = alloca ptr, align 8
  %skip_chain.addr = alloca ptr, align 8
  %callback.addr = alloca ptr, align 8
  %cb_arg.addr = alloca ptr, align 8
  %ret_val = alloca i32, align 4
  %iter_bkt = alloca i32, align 4
  %iter_list = alloca ptr, align 8
  %iter_entry = alloca ptr, align 8
  %chain_cnt = alloca i32, align 4
  %__UNIQUE_ID_rcu581 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__UNIQUE_ID_rcu583 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__mptr27 = alloca ptr, align 8
  %tmp31 = alloca ptr, align 8
  %tmp34 = alloca ptr, align 8
  store ptr %skip_bkt, ptr %skip_bkt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skip_bkt.addr, metadata !2420, metadata !DIExpression()), !dbg !2443
  store ptr %skip_chain, ptr %skip_chain.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skip_chain.addr, metadata !2421, metadata !DIExpression()), !dbg !2444
  store ptr %callback, ptr %callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callback.addr, metadata !2422, metadata !DIExpression()), !dbg !2445
  store ptr %cb_arg, ptr %cb_arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cb_arg.addr, metadata !2423, metadata !DIExpression()), !dbg !2446
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_val) #15, !dbg !2447
  call void @llvm.dbg.declare(metadata ptr %ret_val, metadata !2424, metadata !DIExpression()), !dbg !2448
  store i32 -2, ptr %ret_val, align 4, !dbg !2448
  call void @llvm.lifetime.start.p0(i64 4, ptr %iter_bkt) #15, !dbg !2449
  call void @llvm.dbg.declare(metadata ptr %iter_bkt, metadata !2425, metadata !DIExpression()), !dbg !2450
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter_list) #15, !dbg !2451
  call void @llvm.dbg.declare(metadata ptr %iter_list, metadata !2426, metadata !DIExpression()), !dbg !2452
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter_entry) #15, !dbg !2453
  call void @llvm.dbg.declare(metadata ptr %iter_entry, metadata !2427, metadata !DIExpression()), !dbg !2454
  call void @llvm.lifetime.start.p0(i64 4, ptr %chain_cnt) #15, !dbg !2455
  call void @llvm.dbg.declare(metadata ptr %chain_cnt, metadata !2428, metadata !DIExpression()), !dbg !2456
  store i32 0, ptr %chain_cnt, align 4, !dbg !2456
  call void @rcu_read_lock() #18, !dbg !2457
  %0 = load ptr, ptr %skip_bkt.addr, align 8, !dbg !2458
  %1 = load i32, ptr %0, align 4, !dbg !2459
  store i32 %1, ptr %iter_bkt, align 4, !dbg !2460
  br label %for.cond, !dbg !2461

for.cond:                                         ; preds = %for.inc36, %entry
  %2 = load i32, ptr %iter_bkt, align 4, !dbg !2462
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu581) #15, !dbg !2463
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu581, metadata !2429, metadata !DIExpression()), !dbg !2463
  br label %do.body, !dbg !2464

do.body:                                          ; preds = %for.cond
  br label %do.cond, !dbg !2466

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2466

do.end:                                           ; preds = %do.cond
  %3 = load volatile ptr, ptr @netlbl_domhsh, align 8, !dbg !2464
  store ptr %3, ptr %tmp, align 8, !dbg !2466
  %4 = load ptr, ptr %tmp, align 8, !dbg !2464
  store ptr %4, ptr %__UNIQUE_ID_rcu581, align 8, !dbg !2463
  br label %do.body1, !dbg !2463

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !2468

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !2468

do.end3:                                          ; preds = %do.cond2
  %5 = load ptr, ptr %__UNIQUE_ID_rcu581, align 8, !dbg !2463
  store ptr %5, ptr %tmp4, align 8, !dbg !2468
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu581) #15, !dbg !2470
  %6 = load ptr, ptr %tmp4, align 8, !dbg !2463
  %size = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %6, i32 0, i32 1, !dbg !2471
  %7 = load i32, ptr %size, align 8, !dbg !2471
  %cmp = icmp ult i32 %2, %7, !dbg !2472
  br i1 %cmp, label %for.body, label %for.end38, !dbg !2473

for.body:                                         ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu583) #15, !dbg !2474
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu583, metadata !2433, metadata !DIExpression()), !dbg !2474
  br label %do.body5, !dbg !2475

do.body5:                                         ; preds = %for.body
  br label %do.cond6, !dbg !2477

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2477

do.end7:                                          ; preds = %do.cond6
  %8 = load volatile ptr, ptr @netlbl_domhsh, align 8, !dbg !2475
  store ptr %8, ptr %tmp8, align 8, !dbg !2477
  %9 = load ptr, ptr %tmp8, align 8, !dbg !2475
  store ptr %9, ptr %__UNIQUE_ID_rcu583, align 8, !dbg !2474
  br label %do.body9, !dbg !2474

do.body9:                                         ; preds = %do.end7
  br label %do.cond10, !dbg !2479

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2479

do.end11:                                         ; preds = %do.cond10
  %10 = load ptr, ptr %__UNIQUE_ID_rcu583, align 8, !dbg !2474
  store ptr %10, ptr %tmp12, align 8, !dbg !2479
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu583) #15, !dbg !2481
  %11 = load ptr, ptr %tmp12, align 8, !dbg !2474
  %tbl = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %11, i32 0, i32 0, !dbg !2482
  %12 = load ptr, ptr %tbl, align 8, !dbg !2482
  %13 = load i32, ptr %iter_bkt, align 4, !dbg !2483
  %idxprom = zext i32 %13 to i64, !dbg !2481
  %arrayidx = getelementptr %struct.list_head, ptr %12, i64 %idxprom, !dbg !2481
  store ptr %arrayidx, ptr %iter_list, align 8, !dbg !2484
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2485
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2436, metadata !DIExpression()), !dbg !2485
  br label %do.body13, !dbg !2486

do.body13:                                        ; preds = %do.end11
  br label %do.cond14, !dbg !2488

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !2488

do.end15:                                         ; preds = %do.cond14
  %14 = load ptr, ptr %iter_list, align 8, !dbg !2486
  %next = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 0, !dbg !2486
  %15 = load volatile ptr, ptr %next, align 8, !dbg !2486
  store ptr %15, ptr %tmp16, align 8, !dbg !2488
  %16 = load ptr, ptr %tmp16, align 8, !dbg !2486
  store ptr %16, ptr %__mptr, align 8, !dbg !2485
  %17 = load ptr, ptr %__mptr, align 8, !dbg !2485
  %add.ptr = getelementptr i8, ptr %17, i64 -32, !dbg !2485
  store ptr %add.ptr, ptr %tmp17, align 8, !dbg !2485
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2490
  %18 = load ptr, ptr %tmp17, align 8, !dbg !2485
  store ptr %18, ptr %iter_entry, align 8, !dbg !2490
  br label %for.cond18, !dbg !2490

for.cond18:                                       ; preds = %do.end30, %do.end15
  %19 = load ptr, ptr %iter_entry, align 8, !dbg !2491
  %list = getelementptr inbounds %struct.netlbl_dom_map, ptr %19, i32 0, i32 4, !dbg !2491
  %20 = load ptr, ptr %iter_list, align 8, !dbg !2491
  %cmp19 = icmp ne ptr %list, %20, !dbg !2491
  br i1 %cmp19, label %for.body20, label %for.end, !dbg !2490

for.body20:                                       ; preds = %for.cond18
  %21 = load ptr, ptr %iter_entry, align 8, !dbg !2492
  %valid = getelementptr inbounds %struct.netlbl_dom_map, ptr %21, i32 0, i32 3, !dbg !2494
  %22 = load i32, ptr %valid, align 4, !dbg !2494
  %tobool = icmp ne i32 %22, 0, !dbg !2492
  br i1 %tobool, label %if.then, label %if.end26, !dbg !2495

if.then:                                          ; preds = %for.body20
  %23 = load i32, ptr %chain_cnt, align 4, !dbg !2496
  %inc = add i32 %23, 1, !dbg !2496
  store i32 %inc, ptr %chain_cnt, align 4, !dbg !2496
  %24 = load ptr, ptr %skip_chain.addr, align 8, !dbg !2499
  %25 = load i32, ptr %24, align 4, !dbg !2500
  %cmp21 = icmp ult i32 %23, %25, !dbg !2501
  br i1 %cmp21, label %if.then22, label %if.end, !dbg !2502

if.then22:                                        ; preds = %if.then
  br label %for.inc, !dbg !2503

if.end:                                           ; preds = %if.then
  %26 = load ptr, ptr %callback.addr, align 8, !dbg !2504
  %27 = load ptr, ptr %iter_entry, align 8, !dbg !2505
  %28 = load ptr, ptr %cb_arg.addr, align 8, !dbg !2506
  %call = call i32 %26(ptr noundef %27, ptr noundef %28) #18, !dbg !2504
  store i32 %call, ptr %ret_val, align 4, !dbg !2507
  %29 = load i32, ptr %ret_val, align 4, !dbg !2508
  %cmp23 = icmp slt i32 %29, 0, !dbg !2510
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !2511

if.then24:                                        ; preds = %if.end
  %30 = load i32, ptr %chain_cnt, align 4, !dbg !2512
  %dec = add i32 %30, -1, !dbg !2512
  store i32 %dec, ptr %chain_cnt, align 4, !dbg !2512
  br label %walk_return, !dbg !2514

if.end25:                                         ; preds = %if.end
  br label %if.end26, !dbg !2515

if.end26:                                         ; preds = %if.end25, %for.body20
  br label %for.inc, !dbg !2494

for.inc:                                          ; preds = %if.end26, %if.then22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr27) #15, !dbg !2516
  call void @llvm.dbg.declare(metadata ptr %__mptr27, metadata !2439, metadata !DIExpression()), !dbg !2516
  br label %do.body28, !dbg !2517

do.body28:                                        ; preds = %for.inc
  br label %do.cond29, !dbg !2519

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !2519

do.end30:                                         ; preds = %do.cond29
  %31 = load ptr, ptr %iter_entry, align 8, !dbg !2517
  %list32 = getelementptr inbounds %struct.netlbl_dom_map, ptr %31, i32 0, i32 4, !dbg !2517
  %next33 = getelementptr inbounds %struct.list_head, ptr %list32, i32 0, i32 0, !dbg !2517
  %32 = load volatile ptr, ptr %next33, align 8, !dbg !2517
  store ptr %32, ptr %tmp31, align 8, !dbg !2519
  %33 = load ptr, ptr %tmp31, align 8, !dbg !2517
  store ptr %33, ptr %__mptr27, align 8, !dbg !2516
  %34 = load ptr, ptr %__mptr27, align 8, !dbg !2516
  %add.ptr35 = getelementptr i8, ptr %34, i64 -32, !dbg !2516
  store ptr %add.ptr35, ptr %tmp34, align 8, !dbg !2516
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr27) #15, !dbg !2491
  %35 = load ptr, ptr %tmp34, align 8, !dbg !2516
  store ptr %35, ptr %iter_entry, align 8, !dbg !2491
  br label %for.cond18, !dbg !2491, !llvm.loop !2521

for.end:                                          ; preds = %for.cond18
  br label %for.inc36, !dbg !2523

for.inc36:                                        ; preds = %for.end
  %36 = load i32, ptr %iter_bkt, align 4, !dbg !2524
  %inc37 = add i32 %36, 1, !dbg !2524
  store i32 %inc37, ptr %iter_bkt, align 4, !dbg !2524
  store i32 0, ptr %chain_cnt, align 4, !dbg !2525
  br label %for.cond, !dbg !2526, !llvm.loop !2527

for.end38:                                        ; preds = %do.end3
  br label %walk_return, !dbg !2528

walk_return:                                      ; preds = %for.end38, %if.then24
  call void @llvm.dbg.label(metadata !2442), !dbg !2529
  call void @rcu_read_unlock() #18, !dbg !2530
  %37 = load i32, ptr %iter_bkt, align 4, !dbg !2531
  %38 = load ptr, ptr %skip_bkt.addr, align 8, !dbg !2532
  store i32 %37, ptr %38, align 4, !dbg !2533
  %39 = load i32, ptr %chain_cnt, align 4, !dbg !2534
  %40 = load ptr, ptr %skip_chain.addr, align 8, !dbg !2535
  store i32 %39, ptr %40, align 4, !dbg !2536
  %41 = load i32, ptr %ret_val, align 4, !dbg !2537
  call void @llvm.lifetime.end.p0(i64 4, ptr %chain_cnt) #15, !dbg !2538
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter_entry) #15, !dbg !2538
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter_list) #15, !dbg !2538
  call void @llvm.lifetime.end.p0(i64 4, ptr %iter_bkt) #15, !dbg !2538
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_val) #15, !dbg !2538
  ret i32 %41, !dbg !2539
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2540 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !2541 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2547, metadata !DIExpression()), !dbg !2549
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2548, metadata !DIExpression()), !dbg !2550
  %0 = load i64, ptr %size.addr, align 8, !dbg !2551
  %tobool = icmp ne i64 %0, 0, !dbg !2551
  br i1 %tobool, label %if.end, label %if.then, !dbg !2553

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2554
  br label %return, !dbg !2554

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2555
  %cmp = icmp ule i64 %1, 8, !dbg !2557
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2558

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2559
  br label %return, !dbg !2559

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2560
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2562
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2563

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2564
  %cmp4 = icmp ule i64 %3, 96, !dbg !2565
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2566

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2567
  br label %return, !dbg !2567

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2568
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2570
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2571

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2572
  %cmp9 = icmp ule i64 %5, 192, !dbg !2573
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2574

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2575
  br label %return, !dbg !2575

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2576
  %cmp12 = icmp ule i64 %6, 8, !dbg !2578
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2579

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2580
  br label %return, !dbg !2580

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2581
  %cmp15 = icmp ule i64 %7, 16, !dbg !2583
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2584

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2585
  br label %return, !dbg !2585

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2586
  %cmp18 = icmp ule i64 %8, 32, !dbg !2588
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2589

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2590
  br label %return, !dbg !2590

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2591
  %cmp21 = icmp ule i64 %9, 64, !dbg !2593
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2594

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2595
  br label %return, !dbg !2595

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2596
  %cmp24 = icmp ule i64 %10, 128, !dbg !2598
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2599

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2600
  br label %return, !dbg !2600

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2601
  %cmp27 = icmp ule i64 %11, 256, !dbg !2603
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2604

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2605
  br label %return, !dbg !2605

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2606
  %cmp30 = icmp ule i64 %12, 512, !dbg !2608
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2609

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2610
  br label %return, !dbg !2610

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2611
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2613
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2614

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2615
  br label %return, !dbg !2615

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2616
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2618
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2619

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2620
  br label %return, !dbg !2620

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2621
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2623
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2624

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2625
  br label %return, !dbg !2625

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2626
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2628
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2629

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2630
  br label %return, !dbg !2630

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2631
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2633
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2634

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2635
  br label %return, !dbg !2635

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2636
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2638
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2639

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2640
  br label %return, !dbg !2640

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2641
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2643
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2644

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2645
  br label %return, !dbg !2645

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2646
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2648
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2649

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2650
  br label %return, !dbg !2650

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2651
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2653
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2654

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2655
  br label %return, !dbg !2655

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2656
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2658
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2659

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2660
  br label %return, !dbg !2660

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2661
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2663
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2664

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2665
  br label %return, !dbg !2665

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2666
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2668
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2669

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2670
  br label %return, !dbg !2670

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2671, !range !2673, !noundef !2674
  %tobool69 = trunc i8 %25 to i1, !dbg !2671
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2675

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2676

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #20, !dbg !2677, !srcloc !2680
  unreachable, !dbg !2677

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2681

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2682

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2683

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2685

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2683

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #15, !dbg !2687, !srcloc !2689
  br label %do.end75, !dbg !2687

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2683

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2690
  br label %return, !dbg !2690

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2691
  ret i32 %26, !dbg !2691
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2692 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !2698 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2702, metadata !DIExpression()), !dbg !2704
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2703, metadata !DIExpression()), !dbg !2705
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2706
  %and = and i32 %0, 17, !dbg !2706
  %cmp = icmp eq i32 %and, 0, !dbg !2706
  %lnot = xor i1 %cmp, true, !dbg !2706
  %lnot1 = xor i1 %lnot, true, !dbg !2706
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2706
  %conv = sext i32 %lnot.ext to i64, !dbg !2706
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2706
  %tobool = icmp ne i64 %expval, 0, !dbg !2706
  br i1 %tobool, label %if.then, label %if.end, !dbg !2708

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2709
  br label %return, !dbg !2709

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2710
  %and2 = and i32 %1, 1, !dbg !2712
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2712
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2713

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2714
  br label %return, !dbg !2714

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2715
  br label %return, !dbg !2715

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2717
  ret i32 %2, !dbg !2717
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2718 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2719 dso_local void @__compiletime_assert_245() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !2720 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2722, metadata !DIExpression()), !dbg !2726
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2723, metadata !DIExpression()), !dbg !2727
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2724, metadata !DIExpression()), !dbg !2728
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !2729
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2725, metadata !DIExpression()), !dbg !2730
  %0 = load i64, ptr %n.addr, align 8, !dbg !2731
  %1 = load i64, ptr %size.addr, align 8, !dbg !2731
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !2731
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !2731
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !2731
  store i64 %4, ptr %bytes, align 8, !dbg !2731
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !2731
  %lnot = xor i1 %call, true, !dbg !2731
  %lnot1 = xor i1 %lnot, true, !dbg !2731
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2731
  %conv = sext i32 %lnot.ext to i64, !dbg !2731
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2731
  %tobool = icmp ne i64 %expval, 0, !dbg !2731
  br i1 %tobool, label %if.then, label %if.end, !dbg !2733

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2734

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !2735
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !2737
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !2738

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !2739
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2740
  br i1 %8, label %if.then2, label %if.end4, !dbg !2741

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !2742
  %10 = load i32, ptr %flags.addr, align 4, !dbg !2743
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #16, !dbg !2744
  store ptr %call3, ptr %retval, align 8, !dbg !2745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2745

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !2746
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2747
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #16, !dbg !2748
  store ptr %call5, ptr %retval, align 8, !dbg !2749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2749

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !2750
  %13 = load ptr, ptr %retval, align 8, !dbg !2750
  ret ptr %13, !dbg !2750
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #6 align 16 !dbg !2751 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !2756, metadata !DIExpression()), !dbg !2757
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !2758, !range !2673, !noundef !2674
  %tobool = trunc i8 %0 to i1, !dbg !2758
  %lnot = xor i1 %tobool, true, !dbg !2758
  %lnot1 = xor i1 %lnot, true, !dbg !2758
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2758
  %conv = sext i32 %lnot.ext to i64, !dbg !2758
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2758
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2758
  ret i1 %tobool2, !dbg !2759
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2760 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2766 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2767 dso_local void @__rcu_read_lock() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @netlbl_family_match(i16 noundef zeroext %f1, i16 noundef zeroext %f2) #8 align 16 !dbg !2768 {
entry:
  %f1.addr = alloca i16, align 2
  %f2.addr = alloca i16, align 2
  store i16 %f1, ptr %f1.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %f1.addr, metadata !2772, metadata !DIExpression()), !dbg !2774
  store i16 %f2, ptr %f2.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %f2.addr, metadata !2773, metadata !DIExpression()), !dbg !2775
  %0 = load i16, ptr %f1.addr, align 2, !dbg !2776
  %conv = zext i16 %0 to i32, !dbg !2776
  %1 = load i16, ptr %f2.addr, align 2, !dbg !2777
  %conv1 = zext i16 %1 to i32, !dbg !2777
  %cmp = icmp eq i32 %conv, %conv1, !dbg !2778
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !2779

lor.lhs.false:                                    ; preds = %entry
  %2 = load i16, ptr %f1.addr, align 2, !dbg !2780
  %conv3 = zext i16 %2 to i32, !dbg !2780
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !2781
  br i1 %cmp4, label %lor.end, label %lor.rhs, !dbg !2782

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load i16, ptr %f2.addr, align 2, !dbg !2783
  %conv6 = zext i16 %3 to i32, !dbg !2783
  %cmp7 = icmp eq i32 %conv6, 0, !dbg !2784
  br label %lor.end, !dbg !2782

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp7, %lor.rhs ]
  ret i1 %4, !dbg !2785
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2786 dso_local i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2790 dso_local i64 @strlen(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add_rcu(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !2793 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2797, metadata !DIExpression()), !dbg !2802
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2798, metadata !DIExpression()), !dbg !2803
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2799, metadata !DIExpression()), !dbg !2804
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2805
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !2807
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2808
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !2809
  br i1 %call, label %if.end, label %if.then, !dbg !2810

if.then:                                          ; preds = %entry
  br label %return, !dbg !2811

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %next.addr, align 8, !dbg !2812
  %4 = load ptr, ptr %new.addr, align 8, !dbg !2813
  %next1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !2814
  store ptr %3, ptr %next1, align 8, !dbg !2815
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !2816
  %6 = load ptr, ptr %new.addr, align 8, !dbg !2817
  %prev2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1, !dbg !2818
  store ptr %5, ptr %prev2, align 8, !dbg !2819
  br label %do.body, !dbg !2820

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #15, !dbg !2821
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !2800, metadata !DIExpression()), !dbg !2821
  %7 = load ptr, ptr %new.addr, align 8, !dbg !2821
  %8 = ptrtoint ptr %7 to i64, !dbg !2821
  store i64 %8, ptr %_r_a_p__v, align 8, !dbg !2821
  br i1 false, label %land.lhs.true, label %if.else, !dbg !2822

land.lhs.true:                                    ; preds = %do.body
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !2822
  %cmp = icmp eq i64 %9, 0, !dbg !2822
  br i1 %cmp, label %if.then3, label %if.else, !dbg !2821

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4, !dbg !2822

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !2824

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !2826

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !2826

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !2824

do.body6:                                         ; preds = %do.end
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !2828
  %11 = inttoptr i64 %10 to ptr, !dbg !2828
  %12 = load ptr, ptr %prev.addr, align 8, !dbg !2828
  %next7 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !2828
  store volatile ptr %11, ptr %next7, align 8, !dbg !2828
  br label %do.cond8, !dbg !2828

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !2828

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !2824

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !2824

do.end11:                                         ; preds = %do.cond10
  br label %if.end34, !dbg !2824

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body12, !dbg !2822

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !2830

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !2832

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !2832

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !2830

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !2834

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !2836

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2836

do.end19:                                         ; preds = %do.cond18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !2834, !srcloc !2838
  br label %do.body20, !dbg !2834

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !2839

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !2841

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !2841

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !2839

do.body24:                                        ; preds = %do.end23
  %13 = load i64, ptr %_r_a_p__v, align 8, !dbg !2843
  %14 = inttoptr i64 %13 to ptr, !dbg !2843
  %15 = load ptr, ptr %prev.addr, align 8, !dbg !2843
  %next25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !2843
  store volatile ptr %14, ptr %next25, align 8, !dbg !2843
  br label %do.cond26, !dbg !2843

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !2843

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !2839

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !2839

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !2834

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !2834

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !2830

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !2830

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #15, !dbg !2820
  br label %do.end36, !dbg !2821

do.end36:                                         ; preds = %if.end34
  %16 = load ptr, ptr %new.addr, align 8, !dbg !2845
  %17 = load ptr, ptr %next.addr, align 8, !dbg !2846
  %prev37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1, !dbg !2847
  store ptr %16, ptr %prev37, align 8, !dbg !2848
  br label %return, !dbg !2849

return:                                           ; preds = %do.end36, %if.then
  ret void, !dbg !2849
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !2850 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2854, metadata !DIExpression()), !dbg !2857
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2855, metadata !DIExpression()), !dbg !2858
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2856, metadata !DIExpression()), !dbg !2859
  ret i1 true, !dbg !2860
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2861 dso_local void @netlbl_af4list_audit_addr(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2864 dso_local void @netlbl_af6list_audit_addr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2867 dso_local void @__rcu_read_unlock() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !2868 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2872
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !2874
  br i1 %call, label %if.end, label %if.then, !dbg !2875

if.then:                                          ; preds = %entry
  br label %return, !dbg !2876

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2877
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2878
  %2 = load ptr, ptr %prev, align 8, !dbg !2878
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !2879
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2880
  %4 = load ptr, ptr %next, align 8, !dbg !2880
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !2881
  br label %return, !dbg !2882

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2882
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !2883 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2887, metadata !DIExpression()), !dbg !2888
  ret i1 true, !dbg !2889
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !2890 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2892, metadata !DIExpression()), !dbg !2894
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2893, metadata !DIExpression()), !dbg !2895
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !2896
  %1 = load ptr, ptr %next.addr, align 8, !dbg !2897
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2898
  store ptr %0, ptr %prev1, align 8, !dbg !2899
  br label %do.body, !dbg !2900

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2901

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !2903

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !2901

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2905
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !2905
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2905
  store volatile ptr %2, ptr %next4, align 8, !dbg !2905
  br label %do.end5, !dbg !2905

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !2901

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !2907
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(0,1) }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!269, !270, !271, !272, !273, !274, !275, !276}
!llvm.ident = !{!277}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "netlbl_domhsh_lock", scope: !2, file: !3, line: 43, type: !239, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/netlabel/.netlabel_domainhash.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/netlabel/netlabel_domainhash\22 -D KBUILD_BASENAME=\22netlabel_domainhash\22 -D KBUILD_MODNAME=\22netlabel_domainhash\22 -D __KBUILD_MODNAME=kmod_netlabel_domainhash -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/netlabel/netlabel_domainhash.ll net/netlabel/netlabel_domainhash.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !194, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/netlabel/netlabel_domainhash.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60a7c9e2fa6d77273460e845ef097056")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !{!22, !24, !25, !27, !41, !43, !45, !139, !141, !143, !157, !187, !26, !190, !31, !191, !192, !193}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !23, line: 154, baseType: !7)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !23, line: 42, baseType: !26)
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_domhsh_tbl", file: !3, line: 35, size: 128, elements: !29)
!29 = !{!30, !36}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !28, file: !3, line: 36, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !23, line: 190, size: 128, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !32, file: !23, line: 191, baseType: !31, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !32, file: !23, line: 191, baseType: !31, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !28, file: !3, line: 37, baseType: !37, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !38, line: 21, baseType: !39)
!38 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !40, line: 27, baseType: !7)
!40 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_dom_map", file: !47, line: 58, size: 512, elements: !48)
!47 = !DIFile(filename: "net/netlabel/netlabel_domainhash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58b7bc143bc380b07aaa3401a1ff2e14")
!48 = !{!49, !52, !132, !136, !137, !138}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !46, file: !47, line: 59, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !46, file: !47, line: 60, baseType: !53, size: 128, offset: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_dommap_def", file: !47, line: 35, size: 128, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !47, line: 36, baseType: !37, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, scope: !53, file: !47, line: 37, baseType: !57, size: 64, offset: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !53, file: !47, line: 37, size: 64, elements: !58)
!58 = !{!59, !65, !122}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "addrsel", scope: !57, file: !47, line: 38, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_domaddr_map", file: !47, line: 31, size: 256, elements: !62)
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "list4", scope: !61, file: !47, line: 32, baseType: !32, size: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "list6", scope: !61, file: !47, line: 33, baseType: !32, size: 128, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "cipso", scope: !57, file: !47, line: 39, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipso_v4_doi", file: !68, line: 67, size: 512, elements: !69)
!68 = !DIFile(filename: "./include/net/cipso_ipv4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "94f560ec9c1d8a6c7e6cfe794701452d")
!69 = !{!70, !71, !72, !94, !101, !112, !113}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "doi", scope: !67, file: !68, line: 68, baseType: !37, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !68, line: 69, baseType: !37, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !67, file: !68, line: 72, baseType: !73, size: 64, offset: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !68, line: 70, size: 64, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !73, file: !68, line: 71, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipso_v4_std_map_tbl", file: !68, line: 84, size: 384, elements: !78)
!78 = !{!79, !87}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "lvl", scope: !77, file: !68, line: 90, baseType: !80, size: 192)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !68, line: 85, size: 192, elements: !81)
!81 = !{!82, !84, !85, !86}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "cipso", scope: !80, file: !68, line: 86, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !80, file: !68, line: 87, baseType: !83, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "cipso_size", scope: !80, file: !68, line: 88, baseType: !37, size: 32, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "local_size", scope: !80, file: !68, line: 89, baseType: !37, size: 32, offset: 160)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "cat", scope: !77, file: !68, line: 96, baseType: !88, size: 192, offset: 192)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !68, line: 91, size: 192, elements: !89)
!89 = !{!90, !91, !92, !93}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "cipso", scope: !88, file: !68, line: 92, baseType: !83, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !88, file: !68, line: 93, baseType: !83, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "cipso_size", scope: !88, file: !68, line: 94, baseType: !37, size: 32, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "local_size", scope: !88, file: !68, line: 95, baseType: !37, size: 32, offset: 160)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !67, file: !68, line: 73, baseType: !95, size: 40, offset: 128)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 40, elements: !99)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !38, line: 17, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !40, line: 21, baseType: !98)
!98 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!99 = !{!100}
!100 = !DISubrange(count: 5)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !67, file: !68, line: 75, baseType: !102, size: 32, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !103, line: 113, baseType: !104)
!103 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !103, line: 111, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !104, file: !103, line: 112, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !23, line: 174, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 172, size: 32, elements: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !108, file: !23, line: 173, baseType: !111, size: 32)
!111 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !67, file: !68, line: 76, baseType: !32, size: 128, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !67, file: !68, line: 77, baseType: !114, size: 128, align: 64, offset: 384)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !23, line: 232, size: 128, align: 64, elements: !115)
!115 = !{!116, !118}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !23, line: 233, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !114, file: !23, line: 234, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !117}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "calipso", scope: !57, file: !47, line: 40, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "calipso_doi", file: !125, line: 42, size: 384, elements: !126)
!125 = !DIFile(filename: "./include/net/calipso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4b6061124e5dfd1dcbc17fc160dcbaf3")
!126 = !{!127, !128, !129, !130, !131}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "doi", scope: !124, file: !125, line: 43, baseType: !37, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !125, line: 44, baseType: !37, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !124, file: !125, line: 46, baseType: !102, size: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !124, file: !125, line: 47, baseType: !32, size: 128, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !124, file: !125, line: 48, baseType: !114, size: 128, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !46, file: !47, line: 61, baseType: !133, size: 16, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !38, line: 19, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !40, line: 24, baseType: !135)
!135 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !46, file: !47, line: 63, baseType: !37, size: 32, offset: 224)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !46, file: !47, line: 64, baseType: !32, size: 128, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !46, file: !47, line: 65, baseType: !114, size: 128, align: 64, offset: 384)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_domaddr4_map", file: !47, line: 45, size: 384, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !144, file: !47, line: 46, baseType: !53, size: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !144, file: !47, line: 48, baseType: !148, size: 256, offset: 128)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_af4list", file: !149, line: 33, size: 256, elements: !150)
!149 = !DIFile(filename: "net/netlabel/netlabel_addrlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37c4d29795db6150a5fcd41fadb25f4c")
!150 = !{!151, !154, !155, !156}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !148, file: !149, line: 34, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !153, line: 39, baseType: !39)
!153 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !148, file: !149, line: 35, baseType: !152, size: 32, offset: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !148, file: !149, line: 37, baseType: !37, size: 32, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !148, file: !149, line: 38, baseType: !32, size: 128, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_domaddr6_map", file: !47, line: 52, size: 576, elements: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !158, file: !47, line: 53, baseType: !53, size: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !158, file: !47, line: 55, baseType: !162, size: 448, offset: 128)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_af6list", file: !149, line: 48, size: 448, elements: !163)
!163 = !{!164, !184, !185, !186}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !162, file: !149, line: 49, baseType: !165, size: 128)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !166, line: 33, size: 128, elements: !167)
!166 = !DIFile(filename: "./include/uapi/linux/in6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11968d76cd940ab2457ae2228c519d4f")
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !165, file: !166, line: 40, baseType: !169, size: 128)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !165, file: !166, line: 34, size: 128, elements: !170)
!170 = !{!171, !175, !180}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !169, file: !166, line: 35, baseType: !172, size: 128)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 16)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !169, file: !166, line: 37, baseType: !176, size: 128)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 128, elements: !178)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !153, line: 37, baseType: !134)
!178 = !{!179}
!179 = !DISubrange(count: 8)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !169, file: !166, line: 38, baseType: !181, size: 128)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 4)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !162, file: !149, line: 50, baseType: !165, size: 128, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !162, file: !149, line: 52, baseType: !37, size: 32, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !162, file: !149, line: 53, baseType: !32, size: 128, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!194 = !{!195, !200, !205, !207, !209, !211, !0, !216, !219, !221, !226, !231, !236}
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !3, line: 615, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 176, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 22)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 616, type: !202, isLocal: true, isDefinition: true)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 80, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 10)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "netlbl_domhsh", scope: !2, file: !3, line: 46, type: !27, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "netlbl_domhsh_def_ipv4", scope: !2, file: !3, line: 47, type: !45, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "netlbl_domhsh_def_ipv6", scope: !2, file: !3, line: 48, type: !45, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 168, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 21)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !3, line: 221, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !173)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !213, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !3, line: 249, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 280, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 35)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 251, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 288, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 36)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 257, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 304, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 38)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 261, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !178)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !240, line: 29, baseType: !241)
!240 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !240, line: 17, size: 32, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !240, line: 18, baseType: !244, size: 32)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !240, line: 18, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !244, file: !240, line: 19, baseType: !247, size: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !248, line: 14, size: 32, elements: !249)
!248 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !247, file: !248, line: 15, baseType: !251, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !252, line: 44, baseType: !253)
!252 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !252, line: 14, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, scope: !253, file: !252, line: 15, baseType: !256, size: 32)
!256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !253, file: !252, line: 15, size: 32, elements: !257)
!257 = !{!258, !259, !264}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !256, file: !252, line: 16, baseType: !107, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !252, line: 24, baseType: !260, size: 16)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !256, file: !252, line: 24, size: 16, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !260, file: !252, line: 25, baseType: !96, size: 8)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !260, file: !252, line: 26, baseType: !96, size: 8, offset: 8)
!264 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !252, line: 28, baseType: !265, size: 32)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !256, file: !252, line: 28, size: 32, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !265, file: !252, line: 29, baseType: !133, size: 16)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !265, file: !252, line: 30, baseType: !133, size: 16, offset: 16)
!269 = !{i32 7, !"Dwarf Version", i32 5}
!270 = !{i32 2, !"Debug Info Version", i32 3}
!271 = !{i32 1, !"wchar_size", i32 2}
!272 = !{i32 8, !"cf-protection-branch", i32 1}
!273 = !{i32 4, !"function_return_thunk_extern", i32 1}
!274 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!275 = !{i32 1, !"Code Model", i32 2}
!276 = !{i32 1, !"override-stack-alignment", i32 8}
!277 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!278 = distinct !DISubprogram(name: "netlbl_domhsh_init", scope: !3, file: !3, line: 362, type: !279, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{!111, !37}
!281 = !{!282, !283, !284, !285}
!282 = !DILocalVariable(name: "size", arg: 1, scope: !278, file: !3, line: 362, type: !37)
!283 = !DILocalVariable(name: "iter", scope: !278, file: !3, line: 364, type: !37)
!284 = !DILocalVariable(name: "hsh_tbl", scope: !278, file: !3, line: 365, type: !27)
!285 = !DILocalVariable(name: "_r_a_p__v", scope: !286, file: !3, line: 385, type: !25)
!286 = distinct !DILexicalBlock(scope: !278, file: !3, line: 385, column: 2)
!287 = !DILocation(line: 362, column: 35, scope: !278)
!288 = !DILocation(line: 364, column: 2, scope: !278)
!289 = !DILocation(line: 364, column: 6, scope: !278)
!290 = !DILocation(line: 365, column: 2, scope: !278)
!291 = !DILocation(line: 365, column: 28, scope: !278)
!292 = !DILocation(line: 367, column: 6, scope: !293)
!293 = distinct !DILexicalBlock(scope: !278, file: !3, line: 367, column: 6)
!294 = !DILocation(line: 367, column: 11, scope: !293)
!295 = !DILocation(line: 367, column: 6, scope: !278)
!296 = !DILocation(line: 368, column: 3, scope: !293)
!297 = !DILocation(line: 370, column: 12, scope: !278)
!298 = !DILocation(line: 370, column: 10, scope: !278)
!299 = !DILocation(line: 371, column: 6, scope: !300)
!300 = distinct !DILexicalBlock(scope: !278, file: !3, line: 371, column: 6)
!301 = !DILocation(line: 371, column: 14, scope: !300)
!302 = !DILocation(line: 371, column: 6, scope: !278)
!303 = !DILocation(line: 372, column: 3, scope: !300)
!304 = !DILocation(line: 373, column: 23, scope: !278)
!305 = !DILocation(line: 373, column: 20, scope: !278)
!306 = !DILocation(line: 373, column: 2, scope: !278)
!307 = !DILocation(line: 373, column: 11, scope: !278)
!308 = !DILocation(line: 373, column: 16, scope: !278)
!309 = !DILocation(line: 374, column: 25, scope: !278)
!310 = !DILocation(line: 374, column: 34, scope: !278)
!311 = !DILocation(line: 374, column: 17, scope: !278)
!312 = !DILocation(line: 374, column: 2, scope: !278)
!313 = !DILocation(line: 374, column: 11, scope: !278)
!314 = !DILocation(line: 374, column: 15, scope: !278)
!315 = !DILocation(line: 377, column: 6, scope: !316)
!316 = distinct !DILexicalBlock(scope: !278, file: !3, line: 377, column: 6)
!317 = !DILocation(line: 377, column: 15, scope: !316)
!318 = !DILocation(line: 377, column: 19, scope: !316)
!319 = !DILocation(line: 377, column: 6, scope: !278)
!320 = !DILocation(line: 378, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !3, line: 377, column: 28)
!322 = !DILocation(line: 378, column: 3, scope: !321)
!323 = !DILocation(line: 379, column: 3, scope: !321)
!324 = !DILocation(line: 381, column: 12, scope: !325)
!325 = distinct !DILexicalBlock(scope: !278, file: !3, line: 381, column: 2)
!326 = !DILocation(line: 381, column: 7, scope: !325)
!327 = !DILocation(line: 381, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !3, line: 381, column: 2)
!329 = !DILocation(line: 381, column: 24, scope: !328)
!330 = !DILocation(line: 381, column: 33, scope: !328)
!331 = !DILocation(line: 381, column: 22, scope: !328)
!332 = !DILocation(line: 381, column: 2, scope: !325)
!333 = !DILocation(line: 382, column: 19, scope: !328)
!334 = !DILocation(line: 382, column: 28, scope: !328)
!335 = !DILocation(line: 382, column: 32, scope: !328)
!336 = !DILocation(line: 382, column: 3, scope: !328)
!337 = !DILocation(line: 381, column: 43, scope: !328)
!338 = !DILocation(line: 381, column: 2, scope: !328)
!339 = distinct !{!339, !332, !340, !341, !342}
!340 = !DILocation(line: 382, column: 37, scope: !325)
!341 = !{!"llvm.loop.mustprogress"}
!342 = !{!"llvm.loop.unroll.disable"}
!343 = !DILocation(line: 384, column: 2, scope: !278)
!344 = !DILocation(line: 385, column: 2, scope: !278)
!345 = !DILocation(line: 385, column: 2, scope: !286)
!346 = !DILocation(line: 385, column: 2, scope: !347)
!347 = distinct !DILexicalBlock(scope: !286, file: !3, line: 385, column: 2)
!348 = !DILocation(line: 385, column: 2, scope: !349)
!349 = distinct !DILexicalBlock(scope: !347, file: !3, line: 385, column: 2)
!350 = !DILocation(line: 385, column: 2, scope: !351)
!351 = distinct !DILexicalBlock(scope: !349, file: !3, line: 385, column: 2)
!352 = !DILocation(line: 385, column: 2, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !3, line: 385, column: 2)
!354 = !DILocation(line: 385, column: 2, scope: !355)
!355 = distinct !DILexicalBlock(scope: !347, file: !3, line: 385, column: 2)
!356 = !DILocation(line: 385, column: 2, scope: !357)
!357 = distinct !DILexicalBlock(scope: !355, file: !3, line: 385, column: 2)
!358 = !DILocation(line: 385, column: 2, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !3, line: 385, column: 2)
!360 = !DILocation(line: 385, column: 2, scope: !361)
!361 = distinct !DILexicalBlock(scope: !359, file: !3, line: 385, column: 2)
!362 = !{i64 2158058308}
!363 = !DILocation(line: 385, column: 2, scope: !364)
!364 = distinct !DILexicalBlock(scope: !359, file: !3, line: 385, column: 2)
!365 = !DILocation(line: 385, column: 2, scope: !366)
!366 = distinct !DILexicalBlock(scope: !364, file: !3, line: 385, column: 2)
!367 = !DILocation(line: 385, column: 2, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !3, line: 385, column: 2)
!369 = !DILocation(line: 386, column: 2, scope: !278)
!370 = !DILocation(line: 388, column: 2, scope: !278)
!371 = !DILocation(line: 389, column: 1, scope: !278)
!372 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !373, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !379)
!373 = !DISubroutineType(types: !374)
!374 = !{!24, !375, !22}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 61, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !377, line: 72, baseType: !378)
!377 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !377, line: 16, baseType: !26)
!379 = !{!380, !381, !382}
!380 = !DILocalVariable(name: "size", arg: 1, scope: !372, file: !12, line: 591, type: !375)
!381 = !DILocalVariable(name: "flags", arg: 2, scope: !372, file: !12, line: 591, type: !22)
!382 = !DILocalVariable(name: "index", scope: !383, file: !12, line: 594, type: !7)
!383 = distinct !DILexicalBlock(scope: !384, file: !12, line: 593, column: 42)
!384 = distinct !DILexicalBlock(scope: !372, file: !12, line: 593, column: 6)
!385 = !DILocation(line: 591, column: 61, scope: !372)
!386 = !DILocation(line: 591, column: 73, scope: !372)
!387 = !DILocation(line: 593, column: 27, scope: !384)
!388 = !DILocation(line: 593, column: 6, scope: !384)
!389 = !DILocation(line: 593, column: 33, scope: !384)
!390 = !DILocation(line: 593, column: 36, scope: !384)
!391 = !DILocation(line: 593, column: 6, scope: !372)
!392 = !DILocation(line: 594, column: 3, scope: !383)
!393 = !DILocation(line: 594, column: 16, scope: !383)
!394 = !DILocation(line: 596, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !383, file: !12, line: 596, column: 7)
!396 = !DILocation(line: 596, column: 12, scope: !395)
!397 = !DILocation(line: 596, column: 7, scope: !383)
!398 = !DILocation(line: 597, column: 25, scope: !395)
!399 = !DILocation(line: 597, column: 31, scope: !395)
!400 = !DILocation(line: 597, column: 11, scope: !395)
!401 = !DILocation(line: 597, column: 4, scope: !395)
!402 = !DILocation(line: 599, column: 11, scope: !383)
!403 = !DILocation(line: 599, column: 9, scope: !383)
!404 = !DILocation(line: 601, column: 33, scope: !383)
!405 = !DILocation(line: 601, column: 40, scope: !383)
!406 = !DILocation(line: 601, column: 20, scope: !383)
!407 = !DILocation(line: 601, column: 5, scope: !383)
!408 = !DILocation(line: 601, column: 51, scope: !383)
!409 = !DILocation(line: 602, column: 5, scope: !383)
!410 = !DILocation(line: 602, column: 12, scope: !383)
!411 = !DILocation(line: 600, column: 10, scope: !383)
!412 = !DILocation(line: 600, column: 3, scope: !383)
!413 = !DILocation(line: 603, column: 2, scope: !384)
!414 = !DILocation(line: 604, column: 19, scope: !372)
!415 = !DILocation(line: 604, column: 25, scope: !372)
!416 = !DILocation(line: 604, column: 9, scope: !372)
!417 = !DILocation(line: 604, column: 2, scope: !372)
!418 = !DILocation(line: 605, column: 1, scope: !372)
!419 = distinct !DISubprogram(name: "kcalloc", scope: !12, file: !12, line: 666, type: !420, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!24, !375, !375, !22}
!422 = !{!423, !424, !425}
!423 = !DILocalVariable(name: "n", arg: 1, scope: !419, file: !12, line: 666, type: !375)
!424 = !DILocalVariable(name: "size", arg: 2, scope: !419, file: !12, line: 666, type: !375)
!425 = !DILocalVariable(name: "flags", arg: 3, scope: !419, file: !12, line: 666, type: !22)
!426 = !DILocation(line: 666, column: 55, scope: !419)
!427 = !DILocation(line: 666, column: 65, scope: !419)
!428 = !DILocation(line: 666, column: 77, scope: !419)
!429 = !DILocation(line: 668, column: 23, scope: !419)
!430 = !DILocation(line: 668, column: 26, scope: !419)
!431 = !DILocation(line: 668, column: 32, scope: !419)
!432 = !DILocation(line: 668, column: 38, scope: !419)
!433 = !DILocation(line: 668, column: 9, scope: !419)
!434 = !DILocation(line: 668, column: 2, scope: !419)
!435 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!440 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !441, file: !441, line: 35, type: !442, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !444)
!441 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!442 = !DISubroutineType(types: !443)
!443 = !{null, !31}
!444 = !{!445}
!445 = !DILocalVariable(name: "list", arg: 1, scope: !440, file: !441, line: 35, type: !31)
!446 = !DILocation(line: 35, column: 53, scope: !440)
!447 = !DILocation(line: 37, column: 2, scope: !440)
!448 = !DILocation(line: 37, column: 2, scope: !449)
!449 = distinct !DILexicalBlock(scope: !440, file: !441, line: 37, column: 2)
!450 = !DILocation(line: 37, column: 2, scope: !451)
!451 = distinct !DILexicalBlock(scope: !449, file: !441, line: 37, column: 2)
!452 = !DILocation(line: 37, column: 2, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !441, line: 37, column: 2)
!454 = !DILocation(line: 38, column: 2, scope: !440)
!455 = !DILocation(line: 38, column: 2, scope: !456)
!456 = distinct !DILexicalBlock(scope: !440, file: !441, line: 38, column: 2)
!457 = !DILocation(line: 38, column: 2, scope: !458)
!458 = distinct !DILexicalBlock(scope: !456, file: !441, line: 38, column: 2)
!459 = !DILocation(line: 38, column: 2, scope: !460)
!460 = distinct !DILexicalBlock(scope: !456, file: !441, line: 38, column: 2)
!461 = !DILocation(line: 39, column: 1, scope: !440)
!462 = distinct !DISubprogram(name: "spin_lock", scope: !463, file: !463, line: 349, type: !464, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !467)
!463 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!464 = !DISubroutineType(types: !465)
!465 = !{null, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!467 = !{!468}
!468 = !DILocalVariable(name: "lock", arg: 1, scope: !462, file: !463, line: 349, type: !466)
!469 = !DILocation(line: 349, column: 51, scope: !462)
!470 = !DILocation(line: 351, column: 2, scope: !462)
!471 = !DILocation(line: 352, column: 1, scope: !462)
!472 = distinct !DISubprogram(name: "spin_unlock", scope: !463, file: !463, line: 389, type: !464, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !473)
!473 = !{!474}
!474 = !DILocalVariable(name: "lock", arg: 1, scope: !472, file: !463, line: 389, type: !466)
!475 = !DILocation(line: 389, column: 53, scope: !472)
!476 = !DILocation(line: 391, column: 2, scope: !472)
!477 = !DILocation(line: 392, column: 1, scope: !472)
!478 = distinct !DISubprogram(name: "netlbl_domhsh_add", scope: !3, file: !3, line: 405, type: !479, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !495)
!479 = !DISubroutineType(types: !480)
!480 = !{!111, !45, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlbl_audit", file: !483, line: 99, size: 96, elements: !484)
!483 = !DIFile(filename: "./include/net/netlabel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10369c8505590d639d1be416b6c48b7f")
!484 = !{!485, !486, !494}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "secid", scope: !482, file: !483, line: 100, baseType: !37, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !482, file: !483, line: 101, baseType: !487, size: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !488, line: 23, baseType: !489)
!488 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 21, size: 32, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !489, file: !488, line: 22, baseType: !492, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !23, line: 37, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !377, line: 49, baseType: !7)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !482, file: !483, line: 102, baseType: !7, size: 32, offset: 64)
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !510, !512, !516, !518, !520, !522, !525, !526}
!496 = !DILocalVariable(name: "entry", arg: 1, scope: !478, file: !3, line: 405, type: !45)
!497 = !DILocalVariable(name: "audit_info", arg: 2, scope: !478, file: !3, line: 406, type: !481)
!498 = !DILocalVariable(name: "ret_val", scope: !478, file: !3, line: 408, type: !111)
!499 = !DILocalVariable(name: "entry_old", scope: !478, file: !3, line: 409, type: !45)
!500 = !DILocalVariable(name: "entry_b", scope: !478, file: !3, line: 409, type: !45)
!501 = !DILocalVariable(name: "iter4", scope: !478, file: !3, line: 410, type: !192)
!502 = !DILocalVariable(name: "tmp4", scope: !478, file: !3, line: 411, type: !192)
!503 = !DILocalVariable(name: "iter6", scope: !478, file: !3, line: 413, type: !193)
!504 = !DILocalVariable(name: "tmp6", scope: !478, file: !3, line: 414, type: !193)
!505 = !DILocalVariable(name: "bkt", scope: !506, file: !3, line: 436, type: !37)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 435, column: 30)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 435, column: 7)
!508 = distinct !DILexicalBlock(scope: !509, file: !3, line: 432, column: 25)
!509 = distinct !DILexicalBlock(scope: !478, file: !3, line: 432, column: 6)
!510 = !DILocalVariable(name: "__UNIQUE_ID_rcu561", scope: !511, file: !3, line: 438, type: !27)
!511 = distinct !DILexicalBlock(scope: !506, file: !3, line: 438, column: 10)
!512 = !DILocalVariable(name: "_r_a_p__v", scope: !513, file: !3, line: 443, type: !25)
!513 = distinct !DILexicalBlock(scope: !514, file: !3, line: 443, column: 5)
!514 = distinct !DILexicalBlock(scope: !515, file: !3, line: 441, column: 27)
!515 = distinct !DILexicalBlock(scope: !507, file: !3, line: 439, column: 10)
!516 = !DILocalVariable(name: "_r_a_p__v", scope: !517, file: !3, line: 447, type: !25)
!517 = distinct !DILexicalBlock(scope: !514, file: !3, line: 447, column: 5)
!518 = !DILocalVariable(name: "_r_a_p__v", scope: !519, file: !3, line: 465, type: !25)
!519 = distinct !DILexicalBlock(scope: !514, file: !3, line: 465, column: 5)
!520 = !DILocalVariable(name: "_r_a_p__v", scope: !521, file: !3, line: 467, type: !25)
!521 = distinct !DILexicalBlock(scope: !514, file: !3, line: 467, column: 5)
!522 = !DILocalVariable(name: "old_list4", scope: !523, file: !3, line: 494, type: !31)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 493, column: 51)
!524 = distinct !DILexicalBlock(scope: !509, file: !3, line: 492, column: 13)
!525 = !DILocalVariable(name: "old_list6", scope: !523, file: !3, line: 495, type: !31)
!526 = !DILabel(scope: !478, name: "add_return", file: !3, line: 546)
!527 = !DILocation(line: 405, column: 46, scope: !478)
!528 = !DILocation(line: 406, column: 30, scope: !478)
!529 = !DILocation(line: 408, column: 2, scope: !478)
!530 = !DILocation(line: 408, column: 6, scope: !478)
!531 = !DILocation(line: 409, column: 2, scope: !478)
!532 = !DILocation(line: 409, column: 25, scope: !478)
!533 = !DILocation(line: 409, column: 37, scope: !478)
!534 = !DILocation(line: 410, column: 2, scope: !478)
!535 = !DILocation(line: 410, column: 25, scope: !478)
!536 = !DILocation(line: 411, column: 2, scope: !478)
!537 = !DILocation(line: 411, column: 25, scope: !478)
!538 = !DILocation(line: 413, column: 2, scope: !478)
!539 = !DILocation(line: 413, column: 25, scope: !478)
!540 = !DILocation(line: 414, column: 2, scope: !478)
!541 = !DILocation(line: 414, column: 25, scope: !478)
!542 = !DILocation(line: 417, column: 35, scope: !478)
!543 = !DILocation(line: 417, column: 12, scope: !478)
!544 = !DILocation(line: 417, column: 10, scope: !478)
!545 = !DILocation(line: 418, column: 6, scope: !546)
!546 = distinct !DILexicalBlock(scope: !478, file: !3, line: 418, column: 6)
!547 = !DILocation(line: 418, column: 14, scope: !546)
!548 = !DILocation(line: 418, column: 6, scope: !478)
!549 = !DILocation(line: 419, column: 10, scope: !546)
!550 = !DILocation(line: 419, column: 3, scope: !546)
!551 = !DILocation(line: 425, column: 2, scope: !478)
!552 = !DILocation(line: 426, column: 2, scope: !478)
!553 = !DILocation(line: 427, column: 6, scope: !554)
!554 = distinct !DILexicalBlock(scope: !478, file: !3, line: 427, column: 6)
!555 = !DILocation(line: 427, column: 13, scope: !554)
!556 = !DILocation(line: 427, column: 20, scope: !554)
!557 = !DILocation(line: 427, column: 6, scope: !478)
!558 = !DILocation(line: 428, column: 36, scope: !554)
!559 = !DILocation(line: 428, column: 43, scope: !554)
!560 = !DILocation(line: 428, column: 51, scope: !554)
!561 = !DILocation(line: 428, column: 58, scope: !554)
!562 = !DILocation(line: 428, column: 15, scope: !554)
!563 = !DILocation(line: 428, column: 13, scope: !554)
!564 = !DILocation(line: 428, column: 3, scope: !554)
!565 = !DILocation(line: 430, column: 40, scope: !554)
!566 = !DILocation(line: 430, column: 47, scope: !554)
!567 = !DILocation(line: 431, column: 12, scope: !554)
!568 = !DILocation(line: 431, column: 19, scope: !554)
!569 = !DILocation(line: 430, column: 15, scope: !554)
!570 = !DILocation(line: 430, column: 13, scope: !554)
!571 = !DILocation(line: 432, column: 6, scope: !509)
!572 = !DILocation(line: 432, column: 16, scope: !509)
!573 = !DILocation(line: 432, column: 6, scope: !478)
!574 = !DILocation(line: 433, column: 3, scope: !508)
!575 = !DILocation(line: 433, column: 10, scope: !508)
!576 = !DILocation(line: 433, column: 16, scope: !508)
!577 = !DILocation(line: 435, column: 7, scope: !507)
!578 = !DILocation(line: 435, column: 14, scope: !507)
!579 = !DILocation(line: 435, column: 21, scope: !507)
!580 = !DILocation(line: 435, column: 7, scope: !508)
!581 = !DILocation(line: 436, column: 4, scope: !506)
!582 = !DILocation(line: 436, column: 8, scope: !506)
!583 = !DILocation(line: 436, column: 33, scope: !506)
!584 = !DILocation(line: 436, column: 40, scope: !506)
!585 = !DILocation(line: 436, column: 14, scope: !506)
!586 = !DILocation(line: 437, column: 23, scope: !506)
!587 = !DILocation(line: 437, column: 30, scope: !506)
!588 = !DILocation(line: 438, column: 10, scope: !511)
!589 = !DILocation(line: 438, column: 10, scope: !590)
!590 = distinct !DILexicalBlock(scope: !511, file: !3, line: 438, column: 10)
!591 = !DILocation(line: 438, column: 10, scope: !592)
!592 = distinct !DILexicalBlock(scope: !590, file: !3, line: 438, column: 10)
!593 = !DILocation(line: 438, column: 10, scope: !594)
!594 = distinct !DILexicalBlock(scope: !511, file: !3, line: 438, column: 10)
!595 = !DILocation(line: 438, column: 10, scope: !506)
!596 = !DILocation(line: 438, column: 42, scope: !506)
!597 = !DILocation(line: 438, column: 46, scope: !506)
!598 = !DILocation(line: 437, column: 4, scope: !506)
!599 = !DILocation(line: 439, column: 3, scope: !507)
!600 = !DILocation(line: 439, column: 3, scope: !506)
!601 = !DILocation(line: 440, column: 20, scope: !515)
!602 = !DILocation(line: 440, column: 27, scope: !515)
!603 = !DILocation(line: 440, column: 4, scope: !515)
!604 = !DILocation(line: 441, column: 12, scope: !515)
!605 = !DILocation(line: 441, column: 19, scope: !515)
!606 = !DILocation(line: 441, column: 4, scope: !515)
!607 = !DILocation(line: 443, column: 5, scope: !514)
!608 = !DILocation(line: 443, column: 5, scope: !513)
!609 = !DILocation(line: 443, column: 5, scope: !610)
!610 = distinct !DILexicalBlock(scope: !513, file: !3, line: 443, column: 5)
!611 = !DILocation(line: 443, column: 5, scope: !612)
!612 = distinct !DILexicalBlock(scope: !610, file: !3, line: 443, column: 5)
!613 = !DILocation(line: 443, column: 5, scope: !614)
!614 = distinct !DILexicalBlock(scope: !612, file: !3, line: 443, column: 5)
!615 = !DILocation(line: 443, column: 5, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !3, line: 443, column: 5)
!617 = !DILocation(line: 443, column: 5, scope: !618)
!618 = distinct !DILexicalBlock(scope: !610, file: !3, line: 443, column: 5)
!619 = !DILocation(line: 443, column: 5, scope: !620)
!620 = distinct !DILexicalBlock(scope: !618, file: !3, line: 443, column: 5)
!621 = !DILocation(line: 443, column: 5, scope: !622)
!622 = distinct !DILexicalBlock(scope: !618, file: !3, line: 443, column: 5)
!623 = !DILocation(line: 443, column: 5, scope: !624)
!624 = distinct !DILexicalBlock(scope: !622, file: !3, line: 443, column: 5)
!625 = !{i64 2158070738}
!626 = !DILocation(line: 443, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !3, line: 443, column: 5)
!628 = !DILocation(line: 443, column: 5, scope: !629)
!629 = distinct !DILexicalBlock(scope: !627, file: !3, line: 443, column: 5)
!630 = !DILocation(line: 443, column: 5, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !3, line: 443, column: 5)
!632 = !DILocation(line: 445, column: 5, scope: !514)
!633 = !DILocation(line: 447, column: 5, scope: !514)
!634 = !DILocation(line: 447, column: 5, scope: !517)
!635 = !DILocation(line: 447, column: 5, scope: !636)
!636 = distinct !DILexicalBlock(scope: !517, file: !3, line: 447, column: 5)
!637 = !DILocation(line: 447, column: 5, scope: !638)
!638 = distinct !DILexicalBlock(scope: !636, file: !3, line: 447, column: 5)
!639 = !DILocation(line: 447, column: 5, scope: !640)
!640 = distinct !DILexicalBlock(scope: !638, file: !3, line: 447, column: 5)
!641 = !DILocation(line: 447, column: 5, scope: !642)
!642 = distinct !DILexicalBlock(scope: !638, file: !3, line: 447, column: 5)
!643 = !DILocation(line: 447, column: 5, scope: !644)
!644 = distinct !DILexicalBlock(scope: !636, file: !3, line: 447, column: 5)
!645 = !DILocation(line: 447, column: 5, scope: !646)
!646 = distinct !DILexicalBlock(scope: !644, file: !3, line: 447, column: 5)
!647 = !DILocation(line: 447, column: 5, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !3, line: 447, column: 5)
!649 = !DILocation(line: 447, column: 5, scope: !650)
!650 = distinct !DILexicalBlock(scope: !648, file: !3, line: 447, column: 5)
!651 = !{i64 2158079054}
!652 = !DILocation(line: 447, column: 5, scope: !653)
!653 = distinct !DILexicalBlock(scope: !648, file: !3, line: 447, column: 5)
!654 = !DILocation(line: 447, column: 5, scope: !655)
!655 = distinct !DILexicalBlock(scope: !653, file: !3, line: 447, column: 5)
!656 = !DILocation(line: 447, column: 5, scope: !657)
!657 = distinct !DILexicalBlock(scope: !653, file: !3, line: 447, column: 5)
!658 = !DILocation(line: 449, column: 5, scope: !514)
!659 = !DILocation(line: 451, column: 9, scope: !660)
!660 = distinct !DILexicalBlock(scope: !514, file: !3, line: 451, column: 9)
!661 = !DILocation(line: 451, column: 16, scope: !660)
!662 = !DILocation(line: 451, column: 20, scope: !660)
!663 = !DILocation(line: 451, column: 25, scope: !660)
!664 = !DILocation(line: 451, column: 9, scope: !514)
!665 = !DILocation(line: 453, column: 14, scope: !666)
!666 = distinct !DILexicalBlock(scope: !660, file: !3, line: 452, column: 34)
!667 = !DILocation(line: 454, column: 6, scope: !666)
!668 = !DILocation(line: 456, column: 15, scope: !514)
!669 = !DILocation(line: 456, column: 13, scope: !514)
!670 = !DILocation(line: 457, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !514, file: !3, line: 457, column: 9)
!672 = !DILocation(line: 457, column: 17, scope: !671)
!673 = !DILocation(line: 457, column: 9, scope: !514)
!674 = !DILocation(line: 458, column: 14, scope: !675)
!675 = distinct !DILexicalBlock(scope: !671, file: !3, line: 457, column: 26)
!676 = !DILocation(line: 459, column: 6, scope: !675)
!677 = !DILocation(line: 461, column: 5, scope: !514)
!678 = !DILocation(line: 461, column: 14, scope: !514)
!679 = !DILocation(line: 461, column: 21, scope: !514)
!680 = !DILocation(line: 462, column: 5, scope: !514)
!681 = !DILocation(line: 462, column: 14, scope: !514)
!682 = !DILocation(line: 462, column: 18, scope: !514)
!683 = !DILocation(line: 462, column: 23, scope: !514)
!684 = !DILocation(line: 463, column: 5, scope: !514)
!685 = !DILocation(line: 463, column: 14, scope: !514)
!686 = !DILocation(line: 463, column: 20, scope: !514)
!687 = !DILocation(line: 464, column: 5, scope: !514)
!688 = !DILocation(line: 464, column: 12, scope: !514)
!689 = !DILocation(line: 464, column: 19, scope: !514)
!690 = !DILocation(line: 465, column: 5, scope: !514)
!691 = !DILocation(line: 465, column: 5, scope: !519)
!692 = !DILocation(line: 465, column: 5, scope: !693)
!693 = distinct !DILexicalBlock(scope: !519, file: !3, line: 465, column: 5)
!694 = !DILocation(line: 465, column: 5, scope: !695)
!695 = distinct !DILexicalBlock(scope: !693, file: !3, line: 465, column: 5)
!696 = !DILocation(line: 465, column: 5, scope: !697)
!697 = distinct !DILexicalBlock(scope: !695, file: !3, line: 465, column: 5)
!698 = !DILocation(line: 465, column: 5, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !3, line: 465, column: 5)
!700 = !DILocation(line: 465, column: 5, scope: !701)
!701 = distinct !DILexicalBlock(scope: !693, file: !3, line: 465, column: 5)
!702 = !DILocation(line: 465, column: 5, scope: !703)
!703 = distinct !DILexicalBlock(scope: !701, file: !3, line: 465, column: 5)
!704 = !DILocation(line: 465, column: 5, scope: !705)
!705 = distinct !DILexicalBlock(scope: !701, file: !3, line: 465, column: 5)
!706 = !DILocation(line: 465, column: 5, scope: !707)
!707 = distinct !DILexicalBlock(scope: !705, file: !3, line: 465, column: 5)
!708 = !{i64 2158087511}
!709 = !DILocation(line: 465, column: 5, scope: !710)
!710 = distinct !DILexicalBlock(scope: !705, file: !3, line: 465, column: 5)
!711 = !DILocation(line: 465, column: 5, scope: !712)
!712 = distinct !DILexicalBlock(scope: !710, file: !3, line: 465, column: 5)
!713 = !DILocation(line: 465, column: 5, scope: !714)
!714 = distinct !DILexicalBlock(scope: !710, file: !3, line: 465, column: 5)
!715 = !DILocation(line: 467, column: 5, scope: !514)
!716 = !DILocation(line: 467, column: 5, scope: !521)
!717 = !DILocation(line: 467, column: 5, scope: !718)
!718 = distinct !DILexicalBlock(scope: !521, file: !3, line: 467, column: 5)
!719 = !DILocation(line: 467, column: 5, scope: !720)
!720 = distinct !DILexicalBlock(scope: !718, file: !3, line: 467, column: 5)
!721 = !DILocation(line: 467, column: 5, scope: !722)
!722 = distinct !DILexicalBlock(scope: !720, file: !3, line: 467, column: 5)
!723 = !DILocation(line: 467, column: 5, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !3, line: 467, column: 5)
!725 = !DILocation(line: 467, column: 5, scope: !726)
!726 = distinct !DILexicalBlock(scope: !718, file: !3, line: 467, column: 5)
!727 = !DILocation(line: 467, column: 5, scope: !728)
!728 = distinct !DILexicalBlock(scope: !726, file: !3, line: 467, column: 5)
!729 = !DILocation(line: 467, column: 5, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !3, line: 467, column: 5)
!731 = !DILocation(line: 467, column: 5, scope: !732)
!732 = distinct !DILexicalBlock(scope: !730, file: !3, line: 467, column: 5)
!733 = !{i64 2158095828}
!734 = !DILocation(line: 467, column: 5, scope: !735)
!735 = distinct !DILexicalBlock(scope: !730, file: !3, line: 467, column: 5)
!736 = !DILocation(line: 467, column: 5, scope: !737)
!737 = distinct !DILexicalBlock(scope: !735, file: !3, line: 467, column: 5)
!738 = !DILocation(line: 467, column: 5, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !3, line: 467, column: 5)
!740 = !DILocation(line: 469, column: 5, scope: !514)
!741 = !DILocation(line: 473, column: 13, scope: !514)
!742 = !DILocation(line: 474, column: 5, scope: !514)
!743 = !DILocation(line: 478, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !508, file: !3, line: 478, column: 7)
!745 = !DILocation(line: 478, column: 14, scope: !744)
!746 = !DILocation(line: 478, column: 18, scope: !744)
!747 = !DILocation(line: 478, column: 23, scope: !744)
!748 = !DILocation(line: 478, column: 7, scope: !508)
!749 = !DILocation(line: 479, column: 4, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 479, column: 4)
!751 = distinct !DILexicalBlock(scope: !744, file: !3, line: 478, column: 52)
!752 = !DILocation(line: 479, column: 4, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !3, line: 479, column: 4)
!754 = !DILocation(line: 481, column: 29, scope: !753)
!755 = !DILocation(line: 481, column: 36, scope: !753)
!756 = !DILocation(line: 482, column: 8, scope: !753)
!757 = !DILocation(line: 482, column: 17, scope: !753)
!758 = !DILocation(line: 481, column: 5, scope: !753)
!759 = distinct !{!759, !749, !760, !341, !342}
!760 = !DILocation(line: 482, column: 27, scope: !750)
!761 = !DILocation(line: 484, column: 4, scope: !762)
!762 = distinct !DILexicalBlock(scope: !751, file: !3, line: 484, column: 4)
!763 = !DILocation(line: 484, column: 4, scope: !764)
!764 = distinct !DILexicalBlock(scope: !762, file: !3, line: 484, column: 4)
!765 = !DILocation(line: 486, column: 29, scope: !764)
!766 = !DILocation(line: 486, column: 42, scope: !764)
!767 = !DILocation(line: 487, column: 8, scope: !764)
!768 = !DILocation(line: 487, column: 17, scope: !764)
!769 = !DILocation(line: 486, column: 5, scope: !764)
!770 = distinct !{!770, !761, !771, !341, !342}
!771 = !DILocation(line: 487, column: 27, scope: !762)
!772 = !DILocation(line: 489, column: 3, scope: !751)
!773 = !DILocation(line: 490, column: 28, scope: !744)
!774 = !DILocation(line: 491, column: 7, scope: !744)
!775 = !DILocation(line: 491, column: 16, scope: !744)
!776 = !DILocation(line: 490, column: 4, scope: !744)
!777 = !DILocation(line: 492, column: 2, scope: !508)
!778 = !DILocation(line: 492, column: 13, scope: !524)
!779 = !DILocation(line: 492, column: 24, scope: !524)
!780 = !DILocation(line: 492, column: 28, scope: !524)
!781 = !DILocation(line: 492, column: 33, scope: !524)
!782 = !DILocation(line: 492, column: 61, scope: !524)
!783 = !DILocation(line: 493, column: 6, scope: !524)
!784 = !DILocation(line: 493, column: 13, scope: !524)
!785 = !DILocation(line: 493, column: 17, scope: !524)
!786 = !DILocation(line: 493, column: 22, scope: !524)
!787 = !DILocation(line: 492, column: 13, scope: !509)
!788 = !DILocation(line: 494, column: 3, scope: !523)
!789 = !DILocation(line: 494, column: 21, scope: !523)
!790 = !DILocation(line: 495, column: 3, scope: !523)
!791 = !DILocation(line: 495, column: 21, scope: !523)
!792 = !DILocation(line: 497, column: 16, scope: !523)
!793 = !DILocation(line: 497, column: 27, scope: !523)
!794 = !DILocation(line: 497, column: 31, scope: !523)
!795 = !DILocation(line: 497, column: 40, scope: !523)
!796 = !DILocation(line: 497, column: 13, scope: !523)
!797 = !DILocation(line: 498, column: 16, scope: !523)
!798 = !DILocation(line: 498, column: 27, scope: !523)
!799 = !DILocation(line: 498, column: 31, scope: !523)
!800 = !DILocation(line: 498, column: 40, scope: !523)
!801 = !DILocation(line: 498, column: 13, scope: !523)
!802 = !DILocation(line: 502, column: 3, scope: !803)
!803 = distinct !DILexicalBlock(scope: !523, file: !3, line: 502, column: 3)
!804 = !DILocation(line: 502, column: 3, scope: !805)
!805 = distinct !DILexicalBlock(scope: !803, file: !3, line: 502, column: 3)
!806 = !DILocation(line: 503, column: 36, scope: !807)
!807 = distinct !DILexicalBlock(scope: !805, file: !3, line: 503, column: 8)
!808 = !DILocation(line: 503, column: 43, scope: !807)
!809 = !DILocation(line: 504, column: 8, scope: !807)
!810 = !DILocation(line: 504, column: 15, scope: !807)
!811 = !DILocation(line: 505, column: 8, scope: !807)
!812 = !DILocation(line: 503, column: 8, scope: !807)
!813 = !DILocation(line: 503, column: 8, scope: !805)
!814 = !DILocation(line: 506, column: 13, scope: !815)
!815 = distinct !DILexicalBlock(scope: !807, file: !3, line: 505, column: 20)
!816 = !DILocation(line: 507, column: 5, scope: !815)
!817 = !DILocation(line: 505, column: 17, scope: !807)
!818 = distinct !{!818, !802, !819, !341, !342}
!819 = !DILocation(line: 508, column: 4, scope: !803)
!820 = !DILocation(line: 510, column: 3, scope: !821)
!821 = distinct !DILexicalBlock(scope: !523, file: !3, line: 510, column: 3)
!822 = !DILocation(line: 510, column: 3, scope: !823)
!823 = distinct !DILexicalBlock(scope: !821, file: !3, line: 510, column: 3)
!824 = !DILocation(line: 511, column: 37, scope: !825)
!825 = distinct !DILexicalBlock(scope: !823, file: !3, line: 511, column: 8)
!826 = !DILocation(line: 511, column: 44, scope: !825)
!827 = !DILocation(line: 512, column: 9, scope: !825)
!828 = !DILocation(line: 512, column: 16, scope: !825)
!829 = !DILocation(line: 513, column: 8, scope: !825)
!830 = !DILocation(line: 511, column: 8, scope: !825)
!831 = !DILocation(line: 511, column: 8, scope: !823)
!832 = !DILocation(line: 514, column: 13, scope: !833)
!833 = distinct !DILexicalBlock(scope: !825, file: !3, line: 513, column: 20)
!834 = !DILocation(line: 515, column: 5, scope: !833)
!835 = !DILocation(line: 513, column: 17, scope: !825)
!836 = distinct !{!836, !820, !837, !341, !342}
!837 = !DILocation(line: 516, column: 4, scope: !821)
!838 = !DILocation(line: 519, column: 3, scope: !839)
!839 = distinct !DILexicalBlock(scope: !523, file: !3, line: 519, column: 3)
!840 = !DILocation(line: 519, column: 3, scope: !841)
!841 = distinct !DILexicalBlock(scope: !839, file: !3, line: 519, column: 3)
!842 = !DILocation(line: 521, column: 32, scope: !843)
!843 = distinct !DILexicalBlock(scope: !841, file: !3, line: 520, column: 38)
!844 = !DILocation(line: 521, column: 4, scope: !843)
!845 = !DILocation(line: 522, column: 4, scope: !843)
!846 = !DILocation(line: 522, column: 11, scope: !843)
!847 = !DILocation(line: 522, column: 17, scope: !843)
!848 = !DILocation(line: 523, column: 33, scope: !843)
!849 = !DILocation(line: 523, column: 40, scope: !843)
!850 = !DILocation(line: 523, column: 14, scope: !843)
!851 = !DILocation(line: 523, column: 12, scope: !843)
!852 = !DILocation(line: 524, column: 28, scope: !843)
!853 = !DILocation(line: 524, column: 39, scope: !843)
!854 = !DILocation(line: 525, column: 7, scope: !843)
!855 = !DILocation(line: 525, column: 16, scope: !843)
!856 = !DILocation(line: 524, column: 4, scope: !843)
!857 = !DILocation(line: 526, column: 8, scope: !858)
!858 = distinct !DILexicalBlock(scope: !843, file: !3, line: 526, column: 8)
!859 = !DILocation(line: 526, column: 16, scope: !858)
!860 = !DILocation(line: 526, column: 8, scope: !843)
!861 = !DILocation(line: 527, column: 5, scope: !858)
!862 = !DILocation(line: 528, column: 3, scope: !843)
!863 = distinct !{!863, !838, !864, !341, !342}
!864 = !DILocation(line: 528, column: 3, scope: !839)
!865 = !DILocation(line: 530, column: 3, scope: !866)
!866 = distinct !DILexicalBlock(scope: !523, file: !3, line: 530, column: 3)
!867 = !DILocation(line: 530, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !866, file: !3, line: 530, column: 3)
!869 = !DILocation(line: 532, column: 32, scope: !870)
!870 = distinct !DILexicalBlock(scope: !868, file: !3, line: 531, column: 38)
!871 = !DILocation(line: 532, column: 4, scope: !870)
!872 = !DILocation(line: 533, column: 4, scope: !870)
!873 = !DILocation(line: 533, column: 11, scope: !870)
!874 = !DILocation(line: 533, column: 17, scope: !870)
!875 = !DILocation(line: 534, column: 33, scope: !870)
!876 = !DILocation(line: 534, column: 40, scope: !870)
!877 = !DILocation(line: 534, column: 14, scope: !870)
!878 = !DILocation(line: 534, column: 12, scope: !870)
!879 = !DILocation(line: 535, column: 28, scope: !870)
!880 = !DILocation(line: 535, column: 45, scope: !870)
!881 = !DILocation(line: 536, column: 7, scope: !870)
!882 = !DILocation(line: 536, column: 16, scope: !870)
!883 = !DILocation(line: 535, column: 4, scope: !870)
!884 = !DILocation(line: 537, column: 8, scope: !885)
!885 = distinct !DILexicalBlock(scope: !870, file: !3, line: 537, column: 8)
!886 = !DILocation(line: 537, column: 16, scope: !885)
!887 = !DILocation(line: 537, column: 8, scope: !870)
!888 = !DILocation(line: 538, column: 5, scope: !885)
!889 = !DILocation(line: 539, column: 3, scope: !870)
!890 = distinct !{!890, !865, !891, !341, !342}
!891 = !DILocation(line: 539, column: 3, scope: !866)
!892 = !DILocation(line: 542, column: 29, scope: !523)
!893 = !DILocation(line: 542, column: 36, scope: !523)
!894 = !DILocation(line: 542, column: 3, scope: !523)
!895 = !DILocation(line: 543, column: 2, scope: !524)
!896 = !DILocation(line: 543, column: 2, scope: !523)
!897 = !DILocation(line: 544, column: 11, scope: !524)
!898 = !DILocation(line: 432, column: 19, scope: !509)
!899 = !DILocation(line: 546, column: 1, scope: !478)
!900 = !DILocation(line: 547, column: 2, scope: !478)
!901 = !DILocation(line: 548, column: 2, scope: !478)
!902 = !DILocation(line: 549, column: 9, scope: !478)
!903 = !DILocation(line: 549, column: 2, scope: !478)
!904 = !DILocation(line: 550, column: 1, scope: !478)
!905 = distinct !DISubprogram(name: "netlbl_domhsh_validate", scope: !3, file: !3, line: 274, type: !906, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !910)
!906 = !DISubroutineType(types: !907)
!907 = !{!111, !908}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!910 = !{!911, !912, !913, !914, !915, !916, !922}
!911 = !DILocalVariable(name: "entry", arg: 1, scope: !905, file: !3, line: 274, type: !908)
!912 = !DILocalVariable(name: "iter4", scope: !905, file: !3, line: 276, type: !192)
!913 = !DILocalVariable(name: "map4", scope: !905, file: !3, line: 277, type: !143)
!914 = !DILocalVariable(name: "iter6", scope: !905, file: !3, line: 279, type: !193)
!915 = !DILocalVariable(name: "map6", scope: !905, file: !3, line: 280, type: !157)
!916 = !DILocalVariable(name: "__mptr", scope: !917, file: !3, line: 309, type: !24)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 309, column: 11)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 308, column: 61)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 308, column: 3)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 308, column: 3)
!921 = distinct !DILexicalBlock(scope: !905, file: !3, line: 291, column: 27)
!922 = !DILocalVariable(name: "__mptr", scope: !923, file: !3, line: 325, type: !24)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 325, column: 11)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 324, column: 61)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 324, column: 3)
!926 = distinct !DILexicalBlock(scope: !921, file: !3, line: 324, column: 3)
!927 = !DILocation(line: 274, column: 64, scope: !905)
!928 = !DILocation(line: 276, column: 2, scope: !905)
!929 = !DILocation(line: 276, column: 25, scope: !905)
!930 = !DILocation(line: 277, column: 2, scope: !905)
!931 = !DILocation(line: 277, column: 30, scope: !905)
!932 = !DILocation(line: 279, column: 2, scope: !905)
!933 = !DILocation(line: 279, column: 25, scope: !905)
!934 = !DILocation(line: 280, column: 2, scope: !905)
!935 = !DILocation(line: 280, column: 30, scope: !905)
!936 = !DILocation(line: 283, column: 6, scope: !937)
!937 = distinct !DILexicalBlock(scope: !905, file: !3, line: 283, column: 6)
!938 = !DILocation(line: 283, column: 12, scope: !937)
!939 = !DILocation(line: 283, column: 6, scope: !905)
!940 = !DILocation(line: 284, column: 3, scope: !937)
!941 = !DILocation(line: 286, column: 6, scope: !942)
!942 = distinct !DILexicalBlock(scope: !905, file: !3, line: 286, column: 6)
!943 = !DILocation(line: 286, column: 13, scope: !942)
!944 = !DILocation(line: 286, column: 20, scope: !942)
!945 = !DILocation(line: 286, column: 31, scope: !942)
!946 = !DILocation(line: 286, column: 34, scope: !942)
!947 = !DILocation(line: 286, column: 41, scope: !942)
!948 = !DILocation(line: 286, column: 48, scope: !942)
!949 = !DILocation(line: 286, column: 60, scope: !942)
!950 = !DILocation(line: 287, column: 7, scope: !942)
!951 = !DILocation(line: 287, column: 14, scope: !942)
!952 = !DILocation(line: 287, column: 21, scope: !942)
!953 = !DILocation(line: 287, column: 34, scope: !942)
!954 = !DILocation(line: 288, column: 7, scope: !942)
!955 = !DILocation(line: 288, column: 14, scope: !942)
!956 = !DILocation(line: 288, column: 18, scope: !942)
!957 = !DILocation(line: 288, column: 23, scope: !942)
!958 = !DILocation(line: 286, column: 6, scope: !905)
!959 = !DILocation(line: 289, column: 3, scope: !942)
!960 = !DILocation(line: 291, column: 10, scope: !905)
!961 = !DILocation(line: 291, column: 17, scope: !905)
!962 = !DILocation(line: 291, column: 21, scope: !905)
!963 = !DILocation(line: 291, column: 2, scope: !905)
!964 = !DILocation(line: 293, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !921, file: !3, line: 293, column: 7)
!966 = !DILocation(line: 293, column: 14, scope: !965)
!967 = !DILocation(line: 293, column: 18, scope: !965)
!968 = !DILocation(line: 293, column: 24, scope: !965)
!969 = !DILocation(line: 293, column: 32, scope: !965)
!970 = !DILocation(line: 293, column: 35, scope: !965)
!971 = !DILocation(line: 293, column: 42, scope: !965)
!972 = !DILocation(line: 293, column: 46, scope: !965)
!973 = !DILocation(line: 293, column: 54, scope: !965)
!974 = !DILocation(line: 293, column: 62, scope: !965)
!975 = !DILocation(line: 294, column: 7, scope: !965)
!976 = !DILocation(line: 294, column: 14, scope: !965)
!977 = !DILocation(line: 294, column: 18, scope: !965)
!978 = !DILocation(line: 294, column: 26, scope: !965)
!979 = !DILocation(line: 293, column: 7, scope: !921)
!980 = !DILocation(line: 295, column: 4, scope: !965)
!981 = !DILocation(line: 296, column: 3, scope: !921)
!982 = !DILocation(line: 298, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !921, file: !3, line: 298, column: 7)
!984 = !DILocation(line: 298, column: 14, scope: !983)
!985 = !DILocation(line: 298, column: 21, scope: !983)
!986 = !DILocation(line: 298, column: 32, scope: !983)
!987 = !DILocation(line: 299, column: 7, scope: !983)
!988 = !DILocation(line: 299, column: 14, scope: !983)
!989 = !DILocation(line: 299, column: 18, scope: !983)
!990 = !DILocation(line: 299, column: 24, scope: !983)
!991 = !DILocation(line: 298, column: 7, scope: !921)
!992 = !DILocation(line: 300, column: 4, scope: !983)
!993 = !DILocation(line: 301, column: 3, scope: !921)
!994 = !DILocation(line: 303, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !921, file: !3, line: 303, column: 7)
!996 = !DILocation(line: 303, column: 14, scope: !995)
!997 = !DILocation(line: 303, column: 21, scope: !995)
!998 = !DILocation(line: 303, column: 33, scope: !995)
!999 = !DILocation(line: 304, column: 7, scope: !995)
!1000 = !DILocation(line: 304, column: 14, scope: !995)
!1001 = !DILocation(line: 304, column: 18, scope: !995)
!1002 = !DILocation(line: 304, column: 26, scope: !995)
!1003 = !DILocation(line: 303, column: 7, scope: !921)
!1004 = !DILocation(line: 305, column: 4, scope: !995)
!1005 = !DILocation(line: 306, column: 3, scope: !921)
!1006 = !DILocation(line: 308, column: 3, scope: !920)
!1007 = !DILocation(line: 308, column: 3, scope: !919)
!1008 = !DILocation(line: 309, column: 11, scope: !917)
!1009 = !DILocation(line: 309, column: 11, scope: !918)
!1010 = !DILocation(line: 309, column: 9, scope: !918)
!1011 = !DILocation(line: 310, column: 12, scope: !918)
!1012 = !DILocation(line: 310, column: 18, scope: !918)
!1013 = !DILocation(line: 310, column: 22, scope: !918)
!1014 = !DILocation(line: 310, column: 4, scope: !918)
!1015 = !DILocation(line: 312, column: 9, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 312, column: 9)
!1017 = distinct !DILexicalBlock(scope: !918, file: !3, line: 310, column: 28)
!1018 = !DILocation(line: 312, column: 15, scope: !1016)
!1019 = !DILocation(line: 312, column: 19, scope: !1016)
!1020 = !DILocation(line: 312, column: 25, scope: !1016)
!1021 = !DILocation(line: 312, column: 9, scope: !1017)
!1022 = !DILocation(line: 313, column: 6, scope: !1016)
!1023 = !DILocation(line: 314, column: 5, scope: !1017)
!1024 = !DILocation(line: 316, column: 9, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 316, column: 9)
!1026 = !DILocation(line: 316, column: 15, scope: !1025)
!1027 = !DILocation(line: 316, column: 19, scope: !1025)
!1028 = !DILocation(line: 316, column: 25, scope: !1025)
!1029 = !DILocation(line: 316, column: 9, scope: !1017)
!1030 = !DILocation(line: 317, column: 6, scope: !1025)
!1031 = !DILocation(line: 318, column: 5, scope: !1017)
!1032 = !DILocation(line: 320, column: 5, scope: !1017)
!1033 = !DILocation(line: 322, column: 3, scope: !918)
!1034 = distinct !{!1034, !1006, !1035, !341, !342}
!1035 = !DILocation(line: 322, column: 3, scope: !920)
!1036 = !DILocation(line: 324, column: 3, scope: !926)
!1037 = !DILocation(line: 324, column: 3, scope: !925)
!1038 = !DILocation(line: 325, column: 11, scope: !923)
!1039 = !DILocation(line: 325, column: 11, scope: !924)
!1040 = !DILocation(line: 325, column: 9, scope: !924)
!1041 = !DILocation(line: 326, column: 12, scope: !924)
!1042 = !DILocation(line: 326, column: 18, scope: !924)
!1043 = !DILocation(line: 326, column: 22, scope: !924)
!1044 = !DILocation(line: 326, column: 4, scope: !924)
!1045 = !DILocation(line: 328, column: 9, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 328, column: 9)
!1047 = distinct !DILexicalBlock(scope: !924, file: !3, line: 326, column: 28)
!1048 = !DILocation(line: 328, column: 15, scope: !1046)
!1049 = !DILocation(line: 328, column: 19, scope: !1046)
!1050 = !DILocation(line: 328, column: 27, scope: !1046)
!1051 = !DILocation(line: 328, column: 9, scope: !1047)
!1052 = !DILocation(line: 329, column: 6, scope: !1046)
!1053 = !DILocation(line: 330, column: 5, scope: !1047)
!1054 = !DILocation(line: 332, column: 9, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 332, column: 9)
!1056 = !DILocation(line: 332, column: 15, scope: !1055)
!1057 = !DILocation(line: 332, column: 19, scope: !1055)
!1058 = !DILocation(line: 332, column: 27, scope: !1055)
!1059 = !DILocation(line: 332, column: 9, scope: !1047)
!1060 = !DILocation(line: 333, column: 6, scope: !1055)
!1061 = !DILocation(line: 334, column: 5, scope: !1047)
!1062 = !DILocation(line: 336, column: 5, scope: !1047)
!1063 = !DILocation(line: 338, column: 3, scope: !924)
!1064 = distinct !{!1064, !1036, !1065, !341, !342}
!1065 = !DILocation(line: 338, column: 3, scope: !926)
!1066 = !DILocation(line: 340, column: 3, scope: !921)
!1067 = !DILocation(line: 342, column: 3, scope: !921)
!1068 = !DILocation(line: 345, column: 2, scope: !905)
!1069 = !DILocation(line: 346, column: 1, scope: !905)
!1070 = distinct !DISubprogram(name: "rcu_read_lock", scope: !1071, file: !1071, line: 782, type: !1072, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1071 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null}
!1074 = !DILocation(line: 784, column: 2, scope: !1070)
!1075 = !DILocation(line: 786, column: 2, scope: !1070)
!1076 = !DILocation(line: 786, column: 2, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1070, file: !1071, line: 786, column: 2)
!1078 = !DILocation(line: 787, column: 2, scope: !1070)
!1079 = !DILocation(line: 787, column: 2, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1070, file: !1071, line: 787, column: 2)
!1081 = !DILocation(line: 789, column: 1, scope: !1070)
!1082 = distinct !DISubprogram(name: "netlbl_domhsh_search", scope: !3, file: !3, line: 137, type: !1083, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1087)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!45, !1085, !133}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1097, !1100}
!1088 = !DILocalVariable(name: "domain", arg: 1, scope: !1082, file: !3, line: 137, type: !1085)
!1089 = !DILocalVariable(name: "family", arg: 2, scope: !1082, file: !3, line: 138, type: !133)
!1090 = !DILocalVariable(name: "bkt", scope: !1082, file: !3, line: 140, type: !37)
!1091 = !DILocalVariable(name: "bkt_list", scope: !1082, file: !3, line: 141, type: !31)
!1092 = !DILocalVariable(name: "iter", scope: !1082, file: !3, line: 142, type: !45)
!1093 = !DILocalVariable(name: "__UNIQUE_ID_rcu550", scope: !1094, file: !3, line: 146, type: !27)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 146, column: 15)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 144, column: 22)
!1096 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 144, column: 6)
!1097 = !DILocalVariable(name: "__mptr", scope: !1098, file: !3, line: 147, type: !24)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 147, column: 3)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 147, column: 3)
!1100 = !DILocalVariable(name: "__mptr", scope: !1101, file: !3, line: 147, type: !24)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 147, column: 3)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 147, column: 3)
!1103 = !DILocation(line: 137, column: 64, scope: !1082)
!1104 = !DILocation(line: 138, column: 14, scope: !1082)
!1105 = !DILocation(line: 140, column: 2, scope: !1082)
!1106 = !DILocation(line: 140, column: 6, scope: !1082)
!1107 = !DILocation(line: 141, column: 2, scope: !1082)
!1108 = !DILocation(line: 141, column: 20, scope: !1082)
!1109 = !DILocation(line: 142, column: 2, scope: !1082)
!1110 = !DILocation(line: 142, column: 25, scope: !1082)
!1111 = !DILocation(line: 144, column: 6, scope: !1096)
!1112 = !DILocation(line: 144, column: 13, scope: !1096)
!1113 = !DILocation(line: 144, column: 6, scope: !1082)
!1114 = !DILocation(line: 145, column: 28, scope: !1095)
!1115 = !DILocation(line: 145, column: 9, scope: !1095)
!1116 = !DILocation(line: 145, column: 7, scope: !1095)
!1117 = !DILocation(line: 146, column: 15, scope: !1094)
!1118 = !DILocation(line: 146, column: 15, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 146, column: 15)
!1120 = !DILocation(line: 146, column: 15, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 146, column: 15)
!1122 = !DILocation(line: 146, column: 15, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 146, column: 15)
!1124 = !DILocation(line: 146, column: 15, scope: !1095)
!1125 = !DILocation(line: 146, column: 55, scope: !1095)
!1126 = !DILocation(line: 146, column: 59, scope: !1095)
!1127 = !DILocation(line: 146, column: 12, scope: !1095)
!1128 = !DILocation(line: 147, column: 3, scope: !1098)
!1129 = !DILocation(line: 147, column: 3, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 147, column: 3)
!1131 = !DILocation(line: 147, column: 3, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 147, column: 3)
!1133 = !DILocation(line: 147, column: 3, scope: !1099)
!1134 = !DILocation(line: 147, column: 3, scope: !1102)
!1135 = !DILocation(line: 149, column: 8, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 149, column: 8)
!1137 = !DILocation(line: 149, column: 14, scope: !1136)
!1138 = !DILocation(line: 149, column: 20, scope: !1136)
!1139 = !DILocation(line: 150, column: 28, scope: !1136)
!1140 = !DILocation(line: 150, column: 34, scope: !1136)
!1141 = !DILocation(line: 150, column: 42, scope: !1136)
!1142 = !DILocation(line: 150, column: 8, scope: !1136)
!1143 = !DILocation(line: 150, column: 50, scope: !1136)
!1144 = !DILocation(line: 151, column: 15, scope: !1136)
!1145 = !DILocation(line: 151, column: 21, scope: !1136)
!1146 = !DILocation(line: 151, column: 29, scope: !1136)
!1147 = !DILocation(line: 151, column: 8, scope: !1136)
!1148 = !DILocation(line: 151, column: 37, scope: !1136)
!1149 = !DILocation(line: 149, column: 8, scope: !1102)
!1150 = !DILocation(line: 152, column: 12, scope: !1136)
!1151 = !DILocation(line: 152, column: 5, scope: !1136)
!1152 = !DILocation(line: 151, column: 40, scope: !1136)
!1153 = !DILocation(line: 147, column: 3, scope: !1101)
!1154 = !DILocation(line: 147, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 147, column: 3)
!1156 = !DILocation(line: 147, column: 3, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 147, column: 3)
!1158 = distinct !{!1158, !1133, !1159, !341, !342}
!1159 = !DILocation(line: 152, column: 12, scope: !1099)
!1160 = !DILocation(line: 153, column: 2, scope: !1095)
!1161 = !DILocation(line: 155, column: 2, scope: !1082)
!1162 = !DILocation(line: 156, column: 1, scope: !1082)
!1163 = distinct !DISubprogram(name: "netlbl_domhsh_search_def", scope: !3, file: !3, line: 172, type: !1083, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1172}
!1165 = !DILocalVariable(name: "domain", arg: 1, scope: !1163, file: !3, line: 172, type: !1085)
!1166 = !DILocalVariable(name: "family", arg: 2, scope: !1163, file: !3, line: 173, type: !133)
!1167 = !DILocalVariable(name: "entry", scope: !1163, file: !3, line: 175, type: !45)
!1168 = !DILocalVariable(name: "__UNIQUE_ID_rcu554", scope: !1169, file: !3, line: 181, type: !45)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 181, column: 11)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 180, column: 48)
!1171 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 180, column: 6)
!1172 = !DILocalVariable(name: "__UNIQUE_ID_rcu556", scope: !1173, file: !3, line: 186, type: !45)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 186, column: 11)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 185, column: 49)
!1175 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 185, column: 6)
!1176 = !DILocation(line: 172, column: 68, scope: !1163)
!1177 = !DILocation(line: 173, column: 18, scope: !1163)
!1178 = !DILocation(line: 175, column: 2, scope: !1163)
!1179 = !DILocation(line: 175, column: 25, scope: !1163)
!1180 = !DILocation(line: 177, column: 31, scope: !1163)
!1181 = !DILocation(line: 177, column: 39, scope: !1163)
!1182 = !DILocation(line: 177, column: 10, scope: !1163)
!1183 = !DILocation(line: 177, column: 8, scope: !1163)
!1184 = !DILocation(line: 178, column: 6, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 178, column: 6)
!1186 = !DILocation(line: 178, column: 12, scope: !1185)
!1187 = !DILocation(line: 178, column: 6, scope: !1163)
!1188 = !DILocation(line: 179, column: 10, scope: !1185)
!1189 = !DILocation(line: 179, column: 3, scope: !1185)
!1190 = !DILocation(line: 180, column: 6, scope: !1171)
!1191 = !DILocation(line: 180, column: 13, scope: !1171)
!1192 = !DILocation(line: 180, column: 24, scope: !1171)
!1193 = !DILocation(line: 180, column: 27, scope: !1171)
!1194 = !DILocation(line: 180, column: 34, scope: !1171)
!1195 = !DILocation(line: 180, column: 6, scope: !1163)
!1196 = !DILocation(line: 181, column: 11, scope: !1169)
!1197 = !DILocation(line: 181, column: 11, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 181, column: 11)
!1199 = !DILocation(line: 181, column: 11, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 181, column: 11)
!1201 = !DILocation(line: 181, column: 11, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 181, column: 11)
!1203 = !DILocation(line: 181, column: 11, scope: !1170)
!1204 = !DILocation(line: 181, column: 9, scope: !1170)
!1205 = !DILocation(line: 182, column: 7, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 182, column: 7)
!1207 = !DILocation(line: 182, column: 13, scope: !1206)
!1208 = !DILocation(line: 182, column: 21, scope: !1206)
!1209 = !DILocation(line: 182, column: 24, scope: !1206)
!1210 = !DILocation(line: 182, column: 31, scope: !1206)
!1211 = !DILocation(line: 182, column: 7, scope: !1170)
!1212 = !DILocation(line: 183, column: 11, scope: !1206)
!1213 = !DILocation(line: 183, column: 4, scope: !1206)
!1214 = !DILocation(line: 184, column: 2, scope: !1170)
!1215 = !DILocation(line: 185, column: 6, scope: !1175)
!1216 = !DILocation(line: 185, column: 13, scope: !1175)
!1217 = !DILocation(line: 185, column: 25, scope: !1175)
!1218 = !DILocation(line: 185, column: 28, scope: !1175)
!1219 = !DILocation(line: 185, column: 35, scope: !1175)
!1220 = !DILocation(line: 185, column: 6, scope: !1163)
!1221 = !DILocation(line: 186, column: 11, scope: !1173)
!1222 = !DILocation(line: 186, column: 11, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 186, column: 11)
!1224 = !DILocation(line: 186, column: 11, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 186, column: 11)
!1226 = !DILocation(line: 186, column: 11, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 186, column: 11)
!1228 = !DILocation(line: 186, column: 11, scope: !1174)
!1229 = !DILocation(line: 186, column: 9, scope: !1174)
!1230 = !DILocation(line: 187, column: 7, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 187, column: 7)
!1232 = !DILocation(line: 187, column: 13, scope: !1231)
!1233 = !DILocation(line: 187, column: 21, scope: !1231)
!1234 = !DILocation(line: 187, column: 24, scope: !1231)
!1235 = !DILocation(line: 187, column: 31, scope: !1231)
!1236 = !DILocation(line: 187, column: 7, scope: !1174)
!1237 = !DILocation(line: 188, column: 11, scope: !1231)
!1238 = !DILocation(line: 188, column: 4, scope: !1231)
!1239 = !DILocation(line: 189, column: 2, scope: !1174)
!1240 = !DILocation(line: 191, column: 2, scope: !1163)
!1241 = !DILocation(line: 192, column: 1, scope: !1163)
!1242 = distinct !DISubprogram(name: "netlbl_domhsh_hash", scope: !3, file: !3, line: 105, type: !1243, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1245)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!37, !1085}
!1245 = !{!1246, !1247, !1248, !1249, !1250}
!1246 = !DILocalVariable(name: "key", arg: 1, scope: !1242, file: !3, line: 105, type: !1085)
!1247 = !DILocalVariable(name: "iter", scope: !1242, file: !3, line: 107, type: !37)
!1248 = !DILocalVariable(name: "val", scope: !1242, file: !3, line: 108, type: !37)
!1249 = !DILocalVariable(name: "len", scope: !1242, file: !3, line: 109, type: !37)
!1250 = !DILocalVariable(name: "__UNIQUE_ID_rcu548", scope: !1251, file: !3, line: 116, type: !27)
!1251 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 116, column: 16)
!1252 = !DILocation(line: 105, column: 43, scope: !1242)
!1253 = !DILocation(line: 107, column: 2, scope: !1242)
!1254 = !DILocation(line: 107, column: 6, scope: !1242)
!1255 = !DILocation(line: 108, column: 2, scope: !1242)
!1256 = !DILocation(line: 108, column: 6, scope: !1242)
!1257 = !DILocation(line: 109, column: 2, scope: !1242)
!1258 = !DILocation(line: 109, column: 6, scope: !1242)
!1259 = !DILocation(line: 114, column: 12, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 114, column: 2)
!1261 = !DILocation(line: 114, column: 21, scope: !1260)
!1262 = !DILocation(line: 114, column: 39, scope: !1260)
!1263 = !DILocation(line: 114, column: 32, scope: !1260)
!1264 = !DILocation(line: 114, column: 30, scope: !1260)
!1265 = !DILocation(line: 114, column: 7, scope: !1260)
!1266 = !DILocation(line: 114, column: 45, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 114, column: 2)
!1268 = !DILocation(line: 114, column: 52, scope: !1267)
!1269 = !DILocation(line: 114, column: 50, scope: !1267)
!1270 = !DILocation(line: 114, column: 2, scope: !1260)
!1271 = !DILocation(line: 115, column: 10, scope: !1267)
!1272 = !DILocation(line: 115, column: 14, scope: !1267)
!1273 = !DILocation(line: 115, column: 22, scope: !1267)
!1274 = !DILocation(line: 115, column: 26, scope: !1267)
!1275 = !DILocation(line: 115, column: 19, scope: !1267)
!1276 = !DILocation(line: 115, column: 55, scope: !1267)
!1277 = !DILocation(line: 115, column: 59, scope: !1267)
!1278 = !DILocation(line: 115, column: 53, scope: !1267)
!1279 = !DILocation(line: 115, column: 7, scope: !1267)
!1280 = !DILocation(line: 115, column: 3, scope: !1267)
!1281 = !DILocation(line: 114, column: 61, scope: !1267)
!1282 = !DILocation(line: 114, column: 2, scope: !1267)
!1283 = distinct !{!1283, !1270, !1284, !341, !342}
!1284 = !DILocation(line: 115, column: 63, scope: !1260)
!1285 = !DILocation(line: 116, column: 9, scope: !1242)
!1286 = !DILocation(line: 116, column: 16, scope: !1251)
!1287 = !DILocation(line: 116, column: 16, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 116, column: 16)
!1289 = !DILocation(line: 116, column: 16, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 116, column: 16)
!1291 = !DILocation(line: 116, column: 16, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 116, column: 16)
!1293 = !DILocation(line: 116, column: 16, scope: !1242)
!1294 = !DILocation(line: 116, column: 56, scope: !1242)
!1295 = !DILocation(line: 116, column: 61, scope: !1242)
!1296 = !DILocation(line: 116, column: 13, scope: !1242)
!1297 = !DILocation(line: 117, column: 1, scope: !1242)
!1298 = !DILocation(line: 116, column: 2, scope: !1242)
!1299 = distinct !DISubprogram(name: "list_add_tail_rcu", scope: !1300, file: !1300, line: 125, type: !1301, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1303)
!1300 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !31, !31}
!1303 = !{!1304, !1305}
!1304 = !DILocalVariable(name: "new", arg: 1, scope: !1299, file: !1300, line: 125, type: !31)
!1305 = !DILocalVariable(name: "head", arg: 2, scope: !1299, file: !1300, line: 126, type: !31)
!1306 = !DILocation(line: 125, column: 56, scope: !1299)
!1307 = !DILocation(line: 126, column: 24, scope: !1299)
!1308 = !DILocation(line: 128, column: 17, scope: !1299)
!1309 = !DILocation(line: 128, column: 22, scope: !1299)
!1310 = !DILocation(line: 128, column: 28, scope: !1299)
!1311 = !DILocation(line: 128, column: 34, scope: !1299)
!1312 = !DILocation(line: 128, column: 2, scope: !1299)
!1313 = !DILocation(line: 129, column: 1, scope: !1299)
!1314 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !373, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1315)
!1315 = !{!1316, !1317}
!1316 = !DILocalVariable(name: "size", arg: 1, scope: !1314, file: !12, line: 719, type: !375)
!1317 = !DILocalVariable(name: "flags", arg: 2, scope: !1314, file: !12, line: 719, type: !22)
!1318 = !DILocation(line: 719, column: 52, scope: !1314)
!1319 = !DILocation(line: 719, column: 64, scope: !1314)
!1320 = !DILocation(line: 721, column: 17, scope: !1314)
!1321 = !DILocation(line: 721, column: 23, scope: !1314)
!1322 = !DILocation(line: 721, column: 29, scope: !1314)
!1323 = !DILocation(line: 721, column: 9, scope: !1314)
!1324 = !DILocation(line: 721, column: 2, scope: !1314)
!1325 = distinct !DISubprogram(name: "__af4list_valid_rcu", scope: !149, file: !149, line: 70, type: !1326, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1328)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!192, !31, !31}
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1335, !1338}
!1329 = !DILocalVariable(name: "s", arg: 1, scope: !1325, file: !149, line: 70, type: !31)
!1330 = !DILocalVariable(name: "h", arg: 2, scope: !1325, file: !149, line: 71, type: !31)
!1331 = !DILocalVariable(name: "i", scope: !1325, file: !149, line: 73, type: !31)
!1332 = !DILocalVariable(name: "n", scope: !1325, file: !149, line: 74, type: !192)
!1333 = !DILocalVariable(name: "__mptr", scope: !1334, file: !149, line: 74, type: !24)
!1334 = distinct !DILexicalBlock(scope: !1325, file: !149, line: 74, column: 29)
!1335 = !DILocalVariable(name: "__UNIQUE_ID_rcu544", scope: !1336, file: !149, line: 76, type: !31)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !149, line: 76, column: 7)
!1337 = distinct !DILexicalBlock(scope: !1325, file: !149, line: 75, column: 30)
!1338 = !DILocalVariable(name: "__mptr", scope: !1339, file: !149, line: 77, type: !24)
!1339 = distinct !DILexicalBlock(scope: !1337, file: !149, line: 77, column: 7)
!1340 = !DILocation(line: 70, column: 76, scope: !1325)
!1341 = !DILocation(line: 71, column: 27, scope: !1325)
!1342 = !DILocation(line: 73, column: 2, scope: !1325)
!1343 = !DILocation(line: 73, column: 20, scope: !1325)
!1344 = !DILocation(line: 73, column: 24, scope: !1325)
!1345 = !DILocation(line: 74, column: 2, scope: !1325)
!1346 = !DILocation(line: 74, column: 25, scope: !1325)
!1347 = !DILocation(line: 74, column: 29, scope: !1334)
!1348 = !DILocation(line: 74, column: 29, scope: !1325)
!1349 = !DILocation(line: 75, column: 2, scope: !1325)
!1350 = !DILocation(line: 75, column: 9, scope: !1325)
!1351 = !DILocation(line: 75, column: 14, scope: !1325)
!1352 = !DILocation(line: 75, column: 11, scope: !1325)
!1353 = !DILocation(line: 75, column: 16, scope: !1325)
!1354 = !DILocation(line: 75, column: 20, scope: !1325)
!1355 = !DILocation(line: 75, column: 23, scope: !1325)
!1356 = !DILocation(line: 75, column: 19, scope: !1325)
!1357 = !DILocation(line: 0, scope: !1325)
!1358 = !DILocation(line: 76, column: 7, scope: !1336)
!1359 = !DILocation(line: 76, column: 7, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1336, file: !149, line: 76, column: 7)
!1361 = !DILocation(line: 76, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1360, file: !149, line: 76, column: 7)
!1363 = !DILocation(line: 76, column: 7, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1336, file: !149, line: 76, column: 7)
!1365 = !DILocation(line: 76, column: 7, scope: !1337)
!1366 = !DILocation(line: 76, column: 5, scope: !1337)
!1367 = !DILocation(line: 77, column: 7, scope: !1339)
!1368 = !DILocation(line: 77, column: 7, scope: !1337)
!1369 = !DILocation(line: 77, column: 5, scope: !1337)
!1370 = distinct !{!1370, !1349, !1371, !341, !342}
!1371 = !DILocation(line: 78, column: 2, scope: !1325)
!1372 = !DILocation(line: 79, column: 9, scope: !1325)
!1373 = !DILocation(line: 80, column: 1, scope: !1325)
!1374 = !DILocation(line: 79, column: 2, scope: !1325)
!1375 = distinct !DISubprogram(name: "netlbl_domhsh_audit_add", scope: !3, file: !3, line: 208, type: !1376, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1378)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !45, !192, !193, !111, !481}
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1388, !1389, !1390, !1391, !1396, !1398, !1401}
!1379 = !DILocalVariable(name: "entry", arg: 1, scope: !1375, file: !3, line: 208, type: !45)
!1380 = !DILocalVariable(name: "addr4", arg: 2, scope: !1375, file: !3, line: 209, type: !192)
!1381 = !DILocalVariable(name: "addr6", arg: 3, scope: !1375, file: !3, line: 210, type: !193)
!1382 = !DILocalVariable(name: "result", arg: 4, scope: !1375, file: !3, line: 211, type: !111)
!1383 = !DILocalVariable(name: "audit_info", arg: 5, scope: !1375, file: !3, line: 212, type: !481)
!1384 = !DILocalVariable(name: "audit_buf", scope: !1375, file: !3, line: 214, type: !1385)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_buffer", file: !1387, line: 28, flags: DIFlagFwdDecl)
!1387 = !DIFile(filename: "./include/linux/audit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51efc630de17afc22cb4c49faf2d3079")
!1388 = !DILocalVariable(name: "cipsov4", scope: !1375, file: !3, line: 215, type: !66)
!1389 = !DILocalVariable(name: "calipso", scope: !1375, file: !3, line: 216, type: !123)
!1390 = !DILocalVariable(name: "type", scope: !1375, file: !3, line: 217, type: !37)
!1391 = !DILocalVariable(name: "map4", scope: !1392, file: !3, line: 224, type: !143)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 223, column: 22)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 223, column: 7)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 220, column: 25)
!1395 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 220, column: 6)
!1396 = !DILocalVariable(name: "__mptr", scope: !1397, file: !3, line: 225, type: !24)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 225, column: 11)
!1398 = !DILocalVariable(name: "map6", scope: !1399, file: !3, line: 232, type: !157)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 231, column: 29)
!1400 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 231, column: 14)
!1401 = !DILocalVariable(name: "__mptr", scope: !1402, file: !3, line: 233, type: !24)
!1402 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 233, column: 11)
!1403 = !DILocation(line: 208, column: 60, scope: !1375)
!1404 = !DILocation(line: 209, column: 32, scope: !1375)
!1405 = !DILocation(line: 210, column: 32, scope: !1375)
!1406 = !DILocation(line: 211, column: 13, scope: !1375)
!1407 = !DILocation(line: 212, column: 30, scope: !1375)
!1408 = !DILocation(line: 214, column: 2, scope: !1375)
!1409 = !DILocation(line: 214, column: 23, scope: !1375)
!1410 = !DILocation(line: 215, column: 2, scope: !1375)
!1411 = !DILocation(line: 215, column: 23, scope: !1375)
!1412 = !DILocation(line: 216, column: 2, scope: !1375)
!1413 = !DILocation(line: 216, column: 22, scope: !1375)
!1414 = !DILocation(line: 217, column: 2, scope: !1375)
!1415 = !DILocation(line: 217, column: 6, scope: !1375)
!1416 = !DILocation(line: 219, column: 59, scope: !1375)
!1417 = !DILocation(line: 219, column: 14, scope: !1375)
!1418 = !DILocation(line: 219, column: 12, scope: !1375)
!1419 = !DILocation(line: 220, column: 6, scope: !1395)
!1420 = !DILocation(line: 220, column: 16, scope: !1395)
!1421 = !DILocation(line: 220, column: 6, scope: !1375)
!1422 = !DILocation(line: 221, column: 20, scope: !1394)
!1423 = !DILocation(line: 222, column: 6, scope: !1394)
!1424 = !DILocation(line: 222, column: 13, scope: !1394)
!1425 = !DILocation(line: 222, column: 22, scope: !1394)
!1426 = !DILocation(line: 222, column: 29, scope: !1394)
!1427 = !DILocation(line: 221, column: 3, scope: !1394)
!1428 = !DILocation(line: 223, column: 7, scope: !1393)
!1429 = !DILocation(line: 223, column: 13, scope: !1393)
!1430 = !DILocation(line: 223, column: 7, scope: !1394)
!1431 = !DILocation(line: 224, column: 4, scope: !1392)
!1432 = !DILocation(line: 224, column: 32, scope: !1392)
!1433 = !DILocation(line: 225, column: 11, scope: !1397)
!1434 = !DILocation(line: 225, column: 11, scope: !1392)
!1435 = !DILocation(line: 225, column: 9, scope: !1392)
!1436 = !DILocation(line: 226, column: 11, scope: !1392)
!1437 = !DILocation(line: 226, column: 17, scope: !1392)
!1438 = !DILocation(line: 226, column: 21, scope: !1392)
!1439 = !DILocation(line: 226, column: 9, scope: !1392)
!1440 = !DILocation(line: 227, column: 14, scope: !1392)
!1441 = !DILocation(line: 227, column: 20, scope: !1392)
!1442 = !DILocation(line: 227, column: 24, scope: !1392)
!1443 = !DILocation(line: 227, column: 12, scope: !1392)
!1444 = !DILocation(line: 228, column: 30, scope: !1392)
!1445 = !DILocation(line: 229, column: 9, scope: !1392)
!1446 = !DILocation(line: 229, column: 16, scope: !1392)
!1447 = !DILocation(line: 229, column: 22, scope: !1392)
!1448 = !DILocation(line: 229, column: 29, scope: !1392)
!1449 = !DILocation(line: 228, column: 4, scope: !1392)
!1450 = !DILocation(line: 231, column: 3, scope: !1393)
!1451 = !DILocation(line: 231, column: 3, scope: !1392)
!1452 = !DILocation(line: 231, column: 14, scope: !1400)
!1453 = !DILocation(line: 231, column: 20, scope: !1400)
!1454 = !DILocation(line: 231, column: 14, scope: !1393)
!1455 = !DILocation(line: 232, column: 4, scope: !1399)
!1456 = !DILocation(line: 232, column: 32, scope: !1399)
!1457 = !DILocation(line: 233, column: 11, scope: !1402)
!1458 = !DILocation(line: 233, column: 11, scope: !1399)
!1459 = !DILocation(line: 233, column: 9, scope: !1399)
!1460 = !DILocation(line: 234, column: 11, scope: !1399)
!1461 = !DILocation(line: 234, column: 17, scope: !1399)
!1462 = !DILocation(line: 234, column: 21, scope: !1399)
!1463 = !DILocation(line: 234, column: 9, scope: !1399)
!1464 = !DILocation(line: 235, column: 14, scope: !1399)
!1465 = !DILocation(line: 235, column: 20, scope: !1399)
!1466 = !DILocation(line: 235, column: 24, scope: !1399)
!1467 = !DILocation(line: 235, column: 12, scope: !1399)
!1468 = !DILocation(line: 236, column: 30, scope: !1399)
!1469 = !DILocation(line: 237, column: 10, scope: !1399)
!1470 = !DILocation(line: 237, column: 17, scope: !1399)
!1471 = !DILocation(line: 237, column: 24, scope: !1399)
!1472 = !DILocation(line: 237, column: 31, scope: !1399)
!1473 = !DILocation(line: 236, column: 4, scope: !1399)
!1474 = !DILocation(line: 239, column: 3, scope: !1400)
!1475 = !DILocation(line: 239, column: 3, scope: !1399)
!1476 = !DILocation(line: 240, column: 11, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 239, column: 10)
!1478 = !DILocation(line: 240, column: 18, scope: !1477)
!1479 = !DILocation(line: 240, column: 22, scope: !1477)
!1480 = !DILocation(line: 240, column: 9, scope: !1477)
!1481 = !DILocation(line: 241, column: 14, scope: !1477)
!1482 = !DILocation(line: 241, column: 21, scope: !1477)
!1483 = !DILocation(line: 241, column: 25, scope: !1477)
!1484 = !DILocation(line: 241, column: 12, scope: !1477)
!1485 = !DILocation(line: 242, column: 14, scope: !1477)
!1486 = !DILocation(line: 242, column: 21, scope: !1477)
!1487 = !DILocation(line: 242, column: 25, scope: !1477)
!1488 = !DILocation(line: 242, column: 12, scope: !1477)
!1489 = !DILocation(line: 244, column: 11, scope: !1394)
!1490 = !DILocation(line: 244, column: 3, scope: !1394)
!1491 = !DILocation(line: 246, column: 21, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 244, column: 17)
!1493 = !DILocation(line: 246, column: 4, scope: !1492)
!1494 = !DILocation(line: 247, column: 4, scope: !1492)
!1495 = !DILocation(line: 249, column: 4, scope: !1492)
!1496 = !DILocation(line: 249, column: 4, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 249, column: 4)
!1498 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 249, column: 4)
!1499 = !DILocation(line: 249, column: 4, scope: !1498)
!1500 = !DILocation(line: 249, column: 4, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 249, column: 4)
!1502 = !DILocation(line: 249, column: 4, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 249, column: 4)
!1504 = !DILocation(line: 249, column: 4, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 249, column: 4)
!1506 = !{i64 2158046611, i64 2158046640, i64 2158046686, i64 2158046744, i64 2158046798, i64 2158046852, i64 2158046907, i64 2158046938}
!1507 = !DILocation(line: 250, column: 21, scope: !1492)
!1508 = !DILocation(line: 252, column: 7, scope: !1492)
!1509 = !DILocation(line: 252, column: 16, scope: !1492)
!1510 = !DILocation(line: 250, column: 4, scope: !1492)
!1511 = !DILocation(line: 253, column: 4, scope: !1492)
!1512 = !DILocation(line: 255, column: 4, scope: !1492)
!1513 = !DILocation(line: 255, column: 4, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 255, column: 4)
!1515 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 255, column: 4)
!1516 = !DILocation(line: 255, column: 4, scope: !1515)
!1517 = !DILocation(line: 255, column: 4, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 255, column: 4)
!1519 = !DILocation(line: 255, column: 4, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 255, column: 4)
!1521 = !DILocation(line: 255, column: 4, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 255, column: 4)
!1523 = !{i64 2158047642, i64 2158047671, i64 2158047717, i64 2158047775, i64 2158047829, i64 2158047883, i64 2158047938, i64 2158047969}
!1524 = !DILocation(line: 256, column: 21, scope: !1492)
!1525 = !DILocation(line: 258, column: 7, scope: !1492)
!1526 = !DILocation(line: 258, column: 16, scope: !1492)
!1527 = !DILocation(line: 256, column: 4, scope: !1492)
!1528 = !DILocation(line: 259, column: 4, scope: !1492)
!1529 = !DILocation(line: 261, column: 20, scope: !1394)
!1530 = !DILocation(line: 261, column: 42, scope: !1394)
!1531 = !DILocation(line: 261, column: 49, scope: !1394)
!1532 = !DILocation(line: 261, column: 3, scope: !1394)
!1533 = !DILocation(line: 262, column: 17, scope: !1394)
!1534 = !DILocation(line: 262, column: 3, scope: !1394)
!1535 = !DILocation(line: 263, column: 2, scope: !1394)
!1536 = !DILocation(line: 264, column: 1, scope: !1375)
!1537 = distinct !DISubprogram(name: "__af6list_valid_rcu", scope: !149, file: !149, line: 137, type: !1538, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1540)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!193, !31, !31}
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1547, !1550}
!1541 = !DILocalVariable(name: "s", arg: 1, scope: !1537, file: !149, line: 137, type: !31)
!1542 = !DILocalVariable(name: "h", arg: 2, scope: !1537, file: !149, line: 138, type: !31)
!1543 = !DILocalVariable(name: "i", scope: !1537, file: !149, line: 140, type: !31)
!1544 = !DILocalVariable(name: "n", scope: !1537, file: !149, line: 141, type: !193)
!1545 = !DILocalVariable(name: "__mptr", scope: !1546, file: !149, line: 141, type: !24)
!1546 = distinct !DILexicalBlock(scope: !1537, file: !149, line: 141, column: 29)
!1547 = !DILocalVariable(name: "__UNIQUE_ID_rcu546", scope: !1548, file: !149, line: 143, type: !31)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !149, line: 143, column: 7)
!1549 = distinct !DILexicalBlock(scope: !1537, file: !149, line: 142, column: 30)
!1550 = !DILocalVariable(name: "__mptr", scope: !1551, file: !149, line: 144, type: !24)
!1551 = distinct !DILexicalBlock(scope: !1549, file: !149, line: 144, column: 7)
!1552 = !DILocation(line: 137, column: 76, scope: !1537)
!1553 = !DILocation(line: 138, column: 27, scope: !1537)
!1554 = !DILocation(line: 140, column: 2, scope: !1537)
!1555 = !DILocation(line: 140, column: 20, scope: !1537)
!1556 = !DILocation(line: 140, column: 24, scope: !1537)
!1557 = !DILocation(line: 141, column: 2, scope: !1537)
!1558 = !DILocation(line: 141, column: 25, scope: !1537)
!1559 = !DILocation(line: 141, column: 29, scope: !1546)
!1560 = !DILocation(line: 141, column: 29, scope: !1537)
!1561 = !DILocation(line: 142, column: 2, scope: !1537)
!1562 = !DILocation(line: 142, column: 9, scope: !1537)
!1563 = !DILocation(line: 142, column: 14, scope: !1537)
!1564 = !DILocation(line: 142, column: 11, scope: !1537)
!1565 = !DILocation(line: 142, column: 16, scope: !1537)
!1566 = !DILocation(line: 142, column: 20, scope: !1537)
!1567 = !DILocation(line: 142, column: 23, scope: !1537)
!1568 = !DILocation(line: 142, column: 19, scope: !1537)
!1569 = !DILocation(line: 0, scope: !1537)
!1570 = !DILocation(line: 143, column: 7, scope: !1548)
!1571 = !DILocation(line: 143, column: 7, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1548, file: !149, line: 143, column: 7)
!1573 = !DILocation(line: 143, column: 7, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1572, file: !149, line: 143, column: 7)
!1575 = !DILocation(line: 143, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1548, file: !149, line: 143, column: 7)
!1577 = !DILocation(line: 143, column: 7, scope: !1549)
!1578 = !DILocation(line: 143, column: 5, scope: !1549)
!1579 = !DILocation(line: 144, column: 7, scope: !1551)
!1580 = !DILocation(line: 144, column: 7, scope: !1549)
!1581 = !DILocation(line: 144, column: 5, scope: !1549)
!1582 = distinct !{!1582, !1561, !1583, !341, !342}
!1583 = !DILocation(line: 145, column: 2, scope: !1537)
!1584 = !DILocation(line: 146, column: 9, scope: !1537)
!1585 = !DILocation(line: 147, column: 1, scope: !1537)
!1586 = !DILocation(line: 146, column: 2, scope: !1537)
!1587 = !DISubprogram(name: "netlbl_af4list_search_exact", scope: !149, file: !149, line: 105, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!192, !152, !152, !31}
!1590 = !DISubprogram(name: "netlbl_af6list_search_exact", scope: !149, file: !149, line: 173, type: !1591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!193, !1593, !1593, !31}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!1595 = distinct !DISubprogram(name: "__af4list_valid", scope: !149, file: !149, line: 58, type: !1326, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1603}
!1597 = !DILocalVariable(name: "s", arg: 1, scope: !1595, file: !149, line: 58, type: !31)
!1598 = !DILocalVariable(name: "h", arg: 2, scope: !1595, file: !149, line: 59, type: !31)
!1599 = !DILocalVariable(name: "i", scope: !1595, file: !149, line: 61, type: !31)
!1600 = !DILocalVariable(name: "n", scope: !1595, file: !149, line: 62, type: !192)
!1601 = !DILocalVariable(name: "__mptr", scope: !1602, file: !149, line: 62, type: !24)
!1602 = distinct !DILexicalBlock(scope: !1595, file: !149, line: 62, column: 29)
!1603 = !DILocalVariable(name: "__mptr", scope: !1604, file: !149, line: 65, type: !24)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !149, line: 65, column: 7)
!1605 = distinct !DILexicalBlock(scope: !1595, file: !149, line: 63, column: 30)
!1606 = !DILocation(line: 58, column: 72, scope: !1595)
!1607 = !DILocation(line: 59, column: 30, scope: !1595)
!1608 = !DILocation(line: 61, column: 2, scope: !1595)
!1609 = !DILocation(line: 61, column: 20, scope: !1595)
!1610 = !DILocation(line: 61, column: 24, scope: !1595)
!1611 = !DILocation(line: 62, column: 2, scope: !1595)
!1612 = !DILocation(line: 62, column: 25, scope: !1595)
!1613 = !DILocation(line: 62, column: 29, scope: !1602)
!1614 = !DILocation(line: 62, column: 29, scope: !1595)
!1615 = !DILocation(line: 63, column: 2, scope: !1595)
!1616 = !DILocation(line: 63, column: 9, scope: !1595)
!1617 = !DILocation(line: 63, column: 14, scope: !1595)
!1618 = !DILocation(line: 63, column: 11, scope: !1595)
!1619 = !DILocation(line: 63, column: 16, scope: !1595)
!1620 = !DILocation(line: 63, column: 20, scope: !1595)
!1621 = !DILocation(line: 63, column: 23, scope: !1595)
!1622 = !DILocation(line: 63, column: 19, scope: !1595)
!1623 = !DILocation(line: 0, scope: !1595)
!1624 = !DILocation(line: 64, column: 7, scope: !1605)
!1625 = !DILocation(line: 64, column: 10, scope: !1605)
!1626 = !DILocation(line: 64, column: 5, scope: !1605)
!1627 = !DILocation(line: 65, column: 7, scope: !1604)
!1628 = !DILocation(line: 65, column: 7, scope: !1605)
!1629 = !DILocation(line: 65, column: 5, scope: !1605)
!1630 = distinct !{!1630, !1615, !1631, !341, !342}
!1631 = !DILocation(line: 66, column: 2, scope: !1595)
!1632 = !DILocation(line: 67, column: 9, scope: !1595)
!1633 = !DILocation(line: 68, column: 1, scope: !1595)
!1634 = !DILocation(line: 67, column: 2, scope: !1595)
!1635 = !DISubprogram(name: "netlbl_af4list_remove_entry", scope: !149, file: !149, line: 102, type: !1636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !192}
!1638 = !DISubprogram(name: "netlbl_af4list_add", scope: !149, file: !149, line: 98, type: !1639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!111, !192, !31}
!1641 = distinct !DISubprogram(name: "__af6list_valid", scope: !149, file: !149, line: 125, type: !1538, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1642)
!1642 = !{!1643, !1644, !1645, !1646, !1647, !1649}
!1643 = !DILocalVariable(name: "s", arg: 1, scope: !1641, file: !149, line: 125, type: !31)
!1644 = !DILocalVariable(name: "h", arg: 2, scope: !1641, file: !149, line: 126, type: !31)
!1645 = !DILocalVariable(name: "i", scope: !1641, file: !149, line: 128, type: !31)
!1646 = !DILocalVariable(name: "n", scope: !1641, file: !149, line: 129, type: !193)
!1647 = !DILocalVariable(name: "__mptr", scope: !1648, file: !149, line: 129, type: !24)
!1648 = distinct !DILexicalBlock(scope: !1641, file: !149, line: 129, column: 29)
!1649 = !DILocalVariable(name: "__mptr", scope: !1650, file: !149, line: 132, type: !24)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !149, line: 132, column: 7)
!1651 = distinct !DILexicalBlock(scope: !1641, file: !149, line: 130, column: 30)
!1652 = !DILocation(line: 125, column: 72, scope: !1641)
!1653 = !DILocation(line: 126, column: 30, scope: !1641)
!1654 = !DILocation(line: 128, column: 2, scope: !1641)
!1655 = !DILocation(line: 128, column: 20, scope: !1641)
!1656 = !DILocation(line: 128, column: 24, scope: !1641)
!1657 = !DILocation(line: 129, column: 2, scope: !1641)
!1658 = !DILocation(line: 129, column: 25, scope: !1641)
!1659 = !DILocation(line: 129, column: 29, scope: !1648)
!1660 = !DILocation(line: 129, column: 29, scope: !1641)
!1661 = !DILocation(line: 130, column: 2, scope: !1641)
!1662 = !DILocation(line: 130, column: 9, scope: !1641)
!1663 = !DILocation(line: 130, column: 14, scope: !1641)
!1664 = !DILocation(line: 130, column: 11, scope: !1641)
!1665 = !DILocation(line: 130, column: 16, scope: !1641)
!1666 = !DILocation(line: 130, column: 20, scope: !1641)
!1667 = !DILocation(line: 130, column: 23, scope: !1641)
!1668 = !DILocation(line: 130, column: 19, scope: !1641)
!1669 = !DILocation(line: 0, scope: !1641)
!1670 = !DILocation(line: 131, column: 7, scope: !1651)
!1671 = !DILocation(line: 131, column: 10, scope: !1651)
!1672 = !DILocation(line: 131, column: 5, scope: !1651)
!1673 = !DILocation(line: 132, column: 7, scope: !1650)
!1674 = !DILocation(line: 132, column: 7, scope: !1651)
!1675 = !DILocation(line: 132, column: 5, scope: !1651)
!1676 = distinct !{!1676, !1661, !1677, !341, !342}
!1677 = !DILocation(line: 133, column: 2, scope: !1641)
!1678 = !DILocation(line: 134, column: 9, scope: !1641)
!1679 = !DILocation(line: 135, column: 1, scope: !1641)
!1680 = !DILocation(line: 134, column: 2, scope: !1641)
!1681 = !DISubprogram(name: "netlbl_af6list_remove_entry", scope: !149, file: !149, line: 170, type: !1682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{null, !193}
!1684 = !DISubprogram(name: "netlbl_af6list_add", scope: !149, file: !149, line: 165, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!111, !193, !31}
!1687 = distinct !DISubprogram(name: "netlbl_domhsh_free_entry", scope: !3, file: !3, line: 64, type: !120, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1688)
!1688 = !{!1689, !1690, !1691, !1692, !1693, !1694, !1695, !1697, !1704}
!1689 = !DILocalVariable(name: "entry", arg: 1, scope: !1687, file: !3, line: 64, type: !117)
!1690 = !DILocalVariable(name: "ptr", scope: !1687, file: !3, line: 66, type: !45)
!1691 = !DILocalVariable(name: "iter4", scope: !1687, file: !3, line: 67, type: !192)
!1692 = !DILocalVariable(name: "tmp4", scope: !1687, file: !3, line: 68, type: !192)
!1693 = !DILocalVariable(name: "iter6", scope: !1687, file: !3, line: 70, type: !193)
!1694 = !DILocalVariable(name: "tmp6", scope: !1687, file: !3, line: 71, type: !193)
!1695 = !DILocalVariable(name: "__mptr", scope: !1696, file: !3, line: 74, type: !24)
!1696 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 74, column: 8)
!1697 = !DILocalVariable(name: "__mptr", scope: !1698, file: !3, line: 79, type: !24)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 79, column: 10)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 77, column: 36)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 76, column: 3)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 76, column: 3)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 75, column: 49)
!1703 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 75, column: 6)
!1704 = !DILocalVariable(name: "__mptr", scope: !1705, file: !3, line: 85, type: !24)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 85, column: 10)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 83, column: 36)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 82, column: 3)
!1708 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 82, column: 3)
!1709 = !DILocation(line: 64, column: 55, scope: !1687)
!1710 = !DILocation(line: 66, column: 2, scope: !1687)
!1711 = !DILocation(line: 66, column: 25, scope: !1687)
!1712 = !DILocation(line: 67, column: 2, scope: !1687)
!1713 = !DILocation(line: 67, column: 25, scope: !1687)
!1714 = !DILocation(line: 68, column: 2, scope: !1687)
!1715 = !DILocation(line: 68, column: 25, scope: !1687)
!1716 = !DILocation(line: 70, column: 2, scope: !1687)
!1717 = !DILocation(line: 70, column: 25, scope: !1687)
!1718 = !DILocation(line: 71, column: 2, scope: !1687)
!1719 = !DILocation(line: 71, column: 25, scope: !1687)
!1720 = !DILocation(line: 74, column: 8, scope: !1696)
!1721 = !DILocation(line: 74, column: 8, scope: !1687)
!1722 = !DILocation(line: 74, column: 6, scope: !1687)
!1723 = !DILocation(line: 75, column: 6, scope: !1703)
!1724 = !DILocation(line: 75, column: 11, scope: !1703)
!1725 = !DILocation(line: 75, column: 15, scope: !1703)
!1726 = !DILocation(line: 75, column: 20, scope: !1703)
!1727 = !DILocation(line: 75, column: 6, scope: !1687)
!1728 = !DILocation(line: 76, column: 3, scope: !1701)
!1729 = !DILocation(line: 76, column: 3, scope: !1700)
!1730 = !DILocation(line: 78, column: 32, scope: !1699)
!1731 = !DILocation(line: 78, column: 4, scope: !1699)
!1732 = !DILocation(line: 79, column: 10, scope: !1698)
!1733 = !DILocation(line: 79, column: 10, scope: !1699)
!1734 = !DILocation(line: 79, column: 4, scope: !1699)
!1735 = !DILocation(line: 80, column: 3, scope: !1699)
!1736 = distinct !{!1736, !1728, !1737, !341, !342}
!1737 = !DILocation(line: 80, column: 3, scope: !1701)
!1738 = !DILocation(line: 82, column: 3, scope: !1708)
!1739 = !DILocation(line: 82, column: 3, scope: !1707)
!1740 = !DILocation(line: 84, column: 32, scope: !1706)
!1741 = !DILocation(line: 84, column: 4, scope: !1706)
!1742 = !DILocation(line: 85, column: 10, scope: !1705)
!1743 = !DILocation(line: 85, column: 10, scope: !1706)
!1744 = !DILocation(line: 85, column: 4, scope: !1706)
!1745 = !DILocation(line: 86, column: 3, scope: !1706)
!1746 = distinct !{!1746, !1738, !1747, !341, !342}
!1747 = !DILocation(line: 86, column: 3, scope: !1708)
!1748 = !DILocation(line: 88, column: 9, scope: !1702)
!1749 = !DILocation(line: 88, column: 14, scope: !1702)
!1750 = !DILocation(line: 88, column: 18, scope: !1702)
!1751 = !DILocation(line: 88, column: 3, scope: !1702)
!1752 = !DILocation(line: 89, column: 2, scope: !1702)
!1753 = !DILocation(line: 90, column: 8, scope: !1687)
!1754 = !DILocation(line: 90, column: 13, scope: !1687)
!1755 = !DILocation(line: 90, column: 2, scope: !1687)
!1756 = !DILocation(line: 91, column: 8, scope: !1687)
!1757 = !DILocation(line: 91, column: 2, scope: !1687)
!1758 = !DILocation(line: 92, column: 1, scope: !1687)
!1759 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !1071, file: !1071, line: 813, type: !1072, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1760 = !DILocation(line: 815, column: 2, scope: !1759)
!1761 = !DILocation(line: 815, column: 2, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !1071, line: 815, column: 2)
!1763 = !DILocation(line: 818, column: 2, scope: !1759)
!1764 = !DILocation(line: 819, column: 2, scope: !1759)
!1765 = !DILocation(line: 819, column: 2, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1759, file: !1071, line: 819, column: 2)
!1767 = !DILocation(line: 820, column: 1, scope: !1759)
!1768 = distinct !DISubprogram(name: "netlbl_domhsh_add_default", scope: !3, file: !3, line: 563, type: !479, scopeLine: 565, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1769)
!1769 = !{!1770, !1771}
!1770 = !DILocalVariable(name: "entry", arg: 1, scope: !1768, file: !3, line: 563, type: !45)
!1771 = !DILocalVariable(name: "audit_info", arg: 2, scope: !1768, file: !3, line: 564, type: !481)
!1772 = !DILocation(line: 563, column: 54, scope: !1768)
!1773 = !DILocation(line: 564, column: 31, scope: !1768)
!1774 = !DILocation(line: 566, column: 27, scope: !1768)
!1775 = !DILocation(line: 566, column: 34, scope: !1768)
!1776 = !DILocation(line: 566, column: 9, scope: !1768)
!1777 = !DILocation(line: 566, column: 2, scope: !1768)
!1778 = distinct !DISubprogram(name: "netlbl_domhsh_remove_entry", scope: !3, file: !3, line: 581, type: !479, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1779)
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1793, !1796, !1802}
!1780 = !DILocalVariable(name: "entry", arg: 1, scope: !1778, file: !3, line: 581, type: !45)
!1781 = !DILocalVariable(name: "audit_info", arg: 2, scope: !1778, file: !3, line: 582, type: !481)
!1782 = !DILocalVariable(name: "ret_val", scope: !1778, file: !3, line: 584, type: !111)
!1783 = !DILocalVariable(name: "audit_buf", scope: !1778, file: !3, line: 585, type: !1385)
!1784 = !DILocalVariable(name: "iter4", scope: !1778, file: !3, line: 586, type: !192)
!1785 = !DILocalVariable(name: "map4", scope: !1778, file: !3, line: 587, type: !143)
!1786 = !DILocalVariable(name: "iter6", scope: !1778, file: !3, line: 589, type: !193)
!1787 = !DILocalVariable(name: "map6", scope: !1778, file: !3, line: 590, type: !157)
!1788 = !DILocalVariable(name: "__UNIQUE_ID_rcu575", scope: !1789, file: !3, line: 599, type: !45)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 599, column: 16)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 599, column: 7)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 597, column: 20)
!1792 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 597, column: 6)
!1793 = !DILocalVariable(name: "__UNIQUE_ID_rcu578", scope: !1794, file: !3, line: 601, type: !45)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 601, column: 21)
!1795 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 601, column: 12)
!1796 = !DILocalVariable(name: "__mptr", scope: !1797, file: !3, line: 623, type: !24)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 623, column: 11)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 622, column: 65)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 622, column: 3)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 622, column: 3)
!1801 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 620, column: 27)
!1802 = !DILocalVariable(name: "__mptr", scope: !1803, file: !3, line: 628, type: !24)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 628, column: 11)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 627, column: 65)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 627, column: 3)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 627, column: 3)
!1807 = !DILocation(line: 581, column: 55, scope: !1778)
!1808 = !DILocation(line: 582, column: 32, scope: !1778)
!1809 = !DILocation(line: 584, column: 2, scope: !1778)
!1810 = !DILocation(line: 584, column: 6, scope: !1778)
!1811 = !DILocation(line: 585, column: 2, scope: !1778)
!1812 = !DILocation(line: 585, column: 23, scope: !1778)
!1813 = !DILocation(line: 586, column: 2, scope: !1778)
!1814 = !DILocation(line: 586, column: 25, scope: !1778)
!1815 = !DILocation(line: 587, column: 2, scope: !1778)
!1816 = !DILocation(line: 587, column: 30, scope: !1778)
!1817 = !DILocation(line: 589, column: 2, scope: !1778)
!1818 = !DILocation(line: 589, column: 25, scope: !1778)
!1819 = !DILocation(line: 590, column: 2, scope: !1778)
!1820 = !DILocation(line: 590, column: 30, scope: !1778)
!1821 = !DILocation(line: 593, column: 6, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 593, column: 6)
!1823 = !DILocation(line: 593, column: 12, scope: !1822)
!1824 = !DILocation(line: 593, column: 6, scope: !1778)
!1825 = !DILocation(line: 594, column: 3, scope: !1822)
!1826 = !DILocation(line: 596, column: 2, scope: !1778)
!1827 = !DILocation(line: 597, column: 6, scope: !1792)
!1828 = !DILocation(line: 597, column: 13, scope: !1792)
!1829 = !DILocation(line: 597, column: 6, scope: !1778)
!1830 = !DILocation(line: 598, column: 3, scope: !1791)
!1831 = !DILocation(line: 598, column: 10, scope: !1791)
!1832 = !DILocation(line: 598, column: 16, scope: !1791)
!1833 = !DILocation(line: 599, column: 7, scope: !1790)
!1834 = !DILocation(line: 599, column: 16, scope: !1789)
!1835 = !DILocation(line: 599, column: 16, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 599, column: 16)
!1837 = !DILocation(line: 599, column: 16, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 599, column: 16)
!1839 = !DILocation(line: 599, column: 16, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 599, column: 16)
!1841 = !DILocation(line: 599, column: 16, scope: !1790)
!1842 = !DILocation(line: 599, column: 13, scope: !1790)
!1843 = !DILocation(line: 599, column: 7, scope: !1791)
!1844 = !DILocation(line: 600, column: 4, scope: !1790)
!1845 = !DILocation(line: 600, column: 4, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 600, column: 4)
!1847 = !DILocation(line: 600, column: 4, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 600, column: 4)
!1849 = !DILocation(line: 600, column: 4, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 600, column: 4)
!1851 = !DILocation(line: 600, column: 4, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 600, column: 4)
!1853 = !DILocation(line: 601, column: 12, scope: !1795)
!1854 = !DILocation(line: 601, column: 21, scope: !1794)
!1855 = !DILocation(line: 601, column: 21, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 601, column: 21)
!1857 = !DILocation(line: 601, column: 21, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 601, column: 21)
!1859 = !DILocation(line: 601, column: 21, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 601, column: 21)
!1861 = !DILocation(line: 601, column: 21, scope: !1795)
!1862 = !DILocation(line: 601, column: 18, scope: !1795)
!1863 = !DILocation(line: 601, column: 12, scope: !1790)
!1864 = !DILocation(line: 602, column: 4, scope: !1795)
!1865 = !DILocation(line: 602, column: 4, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 602, column: 4)
!1867 = !DILocation(line: 602, column: 4, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 602, column: 4)
!1869 = !DILocation(line: 602, column: 4, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 602, column: 4)
!1871 = !DILocation(line: 602, column: 4, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 602, column: 4)
!1873 = !DILocation(line: 604, column: 18, scope: !1795)
!1874 = !DILocation(line: 604, column: 25, scope: !1795)
!1875 = !DILocation(line: 604, column: 4, scope: !1795)
!1876 = !DILocation(line: 605, column: 2, scope: !1791)
!1877 = !DILocation(line: 606, column: 11, scope: !1792)
!1878 = !DILocation(line: 607, column: 2, scope: !1778)
!1879 = !DILocation(line: 609, column: 6, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 609, column: 6)
!1881 = !DILocation(line: 609, column: 6, scope: !1778)
!1882 = !DILocation(line: 610, column: 10, scope: !1880)
!1883 = !DILocation(line: 610, column: 3, scope: !1880)
!1884 = !DILocation(line: 612, column: 59, scope: !1778)
!1885 = !DILocation(line: 612, column: 14, scope: !1778)
!1886 = !DILocation(line: 612, column: 12, scope: !1778)
!1887 = !DILocation(line: 613, column: 6, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 613, column: 6)
!1889 = !DILocation(line: 613, column: 16, scope: !1888)
!1890 = !DILocation(line: 613, column: 6, scope: !1778)
!1891 = !DILocation(line: 614, column: 20, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 613, column: 25)
!1893 = !DILocation(line: 616, column: 6, scope: !1892)
!1894 = !DILocation(line: 616, column: 13, scope: !1892)
!1895 = !DILocation(line: 616, column: 22, scope: !1892)
!1896 = !DILocation(line: 616, column: 29, scope: !1892)
!1897 = !DILocation(line: 614, column: 3, scope: !1892)
!1898 = !DILocation(line: 617, column: 17, scope: !1892)
!1899 = !DILocation(line: 617, column: 3, scope: !1892)
!1900 = !DILocation(line: 618, column: 2, scope: !1892)
!1901 = !DILocation(line: 620, column: 10, scope: !1778)
!1902 = !DILocation(line: 620, column: 17, scope: !1778)
!1903 = !DILocation(line: 620, column: 21, scope: !1778)
!1904 = !DILocation(line: 620, column: 2, scope: !1778)
!1905 = !DILocation(line: 622, column: 3, scope: !1800)
!1906 = !DILocation(line: 622, column: 3, scope: !1799)
!1907 = !DILocation(line: 623, column: 11, scope: !1797)
!1908 = !DILocation(line: 623, column: 11, scope: !1798)
!1909 = !DILocation(line: 623, column: 9, scope: !1798)
!1910 = !DILocation(line: 624, column: 24, scope: !1798)
!1911 = !DILocation(line: 624, column: 30, scope: !1798)
!1912 = !DILocation(line: 624, column: 34, scope: !1798)
!1913 = !DILocation(line: 624, column: 4, scope: !1798)
!1914 = !DILocation(line: 625, column: 3, scope: !1798)
!1915 = distinct !{!1915, !1905, !1916, !341, !342}
!1916 = !DILocation(line: 625, column: 3, scope: !1800)
!1917 = !DILocation(line: 627, column: 3, scope: !1806)
!1918 = !DILocation(line: 627, column: 3, scope: !1805)
!1919 = !DILocation(line: 628, column: 11, scope: !1803)
!1920 = !DILocation(line: 628, column: 11, scope: !1804)
!1921 = !DILocation(line: 628, column: 9, scope: !1804)
!1922 = !DILocation(line: 629, column: 23, scope: !1804)
!1923 = !DILocation(line: 629, column: 29, scope: !1804)
!1924 = !DILocation(line: 629, column: 33, scope: !1804)
!1925 = !DILocation(line: 629, column: 4, scope: !1804)
!1926 = !DILocation(line: 630, column: 3, scope: !1804)
!1927 = distinct !{!1927, !1917, !1928, !341, !342}
!1928 = !DILocation(line: 630, column: 3, scope: !1806)
!1929 = !DILocation(line: 632, column: 3, scope: !1801)
!1930 = !DILocation(line: 634, column: 23, scope: !1801)
!1931 = !DILocation(line: 634, column: 30, scope: !1801)
!1932 = !DILocation(line: 634, column: 34, scope: !1801)
!1933 = !DILocation(line: 634, column: 3, scope: !1801)
!1934 = !DILocation(line: 635, column: 3, scope: !1801)
!1935 = !DILocation(line: 638, column: 22, scope: !1801)
!1936 = !DILocation(line: 638, column: 29, scope: !1801)
!1937 = !DILocation(line: 638, column: 33, scope: !1801)
!1938 = !DILocation(line: 638, column: 3, scope: !1801)
!1939 = !DILocation(line: 639, column: 3, scope: !1801)
!1940 = !DILocation(line: 642, column: 12, scope: !1778)
!1941 = !DILocation(line: 642, column: 19, scope: !1778)
!1942 = !DILocation(line: 642, column: 2, scope: !1778)
!1943 = !DILocation(line: 644, column: 9, scope: !1778)
!1944 = !DILocation(line: 644, column: 2, scope: !1778)
!1945 = !DILocation(line: 645, column: 1, scope: !1778)
!1946 = distinct !DISubprogram(name: "list_del_rcu", scope: !1300, file: !1300, line: 155, type: !442, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1947)
!1947 = !{!1948}
!1948 = !DILocalVariable(name: "entry", arg: 1, scope: !1946, file: !1300, line: 155, type: !31)
!1949 = !DILocation(line: 155, column: 51, scope: !1946)
!1950 = !DILocation(line: 157, column: 19, scope: !1946)
!1951 = !DILocation(line: 157, column: 2, scope: !1946)
!1952 = !DILocation(line: 158, column: 2, scope: !1946)
!1953 = !DILocation(line: 158, column: 9, scope: !1946)
!1954 = !DILocation(line: 158, column: 14, scope: !1946)
!1955 = !DILocation(line: 159, column: 1, scope: !1946)
!1956 = !DISubprogram(name: "netlbl_audit_start_common", scope: !1957, file: !1957, line: 46, type: !1958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1957 = !DIFile(filename: "net/netlabel/netlabel_user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "464023efb86feae1acbf4a3ac8ce220c")
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!1385, !111, !481}
!1960 = !DISubprogram(name: "audit_log_format", scope: !1387, file: !1387, line: 163, type: !1961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !1385, !1085, null}
!1963 = !DISubprogram(name: "audit_log_end", scope: !1387, file: !1387, line: 164, type: !1964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !1385}
!1966 = !DISubprogram(name: "cipso_v4_doi_putdef", scope: !68, file: !68, line: 120, type: !1967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{null, !66}
!1969 = !DISubprogram(name: "calipso_doi_putdef", scope: !1970, file: !1970, line: 113, type: !1971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1970 = !DIFile(filename: "net/netlabel/netlabel_calipso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ae778d115e10971fbc3cb1aa7942d06")
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !123}
!1973 = !DISubprogram(name: "call_rcu", scope: !1071, file: !1071, line: 42, type: !1974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null, !117, !1976}
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !23, line: 238, baseType: !119)
!1977 = distinct !DISubprogram(name: "netlbl_domhsh_remove_af4", scope: !3, file: !3, line: 660, type: !1978, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1986)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!111, !1085, !1980, !1980, !481}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1982)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !1983, line: 92, size: 32, elements: !1984)
!1983 = !DIFile(filename: "./include/uapi/linux/in.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2ddb010a393612e2819e220596b119c6")
!1984 = !{!1985}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !1982, file: !1983, line: 93, baseType: !152, size: 32)
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1999}
!1987 = !DILocalVariable(name: "domain", arg: 1, scope: !1977, file: !3, line: 660, type: !1085)
!1988 = !DILocalVariable(name: "addr", arg: 2, scope: !1977, file: !3, line: 661, type: !1980)
!1989 = !DILocalVariable(name: "mask", arg: 3, scope: !1977, file: !3, line: 662, type: !1980)
!1990 = !DILocalVariable(name: "audit_info", arg: 4, scope: !1977, file: !3, line: 663, type: !481)
!1991 = !DILocalVariable(name: "entry_map", scope: !1977, file: !3, line: 665, type: !45)
!1992 = !DILocalVariable(name: "entry_addr", scope: !1977, file: !3, line: 666, type: !192)
!1993 = !DILocalVariable(name: "iter4", scope: !1977, file: !3, line: 667, type: !192)
!1994 = !DILocalVariable(name: "iter6", scope: !1977, file: !3, line: 669, type: !193)
!1995 = !DILocalVariable(name: "entry", scope: !1977, file: !3, line: 671, type: !143)
!1996 = !DILabel(scope: !1977, name: "remove_af4_single_addr", file: !3, line: 699)
!1997 = !DILocalVariable(name: "__mptr", scope: !1998, file: !3, line: 705, type: !24)
!1998 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 705, column: 10)
!1999 = !DILabel(scope: !1977, name: "remove_af4_failure", file: !3, line: 710)
!2000 = !DILocation(line: 660, column: 42, scope: !1977)
!2001 = !DILocation(line: 661, column: 31, scope: !1977)
!2002 = !DILocation(line: 662, column: 31, scope: !1977)
!2003 = !DILocation(line: 663, column: 30, scope: !1977)
!2004 = !DILocation(line: 665, column: 2, scope: !1977)
!2005 = !DILocation(line: 665, column: 25, scope: !1977)
!2006 = !DILocation(line: 666, column: 2, scope: !1977)
!2007 = !DILocation(line: 666, column: 25, scope: !1977)
!2008 = !DILocation(line: 667, column: 2, scope: !1977)
!2009 = !DILocation(line: 667, column: 25, scope: !1977)
!2010 = !DILocation(line: 669, column: 2, scope: !1977)
!2011 = !DILocation(line: 669, column: 25, scope: !1977)
!2012 = !DILocation(line: 671, column: 2, scope: !1977)
!2013 = !DILocation(line: 671, column: 30, scope: !1977)
!2014 = !DILocation(line: 673, column: 2, scope: !1977)
!2015 = !DILocation(line: 675, column: 6, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 675, column: 6)
!2017 = !DILocation(line: 675, column: 6, scope: !1977)
!2018 = !DILocation(line: 676, column: 36, scope: !2016)
!2019 = !DILocation(line: 676, column: 15, scope: !2016)
!2020 = !DILocation(line: 676, column: 13, scope: !2016)
!2021 = !DILocation(line: 676, column: 3, scope: !2016)
!2022 = !DILocation(line: 678, column: 40, scope: !2016)
!2023 = !DILocation(line: 678, column: 15, scope: !2016)
!2024 = !DILocation(line: 678, column: 13, scope: !2016)
!2025 = !DILocation(line: 679, column: 6, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 679, column: 6)
!2027 = !DILocation(line: 679, column: 16, scope: !2026)
!2028 = !DILocation(line: 679, column: 24, scope: !2026)
!2029 = !DILocation(line: 680, column: 6, scope: !2026)
!2030 = !DILocation(line: 680, column: 17, scope: !2026)
!2031 = !DILocation(line: 680, column: 21, scope: !2026)
!2032 = !DILocation(line: 680, column: 26, scope: !2026)
!2033 = !DILocation(line: 679, column: 6, scope: !1977)
!2034 = !DILocation(line: 681, column: 3, scope: !2026)
!2035 = !DILocation(line: 683, column: 2, scope: !1977)
!2036 = !DILocation(line: 684, column: 37, scope: !1977)
!2037 = !DILocation(line: 684, column: 43, scope: !1977)
!2038 = !DILocation(line: 684, column: 51, scope: !1977)
!2039 = !DILocation(line: 684, column: 57, scope: !1977)
!2040 = !DILocation(line: 685, column: 10, scope: !1977)
!2041 = !DILocation(line: 685, column: 21, scope: !1977)
!2042 = !DILocation(line: 685, column: 25, scope: !1977)
!2043 = !DILocation(line: 685, column: 34, scope: !1977)
!2044 = !DILocation(line: 684, column: 15, scope: !1977)
!2045 = !DILocation(line: 684, column: 13, scope: !1977)
!2046 = !DILocation(line: 686, column: 2, scope: !1977)
!2047 = !DILocation(line: 688, column: 6, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 688, column: 6)
!2049 = !DILocation(line: 688, column: 17, scope: !2048)
!2050 = !DILocation(line: 688, column: 6, scope: !1977)
!2051 = !DILocation(line: 689, column: 3, scope: !2048)
!2052 = !DILocation(line: 690, column: 2, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 690, column: 2)
!2054 = !DILocation(line: 690, column: 2, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 690, column: 2)
!2056 = !DILocation(line: 691, column: 3, scope: !2055)
!2057 = distinct !{!2057, !2052, !2058, !341, !342}
!2058 = !DILocation(line: 691, column: 8, scope: !2053)
!2059 = !DILocation(line: 693, column: 2, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 693, column: 2)
!2061 = !DILocation(line: 693, column: 2, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 693, column: 2)
!2063 = !DILocation(line: 694, column: 3, scope: !2062)
!2064 = distinct !{!2064, !2059, !2065, !341, !342}
!2065 = !DILocation(line: 694, column: 8, scope: !2060)
!2066 = !DILocation(line: 697, column: 29, scope: !1977)
!2067 = !DILocation(line: 697, column: 40, scope: !1977)
!2068 = !DILocation(line: 697, column: 2, scope: !1977)
!2069 = !DILocation(line: 699, column: 1, scope: !1977)
!2070 = !DILocation(line: 700, column: 2, scope: !1977)
!2071 = !DILocation(line: 704, column: 2, scope: !1977)
!2072 = !DILocation(line: 705, column: 10, scope: !1998)
!2073 = !DILocation(line: 705, column: 10, scope: !1977)
!2074 = !DILocation(line: 705, column: 8, scope: !1977)
!2075 = !DILocation(line: 706, column: 22, scope: !1977)
!2076 = !DILocation(line: 706, column: 29, scope: !1977)
!2077 = !DILocation(line: 706, column: 33, scope: !1977)
!2078 = !DILocation(line: 706, column: 2, scope: !1977)
!2079 = !DILocation(line: 707, column: 8, scope: !1977)
!2080 = !DILocation(line: 707, column: 2, scope: !1977)
!2081 = !DILocation(line: 708, column: 2, scope: !1977)
!2082 = !DILocation(line: 710, column: 1, scope: !1977)
!2083 = !DILocation(line: 711, column: 2, scope: !1977)
!2084 = !DILocation(line: 712, column: 2, scope: !1977)
!2085 = !DILocation(line: 713, column: 1, scope: !1977)
!2086 = !DISubprogram(name: "netlbl_af4list_remove", scope: !149, file: !149, line: 100, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2087 = !DISubprogram(name: "synchronize_rcu", scope: !1071, file: !1071, line: 45, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2088 = distinct !DISubprogram(name: "netlbl_domhsh_remove_af6", scope: !3, file: !3, line: 729, type: !2089, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2091)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!111, !1085, !1593, !1593, !481}
!2091 = !{!2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2104}
!2092 = !DILocalVariable(name: "domain", arg: 1, scope: !2088, file: !3, line: 729, type: !1085)
!2093 = !DILocalVariable(name: "addr", arg: 2, scope: !2088, file: !3, line: 730, type: !1593)
!2094 = !DILocalVariable(name: "mask", arg: 3, scope: !2088, file: !3, line: 731, type: !1593)
!2095 = !DILocalVariable(name: "audit_info", arg: 4, scope: !2088, file: !3, line: 732, type: !481)
!2096 = !DILocalVariable(name: "entry_map", scope: !2088, file: !3, line: 734, type: !45)
!2097 = !DILocalVariable(name: "entry_addr", scope: !2088, file: !3, line: 735, type: !193)
!2098 = !DILocalVariable(name: "iter4", scope: !2088, file: !3, line: 736, type: !192)
!2099 = !DILocalVariable(name: "iter6", scope: !2088, file: !3, line: 737, type: !193)
!2100 = !DILocalVariable(name: "entry", scope: !2088, file: !3, line: 738, type: !157)
!2101 = !DILabel(scope: !2088, name: "remove_af6_single_addr", file: !3, line: 764)
!2102 = !DILocalVariable(name: "__mptr", scope: !2103, file: !3, line: 770, type: !24)
!2103 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 770, column: 10)
!2104 = !DILabel(scope: !2088, name: "remove_af6_failure", file: !3, line: 775)
!2105 = !DILocation(line: 729, column: 42, scope: !2088)
!2106 = !DILocation(line: 730, column: 32, scope: !2088)
!2107 = !DILocation(line: 731, column: 32, scope: !2088)
!2108 = !DILocation(line: 732, column: 30, scope: !2088)
!2109 = !DILocation(line: 734, column: 2, scope: !2088)
!2110 = !DILocation(line: 734, column: 25, scope: !2088)
!2111 = !DILocation(line: 735, column: 2, scope: !2088)
!2112 = !DILocation(line: 735, column: 25, scope: !2088)
!2113 = !DILocation(line: 736, column: 2, scope: !2088)
!2114 = !DILocation(line: 736, column: 25, scope: !2088)
!2115 = !DILocation(line: 737, column: 2, scope: !2088)
!2116 = !DILocation(line: 737, column: 25, scope: !2088)
!2117 = !DILocation(line: 738, column: 2, scope: !2088)
!2118 = !DILocation(line: 738, column: 30, scope: !2088)
!2119 = !DILocation(line: 740, column: 2, scope: !2088)
!2120 = !DILocation(line: 742, column: 6, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 742, column: 6)
!2122 = !DILocation(line: 742, column: 6, scope: !2088)
!2123 = !DILocation(line: 743, column: 36, scope: !2121)
!2124 = !DILocation(line: 743, column: 15, scope: !2121)
!2125 = !DILocation(line: 743, column: 13, scope: !2121)
!2126 = !DILocation(line: 743, column: 3, scope: !2121)
!2127 = !DILocation(line: 745, column: 40, scope: !2121)
!2128 = !DILocation(line: 745, column: 15, scope: !2121)
!2129 = !DILocation(line: 745, column: 13, scope: !2121)
!2130 = !DILocation(line: 746, column: 6, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 746, column: 6)
!2132 = !DILocation(line: 746, column: 16, scope: !2131)
!2133 = !DILocation(line: 746, column: 24, scope: !2131)
!2134 = !DILocation(line: 747, column: 6, scope: !2131)
!2135 = !DILocation(line: 747, column: 17, scope: !2131)
!2136 = !DILocation(line: 747, column: 21, scope: !2131)
!2137 = !DILocation(line: 747, column: 26, scope: !2131)
!2138 = !DILocation(line: 746, column: 6, scope: !2088)
!2139 = !DILocation(line: 748, column: 3, scope: !2131)
!2140 = !DILocation(line: 750, column: 2, scope: !2088)
!2141 = !DILocation(line: 751, column: 37, scope: !2088)
!2142 = !DILocation(line: 751, column: 43, scope: !2088)
!2143 = !DILocation(line: 752, column: 10, scope: !2088)
!2144 = !DILocation(line: 752, column: 21, scope: !2088)
!2145 = !DILocation(line: 752, column: 25, scope: !2088)
!2146 = !DILocation(line: 752, column: 34, scope: !2088)
!2147 = !DILocation(line: 751, column: 15, scope: !2088)
!2148 = !DILocation(line: 751, column: 13, scope: !2088)
!2149 = !DILocation(line: 753, column: 2, scope: !2088)
!2150 = !DILocation(line: 755, column: 6, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 755, column: 6)
!2152 = !DILocation(line: 755, column: 17, scope: !2151)
!2153 = !DILocation(line: 755, column: 6, scope: !2088)
!2154 = !DILocation(line: 756, column: 3, scope: !2151)
!2155 = !DILocation(line: 757, column: 2, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 757, column: 2)
!2157 = !DILocation(line: 757, column: 2, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 757, column: 2)
!2159 = !DILocation(line: 758, column: 3, scope: !2158)
!2160 = distinct !{!2160, !2155, !2161, !341, !342}
!2161 = !DILocation(line: 758, column: 8, scope: !2156)
!2162 = !DILocation(line: 759, column: 2, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 759, column: 2)
!2164 = !DILocation(line: 759, column: 2, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 759, column: 2)
!2166 = !DILocation(line: 760, column: 3, scope: !2165)
!2167 = distinct !{!2167, !2162, !2168, !341, !342}
!2168 = !DILocation(line: 760, column: 8, scope: !2163)
!2169 = !DILocation(line: 762, column: 29, scope: !2088)
!2170 = !DILocation(line: 762, column: 40, scope: !2088)
!2171 = !DILocation(line: 762, column: 2, scope: !2088)
!2172 = !DILocation(line: 764, column: 1, scope: !2088)
!2173 = !DILocation(line: 765, column: 2, scope: !2088)
!2174 = !DILocation(line: 769, column: 2, scope: !2088)
!2175 = !DILocation(line: 770, column: 10, scope: !2103)
!2176 = !DILocation(line: 770, column: 10, scope: !2088)
!2177 = !DILocation(line: 770, column: 8, scope: !2088)
!2178 = !DILocation(line: 771, column: 21, scope: !2088)
!2179 = !DILocation(line: 771, column: 28, scope: !2088)
!2180 = !DILocation(line: 771, column: 32, scope: !2088)
!2181 = !DILocation(line: 771, column: 2, scope: !2088)
!2182 = !DILocation(line: 772, column: 8, scope: !2088)
!2183 = !DILocation(line: 772, column: 2, scope: !2088)
!2184 = !DILocation(line: 773, column: 2, scope: !2088)
!2185 = !DILocation(line: 775, column: 1, scope: !2088)
!2186 = !DILocation(line: 776, column: 2, scope: !2088)
!2187 = !DILocation(line: 777, column: 2, scope: !2088)
!2188 = !DILocation(line: 778, column: 1, scope: !2088)
!2189 = !DISubprogram(name: "netlbl_af6list_remove", scope: !149, file: !149, line: 167, type: !1591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2190 = distinct !DISubprogram(name: "netlbl_domhsh_remove", scope: !3, file: !3, line: 794, type: !2191, scopeLine: 796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!111, !1085, !133, !481}
!2193 = !{!2194, !2195, !2196, !2197, !2198, !2199, !2202}
!2194 = !DILocalVariable(name: "domain", arg: 1, scope: !2190, file: !3, line: 794, type: !1085)
!2195 = !DILocalVariable(name: "family", arg: 2, scope: !2190, file: !3, line: 794, type: !133)
!2196 = !DILocalVariable(name: "audit_info", arg: 3, scope: !2190, file: !3, line: 795, type: !481)
!2197 = !DILocalVariable(name: "ret_val", scope: !2190, file: !3, line: 797, type: !111)
!2198 = !DILocalVariable(name: "entry", scope: !2190, file: !3, line: 798, type: !45)
!2199 = !DILocalVariable(name: "ret_val2", scope: !2200, file: !3, line: 812, type: !111)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 811, column: 49)
!2201 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 811, column: 6)
!2202 = !DILabel(scope: !2190, name: "done", file: !3, line: 822)
!2203 = !DILocation(line: 794, column: 38, scope: !2190)
!2204 = !DILocation(line: 794, column: 50, scope: !2190)
!2205 = !DILocation(line: 795, column: 26, scope: !2190)
!2206 = !DILocation(line: 797, column: 2, scope: !2190)
!2207 = !DILocation(line: 797, column: 6, scope: !2190)
!2208 = !DILocation(line: 798, column: 2, scope: !2190)
!2209 = !DILocation(line: 798, column: 25, scope: !2190)
!2210 = !DILocation(line: 800, column: 2, scope: !2190)
!2211 = !DILocation(line: 802, column: 6, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 802, column: 6)
!2213 = !DILocation(line: 802, column: 13, scope: !2212)
!2214 = !DILocation(line: 802, column: 24, scope: !2212)
!2215 = !DILocation(line: 802, column: 27, scope: !2212)
!2216 = !DILocation(line: 802, column: 34, scope: !2212)
!2217 = !DILocation(line: 802, column: 6, scope: !2190)
!2218 = !DILocation(line: 803, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 803, column: 7)
!2220 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 802, column: 48)
!2221 = !DILocation(line: 803, column: 7, scope: !2220)
!2222 = !DILocation(line: 804, column: 33, scope: !2219)
!2223 = !DILocation(line: 804, column: 12, scope: !2219)
!2224 = !DILocation(line: 804, column: 10, scope: !2219)
!2225 = !DILocation(line: 804, column: 4, scope: !2219)
!2226 = !DILocation(line: 806, column: 37, scope: !2219)
!2227 = !DILocation(line: 806, column: 12, scope: !2219)
!2228 = !DILocation(line: 806, column: 10, scope: !2219)
!2229 = !DILocation(line: 807, column: 40, scope: !2220)
!2230 = !DILocation(line: 807, column: 47, scope: !2220)
!2231 = !DILocation(line: 807, column: 13, scope: !2220)
!2232 = !DILocation(line: 807, column: 11, scope: !2220)
!2233 = !DILocation(line: 808, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 808, column: 7)
!2235 = !DILocation(line: 808, column: 15, scope: !2234)
!2236 = !DILocation(line: 808, column: 18, scope: !2234)
!2237 = !DILocation(line: 808, column: 26, scope: !2234)
!2238 = !DILocation(line: 808, column: 7, scope: !2220)
!2239 = !DILocation(line: 809, column: 4, scope: !2234)
!2240 = !DILocation(line: 810, column: 2, scope: !2220)
!2241 = !DILocation(line: 811, column: 6, scope: !2201)
!2242 = !DILocation(line: 811, column: 13, scope: !2201)
!2243 = !DILocation(line: 811, column: 25, scope: !2201)
!2244 = !DILocation(line: 811, column: 28, scope: !2201)
!2245 = !DILocation(line: 811, column: 35, scope: !2201)
!2246 = !DILocation(line: 811, column: 6, scope: !2190)
!2247 = !DILocation(line: 812, column: 3, scope: !2200)
!2248 = !DILocation(line: 812, column: 7, scope: !2200)
!2249 = !DILocation(line: 814, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 814, column: 7)
!2251 = !DILocation(line: 814, column: 7, scope: !2200)
!2252 = !DILocation(line: 815, column: 33, scope: !2250)
!2253 = !DILocation(line: 815, column: 12, scope: !2250)
!2254 = !DILocation(line: 815, column: 10, scope: !2250)
!2255 = !DILocation(line: 815, column: 4, scope: !2250)
!2256 = !DILocation(line: 817, column: 37, scope: !2250)
!2257 = !DILocation(line: 817, column: 12, scope: !2250)
!2258 = !DILocation(line: 817, column: 10, scope: !2250)
!2259 = !DILocation(line: 818, column: 41, scope: !2200)
!2260 = !DILocation(line: 818, column: 48, scope: !2200)
!2261 = !DILocation(line: 818, column: 14, scope: !2200)
!2262 = !DILocation(line: 818, column: 12, scope: !2200)
!2263 = !DILocation(line: 819, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 819, column: 7)
!2265 = !DILocation(line: 819, column: 16, scope: !2264)
!2266 = !DILocation(line: 819, column: 7, scope: !2200)
!2267 = !DILocation(line: 820, column: 14, scope: !2264)
!2268 = !DILocation(line: 820, column: 12, scope: !2264)
!2269 = !DILocation(line: 820, column: 4, scope: !2264)
!2270 = !DILocation(line: 821, column: 2, scope: !2201)
!2271 = !DILocation(line: 821, column: 2, scope: !2200)
!2272 = !DILocation(line: 811, column: 38, scope: !2201)
!2273 = !DILocation(line: 822, column: 1, scope: !2190)
!2274 = !DILocation(line: 823, column: 2, scope: !2190)
!2275 = !DILocation(line: 825, column: 9, scope: !2190)
!2276 = !DILocation(line: 826, column: 1, scope: !2190)
!2277 = !DILocation(line: 825, column: 2, scope: !2190)
!2278 = distinct !DISubprogram(name: "netlbl_domhsh_remove_default", scope: !3, file: !3, line: 840, type: !2279, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!111, !133, !481}
!2281 = !{!2282, !2283}
!2282 = !DILocalVariable(name: "family", arg: 1, scope: !2278, file: !3, line: 840, type: !133)
!2283 = !DILocalVariable(name: "audit_info", arg: 2, scope: !2278, file: !3, line: 840, type: !481)
!2284 = !DILocation(line: 840, column: 38, scope: !2278)
!2285 = !DILocation(line: 840, column: 67, scope: !2278)
!2286 = !DILocation(line: 842, column: 36, scope: !2278)
!2287 = !DILocation(line: 842, column: 44, scope: !2278)
!2288 = !DILocation(line: 842, column: 9, scope: !2278)
!2289 = !DILocation(line: 842, column: 2, scope: !2278)
!2290 = distinct !DISubprogram(name: "netlbl_domhsh_getentry", scope: !3, file: !3, line: 857, type: !1083, scopeLine: 858, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2291)
!2291 = !{!2292, !2293}
!2292 = !DILocalVariable(name: "domain", arg: 1, scope: !2290, file: !3, line: 857, type: !1085)
!2293 = !DILocalVariable(name: "family", arg: 2, scope: !2290, file: !3, line: 857, type: !133)
!2294 = !DILocation(line: 857, column: 59, scope: !2290)
!2295 = !DILocation(line: 857, column: 71, scope: !2290)
!2296 = !DILocation(line: 859, column: 6, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 859, column: 6)
!2298 = !DILocation(line: 859, column: 13, scope: !2297)
!2299 = !DILocation(line: 859, column: 6, scope: !2290)
!2300 = !DILocation(line: 860, column: 3, scope: !2297)
!2301 = !DILocation(line: 861, column: 34, scope: !2290)
!2302 = !DILocation(line: 861, column: 42, scope: !2290)
!2303 = !DILocation(line: 861, column: 9, scope: !2290)
!2304 = !DILocation(line: 861, column: 2, scope: !2290)
!2305 = !DILocation(line: 862, column: 1, scope: !2290)
!2306 = distinct !DISubprogram(name: "netlbl_domhsh_getentry_af4", scope: !3, file: !3, line: 875, type: !2307, scopeLine: 877, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2310)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!2309, !1085, !152}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!2310 = !{!2311, !2312, !2313, !2314, !2315}
!2311 = !DILocalVariable(name: "domain", arg: 1, scope: !2306, file: !3, line: 875, type: !1085)
!2312 = !DILocalVariable(name: "addr", arg: 2, scope: !2306, file: !3, line: 876, type: !152)
!2313 = !DILocalVariable(name: "dom_iter", scope: !2306, file: !3, line: 878, type: !45)
!2314 = !DILocalVariable(name: "addr_iter", scope: !2306, file: !3, line: 879, type: !192)
!2315 = !DILocalVariable(name: "__mptr", scope: !2316, file: !3, line: 890, type: !24)
!2316 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 890, column: 11)
!2317 = !DILocation(line: 875, column: 66, scope: !2306)
!2318 = !DILocation(line: 876, column: 19, scope: !2306)
!2319 = !DILocation(line: 878, column: 2, scope: !2306)
!2320 = !DILocation(line: 878, column: 25, scope: !2306)
!2321 = !DILocation(line: 879, column: 2, scope: !2306)
!2322 = !DILocation(line: 879, column: 25, scope: !2306)
!2323 = !DILocation(line: 881, column: 38, scope: !2306)
!2324 = !DILocation(line: 881, column: 13, scope: !2306)
!2325 = !DILocation(line: 881, column: 11, scope: !2306)
!2326 = !DILocation(line: 882, column: 6, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 882, column: 6)
!2328 = !DILocation(line: 882, column: 15, scope: !2327)
!2329 = !DILocation(line: 882, column: 6, scope: !2306)
!2330 = !DILocation(line: 883, column: 3, scope: !2327)
!2331 = !DILocation(line: 885, column: 6, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 885, column: 6)
!2333 = !DILocation(line: 885, column: 16, scope: !2332)
!2334 = !DILocation(line: 885, column: 20, scope: !2332)
!2335 = !DILocation(line: 885, column: 25, scope: !2332)
!2336 = !DILocation(line: 885, column: 6, scope: !2306)
!2337 = !DILocation(line: 886, column: 11, scope: !2332)
!2338 = !DILocation(line: 886, column: 21, scope: !2332)
!2339 = !DILocation(line: 886, column: 3, scope: !2332)
!2340 = !DILocation(line: 887, column: 36, scope: !2306)
!2341 = !DILocation(line: 887, column: 43, scope: !2306)
!2342 = !DILocation(line: 887, column: 53, scope: !2306)
!2343 = !DILocation(line: 887, column: 57, scope: !2306)
!2344 = !DILocation(line: 887, column: 66, scope: !2306)
!2345 = !DILocation(line: 887, column: 14, scope: !2306)
!2346 = !DILocation(line: 887, column: 12, scope: !2306)
!2347 = !DILocation(line: 888, column: 6, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 888, column: 6)
!2349 = !DILocation(line: 888, column: 16, scope: !2348)
!2350 = !DILocation(line: 888, column: 6, scope: !2306)
!2351 = !DILocation(line: 889, column: 3, scope: !2348)
!2352 = !DILocation(line: 890, column: 11, scope: !2316)
!2353 = !DILocation(line: 890, column: 11, scope: !2306)
!2354 = !DILocation(line: 890, column: 49, scope: !2306)
!2355 = !DILocation(line: 890, column: 2, scope: !2306)
!2356 = !DILocation(line: 891, column: 1, scope: !2306)
!2357 = !DISubprogram(name: "netlbl_af4list_search", scope: !149, file: !149, line: 103, type: !2358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!192, !152, !31}
!2360 = distinct !DISubprogram(name: "netlbl_domhsh_getentry_af6", scope: !3, file: !3, line: 905, type: !2361, scopeLine: 907, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!2309, !1085, !1593}
!2363 = !{!2364, !2365, !2366, !2367, !2368}
!2364 = !DILocalVariable(name: "domain", arg: 1, scope: !2360, file: !3, line: 905, type: !1085)
!2365 = !DILocalVariable(name: "addr", arg: 2, scope: !2360, file: !3, line: 906, type: !1593)
!2366 = !DILocalVariable(name: "dom_iter", scope: !2360, file: !3, line: 908, type: !45)
!2367 = !DILocalVariable(name: "addr_iter", scope: !2360, file: !3, line: 909, type: !193)
!2368 = !DILocalVariable(name: "__mptr", scope: !2369, file: !3, line: 920, type: !24)
!2369 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 920, column: 11)
!2370 = !DILocation(line: 905, column: 66, scope: !2360)
!2371 = !DILocation(line: 906, column: 33, scope: !2360)
!2372 = !DILocation(line: 908, column: 2, scope: !2360)
!2373 = !DILocation(line: 908, column: 25, scope: !2360)
!2374 = !DILocation(line: 909, column: 2, scope: !2360)
!2375 = !DILocation(line: 909, column: 25, scope: !2360)
!2376 = !DILocation(line: 911, column: 38, scope: !2360)
!2377 = !DILocation(line: 911, column: 13, scope: !2360)
!2378 = !DILocation(line: 911, column: 11, scope: !2360)
!2379 = !DILocation(line: 912, column: 6, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 912, column: 6)
!2381 = !DILocation(line: 912, column: 15, scope: !2380)
!2382 = !DILocation(line: 912, column: 6, scope: !2360)
!2383 = !DILocation(line: 913, column: 3, scope: !2380)
!2384 = !DILocation(line: 915, column: 6, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 915, column: 6)
!2386 = !DILocation(line: 915, column: 16, scope: !2385)
!2387 = !DILocation(line: 915, column: 20, scope: !2385)
!2388 = !DILocation(line: 915, column: 25, scope: !2385)
!2389 = !DILocation(line: 915, column: 6, scope: !2360)
!2390 = !DILocation(line: 916, column: 11, scope: !2385)
!2391 = !DILocation(line: 916, column: 21, scope: !2385)
!2392 = !DILocation(line: 916, column: 3, scope: !2385)
!2393 = !DILocation(line: 917, column: 36, scope: !2360)
!2394 = !DILocation(line: 917, column: 43, scope: !2360)
!2395 = !DILocation(line: 917, column: 53, scope: !2360)
!2396 = !DILocation(line: 917, column: 57, scope: !2360)
!2397 = !DILocation(line: 917, column: 66, scope: !2360)
!2398 = !DILocation(line: 917, column: 14, scope: !2360)
!2399 = !DILocation(line: 917, column: 12, scope: !2360)
!2400 = !DILocation(line: 918, column: 6, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 918, column: 6)
!2402 = !DILocation(line: 918, column: 16, scope: !2401)
!2403 = !DILocation(line: 918, column: 6, scope: !2360)
!2404 = !DILocation(line: 919, column: 3, scope: !2401)
!2405 = !DILocation(line: 920, column: 11, scope: !2369)
!2406 = !DILocation(line: 920, column: 11, scope: !2360)
!2407 = !DILocation(line: 920, column: 49, scope: !2360)
!2408 = !DILocation(line: 920, column: 2, scope: !2360)
!2409 = !DILocation(line: 921, column: 1, scope: !2360)
!2410 = !DISubprogram(name: "netlbl_af6list_search", scope: !149, file: !149, line: 171, type: !2411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!193, !1593, !31}
!2413 = distinct !DISubprogram(name: "netlbl_domhsh_walk", scope: !3, file: !3, line: 939, type: !2414, scopeLine: 943, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2419)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!111, !83, !83, !2416, !24}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!111, !45, !24}
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2433, !2436, !2439, !2442}
!2420 = !DILocalVariable(name: "skip_bkt", arg: 1, scope: !2413, file: !3, line: 939, type: !83)
!2421 = !DILocalVariable(name: "skip_chain", arg: 2, scope: !2413, file: !3, line: 940, type: !83)
!2422 = !DILocalVariable(name: "callback", arg: 3, scope: !2413, file: !3, line: 941, type: !2416)
!2423 = !DILocalVariable(name: "cb_arg", arg: 4, scope: !2413, file: !3, line: 942, type: !24)
!2424 = !DILocalVariable(name: "ret_val", scope: !2413, file: !3, line: 944, type: !111)
!2425 = !DILocalVariable(name: "iter_bkt", scope: !2413, file: !3, line: 945, type: !37)
!2426 = !DILocalVariable(name: "iter_list", scope: !2413, file: !3, line: 946, type: !31)
!2427 = !DILocalVariable(name: "iter_entry", scope: !2413, file: !3, line: 947, type: !45)
!2428 = !DILocalVariable(name: "chain_cnt", scope: !2413, file: !3, line: 948, type: !37)
!2429 = !DILocalVariable(name: "__UNIQUE_ID_rcu581", scope: !2430, file: !3, line: 952, type: !27)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 952, column: 18)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 951, column: 2)
!2432 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 951, column: 2)
!2433 = !DILocalVariable(name: "__UNIQUE_ID_rcu583", scope: !2434, file: !3, line: 954, type: !27)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 954, column: 16)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 953, column: 34)
!2436 = !DILocalVariable(name: "__mptr", scope: !2437, file: !3, line: 955, type: !24)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 955, column: 3)
!2438 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 955, column: 3)
!2439 = !DILocalVariable(name: "__mptr", scope: !2440, file: !3, line: 955, type: !24)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 955, column: 3)
!2441 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 955, column: 3)
!2442 = !DILabel(scope: !2413, name: "walk_return", file: !3, line: 967)
!2443 = !DILocation(line: 939, column: 29, scope: !2413)
!2444 = !DILocation(line: 940, column: 13, scope: !2413)
!2445 = !DILocation(line: 941, column: 14, scope: !2413)
!2446 = !DILocation(line: 942, column: 14, scope: !2413)
!2447 = !DILocation(line: 944, column: 2, scope: !2413)
!2448 = !DILocation(line: 944, column: 6, scope: !2413)
!2449 = !DILocation(line: 945, column: 2, scope: !2413)
!2450 = !DILocation(line: 945, column: 6, scope: !2413)
!2451 = !DILocation(line: 946, column: 2, scope: !2413)
!2452 = !DILocation(line: 946, column: 20, scope: !2413)
!2453 = !DILocation(line: 947, column: 2, scope: !2413)
!2454 = !DILocation(line: 947, column: 25, scope: !2413)
!2455 = !DILocation(line: 948, column: 2, scope: !2413)
!2456 = !DILocation(line: 948, column: 6, scope: !2413)
!2457 = !DILocation(line: 950, column: 2, scope: !2413)
!2458 = !DILocation(line: 951, column: 19, scope: !2432)
!2459 = !DILocation(line: 951, column: 18, scope: !2432)
!2460 = !DILocation(line: 951, column: 16, scope: !2432)
!2461 = !DILocation(line: 951, column: 7, scope: !2432)
!2462 = !DILocation(line: 952, column: 7, scope: !2431)
!2463 = !DILocation(line: 952, column: 18, scope: !2430)
!2464 = !DILocation(line: 952, column: 18, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 952, column: 18)
!2466 = !DILocation(line: 952, column: 18, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 952, column: 18)
!2468 = !DILocation(line: 952, column: 18, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 952, column: 18)
!2470 = !DILocation(line: 952, column: 18, scope: !2431)
!2471 = !DILocation(line: 952, column: 50, scope: !2431)
!2472 = !DILocation(line: 952, column: 16, scope: !2431)
!2473 = !DILocation(line: 951, column: 2, scope: !2432)
!2474 = !DILocation(line: 954, column: 16, scope: !2434)
!2475 = !DILocation(line: 954, column: 16, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 954, column: 16)
!2477 = !DILocation(line: 954, column: 16, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 954, column: 16)
!2479 = !DILocation(line: 954, column: 16, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 954, column: 16)
!2481 = !DILocation(line: 954, column: 16, scope: !2435)
!2482 = !DILocation(line: 954, column: 48, scope: !2435)
!2483 = !DILocation(line: 954, column: 52, scope: !2435)
!2484 = !DILocation(line: 954, column: 13, scope: !2435)
!2485 = !DILocation(line: 955, column: 3, scope: !2437)
!2486 = !DILocation(line: 955, column: 3, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 955, column: 3)
!2488 = !DILocation(line: 955, column: 3, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 955, column: 3)
!2490 = !DILocation(line: 955, column: 3, scope: !2438)
!2491 = !DILocation(line: 955, column: 3, scope: !2441)
!2492 = !DILocation(line: 956, column: 8, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 956, column: 8)
!2494 = !DILocation(line: 956, column: 20, scope: !2493)
!2495 = !DILocation(line: 956, column: 8, scope: !2441)
!2496 = !DILocation(line: 957, column: 18, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 957, column: 9)
!2498 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 956, column: 27)
!2499 = !DILocation(line: 957, column: 24, scope: !2497)
!2500 = !DILocation(line: 957, column: 23, scope: !2497)
!2501 = !DILocation(line: 957, column: 21, scope: !2497)
!2502 = !DILocation(line: 957, column: 9, scope: !2498)
!2503 = !DILocation(line: 958, column: 6, scope: !2497)
!2504 = !DILocation(line: 959, column: 15, scope: !2498)
!2505 = !DILocation(line: 959, column: 24, scope: !2498)
!2506 = !DILocation(line: 959, column: 36, scope: !2498)
!2507 = !DILocation(line: 959, column: 13, scope: !2498)
!2508 = !DILocation(line: 960, column: 9, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 960, column: 9)
!2510 = !DILocation(line: 960, column: 17, scope: !2509)
!2511 = !DILocation(line: 960, column: 9, scope: !2498)
!2512 = !DILocation(line: 961, column: 15, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 960, column: 22)
!2514 = !DILocation(line: 962, column: 6, scope: !2513)
!2515 = !DILocation(line: 964, column: 4, scope: !2498)
!2516 = !DILocation(line: 955, column: 3, scope: !2440)
!2517 = !DILocation(line: 955, column: 3, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 955, column: 3)
!2519 = !DILocation(line: 955, column: 3, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 955, column: 3)
!2521 = distinct !{!2521, !2490, !2522, !341, !342}
!2522 = !DILocation(line: 964, column: 4, scope: !2438)
!2523 = !DILocation(line: 965, column: 2, scope: !2435)
!2524 = !DILocation(line: 953, column: 15, scope: !2431)
!2525 = !DILocation(line: 953, column: 29, scope: !2431)
!2526 = !DILocation(line: 951, column: 2, scope: !2431)
!2527 = distinct !{!2527, !2473, !2528, !341, !342}
!2528 = !DILocation(line: 965, column: 2, scope: !2432)
!2529 = !DILocation(line: 967, column: 1, scope: !2413)
!2530 = !DILocation(line: 968, column: 2, scope: !2413)
!2531 = !DILocation(line: 969, column: 14, scope: !2413)
!2532 = !DILocation(line: 969, column: 3, scope: !2413)
!2533 = !DILocation(line: 969, column: 12, scope: !2413)
!2534 = !DILocation(line: 970, column: 16, scope: !2413)
!2535 = !DILocation(line: 970, column: 3, scope: !2413)
!2536 = !DILocation(line: 970, column: 14, scope: !2413)
!2537 = !DILocation(line: 971, column: 9, scope: !2413)
!2538 = !DILocation(line: 972, column: 1, scope: !2413)
!2539 = !DILocation(line: 971, column: 2, scope: !2413)
!2540 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2541 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !2542, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2546)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!7, !375, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !23, line: 35, baseType: !2545)
!2545 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!2546 = !{!2547, !2548}
!2547 = !DILocalVariable(name: "size", arg: 1, scope: !2541, file: !12, line: 444, type: !375)
!2548 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2541, file: !12, line: 445, type: !2544)
!2549 = !DILocation(line: 444, column: 60, scope: !2541)
!2550 = !DILocation(line: 445, column: 16, scope: !2541)
!2551 = !DILocation(line: 447, column: 7, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 447, column: 6)
!2553 = !DILocation(line: 447, column: 6, scope: !2541)
!2554 = !DILocation(line: 448, column: 3, scope: !2552)
!2555 = !DILocation(line: 450, column: 6, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 450, column: 6)
!2557 = !DILocation(line: 450, column: 11, scope: !2556)
!2558 = !DILocation(line: 450, column: 6, scope: !2541)
!2559 = !DILocation(line: 451, column: 3, scope: !2556)
!2560 = !DILocation(line: 453, column: 32, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 453, column: 6)
!2562 = !DILocation(line: 453, column: 37, scope: !2561)
!2563 = !DILocation(line: 453, column: 42, scope: !2561)
!2564 = !DILocation(line: 453, column: 45, scope: !2561)
!2565 = !DILocation(line: 453, column: 50, scope: !2561)
!2566 = !DILocation(line: 453, column: 6, scope: !2541)
!2567 = !DILocation(line: 454, column: 3, scope: !2561)
!2568 = !DILocation(line: 455, column: 32, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 455, column: 6)
!2570 = !DILocation(line: 455, column: 37, scope: !2569)
!2571 = !DILocation(line: 455, column: 43, scope: !2569)
!2572 = !DILocation(line: 455, column: 46, scope: !2569)
!2573 = !DILocation(line: 455, column: 51, scope: !2569)
!2574 = !DILocation(line: 455, column: 6, scope: !2541)
!2575 = !DILocation(line: 456, column: 3, scope: !2569)
!2576 = !DILocation(line: 457, column: 6, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 457, column: 6)
!2578 = !DILocation(line: 457, column: 11, scope: !2577)
!2579 = !DILocation(line: 457, column: 6, scope: !2541)
!2580 = !DILocation(line: 457, column: 26, scope: !2577)
!2581 = !DILocation(line: 458, column: 6, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 458, column: 6)
!2583 = !DILocation(line: 458, column: 11, scope: !2582)
!2584 = !DILocation(line: 458, column: 6, scope: !2541)
!2585 = !DILocation(line: 458, column: 26, scope: !2582)
!2586 = !DILocation(line: 459, column: 6, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 459, column: 6)
!2588 = !DILocation(line: 459, column: 11, scope: !2587)
!2589 = !DILocation(line: 459, column: 6, scope: !2541)
!2590 = !DILocation(line: 459, column: 26, scope: !2587)
!2591 = !DILocation(line: 460, column: 6, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 460, column: 6)
!2593 = !DILocation(line: 460, column: 11, scope: !2592)
!2594 = !DILocation(line: 460, column: 6, scope: !2541)
!2595 = !DILocation(line: 460, column: 26, scope: !2592)
!2596 = !DILocation(line: 461, column: 6, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 461, column: 6)
!2598 = !DILocation(line: 461, column: 11, scope: !2597)
!2599 = !DILocation(line: 461, column: 6, scope: !2541)
!2600 = !DILocation(line: 461, column: 26, scope: !2597)
!2601 = !DILocation(line: 462, column: 6, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 462, column: 6)
!2603 = !DILocation(line: 462, column: 11, scope: !2602)
!2604 = !DILocation(line: 462, column: 6, scope: !2541)
!2605 = !DILocation(line: 462, column: 26, scope: !2602)
!2606 = !DILocation(line: 463, column: 6, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 463, column: 6)
!2608 = !DILocation(line: 463, column: 11, scope: !2607)
!2609 = !DILocation(line: 463, column: 6, scope: !2541)
!2610 = !DILocation(line: 463, column: 26, scope: !2607)
!2611 = !DILocation(line: 464, column: 6, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 464, column: 6)
!2613 = !DILocation(line: 464, column: 11, scope: !2612)
!2614 = !DILocation(line: 464, column: 6, scope: !2541)
!2615 = !DILocation(line: 464, column: 26, scope: !2612)
!2616 = !DILocation(line: 465, column: 6, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 465, column: 6)
!2618 = !DILocation(line: 465, column: 11, scope: !2617)
!2619 = !DILocation(line: 465, column: 6, scope: !2541)
!2620 = !DILocation(line: 465, column: 26, scope: !2617)
!2621 = !DILocation(line: 466, column: 6, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 466, column: 6)
!2623 = !DILocation(line: 466, column: 11, scope: !2622)
!2624 = !DILocation(line: 466, column: 6, scope: !2541)
!2625 = !DILocation(line: 466, column: 26, scope: !2622)
!2626 = !DILocation(line: 467, column: 6, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 467, column: 6)
!2628 = !DILocation(line: 467, column: 11, scope: !2627)
!2629 = !DILocation(line: 467, column: 6, scope: !2541)
!2630 = !DILocation(line: 467, column: 26, scope: !2627)
!2631 = !DILocation(line: 468, column: 6, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 468, column: 6)
!2633 = !DILocation(line: 468, column: 11, scope: !2632)
!2634 = !DILocation(line: 468, column: 6, scope: !2541)
!2635 = !DILocation(line: 468, column: 26, scope: !2632)
!2636 = !DILocation(line: 469, column: 6, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 469, column: 6)
!2638 = !DILocation(line: 469, column: 11, scope: !2637)
!2639 = !DILocation(line: 469, column: 6, scope: !2541)
!2640 = !DILocation(line: 469, column: 26, scope: !2637)
!2641 = !DILocation(line: 470, column: 6, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 470, column: 6)
!2643 = !DILocation(line: 470, column: 11, scope: !2642)
!2644 = !DILocation(line: 470, column: 6, scope: !2541)
!2645 = !DILocation(line: 470, column: 26, scope: !2642)
!2646 = !DILocation(line: 471, column: 6, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 471, column: 6)
!2648 = !DILocation(line: 471, column: 11, scope: !2647)
!2649 = !DILocation(line: 471, column: 6, scope: !2541)
!2650 = !DILocation(line: 471, column: 26, scope: !2647)
!2651 = !DILocation(line: 472, column: 6, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 472, column: 6)
!2653 = !DILocation(line: 472, column: 11, scope: !2652)
!2654 = !DILocation(line: 472, column: 6, scope: !2541)
!2655 = !DILocation(line: 472, column: 26, scope: !2652)
!2656 = !DILocation(line: 473, column: 6, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 473, column: 6)
!2658 = !DILocation(line: 473, column: 11, scope: !2657)
!2659 = !DILocation(line: 473, column: 6, scope: !2541)
!2660 = !DILocation(line: 473, column: 26, scope: !2657)
!2661 = !DILocation(line: 474, column: 6, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 474, column: 6)
!2663 = !DILocation(line: 474, column: 11, scope: !2662)
!2664 = !DILocation(line: 474, column: 6, scope: !2541)
!2665 = !DILocation(line: 474, column: 27, scope: !2662)
!2666 = !DILocation(line: 475, column: 6, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 475, column: 6)
!2668 = !DILocation(line: 475, column: 11, scope: !2667)
!2669 = !DILocation(line: 475, column: 6, scope: !2541)
!2670 = !DILocation(line: 475, column: 32, scope: !2667)
!2671 = !DILocation(line: 477, column: 50, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2541, file: !12, line: 477, column: 6)
!2673 = !{i8 0, i8 2}
!2674 = !{}
!2675 = !DILocation(line: 477, column: 6, scope: !2541)
!2676 = !DILocation(line: 478, column: 3, scope: !2672)
!2677 = !DILocation(line: 478, column: 3, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !12, line: 478, column: 3)
!2679 = distinct !DILexicalBlock(scope: !2672, file: !12, line: 478, column: 3)
!2680 = !{i32 -2141524752}
!2681 = !DILocation(line: 478, column: 3, scope: !2679)
!2682 = !DILocation(line: 480, column: 3, scope: !2672)
!2683 = !DILocation(line: 480, column: 3, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2672, file: !12, line: 480, column: 3)
!2685 = !DILocation(line: 480, column: 3, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2684, file: !12, line: 480, column: 3)
!2687 = !DILocation(line: 480, column: 3, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2684, file: !12, line: 480, column: 3)
!2689 = !{i64 2153442747, i64 2153442776, i64 2153442822, i64 2153442880, i64 2153442934, i64 2153442988, i64 2153443043, i64 2153443074}
!2690 = !DILocation(line: 483, column: 2, scope: !2541)
!2691 = !DILocation(line: 484, column: 1, scope: !2541)
!2692 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !2693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!24, !2695, !22, !375}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2697, line: 325, flags: DIFlagFwdDecl)
!2697 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2698 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !2699, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2701)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!11, !22, !26}
!2701 = !{!2702, !2703}
!2702 = !DILocalVariable(name: "flags", arg: 1, scope: !2698, file: !12, line: 401, type: !22)
!2703 = !DILocalVariable(name: "caller", arg: 2, scope: !2698, file: !12, line: 401, type: !26)
!2704 = !DILocation(line: 401, column: 67, scope: !2698)
!2705 = !DILocation(line: 401, column: 88, scope: !2698)
!2706 = !DILocation(line: 407, column: 6, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2698, file: !12, line: 407, column: 6)
!2708 = !DILocation(line: 407, column: 6, scope: !2698)
!2709 = !DILocation(line: 413, column: 3, scope: !2707)
!2710 = !DILocation(line: 423, column: 38, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2698, file: !12, line: 423, column: 6)
!2712 = !DILocation(line: 423, column: 44, scope: !2711)
!2713 = !DILocation(line: 423, column: 6, scope: !2698)
!2714 = !DILocation(line: 424, column: 3, scope: !2711)
!2715 = !DILocation(line: 426, column: 3, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2698, file: !12, line: 425, column: 6)
!2717 = !DILocation(line: 429, column: 1, scope: !2698)
!2718 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2719 = !DISubprogram(name: "__compiletime_assert_245", scope: !12, file: !12, line: 478, type: !1072, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2720 = distinct !DISubprogram(name: "kmalloc_array", scope: !12, file: !12, line: 629, type: !420, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2721)
!2721 = !{!2722, !2723, !2724, !2725}
!2722 = !DILocalVariable(name: "n", arg: 1, scope: !2720, file: !12, line: 629, type: !375)
!2723 = !DILocalVariable(name: "size", arg: 2, scope: !2720, file: !12, line: 629, type: !375)
!2724 = !DILocalVariable(name: "flags", arg: 3, scope: !2720, file: !12, line: 629, type: !22)
!2725 = !DILocalVariable(name: "bytes", scope: !2720, file: !12, line: 631, type: !375)
!2726 = !DILocation(line: 629, column: 61, scope: !2720)
!2727 = !DILocation(line: 629, column: 71, scope: !2720)
!2728 = !DILocation(line: 629, column: 83, scope: !2720)
!2729 = !DILocation(line: 631, column: 2, scope: !2720)
!2730 = !DILocation(line: 631, column: 9, scope: !2720)
!2731 = !DILocation(line: 633, column: 6, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2720, file: !12, line: 633, column: 6)
!2733 = !DILocation(line: 633, column: 6, scope: !2720)
!2734 = !DILocation(line: 634, column: 3, scope: !2732)
!2735 = !DILocation(line: 635, column: 27, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2720, file: !12, line: 635, column: 6)
!2737 = !DILocation(line: 635, column: 6, scope: !2736)
!2738 = !DILocation(line: 635, column: 30, scope: !2736)
!2739 = !DILocation(line: 635, column: 54, scope: !2736)
!2740 = !DILocation(line: 635, column: 33, scope: !2736)
!2741 = !DILocation(line: 635, column: 6, scope: !2720)
!2742 = !DILocation(line: 636, column: 18, scope: !2736)
!2743 = !DILocation(line: 636, column: 25, scope: !2736)
!2744 = !DILocation(line: 636, column: 10, scope: !2736)
!2745 = !DILocation(line: 636, column: 3, scope: !2736)
!2746 = !DILocation(line: 637, column: 19, scope: !2720)
!2747 = !DILocation(line: 637, column: 26, scope: !2720)
!2748 = !DILocation(line: 637, column: 9, scope: !2720)
!2749 = !DILocation(line: 637, column: 2, scope: !2720)
!2750 = !DILocation(line: 638, column: 1, scope: !2720)
!2751 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2752, file: !2752, line: 51, type: !2753, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2755)
!2752 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!2544, !2544}
!2755 = !{!2756}
!2756 = !DILocalVariable(name: "overflow", arg: 1, scope: !2751, file: !2752, line: 51, type: !2544)
!2757 = !DILocation(line: 51, column: 60, scope: !2751)
!2758 = !DILocation(line: 53, column: 9, scope: !2751)
!2759 = !DILocation(line: 53, column: 2, scope: !2751)
!2760 = !DISubprogram(name: "_raw_spin_lock", scope: !2761, file: !2761, line: 22, type: !2762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2761 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2762 = !DISubroutineType(types: !2763)
!2763 = !{null, !2764}
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !248, line: 23, baseType: !247)
!2766 = !DISubprogram(name: "_raw_spin_unlock", scope: !2761, file: !2761, line: 39, type: !2762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2767 = !DISubprogram(name: "__rcu_read_lock", scope: !1071, file: !1071, line: 74, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2768 = distinct !DISubprogram(name: "netlbl_family_match", scope: !3, file: !3, line: 119, type: !2769, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!2544, !133, !133}
!2771 = !{!2772, !2773}
!2772 = !DILocalVariable(name: "f1", arg: 1, scope: !2768, file: !3, line: 119, type: !133)
!2773 = !DILocalVariable(name: "f2", arg: 2, scope: !2768, file: !3, line: 119, type: !133)
!2774 = !DILocation(line: 119, column: 37, scope: !2768)
!2775 = !DILocation(line: 119, column: 45, scope: !2768)
!2776 = !DILocation(line: 121, column: 10, scope: !2768)
!2777 = !DILocation(line: 121, column: 16, scope: !2768)
!2778 = !DILocation(line: 121, column: 13, scope: !2768)
!2779 = !DILocation(line: 121, column: 20, scope: !2768)
!2780 = !DILocation(line: 121, column: 24, scope: !2768)
!2781 = !DILocation(line: 121, column: 27, scope: !2768)
!2782 = !DILocation(line: 121, column: 41, scope: !2768)
!2783 = !DILocation(line: 121, column: 45, scope: !2768)
!2784 = !DILocation(line: 121, column: 48, scope: !2768)
!2785 = !DILocation(line: 121, column: 2, scope: !2768)
!2786 = !DISubprogram(name: "strcmp", scope: !2787, file: !2787, line: 88, type: !2788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2787 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!111, !1085, !1085}
!2790 = !DISubprogram(name: "strlen", scope: !2787, file: !2787, line: 128, type: !2791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!26, !1085}
!2793 = distinct !DISubprogram(name: "__list_add_rcu", scope: !1300, file: !1300, line: 76, type: !2794, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !31, !31, !31}
!2796 = !{!2797, !2798, !2799, !2800}
!2797 = !DILocalVariable(name: "new", arg: 1, scope: !2793, file: !1300, line: 76, type: !31)
!2798 = !DILocalVariable(name: "prev", arg: 2, scope: !2793, file: !1300, line: 77, type: !31)
!2799 = !DILocalVariable(name: "next", arg: 3, scope: !2793, file: !1300, line: 77, type: !31)
!2800 = !DILocalVariable(name: "_r_a_p__v", scope: !2801, file: !1300, line: 84, type: !25)
!2801 = distinct !DILexicalBlock(scope: !2793, file: !1300, line: 84, column: 2)
!2802 = !DILocation(line: 76, column: 53, scope: !2793)
!2803 = !DILocation(line: 77, column: 21, scope: !2793)
!2804 = !DILocation(line: 77, column: 45, scope: !2793)
!2805 = !DILocation(line: 79, column: 24, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2793, file: !1300, line: 79, column: 6)
!2807 = !DILocation(line: 79, column: 29, scope: !2806)
!2808 = !DILocation(line: 79, column: 35, scope: !2806)
!2809 = !DILocation(line: 79, column: 7, scope: !2806)
!2810 = !DILocation(line: 79, column: 6, scope: !2793)
!2811 = !DILocation(line: 80, column: 3, scope: !2806)
!2812 = !DILocation(line: 82, column: 14, scope: !2793)
!2813 = !DILocation(line: 82, column: 2, scope: !2793)
!2814 = !DILocation(line: 82, column: 7, scope: !2793)
!2815 = !DILocation(line: 82, column: 12, scope: !2793)
!2816 = !DILocation(line: 83, column: 14, scope: !2793)
!2817 = !DILocation(line: 83, column: 2, scope: !2793)
!2818 = !DILocation(line: 83, column: 7, scope: !2793)
!2819 = !DILocation(line: 83, column: 12, scope: !2793)
!2820 = !DILocation(line: 84, column: 2, scope: !2793)
!2821 = !DILocation(line: 84, column: 2, scope: !2801)
!2822 = !DILocation(line: 84, column: 2, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2801, file: !1300, line: 84, column: 2)
!2824 = !DILocation(line: 84, column: 2, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2823, file: !1300, line: 84, column: 2)
!2826 = !DILocation(line: 84, column: 2, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2825, file: !1300, line: 84, column: 2)
!2828 = !DILocation(line: 84, column: 2, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !1300, line: 84, column: 2)
!2830 = !DILocation(line: 84, column: 2, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2823, file: !1300, line: 84, column: 2)
!2832 = !DILocation(line: 84, column: 2, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2831, file: !1300, line: 84, column: 2)
!2834 = !DILocation(line: 84, column: 2, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !1300, line: 84, column: 2)
!2836 = !DILocation(line: 84, column: 2, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2835, file: !1300, line: 84, column: 2)
!2838 = !{i64 2149658771}
!2839 = !DILocation(line: 84, column: 2, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !1300, line: 84, column: 2)
!2841 = !DILocation(line: 84, column: 2, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2840, file: !1300, line: 84, column: 2)
!2843 = !DILocation(line: 84, column: 2, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2840, file: !1300, line: 84, column: 2)
!2845 = !DILocation(line: 85, column: 15, scope: !2793)
!2846 = !DILocation(line: 85, column: 2, scope: !2793)
!2847 = !DILocation(line: 85, column: 8, scope: !2793)
!2848 = !DILocation(line: 85, column: 13, scope: !2793)
!2849 = !DILocation(line: 86, column: 1, scope: !2793)
!2850 = distinct !DISubprogram(name: "__list_add_valid", scope: !441, file: !441, line: 128, type: !2851, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!2544, !31, !31, !31}
!2853 = !{!2854, !2855, !2856}
!2854 = !DILocalVariable(name: "new", arg: 1, scope: !2850, file: !441, line: 128, type: !31)
!2855 = !DILocalVariable(name: "prev", arg: 2, scope: !2850, file: !441, line: 129, type: !31)
!2856 = !DILocalVariable(name: "next", arg: 3, scope: !2850, file: !441, line: 130, type: !31)
!2857 = !DILocation(line: 128, column: 55, scope: !2850)
!2858 = !DILocation(line: 129, column: 23, scope: !2850)
!2859 = !DILocation(line: 130, column: 23, scope: !2850)
!2860 = !DILocation(line: 132, column: 2, scope: !2850)
!2861 = !DISubprogram(name: "netlbl_af4list_audit_addr", scope: !149, file: !149, line: 110, type: !2862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{null, !1385, !111, !1085, !152, !152}
!2864 = !DISubprogram(name: "netlbl_af6list_audit_addr", scope: !149, file: !149, line: 178, type: !2865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !1385, !111, !1085, !1593, !1593}
!2867 = !DISubprogram(name: "__rcu_read_unlock", scope: !1071, file: !1071, line: 75, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2868 = distinct !DISubprogram(name: "__list_del_entry", scope: !441, file: !441, line: 213, type: !442, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2869)
!2869 = !{!2870}
!2870 = !DILocalVariable(name: "entry", arg: 1, scope: !2868, file: !441, line: 213, type: !31)
!2871 = !DILocation(line: 213, column: 55, scope: !2868)
!2872 = !DILocation(line: 215, column: 30, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2868, file: !441, line: 215, column: 6)
!2874 = !DILocation(line: 215, column: 7, scope: !2873)
!2875 = !DILocation(line: 215, column: 6, scope: !2868)
!2876 = !DILocation(line: 216, column: 3, scope: !2873)
!2877 = !DILocation(line: 218, column: 13, scope: !2868)
!2878 = !DILocation(line: 218, column: 20, scope: !2868)
!2879 = !DILocation(line: 218, column: 26, scope: !2868)
!2880 = !DILocation(line: 218, column: 33, scope: !2868)
!2881 = !DILocation(line: 218, column: 2, scope: !2868)
!2882 = !DILocation(line: 219, column: 1, scope: !2868)
!2883 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !441, file: !441, line: 134, type: !2884, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!2544, !31}
!2886 = !{!2887}
!2887 = !DILocalVariable(name: "entry", arg: 1, scope: !2883, file: !441, line: 134, type: !31)
!2888 = !DILocation(line: 134, column: 61, scope: !2883)
!2889 = !DILocation(line: 136, column: 2, scope: !2883)
!2890 = distinct !DISubprogram(name: "__list_del", scope: !441, file: !441, line: 193, type: !1301, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2891)
!2891 = !{!2892, !2893}
!2892 = !DILocalVariable(name: "prev", arg: 1, scope: !2890, file: !441, line: 193, type: !31)
!2893 = !DILocalVariable(name: "next", arg: 2, scope: !2890, file: !441, line: 193, type: !31)
!2894 = !DILocation(line: 193, column: 50, scope: !2890)
!2895 = !DILocation(line: 193, column: 75, scope: !2890)
!2896 = !DILocation(line: 195, column: 15, scope: !2890)
!2897 = !DILocation(line: 195, column: 2, scope: !2890)
!2898 = !DILocation(line: 195, column: 8, scope: !2890)
!2899 = !DILocation(line: 195, column: 13, scope: !2890)
!2900 = !DILocation(line: 196, column: 2, scope: !2890)
!2901 = !DILocation(line: 196, column: 2, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2890, file: !441, line: 196, column: 2)
!2903 = !DILocation(line: 196, column: 2, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2902, file: !441, line: 196, column: 2)
!2905 = !DILocation(line: 196, column: 2, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2902, file: !441, line: 196, column: 2)
!2907 = !DILocation(line: 197, column: 1, scope: !2890)
