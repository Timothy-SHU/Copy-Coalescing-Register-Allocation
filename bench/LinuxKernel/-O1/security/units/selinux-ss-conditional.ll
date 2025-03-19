; ModuleID = 'security/selinux/ss/conditional.c'
source_filename = "security/selinux/ss/conditional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32, [8 x %struct.symtab], [8 x ptr], ptr, ptr, ptr, ptr, %struct.avtab, %struct.hashtab, %struct.ebitmap, %struct.hashtab, i32, ptr, %struct.avtab, ptr, i32, ptr, [9 x ptr], ptr, %struct.hashtab, ptr, %struct.ebitmap, %struct.ebitmap, i64, i32, i8, i16, i32 }
%struct.symtab = type { %struct.hashtab, i32 }
%struct.avtab = type { ptr, i32, i32, i32 }
%struct.hashtab = type { ptr, i32, i32 }
%struct.ebitmap = type { ptr, i32 }
%struct.cond_node = type { i32, %struct.cond_expr, %struct.cond_av_list, %struct.cond_av_list }
%struct.cond_expr = type { ptr, i32 }
%struct.cond_av_list = type { ptr, i32 }
%struct.avtab_node = type { %struct.avtab_key, %struct.avtab_datum, ptr }
%struct.avtab_key = type { i16, i16, i16, i16 }
%struct.avtab_datum = type { %union.anon }
%union.anon = type { ptr }
%struct.cond_bool_datum = type { i32, i32 }
%struct.policy_file = type { ptr, i64 }
%struct.cond_expr_node = type { i32, i32 }
%struct.policy_data = type { ptr, ptr }
%struct.av_decision = type { i32, i32, i32, i32, i32 }
%struct.cond_insertf_data = type { ptr, ptr, ptr }
%struct.hashtab_node = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [67 x i8] c"\013SELinux: expression result was undefined - disabling all rules.\0A\00", align 1, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [59 x i8] c"\013SELinux: conditional expressions uses unknown operator.\0A\00", align 1, !dbg !13
@.str.3 = private unnamed_addr constant [55 x i8] c"\013SELinux: conditional expressions uses unknown bool.\0A\00", align 1, !dbg !18
@.str.4 = private unnamed_addr constant [63 x i8] c"\013SELinux: type rule already exists outside of a conditional.\0A\00", align 1, !dbg !23
@.str.5 = private unnamed_addr constant [45 x i8] c"\013SELinux: too many conflicting type rules.\0A\00", align 1, !dbg !28
@.str.6 = private unnamed_addr constant [36 x i8] c"\013SELinux: conflicting type rules.\0A\00", align 1, !dbg !33
@.str.7 = private unnamed_addr constant [67 x i8] c"\013SELinux: conflicting type rules when adding type rule for true.\0A\00", align 1, !dbg !38
@.str.8 = private unnamed_addr constant [35 x i8] c"\013SELinux: could not insert rule.\0A\00", align 1, !dbg !40

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @evaluate_cond_nodes(ptr noundef %p) #0 align 16 !dbg !86 {
entry:
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !386, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %i, metadata !387, metadata !DIExpression()), !dbg !390
  store i32 0, ptr %i, align 4, !dbg !391
  br label %for.cond, !dbg !393

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !394
  %1 = load ptr, ptr %p.addr, align 8, !dbg !396
  %cond_list_len = getelementptr inbounds %struct.policydb, ptr %1, i32 0, i32 15, !dbg !397
  %2 = load i32, ptr %cond_list_len, align 8, !dbg !397
  %cmp = icmp ult i32 %0, %2, !dbg !398
  br i1 %cmp, label %for.body, label %for.end, !dbg !399

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p.addr, align 8, !dbg !400
  %4 = load ptr, ptr %p.addr, align 8, !dbg !401
  %cond_list = getelementptr inbounds %struct.policydb, ptr %4, i32 0, i32 14, !dbg !402
  %5 = load ptr, ptr %cond_list, align 8, !dbg !402
  %6 = load i32, ptr %i, align 4, !dbg !403
  %idxprom = zext i32 %6 to i64, !dbg !401
  %arrayidx = getelementptr %struct.cond_node, ptr %5, i64 %idxprom, !dbg !401
  call void @evaluate_cond_node(ptr noundef %3, ptr noundef %arrayidx) #19, !dbg !404
  br label %for.inc, !dbg !404

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !405
  %inc = add i32 %7, 1, !dbg !405
  store i32 %inc, ptr %i, align 4, !dbg !405
  br label %for.cond, !dbg !406, !llvm.loop !407

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !411
  ret void, !dbg !411
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @evaluate_cond_node(ptr noundef %p, ptr noundef %node) #0 align 16 !dbg !412 {
entry:
  %p.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %avnode = alloca ptr, align 8
  %new_state = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !416, metadata !DIExpression()), !dbg !421
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.lifetime.start.p0(i64 8, ptr %avnode) #18, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %avnode, metadata !418, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_state) #18, !dbg !425
  call void @llvm.dbg.declare(metadata ptr %new_state, metadata !419, metadata !DIExpression()), !dbg !426
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %i, metadata !420, metadata !DIExpression()), !dbg !428
  %0 = load ptr, ptr %p.addr, align 8, !dbg !429
  %1 = load ptr, ptr %node.addr, align 8, !dbg !430
  %expr = getelementptr inbounds %struct.cond_node, ptr %1, i32 0, i32 1, !dbg !431
  %call = call i32 @cond_evaluate_expr(ptr noundef %0, ptr noundef %expr) #19, !dbg !432
  store i32 %call, ptr %new_state, align 4, !dbg !433
  %2 = load i32, ptr %new_state, align 4, !dbg !434
  %3 = load ptr, ptr %node.addr, align 8, !dbg !436
  %cur_state = getelementptr inbounds %struct.cond_node, ptr %3, i32 0, i32 0, !dbg !437
  %4 = load i32, ptr %cur_state, align 8, !dbg !437
  %cmp = icmp ne i32 %2, %4, !dbg !438
  br i1 %cmp, label %if.then, label %if.end40, !dbg !439

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %new_state, align 4, !dbg !440
  %6 = load ptr, ptr %node.addr, align 8, !dbg !442
  %cur_state1 = getelementptr inbounds %struct.cond_node, ptr %6, i32 0, i32 0, !dbg !443
  store i32 %5, ptr %cur_state1, align 8, !dbg !444
  %7 = load i32, ptr %new_state, align 4, !dbg !445
  %cmp2 = icmp eq i32 %7, -1, !dbg !447
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !448

if.then3:                                         ; preds = %if.then
  br label %do.body, !dbg !449

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !451

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !451

do.end:                                           ; preds = %do.cond
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #20, !dbg !449
  store i32 %call4, ptr %tmp, align 4, !dbg !451
  %8 = load i32, ptr %tmp, align 4, !dbg !449
  br label %if.end, !dbg !453

if.end:                                           ; preds = %do.end, %if.then
  store i32 0, ptr %i, align 4, !dbg !454
  br label %for.cond, !dbg !456

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %i, align 4, !dbg !457
  %10 = load ptr, ptr %node.addr, align 8, !dbg !459
  %true_list = getelementptr inbounds %struct.cond_node, ptr %10, i32 0, i32 2, !dbg !460
  %len = getelementptr inbounds %struct.cond_av_list, ptr %true_list, i32 0, i32 1, !dbg !461
  %11 = load i32, ptr %len, align 8, !dbg !461
  %cmp5 = icmp ult i32 %9, %11, !dbg !462
  br i1 %cmp5, label %for.body, label %for.end, !dbg !463

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %node.addr, align 8, !dbg !464
  %true_list6 = getelementptr inbounds %struct.cond_node, ptr %12, i32 0, i32 2, !dbg !466
  %nodes = getelementptr inbounds %struct.cond_av_list, ptr %true_list6, i32 0, i32 0, !dbg !467
  %13 = load ptr, ptr %nodes, align 8, !dbg !467
  %14 = load i32, ptr %i, align 4, !dbg !468
  %idxprom = zext i32 %14 to i64, !dbg !464
  %arrayidx = getelementptr ptr, ptr %13, i64 %idxprom, !dbg !464
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !464
  store ptr %15, ptr %avnode, align 8, !dbg !469
  %16 = load i32, ptr %new_state, align 4, !dbg !470
  %cmp7 = icmp sle i32 %16, 0, !dbg !472
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !473

if.then8:                                         ; preds = %for.body
  %17 = load ptr, ptr %avnode, align 8, !dbg !474
  %key = getelementptr inbounds %struct.avtab_node, ptr %17, i32 0, i32 0, !dbg !475
  %specified = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3, !dbg !476
  %18 = load i16, ptr %specified, align 2, !dbg !477
  %conv = zext i16 %18 to i32, !dbg !477
  %and = and i32 %conv, -32769, !dbg !477
  %conv9 = trunc i32 %and to i16, !dbg !477
  store i16 %conv9, ptr %specified, align 2, !dbg !477
  br label %if.end14, !dbg !474

if.else:                                          ; preds = %for.body
  %19 = load ptr, ptr %avnode, align 8, !dbg !478
  %key10 = getelementptr inbounds %struct.avtab_node, ptr %19, i32 0, i32 0, !dbg !479
  %specified11 = getelementptr inbounds %struct.avtab_key, ptr %key10, i32 0, i32 3, !dbg !480
  %20 = load i16, ptr %specified11, align 2, !dbg !481
  %conv12 = zext i16 %20 to i32, !dbg !481
  %or = or i32 %conv12, 32768, !dbg !481
  %conv13 = trunc i32 %or to i16, !dbg !481
  store i16 %conv13, ptr %specified11, align 2, !dbg !481
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8
  br label %for.inc, !dbg !482

for.inc:                                          ; preds = %if.end14
  %21 = load i32, ptr %i, align 4, !dbg !483
  %inc = add i32 %21, 1, !dbg !483
  store i32 %inc, ptr %i, align 4, !dbg !483
  br label %for.cond, !dbg !484, !llvm.loop !485

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !487
  br label %for.cond15, !dbg !489

for.cond15:                                       ; preds = %for.inc37, %for.end
  %22 = load i32, ptr %i, align 4, !dbg !490
  %23 = load ptr, ptr %node.addr, align 8, !dbg !492
  %false_list = getelementptr inbounds %struct.cond_node, ptr %23, i32 0, i32 3, !dbg !493
  %len16 = getelementptr inbounds %struct.cond_av_list, ptr %false_list, i32 0, i32 1, !dbg !494
  %24 = load i32, ptr %len16, align 8, !dbg !494
  %cmp17 = icmp ult i32 %22, %24, !dbg !495
  br i1 %cmp17, label %for.body19, label %for.end39, !dbg !496

for.body19:                                       ; preds = %for.cond15
  %25 = load ptr, ptr %node.addr, align 8, !dbg !497
  %false_list20 = getelementptr inbounds %struct.cond_node, ptr %25, i32 0, i32 3, !dbg !499
  %nodes21 = getelementptr inbounds %struct.cond_av_list, ptr %false_list20, i32 0, i32 0, !dbg !500
  %26 = load ptr, ptr %nodes21, align 8, !dbg !500
  %27 = load i32, ptr %i, align 4, !dbg !501
  %idxprom22 = zext i32 %27 to i64, !dbg !497
  %arrayidx23 = getelementptr ptr, ptr %26, i64 %idxprom22, !dbg !497
  %28 = load ptr, ptr %arrayidx23, align 8, !dbg !497
  store ptr %28, ptr %avnode, align 8, !dbg !502
  %29 = load i32, ptr %new_state, align 4, !dbg !503
  %tobool = icmp ne i32 %29, 0, !dbg !503
  br i1 %tobool, label %if.then24, label %if.else30, !dbg !505

if.then24:                                        ; preds = %for.body19
  %30 = load ptr, ptr %avnode, align 8, !dbg !506
  %key25 = getelementptr inbounds %struct.avtab_node, ptr %30, i32 0, i32 0, !dbg !507
  %specified26 = getelementptr inbounds %struct.avtab_key, ptr %key25, i32 0, i32 3, !dbg !508
  %31 = load i16, ptr %specified26, align 2, !dbg !509
  %conv27 = zext i16 %31 to i32, !dbg !509
  %and28 = and i32 %conv27, -32769, !dbg !509
  %conv29 = trunc i32 %and28 to i16, !dbg !509
  store i16 %conv29, ptr %specified26, align 2, !dbg !509
  br label %if.end36, !dbg !506

if.else30:                                        ; preds = %for.body19
  %32 = load ptr, ptr %avnode, align 8, !dbg !510
  %key31 = getelementptr inbounds %struct.avtab_node, ptr %32, i32 0, i32 0, !dbg !511
  %specified32 = getelementptr inbounds %struct.avtab_key, ptr %key31, i32 0, i32 3, !dbg !512
  %33 = load i16, ptr %specified32, align 2, !dbg !513
  %conv33 = zext i16 %33 to i32, !dbg !513
  %or34 = or i32 %conv33, 32768, !dbg !513
  %conv35 = trunc i32 %or34 to i16, !dbg !513
  store i16 %conv35, ptr %specified32, align 2, !dbg !513
  br label %if.end36

if.end36:                                         ; preds = %if.else30, %if.then24
  br label %for.inc37, !dbg !514

for.inc37:                                        ; preds = %if.end36
  %34 = load i32, ptr %i, align 4, !dbg !515
  %inc38 = add i32 %34, 1, !dbg !515
  store i32 %inc38, ptr %i, align 4, !dbg !515
  br label %for.cond15, !dbg !516, !llvm.loop !517

for.end39:                                        ; preds = %for.cond15
  br label %if.end40, !dbg !519

if.end40:                                         ; preds = %for.end39, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !520
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_state) #18, !dbg !520
  call void @llvm.lifetime.end.p0(i64 8, ptr %avnode) #18, !dbg !520
  ret void, !dbg !520
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cond_policydb_init(ptr noundef %p) #0 align 16 !dbg !521 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !523, metadata !DIExpression()), !dbg !524
  %0 = load ptr, ptr %p.addr, align 8, !dbg !525
  %bool_val_to_struct = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 12, !dbg !526
  store ptr null, ptr %bool_val_to_struct, align 8, !dbg !527
  %1 = load ptr, ptr %p.addr, align 8, !dbg !528
  %cond_list = getelementptr inbounds %struct.policydb, ptr %1, i32 0, i32 14, !dbg !529
  store ptr null, ptr %cond_list, align 8, !dbg !530
  %2 = load ptr, ptr %p.addr, align 8, !dbg !531
  %cond_list_len = getelementptr inbounds %struct.policydb, ptr %2, i32 0, i32 15, !dbg !532
  store i32 0, ptr %cond_list_len, align 8, !dbg !533
  %3 = load ptr, ptr %p.addr, align 8, !dbg !534
  %te_cond_avtab = getelementptr inbounds %struct.policydb, ptr %3, i32 0, i32 13, !dbg !535
  call void @avtab_init(ptr noundef %te_cond_avtab) #19, !dbg !536
  ret void, !dbg !537
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !538 dso_local void @avtab_init(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cond_policydb_destroy(ptr noundef %p) #0 align 16 !dbg !542 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !544, metadata !DIExpression()), !dbg !545
  %0 = load ptr, ptr %p.addr, align 8, !dbg !546
  %bool_val_to_struct = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 12, !dbg !547
  %1 = load ptr, ptr %bool_val_to_struct, align 8, !dbg !547
  call void @kfree(ptr noundef %1) #19, !dbg !548
  %2 = load ptr, ptr %p.addr, align 8, !dbg !549
  %te_cond_avtab = getelementptr inbounds %struct.policydb, ptr %2, i32 0, i32 13, !dbg !550
  call void @avtab_destroy(ptr noundef %te_cond_avtab) #19, !dbg !551
  %3 = load ptr, ptr %p.addr, align 8, !dbg !552
  call void @cond_list_destroy(ptr noundef %3) #19, !dbg !553
  ret void, !dbg !554
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !555 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !560 dso_local void @avtab_destroy(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cond_list_destroy(ptr noundef %p) #0 align 16 !dbg !561 {
entry:
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !563, metadata !DIExpression()), !dbg !565
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !566
  call void @llvm.dbg.declare(metadata ptr %i, metadata !564, metadata !DIExpression()), !dbg !567
  store i32 0, ptr %i, align 4, !dbg !568
  br label %for.cond, !dbg !570

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !571
  %1 = load ptr, ptr %p.addr, align 8, !dbg !573
  %cond_list_len = getelementptr inbounds %struct.policydb, ptr %1, i32 0, i32 15, !dbg !574
  %2 = load i32, ptr %cond_list_len, align 8, !dbg !574
  %cmp = icmp ult i32 %0, %2, !dbg !575
  br i1 %cmp, label %for.body, label %for.end, !dbg !576

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p.addr, align 8, !dbg !577
  %cond_list = getelementptr inbounds %struct.policydb, ptr %3, i32 0, i32 14, !dbg !578
  %4 = load ptr, ptr %cond_list, align 8, !dbg !578
  %5 = load i32, ptr %i, align 4, !dbg !579
  %idxprom = zext i32 %5 to i64, !dbg !577
  %arrayidx = getelementptr %struct.cond_node, ptr %4, i64 %idxprom, !dbg !577
  call void @cond_node_destroy(ptr noundef %arrayidx) #19, !dbg !580
  br label %for.inc, !dbg !580

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !581
  %inc = add i32 %6, 1, !dbg !581
  store i32 %inc, ptr %i, align 4, !dbg !581
  br label %for.cond, !dbg !582, !llvm.loop !583

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %p.addr, align 8, !dbg !585
  %cond_list1 = getelementptr inbounds %struct.policydb, ptr %7, i32 0, i32 14, !dbg !586
  %8 = load ptr, ptr %cond_list1, align 8, !dbg !586
  call void @kfree(ptr noundef %8) #19, !dbg !587
  %9 = load ptr, ptr %p.addr, align 8, !dbg !588
  %cond_list2 = getelementptr inbounds %struct.policydb, ptr %9, i32 0, i32 14, !dbg !589
  store ptr null, ptr %cond_list2, align 8, !dbg !590
  %10 = load ptr, ptr %p.addr, align 8, !dbg !591
  %cond_list_len3 = getelementptr inbounds %struct.policydb, ptr %10, i32 0, i32 15, !dbg !592
  store i32 0, ptr %cond_list_len3, align 8, !dbg !593
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !594
  ret void, !dbg !594
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cond_init_bool_indexes(ptr noundef %p) #0 align 16 !dbg !595 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !599, metadata !DIExpression()), !dbg !600
  %0 = load ptr, ptr %p.addr, align 8, !dbg !601
  %bool_val_to_struct = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 12, !dbg !602
  %1 = load ptr, ptr %bool_val_to_struct, align 8, !dbg !602
  call void @kfree(ptr noundef %1) #19, !dbg !603
  %2 = load ptr, ptr %p.addr, align 8, !dbg !604
  %symtab = getelementptr inbounds %struct.policydb, ptr %2, i32 0, i32 1, !dbg !605
  %arrayidx = getelementptr [8 x %struct.symtab], ptr %symtab, i64 0, i64 5, !dbg !604
  %nprim = getelementptr inbounds %struct.symtab, ptr %arrayidx, i32 0, i32 1, !dbg !606
  %3 = load i32, ptr %nprim, align 8, !dbg !606
  %conv = zext i32 %3 to i64, !dbg !604
  %call = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #21, !dbg !607
  %4 = load ptr, ptr %p.addr, align 8, !dbg !608
  %bool_val_to_struct1 = getelementptr inbounds %struct.policydb, ptr %4, i32 0, i32 12, !dbg !609
  store ptr %call, ptr %bool_val_to_struct1, align 8, !dbg !610
  %5 = load ptr, ptr %p.addr, align 8, !dbg !611
  %bool_val_to_struct2 = getelementptr inbounds %struct.policydb, ptr %5, i32 0, i32 12, !dbg !613
  %6 = load ptr, ptr %bool_val_to_struct2, align 8, !dbg !613
  %tobool = icmp ne ptr %6, null, !dbg !611
  br i1 %tobool, label %if.end, label %if.then, !dbg !614

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !615
  br label %return, !dbg !615

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !616
  br label %return, !dbg !616

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !617
  ret i32 %7, !dbg !617
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !618 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !622, metadata !DIExpression()), !dbg !626
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !623, metadata !DIExpression()), !dbg !627
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !624, metadata !DIExpression()), !dbg !628
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !629
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !625, metadata !DIExpression()), !dbg !630
  %0 = load i64, ptr %n.addr, align 8, !dbg !631
  %1 = load i64, ptr %size.addr, align 8, !dbg !631
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !631
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !631
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !631
  store i64 %4, ptr %bytes, align 8, !dbg !631
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #19, !dbg !631
  %lnot = xor i1 %call, true, !dbg !631
  %lnot1 = xor i1 %lnot, true, !dbg !631
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !631
  %conv = sext i32 %lnot.ext to i64, !dbg !631
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !631
  %tobool = icmp ne i64 %expval, 0, !dbg !631
  br i1 %tobool, label %if.then, label %if.end, !dbg !633

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !634

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !635
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !637
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !638

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !639
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !640
  br i1 %8, label %if.then2, label %if.end4, !dbg !641

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !642
  %10 = load i32, ptr %flags.addr, align 4, !dbg !643
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #22, !dbg !644
  store ptr %call3, ptr %retval, align 8, !dbg !645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !645

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !646
  %12 = load i32, ptr %flags.addr, align 4, !dbg !647
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #22, !dbg !648
  store ptr %call5, ptr %retval, align 8, !dbg !649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !649

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !650
  %13 = load ptr, ptr %retval, align 8, !dbg !650
  ret ptr %13, !dbg !650
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cond_destroy_bool(ptr noundef %key, ptr noundef %datum, ptr noundef %p) #0 align 16 !dbg !651 {
entry:
  %key.addr = alloca ptr, align 8
  %datum.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !655, metadata !DIExpression()), !dbg !658
  store ptr %datum, ptr %datum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datum.addr, metadata !656, metadata !DIExpression()), !dbg !659
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !657, metadata !DIExpression()), !dbg !660
  %0 = load ptr, ptr %key.addr, align 8, !dbg !661
  call void @kfree(ptr noundef %0) #19, !dbg !662
  %1 = load ptr, ptr %datum.addr, align 8, !dbg !663
  call void @kfree(ptr noundef %1) #19, !dbg !664
  ret i32 0, !dbg !665
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cond_index_bool(ptr noundef %key, ptr noundef %datum, ptr noundef %datap) #0 align 16 !dbg !666 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %datum.addr = alloca ptr, align 8
  %datap.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %booldatum = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !668, metadata !DIExpression()), !dbg !673
  store ptr %datum, ptr %datum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datum.addr, metadata !669, metadata !DIExpression()), !dbg !674
  store ptr %datap, ptr %datap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datap.addr, metadata !670, metadata !DIExpression()), !dbg !675
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !676
  call void @llvm.dbg.declare(metadata ptr %p, metadata !671, metadata !DIExpression()), !dbg !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %booldatum) #18, !dbg !678
  call void @llvm.dbg.declare(metadata ptr %booldatum, metadata !672, metadata !DIExpression()), !dbg !679
  %0 = load ptr, ptr %datum.addr, align 8, !dbg !680
  store ptr %0, ptr %booldatum, align 8, !dbg !681
  %1 = load ptr, ptr %datap.addr, align 8, !dbg !682
  store ptr %1, ptr %p, align 8, !dbg !683
  %2 = load ptr, ptr %booldatum, align 8, !dbg !684
  %value = getelementptr inbounds %struct.cond_bool_datum, ptr %2, i32 0, i32 0, !dbg !686
  %3 = load i32, ptr %value, align 4, !dbg !686
  %tobool = icmp ne i32 %3, 0, !dbg !684
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !687

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %booldatum, align 8, !dbg !688
  %value1 = getelementptr inbounds %struct.cond_bool_datum, ptr %4, i32 0, i32 0, !dbg !689
  %5 = load i32, ptr %value1, align 4, !dbg !689
  %6 = load ptr, ptr %p, align 8, !dbg !690
  %symtab = getelementptr inbounds %struct.policydb, ptr %6, i32 0, i32 1, !dbg !691
  %arrayidx = getelementptr [8 x %struct.symtab], ptr %symtab, i64 0, i64 5, !dbg !690
  %nprim = getelementptr inbounds %struct.symtab, ptr %arrayidx, i32 0, i32 1, !dbg !692
  %7 = load i32, ptr %nprim, align 8, !dbg !692
  %cmp = icmp ugt i32 %5, %7, !dbg !693
  br i1 %cmp, label %if.then, label %if.end, !dbg !694

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !695

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %key.addr, align 8, !dbg !696
  %9 = load ptr, ptr %p, align 8, !dbg !697
  %sym_val_to_name = getelementptr inbounds %struct.policydb, ptr %9, i32 0, i32 2, !dbg !698
  %arrayidx2 = getelementptr [8 x ptr], ptr %sym_val_to_name, i64 0, i64 5, !dbg !697
  %10 = load ptr, ptr %arrayidx2, align 8, !dbg !697
  %11 = load ptr, ptr %booldatum, align 8, !dbg !699
  %value3 = getelementptr inbounds %struct.cond_bool_datum, ptr %11, i32 0, i32 0, !dbg !700
  %12 = load i32, ptr %value3, align 4, !dbg !700
  %sub = sub i32 %12, 1, !dbg !701
  %idxprom = zext i32 %sub to i64, !dbg !697
  %arrayidx4 = getelementptr ptr, ptr %10, i64 %idxprom, !dbg !697
  store ptr %8, ptr %arrayidx4, align 8, !dbg !702
  %13 = load ptr, ptr %booldatum, align 8, !dbg !703
  %14 = load ptr, ptr %p, align 8, !dbg !704
  %bool_val_to_struct = getelementptr inbounds %struct.policydb, ptr %14, i32 0, i32 12, !dbg !705
  %15 = load ptr, ptr %bool_val_to_struct, align 8, !dbg !705
  %16 = load ptr, ptr %booldatum, align 8, !dbg !706
  %value5 = getelementptr inbounds %struct.cond_bool_datum, ptr %16, i32 0, i32 0, !dbg !707
  %17 = load i32, ptr %value5, align 4, !dbg !707
  %sub6 = sub i32 %17, 1, !dbg !708
  %idxprom7 = zext i32 %sub6 to i64, !dbg !704
  %arrayidx8 = getelementptr ptr, ptr %15, i64 %idxprom7, !dbg !704
  store ptr %13, ptr %arrayidx8, align 8, !dbg !709
  store i32 0, ptr %retval, align 4, !dbg !710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !710

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %booldatum) #18, !dbg !711
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !711
  %18 = load i32, ptr %retval, align 4, !dbg !711
  ret i32 %18, !dbg !711
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cond_read_bool(ptr noundef %p, ptr noundef %s, ptr noundef %fp) #0 align 16 !dbg !712 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %booldatum = alloca ptr, align 8
  %buf = alloca [3 x i32], align 4
  %len = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !717, metadata !DIExpression()), !dbg !729
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !718, metadata !DIExpression()), !dbg !730
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !719, metadata !DIExpression()), !dbg !731
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #18, !dbg !732
  call void @llvm.dbg.declare(metadata ptr %key, metadata !720, metadata !DIExpression()), !dbg !733
  store ptr null, ptr %key, align 8, !dbg !733
  call void @llvm.lifetime.start.p0(i64 8, ptr %booldatum) #18, !dbg !734
  call void @llvm.dbg.declare(metadata ptr %booldatum, metadata !721, metadata !DIExpression()), !dbg !735
  call void @llvm.lifetime.start.p0(i64 12, ptr %buf) #18, !dbg !736
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !722, metadata !DIExpression()), !dbg !737
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #18, !dbg !738
  call void @llvm.dbg.declare(metadata ptr %len, metadata !726, metadata !DIExpression()), !dbg !739
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #18, !dbg !740
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !727, metadata !DIExpression()), !dbg !741
  %call = call noalias ptr @kzalloc(i64 noundef 8, i32 noundef 3264) #22, !dbg !742
  store ptr %call, ptr %booldatum, align 8, !dbg !743
  %0 = load ptr, ptr %booldatum, align 8, !dbg !744
  %tobool = icmp ne ptr %0, null, !dbg !744
  br i1 %tobool, label %if.end, label %if.then, !dbg !746

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !747

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [3 x i32], ptr %buf, i64 0, i64 0, !dbg !748
  %1 = load ptr, ptr %fp.addr, align 8, !dbg !749
  %call1 = call i32 @next_entry(ptr noundef %arraydecay, ptr noundef %1, i64 noundef 12) #19, !dbg !750
  store i32 %call1, ptr %rc, align 4, !dbg !751
  %2 = load i32, ptr %rc, align 4, !dbg !752
  %tobool2 = icmp ne i32 %2, 0, !dbg !752
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !754

if.then3:                                         ; preds = %if.end
  br label %err, !dbg !755

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr [3 x i32], ptr %buf, i64 0, i64 0, !dbg !756
  %3 = load i32, ptr %arrayidx, align 4, !dbg !756
  %4 = load ptr, ptr %booldatum, align 8, !dbg !757
  %value = getelementptr inbounds %struct.cond_bool_datum, ptr %4, i32 0, i32 0, !dbg !758
  store i32 %3, ptr %value, align 4, !dbg !759
  %arrayidx5 = getelementptr [3 x i32], ptr %buf, i64 0, i64 1, !dbg !760
  %5 = load i32, ptr %arrayidx5, align 4, !dbg !760
  %6 = load ptr, ptr %booldatum, align 8, !dbg !761
  %state = getelementptr inbounds %struct.cond_bool_datum, ptr %6, i32 0, i32 1, !dbg !762
  store i32 %5, ptr %state, align 4, !dbg !763
  store i32 -22, ptr %rc, align 4, !dbg !764
  %7 = load ptr, ptr %booldatum, align 8, !dbg !765
  %call6 = call i32 @bool_isvalid(ptr noundef %7) #19, !dbg !767
  %tobool7 = icmp ne i32 %call6, 0, !dbg !767
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !768

if.then8:                                         ; preds = %if.end4
  br label %err, !dbg !769

if.end9:                                          ; preds = %if.end4
  %arrayidx10 = getelementptr [3 x i32], ptr %buf, i64 0, i64 2, !dbg !770
  %8 = load i32, ptr %arrayidx10, align 4, !dbg !770
  store i32 %8, ptr %len, align 4, !dbg !771
  %9 = load i32, ptr %len, align 4, !dbg !772
  %cmp = icmp eq i32 %9, 0, !dbg !774
  br i1 %cmp, label %if.then12, label %lor.lhs.false, !dbg !775

lor.lhs.false:                                    ; preds = %if.end9
  %10 = load i32, ptr %len, align 4, !dbg !776
  %cmp11 = icmp eq i32 %10, -1, !dbg !777
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !778

if.then12:                                        ; preds = %lor.lhs.false, %if.end9
  br label %err, !dbg !779

if.end13:                                         ; preds = %lor.lhs.false
  store i32 -12, ptr %rc, align 4, !dbg !780
  %11 = load i32, ptr %len, align 4, !dbg !781
  %add = add i32 %11, 1, !dbg !782
  %conv = zext i32 %add to i64, !dbg !781
  %call14 = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3264) #22, !dbg !783
  store ptr %call14, ptr %key, align 8, !dbg !784
  %12 = load ptr, ptr %key, align 8, !dbg !785
  %tobool15 = icmp ne ptr %12, null, !dbg !785
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !787

if.then16:                                        ; preds = %if.end13
  br label %err, !dbg !788

if.end17:                                         ; preds = %if.end13
  %13 = load ptr, ptr %key, align 8, !dbg !789
  %14 = load ptr, ptr %fp.addr, align 8, !dbg !790
  %15 = load i32, ptr %len, align 4, !dbg !791
  %conv18 = zext i32 %15 to i64, !dbg !791
  %call19 = call i32 @next_entry(ptr noundef %13, ptr noundef %14, i64 noundef %conv18) #19, !dbg !792
  store i32 %call19, ptr %rc, align 4, !dbg !793
  %16 = load i32, ptr %rc, align 4, !dbg !794
  %tobool20 = icmp ne i32 %16, 0, !dbg !794
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !796

if.then21:                                        ; preds = %if.end17
  br label %err, !dbg !797

if.end22:                                         ; preds = %if.end17
  %17 = load ptr, ptr %key, align 8, !dbg !798
  %18 = load i32, ptr %len, align 4, !dbg !799
  %idxprom = zext i32 %18 to i64, !dbg !798
  %arrayidx23 = getelementptr i8, ptr %17, i64 %idxprom, !dbg !798
  store i8 0, ptr %arrayidx23, align 1, !dbg !800
  %19 = load ptr, ptr %s.addr, align 8, !dbg !801
  %20 = load ptr, ptr %key, align 8, !dbg !802
  %21 = load ptr, ptr %booldatum, align 8, !dbg !803
  %call24 = call i32 @symtab_insert(ptr noundef %19, ptr noundef %20, ptr noundef %21) #19, !dbg !804
  store i32 %call24, ptr %rc, align 4, !dbg !805
  %22 = load i32, ptr %rc, align 4, !dbg !806
  %tobool25 = icmp ne i32 %22, 0, !dbg !806
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !808

if.then26:                                        ; preds = %if.end22
  br label %err, !dbg !809

if.end27:                                         ; preds = %if.end22
  store i32 0, ptr %retval, align 4, !dbg !810
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !810

err:                                              ; preds = %if.then26, %if.then21, %if.then16, %if.then12, %if.then8, %if.then3
  call void @llvm.dbg.label(metadata !728), !dbg !811
  %23 = load ptr, ptr %key, align 8, !dbg !812
  %24 = load ptr, ptr %booldatum, align 8, !dbg !813
  %call28 = call i32 @cond_destroy_bool(ptr noundef %23, ptr noundef %24, ptr noundef null) #19, !dbg !814
  %25 = load i32, ptr %rc, align 4, !dbg !815
  store i32 %25, ptr %retval, align 4, !dbg !816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !816

cleanup:                                          ; preds = %err, %if.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #18, !dbg !817
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #18, !dbg !817
  call void @llvm.lifetime.end.p0(i64 12, ptr %buf) #18, !dbg !817
  call void @llvm.lifetime.end.p0(i64 8, ptr %booldatum) #18, !dbg !817
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #18, !dbg !817
  %26 = load i32, ptr %retval, align 4, !dbg !817
  ret i32 %26, !dbg !817
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !818 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !822, metadata !DIExpression()), !dbg !824
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !823, metadata !DIExpression()), !dbg !825
  %0 = load i64, ptr %size.addr, align 8, !dbg !826
  %1 = load i32, ptr %flags.addr, align 4, !dbg !827
  %or = or i32 %1, 256, !dbg !828
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #22, !dbg !829
  ret ptr %call, !dbg !830
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @next_entry(ptr noundef %buf, ptr noundef %fp, i64 noundef %bytes) #6 align 16 !dbg !831 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !840, metadata !DIExpression()), !dbg !843
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !841, metadata !DIExpression()), !dbg !844
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !842, metadata !DIExpression()), !dbg !845
  %0 = load i64, ptr %bytes.addr, align 8, !dbg !846
  %1 = load ptr, ptr %fp.addr, align 8, !dbg !848
  %len = getelementptr inbounds %struct.policy_file, ptr %1, i32 0, i32 1, !dbg !849
  %2 = load i64, ptr %len, align 8, !dbg !849
  %cmp = icmp ugt i64 %0, %2, !dbg !850
  br i1 %cmp, label %if.then, label %if.end, !dbg !851

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !852
  br label %return, !dbg !852

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !853
  %4 = load ptr, ptr %fp.addr, align 8, !dbg !854
  %data = getelementptr inbounds %struct.policy_file, ptr %4, i32 0, i32 0, !dbg !855
  %5 = load ptr, ptr %data, align 8, !dbg !855
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !856
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %5, i64 %6, i1 false), !dbg !857
  %7 = load i64, ptr %bytes.addr, align 8, !dbg !858
  %8 = load ptr, ptr %fp.addr, align 8, !dbg !859
  %data1 = getelementptr inbounds %struct.policy_file, ptr %8, i32 0, i32 0, !dbg !860
  %9 = load ptr, ptr %data1, align 8, !dbg !861
  %add.ptr = getelementptr i8, ptr %9, i64 %7, !dbg !861
  store ptr %add.ptr, ptr %data1, align 8, !dbg !861
  %10 = load i64, ptr %bytes.addr, align 8, !dbg !862
  %11 = load ptr, ptr %fp.addr, align 8, !dbg !863
  %len2 = getelementptr inbounds %struct.policy_file, ptr %11, i32 0, i32 1, !dbg !864
  %12 = load i64, ptr %len2, align 8, !dbg !865
  %sub = sub i64 %12, %10, !dbg !865
  store i64 %sub, ptr %len2, align 8, !dbg !865
  store i32 0, ptr %retval, align 4, !dbg !866
  br label %return, !dbg !866

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !867
  ret i32 %13, !dbg !867
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bool_isvalid(ptr noundef %b) #0 align 16 !dbg !868 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !872, metadata !DIExpression()), !dbg !873
  %0 = load ptr, ptr %b.addr, align 8, !dbg !874
  %state = getelementptr inbounds %struct.cond_bool_datum, ptr %0, i32 0, i32 1, !dbg !876
  %1 = load i32, ptr %state, align 4, !dbg !876
  %cmp = icmp eq i32 %1, 0, !dbg !877
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !878

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %b.addr, align 8, !dbg !879
  %state1 = getelementptr inbounds %struct.cond_bool_datum, ptr %2, i32 0, i32 1, !dbg !880
  %3 = load i32, ptr %state1, align 4, !dbg !880
  %cmp2 = icmp eq i32 %3, 1, !dbg !881
  br i1 %cmp2, label %if.end, label %if.then, !dbg !882

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !883
  br label %return, !dbg !883

if.end:                                           ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4, !dbg !884
  br label %return, !dbg !884

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !885
  ret i32 %4, !dbg !885
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !886 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !888, metadata !DIExpression()), !dbg !893
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !889, metadata !DIExpression()), !dbg !894
  %0 = load i64, ptr %size.addr, align 8, !dbg !895
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !896
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !897

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !898
  %tobool = icmp ne i64 %2, 0, !dbg !898
  br i1 %tobool, label %if.then, label %if.end7, !dbg !899

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %index, metadata !890, metadata !DIExpression()), !dbg !901
  %3 = load i64, ptr %size.addr, align 8, !dbg !902
  %cmp = icmp ugt i64 %3, 8192, !dbg !904
  br i1 %cmp, label %if.then1, label %if.end, !dbg !905

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !906
  %5 = load i32, ptr %flags.addr, align 4, !dbg !907
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #22, !dbg !908
  store ptr %call, ptr %retval, align 8, !dbg !909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !909

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !910
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !910
  store i32 %call2, ptr %index, align 4, !dbg !911
  %7 = load i32, ptr %flags.addr, align 4, !dbg !912
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !913
  %9 = ptrtoint ptr %8 to i64, !dbg !913
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !914
  %idxprom = zext i32 %call3 to i64, !dbg !915
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !915
  %10 = load i32, ptr %index, align 4, !dbg !916
  %idxprom4 = zext i32 %10 to i64, !dbg !915
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !915
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !915
  %12 = load i32, ptr %flags.addr, align 4, !dbg !917
  %13 = load i64, ptr %size.addr, align 8, !dbg !918
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #23, !dbg !919
  store ptr %call6, ptr %retval, align 8, !dbg !920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !920

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !921
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !922
  %15 = load i32, ptr %flags.addr, align 4, !dbg !923
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #22, !dbg !924
  store ptr %call8, ptr %retval, align 8, !dbg !925
  br label %return, !dbg !925

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !926
  ret ptr %16, !dbg !926
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !927 dso_local i32 @symtab_insert(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cond_read_list(ptr noundef %p, ptr noundef %fp) #0 align 16 !dbg !930 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %buf = alloca [1 x i32], align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !934, metadata !DIExpression()), !dbg !944
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !935, metadata !DIExpression()), !dbg !945
  call void @llvm.lifetime.start.p0(i64 4, ptr %buf) #18, !dbg !946
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !936, metadata !DIExpression()), !dbg !947
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !948
  call void @llvm.dbg.declare(metadata ptr %i, metadata !940, metadata !DIExpression()), !dbg !949
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #18, !dbg !948
  call void @llvm.dbg.declare(metadata ptr %len, metadata !941, metadata !DIExpression()), !dbg !950
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #18, !dbg !951
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !942, metadata !DIExpression()), !dbg !952
  %arraydecay = getelementptr inbounds [1 x i32], ptr %buf, i64 0, i64 0, !dbg !953
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !954
  %call = call i32 @next_entry(ptr noundef %arraydecay, ptr noundef %0, i64 noundef 4) #19, !dbg !955
  store i32 %call, ptr %rc, align 4, !dbg !956
  %1 = load i32, ptr %rc, align 4, !dbg !957
  %tobool = icmp ne i32 %1, 0, !dbg !957
  br i1 %tobool, label %if.then, label %if.end, !dbg !959

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4, !dbg !960
  store i32 %2, ptr %retval, align 4, !dbg !961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !961

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [1 x i32], ptr %buf, i64 0, i64 0, !dbg !962
  %3 = load i32, ptr %arrayidx, align 4, !dbg !962
  store i32 %3, ptr %len, align 4, !dbg !963
  %4 = load i32, ptr %len, align 4, !dbg !964
  %conv = zext i32 %4 to i64, !dbg !964
  %call1 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 56, i32 noundef 3264) #21, !dbg !965
  %5 = load ptr, ptr %p.addr, align 8, !dbg !966
  %cond_list = getelementptr inbounds %struct.policydb, ptr %5, i32 0, i32 14, !dbg !967
  store ptr %call1, ptr %cond_list, align 8, !dbg !968
  %6 = load ptr, ptr %p.addr, align 8, !dbg !969
  %cond_list2 = getelementptr inbounds %struct.policydb, ptr %6, i32 0, i32 14, !dbg !971
  %7 = load ptr, ptr %cond_list2, align 8, !dbg !971
  %tobool3 = icmp ne ptr %7, null, !dbg !969
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !972

if.then4:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !973
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !973

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %p.addr, align 8, !dbg !974
  %te_cond_avtab = getelementptr inbounds %struct.policydb, ptr %8, i32 0, i32 13, !dbg !975
  %9 = load ptr, ptr %p.addr, align 8, !dbg !976
  %te_avtab = getelementptr inbounds %struct.policydb, ptr %9, i32 0, i32 7, !dbg !977
  %nel = getelementptr inbounds %struct.avtab, ptr %te_avtab, i32 0, i32 1, !dbg !978
  %10 = load i32, ptr %nel, align 8, !dbg !978
  %call6 = call i32 @avtab_alloc(ptr noundef %te_cond_avtab, i32 noundef %10) #19, !dbg !979
  store i32 %call6, ptr %rc, align 4, !dbg !980
  %11 = load i32, ptr %rc, align 4, !dbg !981
  %tobool7 = icmp ne i32 %11, 0, !dbg !981
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !983

if.then8:                                         ; preds = %if.end5
  br label %err, !dbg !984

if.end9:                                          ; preds = %if.end5
  %12 = load i32, ptr %len, align 4, !dbg !985
  %13 = load ptr, ptr %p.addr, align 8, !dbg !986
  %cond_list_len = getelementptr inbounds %struct.policydb, ptr %13, i32 0, i32 15, !dbg !987
  store i32 %12, ptr %cond_list_len, align 8, !dbg !988
  store i32 0, ptr %i, align 4, !dbg !989
  br label %for.cond, !dbg !991

for.cond:                                         ; preds = %for.inc, %if.end9
  %14 = load i32, ptr %i, align 4, !dbg !992
  %15 = load i32, ptr %len, align 4, !dbg !994
  %cmp = icmp ult i32 %14, %15, !dbg !995
  br i1 %cmp, label %for.body, label %for.end, !dbg !996

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %p.addr, align 8, !dbg !997
  %17 = load ptr, ptr %p.addr, align 8, !dbg !999
  %cond_list11 = getelementptr inbounds %struct.policydb, ptr %17, i32 0, i32 14, !dbg !1000
  %18 = load ptr, ptr %cond_list11, align 8, !dbg !1000
  %19 = load i32, ptr %i, align 4, !dbg !1001
  %idxprom = zext i32 %19 to i64, !dbg !999
  %arrayidx12 = getelementptr %struct.cond_node, ptr %18, i64 %idxprom, !dbg !999
  %20 = load ptr, ptr %fp.addr, align 8, !dbg !1002
  %call13 = call i32 @cond_read_node(ptr noundef %16, ptr noundef %arrayidx12, ptr noundef %20) #19, !dbg !1003
  store i32 %call13, ptr %rc, align 4, !dbg !1004
  %21 = load i32, ptr %rc, align 4, !dbg !1005
  %tobool14 = icmp ne i32 %21, 0, !dbg !1005
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1007

if.then15:                                        ; preds = %for.body
  br label %err, !dbg !1008

if.end16:                                         ; preds = %for.body
  br label %for.inc, !dbg !1009

for.inc:                                          ; preds = %if.end16
  %22 = load i32, ptr %i, align 4, !dbg !1010
  %inc = add i32 %22, 1, !dbg !1010
  store i32 %inc, ptr %i, align 4, !dbg !1010
  br label %for.cond, !dbg !1011, !llvm.loop !1012

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1014
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1014

err:                                              ; preds = %if.then15, %if.then8
  call void @llvm.dbg.label(metadata !943), !dbg !1015
  %23 = load ptr, ptr %p.addr, align 8, !dbg !1016
  call void @cond_list_destroy(ptr noundef %23) #19, !dbg !1017
  %24 = load i32, ptr %rc, align 4, !dbg !1018
  store i32 %24, ptr %retval, align 4, !dbg !1019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1019

cleanup:                                          ; preds = %err, %for.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #18, !dbg !1020
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #18, !dbg !1020
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !1020
  call void @llvm.lifetime.end.p0(i64 4, ptr %buf) #18, !dbg !1020
  %25 = load i32, ptr %retval, align 4, !dbg !1020
  ret i32 %25, !dbg !1020
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !1021 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1023, metadata !DIExpression()), !dbg !1026
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1024, metadata !DIExpression()), !dbg !1027
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1025, metadata !DIExpression()), !dbg !1028
  %0 = load i64, ptr %n.addr, align 8, !dbg !1029
  %1 = load i64, ptr %size.addr, align 8, !dbg !1030
  %2 = load i32, ptr %flags.addr, align 4, !dbg !1031
  %or = or i32 %2, 256, !dbg !1032
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #21, !dbg !1033
  ret ptr %call, !dbg !1034
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1035 dso_local i32 @avtab_alloc(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cond_read_node(ptr noundef %p, ptr noundef %node, ptr noundef %fp) #0 align 16 !dbg !1038 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %buf = alloca [2 x i32], align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %expr11 = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1042, metadata !DIExpression()), !dbg !1054
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1043, metadata !DIExpression()), !dbg !1055
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1044, metadata !DIExpression()), !dbg !1056
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #18, !dbg !1057
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1045, metadata !DIExpression()), !dbg !1058
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !1059
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1047, metadata !DIExpression()), !dbg !1060
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #18, !dbg !1059
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1048, metadata !DIExpression()), !dbg !1061
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #18, !dbg !1062
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1049, metadata !DIExpression()), !dbg !1063
  %arraydecay = getelementptr inbounds [2 x i32], ptr %buf, i64 0, i64 0, !dbg !1064
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !1065
  %call = call i32 @next_entry(ptr noundef %arraydecay, ptr noundef %0, i64 noundef 8) #19, !dbg !1066
  store i32 %call, ptr %rc, align 4, !dbg !1067
  %1 = load i32, ptr %rc, align 4, !dbg !1068
  %tobool = icmp ne i32 %1, 0, !dbg !1068
  br i1 %tobool, label %if.then, label %if.end, !dbg !1070

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4, !dbg !1071
  store i32 %2, ptr %retval, align 4, !dbg !1072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1072

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x i32], ptr %buf, i64 0, i64 0, !dbg !1073
  %3 = load i32, ptr %arrayidx, align 4, !dbg !1073
  %4 = load ptr, ptr %node.addr, align 8, !dbg !1074
  %cur_state = getelementptr inbounds %struct.cond_node, ptr %4, i32 0, i32 0, !dbg !1075
  store i32 %3, ptr %cur_state, align 8, !dbg !1076
  %arrayidx1 = getelementptr [2 x i32], ptr %buf, i64 0, i64 1, !dbg !1077
  %5 = load i32, ptr %arrayidx1, align 4, !dbg !1077
  store i32 %5, ptr %len, align 4, !dbg !1078
  %6 = load i32, ptr %len, align 4, !dbg !1079
  %conv = zext i32 %6 to i64, !dbg !1079
  %call2 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #21, !dbg !1080
  %7 = load ptr, ptr %node.addr, align 8, !dbg !1081
  %expr = getelementptr inbounds %struct.cond_node, ptr %7, i32 0, i32 1, !dbg !1082
  %nodes = getelementptr inbounds %struct.cond_expr, ptr %expr, i32 0, i32 0, !dbg !1083
  store ptr %call2, ptr %nodes, align 8, !dbg !1084
  %8 = load ptr, ptr %node.addr, align 8, !dbg !1085
  %expr3 = getelementptr inbounds %struct.cond_node, ptr %8, i32 0, i32 1, !dbg !1087
  %nodes4 = getelementptr inbounds %struct.cond_expr, ptr %expr3, i32 0, i32 0, !dbg !1088
  %9 = load ptr, ptr %nodes4, align 8, !dbg !1088
  %tobool5 = icmp ne ptr %9, null, !dbg !1085
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1089

if.then6:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !1090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1090

if.end7:                                          ; preds = %if.end
  %10 = load i32, ptr %len, align 4, !dbg !1091
  %11 = load ptr, ptr %node.addr, align 8, !dbg !1092
  %expr8 = getelementptr inbounds %struct.cond_node, ptr %11, i32 0, i32 1, !dbg !1093
  %len9 = getelementptr inbounds %struct.cond_expr, ptr %expr8, i32 0, i32 1, !dbg !1094
  store i32 %10, ptr %len9, align 8, !dbg !1095
  store i32 0, ptr %i, align 4, !dbg !1096
  br label %for.cond, !dbg !1097

for.cond:                                         ; preds = %for.inc, %if.end7
  %12 = load i32, ptr %i, align 4, !dbg !1098
  %13 = load i32, ptr %len, align 4, !dbg !1099
  %cmp = icmp ult i32 %12, %13, !dbg !1100
  br i1 %cmp, label %for.body, label %for.end, !dbg !1101

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %expr11) #18, !dbg !1102
  call void @llvm.dbg.declare(metadata ptr %expr11, metadata !1050, metadata !DIExpression()), !dbg !1103
  %14 = load ptr, ptr %node.addr, align 8, !dbg !1104
  %expr12 = getelementptr inbounds %struct.cond_node, ptr %14, i32 0, i32 1, !dbg !1105
  %nodes13 = getelementptr inbounds %struct.cond_expr, ptr %expr12, i32 0, i32 0, !dbg !1106
  %15 = load ptr, ptr %nodes13, align 8, !dbg !1106
  %16 = load i32, ptr %i, align 4, !dbg !1107
  %idxprom = zext i32 %16 to i64, !dbg !1104
  %arrayidx14 = getelementptr %struct.cond_expr_node, ptr %15, i64 %idxprom, !dbg !1104
  store ptr %arrayidx14, ptr %expr11, align 8, !dbg !1103
  %arraydecay15 = getelementptr inbounds [2 x i32], ptr %buf, i64 0, i64 0, !dbg !1108
  %17 = load ptr, ptr %fp.addr, align 8, !dbg !1109
  %call16 = call i32 @next_entry(ptr noundef %arraydecay15, ptr noundef %17, i64 noundef 8) #19, !dbg !1110
  store i32 %call16, ptr %rc, align 4, !dbg !1111
  %18 = load i32, ptr %rc, align 4, !dbg !1112
  %tobool17 = icmp ne i32 %18, 0, !dbg !1112
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !1114

if.then18:                                        ; preds = %for.body
  %19 = load i32, ptr %rc, align 4, !dbg !1115
  store i32 %19, ptr %retval, align 4, !dbg !1116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1116

if.end19:                                         ; preds = %for.body
  %arrayidx20 = getelementptr [2 x i32], ptr %buf, i64 0, i64 0, !dbg !1117
  %20 = load i32, ptr %arrayidx20, align 4, !dbg !1117
  %21 = load ptr, ptr %expr11, align 8, !dbg !1118
  %expr_type = getelementptr inbounds %struct.cond_expr_node, ptr %21, i32 0, i32 0, !dbg !1119
  store i32 %20, ptr %expr_type, align 4, !dbg !1120
  %arrayidx21 = getelementptr [2 x i32], ptr %buf, i64 0, i64 1, !dbg !1121
  %22 = load i32, ptr %arrayidx21, align 4, !dbg !1121
  %23 = load ptr, ptr %expr11, align 8, !dbg !1122
  %boolean = getelementptr inbounds %struct.cond_expr_node, ptr %23, i32 0, i32 1, !dbg !1123
  store i32 %22, ptr %boolean, align 4, !dbg !1124
  %24 = load ptr, ptr %p.addr, align 8, !dbg !1125
  %25 = load ptr, ptr %expr11, align 8, !dbg !1127
  %call22 = call i32 @expr_node_isvalid(ptr noundef %24, ptr noundef %25) #19, !dbg !1128
  %tobool23 = icmp ne i32 %call22, 0, !dbg !1128
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !1129

if.then24:                                        ; preds = %if.end19
  store i32 -22, ptr %retval, align 4, !dbg !1130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1130

if.end25:                                         ; preds = %if.end19
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1131
  br label %cleanup, !dbg !1131

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %expr11) #18, !dbg !1131
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1132

for.inc:                                          ; preds = %cleanup.cont
  %26 = load i32, ptr %i, align 4, !dbg !1133
  %inc = add i32 %26, 1, !dbg !1133
  store i32 %inc, ptr %i, align 4, !dbg !1133
  br label %for.cond, !dbg !1134, !llvm.loop !1135

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %p.addr, align 8, !dbg !1137
  %28 = load ptr, ptr %fp.addr, align 8, !dbg !1138
  %29 = load ptr, ptr %node.addr, align 8, !dbg !1139
  %true_list = getelementptr inbounds %struct.cond_node, ptr %29, i32 0, i32 2, !dbg !1140
  %call26 = call i32 @cond_read_av_list(ptr noundef %27, ptr noundef %28, ptr noundef %true_list, ptr noundef null) #19, !dbg !1141
  store i32 %call26, ptr %rc, align 4, !dbg !1142
  %30 = load i32, ptr %rc, align 4, !dbg !1143
  %tobool27 = icmp ne i32 %30, 0, !dbg !1143
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !1145

if.then28:                                        ; preds = %for.end
  %31 = load i32, ptr %rc, align 4, !dbg !1146
  store i32 %31, ptr %retval, align 4, !dbg !1147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1147

if.end29:                                         ; preds = %for.end
  %32 = load ptr, ptr %p.addr, align 8, !dbg !1148
  %33 = load ptr, ptr %fp.addr, align 8, !dbg !1149
  %34 = load ptr, ptr %node.addr, align 8, !dbg !1150
  %false_list = getelementptr inbounds %struct.cond_node, ptr %34, i32 0, i32 3, !dbg !1151
  %35 = load ptr, ptr %node.addr, align 8, !dbg !1152
  %true_list30 = getelementptr inbounds %struct.cond_node, ptr %35, i32 0, i32 2, !dbg !1153
  %call31 = call i32 @cond_read_av_list(ptr noundef %32, ptr noundef %33, ptr noundef %false_list, ptr noundef %true_list30) #19, !dbg !1154
  store i32 %call31, ptr %retval, align 4, !dbg !1155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !1155

cleanup32:                                        ; preds = %if.end29, %if.then28, %cleanup, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #18, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #18, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !1156
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #18, !dbg !1156
  %36 = load i32, ptr %retval, align 4, !dbg !1156
  ret i32 %36, !dbg !1156
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cond_write_bool(ptr noundef %vkey, ptr noundef %datum, ptr noundef %ptr) #0 align 16 !dbg !1157 {
entry:
  %retval = alloca i32, align 4
  %vkey.addr = alloca ptr, align 8
  %datum.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %booldatum = alloca ptr, align 8
  %pd = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %buf = alloca [3 x i32], align 4
  %len = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vkey, ptr %vkey.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vkey.addr, metadata !1159, metadata !DIExpression()), !dbg !1174
  store ptr %datum, ptr %datum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datum.addr, metadata !1160, metadata !DIExpression()), !dbg !1175
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1161, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #18, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %key, metadata !1162, metadata !DIExpression()), !dbg !1178
  %0 = load ptr, ptr %vkey.addr, align 8, !dbg !1179
  store ptr %0, ptr %key, align 8, !dbg !1178
  call void @llvm.lifetime.start.p0(i64 8, ptr %booldatum) #18, !dbg !1180
  call void @llvm.dbg.declare(metadata ptr %booldatum, metadata !1163, metadata !DIExpression()), !dbg !1181
  %1 = load ptr, ptr %datum.addr, align 8, !dbg !1182
  store ptr %1, ptr %booldatum, align 8, !dbg !1181
  call void @llvm.lifetime.start.p0(i64 8, ptr %pd) #18, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %pd, metadata !1164, metadata !DIExpression()), !dbg !1184
  %2 = load ptr, ptr %ptr.addr, align 8, !dbg !1185
  store ptr %2, ptr %pd, align 8, !dbg !1184
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #18, !dbg !1186
  call void @llvm.dbg.declare(metadata ptr %fp, metadata !1170, metadata !DIExpression()), !dbg !1187
  %3 = load ptr, ptr %pd, align 8, !dbg !1188
  %fp1 = getelementptr inbounds %struct.policy_data, ptr %3, i32 0, i32 1, !dbg !1189
  %4 = load ptr, ptr %fp1, align 8, !dbg !1189
  store ptr %4, ptr %fp, align 8, !dbg !1187
  call void @llvm.lifetime.start.p0(i64 12, ptr %buf) #18, !dbg !1190
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1171, metadata !DIExpression()), !dbg !1191
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #18, !dbg !1192
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1172, metadata !DIExpression()), !dbg !1193
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #18, !dbg !1194
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1173, metadata !DIExpression()), !dbg !1195
  %5 = load ptr, ptr %key, align 8, !dbg !1196
  %call = call i64 @strlen(ptr noundef %5) #19, !dbg !1197
  %conv = trunc i64 %call to i32, !dbg !1197
  store i32 %conv, ptr %len, align 4, !dbg !1198
  %6 = load ptr, ptr %booldatum, align 8, !dbg !1199
  %value = getelementptr inbounds %struct.cond_bool_datum, ptr %6, i32 0, i32 0, !dbg !1199
  %7 = load i32, ptr %value, align 4, !dbg !1199
  %arrayidx = getelementptr [3 x i32], ptr %buf, i64 0, i64 0, !dbg !1200
  store i32 %7, ptr %arrayidx, align 4, !dbg !1201
  %8 = load ptr, ptr %booldatum, align 8, !dbg !1202
  %state = getelementptr inbounds %struct.cond_bool_datum, ptr %8, i32 0, i32 1, !dbg !1202
  %9 = load i32, ptr %state, align 4, !dbg !1202
  %arrayidx2 = getelementptr [3 x i32], ptr %buf, i64 0, i64 1, !dbg !1203
  store i32 %9, ptr %arrayidx2, align 4, !dbg !1204
  %10 = load i32, ptr %len, align 4, !dbg !1205
  %arrayidx3 = getelementptr [3 x i32], ptr %buf, i64 0, i64 2, !dbg !1206
  store i32 %10, ptr %arrayidx3, align 4, !dbg !1207
  %arraydecay = getelementptr inbounds [3 x i32], ptr %buf, i64 0, i64 0, !dbg !1208
  %11 = load ptr, ptr %fp, align 8, !dbg !1209
  %call4 = call i32 @put_entry(ptr noundef %arraydecay, i64 noundef 4, i64 noundef 3, ptr noundef %11) #19, !dbg !1210
  store i32 %call4, ptr %rc, align 4, !dbg !1211
  %12 = load i32, ptr %rc, align 4, !dbg !1212
  %tobool = icmp ne i32 %12, 0, !dbg !1212
  br i1 %tobool, label %if.then, label %if.end, !dbg !1214

if.then:                                          ; preds = %entry
  %13 = load i32, ptr %rc, align 4, !dbg !1215
  store i32 %13, ptr %retval, align 4, !dbg !1216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1216

if.end:                                           ; preds = %entry
  %14 = load ptr, ptr %key, align 8, !dbg !1217
  %15 = load i32, ptr %len, align 4, !dbg !1218
  %conv5 = zext i32 %15 to i64, !dbg !1218
  %16 = load ptr, ptr %fp, align 8, !dbg !1219
  %call6 = call i32 @put_entry(ptr noundef %14, i64 noundef 1, i64 noundef %conv5, ptr noundef %16) #19, !dbg !1220
  store i32 %call6, ptr %rc, align 4, !dbg !1221
  %17 = load i32, ptr %rc, align 4, !dbg !1222
  %tobool7 = icmp ne i32 %17, 0, !dbg !1222
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1224

if.then8:                                         ; preds = %if.end
  %18 = load i32, ptr %rc, align 4, !dbg !1225
  store i32 %18, ptr %retval, align 4, !dbg !1226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1226

if.end9:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1227

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #18, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #18, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 12, ptr %buf) #18, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #18, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %pd) #18, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %booldatum) #18, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #18, !dbg !1228
  %19 = load i32, ptr %retval, align 4, !dbg !1228
  ret i32 %19, !dbg !1228
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1229 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_entry(ptr noundef %buf, i64 noundef %bytes, i64 noundef %num, ptr noundef %fp) #6 align 16 !dbg !1235 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %fp.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1239, metadata !DIExpression()), !dbg !1244
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !1240, metadata !DIExpression()), !dbg !1245
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1241, metadata !DIExpression()), !dbg !1246
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #18, !dbg !1248
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1243, metadata !DIExpression()), !dbg !1249
  %0 = load i64, ptr %bytes.addr, align 8, !dbg !1250
  %1 = load i64, ptr %num.addr, align 8, !dbg !1250
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !1250
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !1250
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !1250
  store i64 %4, ptr %len, align 8, !dbg !1250
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #19, !dbg !1250
  %lnot = xor i1 %call, true, !dbg !1250
  %lnot1 = xor i1 %lnot, true, !dbg !1250
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1250
  %conv = sext i32 %lnot.ext to i64, !dbg !1250
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1250
  %tobool = icmp ne i64 %expval, 0, !dbg !1250
  br i1 %tobool, label %if.then, label %if.end, !dbg !1252

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1253

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %len, align 8, !dbg !1254
  %6 = load ptr, ptr %fp.addr, align 8, !dbg !1256
  %len2 = getelementptr inbounds %struct.policy_file, ptr %6, i32 0, i32 1, !dbg !1257
  %7 = load i64, ptr %len2, align 8, !dbg !1257
  %cmp = icmp ugt i64 %5, %7, !dbg !1258
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !1259

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1260

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %fp.addr, align 8, !dbg !1261
  %data = getelementptr inbounds %struct.policy_file, ptr %8, i32 0, i32 0, !dbg !1262
  %9 = load ptr, ptr %data, align 8, !dbg !1262
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !1263
  %11 = load i64, ptr %len, align 8, !dbg !1264
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 %11, i1 false), !dbg !1265
  %12 = load i64, ptr %len, align 8, !dbg !1266
  %13 = load ptr, ptr %fp.addr, align 8, !dbg !1267
  %data6 = getelementptr inbounds %struct.policy_file, ptr %13, i32 0, i32 0, !dbg !1268
  %14 = load ptr, ptr %data6, align 8, !dbg !1269
  %add.ptr = getelementptr i8, ptr %14, i64 %12, !dbg !1269
  store ptr %add.ptr, ptr %data6, align 8, !dbg !1269
  %15 = load i64, ptr %len, align 8, !dbg !1270
  %16 = load ptr, ptr %fp.addr, align 8, !dbg !1271
  %len7 = getelementptr inbounds %struct.policy_file, ptr %16, i32 0, i32 1, !dbg !1272
  %17 = load i64, ptr %len7, align 8, !dbg !1273
  %sub = sub i64 %17, %15, !dbg !1273
  store i64 %sub, ptr %len7, align 8, !dbg !1273
  store i32 0, ptr %retval, align 4, !dbg !1274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1274

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #18, !dbg !1275
  %18 = load i32, ptr %retval, align 4, !dbg !1275
  ret i32 %18, !dbg !1275
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cond_write_list(ptr noundef %p, ptr noundef %fp) #0 align 16 !dbg !1276 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %buf = alloca [1 x i32], align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1278, metadata !DIExpression()), !dbg !1283
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1279, metadata !DIExpression()), !dbg !1284
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.lifetime.start.p0(i64 4, ptr %buf) #18, !dbg !1287
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1281, metadata !DIExpression()), !dbg !1288
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #18, !dbg !1289
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1282, metadata !DIExpression()), !dbg !1290
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1291
  %cond_list_len = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 15, !dbg !1291
  %1 = load i32, ptr %cond_list_len, align 8, !dbg !1291
  %arrayidx = getelementptr [1 x i32], ptr %buf, i64 0, i64 0, !dbg !1292
  store i32 %1, ptr %arrayidx, align 4, !dbg !1293
  %arraydecay = getelementptr inbounds [1 x i32], ptr %buf, i64 0, i64 0, !dbg !1294
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !1295
  %call = call i32 @put_entry(ptr noundef %arraydecay, i64 noundef 4, i64 noundef 1, ptr noundef %2) #19, !dbg !1296
  store i32 %call, ptr %rc, align 4, !dbg !1297
  %3 = load i32, ptr %rc, align 4, !dbg !1298
  %tobool = icmp ne i32 %3, 0, !dbg !1298
  br i1 %tobool, label %if.then, label %if.end, !dbg !1300

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %rc, align 4, !dbg !1301
  store i32 %4, ptr %retval, align 4, !dbg !1302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1302

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !1303
  br label %for.cond, !dbg !1305

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !1306
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1308
  %cond_list_len1 = getelementptr inbounds %struct.policydb, ptr %6, i32 0, i32 15, !dbg !1309
  %7 = load i32, ptr %cond_list_len1, align 8, !dbg !1309
  %cmp = icmp ult i32 %5, %7, !dbg !1310
  br i1 %cmp, label %for.body, label %for.end, !dbg !1311

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1312
  %9 = load ptr, ptr %p.addr, align 8, !dbg !1314
  %cond_list = getelementptr inbounds %struct.policydb, ptr %9, i32 0, i32 14, !dbg !1315
  %10 = load ptr, ptr %cond_list, align 8, !dbg !1315
  %11 = load i32, ptr %i, align 4, !dbg !1316
  %idxprom = zext i32 %11 to i64, !dbg !1314
  %arrayidx2 = getelementptr %struct.cond_node, ptr %10, i64 %idxprom, !dbg !1314
  %12 = load ptr, ptr %fp.addr, align 8, !dbg !1317
  %call3 = call i32 @cond_write_node(ptr noundef %8, ptr noundef %arrayidx2, ptr noundef %12) #19, !dbg !1318
  store i32 %call3, ptr %rc, align 4, !dbg !1319
  %13 = load i32, ptr %rc, align 4, !dbg !1320
  %tobool4 = icmp ne i32 %13, 0, !dbg !1320
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1322

if.then5:                                         ; preds = %for.body
  %14 = load i32, ptr %rc, align 4, !dbg !1323
  store i32 %14, ptr %retval, align 4, !dbg !1324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1324

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !1325

for.inc:                                          ; preds = %if.end6
  %15 = load i32, ptr %i, align 4, !dbg !1326
  %inc = add i32 %15, 1, !dbg !1326
  store i32 %inc, ptr %i, align 4, !dbg !1326
  br label %for.cond, !dbg !1327, !llvm.loop !1328

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1330
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1330

cleanup:                                          ; preds = %for.end, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #18, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 4, ptr %buf) #18, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !1331
  %16 = load i32, ptr %retval, align 4, !dbg !1331
  ret i32 %16, !dbg !1331
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cond_write_node(ptr noundef %p, ptr noundef %node, ptr noundef %fp) #0 align 16 !dbg !1332 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %buf = alloca [2 x i32], align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1336, metadata !DIExpression()), !dbg !1342
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1337, metadata !DIExpression()), !dbg !1343
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1338, metadata !DIExpression()), !dbg !1344
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #18, !dbg !1345
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !1339, metadata !DIExpression()), !dbg !1346
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #18, !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1340, metadata !DIExpression()), !dbg !1348
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !1349
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1341, metadata !DIExpression()), !dbg !1350
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1351
  %cur_state = getelementptr inbounds %struct.cond_node, ptr %0, i32 0, i32 0, !dbg !1351
  %1 = load i32, ptr %cur_state, align 8, !dbg !1351
  %arrayidx = getelementptr [2 x i32], ptr %buf, i64 0, i64 0, !dbg !1352
  store i32 %1, ptr %arrayidx, align 4, !dbg !1353
  %arraydecay = getelementptr inbounds [2 x i32], ptr %buf, i64 0, i64 0, !dbg !1354
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !1355
  %call = call i32 @put_entry(ptr noundef %arraydecay, i64 noundef 4, i64 noundef 1, ptr noundef %2) #19, !dbg !1356
  store i32 %call, ptr %rc, align 4, !dbg !1357
  %3 = load i32, ptr %rc, align 4, !dbg !1358
  %tobool = icmp ne i32 %3, 0, !dbg !1358
  br i1 %tobool, label %if.then, label %if.end, !dbg !1360

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %rc, align 4, !dbg !1361
  store i32 %4, ptr %retval, align 4, !dbg !1362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1362

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !1363
  %expr = getelementptr inbounds %struct.cond_node, ptr %5, i32 0, i32 1, !dbg !1363
  %len = getelementptr inbounds %struct.cond_expr, ptr %expr, i32 0, i32 1, !dbg !1363
  %6 = load i32, ptr %len, align 8, !dbg !1363
  %arrayidx1 = getelementptr [2 x i32], ptr %buf, i64 0, i64 0, !dbg !1364
  store i32 %6, ptr %arrayidx1, align 4, !dbg !1365
  %arraydecay2 = getelementptr inbounds [2 x i32], ptr %buf, i64 0, i64 0, !dbg !1366
  %7 = load ptr, ptr %fp.addr, align 8, !dbg !1367
  %call3 = call i32 @put_entry(ptr noundef %arraydecay2, i64 noundef 4, i64 noundef 1, ptr noundef %7) #19, !dbg !1368
  store i32 %call3, ptr %rc, align 4, !dbg !1369
  %8 = load i32, ptr %rc, align 4, !dbg !1370
  %tobool4 = icmp ne i32 %8, 0, !dbg !1370
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1372

if.then5:                                         ; preds = %if.end
  %9 = load i32, ptr %rc, align 4, !dbg !1373
  store i32 %9, ptr %retval, align 4, !dbg !1374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1374

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !1375
  br label %for.cond, !dbg !1377

for.cond:                                         ; preds = %for.inc, %if.end6
  %10 = load i32, ptr %i, align 4, !dbg !1378
  %11 = load ptr, ptr %node.addr, align 8, !dbg !1380
  %expr7 = getelementptr inbounds %struct.cond_node, ptr %11, i32 0, i32 1, !dbg !1381
  %len8 = getelementptr inbounds %struct.cond_expr, ptr %expr7, i32 0, i32 1, !dbg !1382
  %12 = load i32, ptr %len8, align 8, !dbg !1382
  %cmp = icmp ult i32 %10, %12, !dbg !1383
  br i1 %cmp, label %for.body, label %for.end, !dbg !1384

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %node.addr, align 8, !dbg !1385
  %expr9 = getelementptr inbounds %struct.cond_node, ptr %13, i32 0, i32 1, !dbg !1385
  %nodes = getelementptr inbounds %struct.cond_expr, ptr %expr9, i32 0, i32 0, !dbg !1385
  %14 = load ptr, ptr %nodes, align 8, !dbg !1385
  %15 = load i32, ptr %i, align 4, !dbg !1385
  %idxprom = zext i32 %15 to i64, !dbg !1385
  %arrayidx10 = getelementptr %struct.cond_expr_node, ptr %14, i64 %idxprom, !dbg !1385
  %expr_type = getelementptr inbounds %struct.cond_expr_node, ptr %arrayidx10, i32 0, i32 0, !dbg !1385
  %16 = load i32, ptr %expr_type, align 4, !dbg !1385
  %arrayidx11 = getelementptr [2 x i32], ptr %buf, i64 0, i64 0, !dbg !1387
  store i32 %16, ptr %arrayidx11, align 4, !dbg !1388
  %17 = load ptr, ptr %node.addr, align 8, !dbg !1389
  %expr12 = getelementptr inbounds %struct.cond_node, ptr %17, i32 0, i32 1, !dbg !1389
  %nodes13 = getelementptr inbounds %struct.cond_expr, ptr %expr12, i32 0, i32 0, !dbg !1389
  %18 = load ptr, ptr %nodes13, align 8, !dbg !1389
  %19 = load i32, ptr %i, align 4, !dbg !1389
  %idxprom14 = zext i32 %19 to i64, !dbg !1389
  %arrayidx15 = getelementptr %struct.cond_expr_node, ptr %18, i64 %idxprom14, !dbg !1389
  %boolean = getelementptr inbounds %struct.cond_expr_node, ptr %arrayidx15, i32 0, i32 1, !dbg !1389
  %20 = load i32, ptr %boolean, align 4, !dbg !1389
  %arrayidx16 = getelementptr [2 x i32], ptr %buf, i64 0, i64 1, !dbg !1390
  store i32 %20, ptr %arrayidx16, align 4, !dbg !1391
  %arraydecay17 = getelementptr inbounds [2 x i32], ptr %buf, i64 0, i64 0, !dbg !1392
  %21 = load ptr, ptr %fp.addr, align 8, !dbg !1393
  %call18 = call i32 @put_entry(ptr noundef %arraydecay17, i64 noundef 4, i64 noundef 2, ptr noundef %21) #19, !dbg !1394
  store i32 %call18, ptr %rc, align 4, !dbg !1395
  %22 = load i32, ptr %rc, align 4, !dbg !1396
  %tobool19 = icmp ne i32 %22, 0, !dbg !1396
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1398

if.then20:                                        ; preds = %for.body
  %23 = load i32, ptr %rc, align 4, !dbg !1399
  store i32 %23, ptr %retval, align 4, !dbg !1400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1400

if.end21:                                         ; preds = %for.body
  br label %for.inc, !dbg !1401

for.inc:                                          ; preds = %if.end21
  %24 = load i32, ptr %i, align 4, !dbg !1402
  %inc = add i32 %24, 1, !dbg !1402
  store i32 %inc, ptr %i, align 4, !dbg !1402
  br label %for.cond, !dbg !1403, !llvm.loop !1404

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %p.addr, align 8, !dbg !1406
  %26 = load ptr, ptr %node.addr, align 8, !dbg !1407
  %true_list = getelementptr inbounds %struct.cond_node, ptr %26, i32 0, i32 2, !dbg !1408
  %27 = load ptr, ptr %fp.addr, align 8, !dbg !1409
  %call22 = call i32 @cond_write_av_list(ptr noundef %25, ptr noundef %true_list, ptr noundef %27) #19, !dbg !1410
  store i32 %call22, ptr %rc, align 4, !dbg !1411
  %28 = load i32, ptr %rc, align 4, !dbg !1412
  %tobool23 = icmp ne i32 %28, 0, !dbg !1412
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1414

if.then24:                                        ; preds = %for.end
  %29 = load i32, ptr %rc, align 4, !dbg !1415
  store i32 %29, ptr %retval, align 4, !dbg !1416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1416

if.end25:                                         ; preds = %for.end
  %30 = load ptr, ptr %p.addr, align 8, !dbg !1417
  %31 = load ptr, ptr %node.addr, align 8, !dbg !1418
  %false_list = getelementptr inbounds %struct.cond_node, ptr %31, i32 0, i32 3, !dbg !1419
  %32 = load ptr, ptr %fp.addr, align 8, !dbg !1420
  %call26 = call i32 @cond_write_av_list(ptr noundef %30, ptr noundef %false_list, ptr noundef %32) #19, !dbg !1421
  store i32 %call26, ptr %rc, align 4, !dbg !1422
  %33 = load i32, ptr %rc, align 4, !dbg !1423
  %tobool27 = icmp ne i32 %33, 0, !dbg !1423
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !1425

if.then28:                                        ; preds = %if.end25
  %34 = load i32, ptr %rc, align 4, !dbg !1426
  store i32 %34, ptr %retval, align 4, !dbg !1427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1427

if.end29:                                         ; preds = %if.end25
  store i32 0, ptr %retval, align 4, !dbg !1428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1428

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then24, %if.then20, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !1429
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #18, !dbg !1429
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #18, !dbg !1429
  %35 = load i32, ptr %retval, align 4, !dbg !1429
  ret i32 %35, !dbg !1429
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cond_compute_xperms(ptr noundef %ctab, ptr noundef %key, ptr noundef %xpermd) #0 align 16 !dbg !1430 {
entry:
  %ctab.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %xpermd.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctab, ptr %ctab.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctab.addr, metadata !1444, metadata !DIExpression()), !dbg !1448
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1445, metadata !DIExpression()), !dbg !1449
  store ptr %xpermd, ptr %xpermd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xpermd.addr, metadata !1446, metadata !DIExpression()), !dbg !1450
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1447, metadata !DIExpression()), !dbg !1452
  %0 = load ptr, ptr %ctab.addr, align 8, !dbg !1453
  %tobool = icmp ne ptr %0, null, !dbg !1453
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1455

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %key.addr, align 8, !dbg !1456
  %tobool1 = icmp ne ptr %1, null, !dbg !1456
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1457

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %xpermd.addr, align 8, !dbg !1458
  %tobool3 = icmp ne ptr %2, null, !dbg !1458
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1459

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1460

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %ctab.addr, align 8, !dbg !1461
  %4 = load ptr, ptr %key.addr, align 8, !dbg !1463
  %call = call ptr @avtab_search_node(ptr noundef %3, ptr noundef %4) #19, !dbg !1464
  store ptr %call, ptr %node, align 8, !dbg !1465
  br label %for.cond, !dbg !1466

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %node, align 8, !dbg !1467
  %tobool4 = icmp ne ptr %5, null, !dbg !1469
  br i1 %tobool4, label %for.body, label %for.end, !dbg !1469

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %node, align 8, !dbg !1470
  %key5 = getelementptr inbounds %struct.avtab_node, ptr %6, i32 0, i32 0, !dbg !1473
  %specified = getelementptr inbounds %struct.avtab_key, ptr %key5, i32 0, i32 3, !dbg !1474
  %7 = load i16, ptr %specified, align 2, !dbg !1474
  %conv = zext i16 %7 to i32, !dbg !1470
  %and = and i32 %conv, 32768, !dbg !1475
  %tobool6 = icmp ne i32 %and, 0, !dbg !1475
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1476

if.then7:                                         ; preds = %for.body
  %8 = load ptr, ptr %xpermd.addr, align 8, !dbg !1477
  %9 = load ptr, ptr %node, align 8, !dbg !1478
  call void @services_compute_xperms_decision(ptr noundef %8, ptr noundef %9) #19, !dbg !1479
  br label %if.end8, !dbg !1479

if.end8:                                          ; preds = %if.then7, %for.body
  br label %for.inc, !dbg !1480

for.inc:                                          ; preds = %if.end8
  %10 = load ptr, ptr %node, align 8, !dbg !1481
  %11 = load ptr, ptr %key.addr, align 8, !dbg !1482
  %specified9 = getelementptr inbounds %struct.avtab_key, ptr %11, i32 0, i32 3, !dbg !1483
  %12 = load i16, ptr %specified9, align 2, !dbg !1483
  %call10 = call ptr @avtab_search_node_next(ptr noundef %10, i16 noundef zeroext %12) #19, !dbg !1484
  store ptr %call10, ptr %node, align 8, !dbg !1485
  br label %for.cond, !dbg !1486, !llvm.loop !1487

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1489
  br label %cleanup, !dbg !1489

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !1489
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1489

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1490 dso_local ptr @avtab_search_node(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1495 dso_local void @services_compute_xperms_decision(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1499 dso_local ptr @avtab_search_node_next(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cond_compute_av(ptr noundef %ctab, ptr noundef %key, ptr noundef %avd, ptr noundef %xperms) #0 align 16 !dbg !1502 {
entry:
  %ctab.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %avd.addr = alloca ptr, align 8
  %xperms.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctab, ptr %ctab.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctab.addr, metadata !1519, metadata !DIExpression()), !dbg !1524
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1520, metadata !DIExpression()), !dbg !1525
  store ptr %avd, ptr %avd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %avd.addr, metadata !1521, metadata !DIExpression()), !dbg !1526
  store ptr %xperms, ptr %xperms.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xperms.addr, metadata !1522, metadata !DIExpression()), !dbg !1527
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !1528
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1523, metadata !DIExpression()), !dbg !1529
  %0 = load ptr, ptr %ctab.addr, align 8, !dbg !1530
  %tobool = icmp ne ptr %0, null, !dbg !1530
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1532

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %key.addr, align 8, !dbg !1533
  %tobool1 = icmp ne ptr %1, null, !dbg !1533
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1534

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %avd.addr, align 8, !dbg !1535
  %tobool3 = icmp ne ptr %2, null, !dbg !1535
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1536

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1537

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %ctab.addr, align 8, !dbg !1538
  %4 = load ptr, ptr %key.addr, align 8, !dbg !1540
  %call = call ptr @avtab_search_node(ptr noundef %3, ptr noundef %4) #19, !dbg !1541
  store ptr %call, ptr %node, align 8, !dbg !1542
  br label %for.cond, !dbg !1543

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %node, align 8, !dbg !1544
  %tobool4 = icmp ne ptr %5, null, !dbg !1546
  br i1 %tobool4, label %for.body, label %for.end, !dbg !1546

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %node, align 8, !dbg !1547
  %key5 = getelementptr inbounds %struct.avtab_node, ptr %6, i32 0, i32 0, !dbg !1550
  %specified = getelementptr inbounds %struct.avtab_key, ptr %key5, i32 0, i32 3, !dbg !1551
  %7 = load i16, ptr %specified, align 2, !dbg !1551
  %conv = zext i16 %7 to i32, !dbg !1547
  %and = and i32 %conv, 32769, !dbg !1552
  %cmp = icmp eq i32 32769, %and, !dbg !1553
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !1554

if.then7:                                         ; preds = %for.body
  %8 = load ptr, ptr %node, align 8, !dbg !1555
  %datum = getelementptr inbounds %struct.avtab_node, ptr %8, i32 0, i32 1, !dbg !1556
  %u = getelementptr inbounds %struct.avtab_datum, ptr %datum, i32 0, i32 0, !dbg !1557
  %9 = load i32, ptr %u, align 8, !dbg !1558
  %10 = load ptr, ptr %avd.addr, align 8, !dbg !1559
  %allowed = getelementptr inbounds %struct.av_decision, ptr %10, i32 0, i32 0, !dbg !1560
  %11 = load i32, ptr %allowed, align 4, !dbg !1561
  %or = or i32 %11, %9, !dbg !1561
  store i32 %or, ptr %allowed, align 4, !dbg !1561
  br label %if.end8, !dbg !1559

if.end8:                                          ; preds = %if.then7, %for.body
  %12 = load ptr, ptr %node, align 8, !dbg !1562
  %key9 = getelementptr inbounds %struct.avtab_node, ptr %12, i32 0, i32 0, !dbg !1564
  %specified10 = getelementptr inbounds %struct.avtab_key, ptr %key9, i32 0, i32 3, !dbg !1565
  %13 = load i16, ptr %specified10, align 2, !dbg !1565
  %conv11 = zext i16 %13 to i32, !dbg !1562
  %and12 = and i32 %conv11, 32772, !dbg !1566
  %cmp13 = icmp eq i32 32772, %and12, !dbg !1567
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !1568

if.then15:                                        ; preds = %if.end8
  %14 = load ptr, ptr %node, align 8, !dbg !1569
  %datum16 = getelementptr inbounds %struct.avtab_node, ptr %14, i32 0, i32 1, !dbg !1570
  %u17 = getelementptr inbounds %struct.avtab_datum, ptr %datum16, i32 0, i32 0, !dbg !1571
  %15 = load i32, ptr %u17, align 8, !dbg !1572
  %16 = load ptr, ptr %avd.addr, align 8, !dbg !1573
  %auditdeny = getelementptr inbounds %struct.av_decision, ptr %16, i32 0, i32 2, !dbg !1574
  %17 = load i32, ptr %auditdeny, align 4, !dbg !1575
  %and18 = and i32 %17, %15, !dbg !1575
  store i32 %and18, ptr %auditdeny, align 4, !dbg !1575
  br label %if.end19, !dbg !1573

if.end19:                                         ; preds = %if.then15, %if.end8
  %18 = load ptr, ptr %node, align 8, !dbg !1576
  %key20 = getelementptr inbounds %struct.avtab_node, ptr %18, i32 0, i32 0, !dbg !1578
  %specified21 = getelementptr inbounds %struct.avtab_key, ptr %key20, i32 0, i32 3, !dbg !1579
  %19 = load i16, ptr %specified21, align 2, !dbg !1579
  %conv22 = zext i16 %19 to i32, !dbg !1576
  %and23 = and i32 %conv22, 32770, !dbg !1580
  %cmp24 = icmp eq i32 32770, %and23, !dbg !1581
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !1582

if.then26:                                        ; preds = %if.end19
  %20 = load ptr, ptr %node, align 8, !dbg !1583
  %datum27 = getelementptr inbounds %struct.avtab_node, ptr %20, i32 0, i32 1, !dbg !1584
  %u28 = getelementptr inbounds %struct.avtab_datum, ptr %datum27, i32 0, i32 0, !dbg !1585
  %21 = load i32, ptr %u28, align 8, !dbg !1586
  %22 = load ptr, ptr %avd.addr, align 8, !dbg !1587
  %auditallow = getelementptr inbounds %struct.av_decision, ptr %22, i32 0, i32 1, !dbg !1588
  %23 = load i32, ptr %auditallow, align 4, !dbg !1589
  %or29 = or i32 %23, %21, !dbg !1589
  store i32 %or29, ptr %auditallow, align 4, !dbg !1589
  br label %if.end30, !dbg !1587

if.end30:                                         ; preds = %if.then26, %if.end19
  %24 = load ptr, ptr %xperms.addr, align 8, !dbg !1590
  %tobool31 = icmp ne ptr %24, null, !dbg !1590
  br i1 %tobool31, label %land.lhs.true, label %if.end44, !dbg !1592

land.lhs.true:                                    ; preds = %if.end30
  %25 = load ptr, ptr %node, align 8, !dbg !1593
  %key32 = getelementptr inbounds %struct.avtab_node, ptr %25, i32 0, i32 0, !dbg !1594
  %specified33 = getelementptr inbounds %struct.avtab_key, ptr %key32, i32 0, i32 3, !dbg !1595
  %26 = load i16, ptr %specified33, align 2, !dbg !1595
  %conv34 = zext i16 %26 to i32, !dbg !1593
  %and35 = and i32 %conv34, 32768, !dbg !1596
  %tobool36 = icmp ne i32 %and35, 0, !dbg !1596
  br i1 %tobool36, label %land.lhs.true37, label %if.end44, !dbg !1597

land.lhs.true37:                                  ; preds = %land.lhs.true
  %27 = load ptr, ptr %node, align 8, !dbg !1598
  %key38 = getelementptr inbounds %struct.avtab_node, ptr %27, i32 0, i32 0, !dbg !1599
  %specified39 = getelementptr inbounds %struct.avtab_key, ptr %key38, i32 0, i32 3, !dbg !1600
  %28 = load i16, ptr %specified39, align 2, !dbg !1600
  %conv40 = zext i16 %28 to i32, !dbg !1598
  %and41 = and i32 %conv40, 1792, !dbg !1601
  %tobool42 = icmp ne i32 %and41, 0, !dbg !1601
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !1602

if.then43:                                        ; preds = %land.lhs.true37
  %29 = load ptr, ptr %xperms.addr, align 8, !dbg !1603
  %30 = load ptr, ptr %node, align 8, !dbg !1604
  call void @services_compute_xperms_drivers(ptr noundef %29, ptr noundef %30) #19, !dbg !1605
  br label %if.end44, !dbg !1605

if.end44:                                         ; preds = %if.then43, %land.lhs.true37, %land.lhs.true, %if.end30
  br label %for.inc, !dbg !1606

for.inc:                                          ; preds = %if.end44
  %31 = load ptr, ptr %node, align 8, !dbg !1607
  %32 = load ptr, ptr %key.addr, align 8, !dbg !1608
  %specified45 = getelementptr inbounds %struct.avtab_key, ptr %32, i32 0, i32 3, !dbg !1609
  %33 = load i16, ptr %specified45, align 2, !dbg !1609
  %call46 = call ptr @avtab_search_node_next(ptr noundef %31, i16 noundef zeroext %33) #19, !dbg !1610
  store ptr %call46, ptr %node, align 8, !dbg !1611
  br label %for.cond, !dbg !1612, !llvm.loop !1613

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1615
  br label %cleanup, !dbg !1615

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !1615
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1615

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1616 dso_local void @services_compute_xperms_drivers(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cond_policydb_destroy_dup(ptr noundef %p) #0 align 16 !dbg !1619 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1621, metadata !DIExpression()), !dbg !1622
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1623
  %symtab = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 1, !dbg !1624
  %arrayidx = getelementptr [8 x %struct.symtab], ptr %symtab, i64 0, i64 5, !dbg !1623
  %table = getelementptr inbounds %struct.symtab, ptr %arrayidx, i32 0, i32 0, !dbg !1625
  %call = call i32 @hashtab_map(ptr noundef %table, ptr noundef @cond_bools_destroy, ptr noundef null) #19, !dbg !1626
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1627
  %symtab1 = getelementptr inbounds %struct.policydb, ptr %1, i32 0, i32 1, !dbg !1628
  %arrayidx2 = getelementptr [8 x %struct.symtab], ptr %symtab1, i64 0, i64 5, !dbg !1627
  %table3 = getelementptr inbounds %struct.symtab, ptr %arrayidx2, i32 0, i32 0, !dbg !1629
  call void @hashtab_destroy(ptr noundef %table3) #19, !dbg !1630
  %2 = load ptr, ptr %p.addr, align 8, !dbg !1631
  call void @cond_policydb_destroy(ptr noundef %2) #19, !dbg !1632
  ret void, !dbg !1633
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1634 dso_local i32 @hashtab_map(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cond_bools_destroy(ptr noundef %key, ptr noundef %datum, ptr noundef %args) #0 align 16 !dbg !1639 {
entry:
  %key.addr = alloca ptr, align 8
  %datum.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1641, metadata !DIExpression()), !dbg !1644
  store ptr %datum, ptr %datum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datum.addr, metadata !1642, metadata !DIExpression()), !dbg !1645
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !1643, metadata !DIExpression()), !dbg !1646
  %0 = load ptr, ptr %datum.addr, align 8, !dbg !1647
  call void @kfree(ptr noundef %0) #19, !dbg !1648
  ret i32 0, !dbg !1649
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1650 dso_local void @hashtab_destroy(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cond_policydb_dup(ptr noundef %new, ptr noundef %orig) #0 align 16 !dbg !1653 {
entry:
  %retval = alloca i32, align 4
  %new.addr = alloca ptr, align 8
  %orig.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1657, metadata !DIExpression()), !dbg !1659
  store ptr %orig, ptr %orig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orig.addr, metadata !1658, metadata !DIExpression()), !dbg !1660
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1661
  call void @cond_policydb_init(ptr noundef %0) #19, !dbg !1662
  %1 = load ptr, ptr %new.addr, align 8, !dbg !1663
  %2 = load ptr, ptr %orig.addr, align 8, !dbg !1665
  %call = call i32 @duplicate_policydb_bools(ptr noundef %1, ptr noundef %2) #19, !dbg !1666
  %tobool = icmp ne i32 %call, 0, !dbg !1666
  br i1 %tobool, label %if.then, label %if.end, !dbg !1667

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !1668
  br label %return, !dbg !1668

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !1669
  %4 = load ptr, ptr %orig.addr, align 8, !dbg !1671
  %call1 = call i32 @duplicate_policydb_cond_list(ptr noundef %3, ptr noundef %4) #19, !dbg !1672
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1672
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1673

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %new.addr, align 8, !dbg !1674
  call void @cond_policydb_destroy_dup(ptr noundef %5) #19, !dbg !1676
  store i32 -12, ptr %retval, align 4, !dbg !1677
  br label %return, !dbg !1677

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1678
  br label %return, !dbg !1678

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !1679
  ret i32 %6, !dbg !1679
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @duplicate_policydb_bools(ptr noundef %newdb, ptr noundef %orig) #0 align 16 !dbg !1680 {
entry:
  %retval = alloca i32, align 4
  %newdb.addr = alloca ptr, align 8
  %orig.addr = alloca ptr, align 8
  %cond_bool_array = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %newdb, ptr %newdb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newdb.addr, metadata !1682, metadata !DIExpression()), !dbg !1686
  store ptr %orig, ptr %orig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orig.addr, metadata !1683, metadata !DIExpression()), !dbg !1687
  call void @llvm.lifetime.start.p0(i64 8, ptr %cond_bool_array) #18, !dbg !1688
  call void @llvm.dbg.declare(metadata ptr %cond_bool_array, metadata !1684, metadata !DIExpression()), !dbg !1689
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #18, !dbg !1690
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1685, metadata !DIExpression()), !dbg !1691
  %0 = load ptr, ptr %orig.addr, align 8, !dbg !1692
  %symtab = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 1, !dbg !1693
  %arrayidx = getelementptr [8 x %struct.symtab], ptr %symtab, i64 0, i64 5, !dbg !1692
  %nprim = getelementptr inbounds %struct.symtab, ptr %arrayidx, i32 0, i32 1, !dbg !1694
  %1 = load i32, ptr %nprim, align 8, !dbg !1694
  %conv = zext i32 %1 to i64, !dbg !1692
  %call = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #21, !dbg !1695
  store ptr %call, ptr %cond_bool_array, align 8, !dbg !1696
  %2 = load ptr, ptr %cond_bool_array, align 8, !dbg !1697
  %tobool = icmp ne ptr %2, null, !dbg !1697
  br i1 %tobool, label %if.end, label %if.then, !dbg !1699

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !1700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1700

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %newdb.addr, align 8, !dbg !1701
  %symtab1 = getelementptr inbounds %struct.policydb, ptr %3, i32 0, i32 1, !dbg !1702
  %arrayidx2 = getelementptr [8 x %struct.symtab], ptr %symtab1, i64 0, i64 5, !dbg !1701
  %table = getelementptr inbounds %struct.symtab, ptr %arrayidx2, i32 0, i32 0, !dbg !1703
  %4 = load ptr, ptr %orig.addr, align 8, !dbg !1704
  %symtab3 = getelementptr inbounds %struct.policydb, ptr %4, i32 0, i32 1, !dbg !1705
  %arrayidx4 = getelementptr [8 x %struct.symtab], ptr %symtab3, i64 0, i64 5, !dbg !1704
  %table5 = getelementptr inbounds %struct.symtab, ptr %arrayidx4, i32 0, i32 0, !dbg !1706
  %call6 = call i32 @hashtab_duplicate(ptr noundef %table, ptr noundef %table5, ptr noundef @cond_bools_copy, ptr noundef @cond_bools_destroy, ptr noundef null) #19, !dbg !1707
  store i32 %call6, ptr %rc, align 4, !dbg !1708
  %5 = load i32, ptr %rc, align 4, !dbg !1709
  %tobool7 = icmp ne i32 %5, 0, !dbg !1709
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1711

if.then8:                                         ; preds = %if.end
  %6 = load ptr, ptr %cond_bool_array, align 8, !dbg !1712
  call void @kfree(ptr noundef %6) #19, !dbg !1714
  store i32 -12, ptr %retval, align 4, !dbg !1715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1715

if.end9:                                          ; preds = %if.end
  %7 = load ptr, ptr %newdb.addr, align 8, !dbg !1716
  %symtab10 = getelementptr inbounds %struct.policydb, ptr %7, i32 0, i32 1, !dbg !1717
  %arrayidx11 = getelementptr [8 x %struct.symtab], ptr %symtab10, i64 0, i64 5, !dbg !1716
  %table12 = getelementptr inbounds %struct.symtab, ptr %arrayidx11, i32 0, i32 0, !dbg !1718
  %8 = load ptr, ptr %cond_bool_array, align 8, !dbg !1719
  %call13 = call i32 @hashtab_map(ptr noundef %table12, ptr noundef @cond_bools_index, ptr noundef %8) #19, !dbg !1720
  %9 = load ptr, ptr %cond_bool_array, align 8, !dbg !1721
  %10 = load ptr, ptr %newdb.addr, align 8, !dbg !1722
  %bool_val_to_struct = getelementptr inbounds %struct.policydb, ptr %10, i32 0, i32 12, !dbg !1723
  store ptr %9, ptr %bool_val_to_struct, align 8, !dbg !1724
  %11 = load ptr, ptr %orig.addr, align 8, !dbg !1725
  %symtab14 = getelementptr inbounds %struct.policydb, ptr %11, i32 0, i32 1, !dbg !1726
  %arrayidx15 = getelementptr [8 x %struct.symtab], ptr %symtab14, i64 0, i64 5, !dbg !1725
  %nprim16 = getelementptr inbounds %struct.symtab, ptr %arrayidx15, i32 0, i32 1, !dbg !1727
  %12 = load i32, ptr %nprim16, align 8, !dbg !1727
  %13 = load ptr, ptr %newdb.addr, align 8, !dbg !1728
  %symtab17 = getelementptr inbounds %struct.policydb, ptr %13, i32 0, i32 1, !dbg !1729
  %arrayidx18 = getelementptr [8 x %struct.symtab], ptr %symtab17, i64 0, i64 5, !dbg !1728
  %nprim19 = getelementptr inbounds %struct.symtab, ptr %arrayidx18, i32 0, i32 1, !dbg !1730
  store i32 %12, ptr %nprim19, align 8, !dbg !1731
  store i32 0, ptr %retval, align 4, !dbg !1732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1732

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #18, !dbg !1733
  call void @llvm.lifetime.end.p0(i64 8, ptr %cond_bool_array) #18, !dbg !1733
  %14 = load i32, ptr %retval, align 4, !dbg !1733
  ret i32 %14, !dbg !1733
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @duplicate_policydb_cond_list(ptr noundef %newp, ptr noundef %origp) #0 align 16 !dbg !1734 {
entry:
  %retval = alloca i32, align 4
  %newp.addr = alloca ptr, align 8
  %origp.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %newn = alloca ptr, align 8
  %orign = alloca ptr, align 8
  store ptr %newp, ptr %newp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newp.addr, metadata !1736, metadata !DIExpression()), !dbg !1746
  store ptr %origp, ptr %origp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %origp.addr, metadata !1737, metadata !DIExpression()), !dbg !1747
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #18, !dbg !1748
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1738, metadata !DIExpression()), !dbg !1749
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !1750
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1739, metadata !DIExpression()), !dbg !1751
  %0 = load ptr, ptr %newp.addr, align 8, !dbg !1752
  %te_cond_avtab = getelementptr inbounds %struct.policydb, ptr %0, i32 0, i32 13, !dbg !1753
  %1 = load ptr, ptr %origp.addr, align 8, !dbg !1754
  %te_cond_avtab1 = getelementptr inbounds %struct.policydb, ptr %1, i32 0, i32 13, !dbg !1755
  %call = call i32 @avtab_alloc_dup(ptr noundef %te_cond_avtab, ptr noundef %te_cond_avtab1) #19, !dbg !1756
  store i32 %call, ptr %rc, align 4, !dbg !1757
  %2 = load i32, ptr %rc, align 4, !dbg !1758
  %tobool = icmp ne i32 %2, 0, !dbg !1758
  br i1 %tobool, label %if.then, label %if.end, !dbg !1760

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rc, align 4, !dbg !1761
  store i32 %3, ptr %retval, align 4, !dbg !1762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !1762

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %newp.addr, align 8, !dbg !1763
  %cond_list_len = getelementptr inbounds %struct.policydb, ptr %4, i32 0, i32 15, !dbg !1764
  store i32 0, ptr %cond_list_len, align 8, !dbg !1765
  %5 = load ptr, ptr %origp.addr, align 8, !dbg !1766
  %cond_list_len2 = getelementptr inbounds %struct.policydb, ptr %5, i32 0, i32 15, !dbg !1767
  %6 = load i32, ptr %cond_list_len2, align 8, !dbg !1767
  %conv = zext i32 %6 to i64, !dbg !1766
  %call3 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 56, i32 noundef 3264) #21, !dbg !1768
  %7 = load ptr, ptr %newp.addr, align 8, !dbg !1769
  %cond_list = getelementptr inbounds %struct.policydb, ptr %7, i32 0, i32 14, !dbg !1770
  store ptr %call3, ptr %cond_list, align 8, !dbg !1771
  %8 = load ptr, ptr %newp.addr, align 8, !dbg !1772
  %cond_list4 = getelementptr inbounds %struct.policydb, ptr %8, i32 0, i32 14, !dbg !1774
  %9 = load ptr, ptr %cond_list4, align 8, !dbg !1774
  %tobool5 = icmp ne ptr %9, null, !dbg !1772
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1775

if.then6:                                         ; preds = %if.end
  br label %error, !dbg !1776

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !1777
  br label %for.cond, !dbg !1778

for.cond:                                         ; preds = %for.inc, %if.end7
  %10 = load i32, ptr %i, align 4, !dbg !1779
  %11 = load ptr, ptr %origp.addr, align 8, !dbg !1780
  %cond_list_len8 = getelementptr inbounds %struct.policydb, ptr %11, i32 0, i32 15, !dbg !1781
  %12 = load i32, ptr %cond_list_len8, align 8, !dbg !1781
  %cmp = icmp ult i32 %10, %12, !dbg !1782
  br i1 %cmp, label %for.body, label %for.end, !dbg !1783

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %newn) #18, !dbg !1784
  call void @llvm.dbg.declare(metadata ptr %newn, metadata !1740, metadata !DIExpression()), !dbg !1785
  %13 = load ptr, ptr %newp.addr, align 8, !dbg !1786
  %cond_list10 = getelementptr inbounds %struct.policydb, ptr %13, i32 0, i32 14, !dbg !1787
  %14 = load ptr, ptr %cond_list10, align 8, !dbg !1787
  %15 = load i32, ptr %i, align 4, !dbg !1788
  %idxprom = zext i32 %15 to i64, !dbg !1786
  %arrayidx = getelementptr %struct.cond_node, ptr %14, i64 %idxprom, !dbg !1786
  store ptr %arrayidx, ptr %newn, align 8, !dbg !1785
  call void @llvm.lifetime.start.p0(i64 8, ptr %orign) #18, !dbg !1789
  call void @llvm.dbg.declare(metadata ptr %orign, metadata !1744, metadata !DIExpression()), !dbg !1790
  %16 = load ptr, ptr %origp.addr, align 8, !dbg !1791
  %cond_list11 = getelementptr inbounds %struct.policydb, ptr %16, i32 0, i32 14, !dbg !1792
  %17 = load ptr, ptr %cond_list11, align 8, !dbg !1792
  %18 = load i32, ptr %i, align 4, !dbg !1793
  %idxprom12 = zext i32 %18 to i64, !dbg !1791
  %arrayidx13 = getelementptr %struct.cond_node, ptr %17, i64 %idxprom12, !dbg !1791
  store ptr %arrayidx13, ptr %orign, align 8, !dbg !1790
  %19 = load ptr, ptr %newp.addr, align 8, !dbg !1794
  %cond_list_len14 = getelementptr inbounds %struct.policydb, ptr %19, i32 0, i32 15, !dbg !1795
  %20 = load i32, ptr %cond_list_len14, align 8, !dbg !1796
  %inc = add i32 %20, 1, !dbg !1796
  store i32 %inc, ptr %cond_list_len14, align 8, !dbg !1796
  %21 = load ptr, ptr %orign, align 8, !dbg !1797
  %cur_state = getelementptr inbounds %struct.cond_node, ptr %21, i32 0, i32 0, !dbg !1798
  %22 = load i32, ptr %cur_state, align 8, !dbg !1798
  %23 = load ptr, ptr %newn, align 8, !dbg !1799
  %cur_state15 = getelementptr inbounds %struct.cond_node, ptr %23, i32 0, i32 0, !dbg !1800
  store i32 %22, ptr %cur_state15, align 8, !dbg !1801
  %24 = load ptr, ptr %orign, align 8, !dbg !1802
  %expr = getelementptr inbounds %struct.cond_node, ptr %24, i32 0, i32 1, !dbg !1803
  %nodes = getelementptr inbounds %struct.cond_expr, ptr %expr, i32 0, i32 0, !dbg !1804
  %25 = load ptr, ptr %nodes, align 8, !dbg !1804
  %26 = load ptr, ptr %orign, align 8, !dbg !1805
  %expr16 = getelementptr inbounds %struct.cond_node, ptr %26, i32 0, i32 1, !dbg !1806
  %len = getelementptr inbounds %struct.cond_expr, ptr %expr16, i32 0, i32 1, !dbg !1807
  %27 = load i32, ptr %len, align 8, !dbg !1807
  %conv17 = zext i32 %27 to i64, !dbg !1805
  %mul = mul i64 %conv17, 8, !dbg !1808
  %call18 = call ptr @kmemdup(ptr noundef %25, i64 noundef %mul, i32 noundef 3264) #24, !dbg !1809
  %28 = load ptr, ptr %newn, align 8, !dbg !1810
  %expr19 = getelementptr inbounds %struct.cond_node, ptr %28, i32 0, i32 1, !dbg !1811
  %nodes20 = getelementptr inbounds %struct.cond_expr, ptr %expr19, i32 0, i32 0, !dbg !1812
  store ptr %call18, ptr %nodes20, align 8, !dbg !1813
  %29 = load ptr, ptr %newn, align 8, !dbg !1814
  %expr21 = getelementptr inbounds %struct.cond_node, ptr %29, i32 0, i32 1, !dbg !1816
  %nodes22 = getelementptr inbounds %struct.cond_expr, ptr %expr21, i32 0, i32 0, !dbg !1817
  %30 = load ptr, ptr %nodes22, align 8, !dbg !1817
  %tobool23 = icmp ne ptr %30, null, !dbg !1814
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !1818

if.then24:                                        ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1819

if.end25:                                         ; preds = %for.body
  %31 = load ptr, ptr %orign, align 8, !dbg !1820
  %expr26 = getelementptr inbounds %struct.cond_node, ptr %31, i32 0, i32 1, !dbg !1821
  %len27 = getelementptr inbounds %struct.cond_expr, ptr %expr26, i32 0, i32 1, !dbg !1822
  %32 = load i32, ptr %len27, align 8, !dbg !1822
  %33 = load ptr, ptr %newn, align 8, !dbg !1823
  %expr28 = getelementptr inbounds %struct.cond_node, ptr %33, i32 0, i32 1, !dbg !1824
  %len29 = getelementptr inbounds %struct.cond_expr, ptr %expr28, i32 0, i32 1, !dbg !1825
  store i32 %32, ptr %len29, align 8, !dbg !1826
  %34 = load ptr, ptr %newn, align 8, !dbg !1827
  %true_list = getelementptr inbounds %struct.cond_node, ptr %34, i32 0, i32 2, !dbg !1828
  %35 = load ptr, ptr %orign, align 8, !dbg !1829
  %true_list30 = getelementptr inbounds %struct.cond_node, ptr %35, i32 0, i32 2, !dbg !1830
  %36 = load ptr, ptr %newp.addr, align 8, !dbg !1831
  %te_cond_avtab31 = getelementptr inbounds %struct.policydb, ptr %36, i32 0, i32 13, !dbg !1832
  %call32 = call i32 @cond_dup_av_list(ptr noundef %true_list, ptr noundef %true_list30, ptr noundef %te_cond_avtab31) #19, !dbg !1833
  store i32 %call32, ptr %rc, align 4, !dbg !1834
  %37 = load i32, ptr %rc, align 4, !dbg !1835
  %tobool33 = icmp ne i32 %37, 0, !dbg !1835
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !1837

if.then34:                                        ; preds = %if.end25
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1838

if.end35:                                         ; preds = %if.end25
  %38 = load ptr, ptr %newn, align 8, !dbg !1839
  %false_list = getelementptr inbounds %struct.cond_node, ptr %38, i32 0, i32 3, !dbg !1840
  %39 = load ptr, ptr %orign, align 8, !dbg !1841
  %false_list36 = getelementptr inbounds %struct.cond_node, ptr %39, i32 0, i32 3, !dbg !1842
  %40 = load ptr, ptr %newp.addr, align 8, !dbg !1843
  %te_cond_avtab37 = getelementptr inbounds %struct.policydb, ptr %40, i32 0, i32 13, !dbg !1844
  %call38 = call i32 @cond_dup_av_list(ptr noundef %false_list, ptr noundef %false_list36, ptr noundef %te_cond_avtab37) #19, !dbg !1845
  store i32 %call38, ptr %rc, align 4, !dbg !1846
  %41 = load i32, ptr %rc, align 4, !dbg !1847
  %tobool39 = icmp ne i32 %41, 0, !dbg !1847
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !1849

if.then40:                                        ; preds = %if.end35
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1850

if.end41:                                         ; preds = %if.end35
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1851
  br label %cleanup, !dbg !1851

cleanup:                                          ; preds = %if.then40, %if.then34, %if.then24, %if.end41
  call void @llvm.lifetime.end.p0(i64 8, ptr %orign) #18, !dbg !1851
  call void @llvm.lifetime.end.p0(i64 8, ptr %newn) #18, !dbg !1851
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup45 [
    i32 0, label %cleanup.cont
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1852

for.inc:                                          ; preds = %cleanup.cont
  %42 = load i32, ptr %i, align 4, !dbg !1853
  %inc43 = add i32 %42, 1, !dbg !1853
  store i32 %inc43, ptr %i, align 4, !dbg !1853
  br label %for.cond, !dbg !1854, !llvm.loop !1855

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !1857

error:                                            ; preds = %cleanup, %if.then6
  call void @llvm.dbg.label(metadata !1745), !dbg !1858
  %43 = load ptr, ptr %newp.addr, align 8, !dbg !1859
  %te_cond_avtab44 = getelementptr inbounds %struct.policydb, ptr %43, i32 0, i32 13, !dbg !1860
  call void @avtab_destroy(ptr noundef %te_cond_avtab44) #19, !dbg !1861
  %44 = load ptr, ptr %newp.addr, align 8, !dbg !1862
  call void @cond_list_destroy(ptr noundef %44) #19, !dbg !1863
  store i32 -12, ptr %retval, align 4, !dbg !1864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !1864

cleanup45:                                        ; preds = %error, %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #18, !dbg !1865
  %45 = load i32, ptr %retval, align 4, !dbg !1865
  ret i32 %45, !dbg !1865
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cond_evaluate_expr(ptr noundef %p, ptr noundef %expr) #0 align 16 !dbg !1866 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %expr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %s = alloca [10 x i32], align 16
  %sp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %node = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1871, metadata !DIExpression()), !dbg !1883
  store ptr %expr, ptr %expr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %expr.addr, metadata !1872, metadata !DIExpression()), !dbg !1884
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !1885
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1873, metadata !DIExpression()), !dbg !1886
  call void @llvm.lifetime.start.p0(i64 40, ptr %s) #18, !dbg !1887
  call void @llvm.dbg.declare(metadata ptr %s, metadata !1874, metadata !DIExpression()), !dbg !1888
  call void @llvm.lifetime.start.p0(i64 4, ptr %sp) #18, !dbg !1889
  call void @llvm.dbg.declare(metadata ptr %sp, metadata !1878, metadata !DIExpression()), !dbg !1890
  store i32 -1, ptr %sp, align 4, !dbg !1890
  %0 = load ptr, ptr %expr.addr, align 8, !dbg !1891
  %len = getelementptr inbounds %struct.cond_expr, ptr %0, i32 0, i32 1, !dbg !1893
  %1 = load i32, ptr %len, align 8, !dbg !1893
  %cmp = icmp eq i32 %1, 0, !dbg !1894
  br i1 %cmp, label %if.then, label %if.end, !dbg !1895

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !1896

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !1897
  br label %for.cond, !dbg !1898

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !1899
  %3 = load ptr, ptr %expr.addr, align 8, !dbg !1900
  %len1 = getelementptr inbounds %struct.cond_expr, ptr %3, i32 0, i32 1, !dbg !1901
  %4 = load i32, ptr %len1, align 8, !dbg !1901
  %cmp2 = icmp ult i32 %2, %4, !dbg !1902
  br i1 %cmp2, label %for.body, label %for.end, !dbg !1903

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !1904
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1879, metadata !DIExpression()), !dbg !1905
  %5 = load ptr, ptr %expr.addr, align 8, !dbg !1906
  %nodes = getelementptr inbounds %struct.cond_expr, ptr %5, i32 0, i32 0, !dbg !1907
  %6 = load ptr, ptr %nodes, align 8, !dbg !1907
  %7 = load i32, ptr %i, align 4, !dbg !1908
  %idxprom = zext i32 %7 to i64, !dbg !1906
  %arrayidx = getelementptr %struct.cond_expr_node, ptr %6, i64 %idxprom, !dbg !1906
  store ptr %arrayidx, ptr %node, align 8, !dbg !1905
  %8 = load ptr, ptr %node, align 8, !dbg !1909
  %expr_type = getelementptr inbounds %struct.cond_expr_node, ptr %8, i32 0, i32 0, !dbg !1910
  %9 = load i32, ptr %expr_type, align 4, !dbg !1910
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 3, label %sw.bb18
    i32 4, label %sw.bb26
    i32 5, label %sw.bb36
    i32 6, label %sw.bb46
    i32 7, label %sw.bb59
  ], !dbg !1911

sw.bb:                                            ; preds = %for.body
  %10 = load i32, ptr %sp, align 4, !dbg !1912
  %cmp3 = icmp eq i32 %10, 9, !dbg !1915
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1916

if.then4:                                         ; preds = %sw.bb
  store i32 -1, ptr %retval, align 4, !dbg !1917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1917

if.end5:                                          ; preds = %sw.bb
  %11 = load i32, ptr %sp, align 4, !dbg !1918
  %inc = add i32 %11, 1, !dbg !1918
  store i32 %inc, ptr %sp, align 4, !dbg !1918
  %12 = load ptr, ptr %p.addr, align 8, !dbg !1919
  %bool_val_to_struct = getelementptr inbounds %struct.policydb, ptr %12, i32 0, i32 12, !dbg !1920
  %13 = load ptr, ptr %bool_val_to_struct, align 8, !dbg !1920
  %14 = load ptr, ptr %node, align 8, !dbg !1921
  %boolean = getelementptr inbounds %struct.cond_expr_node, ptr %14, i32 0, i32 1, !dbg !1922
  %15 = load i32, ptr %boolean, align 4, !dbg !1922
  %sub = sub i32 %15, 1, !dbg !1923
  %idxprom6 = zext i32 %sub to i64, !dbg !1919
  %arrayidx7 = getelementptr ptr, ptr %13, i64 %idxprom6, !dbg !1919
  %16 = load ptr, ptr %arrayidx7, align 8, !dbg !1919
  %state = getelementptr inbounds %struct.cond_bool_datum, ptr %16, i32 0, i32 1, !dbg !1924
  %17 = load i32, ptr %state, align 4, !dbg !1924
  %18 = load i32, ptr %sp, align 4, !dbg !1925
  %idxprom8 = sext i32 %18 to i64, !dbg !1926
  %arrayidx9 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom8, !dbg !1926
  store i32 %17, ptr %arrayidx9, align 4, !dbg !1927
  br label %sw.epilog, !dbg !1928

sw.bb10:                                          ; preds = %for.body
  %19 = load i32, ptr %sp, align 4, !dbg !1929
  %cmp11 = icmp slt i32 %19, 0, !dbg !1931
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1932

if.then12:                                        ; preds = %sw.bb10
  store i32 -1, ptr %retval, align 4, !dbg !1933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1933

if.end13:                                         ; preds = %sw.bb10
  %20 = load i32, ptr %sp, align 4, !dbg !1934
  %idxprom14 = sext i32 %20 to i64, !dbg !1935
  %arrayidx15 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom14, !dbg !1935
  %21 = load i32, ptr %arrayidx15, align 4, !dbg !1935
  %tobool = icmp ne i32 %21, 0, !dbg !1936
  %lnot = xor i1 %tobool, true, !dbg !1936
  %lnot.ext = zext i1 %lnot to i32, !dbg !1936
  %22 = load i32, ptr %sp, align 4, !dbg !1937
  %idxprom16 = sext i32 %22 to i64, !dbg !1938
  %arrayidx17 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom16, !dbg !1938
  store i32 %lnot.ext, ptr %arrayidx17, align 4, !dbg !1939
  br label %sw.epilog, !dbg !1940

sw.bb18:                                          ; preds = %for.body
  %23 = load i32, ptr %sp, align 4, !dbg !1941
  %cmp19 = icmp slt i32 %23, 1, !dbg !1943
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !1944

if.then20:                                        ; preds = %sw.bb18
  store i32 -1, ptr %retval, align 4, !dbg !1945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1945

if.end21:                                         ; preds = %sw.bb18
  %24 = load i32, ptr %sp, align 4, !dbg !1946
  %dec = add i32 %24, -1, !dbg !1946
  store i32 %dec, ptr %sp, align 4, !dbg !1946
  %25 = load i32, ptr %sp, align 4, !dbg !1947
  %add = add i32 %25, 1, !dbg !1948
  %idxprom22 = sext i32 %add to i64, !dbg !1949
  %arrayidx23 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom22, !dbg !1949
  %26 = load i32, ptr %arrayidx23, align 4, !dbg !1949
  %27 = load i32, ptr %sp, align 4, !dbg !1950
  %idxprom24 = sext i32 %27 to i64, !dbg !1951
  %arrayidx25 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom24, !dbg !1951
  %28 = load i32, ptr %arrayidx25, align 4, !dbg !1952
  %or = or i32 %28, %26, !dbg !1952
  store i32 %or, ptr %arrayidx25, align 4, !dbg !1952
  br label %sw.epilog, !dbg !1953

sw.bb26:                                          ; preds = %for.body
  %29 = load i32, ptr %sp, align 4, !dbg !1954
  %cmp27 = icmp slt i32 %29, 1, !dbg !1956
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1957

if.then28:                                        ; preds = %sw.bb26
  store i32 -1, ptr %retval, align 4, !dbg !1958
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1958

if.end29:                                         ; preds = %sw.bb26
  %30 = load i32, ptr %sp, align 4, !dbg !1959
  %dec30 = add i32 %30, -1, !dbg !1959
  store i32 %dec30, ptr %sp, align 4, !dbg !1959
  %31 = load i32, ptr %sp, align 4, !dbg !1960
  %add31 = add i32 %31, 1, !dbg !1961
  %idxprom32 = sext i32 %add31 to i64, !dbg !1962
  %arrayidx33 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom32, !dbg !1962
  %32 = load i32, ptr %arrayidx33, align 4, !dbg !1962
  %33 = load i32, ptr %sp, align 4, !dbg !1963
  %idxprom34 = sext i32 %33 to i64, !dbg !1964
  %arrayidx35 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom34, !dbg !1964
  %34 = load i32, ptr %arrayidx35, align 4, !dbg !1965
  %and = and i32 %34, %32, !dbg !1965
  store i32 %and, ptr %arrayidx35, align 4, !dbg !1965
  br label %sw.epilog, !dbg !1966

sw.bb36:                                          ; preds = %for.body
  %35 = load i32, ptr %sp, align 4, !dbg !1967
  %cmp37 = icmp slt i32 %35, 1, !dbg !1969
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !1970

if.then38:                                        ; preds = %sw.bb36
  store i32 -1, ptr %retval, align 4, !dbg !1971
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1971

if.end39:                                         ; preds = %sw.bb36
  %36 = load i32, ptr %sp, align 4, !dbg !1972
  %dec40 = add i32 %36, -1, !dbg !1972
  store i32 %dec40, ptr %sp, align 4, !dbg !1972
  %37 = load i32, ptr %sp, align 4, !dbg !1973
  %add41 = add i32 %37, 1, !dbg !1974
  %idxprom42 = sext i32 %add41 to i64, !dbg !1975
  %arrayidx43 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom42, !dbg !1975
  %38 = load i32, ptr %arrayidx43, align 4, !dbg !1975
  %39 = load i32, ptr %sp, align 4, !dbg !1976
  %idxprom44 = sext i32 %39 to i64, !dbg !1977
  %arrayidx45 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom44, !dbg !1977
  %40 = load i32, ptr %arrayidx45, align 4, !dbg !1978
  %xor = xor i32 %40, %38, !dbg !1978
  store i32 %xor, ptr %arrayidx45, align 4, !dbg !1978
  br label %sw.epilog, !dbg !1979

sw.bb46:                                          ; preds = %for.body
  %41 = load i32, ptr %sp, align 4, !dbg !1980
  %cmp47 = icmp slt i32 %41, 1, !dbg !1982
  br i1 %cmp47, label %if.then48, label %if.end49, !dbg !1983

if.then48:                                        ; preds = %sw.bb46
  store i32 -1, ptr %retval, align 4, !dbg !1984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1984

if.end49:                                         ; preds = %sw.bb46
  %42 = load i32, ptr %sp, align 4, !dbg !1985
  %dec50 = add i32 %42, -1, !dbg !1985
  store i32 %dec50, ptr %sp, align 4, !dbg !1985
  %43 = load i32, ptr %sp, align 4, !dbg !1986
  %idxprom51 = sext i32 %43 to i64, !dbg !1987
  %arrayidx52 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom51, !dbg !1987
  %44 = load i32, ptr %arrayidx52, align 4, !dbg !1987
  %45 = load i32, ptr %sp, align 4, !dbg !1988
  %add53 = add i32 %45, 1, !dbg !1989
  %idxprom54 = sext i32 %add53 to i64, !dbg !1990
  %arrayidx55 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom54, !dbg !1990
  %46 = load i32, ptr %arrayidx55, align 4, !dbg !1990
  %cmp56 = icmp eq i32 %44, %46, !dbg !1991
  %conv = zext i1 %cmp56 to i32, !dbg !1991
  %47 = load i32, ptr %sp, align 4, !dbg !1992
  %idxprom57 = sext i32 %47 to i64, !dbg !1993
  %arrayidx58 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom57, !dbg !1993
  store i32 %conv, ptr %arrayidx58, align 4, !dbg !1994
  br label %sw.epilog, !dbg !1995

sw.bb59:                                          ; preds = %for.body
  %48 = load i32, ptr %sp, align 4, !dbg !1996
  %cmp60 = icmp slt i32 %48, 1, !dbg !1998
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !1999

if.then62:                                        ; preds = %sw.bb59
  store i32 -1, ptr %retval, align 4, !dbg !2000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2000

if.end63:                                         ; preds = %sw.bb59
  %49 = load i32, ptr %sp, align 4, !dbg !2001
  %dec64 = add i32 %49, -1, !dbg !2001
  store i32 %dec64, ptr %sp, align 4, !dbg !2001
  %50 = load i32, ptr %sp, align 4, !dbg !2002
  %idxprom65 = sext i32 %50 to i64, !dbg !2003
  %arrayidx66 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom65, !dbg !2003
  %51 = load i32, ptr %arrayidx66, align 4, !dbg !2003
  %52 = load i32, ptr %sp, align 4, !dbg !2004
  %add67 = add i32 %52, 1, !dbg !2005
  %idxprom68 = sext i32 %add67 to i64, !dbg !2006
  %arrayidx69 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom68, !dbg !2006
  %53 = load i32, ptr %arrayidx69, align 4, !dbg !2006
  %cmp70 = icmp ne i32 %51, %53, !dbg !2007
  %conv71 = zext i1 %cmp70 to i32, !dbg !2007
  %54 = load i32, ptr %sp, align 4, !dbg !2008
  %idxprom72 = sext i32 %54 to i64, !dbg !2009
  %arrayidx73 = getelementptr [10 x i32], ptr %s, i64 0, i64 %idxprom72, !dbg !2009
  store i32 %conv71, ptr %arrayidx73, align 4, !dbg !2010
  br label %sw.epilog, !dbg !2011

sw.default:                                       ; preds = %for.body
  store i32 -1, ptr %retval, align 4, !dbg !2012
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2012

sw.epilog:                                        ; preds = %if.end63, %if.end49, %if.end39, %if.end29, %if.end21, %if.end13, %if.end5
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2013
  br label %cleanup, !dbg !2013

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then62, %if.then48, %if.then38, %if.then28, %if.then20, %if.then12, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !2013
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup76 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2014

for.inc:                                          ; preds = %cleanup.cont
  %55 = load i32, ptr %i, align 4, !dbg !2015
  %inc74 = add i32 %55, 1, !dbg !2015
  store i32 %inc74, ptr %i, align 4, !dbg !2015
  br label %for.cond, !dbg !2016, !llvm.loop !2017

for.end:                                          ; preds = %for.cond
  %arrayidx75 = getelementptr [10 x i32], ptr %s, i64 0, i64 0, !dbg !2019
  %56 = load i32, ptr %arrayidx75, align 16, !dbg !2019
  store i32 %56, ptr %retval, align 4, !dbg !2020
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !2020

cleanup76:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sp) #18, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 40, ptr %s) #18, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !2021
  %57 = load i32, ptr %retval, align 4, !dbg !2021
  ret i32 %57, !dbg !2021
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2022 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cond_node_destroy(ptr noundef %node) #0 align 16 !dbg !2026 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2030, metadata !DIExpression()), !dbg !2031
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2032
  %expr = getelementptr inbounds %struct.cond_node, ptr %0, i32 0, i32 1, !dbg !2033
  %nodes = getelementptr inbounds %struct.cond_expr, ptr %expr, i32 0, i32 0, !dbg !2034
  %1 = load ptr, ptr %nodes, align 8, !dbg !2034
  call void @kfree(ptr noundef %1) #19, !dbg !2035
  %2 = load ptr, ptr %node.addr, align 8, !dbg !2036
  %true_list = getelementptr inbounds %struct.cond_node, ptr %2, i32 0, i32 2, !dbg !2037
  %nodes1 = getelementptr inbounds %struct.cond_av_list, ptr %true_list, i32 0, i32 0, !dbg !2038
  %3 = load ptr, ptr %nodes1, align 8, !dbg !2038
  call void @kfree(ptr noundef %3) #19, !dbg !2039
  %4 = load ptr, ptr %node.addr, align 8, !dbg !2040
  %false_list = getelementptr inbounds %struct.cond_node, ptr %4, i32 0, i32 3, !dbg !2041
  %nodes2 = getelementptr inbounds %struct.cond_av_list, ptr %false_list, i32 0, i32 0, !dbg !2042
  %5 = load ptr, ptr %nodes2, align 8, !dbg !2042
  call void @kfree(ptr noundef %5) #19, !dbg !2043
  ret void, !dbg !2044
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #6 align 16 !dbg !2045 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !2052, metadata !DIExpression()), !dbg !2053
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !2054, !range !2055, !noundef !2056
  %tobool = trunc i8 %0 to i1, !dbg !2054
  %lnot = xor i1 %tobool, true, !dbg !2054
  %lnot1 = xor i1 %lnot, true, !dbg !2054
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2054
  %conv = sext i32 %lnot.ext to i64, !dbg !2054
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2054
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2054
  ret i1 %tobool2, !dbg !2057
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2058 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2059 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #13 align 16 !dbg !2060 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2064, metadata !DIExpression()), !dbg !2066
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2065, metadata !DIExpression()), !dbg !2067
  %0 = load i64, ptr %size.addr, align 8, !dbg !2068
  %tobool = icmp ne i64 %0, 0, !dbg !2068
  br i1 %tobool, label %if.end, label %if.then, !dbg !2070

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2071
  br label %return, !dbg !2071

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2072
  %cmp = icmp ule i64 %1, 8, !dbg !2074
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2075

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2076
  br label %return, !dbg !2076

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2077
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2079
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2080

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2081
  %cmp4 = icmp ule i64 %3, 96, !dbg !2082
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2083

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2084
  br label %return, !dbg !2084

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2085
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2087
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2088

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2089
  %cmp9 = icmp ule i64 %5, 192, !dbg !2090
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2091

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2092
  br label %return, !dbg !2092

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2093
  %cmp12 = icmp ule i64 %6, 8, !dbg !2095
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2096

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2097
  br label %return, !dbg !2097

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2098
  %cmp15 = icmp ule i64 %7, 16, !dbg !2100
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2101

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2102
  br label %return, !dbg !2102

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2103
  %cmp18 = icmp ule i64 %8, 32, !dbg !2105
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2106

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2107
  br label %return, !dbg !2107

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2108
  %cmp21 = icmp ule i64 %9, 64, !dbg !2110
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2111

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2112
  br label %return, !dbg !2112

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2113
  %cmp24 = icmp ule i64 %10, 128, !dbg !2115
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2116

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2117
  br label %return, !dbg !2117

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2118
  %cmp27 = icmp ule i64 %11, 256, !dbg !2120
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2121

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2122
  br label %return, !dbg !2122

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2123
  %cmp30 = icmp ule i64 %12, 512, !dbg !2125
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2126

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2127
  br label %return, !dbg !2127

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2128
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2130
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2131

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2132
  br label %return, !dbg !2132

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2133
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2135
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2136

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2137
  br label %return, !dbg !2137

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2138
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2140
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2141

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2142
  br label %return, !dbg !2142

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2143
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2145
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2146

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2147
  br label %return, !dbg !2147

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2148
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2150
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2151

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2152
  br label %return, !dbg !2152

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2153
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2155
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2156

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2157
  br label %return, !dbg !2157

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2158
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2160
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2161

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2162
  br label %return, !dbg !2162

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2163
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2165
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2166

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2167
  br label %return, !dbg !2167

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2168
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2170
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2171

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2172
  br label %return, !dbg !2172

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2173
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2175
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2176

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2177
  br label %return, !dbg !2177

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2178
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2180
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2181

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2182
  br label %return, !dbg !2182

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2183
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2185
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2186

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2187
  br label %return, !dbg !2187

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2188, !range !2055, !noundef !2056
  %tobool69 = trunc i8 %25 to i1, !dbg !2188
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2190

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2191

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #25, !dbg !2192, !srcloc !2195
  unreachable, !dbg !2192

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2196

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2197

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2198

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2200

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2198

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #18, !dbg !2202, !srcloc !2204
  br label %do.end75, !dbg !2202

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2198

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2205
  br label %return, !dbg !2205

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2206
  ret i32 %26, !dbg !2206
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2207 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #13 align 16 !dbg !2213 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2217, metadata !DIExpression()), !dbg !2219
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2218, metadata !DIExpression()), !dbg !2220
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2221
  %and = and i32 %0, 17, !dbg !2221
  %cmp = icmp eq i32 %and, 0, !dbg !2221
  %lnot = xor i1 %cmp, true, !dbg !2221
  %lnot1 = xor i1 %lnot, true, !dbg !2221
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2221
  %conv = sext i32 %lnot.ext to i64, !dbg !2221
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2221
  %tobool = icmp ne i64 %expval, 0, !dbg !2221
  br i1 %tobool, label %if.then, label %if.end, !dbg !2223

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2224
  br label %return, !dbg !2224

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2225
  %and2 = and i32 %1, 1, !dbg !2227
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2227
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2228

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2229
  br label %return, !dbg !2229

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2230
  br label %return, !dbg !2230

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2232
  ret i32 %2, !dbg !2232
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2233 dso_local void @__compiletime_assert_117() #15

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @expr_node_isvalid(ptr noundef %p, ptr noundef %expr) #0 align 16 !dbg !2236 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %expr.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2240, metadata !DIExpression()), !dbg !2242
  store ptr %expr, ptr %expr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %expr.addr, metadata !2241, metadata !DIExpression()), !dbg !2243
  %0 = load ptr, ptr %expr.addr, align 8, !dbg !2244
  %expr_type = getelementptr inbounds %struct.cond_expr_node, ptr %0, i32 0, i32 0, !dbg !2246
  %1 = load i32, ptr %expr_type, align 4, !dbg !2246
  %cmp = icmp ule i32 %1, 0, !dbg !2247
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2248

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %expr.addr, align 8, !dbg !2249
  %expr_type1 = getelementptr inbounds %struct.cond_expr_node, ptr %2, i32 0, i32 0, !dbg !2250
  %3 = load i32, ptr %expr_type1, align 4, !dbg !2250
  %cmp2 = icmp ugt i32 %3, 7, !dbg !2251
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2252

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body, !dbg !2253

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2256

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #20, !dbg !2253
  store i32 %call, ptr %tmp, align 4, !dbg !2256
  %4 = load i32, ptr %tmp, align 4, !dbg !2253
  store i32 0, ptr %retval, align 4, !dbg !2258
  br label %return, !dbg !2258

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %expr.addr, align 8, !dbg !2259
  %boolean = getelementptr inbounds %struct.cond_expr_node, ptr %5, i32 0, i32 1, !dbg !2261
  %6 = load i32, ptr %boolean, align 4, !dbg !2261
  %7 = load ptr, ptr %p.addr, align 8, !dbg !2262
  %symtab = getelementptr inbounds %struct.policydb, ptr %7, i32 0, i32 1, !dbg !2263
  %arrayidx = getelementptr [8 x %struct.symtab], ptr %symtab, i64 0, i64 5, !dbg !2262
  %nprim = getelementptr inbounds %struct.symtab, ptr %arrayidx, i32 0, i32 1, !dbg !2264
  %8 = load i32, ptr %nprim, align 8, !dbg !2264
  %cmp3 = icmp ugt i32 %6, %8, !dbg !2265
  br i1 %cmp3, label %if.then4, label %if.end9, !dbg !2266

if.then4:                                         ; preds = %if.end
  br label %do.body5, !dbg !2267

do.body5:                                         ; preds = %if.then4
  br label %do.end6, !dbg !2270

do.end6:                                          ; preds = %do.body5
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #20, !dbg !2267
  store i32 %call8, ptr %tmp7, align 4, !dbg !2270
  %9 = load i32, ptr %tmp7, align 4, !dbg !2267
  store i32 0, ptr %retval, align 4, !dbg !2272
  br label %return, !dbg !2272

if.end9:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2273
  br label %return, !dbg !2273

return:                                           ; preds = %if.end9, %do.end6, %do.end
  %10 = load i32, ptr %retval, align 4, !dbg !2274
  ret i32 %10, !dbg !2274
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cond_read_av_list(ptr noundef %p, ptr noundef %fp, ptr noundef %list, ptr noundef %other) #0 align 16 !dbg !2275 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %other.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %buf = alloca [1 x i32], align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %data = alloca %struct.cond_insertf_data, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2280, metadata !DIExpression()), !dbg !2294
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !2281, metadata !DIExpression()), !dbg !2295
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2282, metadata !DIExpression()), !dbg !2296
  store ptr %other, ptr %other.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %other.addr, metadata !2283, metadata !DIExpression()), !dbg !2297
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #18, !dbg !2298
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !2284, metadata !DIExpression()), !dbg !2299
  call void @llvm.lifetime.start.p0(i64 4, ptr %buf) #18, !dbg !2300
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !2285, metadata !DIExpression()), !dbg !2301
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !2302
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2286, metadata !DIExpression()), !dbg !2303
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #18, !dbg !2302
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2287, metadata !DIExpression()), !dbg !2304
  call void @llvm.lifetime.start.p0(i64 24, ptr %data) #18, !dbg !2305
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2288, metadata !DIExpression()), !dbg !2306
  %arraydecay = getelementptr inbounds [1 x i32], ptr %buf, i64 0, i64 0, !dbg !2307
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !2308
  %call = call i32 @next_entry(ptr noundef %arraydecay, ptr noundef %0, i64 noundef 4) #19, !dbg !2309
  store i32 %call, ptr %rc, align 4, !dbg !2310
  %1 = load i32, ptr %rc, align 4, !dbg !2311
  %tobool = icmp ne i32 %1, 0, !dbg !2311
  br i1 %tobool, label %if.then, label %if.end, !dbg !2313

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4, !dbg !2314
  store i32 %2, ptr %retval, align 4, !dbg !2315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2315

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [1 x i32], ptr %buf, i64 0, i64 0, !dbg !2316
  %3 = load i32, ptr %arrayidx, align 4, !dbg !2316
  store i32 %3, ptr %len, align 4, !dbg !2317
  %4 = load i32, ptr %len, align 4, !dbg !2318
  %cmp = icmp eq i32 %4, 0, !dbg !2320
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2321

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2322

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %len, align 4, !dbg !2323
  %conv = zext i32 %5 to i64, !dbg !2323
  %call3 = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #21, !dbg !2324
  %6 = load ptr, ptr %list.addr, align 8, !dbg !2325
  %nodes = getelementptr inbounds %struct.cond_av_list, ptr %6, i32 0, i32 0, !dbg !2326
  store ptr %call3, ptr %nodes, align 8, !dbg !2327
  %7 = load ptr, ptr %list.addr, align 8, !dbg !2328
  %nodes4 = getelementptr inbounds %struct.cond_av_list, ptr %7, i32 0, i32 0, !dbg !2330
  %8 = load ptr, ptr %nodes4, align 8, !dbg !2330
  %tobool5 = icmp ne ptr %8, null, !dbg !2328
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !2331

if.then6:                                         ; preds = %if.end2
  store i32 -12, ptr %retval, align 4, !dbg !2332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2332

if.end7:                                          ; preds = %if.end2
  %9 = load ptr, ptr %p.addr, align 8, !dbg !2333
  %p8 = getelementptr inbounds %struct.cond_insertf_data, ptr %data, i32 0, i32 0, !dbg !2334
  store ptr %9, ptr %p8, align 8, !dbg !2335
  %10 = load ptr, ptr %other.addr, align 8, !dbg !2336
  %other9 = getelementptr inbounds %struct.cond_insertf_data, ptr %data, i32 0, i32 2, !dbg !2337
  store ptr %10, ptr %other9, align 8, !dbg !2338
  store i32 0, ptr %i, align 4, !dbg !2339
  br label %for.cond, !dbg !2341

for.cond:                                         ; preds = %for.inc, %if.end7
  %11 = load i32, ptr %i, align 4, !dbg !2342
  %12 = load i32, ptr %len, align 4, !dbg !2344
  %cmp10 = icmp ult i32 %11, %12, !dbg !2345
  br i1 %cmp10, label %for.body, label %for.end, !dbg !2346

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %list.addr, align 8, !dbg !2347
  %nodes12 = getelementptr inbounds %struct.cond_av_list, ptr %13, i32 0, i32 0, !dbg !2349
  %14 = load ptr, ptr %nodes12, align 8, !dbg !2349
  %15 = load i32, ptr %i, align 4, !dbg !2350
  %idxprom = zext i32 %15 to i64, !dbg !2347
  %arrayidx13 = getelementptr ptr, ptr %14, i64 %idxprom, !dbg !2347
  %dst = getelementptr inbounds %struct.cond_insertf_data, ptr %data, i32 0, i32 1, !dbg !2351
  store ptr %arrayidx13, ptr %dst, align 8, !dbg !2352
  %16 = load ptr, ptr %p.addr, align 8, !dbg !2353
  %te_cond_avtab = getelementptr inbounds %struct.policydb, ptr %16, i32 0, i32 13, !dbg !2354
  %17 = load ptr, ptr %fp.addr, align 8, !dbg !2355
  %18 = load ptr, ptr %p.addr, align 8, !dbg !2356
  %call14 = call i32 @avtab_read_item(ptr noundef %te_cond_avtab, ptr noundef %17, ptr noundef %18, ptr noundef @cond_insertf, ptr noundef %data) #19, !dbg !2357
  store i32 %call14, ptr %rc, align 4, !dbg !2358
  %19 = load i32, ptr %rc, align 4, !dbg !2359
  %tobool15 = icmp ne i32 %19, 0, !dbg !2359
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !2361

if.then16:                                        ; preds = %for.body
  %20 = load ptr, ptr %list.addr, align 8, !dbg !2362
  %nodes17 = getelementptr inbounds %struct.cond_av_list, ptr %20, i32 0, i32 0, !dbg !2364
  %21 = load ptr, ptr %nodes17, align 8, !dbg !2364
  call void @kfree(ptr noundef %21) #19, !dbg !2365
  %22 = load ptr, ptr %list.addr, align 8, !dbg !2366
  %nodes18 = getelementptr inbounds %struct.cond_av_list, ptr %22, i32 0, i32 0, !dbg !2367
  store ptr null, ptr %nodes18, align 8, !dbg !2368
  %23 = load i32, ptr %rc, align 4, !dbg !2369
  store i32 %23, ptr %retval, align 4, !dbg !2370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2370

if.end19:                                         ; preds = %for.body
  br label %for.inc, !dbg !2371

for.inc:                                          ; preds = %if.end19
  %24 = load i32, ptr %i, align 4, !dbg !2372
  %inc = add i32 %24, 1, !dbg !2372
  store i32 %inc, ptr %i, align 4, !dbg !2372
  br label %for.cond, !dbg !2373, !llvm.loop !2374

for.end:                                          ; preds = %for.cond
  %25 = load i32, ptr %len, align 4, !dbg !2376
  %26 = load ptr, ptr %list.addr, align 8, !dbg !2377
  %len20 = getelementptr inbounds %struct.cond_av_list, ptr %26, i32 0, i32 1, !dbg !2378
  store i32 %25, ptr %len20, align 8, !dbg !2379
  store i32 0, ptr %retval, align 4, !dbg !2380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2380

cleanup:                                          ; preds = %for.end, %if.then16, %if.then6, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %data) #18, !dbg !2381
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #18, !dbg !2381
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !2381
  call void @llvm.lifetime.end.p0(i64 4, ptr %buf) #18, !dbg !2381
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #18, !dbg !2381
  %27 = load i32, ptr %retval, align 4, !dbg !2381
  ret i32 %27, !dbg !2381
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2382 dso_local i32 @avtab_read_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cond_insertf(ptr noundef %a, ptr noundef %k, ptr noundef %d, ptr noundef %ptr) #0 align 16 !dbg !2390 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %p = alloca ptr, align 8
  %other = alloca ptr, align 8
  %node_ptr = alloca ptr, align 8
  %i = alloca i32, align 4
  %found = alloca i8, align 1
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %tmp54 = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !2392, metadata !DIExpression()), !dbg !2403
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !2393, metadata !DIExpression()), !dbg !2404
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2394, metadata !DIExpression()), !dbg !2405
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2395, metadata !DIExpression()), !dbg !2406
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #18, !dbg !2407
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2396, metadata !DIExpression()), !dbg !2408
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2409
  store ptr %0, ptr %data, align 8, !dbg !2408
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2398, metadata !DIExpression()), !dbg !2411
  %1 = load ptr, ptr %data, align 8, !dbg !2412
  %p1 = getelementptr inbounds %struct.cond_insertf_data, ptr %1, i32 0, i32 0, !dbg !2413
  %2 = load ptr, ptr %p1, align 8, !dbg !2413
  store ptr %2, ptr %p, align 8, !dbg !2411
  call void @llvm.lifetime.start.p0(i64 8, ptr %other) #18, !dbg !2414
  call void @llvm.dbg.declare(metadata ptr %other, metadata !2399, metadata !DIExpression()), !dbg !2415
  %3 = load ptr, ptr %data, align 8, !dbg !2416
  %other2 = getelementptr inbounds %struct.cond_insertf_data, ptr %3, i32 0, i32 2, !dbg !2417
  %4 = load ptr, ptr %other2, align 8, !dbg !2417
  store ptr %4, ptr %other, align 8, !dbg !2415
  call void @llvm.lifetime.start.p0(i64 8, ptr %node_ptr) #18, !dbg !2418
  call void @llvm.dbg.declare(metadata ptr %node_ptr, metadata !2400, metadata !DIExpression()), !dbg !2419
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !2420
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2401, metadata !DIExpression()), !dbg !2421
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #18, !dbg !2422
  call void @llvm.dbg.declare(metadata ptr %found, metadata !2402, metadata !DIExpression()), !dbg !2423
  %5 = load ptr, ptr %k.addr, align 8, !dbg !2424
  %specified = getelementptr inbounds %struct.avtab_key, ptr %5, i32 0, i32 3, !dbg !2426
  %6 = load i16, ptr %specified, align 2, !dbg !2426
  %conv = zext i16 %6 to i32, !dbg !2424
  %and = and i32 %conv, 112, !dbg !2427
  %tobool = icmp ne i32 %and, 0, !dbg !2427
  br i1 %tobool, label %if.then, label %if.end46, !dbg !2428

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %p, align 8, !dbg !2429
  %te_avtab = getelementptr inbounds %struct.policydb, ptr %7, i32 0, i32 7, !dbg !2432
  %8 = load ptr, ptr %k.addr, align 8, !dbg !2433
  %call = call ptr @avtab_search_node(ptr noundef %te_avtab, ptr noundef %8) #19, !dbg !2434
  %tobool3 = icmp ne ptr %call, null, !dbg !2434
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !2435

if.then4:                                         ; preds = %if.then
  br label %do.body, !dbg !2436

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !2439

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2439

do.end:                                           ; preds = %do.cond
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #20, !dbg !2436
  store i32 %call5, ptr %tmp, align 4, !dbg !2439
  %9 = load i32, ptr %tmp, align 4, !dbg !2436
  store i32 -22, ptr %retval, align 4, !dbg !2441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2441

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %other, align 8, !dbg !2442
  %tobool6 = icmp ne ptr %10, null, !dbg !2442
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !2444

if.then7:                                         ; preds = %if.end
  %11 = load ptr, ptr %p, align 8, !dbg !2445
  %te_cond_avtab = getelementptr inbounds %struct.policydb, ptr %11, i32 0, i32 13, !dbg !2447
  %12 = load ptr, ptr %k.addr, align 8, !dbg !2448
  %call8 = call ptr @avtab_search_node(ptr noundef %te_cond_avtab, ptr noundef %12) #19, !dbg !2449
  store ptr %call8, ptr %node_ptr, align 8, !dbg !2450
  %13 = load ptr, ptr %node_ptr, align 8, !dbg !2451
  %tobool9 = icmp ne ptr %13, null, !dbg !2451
  br i1 %tobool9, label %if.then10, label %if.end34, !dbg !2453

if.then10:                                        ; preds = %if.then7
  %14 = load ptr, ptr %node_ptr, align 8, !dbg !2454
  %15 = load ptr, ptr %k.addr, align 8, !dbg !2457
  %specified11 = getelementptr inbounds %struct.avtab_key, ptr %15, i32 0, i32 3, !dbg !2458
  %16 = load i16, ptr %specified11, align 2, !dbg !2458
  %call12 = call ptr @avtab_search_node_next(ptr noundef %14, i16 noundef zeroext %16) #19, !dbg !2459
  %tobool13 = icmp ne ptr %call12, null, !dbg !2459
  br i1 %tobool13, label %if.then14, label %if.end20, !dbg !2460

if.then14:                                        ; preds = %if.then10
  br label %do.body15, !dbg !2461

do.body15:                                        ; preds = %if.then14
  br label %do.cond16, !dbg !2464

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !2464

do.end17:                                         ; preds = %do.cond16
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #20, !dbg !2461
  store i32 %call19, ptr %tmp18, align 4, !dbg !2464
  %17 = load i32, ptr %tmp18, align 4, !dbg !2461
  store i32 -22, ptr %retval, align 4, !dbg !2466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2466

if.end20:                                         ; preds = %if.then10
  store i8 0, ptr %found, align 1, !dbg !2467
  store i32 0, ptr %i, align 4, !dbg !2468
  br label %for.cond, !dbg !2470

for.cond:                                         ; preds = %for.inc, %if.end20
  %18 = load i32, ptr %i, align 4, !dbg !2471
  %19 = load ptr, ptr %other, align 8, !dbg !2473
  %len = getelementptr inbounds %struct.cond_av_list, ptr %19, i32 0, i32 1, !dbg !2474
  %20 = load i32, ptr %len, align 8, !dbg !2474
  %cmp = icmp ult i32 %18, %20, !dbg !2475
  br i1 %cmp, label %for.body, label %for.end, !dbg !2476

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %other, align 8, !dbg !2477
  %nodes = getelementptr inbounds %struct.cond_av_list, ptr %21, i32 0, i32 0, !dbg !2480
  %22 = load ptr, ptr %nodes, align 8, !dbg !2480
  %23 = load i32, ptr %i, align 4, !dbg !2481
  %idxprom = zext i32 %23 to i64, !dbg !2477
  %arrayidx = getelementptr ptr, ptr %22, i64 %idxprom, !dbg !2477
  %24 = load ptr, ptr %arrayidx, align 8, !dbg !2477
  %25 = load ptr, ptr %node_ptr, align 8, !dbg !2482
  %cmp22 = icmp eq ptr %24, %25, !dbg !2483
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !2484

if.then24:                                        ; preds = %for.body
  store i8 1, ptr %found, align 1, !dbg !2485
  br label %for.end, !dbg !2487

if.end25:                                         ; preds = %for.body
  br label %for.inc, !dbg !2488

for.inc:                                          ; preds = %if.end25
  %26 = load i32, ptr %i, align 4, !dbg !2489
  %inc = add i32 %26, 1, !dbg !2489
  store i32 %inc, ptr %i, align 4, !dbg !2489
  br label %for.cond, !dbg !2490, !llvm.loop !2491

for.end:                                          ; preds = %if.then24, %for.cond
  %27 = load i8, ptr %found, align 1, !dbg !2493, !range !2055, !noundef !2056
  %tobool26 = trunc i8 %27 to i1, !dbg !2493
  br i1 %tobool26, label %if.end33, label %if.then27, !dbg !2495

if.then27:                                        ; preds = %for.end
  br label %do.body28, !dbg !2496

do.body28:                                        ; preds = %if.then27
  br label %do.cond29, !dbg !2499

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !2499

do.end30:                                         ; preds = %do.cond29
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #20, !dbg !2496
  store i32 %call32, ptr %tmp31, align 4, !dbg !2499
  %28 = load i32, ptr %tmp31, align 4, !dbg !2496
  store i32 -22, ptr %retval, align 4, !dbg !2501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2501

if.end33:                                         ; preds = %for.end
  br label %if.end34, !dbg !2502

if.end34:                                         ; preds = %if.end33, %if.then7
  br label %if.end45, !dbg !2503

if.else:                                          ; preds = %if.end
  %29 = load ptr, ptr %p, align 8, !dbg !2504
  %te_cond_avtab35 = getelementptr inbounds %struct.policydb, ptr %29, i32 0, i32 13, !dbg !2507
  %30 = load ptr, ptr %k.addr, align 8, !dbg !2508
  %call36 = call ptr @avtab_search_node(ptr noundef %te_cond_avtab35, ptr noundef %30) #19, !dbg !2509
  %tobool37 = icmp ne ptr %call36, null, !dbg !2509
  br i1 %tobool37, label %if.then38, label %if.end44, !dbg !2510

if.then38:                                        ; preds = %if.else
  br label %do.body39, !dbg !2511

do.body39:                                        ; preds = %if.then38
  br label %do.cond40, !dbg !2514

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !2514

do.end41:                                         ; preds = %do.cond40
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #20, !dbg !2511
  store i32 %call43, ptr %tmp42, align 4, !dbg !2514
  %31 = load i32, ptr %tmp42, align 4, !dbg !2511
  store i32 -22, ptr %retval, align 4, !dbg !2516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2516

if.end44:                                         ; preds = %if.else
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end34
  br label %if.end46, !dbg !2517

if.end46:                                         ; preds = %if.end45, %entry
  %32 = load ptr, ptr %p, align 8, !dbg !2518
  %te_cond_avtab47 = getelementptr inbounds %struct.policydb, ptr %32, i32 0, i32 13, !dbg !2519
  %33 = load ptr, ptr %k.addr, align 8, !dbg !2520
  %34 = load ptr, ptr %d.addr, align 8, !dbg !2521
  %call48 = call ptr @avtab_insert_nonunique(ptr noundef %te_cond_avtab47, ptr noundef %33, ptr noundef %34) #19, !dbg !2522
  store ptr %call48, ptr %node_ptr, align 8, !dbg !2523
  %35 = load ptr, ptr %node_ptr, align 8, !dbg !2524
  %tobool49 = icmp ne ptr %35, null, !dbg !2524
  br i1 %tobool49, label %if.end56, label %if.then50, !dbg !2526

if.then50:                                        ; preds = %if.end46
  br label %do.body51, !dbg !2527

do.body51:                                        ; preds = %if.then50
  br label %do.cond52, !dbg !2530

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !2530

do.end53:                                         ; preds = %do.cond52
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #20, !dbg !2527
  store i32 %call55, ptr %tmp54, align 4, !dbg !2530
  %36 = load i32, ptr %tmp54, align 4, !dbg !2527
  store i32 -12, ptr %retval, align 4, !dbg !2532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2532

if.end56:                                         ; preds = %if.end46
  %37 = load ptr, ptr %node_ptr, align 8, !dbg !2533
  %38 = load ptr, ptr %data, align 8, !dbg !2534
  %dst = getelementptr inbounds %struct.cond_insertf_data, ptr %38, i32 0, i32 1, !dbg !2535
  %39 = load ptr, ptr %dst, align 8, !dbg !2535
  store ptr %37, ptr %39, align 8, !dbg !2536
  store i32 0, ptr %retval, align 4, !dbg !2537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2537

cleanup:                                          ; preds = %if.end56, %do.end53, %do.end41, %do.end30, %do.end17, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #18, !dbg !2538
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !2538
  call void @llvm.lifetime.end.p0(i64 8, ptr %node_ptr) #18, !dbg !2538
  call void @llvm.lifetime.end.p0(i64 8, ptr %other) #18, !dbg !2538
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !2538
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #18, !dbg !2538
  %40 = load i32, ptr %retval, align 4, !dbg !2538
  ret i32 %40, !dbg !2538
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2539 dso_local ptr @avtab_insert_nonunique(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cond_write_av_list(ptr noundef %p, ptr noundef %list, ptr noundef %fp) #0 align 16 !dbg !2542 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %buf = alloca [1 x i32], align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2546, metadata !DIExpression()), !dbg !2552
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2547, metadata !DIExpression()), !dbg !2553
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !2548, metadata !DIExpression()), !dbg !2554
  call void @llvm.lifetime.start.p0(i64 4, ptr %buf) #18, !dbg !2555
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !2549, metadata !DIExpression()), !dbg !2556
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !2557
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2550, metadata !DIExpression()), !dbg !2558
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #18, !dbg !2559
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !2551, metadata !DIExpression()), !dbg !2560
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2561
  %len = getelementptr inbounds %struct.cond_av_list, ptr %0, i32 0, i32 1, !dbg !2561
  %1 = load i32, ptr %len, align 8, !dbg !2561
  %arrayidx = getelementptr [1 x i32], ptr %buf, i64 0, i64 0, !dbg !2562
  store i32 %1, ptr %arrayidx, align 4, !dbg !2563
  %arraydecay = getelementptr inbounds [1 x i32], ptr %buf, i64 0, i64 0, !dbg !2564
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !2565
  %call = call i32 @put_entry(ptr noundef %arraydecay, i64 noundef 4, i64 noundef 1, ptr noundef %2) #19, !dbg !2566
  store i32 %call, ptr %rc, align 4, !dbg !2567
  %3 = load i32, ptr %rc, align 4, !dbg !2568
  %tobool = icmp ne i32 %3, 0, !dbg !2568
  br i1 %tobool, label %if.then, label %if.end, !dbg !2570

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %rc, align 4, !dbg !2571
  store i32 %4, ptr %retval, align 4, !dbg !2572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2572

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !2573
  br label %for.cond, !dbg !2575

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !2576
  %6 = load ptr, ptr %list.addr, align 8, !dbg !2578
  %len1 = getelementptr inbounds %struct.cond_av_list, ptr %6, i32 0, i32 1, !dbg !2579
  %7 = load i32, ptr %len1, align 8, !dbg !2579
  %cmp = icmp ult i32 %5, %7, !dbg !2580
  br i1 %cmp, label %for.body, label %for.end, !dbg !2581

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %p.addr, align 8, !dbg !2582
  %9 = load ptr, ptr %list.addr, align 8, !dbg !2584
  %nodes = getelementptr inbounds %struct.cond_av_list, ptr %9, i32 0, i32 0, !dbg !2585
  %10 = load ptr, ptr %nodes, align 8, !dbg !2585
  %11 = load i32, ptr %i, align 4, !dbg !2586
  %idxprom = zext i32 %11 to i64, !dbg !2584
  %arrayidx2 = getelementptr ptr, ptr %10, i64 %idxprom, !dbg !2584
  %12 = load ptr, ptr %arrayidx2, align 8, !dbg !2584
  %13 = load ptr, ptr %fp.addr, align 8, !dbg !2587
  %call3 = call i32 @avtab_write_item(ptr noundef %8, ptr noundef %12, ptr noundef %13) #19, !dbg !2588
  store i32 %call3, ptr %rc, align 4, !dbg !2589
  %14 = load i32, ptr %rc, align 4, !dbg !2590
  %tobool4 = icmp ne i32 %14, 0, !dbg !2590
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2592

if.then5:                                         ; preds = %for.body
  %15 = load i32, ptr %rc, align 4, !dbg !2593
  store i32 %15, ptr %retval, align 4, !dbg !2594
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2594

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !2595

for.inc:                                          ; preds = %if.end6
  %16 = load i32, ptr %i, align 4, !dbg !2596
  %inc = add i32 %16, 1, !dbg !2596
  store i32 %inc, ptr %i, align 4, !dbg !2596
  br label %for.cond, !dbg !2597, !llvm.loop !2598

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2600

cleanup:                                          ; preds = %for.end, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #18, !dbg !2601
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !2601
  call void @llvm.lifetime.end.p0(i64 4, ptr %buf) #18, !dbg !2601
  %17 = load i32, ptr %retval, align 4, !dbg !2601
  ret i32 %17, !dbg !2601
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2602 dso_local i32 @avtab_write_item(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2607 dso_local i32 @hashtab_duplicate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cond_bools_copy(ptr noundef %new, ptr noundef %orig, ptr noundef %args) #0 align 16 !dbg !2613 {
entry:
  %retval = alloca i32, align 4
  %new.addr = alloca ptr, align 8
  %orig.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %datum = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2615, metadata !DIExpression()), !dbg !2619
  store ptr %orig, ptr %orig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orig.addr, metadata !2616, metadata !DIExpression()), !dbg !2620
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !2617, metadata !DIExpression()), !dbg !2621
  call void @llvm.lifetime.start.p0(i64 8, ptr %datum) #18, !dbg !2622
  call void @llvm.dbg.declare(metadata ptr %datum, metadata !2618, metadata !DIExpression()), !dbg !2623
  %0 = load ptr, ptr %orig.addr, align 8, !dbg !2624
  %datum1 = getelementptr inbounds %struct.hashtab_node, ptr %0, i32 0, i32 1, !dbg !2625
  %1 = load ptr, ptr %datum1, align 8, !dbg !2625
  %call = call ptr @kmemdup(ptr noundef %1, i64 noundef 8, i32 noundef 3264) #24, !dbg !2626
  store ptr %call, ptr %datum, align 8, !dbg !2627
  %2 = load ptr, ptr %datum, align 8, !dbg !2628
  %tobool = icmp ne ptr %2, null, !dbg !2628
  br i1 %tobool, label %if.end, label %if.then, !dbg !2630

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2631

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %orig.addr, align 8, !dbg !2632
  %key = getelementptr inbounds %struct.hashtab_node, ptr %3, i32 0, i32 0, !dbg !2633
  %4 = load ptr, ptr %key, align 8, !dbg !2633
  %5 = load ptr, ptr %new.addr, align 8, !dbg !2634
  %key2 = getelementptr inbounds %struct.hashtab_node, ptr %5, i32 0, i32 0, !dbg !2635
  store ptr %4, ptr %key2, align 8, !dbg !2636
  %6 = load ptr, ptr %datum, align 8, !dbg !2637
  %7 = load ptr, ptr %new.addr, align 8, !dbg !2638
  %datum3 = getelementptr inbounds %struct.hashtab_node, ptr %7, i32 0, i32 1, !dbg !2639
  store ptr %6, ptr %datum3, align 8, !dbg !2640
  store i32 0, ptr %retval, align 4, !dbg !2641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2641

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %datum) #18, !dbg !2642
  %8 = load i32, ptr %retval, align 4, !dbg !2642
  ret i32 %8, !dbg !2642
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cond_bools_index(ptr noundef %key, ptr noundef %datum, ptr noundef %args) #0 align 16 !dbg !2643 {
entry:
  %key.addr = alloca ptr, align 8
  %datum.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %booldatum = alloca ptr, align 8
  %cond_bool_array = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2645, metadata !DIExpression()), !dbg !2650
  store ptr %datum, ptr %datum.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %datum.addr, metadata !2646, metadata !DIExpression()), !dbg !2651
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !2647, metadata !DIExpression()), !dbg !2652
  call void @llvm.lifetime.start.p0(i64 8, ptr %booldatum) #18, !dbg !2653
  call void @llvm.dbg.declare(metadata ptr %booldatum, metadata !2648, metadata !DIExpression()), !dbg !2654
  call void @llvm.lifetime.start.p0(i64 8, ptr %cond_bool_array) #18, !dbg !2653
  call void @llvm.dbg.declare(metadata ptr %cond_bool_array, metadata !2649, metadata !DIExpression()), !dbg !2655
  %0 = load ptr, ptr %datum.addr, align 8, !dbg !2656
  store ptr %0, ptr %booldatum, align 8, !dbg !2657
  %1 = load ptr, ptr %args.addr, align 8, !dbg !2658
  store ptr %1, ptr %cond_bool_array, align 8, !dbg !2659
  %2 = load ptr, ptr %booldatum, align 8, !dbg !2660
  %3 = load ptr, ptr %cond_bool_array, align 8, !dbg !2661
  %4 = load ptr, ptr %booldatum, align 8, !dbg !2662
  %value = getelementptr inbounds %struct.cond_bool_datum, ptr %4, i32 0, i32 0, !dbg !2663
  %5 = load i32, ptr %value, align 4, !dbg !2663
  %sub = sub i32 %5, 1, !dbg !2664
  %idxprom = zext i32 %sub to i64, !dbg !2661
  %arrayidx = getelementptr ptr, ptr %3, i64 %idxprom, !dbg !2661
  store ptr %2, ptr %arrayidx, align 8, !dbg !2665
  call void @llvm.lifetime.end.p0(i64 8, ptr %cond_bool_array) #18, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 8, ptr %booldatum) #18, !dbg !2666
  ret i32 0, !dbg !2667
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !2668 dso_local ptr @kmemdup(ptr noundef, i64 noundef, i32 noundef) #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2671 dso_local i32 @avtab_alloc_dup(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cond_dup_av_list(ptr noundef %new, ptr noundef %orig, ptr noundef %avtab) #0 align 16 !dbg !2676 {
entry:
  %retval = alloca i32, align 4
  %new.addr = alloca ptr, align 8
  %orig.addr = alloca ptr, align 8
  %avtab.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2680, metadata !DIExpression()), !dbg !2684
  store ptr %orig, ptr %orig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orig.addr, metadata !2681, metadata !DIExpression()), !dbg !2685
  store ptr %avtab, ptr %avtab.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %avtab.addr, metadata !2682, metadata !DIExpression()), !dbg !2686
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !2687
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2683, metadata !DIExpression()), !dbg !2688
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2689
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 16, i1 false), !dbg !2690
  %1 = load ptr, ptr %orig.addr, align 8, !dbg !2691
  %len = getelementptr inbounds %struct.cond_av_list, ptr %1, i32 0, i32 1, !dbg !2692
  %2 = load i32, ptr %len, align 8, !dbg !2692
  %conv = zext i32 %2 to i64, !dbg !2691
  %call = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #21, !dbg !2693
  %3 = load ptr, ptr %new.addr, align 8, !dbg !2694
  %nodes = getelementptr inbounds %struct.cond_av_list, ptr %3, i32 0, i32 0, !dbg !2695
  store ptr %call, ptr %nodes, align 8, !dbg !2696
  %4 = load ptr, ptr %new.addr, align 8, !dbg !2697
  %nodes1 = getelementptr inbounds %struct.cond_av_list, ptr %4, i32 0, i32 0, !dbg !2699
  %5 = load ptr, ptr %nodes1, align 8, !dbg !2699
  %tobool = icmp ne ptr %5, null, !dbg !2697
  br i1 %tobool, label %if.end, label %if.then, !dbg !2700

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2701

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !2702
  br label %for.cond, !dbg !2704

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4, !dbg !2705
  %7 = load ptr, ptr %orig.addr, align 8, !dbg !2707
  %len2 = getelementptr inbounds %struct.cond_av_list, ptr %7, i32 0, i32 1, !dbg !2708
  %8 = load i32, ptr %len2, align 8, !dbg !2708
  %cmp = icmp ult i32 %6, %8, !dbg !2709
  br i1 %cmp, label %for.body, label %for.end, !dbg !2710

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %avtab.addr, align 8, !dbg !2711
  %10 = load ptr, ptr %orig.addr, align 8, !dbg !2713
  %nodes4 = getelementptr inbounds %struct.cond_av_list, ptr %10, i32 0, i32 0, !dbg !2714
  %11 = load ptr, ptr %nodes4, align 8, !dbg !2714
  %12 = load i32, ptr %i, align 4, !dbg !2715
  %idxprom = zext i32 %12 to i64, !dbg !2713
  %arrayidx = getelementptr ptr, ptr %11, i64 %idxprom, !dbg !2713
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !2713
  %key = getelementptr inbounds %struct.avtab_node, ptr %13, i32 0, i32 0, !dbg !2716
  %14 = load ptr, ptr %orig.addr, align 8, !dbg !2717
  %nodes5 = getelementptr inbounds %struct.cond_av_list, ptr %14, i32 0, i32 0, !dbg !2718
  %15 = load ptr, ptr %nodes5, align 8, !dbg !2718
  %16 = load i32, ptr %i, align 4, !dbg !2719
  %idxprom6 = zext i32 %16 to i64, !dbg !2717
  %arrayidx7 = getelementptr ptr, ptr %15, i64 %idxprom6, !dbg !2717
  %17 = load ptr, ptr %arrayidx7, align 8, !dbg !2717
  %datum = getelementptr inbounds %struct.avtab_node, ptr %17, i32 0, i32 1, !dbg !2720
  %call8 = call ptr @avtab_insert_nonunique(ptr noundef %9, ptr noundef %key, ptr noundef %datum) #19, !dbg !2721
  %18 = load ptr, ptr %new.addr, align 8, !dbg !2722
  %nodes9 = getelementptr inbounds %struct.cond_av_list, ptr %18, i32 0, i32 0, !dbg !2723
  %19 = load ptr, ptr %nodes9, align 8, !dbg !2723
  %20 = load i32, ptr %i, align 4, !dbg !2724
  %idxprom10 = zext i32 %20 to i64, !dbg !2722
  %arrayidx11 = getelementptr ptr, ptr %19, i64 %idxprom10, !dbg !2722
  store ptr %call8, ptr %arrayidx11, align 8, !dbg !2725
  %21 = load ptr, ptr %new.addr, align 8, !dbg !2726
  %nodes12 = getelementptr inbounds %struct.cond_av_list, ptr %21, i32 0, i32 0, !dbg !2728
  %22 = load ptr, ptr %nodes12, align 8, !dbg !2728
  %23 = load i32, ptr %i, align 4, !dbg !2729
  %idxprom13 = zext i32 %23 to i64, !dbg !2726
  %arrayidx14 = getelementptr ptr, ptr %22, i64 %idxprom13, !dbg !2726
  %24 = load ptr, ptr %arrayidx14, align 8, !dbg !2726
  %tobool15 = icmp ne ptr %24, null, !dbg !2726
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !2730

if.then16:                                        ; preds = %for.body
  store i32 -12, ptr %retval, align 4, !dbg !2731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2731

if.end17:                                         ; preds = %for.body
  %25 = load ptr, ptr %new.addr, align 8, !dbg !2732
  %len18 = getelementptr inbounds %struct.cond_av_list, ptr %25, i32 0, i32 1, !dbg !2733
  %26 = load i32, ptr %len18, align 8, !dbg !2734
  %inc = add i32 %26, 1, !dbg !2734
  store i32 %inc, ptr %len18, align 8, !dbg !2734
  br label %for.inc, !dbg !2735

for.inc:                                          ; preds = %if.end17
  %27 = load i32, ptr %i, align 4, !dbg !2736
  %inc19 = add i32 %27, 1, !dbg !2736
  store i32 %inc19, ptr %i, align 4, !dbg !2736
  br label %for.cond, !dbg !2737, !llvm.loop !2738

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2740

cleanup:                                          ; preds = %for.end, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !2741
  %28 = load i32, ptr %retval, align 4, !dbg !2741
  ret i32 %28, !dbg !2741
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { noredzone }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone allocsize(0,1) }
attributes #22 = { noredzone allocsize(0) }
attributes #23 = { noredzone allocsize(2) }
attributes #24 = { noredzone allocsize(1) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!45}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "security/selinux/ss/conditional.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b84ba34725bd2a3f01c19b0d9f969292")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 67)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 480, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 21)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 365, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 59)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 370, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 55)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 276, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 63)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 45)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 302, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 36)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 308, type: !3, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 316, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 35)
!45 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/selinux/ss/.conditional.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -I ./security/selinux -I ./security/selinux/include -D KBUILD_MODFILE=\22security/selinux/selinux\22 -D KBUILD_BASENAME=\22conditional\22 -D KBUILD_MODNAME=\22selinux\22 -D __KBUILD_MODNAME=kmod_selinux -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/selinux/ss/conditional.ll security/selinux/ss/conditional.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !62, globals: !76, splitDebugInlining: false, nameTableKind: None)
!46 = !{!47, !53}
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 10, baseType: !49, size: 32, elements: !50)
!48 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!49 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "false", value: 0)
!52 = !DIEnumerator(name: "true", value: 1)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !9, line: 364, baseType: !49, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!56 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!57 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!58 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!59 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!60 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!61 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!62 = !{!63, !65, !67, !69, !71, !72, !75}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !64, line: 154, baseType: !49)
!64 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !66, line: 27, baseType: !49)
!66 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !68, line: 38, baseType: !65)
!68 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !70, line: 21, baseType: !65)
!70 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !70, line: 19, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !66, line: 24, baseType: !74)
!74 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!75 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!76 = !{!0, !7, !13, !18, !23, !28, !33, !38, !40}
!77 = !{i32 7, !"Dwarf Version", i32 5}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 8, !"cf-protection-branch", i32 1}
!81 = !{i32 4, !"function_return_thunk_extern", i32 1}
!82 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!83 = !{i32 1, !"Code Model", i32 2}
!84 = !{i32 1, !"override-stack-alignment", i32 8}
!85 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!86 = distinct !DISubprogram(name: "evaluate_cond_nodes", scope: !2, file: !2, line: 123, type: !87, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !385)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !89}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "policydb", file: !91, line: 239, size: 4736, elements: !92)
!91 = !DIFile(filename: "security/selinux/ss/policydb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f7795e8c85e617c81c5f9432b58d69e6")
!92 = !{!93, !95, !117, !121, !177, !186, !207, !217, !258, !259, !260, !261, !262, !269, !270, !292, !293, !300, !363, !370, !371, !373, !374, !375, !380, !381, !382, !383, !384}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "mls_enabled", scope: !90, file: !91, line: 240, baseType: !94, size: 32)
!94 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !90, file: !91, line: 243, baseType: !96, size: 1536, offset: 64)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 1536, elements: !115)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "symtab", file: !98, line: 15, size: 192, elements: !99)
!98 = !DIFile(filename: "security/selinux/ss/symtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4fa558f58a0acfc7c6989b1450f1c1b")
!99 = !{!100, !114}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !97, file: !98, line: 16, baseType: !101, size: 128)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashtab", file: !102, line: 32, size: 128, elements: !103)
!102 = !DIFile(filename: "security/selinux/ss/hashtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93462b8c7243c7cf649d075a1a12e63d")
!103 = !{!104, !112, !113}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "htable", scope: !101, file: !102, line: 33, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashtab_node", file: !102, line: 26, size: 192, elements: !108)
!108 = !{!109, !110, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !107, file: !102, line: 27, baseType: !71, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !107, file: !102, line: 28, baseType: !71, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !102, line: 29, baseType: !106, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !101, file: !102, line: 34, baseType: !69, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "nel", scope: !101, file: !102, line: 35, baseType: !69, size: 32, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "nprim", scope: !97, file: !98, line: 17, baseType: !69, size: 32, offset: 128)
!115 = !{!116}
!116 = !DISubrange(count: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "sym_val_to_name", scope: !90, file: !91, line: 254, baseType: !118, size: 512, offset: 1600)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 512, elements: !115)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "class_val_to_struct", scope: !90, file: !91, line: 257, baseType: !122, size: 64, offset: 2112)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_datum", file: !91, line: 52, size: 576, elements: !125)
!125 = !{!126, !127, !128, !134, !135, !172, !173, !174, !175, !176}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !124, file: !91, line: 53, baseType: !69, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "comkey", scope: !124, file: !91, line: 54, baseType: !120, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "comdatum", scope: !124, file: !91, line: 55, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_datum", file: !91, line: 46, size: 256, elements: !131)
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !130, file: !91, line: 47, baseType: !69, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !130, file: !91, line: 48, baseType: !97, size: 192, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !124, file: !91, line: 56, baseType: !97, size: 192, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "constraints", scope: !124, file: !91, line: 57, baseType: !136, size: 64, offset: 384)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constraint_node", file: !138, line: 57, size: 192, elements: !139)
!138 = !DIFile(filename: "security/selinux/ss/constraint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5462a1cc40f682813f94f813d2ff99e")
!139 = !{!140, !141, !171}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !137, file: !138, line: 58, baseType: !69, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !137, file: !138, line: 59, baseType: !142, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constraint_expr", file: !138, line: 23, size: 384, elements: !144)
!144 = !{!145, !146, !147, !148, !163, !170}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "expr_type", scope: !143, file: !138, line: 29, baseType: !69, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !143, file: !138, line: 42, baseType: !69, size: 32, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !143, file: !138, line: 49, baseType: !69, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !143, file: !138, line: 51, baseType: !149, size: 128, offset: 128)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ebitmap", file: !150, line: 40, size: 128, elements: !151)
!150 = !DIFile(filename: "security/selinux/ss/ebitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "57a81f7285b67f9767135d87fb3569d7")
!151 = !{!152, !162}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !149, file: !150, line: 41, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ebitmap_node", file: !150, line: 34, size: 512, elements: !155)
!155 = !{!156, !157, !161}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !154, file: !150, line: 35, baseType: !153, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !154, file: !150, line: 36, baseType: !158, size: 384, offset: 64)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 384, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 6)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "startbit", scope: !154, file: !150, line: 37, baseType: !69, size: 32, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "highbit", scope: !149, file: !150, line: 42, baseType: !69, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "type_names", scope: !143, file: !138, line: 52, baseType: !164, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type_set", file: !91, line: 161, size: 320, elements: !166)
!166 = !{!167, !168, !169}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !165, file: !91, line: 162, baseType: !149, size: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "negset", scope: !165, file: !91, line: 163, baseType: !149, size: 128, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !165, file: !91, line: 164, baseType: !69, size: 32, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !138, line: 54, baseType: !142, size: 64, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !137, file: !138, line: 60, baseType: !136, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "validatetrans", scope: !124, file: !91, line: 58, baseType: !136, size: 64, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "default_user", scope: !124, file: !91, line: 62, baseType: !4, size: 8, offset: 512)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "default_role", scope: !124, file: !91, line: 63, baseType: !4, size: 8, offset: 520)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !124, file: !91, line: 64, baseType: !4, size: 8, offset: 528)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "default_range", scope: !124, file: !91, line: 73, baseType: !4, size: 8, offset: 536)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "role_val_to_struct", scope: !90, file: !91, line: 258, baseType: !178, size: 64, offset: 2176)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "role_datum", file: !91, line: 77, size: 320, elements: !181)
!181 = !{!182, !183, !184, !185}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !180, file: !91, line: 78, baseType: !69, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !180, file: !91, line: 79, baseType: !69, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dominates", scope: !180, file: !91, line: 80, baseType: !149, size: 128, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !180, file: !91, line: 81, baseType: !149, size: 128, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "user_val_to_struct", scope: !90, file: !91, line: 259, baseType: !187, size: 64, offset: 2240)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_datum", file: !91, line: 121, size: 768, elements: !190)
!190 = !{!191, !192, !193, !194, !206}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !189, file: !91, line: 122, baseType: !69, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !189, file: !91, line: 123, baseType: !69, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "roles", scope: !189, file: !91, line: 124, baseType: !149, size: 128, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !189, file: !91, line: 125, baseType: !195, size: 384, offset: 192)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mls_range", file: !196, line: 26, size: 384, elements: !197)
!196 = !DIFile(filename: "security/selinux/ss/mls_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ea1e0a8d988e75a37cbe0fc79ec24320")
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !195, file: !196, line: 27, baseType: !199, size: 384)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 384, elements: !204)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mls_level", file: !196, line: 21, size: 192, elements: !201)
!201 = !{!202, !203}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sens", scope: !200, file: !196, line: 22, baseType: !69, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "cat", scope: !200, file: !196, line: 23, baseType: !149, size: 128, offset: 64)
!204 = !{!205}
!205 = !DISubrange(count: 2)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "dfltlevel", scope: !189, file: !91, line: 126, baseType: !200, size: 192, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "type_val_to_struct", scope: !90, file: !91, line: 260, baseType: !208, size: 64, offset: 2304)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type_datum", file: !91, line: 113, size: 96, elements: !211)
!211 = !{!212, !213, !214, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !210, file: !91, line: 114, baseType: !69, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !210, file: !91, line: 115, baseType: !69, size: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !210, file: !91, line: 116, baseType: !215, size: 8, offset: 64)
!215 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !210, file: !91, line: 117, baseType: !215, size: 8, offset: 72)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "te_avtab", scope: !90, file: !91, line: 263, baseType: !218, size: 192, offset: 2368)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab", file: !219, line: 83, size: 192, elements: !220)
!219 = !DIFile(filename: "security/selinux/ss/avtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594c41c8c01a8fbcd1845985fac73819")
!220 = !{!221, !255, !256, !257}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "htable", scope: !218, file: !219, line: 84, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_node", file: !219, line: 77, size: 192, elements: !225)
!225 = !{!226, !233, !254}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !224, file: !219, line: 78, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_key", file: !219, line: 26, size: 64, elements: !228)
!228 = !{!229, !230, !231, !232}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "source_type", scope: !227, file: !219, line: 27, baseType: !72, size: 16)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !227, file: !219, line: 28, baseType: !72, size: 16, offset: 16)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "target_class", scope: !227, file: !219, line: 29, baseType: !72, size: 16, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !227, file: !219, line: 47, baseType: !72, size: 16, offset: 48)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !224, file: !219, line: 79, baseType: !234, size: 64, offset: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_datum", file: !219, line: 70, size: 64, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !234, file: !219, line: 74, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !219, line: 71, size: 64, elements: !238)
!238 = !{!239, !240}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !237, file: !219, line: 72, baseType: !69, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "xperms", scope: !237, file: !219, line: 73, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_extended_perms", file: !219, line: 54, size: 288, elements: !243)
!243 = !{!244, !247, !248}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !242, file: !219, line: 59, baseType: !245, size: 8)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !70, line: 17, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !66, line: 21, baseType: !215)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !242, file: !219, line: 65, baseType: !245, size: 8, offset: 8)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "perms", scope: !242, file: !219, line: 67, baseType: !249, size: 256, offset: 32)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extended_perms_data", file: !250, line: 223, size: 256, elements: !251)
!250 = !DIFile(filename: "./security/selinux/include/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb6e0d69f1ee11464ad11e15a35ebc")
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !249, file: !250, line: 224, baseType: !253, size: 256)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !115)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !224, file: !219, line: 80, baseType: !223, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "nel", scope: !218, file: !219, line: 85, baseType: !69, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "nslot", scope: !218, file: !219, line: 86, baseType: !69, size: 32, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !218, file: !219, line: 87, baseType: !69, size: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "role_tr", scope: !90, file: !91, line: 266, baseType: !101, size: 128, offset: 2560)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "filename_trans_ttypes", scope: !90, file: !91, line: 270, baseType: !149, size: 128, offset: 2688)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "filename_trans", scope: !90, file: !91, line: 272, baseType: !101, size: 128, offset: 2816)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "compat_filename_trans_count", scope: !90, file: !91, line: 274, baseType: !69, size: 32, offset: 2944)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "bool_val_to_struct", scope: !90, file: !91, line: 277, baseType: !263, size: 64, offset: 3008)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cond_bool_datum", file: !91, line: 149, size: 64, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !265, file: !91, line: 150, baseType: !65, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !265, file: !91, line: 151, baseType: !94, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "te_cond_avtab", scope: !90, file: !91, line: 279, baseType: !218, size: 192, offset: 3072)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cond_list", scope: !90, file: !91, line: 281, baseType: !271, size: 64, offset: 3264)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cond_node", file: !273, line: 57, size: 448, elements: !274)
!273 = !DIFile(filename: "security/selinux/ss/conditional.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1569d54cf8cdfa98d98771ebcafca30c")
!274 = !{!275, !276, !286, !291}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "cur_state", scope: !272, file: !273, line: 58, baseType: !94, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !272, file: !273, line: 59, baseType: !277, size: 128, offset: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cond_expr", file: !273, line: 35, size: 128, elements: !278)
!278 = !{!279, !285}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !277, file: !273, line: 36, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cond_expr_node", file: !273, line: 22, size: 64, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "expr_type", scope: !281, file: !273, line: 31, baseType: !69, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !281, file: !273, line: 32, baseType: !69, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !277, file: !273, line: 37, baseType: !69, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "true_list", scope: !272, file: !273, line: 60, baseType: !287, size: 128, offset: 192)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cond_av_list", file: !273, line: 45, size: 128, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !287, file: !273, line: 46, baseType: !222, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !287, file: !273, line: 47, baseType: !69, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "false_list", scope: !272, file: !273, line: 61, baseType: !287, size: 128, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "cond_list_len", scope: !90, file: !91, line: 282, baseType: !69, size: 32, offset: 3328)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "role_allow", scope: !90, file: !91, line: 285, baseType: !294, size: 64, offset: 3392)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "role_allow", file: !91, line: 106, size: 128, elements: !296)
!296 = !{!297, !298, !299}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !295, file: !91, line: 107, baseType: !69, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "new_role", scope: !295, file: !91, line: 108, baseType: !69, size: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !91, line: 109, baseType: !294, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ocontexts", scope: !90, file: !91, line: 289, baseType: !301, size: 576, offset: 3456)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 576, elements: !361)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ocontext", file: !91, line: 174, size: 1600, elements: !304)
!304 = !{!305, !342, !347, !358, !360}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !303, file: !91, line: 199, baseType: !306, size: 256)
!306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !91, line: 175, size: 256, elements: !307)
!307 = !{!308, !309, !315, !320, !328, !337}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !91, line: 176, baseType: !120, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !306, file: !91, line: 181, baseType: !310, size: 48)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !91, line: 177, size: 48, elements: !311)
!311 = !{!312, !313, !314}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !310, file: !91, line: 178, baseType: !245, size: 8)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "low_port", scope: !310, file: !91, line: 179, baseType: !72, size: 16, offset: 16)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "high_port", scope: !310, file: !91, line: 180, baseType: !72, size: 16, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !306, file: !91, line: 185, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !91, line: 182, size: 64, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !316, file: !91, line: 183, baseType: !69, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !316, file: !91, line: 184, baseType: !69, size: 32, offset: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "node6", scope: !306, file: !91, line: 189, baseType: !321, size: 256)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !91, line: 186, size: 256, elements: !322)
!322 = !{!323, !327}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !321, file: !91, line: 187, baseType: !324, size: 128)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 4)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !321, file: !91, line: 188, baseType: !324, size: 128, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ibpkey", scope: !306, file: !91, line: 194, baseType: !329, size: 128)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !91, line: 190, size: 128, elements: !330)
!330 = !{!331, !335, !336}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "subnet_prefix", scope: !329, file: !91, line: 191, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !70, line: 23, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !66, line: 31, baseType: !334)
!334 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "low_pkey", scope: !329, file: !91, line: 192, baseType: !72, size: 16, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "high_pkey", scope: !329, file: !91, line: 193, baseType: !72, size: 16, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ibendport", scope: !306, file: !91, line: 198, baseType: !338, size: 128)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !91, line: 195, size: 128, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !338, file: !91, line: 196, baseType: !120, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !338, file: !91, line: 197, baseType: !245, size: 8, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !303, file: !91, line: 203, baseType: !343, size: 32, offset: 256)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !91, line: 200, size: 32, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "sclass", scope: !343, file: !91, line: 201, baseType: !69, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "behavior", scope: !343, file: !91, line: 202, baseType: !69, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !303, file: !91, line: 204, baseType: !348, size: 1152, offset: 320)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 1152, elements: !204)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "context", file: !350, line: 27, size: 576, elements: !351)
!350 = !DIFile(filename: "security/selinux/ss/context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da62b4bf5ddec43330086032ebb96414")
!351 = !{!352, !353, !354, !355, !356, !357}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !349, file: !350, line: 28, baseType: !69, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !349, file: !350, line: 29, baseType: !69, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !349, file: !350, line: 30, baseType: !69, size: 32, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !349, file: !350, line: 31, baseType: !69, size: 32, offset: 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !349, file: !350, line: 32, baseType: !195, size: 384, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !349, file: !350, line: 33, baseType: !120, size: 64, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "sid", scope: !303, file: !91, line: 205, baseType: !359, size: 64, offset: 1472)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !204)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !91, line: 206, baseType: !302, size: 64, offset: 1536)
!361 = !{!362}
!362 = !DISubrange(count: 9)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "genfs", scope: !90, file: !91, line: 294, baseType: !364, size: 64, offset: 4032)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genfs", file: !91, line: 209, size: 192, elements: !366)
!366 = !{!367, !368, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "fstype", scope: !365, file: !91, line: 210, baseType: !120, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !365, file: !91, line: 211, baseType: !302, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !91, line: 212, baseType: !364, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "range_tr", scope: !90, file: !91, line: 297, baseType: !101, size: 128, offset: 4096)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "type_attr_map_array", scope: !90, file: !91, line: 300, baseType: !372, size: 64, offset: 4224)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "policycaps", scope: !90, file: !91, line: 302, baseType: !149, size: 128, offset: 4288)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "permissive_map", scope: !90, file: !91, line: 304, baseType: !149, size: 128, offset: 4416)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !90, file: !91, line: 307, baseType: !376, size: 64, offset: 4544)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 61, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !378, line: 72, baseType: !379)
!378 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !378, line: 16, baseType: !75)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "policyvers", scope: !90, file: !91, line: 309, baseType: !49, size: 32, offset: 4608)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "reject_unknown", scope: !90, file: !91, line: 311, baseType: !49, size: 1, offset: 4640, flags: DIFlagBitField, extraData: i64 4640)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "allow_unknown", scope: !90, file: !91, line: 312, baseType: !49, size: 1, offset: 4641, flags: DIFlagBitField, extraData: i64 4640)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "process_class", scope: !90, file: !91, line: 314, baseType: !72, size: 16, offset: 4656)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "process_trans_perms", scope: !90, file: !91, line: 315, baseType: !69, size: 32, offset: 4672)
!385 = !{!386, !387}
!386 = !DILocalVariable(name: "p", arg: 1, scope: !86, file: !2, line: 123, type: !89)
!387 = !DILocalVariable(name: "i", scope: !86, file: !2, line: 125, type: !69)
!388 = !DILocation(line: 123, column: 43, scope: !86)
!389 = !DILocation(line: 125, column: 2, scope: !86)
!390 = !DILocation(line: 125, column: 6, scope: !86)
!391 = !DILocation(line: 127, column: 9, scope: !392)
!392 = distinct !DILexicalBlock(scope: !86, file: !2, line: 127, column: 2)
!393 = !DILocation(line: 127, column: 7, scope: !392)
!394 = !DILocation(line: 127, column: 14, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !2, line: 127, column: 2)
!396 = !DILocation(line: 127, column: 18, scope: !395)
!397 = !DILocation(line: 127, column: 21, scope: !395)
!398 = !DILocation(line: 127, column: 16, scope: !395)
!399 = !DILocation(line: 127, column: 2, scope: !392)
!400 = !DILocation(line: 128, column: 22, scope: !395)
!401 = !DILocation(line: 128, column: 26, scope: !395)
!402 = !DILocation(line: 128, column: 29, scope: !395)
!403 = !DILocation(line: 128, column: 39, scope: !395)
!404 = !DILocation(line: 128, column: 3, scope: !395)
!405 = !DILocation(line: 127, column: 37, scope: !395)
!406 = !DILocation(line: 127, column: 2, scope: !395)
!407 = distinct !{!407, !399, !408, !409, !410}
!408 = !DILocation(line: 128, column: 41, scope: !392)
!409 = !{!"llvm.loop.mustprogress"}
!410 = !{!"llvm.loop.unroll.disable"}
!411 = !DILocation(line: 129, column: 1, scope: !86)
!412 = distinct !DISubprogram(name: "evaluate_cond_node", scope: !2, file: !2, line: 92, type: !413, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !415)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !89, !271}
!415 = !{!416, !417, !418, !419, !420}
!416 = !DILocalVariable(name: "p", arg: 1, scope: !412, file: !2, line: 92, type: !89)
!417 = !DILocalVariable(name: "node", arg: 2, scope: !412, file: !2, line: 92, type: !271)
!418 = !DILocalVariable(name: "avnode", scope: !412, file: !2, line: 94, type: !223)
!419 = !DILocalVariable(name: "new_state", scope: !412, file: !2, line: 95, type: !94)
!420 = !DILocalVariable(name: "i", scope: !412, file: !2, line: 96, type: !69)
!421 = !DILocation(line: 92, column: 49, scope: !412)
!422 = !DILocation(line: 92, column: 70, scope: !412)
!423 = !DILocation(line: 94, column: 2, scope: !412)
!424 = !DILocation(line: 94, column: 21, scope: !412)
!425 = !DILocation(line: 95, column: 2, scope: !412)
!426 = !DILocation(line: 95, column: 6, scope: !412)
!427 = !DILocation(line: 96, column: 2, scope: !412)
!428 = !DILocation(line: 96, column: 6, scope: !412)
!429 = !DILocation(line: 98, column: 33, scope: !412)
!430 = !DILocation(line: 98, column: 37, scope: !412)
!431 = !DILocation(line: 98, column: 43, scope: !412)
!432 = !DILocation(line: 98, column: 14, scope: !412)
!433 = !DILocation(line: 98, column: 12, scope: !412)
!434 = !DILocation(line: 99, column: 6, scope: !435)
!435 = distinct !DILexicalBlock(scope: !412, file: !2, line: 99, column: 6)
!436 = !DILocation(line: 99, column: 19, scope: !435)
!437 = !DILocation(line: 99, column: 25, scope: !435)
!438 = !DILocation(line: 99, column: 16, scope: !435)
!439 = !DILocation(line: 99, column: 6, scope: !412)
!440 = !DILocation(line: 100, column: 21, scope: !441)
!441 = distinct !DILexicalBlock(scope: !435, file: !2, line: 99, column: 36)
!442 = !DILocation(line: 100, column: 3, scope: !441)
!443 = !DILocation(line: 100, column: 9, scope: !441)
!444 = !DILocation(line: 100, column: 19, scope: !441)
!445 = !DILocation(line: 101, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !441, file: !2, line: 101, column: 7)
!447 = !DILocation(line: 101, column: 17, scope: !446)
!448 = !DILocation(line: 101, column: 7, scope: !441)
!449 = !DILocation(line: 102, column: 4, scope: !450)
!450 = distinct !DILexicalBlock(scope: !446, file: !2, line: 102, column: 4)
!451 = !DILocation(line: 102, column: 4, scope: !452)
!452 = distinct !DILexicalBlock(scope: !450, file: !2, line: 102, column: 4)
!453 = !DILocation(line: 102, column: 4, scope: !446)
!454 = !DILocation(line: 104, column: 10, scope: !455)
!455 = distinct !DILexicalBlock(scope: !441, file: !2, line: 104, column: 3)
!456 = !DILocation(line: 104, column: 8, scope: !455)
!457 = !DILocation(line: 104, column: 15, scope: !458)
!458 = distinct !DILexicalBlock(scope: !455, file: !2, line: 104, column: 3)
!459 = !DILocation(line: 104, column: 19, scope: !458)
!460 = !DILocation(line: 104, column: 25, scope: !458)
!461 = !DILocation(line: 104, column: 35, scope: !458)
!462 = !DILocation(line: 104, column: 17, scope: !458)
!463 = !DILocation(line: 104, column: 3, scope: !455)
!464 = !DILocation(line: 105, column: 13, scope: !465)
!465 = distinct !DILexicalBlock(scope: !458, file: !2, line: 104, column: 45)
!466 = !DILocation(line: 105, column: 19, scope: !465)
!467 = !DILocation(line: 105, column: 29, scope: !465)
!468 = !DILocation(line: 105, column: 35, scope: !465)
!469 = !DILocation(line: 105, column: 11, scope: !465)
!470 = !DILocation(line: 106, column: 8, scope: !471)
!471 = distinct !DILexicalBlock(scope: !465, file: !2, line: 106, column: 8)
!472 = !DILocation(line: 106, column: 18, scope: !471)
!473 = !DILocation(line: 106, column: 8, scope: !465)
!474 = !DILocation(line: 107, column: 5, scope: !471)
!475 = !DILocation(line: 107, column: 13, scope: !471)
!476 = !DILocation(line: 107, column: 17, scope: !471)
!477 = !DILocation(line: 107, column: 27, scope: !471)
!478 = !DILocation(line: 109, column: 5, scope: !471)
!479 = !DILocation(line: 109, column: 13, scope: !471)
!480 = !DILocation(line: 109, column: 17, scope: !471)
!481 = !DILocation(line: 109, column: 27, scope: !471)
!482 = !DILocation(line: 110, column: 3, scope: !465)
!483 = !DILocation(line: 104, column: 41, scope: !458)
!484 = !DILocation(line: 104, column: 3, scope: !458)
!485 = distinct !{!485, !463, !486, !409, !410}
!486 = !DILocation(line: 110, column: 3, scope: !455)
!487 = !DILocation(line: 112, column: 10, scope: !488)
!488 = distinct !DILexicalBlock(scope: !441, file: !2, line: 112, column: 3)
!489 = !DILocation(line: 112, column: 8, scope: !488)
!490 = !DILocation(line: 112, column: 15, scope: !491)
!491 = distinct !DILexicalBlock(scope: !488, file: !2, line: 112, column: 3)
!492 = !DILocation(line: 112, column: 19, scope: !491)
!493 = !DILocation(line: 112, column: 25, scope: !491)
!494 = !DILocation(line: 112, column: 36, scope: !491)
!495 = !DILocation(line: 112, column: 17, scope: !491)
!496 = !DILocation(line: 112, column: 3, scope: !488)
!497 = !DILocation(line: 113, column: 13, scope: !498)
!498 = distinct !DILexicalBlock(scope: !491, file: !2, line: 112, column: 46)
!499 = !DILocation(line: 113, column: 19, scope: !498)
!500 = !DILocation(line: 113, column: 30, scope: !498)
!501 = !DILocation(line: 113, column: 36, scope: !498)
!502 = !DILocation(line: 113, column: 11, scope: !498)
!503 = !DILocation(line: 115, column: 8, scope: !504)
!504 = distinct !DILexicalBlock(scope: !498, file: !2, line: 115, column: 8)
!505 = !DILocation(line: 115, column: 8, scope: !498)
!506 = !DILocation(line: 116, column: 5, scope: !504)
!507 = !DILocation(line: 116, column: 13, scope: !504)
!508 = !DILocation(line: 116, column: 17, scope: !504)
!509 = !DILocation(line: 116, column: 27, scope: !504)
!510 = !DILocation(line: 118, column: 5, scope: !504)
!511 = !DILocation(line: 118, column: 13, scope: !504)
!512 = !DILocation(line: 118, column: 17, scope: !504)
!513 = !DILocation(line: 118, column: 27, scope: !504)
!514 = !DILocation(line: 119, column: 3, scope: !498)
!515 = !DILocation(line: 112, column: 42, scope: !491)
!516 = !DILocation(line: 112, column: 3, scope: !491)
!517 = distinct !{!517, !496, !518, !409, !410}
!518 = !DILocation(line: 119, column: 3, scope: !488)
!519 = !DILocation(line: 120, column: 2, scope: !441)
!520 = !DILocation(line: 121, column: 1, scope: !412)
!521 = distinct !DISubprogram(name: "cond_policydb_init", scope: !2, file: !2, line: 131, type: !87, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !522)
!522 = !{!523}
!523 = !DILocalVariable(name: "p", arg: 1, scope: !521, file: !2, line: 131, type: !89)
!524 = !DILocation(line: 131, column: 42, scope: !521)
!525 = !DILocation(line: 133, column: 2, scope: !521)
!526 = !DILocation(line: 133, column: 5, scope: !521)
!527 = !DILocation(line: 133, column: 24, scope: !521)
!528 = !DILocation(line: 134, column: 2, scope: !521)
!529 = !DILocation(line: 134, column: 5, scope: !521)
!530 = !DILocation(line: 134, column: 15, scope: !521)
!531 = !DILocation(line: 135, column: 2, scope: !521)
!532 = !DILocation(line: 135, column: 5, scope: !521)
!533 = !DILocation(line: 135, column: 19, scope: !521)
!534 = !DILocation(line: 137, column: 14, scope: !521)
!535 = !DILocation(line: 137, column: 17, scope: !521)
!536 = !DILocation(line: 137, column: 2, scope: !521)
!537 = !DILocation(line: 138, column: 1, scope: !521)
!538 = !DISubprogram(name: "avtab_init", scope: !219, file: !219, line: 90, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!542 = distinct !DISubprogram(name: "cond_policydb_destroy", scope: !2, file: !2, line: 159, type: !87, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !543)
!543 = !{!544}
!544 = !DILocalVariable(name: "p", arg: 1, scope: !542, file: !2, line: 159, type: !89)
!545 = !DILocation(line: 159, column: 45, scope: !542)
!546 = !DILocation(line: 161, column: 8, scope: !542)
!547 = !DILocation(line: 161, column: 11, scope: !542)
!548 = !DILocation(line: 161, column: 2, scope: !542)
!549 = !DILocation(line: 162, column: 17, scope: !542)
!550 = !DILocation(line: 162, column: 20, scope: !542)
!551 = !DILocation(line: 162, column: 2, scope: !542)
!552 = !DILocation(line: 163, column: 20, scope: !542)
!553 = !DILocation(line: 163, column: 2, scope: !542)
!554 = !DILocation(line: 164, column: 1, scope: !542)
!555 = !DISubprogram(name: "kfree", scope: !9, file: !9, line: 227, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !558}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!560 = !DISubprogram(name: "avtab_destroy", scope: !219, file: !219, line: 93, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = distinct !DISubprogram(name: "cond_list_destroy", scope: !2, file: !2, line: 148, type: !87, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !562)
!562 = !{!563, !564}
!563 = !DILocalVariable(name: "p", arg: 1, scope: !561, file: !2, line: 148, type: !89)
!564 = !DILocalVariable(name: "i", scope: !561, file: !2, line: 150, type: !69)
!565 = !DILocation(line: 148, column: 48, scope: !561)
!566 = !DILocation(line: 150, column: 2, scope: !561)
!567 = !DILocation(line: 150, column: 6, scope: !561)
!568 = !DILocation(line: 152, column: 9, scope: !569)
!569 = distinct !DILexicalBlock(scope: !561, file: !2, line: 152, column: 2)
!570 = !DILocation(line: 152, column: 7, scope: !569)
!571 = !DILocation(line: 152, column: 14, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !2, line: 152, column: 2)
!573 = !DILocation(line: 152, column: 18, scope: !572)
!574 = !DILocation(line: 152, column: 21, scope: !572)
!575 = !DILocation(line: 152, column: 16, scope: !572)
!576 = !DILocation(line: 152, column: 2, scope: !569)
!577 = !DILocation(line: 153, column: 22, scope: !572)
!578 = !DILocation(line: 153, column: 25, scope: !572)
!579 = !DILocation(line: 153, column: 35, scope: !572)
!580 = !DILocation(line: 153, column: 3, scope: !572)
!581 = !DILocation(line: 152, column: 37, scope: !572)
!582 = !DILocation(line: 152, column: 2, scope: !572)
!583 = distinct !{!583, !576, !584, !409, !410}
!584 = !DILocation(line: 153, column: 37, scope: !569)
!585 = !DILocation(line: 154, column: 8, scope: !561)
!586 = !DILocation(line: 154, column: 11, scope: !561)
!587 = !DILocation(line: 154, column: 2, scope: !561)
!588 = !DILocation(line: 155, column: 2, scope: !561)
!589 = !DILocation(line: 155, column: 5, scope: !561)
!590 = !DILocation(line: 155, column: 15, scope: !561)
!591 = !DILocation(line: 156, column: 2, scope: !561)
!592 = !DILocation(line: 156, column: 5, scope: !561)
!593 = !DILocation(line: 156, column: 19, scope: !561)
!594 = !DILocation(line: 157, column: 1, scope: !561)
!595 = distinct !DISubprogram(name: "cond_init_bool_indexes", scope: !2, file: !2, line: 166, type: !596, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!94, !89}
!598 = !{!599}
!599 = !DILocalVariable(name: "p", arg: 1, scope: !595, file: !2, line: 166, type: !89)
!600 = !DILocation(line: 166, column: 45, scope: !595)
!601 = !DILocation(line: 168, column: 8, scope: !595)
!602 = !DILocation(line: 168, column: 11, scope: !595)
!603 = !DILocation(line: 168, column: 2, scope: !595)
!604 = !DILocation(line: 169, column: 40, scope: !595)
!605 = !DILocation(line: 169, column: 43, scope: !595)
!606 = !DILocation(line: 169, column: 51, scope: !595)
!607 = !DILocation(line: 169, column: 26, scope: !595)
!608 = !DILocation(line: 169, column: 2, scope: !595)
!609 = !DILocation(line: 169, column: 5, scope: !595)
!610 = !DILocation(line: 169, column: 24, scope: !595)
!611 = !DILocation(line: 172, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !595, file: !2, line: 172, column: 6)
!613 = !DILocation(line: 172, column: 10, scope: !612)
!614 = !DILocation(line: 172, column: 6, scope: !595)
!615 = !DILocation(line: 173, column: 3, scope: !612)
!616 = !DILocation(line: 174, column: 2, scope: !595)
!617 = !DILocation(line: 175, column: 1, scope: !595)
!618 = distinct !DISubprogram(name: "kmalloc_array", scope: !9, file: !9, line: 629, type: !619, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !621)
!619 = !DISubroutineType(types: !620)
!620 = !{!71, !376, !376, !63}
!621 = !{!622, !623, !624, !625}
!622 = !DILocalVariable(name: "n", arg: 1, scope: !618, file: !9, line: 629, type: !376)
!623 = !DILocalVariable(name: "size", arg: 2, scope: !618, file: !9, line: 629, type: !376)
!624 = !DILocalVariable(name: "flags", arg: 3, scope: !618, file: !9, line: 629, type: !63)
!625 = !DILocalVariable(name: "bytes", scope: !618, file: !9, line: 631, type: !376)
!626 = !DILocation(line: 629, column: 61, scope: !618)
!627 = !DILocation(line: 629, column: 71, scope: !618)
!628 = !DILocation(line: 629, column: 83, scope: !618)
!629 = !DILocation(line: 631, column: 2, scope: !618)
!630 = !DILocation(line: 631, column: 9, scope: !618)
!631 = !DILocation(line: 633, column: 6, scope: !632)
!632 = distinct !DILexicalBlock(scope: !618, file: !9, line: 633, column: 6)
!633 = !DILocation(line: 633, column: 6, scope: !618)
!634 = !DILocation(line: 634, column: 3, scope: !632)
!635 = !DILocation(line: 635, column: 27, scope: !636)
!636 = distinct !DILexicalBlock(scope: !618, file: !9, line: 635, column: 6)
!637 = !DILocation(line: 635, column: 6, scope: !636)
!638 = !DILocation(line: 635, column: 30, scope: !636)
!639 = !DILocation(line: 635, column: 54, scope: !636)
!640 = !DILocation(line: 635, column: 33, scope: !636)
!641 = !DILocation(line: 635, column: 6, scope: !618)
!642 = !DILocation(line: 636, column: 18, scope: !636)
!643 = !DILocation(line: 636, column: 25, scope: !636)
!644 = !DILocation(line: 636, column: 10, scope: !636)
!645 = !DILocation(line: 636, column: 3, scope: !636)
!646 = !DILocation(line: 637, column: 19, scope: !618)
!647 = !DILocation(line: 637, column: 26, scope: !618)
!648 = !DILocation(line: 637, column: 9, scope: !618)
!649 = !DILocation(line: 637, column: 2, scope: !618)
!650 = !DILocation(line: 638, column: 1, scope: !618)
!651 = distinct !DISubprogram(name: "cond_destroy_bool", scope: !2, file: !2, line: 177, type: !652, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{!94, !71, !71, !71}
!654 = !{!655, !656, !657}
!655 = !DILocalVariable(name: "key", arg: 1, scope: !651, file: !2, line: 177, type: !71)
!656 = !DILocalVariable(name: "datum", arg: 2, scope: !651, file: !2, line: 177, type: !71)
!657 = !DILocalVariable(name: "p", arg: 3, scope: !651, file: !2, line: 177, type: !71)
!658 = !DILocation(line: 177, column: 29, scope: !651)
!659 = !DILocation(line: 177, column: 40, scope: !651)
!660 = !DILocation(line: 177, column: 53, scope: !651)
!661 = !DILocation(line: 179, column: 8, scope: !651)
!662 = !DILocation(line: 179, column: 2, scope: !651)
!663 = !DILocation(line: 180, column: 8, scope: !651)
!664 = !DILocation(line: 180, column: 2, scope: !651)
!665 = !DILocation(line: 181, column: 2, scope: !651)
!666 = distinct !DISubprogram(name: "cond_index_bool", scope: !2, file: !2, line: 184, type: !652, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !667)
!667 = !{!668, !669, !670, !671, !672}
!668 = !DILocalVariable(name: "key", arg: 1, scope: !666, file: !2, line: 184, type: !71)
!669 = !DILocalVariable(name: "datum", arg: 2, scope: !666, file: !2, line: 184, type: !71)
!670 = !DILocalVariable(name: "datap", arg: 3, scope: !666, file: !2, line: 184, type: !71)
!671 = !DILocalVariable(name: "p", scope: !666, file: !2, line: 186, type: !89)
!672 = !DILocalVariable(name: "booldatum", scope: !666, file: !2, line: 187, type: !264)
!673 = !DILocation(line: 184, column: 27, scope: !666)
!674 = !DILocation(line: 184, column: 38, scope: !666)
!675 = !DILocation(line: 184, column: 51, scope: !666)
!676 = !DILocation(line: 186, column: 2, scope: !666)
!677 = !DILocation(line: 186, column: 19, scope: !666)
!678 = !DILocation(line: 187, column: 2, scope: !666)
!679 = !DILocation(line: 187, column: 26, scope: !666)
!680 = !DILocation(line: 189, column: 14, scope: !666)
!681 = !DILocation(line: 189, column: 12, scope: !666)
!682 = !DILocation(line: 190, column: 6, scope: !666)
!683 = !DILocation(line: 190, column: 4, scope: !666)
!684 = !DILocation(line: 192, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !666, file: !2, line: 192, column: 6)
!686 = !DILocation(line: 192, column: 18, scope: !685)
!687 = !DILocation(line: 192, column: 24, scope: !685)
!688 = !DILocation(line: 192, column: 27, scope: !685)
!689 = !DILocation(line: 192, column: 38, scope: !685)
!690 = !DILocation(line: 192, column: 46, scope: !685)
!691 = !DILocation(line: 192, column: 49, scope: !685)
!692 = !DILocation(line: 192, column: 57, scope: !685)
!693 = !DILocation(line: 192, column: 44, scope: !685)
!694 = !DILocation(line: 192, column: 6, scope: !666)
!695 = !DILocation(line: 193, column: 3, scope: !685)
!696 = !DILocation(line: 195, column: 56, scope: !666)
!697 = !DILocation(line: 195, column: 2, scope: !666)
!698 = !DILocation(line: 195, column: 5, scope: !666)
!699 = !DILocation(line: 195, column: 32, scope: !666)
!700 = !DILocation(line: 195, column: 43, scope: !666)
!701 = !DILocation(line: 195, column: 49, scope: !666)
!702 = !DILocation(line: 195, column: 54, scope: !666)
!703 = !DILocation(line: 196, column: 48, scope: !666)
!704 = !DILocation(line: 196, column: 2, scope: !666)
!705 = !DILocation(line: 196, column: 5, scope: !666)
!706 = !DILocation(line: 196, column: 24, scope: !666)
!707 = !DILocation(line: 196, column: 35, scope: !666)
!708 = !DILocation(line: 196, column: 41, scope: !666)
!709 = !DILocation(line: 196, column: 46, scope: !666)
!710 = !DILocation(line: 198, column: 2, scope: !666)
!711 = !DILocation(line: 199, column: 1, scope: !666)
!712 = distinct !DISubprogram(name: "cond_read_bool", scope: !2, file: !2, line: 208, type: !713, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !716)
!713 = !DISubroutineType(types: !714)
!714 = !{!94, !89, !715, !71}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!716 = !{!717, !718, !719, !720, !721, !722, !726, !727, !728}
!717 = !DILocalVariable(name: "p", arg: 1, scope: !712, file: !2, line: 208, type: !89)
!718 = !DILocalVariable(name: "s", arg: 2, scope: !712, file: !2, line: 208, type: !715)
!719 = !DILocalVariable(name: "fp", arg: 3, scope: !712, file: !2, line: 208, type: !71)
!720 = !DILocalVariable(name: "key", scope: !712, file: !2, line: 210, type: !120)
!721 = !DILocalVariable(name: "booldatum", scope: !712, file: !2, line: 211, type: !264)
!722 = !DILocalVariable(name: "buf", scope: !712, file: !2, line: 212, type: !723)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 96, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 3)
!726 = !DILocalVariable(name: "len", scope: !712, file: !2, line: 213, type: !69)
!727 = !DILocalVariable(name: "rc", scope: !712, file: !2, line: 214, type: !94)
!728 = !DILabel(scope: !712, name: "err", file: !2, line: 248)
!729 = !DILocation(line: 208, column: 37, scope: !712)
!730 = !DILocation(line: 208, column: 55, scope: !712)
!731 = !DILocation(line: 208, column: 64, scope: !712)
!732 = !DILocation(line: 210, column: 2, scope: !712)
!733 = !DILocation(line: 210, column: 8, scope: !712)
!734 = !DILocation(line: 211, column: 2, scope: !712)
!735 = !DILocation(line: 211, column: 26, scope: !712)
!736 = !DILocation(line: 212, column: 2, scope: !712)
!737 = !DILocation(line: 212, column: 9, scope: !712)
!738 = !DILocation(line: 213, column: 2, scope: !712)
!739 = !DILocation(line: 213, column: 6, scope: !712)
!740 = !DILocation(line: 214, column: 2, scope: !712)
!741 = !DILocation(line: 214, column: 6, scope: !712)
!742 = !DILocation(line: 216, column: 14, scope: !712)
!743 = !DILocation(line: 216, column: 12, scope: !712)
!744 = !DILocation(line: 217, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !712, file: !2, line: 217, column: 6)
!746 = !DILocation(line: 217, column: 6, scope: !712)
!747 = !DILocation(line: 218, column: 3, scope: !745)
!748 = !DILocation(line: 220, column: 18, scope: !712)
!749 = !DILocation(line: 220, column: 23, scope: !712)
!750 = !DILocation(line: 220, column: 7, scope: !712)
!751 = !DILocation(line: 220, column: 5, scope: !712)
!752 = !DILocation(line: 221, column: 6, scope: !753)
!753 = distinct !DILexicalBlock(scope: !712, file: !2, line: 221, column: 6)
!754 = !DILocation(line: 221, column: 6, scope: !712)
!755 = !DILocation(line: 222, column: 3, scope: !753)
!756 = !DILocation(line: 224, column: 21, scope: !712)
!757 = !DILocation(line: 224, column: 2, scope: !712)
!758 = !DILocation(line: 224, column: 13, scope: !712)
!759 = !DILocation(line: 224, column: 19, scope: !712)
!760 = !DILocation(line: 225, column: 21, scope: !712)
!761 = !DILocation(line: 225, column: 2, scope: !712)
!762 = !DILocation(line: 225, column: 13, scope: !712)
!763 = !DILocation(line: 225, column: 19, scope: !712)
!764 = !DILocation(line: 227, column: 5, scope: !712)
!765 = !DILocation(line: 228, column: 20, scope: !766)
!766 = distinct !DILexicalBlock(scope: !712, file: !2, line: 228, column: 6)
!767 = !DILocation(line: 228, column: 7, scope: !766)
!768 = !DILocation(line: 228, column: 6, scope: !712)
!769 = !DILocation(line: 229, column: 3, scope: !766)
!770 = !DILocation(line: 231, column: 8, scope: !712)
!771 = !DILocation(line: 231, column: 6, scope: !712)
!772 = !DILocation(line: 232, column: 8, scope: !773)
!773 = distinct !DILexicalBlock(scope: !712, file: !2, line: 232, column: 6)
!774 = !DILocation(line: 232, column: 12, scope: !773)
!775 = !DILocation(line: 232, column: 18, scope: !773)
!776 = !DILocation(line: 232, column: 22, scope: !773)
!777 = !DILocation(line: 232, column: 26, scope: !773)
!778 = !DILocation(line: 232, column: 6, scope: !712)
!779 = !DILocation(line: 233, column: 3, scope: !773)
!780 = !DILocation(line: 235, column: 5, scope: !712)
!781 = !DILocation(line: 236, column: 16, scope: !712)
!782 = !DILocation(line: 236, column: 20, scope: !712)
!783 = !DILocation(line: 236, column: 8, scope: !712)
!784 = !DILocation(line: 236, column: 6, scope: !712)
!785 = !DILocation(line: 237, column: 7, scope: !786)
!786 = distinct !DILexicalBlock(scope: !712, file: !2, line: 237, column: 6)
!787 = !DILocation(line: 237, column: 6, scope: !712)
!788 = !DILocation(line: 238, column: 3, scope: !786)
!789 = !DILocation(line: 239, column: 18, scope: !712)
!790 = !DILocation(line: 239, column: 23, scope: !712)
!791 = !DILocation(line: 239, column: 27, scope: !712)
!792 = !DILocation(line: 239, column: 7, scope: !712)
!793 = !DILocation(line: 239, column: 5, scope: !712)
!794 = !DILocation(line: 240, column: 6, scope: !795)
!795 = distinct !DILexicalBlock(scope: !712, file: !2, line: 240, column: 6)
!796 = !DILocation(line: 240, column: 6, scope: !712)
!797 = !DILocation(line: 241, column: 3, scope: !795)
!798 = !DILocation(line: 242, column: 2, scope: !712)
!799 = !DILocation(line: 242, column: 6, scope: !712)
!800 = !DILocation(line: 242, column: 11, scope: !712)
!801 = !DILocation(line: 243, column: 21, scope: !712)
!802 = !DILocation(line: 243, column: 24, scope: !712)
!803 = !DILocation(line: 243, column: 29, scope: !712)
!804 = !DILocation(line: 243, column: 7, scope: !712)
!805 = !DILocation(line: 243, column: 5, scope: !712)
!806 = !DILocation(line: 244, column: 6, scope: !807)
!807 = distinct !DILexicalBlock(scope: !712, file: !2, line: 244, column: 6)
!808 = !DILocation(line: 244, column: 6, scope: !712)
!809 = !DILocation(line: 245, column: 3, scope: !807)
!810 = !DILocation(line: 247, column: 2, scope: !712)
!811 = !DILocation(line: 248, column: 1, scope: !712)
!812 = !DILocation(line: 249, column: 20, scope: !712)
!813 = !DILocation(line: 249, column: 25, scope: !712)
!814 = !DILocation(line: 249, column: 2, scope: !712)
!815 = !DILocation(line: 250, column: 9, scope: !712)
!816 = !DILocation(line: 250, column: 2, scope: !712)
!817 = !DILocation(line: 251, column: 1, scope: !712)
!818 = distinct !DISubprogram(name: "kzalloc", scope: !9, file: !9, line: 719, type: !819, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{!71, !376, !63}
!821 = !{!822, !823}
!822 = !DILocalVariable(name: "size", arg: 1, scope: !818, file: !9, line: 719, type: !376)
!823 = !DILocalVariable(name: "flags", arg: 2, scope: !818, file: !9, line: 719, type: !63)
!824 = !DILocation(line: 719, column: 52, scope: !818)
!825 = !DILocation(line: 719, column: 64, scope: !818)
!826 = !DILocation(line: 721, column: 17, scope: !818)
!827 = !DILocation(line: 721, column: 23, scope: !818)
!828 = !DILocation(line: 721, column: 29, scope: !818)
!829 = !DILocation(line: 721, column: 9, scope: !818)
!830 = !DILocation(line: 721, column: 2, scope: !818)
!831 = distinct !DISubprogram(name: "next_entry", scope: !91, file: !91, line: 358, type: !832, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !839)
!832 = !DISubroutineType(types: !833)
!833 = !{!94, !71, !834, !376}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "policy_file", file: !91, line: 348, size: 128, elements: !836)
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !835, file: !91, line: 349, baseType: !120, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !835, file: !91, line: 350, baseType: !376, size: 64, offset: 64)
!839 = !{!840, !841, !842}
!840 = !DILocalVariable(name: "buf", arg: 1, scope: !831, file: !91, line: 358, type: !71)
!841 = !DILocalVariable(name: "fp", arg: 2, scope: !831, file: !91, line: 358, type: !834)
!842 = !DILocalVariable(name: "bytes", arg: 3, scope: !831, file: !91, line: 358, type: !376)
!843 = !DILocation(line: 358, column: 36, scope: !831)
!844 = !DILocation(line: 358, column: 61, scope: !831)
!845 = !DILocation(line: 358, column: 72, scope: !831)
!846 = !DILocation(line: 360, column: 6, scope: !847)
!847 = distinct !DILexicalBlock(scope: !831, file: !91, line: 360, column: 6)
!848 = !DILocation(line: 360, column: 14, scope: !847)
!849 = !DILocation(line: 360, column: 18, scope: !847)
!850 = !DILocation(line: 360, column: 12, scope: !847)
!851 = !DILocation(line: 360, column: 6, scope: !831)
!852 = !DILocation(line: 361, column: 3, scope: !847)
!853 = !DILocation(line: 363, column: 9, scope: !831)
!854 = !DILocation(line: 363, column: 14, scope: !831)
!855 = !DILocation(line: 363, column: 18, scope: !831)
!856 = !DILocation(line: 363, column: 24, scope: !831)
!857 = !DILocation(line: 363, column: 2, scope: !831)
!858 = !DILocation(line: 364, column: 14, scope: !831)
!859 = !DILocation(line: 364, column: 2, scope: !831)
!860 = !DILocation(line: 364, column: 6, scope: !831)
!861 = !DILocation(line: 364, column: 11, scope: !831)
!862 = !DILocation(line: 365, column: 13, scope: !831)
!863 = !DILocation(line: 365, column: 2, scope: !831)
!864 = !DILocation(line: 365, column: 6, scope: !831)
!865 = !DILocation(line: 365, column: 10, scope: !831)
!866 = !DILocation(line: 366, column: 2, scope: !831)
!867 = !DILocation(line: 367, column: 1, scope: !831)
!868 = distinct !DISubprogram(name: "bool_isvalid", scope: !2, file: !2, line: 201, type: !869, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{!94, !264}
!871 = !{!872}
!872 = !DILocalVariable(name: "b", arg: 1, scope: !868, file: !2, line: 201, type: !264)
!873 = !DILocation(line: 201, column: 49, scope: !868)
!874 = !DILocation(line: 203, column: 8, scope: !875)
!875 = distinct !DILexicalBlock(scope: !868, file: !2, line: 203, column: 6)
!876 = !DILocation(line: 203, column: 11, scope: !875)
!877 = !DILocation(line: 203, column: 17, scope: !875)
!878 = !DILocation(line: 203, column: 22, scope: !875)
!879 = !DILocation(line: 203, column: 25, scope: !875)
!880 = !DILocation(line: 203, column: 28, scope: !875)
!881 = !DILocation(line: 203, column: 34, scope: !875)
!882 = !DILocation(line: 203, column: 6, scope: !868)
!883 = !DILocation(line: 204, column: 3, scope: !875)
!884 = !DILocation(line: 205, column: 2, scope: !868)
!885 = !DILocation(line: 206, column: 1, scope: !868)
!886 = distinct !DISubprogram(name: "kmalloc", scope: !9, file: !9, line: 591, type: !819, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !887)
!887 = !{!888, !889, !890}
!888 = !DILocalVariable(name: "size", arg: 1, scope: !886, file: !9, line: 591, type: !376)
!889 = !DILocalVariable(name: "flags", arg: 2, scope: !886, file: !9, line: 591, type: !63)
!890 = !DILocalVariable(name: "index", scope: !891, file: !9, line: 594, type: !49)
!891 = distinct !DILexicalBlock(scope: !892, file: !9, line: 593, column: 42)
!892 = distinct !DILexicalBlock(scope: !886, file: !9, line: 593, column: 6)
!893 = !DILocation(line: 591, column: 61, scope: !886)
!894 = !DILocation(line: 591, column: 73, scope: !886)
!895 = !DILocation(line: 593, column: 27, scope: !892)
!896 = !DILocation(line: 593, column: 6, scope: !892)
!897 = !DILocation(line: 593, column: 33, scope: !892)
!898 = !DILocation(line: 593, column: 36, scope: !892)
!899 = !DILocation(line: 593, column: 6, scope: !886)
!900 = !DILocation(line: 594, column: 3, scope: !891)
!901 = !DILocation(line: 594, column: 16, scope: !891)
!902 = !DILocation(line: 596, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !891, file: !9, line: 596, column: 7)
!904 = !DILocation(line: 596, column: 12, scope: !903)
!905 = !DILocation(line: 596, column: 7, scope: !891)
!906 = !DILocation(line: 597, column: 25, scope: !903)
!907 = !DILocation(line: 597, column: 31, scope: !903)
!908 = !DILocation(line: 597, column: 11, scope: !903)
!909 = !DILocation(line: 597, column: 4, scope: !903)
!910 = !DILocation(line: 599, column: 11, scope: !891)
!911 = !DILocation(line: 599, column: 9, scope: !891)
!912 = !DILocation(line: 601, column: 33, scope: !891)
!913 = !DILocation(line: 601, column: 40, scope: !891)
!914 = !DILocation(line: 601, column: 20, scope: !891)
!915 = !DILocation(line: 601, column: 5, scope: !891)
!916 = !DILocation(line: 601, column: 51, scope: !891)
!917 = !DILocation(line: 602, column: 5, scope: !891)
!918 = !DILocation(line: 602, column: 12, scope: !891)
!919 = !DILocation(line: 600, column: 10, scope: !891)
!920 = !DILocation(line: 600, column: 3, scope: !891)
!921 = !DILocation(line: 603, column: 2, scope: !892)
!922 = !DILocation(line: 604, column: 19, scope: !886)
!923 = !DILocation(line: 604, column: 25, scope: !886)
!924 = !DILocation(line: 604, column: 9, scope: !886)
!925 = !DILocation(line: 604, column: 2, scope: !886)
!926 = !DILocation(line: 605, column: 1, scope: !886)
!927 = !DISubprogram(name: "symtab_insert", scope: !98, file: !98, line: 22, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!928 = !DISubroutineType(types: !929)
!929 = !{!94, !715, !120, !71}
!930 = distinct !DISubprogram(name: "cond_read_list", scope: !2, file: !2, line: 416, type: !931, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{!94, !89, !71}
!933 = !{!934, !935, !936, !940, !941, !942, !943}
!934 = !DILocalVariable(name: "p", arg: 1, scope: !930, file: !2, line: 416, type: !89)
!935 = !DILocalVariable(name: "fp", arg: 2, scope: !930, file: !2, line: 416, type: !71)
!936 = !DILocalVariable(name: "buf", scope: !930, file: !2, line: 418, type: !937)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 32, elements: !938)
!938 = !{!939}
!939 = !DISubrange(count: 1)
!940 = !DILocalVariable(name: "i", scope: !930, file: !2, line: 419, type: !69)
!941 = !DILocalVariable(name: "len", scope: !930, file: !2, line: 419, type: !69)
!942 = !DILocalVariable(name: "rc", scope: !930, file: !2, line: 420, type: !94)
!943 = !DILabel(scope: !930, name: "err", file: !2, line: 444)
!944 = !DILocation(line: 416, column: 37, scope: !930)
!945 = !DILocation(line: 416, column: 46, scope: !930)
!946 = !DILocation(line: 418, column: 2, scope: !930)
!947 = !DILocation(line: 418, column: 9, scope: !930)
!948 = !DILocation(line: 419, column: 2, scope: !930)
!949 = !DILocation(line: 419, column: 6, scope: !930)
!950 = !DILocation(line: 419, column: 9, scope: !930)
!951 = !DILocation(line: 420, column: 2, scope: !930)
!952 = !DILocation(line: 420, column: 6, scope: !930)
!953 = !DILocation(line: 422, column: 18, scope: !930)
!954 = !DILocation(line: 422, column: 23, scope: !930)
!955 = !DILocation(line: 422, column: 7, scope: !930)
!956 = !DILocation(line: 422, column: 5, scope: !930)
!957 = !DILocation(line: 423, column: 6, scope: !958)
!958 = distinct !DILexicalBlock(scope: !930, file: !2, line: 423, column: 6)
!959 = !DILocation(line: 423, column: 6, scope: !930)
!960 = !DILocation(line: 424, column: 10, scope: !958)
!961 = !DILocation(line: 424, column: 3, scope: !958)
!962 = !DILocation(line: 426, column: 8, scope: !930)
!963 = !DILocation(line: 426, column: 6, scope: !930)
!964 = !DILocation(line: 428, column: 25, scope: !930)
!965 = !DILocation(line: 428, column: 17, scope: !930)
!966 = !DILocation(line: 428, column: 2, scope: !930)
!967 = !DILocation(line: 428, column: 5, scope: !930)
!968 = !DILocation(line: 428, column: 15, scope: !930)
!969 = !DILocation(line: 429, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !930, file: !2, line: 429, column: 6)
!971 = !DILocation(line: 429, column: 10, scope: !970)
!972 = !DILocation(line: 429, column: 6, scope: !930)
!973 = !DILocation(line: 430, column: 3, scope: !970)
!974 = !DILocation(line: 432, column: 21, scope: !930)
!975 = !DILocation(line: 432, column: 24, scope: !930)
!976 = !DILocation(line: 432, column: 40, scope: !930)
!977 = !DILocation(line: 432, column: 43, scope: !930)
!978 = !DILocation(line: 432, column: 52, scope: !930)
!979 = !DILocation(line: 432, column: 7, scope: !930)
!980 = !DILocation(line: 432, column: 5, scope: !930)
!981 = !DILocation(line: 433, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !930, file: !2, line: 433, column: 6)
!983 = !DILocation(line: 433, column: 6, scope: !930)
!984 = !DILocation(line: 434, column: 3, scope: !982)
!985 = !DILocation(line: 436, column: 21, scope: !930)
!986 = !DILocation(line: 436, column: 2, scope: !930)
!987 = !DILocation(line: 436, column: 5, scope: !930)
!988 = !DILocation(line: 436, column: 19, scope: !930)
!989 = !DILocation(line: 438, column: 9, scope: !990)
!990 = distinct !DILexicalBlock(scope: !930, file: !2, line: 438, column: 2)
!991 = !DILocation(line: 438, column: 7, scope: !990)
!992 = !DILocation(line: 438, column: 14, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !2, line: 438, column: 2)
!994 = !DILocation(line: 438, column: 18, scope: !993)
!995 = !DILocation(line: 438, column: 16, scope: !993)
!996 = !DILocation(line: 438, column: 2, scope: !990)
!997 = !DILocation(line: 439, column: 23, scope: !998)
!998 = distinct !DILexicalBlock(scope: !993, file: !2, line: 438, column: 28)
!999 = !DILocation(line: 439, column: 27, scope: !998)
!1000 = !DILocation(line: 439, column: 30, scope: !998)
!1001 = !DILocation(line: 439, column: 40, scope: !998)
!1002 = !DILocation(line: 439, column: 44, scope: !998)
!1003 = !DILocation(line: 439, column: 8, scope: !998)
!1004 = !DILocation(line: 439, column: 6, scope: !998)
!1005 = !DILocation(line: 440, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !998, file: !2, line: 440, column: 7)
!1007 = !DILocation(line: 440, column: 7, scope: !998)
!1008 = !DILocation(line: 441, column: 4, scope: !1006)
!1009 = !DILocation(line: 442, column: 2, scope: !998)
!1010 = !DILocation(line: 438, column: 24, scope: !993)
!1011 = !DILocation(line: 438, column: 2, scope: !993)
!1012 = distinct !{!1012, !996, !1013, !409, !410}
!1013 = !DILocation(line: 442, column: 2, scope: !990)
!1014 = !DILocation(line: 443, column: 2, scope: !930)
!1015 = !DILocation(line: 444, column: 1, scope: !930)
!1016 = !DILocation(line: 445, column: 20, scope: !930)
!1017 = !DILocation(line: 445, column: 2, scope: !930)
!1018 = !DILocation(line: 446, column: 9, scope: !930)
!1019 = !DILocation(line: 446, column: 2, scope: !930)
!1020 = !DILocation(line: 447, column: 1, scope: !930)
!1021 = distinct !DISubprogram(name: "kcalloc", scope: !9, file: !9, line: 666, type: !619, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DILocalVariable(name: "n", arg: 1, scope: !1021, file: !9, line: 666, type: !376)
!1024 = !DILocalVariable(name: "size", arg: 2, scope: !1021, file: !9, line: 666, type: !376)
!1025 = !DILocalVariable(name: "flags", arg: 3, scope: !1021, file: !9, line: 666, type: !63)
!1026 = !DILocation(line: 666, column: 55, scope: !1021)
!1027 = !DILocation(line: 666, column: 65, scope: !1021)
!1028 = !DILocation(line: 666, column: 77, scope: !1021)
!1029 = !DILocation(line: 668, column: 23, scope: !1021)
!1030 = !DILocation(line: 668, column: 26, scope: !1021)
!1031 = !DILocation(line: 668, column: 32, scope: !1021)
!1032 = !DILocation(line: 668, column: 38, scope: !1021)
!1033 = !DILocation(line: 668, column: 9, scope: !1021)
!1034 = !DILocation(line: 668, column: 2, scope: !1021)
!1035 = !DISubprogram(name: "avtab_alloc", scope: !219, file: !219, line: 91, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!94, !541, !69}
!1038 = distinct !DISubprogram(name: "cond_read_node", scope: !2, file: !2, line: 376, type: !1039, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1041)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!94, !89, !271, !71}
!1041 = !{!1042, !1043, !1044, !1045, !1047, !1048, !1049, !1050}
!1042 = !DILocalVariable(name: "p", arg: 1, scope: !1038, file: !2, line: 376, type: !89)
!1043 = !DILocalVariable(name: "node", arg: 2, scope: !1038, file: !2, line: 376, type: !271)
!1044 = !DILocalVariable(name: "fp", arg: 3, scope: !1038, file: !2, line: 376, type: !71)
!1045 = !DILocalVariable(name: "buf", scope: !1038, file: !2, line: 378, type: !1046)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !204)
!1047 = !DILocalVariable(name: "i", scope: !1038, file: !2, line: 379, type: !69)
!1048 = !DILocalVariable(name: "len", scope: !1038, file: !2, line: 379, type: !69)
!1049 = !DILocalVariable(name: "rc", scope: !1038, file: !2, line: 380, type: !94)
!1050 = !DILocalVariable(name: "expr", scope: !1051, file: !2, line: 397, type: !280)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 396, column: 28)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 396, column: 2)
!1053 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 396, column: 2)
!1054 = !DILocation(line: 376, column: 44, scope: !1038)
!1055 = !DILocation(line: 376, column: 65, scope: !1038)
!1056 = !DILocation(line: 376, column: 77, scope: !1038)
!1057 = !DILocation(line: 378, column: 2, scope: !1038)
!1058 = !DILocation(line: 378, column: 9, scope: !1038)
!1059 = !DILocation(line: 379, column: 2, scope: !1038)
!1060 = !DILocation(line: 379, column: 6, scope: !1038)
!1061 = !DILocation(line: 379, column: 9, scope: !1038)
!1062 = !DILocation(line: 380, column: 2, scope: !1038)
!1063 = !DILocation(line: 380, column: 6, scope: !1038)
!1064 = !DILocation(line: 382, column: 18, scope: !1038)
!1065 = !DILocation(line: 382, column: 23, scope: !1038)
!1066 = !DILocation(line: 382, column: 7, scope: !1038)
!1067 = !DILocation(line: 382, column: 5, scope: !1038)
!1068 = !DILocation(line: 383, column: 6, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 383, column: 6)
!1070 = !DILocation(line: 383, column: 6, scope: !1038)
!1071 = !DILocation(line: 384, column: 10, scope: !1069)
!1072 = !DILocation(line: 384, column: 3, scope: !1069)
!1073 = !DILocation(line: 386, column: 20, scope: !1038)
!1074 = !DILocation(line: 386, column: 2, scope: !1038)
!1075 = !DILocation(line: 386, column: 8, scope: !1038)
!1076 = !DILocation(line: 386, column: 18, scope: !1038)
!1077 = !DILocation(line: 389, column: 8, scope: !1038)
!1078 = !DILocation(line: 389, column: 6, scope: !1038)
!1079 = !DILocation(line: 390, column: 29, scope: !1038)
!1080 = !DILocation(line: 390, column: 21, scope: !1038)
!1081 = !DILocation(line: 390, column: 2, scope: !1038)
!1082 = !DILocation(line: 390, column: 8, scope: !1038)
!1083 = !DILocation(line: 390, column: 13, scope: !1038)
!1084 = !DILocation(line: 390, column: 19, scope: !1038)
!1085 = !DILocation(line: 391, column: 7, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 391, column: 6)
!1087 = !DILocation(line: 391, column: 13, scope: !1086)
!1088 = !DILocation(line: 391, column: 18, scope: !1086)
!1089 = !DILocation(line: 391, column: 6, scope: !1038)
!1090 = !DILocation(line: 392, column: 3, scope: !1086)
!1091 = !DILocation(line: 394, column: 19, scope: !1038)
!1092 = !DILocation(line: 394, column: 2, scope: !1038)
!1093 = !DILocation(line: 394, column: 8, scope: !1038)
!1094 = !DILocation(line: 394, column: 13, scope: !1038)
!1095 = !DILocation(line: 394, column: 17, scope: !1038)
!1096 = !DILocation(line: 396, column: 9, scope: !1053)
!1097 = !DILocation(line: 396, column: 7, scope: !1053)
!1098 = !DILocation(line: 396, column: 14, scope: !1052)
!1099 = !DILocation(line: 396, column: 18, scope: !1052)
!1100 = !DILocation(line: 396, column: 16, scope: !1052)
!1101 = !DILocation(line: 396, column: 2, scope: !1053)
!1102 = !DILocation(line: 397, column: 3, scope: !1051)
!1103 = !DILocation(line: 397, column: 26, scope: !1051)
!1104 = !DILocation(line: 397, column: 34, scope: !1051)
!1105 = !DILocation(line: 397, column: 40, scope: !1051)
!1106 = !DILocation(line: 397, column: 45, scope: !1051)
!1107 = !DILocation(line: 397, column: 51, scope: !1051)
!1108 = !DILocation(line: 399, column: 19, scope: !1051)
!1109 = !DILocation(line: 399, column: 24, scope: !1051)
!1110 = !DILocation(line: 399, column: 8, scope: !1051)
!1111 = !DILocation(line: 399, column: 6, scope: !1051)
!1112 = !DILocation(line: 400, column: 7, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 400, column: 7)
!1114 = !DILocation(line: 400, column: 7, scope: !1051)
!1115 = !DILocation(line: 401, column: 11, scope: !1113)
!1116 = !DILocation(line: 401, column: 4, scope: !1113)
!1117 = !DILocation(line: 403, column: 21, scope: !1051)
!1118 = !DILocation(line: 403, column: 3, scope: !1051)
!1119 = !DILocation(line: 403, column: 9, scope: !1051)
!1120 = !DILocation(line: 403, column: 19, scope: !1051)
!1121 = !DILocation(line: 404, column: 19, scope: !1051)
!1122 = !DILocation(line: 404, column: 3, scope: !1051)
!1123 = !DILocation(line: 404, column: 9, scope: !1051)
!1124 = !DILocation(line: 404, column: 17, scope: !1051)
!1125 = !DILocation(line: 406, column: 26, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 406, column: 7)
!1127 = !DILocation(line: 406, column: 29, scope: !1126)
!1128 = !DILocation(line: 406, column: 8, scope: !1126)
!1129 = !DILocation(line: 406, column: 7, scope: !1051)
!1130 = !DILocation(line: 407, column: 4, scope: !1126)
!1131 = !DILocation(line: 408, column: 2, scope: !1052)
!1132 = !DILocation(line: 408, column: 2, scope: !1051)
!1133 = !DILocation(line: 396, column: 24, scope: !1052)
!1134 = !DILocation(line: 396, column: 2, scope: !1052)
!1135 = distinct !{!1135, !1101, !1136, !409, !410}
!1136 = !DILocation(line: 408, column: 2, scope: !1053)
!1137 = !DILocation(line: 410, column: 25, scope: !1038)
!1138 = !DILocation(line: 410, column: 28, scope: !1038)
!1139 = !DILocation(line: 410, column: 33, scope: !1038)
!1140 = !DILocation(line: 410, column: 39, scope: !1038)
!1141 = !DILocation(line: 410, column: 7, scope: !1038)
!1142 = !DILocation(line: 410, column: 5, scope: !1038)
!1143 = !DILocation(line: 411, column: 6, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 411, column: 6)
!1145 = !DILocation(line: 411, column: 6, scope: !1038)
!1146 = !DILocation(line: 412, column: 10, scope: !1144)
!1147 = !DILocation(line: 412, column: 3, scope: !1144)
!1148 = !DILocation(line: 413, column: 27, scope: !1038)
!1149 = !DILocation(line: 413, column: 30, scope: !1038)
!1150 = !DILocation(line: 413, column: 35, scope: !1038)
!1151 = !DILocation(line: 413, column: 41, scope: !1038)
!1152 = !DILocation(line: 413, column: 54, scope: !1038)
!1153 = !DILocation(line: 413, column: 60, scope: !1038)
!1154 = !DILocation(line: 413, column: 9, scope: !1038)
!1155 = !DILocation(line: 413, column: 2, scope: !1038)
!1156 = !DILocation(line: 414, column: 1, scope: !1038)
!1157 = distinct !DISubprogram(name: "cond_write_bool", scope: !2, file: !2, line: 449, type: !652, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1158)
!1158 = !{!1159, !1160, !1161, !1162, !1163, !1164, !1170, !1171, !1172, !1173}
!1159 = !DILocalVariable(name: "vkey", arg: 1, scope: !1157, file: !2, line: 449, type: !71)
!1160 = !DILocalVariable(name: "datum", arg: 2, scope: !1157, file: !2, line: 449, type: !71)
!1161 = !DILocalVariable(name: "ptr", arg: 3, scope: !1157, file: !2, line: 449, type: !71)
!1162 = !DILocalVariable(name: "key", scope: !1157, file: !2, line: 451, type: !120)
!1163 = !DILocalVariable(name: "booldatum", scope: !1157, file: !2, line: 452, type: !264)
!1164 = !DILocalVariable(name: "pd", scope: !1157, file: !2, line: 453, type: !1165)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "policy_data", file: !91, line: 353, size: 128, elements: !1167)
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1166, file: !91, line: 354, baseType: !89, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !1166, file: !91, line: 355, baseType: !71, size: 64, offset: 64)
!1170 = !DILocalVariable(name: "fp", scope: !1157, file: !2, line: 454, type: !71)
!1171 = !DILocalVariable(name: "buf", scope: !1157, file: !2, line: 455, type: !723)
!1172 = !DILocalVariable(name: "len", scope: !1157, file: !2, line: 456, type: !69)
!1173 = !DILocalVariable(name: "rc", scope: !1157, file: !2, line: 457, type: !94)
!1174 = !DILocation(line: 449, column: 27, scope: !1157)
!1175 = !DILocation(line: 449, column: 39, scope: !1157)
!1176 = !DILocation(line: 449, column: 52, scope: !1157)
!1177 = !DILocation(line: 451, column: 2, scope: !1157)
!1178 = !DILocation(line: 451, column: 8, scope: !1157)
!1179 = !DILocation(line: 451, column: 14, scope: !1157)
!1180 = !DILocation(line: 452, column: 2, scope: !1157)
!1181 = !DILocation(line: 452, column: 26, scope: !1157)
!1182 = !DILocation(line: 452, column: 38, scope: !1157)
!1183 = !DILocation(line: 453, column: 2, scope: !1157)
!1184 = !DILocation(line: 453, column: 22, scope: !1157)
!1185 = !DILocation(line: 453, column: 27, scope: !1157)
!1186 = !DILocation(line: 454, column: 2, scope: !1157)
!1187 = !DILocation(line: 454, column: 8, scope: !1157)
!1188 = !DILocation(line: 454, column: 13, scope: !1157)
!1189 = !DILocation(line: 454, column: 17, scope: !1157)
!1190 = !DILocation(line: 455, column: 2, scope: !1157)
!1191 = !DILocation(line: 455, column: 9, scope: !1157)
!1192 = !DILocation(line: 456, column: 2, scope: !1157)
!1193 = !DILocation(line: 456, column: 6, scope: !1157)
!1194 = !DILocation(line: 457, column: 2, scope: !1157)
!1195 = !DILocation(line: 457, column: 6, scope: !1157)
!1196 = !DILocation(line: 459, column: 15, scope: !1157)
!1197 = !DILocation(line: 459, column: 8, scope: !1157)
!1198 = !DILocation(line: 459, column: 6, scope: !1157)
!1199 = !DILocation(line: 460, column: 11, scope: !1157)
!1200 = !DILocation(line: 460, column: 2, scope: !1157)
!1201 = !DILocation(line: 460, column: 9, scope: !1157)
!1202 = !DILocation(line: 461, column: 11, scope: !1157)
!1203 = !DILocation(line: 461, column: 2, scope: !1157)
!1204 = !DILocation(line: 461, column: 9, scope: !1157)
!1205 = !DILocation(line: 462, column: 11, scope: !1157)
!1206 = !DILocation(line: 462, column: 2, scope: !1157)
!1207 = !DILocation(line: 462, column: 9, scope: !1157)
!1208 = !DILocation(line: 463, column: 17, scope: !1157)
!1209 = !DILocation(line: 463, column: 38, scope: !1157)
!1210 = !DILocation(line: 463, column: 7, scope: !1157)
!1211 = !DILocation(line: 463, column: 5, scope: !1157)
!1212 = !DILocation(line: 464, column: 6, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 464, column: 6)
!1214 = !DILocation(line: 464, column: 6, scope: !1157)
!1215 = !DILocation(line: 465, column: 10, scope: !1213)
!1216 = !DILocation(line: 465, column: 3, scope: !1213)
!1217 = !DILocation(line: 466, column: 17, scope: !1157)
!1218 = !DILocation(line: 466, column: 25, scope: !1157)
!1219 = !DILocation(line: 466, column: 30, scope: !1157)
!1220 = !DILocation(line: 466, column: 7, scope: !1157)
!1221 = !DILocation(line: 466, column: 5, scope: !1157)
!1222 = !DILocation(line: 467, column: 6, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 467, column: 6)
!1224 = !DILocation(line: 467, column: 6, scope: !1157)
!1225 = !DILocation(line: 468, column: 10, scope: !1223)
!1226 = !DILocation(line: 468, column: 3, scope: !1223)
!1227 = !DILocation(line: 469, column: 2, scope: !1157)
!1228 = !DILocation(line: 470, column: 1, scope: !1157)
!1229 = !DISubprogram(name: "strlen", scope: !1230, file: !1230, line: 128, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1230 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!75, !1233}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1235 = distinct !DISubprogram(name: "put_entry", scope: !91, file: !91, line: 369, type: !1236, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!94, !558, !376, !376, !834}
!1238 = !{!1239, !1240, !1241, !1242, !1243}
!1239 = !DILocalVariable(name: "buf", arg: 1, scope: !1235, file: !91, line: 369, type: !558)
!1240 = !DILocalVariable(name: "bytes", arg: 2, scope: !1235, file: !91, line: 369, type: !376)
!1241 = !DILocalVariable(name: "num", arg: 3, scope: !1235, file: !91, line: 369, type: !376)
!1242 = !DILocalVariable(name: "fp", arg: 4, scope: !1235, file: !91, line: 369, type: !834)
!1243 = !DILocalVariable(name: "len", scope: !1235, file: !91, line: 371, type: !376)
!1244 = !DILocation(line: 369, column: 41, scope: !1235)
!1245 = !DILocation(line: 369, column: 53, scope: !1235)
!1246 = !DILocation(line: 369, column: 67, scope: !1235)
!1247 = !DILocation(line: 369, column: 92, scope: !1235)
!1248 = !DILocation(line: 371, column: 2, scope: !1235)
!1249 = !DILocation(line: 371, column: 9, scope: !1235)
!1250 = !DILocation(line: 373, column: 6, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1235, file: !91, line: 373, column: 6)
!1252 = !DILocation(line: 373, column: 6, scope: !1235)
!1253 = !DILocation(line: 374, column: 3, scope: !1251)
!1254 = !DILocation(line: 376, column: 6, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1235, file: !91, line: 376, column: 6)
!1256 = !DILocation(line: 376, column: 12, scope: !1255)
!1257 = !DILocation(line: 376, column: 16, scope: !1255)
!1258 = !DILocation(line: 376, column: 10, scope: !1255)
!1259 = !DILocation(line: 376, column: 6, scope: !1235)
!1260 = !DILocation(line: 377, column: 3, scope: !1255)
!1261 = !DILocation(line: 378, column: 9, scope: !1235)
!1262 = !DILocation(line: 378, column: 13, scope: !1235)
!1263 = !DILocation(line: 378, column: 19, scope: !1235)
!1264 = !DILocation(line: 378, column: 24, scope: !1235)
!1265 = !DILocation(line: 378, column: 2, scope: !1235)
!1266 = !DILocation(line: 379, column: 14, scope: !1235)
!1267 = !DILocation(line: 379, column: 2, scope: !1235)
!1268 = !DILocation(line: 379, column: 6, scope: !1235)
!1269 = !DILocation(line: 379, column: 11, scope: !1235)
!1270 = !DILocation(line: 380, column: 13, scope: !1235)
!1271 = !DILocation(line: 380, column: 2, scope: !1235)
!1272 = !DILocation(line: 380, column: 6, scope: !1235)
!1273 = !DILocation(line: 380, column: 10, scope: !1235)
!1274 = !DILocation(line: 382, column: 2, scope: !1235)
!1275 = !DILocation(line: 383, column: 1, scope: !1235)
!1276 = distinct !DISubprogram(name: "cond_write_list", scope: !2, file: !2, line: 537, type: !931, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282}
!1278 = !DILocalVariable(name: "p", arg: 1, scope: !1276, file: !2, line: 537, type: !89)
!1279 = !DILocalVariable(name: "fp", arg: 2, scope: !1276, file: !2, line: 537, type: !71)
!1280 = !DILocalVariable(name: "i", scope: !1276, file: !2, line: 539, type: !69)
!1281 = !DILocalVariable(name: "buf", scope: !1276, file: !2, line: 540, type: !937)
!1282 = !DILocalVariable(name: "rc", scope: !1276, file: !2, line: 541, type: !94)
!1283 = !DILocation(line: 537, column: 38, scope: !1276)
!1284 = !DILocation(line: 537, column: 47, scope: !1276)
!1285 = !DILocation(line: 539, column: 2, scope: !1276)
!1286 = !DILocation(line: 539, column: 6, scope: !1276)
!1287 = !DILocation(line: 540, column: 2, scope: !1276)
!1288 = !DILocation(line: 540, column: 9, scope: !1276)
!1289 = !DILocation(line: 541, column: 2, scope: !1276)
!1290 = !DILocation(line: 541, column: 6, scope: !1276)
!1291 = !DILocation(line: 543, column: 11, scope: !1276)
!1292 = !DILocation(line: 543, column: 2, scope: !1276)
!1293 = !DILocation(line: 543, column: 9, scope: !1276)
!1294 = !DILocation(line: 544, column: 17, scope: !1276)
!1295 = !DILocation(line: 544, column: 38, scope: !1276)
!1296 = !DILocation(line: 544, column: 7, scope: !1276)
!1297 = !DILocation(line: 544, column: 5, scope: !1276)
!1298 = !DILocation(line: 545, column: 6, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 545, column: 6)
!1300 = !DILocation(line: 545, column: 6, scope: !1276)
!1301 = !DILocation(line: 546, column: 10, scope: !1299)
!1302 = !DILocation(line: 546, column: 3, scope: !1299)
!1303 = !DILocation(line: 548, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 548, column: 2)
!1305 = !DILocation(line: 548, column: 7, scope: !1304)
!1306 = !DILocation(line: 548, column: 14, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 548, column: 2)
!1308 = !DILocation(line: 548, column: 18, scope: !1307)
!1309 = !DILocation(line: 548, column: 21, scope: !1307)
!1310 = !DILocation(line: 548, column: 16, scope: !1307)
!1311 = !DILocation(line: 548, column: 2, scope: !1304)
!1312 = !DILocation(line: 549, column: 24, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 548, column: 41)
!1314 = !DILocation(line: 549, column: 28, scope: !1313)
!1315 = !DILocation(line: 549, column: 31, scope: !1313)
!1316 = !DILocation(line: 549, column: 41, scope: !1313)
!1317 = !DILocation(line: 549, column: 45, scope: !1313)
!1318 = !DILocation(line: 549, column: 8, scope: !1313)
!1319 = !DILocation(line: 549, column: 6, scope: !1313)
!1320 = !DILocation(line: 550, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 550, column: 7)
!1322 = !DILocation(line: 550, column: 7, scope: !1313)
!1323 = !DILocation(line: 551, column: 11, scope: !1321)
!1324 = !DILocation(line: 551, column: 4, scope: !1321)
!1325 = !DILocation(line: 552, column: 2, scope: !1313)
!1326 = !DILocation(line: 548, column: 37, scope: !1307)
!1327 = !DILocation(line: 548, column: 2, scope: !1307)
!1328 = distinct !{!1328, !1311, !1329, !409, !410}
!1329 = !DILocation(line: 552, column: 2, scope: !1304)
!1330 = !DILocation(line: 554, column: 2, scope: !1276)
!1331 = !DILocation(line: 555, column: 1, scope: !1276)
!1332 = distinct !DISubprogram(name: "cond_write_node", scope: !2, file: !2, line: 502, type: !1333, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!94, !89, !271, !834}
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341}
!1336 = !DILocalVariable(name: "p", arg: 1, scope: !1332, file: !2, line: 502, type: !89)
!1337 = !DILocalVariable(name: "node", arg: 2, scope: !1332, file: !2, line: 502, type: !271)
!1338 = !DILocalVariable(name: "fp", arg: 3, scope: !1332, file: !2, line: 503, type: !834)
!1339 = !DILocalVariable(name: "buf", scope: !1332, file: !2, line: 505, type: !1046)
!1340 = !DILocalVariable(name: "rc", scope: !1332, file: !2, line: 506, type: !94)
!1341 = !DILocalVariable(name: "i", scope: !1332, file: !2, line: 507, type: !69)
!1342 = !DILocation(line: 502, column: 45, scope: !1332)
!1343 = !DILocation(line: 502, column: 66, scope: !1332)
!1344 = !DILocation(line: 503, column: 27, scope: !1332)
!1345 = !DILocation(line: 505, column: 2, scope: !1332)
!1346 = !DILocation(line: 505, column: 9, scope: !1332)
!1347 = !DILocation(line: 506, column: 2, scope: !1332)
!1348 = !DILocation(line: 506, column: 6, scope: !1332)
!1349 = !DILocation(line: 507, column: 2, scope: !1332)
!1350 = !DILocation(line: 507, column: 6, scope: !1332)
!1351 = !DILocation(line: 509, column: 11, scope: !1332)
!1352 = !DILocation(line: 509, column: 2, scope: !1332)
!1353 = !DILocation(line: 509, column: 9, scope: !1332)
!1354 = !DILocation(line: 510, column: 17, scope: !1332)
!1355 = !DILocation(line: 510, column: 38, scope: !1332)
!1356 = !DILocation(line: 510, column: 7, scope: !1332)
!1357 = !DILocation(line: 510, column: 5, scope: !1332)
!1358 = !DILocation(line: 511, column: 6, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 511, column: 6)
!1360 = !DILocation(line: 511, column: 6, scope: !1332)
!1361 = !DILocation(line: 512, column: 10, scope: !1359)
!1362 = !DILocation(line: 512, column: 3, scope: !1359)
!1363 = !DILocation(line: 514, column: 11, scope: !1332)
!1364 = !DILocation(line: 514, column: 2, scope: !1332)
!1365 = !DILocation(line: 514, column: 9, scope: !1332)
!1366 = !DILocation(line: 515, column: 17, scope: !1332)
!1367 = !DILocation(line: 515, column: 38, scope: !1332)
!1368 = !DILocation(line: 515, column: 7, scope: !1332)
!1369 = !DILocation(line: 515, column: 5, scope: !1332)
!1370 = !DILocation(line: 516, column: 6, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 516, column: 6)
!1372 = !DILocation(line: 516, column: 6, scope: !1332)
!1373 = !DILocation(line: 517, column: 10, scope: !1371)
!1374 = !DILocation(line: 517, column: 3, scope: !1371)
!1375 = !DILocation(line: 519, column: 9, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 519, column: 2)
!1377 = !DILocation(line: 519, column: 7, scope: !1376)
!1378 = !DILocation(line: 519, column: 14, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 519, column: 2)
!1380 = !DILocation(line: 519, column: 18, scope: !1379)
!1381 = !DILocation(line: 519, column: 24, scope: !1379)
!1382 = !DILocation(line: 519, column: 29, scope: !1379)
!1383 = !DILocation(line: 519, column: 16, scope: !1379)
!1384 = !DILocation(line: 519, column: 2, scope: !1376)
!1385 = !DILocation(line: 520, column: 12, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 519, column: 39)
!1387 = !DILocation(line: 520, column: 3, scope: !1386)
!1388 = !DILocation(line: 520, column: 10, scope: !1386)
!1389 = !DILocation(line: 521, column: 12, scope: !1386)
!1390 = !DILocation(line: 521, column: 3, scope: !1386)
!1391 = !DILocation(line: 521, column: 10, scope: !1386)
!1392 = !DILocation(line: 522, column: 18, scope: !1386)
!1393 = !DILocation(line: 522, column: 39, scope: !1386)
!1394 = !DILocation(line: 522, column: 8, scope: !1386)
!1395 = !DILocation(line: 522, column: 6, scope: !1386)
!1396 = !DILocation(line: 523, column: 7, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 523, column: 7)
!1398 = !DILocation(line: 523, column: 7, scope: !1386)
!1399 = !DILocation(line: 524, column: 11, scope: !1397)
!1400 = !DILocation(line: 524, column: 4, scope: !1397)
!1401 = !DILocation(line: 525, column: 2, scope: !1386)
!1402 = !DILocation(line: 519, column: 35, scope: !1379)
!1403 = !DILocation(line: 519, column: 2, scope: !1379)
!1404 = distinct !{!1404, !1384, !1405, !409, !410}
!1405 = !DILocation(line: 525, column: 2, scope: !1376)
!1406 = !DILocation(line: 527, column: 26, scope: !1332)
!1407 = !DILocation(line: 527, column: 30, scope: !1332)
!1408 = !DILocation(line: 527, column: 36, scope: !1332)
!1409 = !DILocation(line: 527, column: 47, scope: !1332)
!1410 = !DILocation(line: 527, column: 7, scope: !1332)
!1411 = !DILocation(line: 527, column: 5, scope: !1332)
!1412 = !DILocation(line: 528, column: 6, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 528, column: 6)
!1414 = !DILocation(line: 528, column: 6, scope: !1332)
!1415 = !DILocation(line: 529, column: 10, scope: !1413)
!1416 = !DILocation(line: 529, column: 3, scope: !1413)
!1417 = !DILocation(line: 530, column: 26, scope: !1332)
!1418 = !DILocation(line: 530, column: 30, scope: !1332)
!1419 = !DILocation(line: 530, column: 36, scope: !1332)
!1420 = !DILocation(line: 530, column: 48, scope: !1332)
!1421 = !DILocation(line: 530, column: 7, scope: !1332)
!1422 = !DILocation(line: 530, column: 5, scope: !1332)
!1423 = !DILocation(line: 531, column: 6, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 531, column: 6)
!1425 = !DILocation(line: 531, column: 6, scope: !1332)
!1426 = !DILocation(line: 532, column: 10, scope: !1424)
!1427 = !DILocation(line: 532, column: 3, scope: !1424)
!1428 = !DILocation(line: 534, column: 2, scope: !1332)
!1429 = !DILocation(line: 535, column: 1, scope: !1332)
!1430 = distinct !DISubprogram(name: "cond_compute_xperms", scope: !2, file: !2, line: 557, type: !1431, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1443)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !541, !1433, !1434}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extended_perms_decision", file: !250, line: 227, size: 256, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1441, !1442}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1435, file: !250, line: 228, baseType: !245, size: 8)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1435, file: !250, line: 229, baseType: !245, size: 8, offset: 8)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1435, file: !250, line: 230, baseType: !1440, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "auditallow", scope: !1435, file: !250, line: 231, baseType: !1440, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dontaudit", scope: !1435, file: !250, line: 232, baseType: !1440, size: 64, offset: 192)
!1443 = !{!1444, !1445, !1446, !1447}
!1444 = !DILocalVariable(name: "ctab", arg: 1, scope: !1430, file: !2, line: 557, type: !541)
!1445 = !DILocalVariable(name: "key", arg: 2, scope: !1430, file: !2, line: 557, type: !1433)
!1446 = !DILocalVariable(name: "xpermd", arg: 3, scope: !1430, file: !2, line: 558, type: !1434)
!1447 = !DILocalVariable(name: "node", scope: !1430, file: !2, line: 560, type: !223)
!1448 = !DILocation(line: 557, column: 40, scope: !1430)
!1449 = !DILocation(line: 557, column: 64, scope: !1430)
!1450 = !DILocation(line: 558, column: 35, scope: !1430)
!1451 = !DILocation(line: 560, column: 2, scope: !1430)
!1452 = !DILocation(line: 560, column: 21, scope: !1430)
!1453 = !DILocation(line: 562, column: 7, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 562, column: 6)
!1455 = !DILocation(line: 562, column: 12, scope: !1454)
!1456 = !DILocation(line: 562, column: 16, scope: !1454)
!1457 = !DILocation(line: 562, column: 20, scope: !1454)
!1458 = !DILocation(line: 562, column: 24, scope: !1454)
!1459 = !DILocation(line: 562, column: 6, scope: !1430)
!1460 = !DILocation(line: 563, column: 3, scope: !1454)
!1461 = !DILocation(line: 565, column: 32, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 565, column: 2)
!1463 = !DILocation(line: 565, column: 38, scope: !1462)
!1464 = !DILocation(line: 565, column: 14, scope: !1462)
!1465 = !DILocation(line: 565, column: 12, scope: !1462)
!1466 = !DILocation(line: 565, column: 7, scope: !1462)
!1467 = !DILocation(line: 565, column: 44, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 565, column: 2)
!1469 = !DILocation(line: 565, column: 2, scope: !1462)
!1470 = !DILocation(line: 567, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !2, line: 567, column: 7)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 566, column: 57)
!1473 = !DILocation(line: 567, column: 13, scope: !1471)
!1474 = !DILocation(line: 567, column: 17, scope: !1471)
!1475 = !DILocation(line: 567, column: 27, scope: !1471)
!1476 = !DILocation(line: 567, column: 7, scope: !1472)
!1477 = !DILocation(line: 568, column: 37, scope: !1471)
!1478 = !DILocation(line: 568, column: 45, scope: !1471)
!1479 = !DILocation(line: 568, column: 4, scope: !1471)
!1480 = !DILocation(line: 569, column: 2, scope: !1472)
!1481 = !DILocation(line: 566, column: 34, scope: !1468)
!1482 = !DILocation(line: 566, column: 40, scope: !1468)
!1483 = !DILocation(line: 566, column: 45, scope: !1468)
!1484 = !DILocation(line: 566, column: 11, scope: !1468)
!1485 = !DILocation(line: 566, column: 9, scope: !1468)
!1486 = !DILocation(line: 565, column: 2, scope: !1468)
!1487 = distinct !{!1487, !1469, !1488, !409, !410}
!1488 = !DILocation(line: 569, column: 2, scope: !1462)
!1489 = !DILocation(line: 570, column: 1, scope: !1430)
!1490 = !DISubprogram(name: "avtab_search_node", scope: !219, file: !219, line: 117, type: !1491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!223, !541, !1493}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!1495 = !DISubprogram(name: "services_compute_xperms_decision", scope: !1496, file: !1496, line: 39, type: !1497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1496 = !DIFile(filename: "security/selinux/ss/services.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95c22d0eb909c06c21ef22714eadce2e")
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1434, !223}
!1499 = !DISubprogram(name: "avtab_search_node_next", scope: !219, file: !219, line: 120, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!223, !223, !72}
!1502 = distinct !DISubprogram(name: "cond_compute_av", scope: !2, file: !2, line: 574, type: !1503, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1518)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{null, !541, !1433, !1505, !1513}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av_decision", file: !250, line: 209, size: 160, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1512}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1506, file: !250, line: 210, baseType: !69, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "auditallow", scope: !1506, file: !250, line: 211, baseType: !69, size: 32, offset: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "auditdeny", scope: !1506, file: !250, line: 212, baseType: !69, size: 32, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !1506, file: !250, line: 213, baseType: !69, size: 32, offset: 96)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1506, file: !250, line: 214, baseType: !69, size: 32, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extended_perms", file: !250, line: 235, size: 288, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1514, file: !250, line: 236, baseType: !72, size: 16)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "drivers", scope: !1514, file: !250, line: 237, baseType: !249, size: 256, offset: 32)
!1518 = !{!1519, !1520, !1521, !1522, !1523}
!1519 = !DILocalVariable(name: "ctab", arg: 1, scope: !1502, file: !2, line: 574, type: !541)
!1520 = !DILocalVariable(name: "key", arg: 2, scope: !1502, file: !2, line: 574, type: !1433)
!1521 = !DILocalVariable(name: "avd", arg: 3, scope: !1502, file: !2, line: 575, type: !1505)
!1522 = !DILocalVariable(name: "xperms", arg: 4, scope: !1502, file: !2, line: 575, type: !1513)
!1523 = !DILocalVariable(name: "node", scope: !1502, file: !2, line: 577, type: !223)
!1524 = !DILocation(line: 574, column: 36, scope: !1502)
!1525 = !DILocation(line: 574, column: 60, scope: !1502)
!1526 = !DILocation(line: 575, column: 23, scope: !1502)
!1527 = !DILocation(line: 575, column: 51, scope: !1502)
!1528 = !DILocation(line: 577, column: 2, scope: !1502)
!1529 = !DILocation(line: 577, column: 21, scope: !1502)
!1530 = !DILocation(line: 579, column: 7, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 579, column: 6)
!1532 = !DILocation(line: 579, column: 12, scope: !1531)
!1533 = !DILocation(line: 579, column: 16, scope: !1531)
!1534 = !DILocation(line: 579, column: 20, scope: !1531)
!1535 = !DILocation(line: 579, column: 24, scope: !1531)
!1536 = !DILocation(line: 579, column: 6, scope: !1502)
!1537 = !DILocation(line: 580, column: 3, scope: !1531)
!1538 = !DILocation(line: 582, column: 32, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 582, column: 2)
!1540 = !DILocation(line: 582, column: 38, scope: !1539)
!1541 = !DILocation(line: 582, column: 14, scope: !1539)
!1542 = !DILocation(line: 582, column: 12, scope: !1539)
!1543 = !DILocation(line: 582, column: 7, scope: !1539)
!1544 = !DILocation(line: 582, column: 44, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 582, column: 2)
!1546 = !DILocation(line: 582, column: 2, scope: !1539)
!1547 = !DILocation(line: 585, column: 8, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 584, column: 7)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 583, column: 58)
!1550 = !DILocation(line: 585, column: 14, scope: !1548)
!1551 = !DILocation(line: 585, column: 18, scope: !1548)
!1552 = !DILocation(line: 585, column: 28, scope: !1548)
!1553 = !DILocation(line: 584, column: 42, scope: !1548)
!1554 = !DILocation(line: 584, column: 7, scope: !1549)
!1555 = !DILocation(line: 586, column: 20, scope: !1548)
!1556 = !DILocation(line: 586, column: 26, scope: !1548)
!1557 = !DILocation(line: 586, column: 32, scope: !1548)
!1558 = !DILocation(line: 586, column: 34, scope: !1548)
!1559 = !DILocation(line: 586, column: 4, scope: !1548)
!1560 = !DILocation(line: 586, column: 9, scope: !1548)
!1561 = !DILocation(line: 586, column: 17, scope: !1548)
!1562 = !DILocation(line: 588, column: 8, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 587, column: 7)
!1564 = !DILocation(line: 588, column: 14, scope: !1563)
!1565 = !DILocation(line: 588, column: 18, scope: !1563)
!1566 = !DILocation(line: 588, column: 28, scope: !1563)
!1567 = !DILocation(line: 587, column: 44, scope: !1563)
!1568 = !DILocation(line: 587, column: 7, scope: !1549)
!1569 = !DILocation(line: 594, column: 22, scope: !1563)
!1570 = !DILocation(line: 594, column: 28, scope: !1563)
!1571 = !DILocation(line: 594, column: 34, scope: !1563)
!1572 = !DILocation(line: 594, column: 36, scope: !1563)
!1573 = !DILocation(line: 594, column: 4, scope: !1563)
!1574 = !DILocation(line: 594, column: 9, scope: !1563)
!1575 = !DILocation(line: 594, column: 19, scope: !1563)
!1576 = !DILocation(line: 596, column: 8, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 595, column: 7)
!1578 = !DILocation(line: 596, column: 14, scope: !1577)
!1579 = !DILocation(line: 596, column: 18, scope: !1577)
!1580 = !DILocation(line: 596, column: 28, scope: !1577)
!1581 = !DILocation(line: 595, column: 45, scope: !1577)
!1582 = !DILocation(line: 595, column: 7, scope: !1549)
!1583 = !DILocation(line: 597, column: 23, scope: !1577)
!1584 = !DILocation(line: 597, column: 29, scope: !1577)
!1585 = !DILocation(line: 597, column: 35, scope: !1577)
!1586 = !DILocation(line: 597, column: 37, scope: !1577)
!1587 = !DILocation(line: 597, column: 4, scope: !1577)
!1588 = !DILocation(line: 597, column: 9, scope: !1577)
!1589 = !DILocation(line: 597, column: 20, scope: !1577)
!1590 = !DILocation(line: 598, column: 7, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 598, column: 7)
!1592 = !DILocation(line: 598, column: 14, scope: !1591)
!1593 = !DILocation(line: 598, column: 18, scope: !1591)
!1594 = !DILocation(line: 598, column: 24, scope: !1591)
!1595 = !DILocation(line: 598, column: 28, scope: !1591)
!1596 = !DILocation(line: 598, column: 38, scope: !1591)
!1597 = !DILocation(line: 598, column: 55, scope: !1591)
!1598 = !DILocation(line: 599, column: 6, scope: !1591)
!1599 = !DILocation(line: 599, column: 12, scope: !1591)
!1600 = !DILocation(line: 599, column: 16, scope: !1591)
!1601 = !DILocation(line: 599, column: 26, scope: !1591)
!1602 = !DILocation(line: 598, column: 7, scope: !1549)
!1603 = !DILocation(line: 600, column: 36, scope: !1591)
!1604 = !DILocation(line: 600, column: 44, scope: !1591)
!1605 = !DILocation(line: 600, column: 4, scope: !1591)
!1606 = !DILocation(line: 601, column: 2, scope: !1549)
!1607 = !DILocation(line: 583, column: 35, scope: !1545)
!1608 = !DILocation(line: 583, column: 41, scope: !1545)
!1609 = !DILocation(line: 583, column: 46, scope: !1545)
!1610 = !DILocation(line: 583, column: 12, scope: !1545)
!1611 = !DILocation(line: 583, column: 10, scope: !1545)
!1612 = !DILocation(line: 582, column: 2, scope: !1545)
!1613 = distinct !{!1613, !1546, !1614, !409, !410}
!1614 = !DILocation(line: 601, column: 2, scope: !1539)
!1615 = !DILocation(line: 602, column: 1, scope: !1502)
!1616 = !DISubprogram(name: "services_compute_xperms_drivers", scope: !1496, file: !1496, line: 37, type: !1617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !1513, !223}
!1619 = distinct !DISubprogram(name: "cond_policydb_destroy_dup", scope: !2, file: !2, line: 738, type: !87, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1620)
!1620 = !{!1621}
!1621 = !DILocalVariable(name: "p", arg: 1, scope: !1619, file: !2, line: 738, type: !89)
!1622 = !DILocation(line: 738, column: 49, scope: !1619)
!1623 = !DILocation(line: 740, column: 15, scope: !1619)
!1624 = !DILocation(line: 740, column: 18, scope: !1619)
!1625 = !DILocation(line: 740, column: 26, scope: !1619)
!1626 = !DILocation(line: 740, column: 2, scope: !1619)
!1627 = !DILocation(line: 741, column: 19, scope: !1619)
!1628 = !DILocation(line: 741, column: 22, scope: !1619)
!1629 = !DILocation(line: 741, column: 30, scope: !1619)
!1630 = !DILocation(line: 741, column: 2, scope: !1619)
!1631 = !DILocation(line: 742, column: 24, scope: !1619)
!1632 = !DILocation(line: 742, column: 2, scope: !1619)
!1633 = !DILocation(line: 743, column: 1, scope: !1619)
!1634 = !DISubprogram(name: "hashtab_map", scope: !102, file: !102, line: 135, type: !1635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!94, !1637, !1638, !71}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!1639 = distinct !DISubprogram(name: "cond_bools_destroy", scope: !2, file: !2, line: 679, type: !652, scopeLine: 680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1640)
!1640 = !{!1641, !1642, !1643}
!1641 = !DILocalVariable(name: "key", arg: 1, scope: !1639, file: !2, line: 679, type: !71)
!1642 = !DILocalVariable(name: "datum", arg: 2, scope: !1639, file: !2, line: 679, type: !71)
!1643 = !DILocalVariable(name: "args", arg: 3, scope: !1639, file: !2, line: 679, type: !71)
!1644 = !DILocation(line: 679, column: 37, scope: !1639)
!1645 = !DILocation(line: 679, column: 48, scope: !1639)
!1646 = !DILocation(line: 679, column: 61, scope: !1639)
!1647 = !DILocation(line: 682, column: 8, scope: !1639)
!1648 = !DILocation(line: 682, column: 2, scope: !1639)
!1649 = !DILocation(line: 683, column: 2, scope: !1639)
!1650 = !DISubprogram(name: "hashtab_destroy", scope: !102, file: !102, line: 122, type: !1651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !1637}
!1653 = distinct !DISubprogram(name: "cond_policydb_dup", scope: !2, file: !2, line: 745, type: !1654, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!94, !89, !89}
!1656 = !{!1657, !1658}
!1657 = !DILocalVariable(name: "new", arg: 1, scope: !1653, file: !2, line: 745, type: !89)
!1658 = !DILocalVariable(name: "orig", arg: 2, scope: !1653, file: !2, line: 745, type: !89)
!1659 = !DILocation(line: 745, column: 40, scope: !1653)
!1660 = !DILocation(line: 745, column: 62, scope: !1653)
!1661 = !DILocation(line: 747, column: 21, scope: !1653)
!1662 = !DILocation(line: 747, column: 2, scope: !1653)
!1663 = !DILocation(line: 749, column: 31, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 749, column: 6)
!1665 = !DILocation(line: 749, column: 36, scope: !1664)
!1666 = !DILocation(line: 749, column: 6, scope: !1664)
!1667 = !DILocation(line: 749, column: 6, scope: !1653)
!1668 = !DILocation(line: 750, column: 3, scope: !1664)
!1669 = !DILocation(line: 752, column: 35, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 752, column: 6)
!1671 = !DILocation(line: 752, column: 40, scope: !1670)
!1672 = !DILocation(line: 752, column: 6, scope: !1670)
!1673 = !DILocation(line: 752, column: 6, scope: !1653)
!1674 = !DILocation(line: 753, column: 29, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 752, column: 47)
!1676 = !DILocation(line: 753, column: 3, scope: !1675)
!1677 = !DILocation(line: 754, column: 3, scope: !1675)
!1678 = !DILocation(line: 757, column: 2, scope: !1653)
!1679 = !DILocation(line: 758, column: 1, scope: !1653)
!1680 = distinct !DISubprogram(name: "duplicate_policydb_bools", scope: !2, file: !2, line: 711, type: !1654, scopeLine: 713, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1681)
!1681 = !{!1682, !1683, !1684, !1685}
!1682 = !DILocalVariable(name: "newdb", arg: 1, scope: !1680, file: !2, line: 711, type: !89)
!1683 = !DILocalVariable(name: "orig", arg: 2, scope: !1680, file: !2, line: 712, type: !89)
!1684 = !DILocalVariable(name: "cond_bool_array", scope: !1680, file: !2, line: 714, type: !263)
!1685 = !DILocalVariable(name: "rc", scope: !1680, file: !2, line: 715, type: !94)
!1686 = !DILocation(line: 711, column: 54, scope: !1680)
!1687 = !DILocation(line: 712, column: 22, scope: !1680)
!1688 = !DILocation(line: 714, column: 2, scope: !1680)
!1689 = !DILocation(line: 714, column: 27, scope: !1680)
!1690 = !DILocation(line: 715, column: 2, scope: !1680)
!1691 = !DILocation(line: 715, column: 6, scope: !1680)
!1692 = !DILocation(line: 717, column: 34, scope: !1680)
!1693 = !DILocation(line: 717, column: 40, scope: !1680)
!1694 = !DILocation(line: 717, column: 48, scope: !1680)
!1695 = !DILocation(line: 717, column: 20, scope: !1680)
!1696 = !DILocation(line: 717, column: 18, scope: !1680)
!1697 = !DILocation(line: 720, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 720, column: 6)
!1699 = !DILocation(line: 720, column: 6, scope: !1680)
!1700 = !DILocation(line: 721, column: 3, scope: !1698)
!1701 = !DILocation(line: 723, column: 26, scope: !1680)
!1702 = !DILocation(line: 723, column: 33, scope: !1680)
!1703 = !DILocation(line: 723, column: 41, scope: !1680)
!1704 = !DILocation(line: 723, column: 49, scope: !1680)
!1705 = !DILocation(line: 723, column: 55, scope: !1680)
!1706 = !DILocation(line: 723, column: 63, scope: !1680)
!1707 = !DILocation(line: 723, column: 7, scope: !1680)
!1708 = !DILocation(line: 723, column: 5, scope: !1680)
!1709 = !DILocation(line: 725, column: 6, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 725, column: 6)
!1711 = !DILocation(line: 725, column: 6, scope: !1680)
!1712 = !DILocation(line: 726, column: 9, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 725, column: 10)
!1714 = !DILocation(line: 726, column: 3, scope: !1713)
!1715 = !DILocation(line: 727, column: 3, scope: !1713)
!1716 = !DILocation(line: 730, column: 15, scope: !1680)
!1717 = !DILocation(line: 730, column: 22, scope: !1680)
!1718 = !DILocation(line: 730, column: 30, scope: !1680)
!1719 = !DILocation(line: 730, column: 55, scope: !1680)
!1720 = !DILocation(line: 730, column: 2, scope: !1680)
!1721 = !DILocation(line: 731, column: 30, scope: !1680)
!1722 = !DILocation(line: 731, column: 2, scope: !1680)
!1723 = !DILocation(line: 731, column: 9, scope: !1680)
!1724 = !DILocation(line: 731, column: 28, scope: !1680)
!1725 = !DILocation(line: 733, column: 25, scope: !1680)
!1726 = !DILocation(line: 733, column: 31, scope: !1680)
!1727 = !DILocation(line: 733, column: 39, scope: !1680)
!1728 = !DILocation(line: 733, column: 2, scope: !1680)
!1729 = !DILocation(line: 733, column: 9, scope: !1680)
!1730 = !DILocation(line: 733, column: 17, scope: !1680)
!1731 = !DILocation(line: 733, column: 23, scope: !1680)
!1732 = !DILocation(line: 735, column: 2, scope: !1680)
!1733 = !DILocation(line: 736, column: 1, scope: !1680)
!1734 = distinct !DISubprogram(name: "duplicate_policydb_cond_list", scope: !2, file: !2, line: 628, type: !1654, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1735)
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1744, !1745}
!1736 = !DILocalVariable(name: "newp", arg: 1, scope: !1734, file: !2, line: 628, type: !89)
!1737 = !DILocalVariable(name: "origp", arg: 2, scope: !1734, file: !2, line: 629, type: !89)
!1738 = !DILocalVariable(name: "rc", scope: !1734, file: !2, line: 631, type: !94)
!1739 = !DILocalVariable(name: "i", scope: !1734, file: !2, line: 632, type: !69)
!1740 = !DILocalVariable(name: "newn", scope: !1741, file: !2, line: 646, type: !271)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !2, line: 645, column: 45)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 645, column: 2)
!1743 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 645, column: 2)
!1744 = !DILocalVariable(name: "orign", scope: !1741, file: !2, line: 647, type: !271)
!1745 = !DILabel(scope: !1734, name: "error", file: !2, line: 673)
!1746 = !DILocation(line: 628, column: 58, scope: !1734)
!1747 = !DILocation(line: 629, column: 23, scope: !1734)
!1748 = !DILocation(line: 631, column: 2, scope: !1734)
!1749 = !DILocation(line: 631, column: 6, scope: !1734)
!1750 = !DILocation(line: 632, column: 2, scope: !1734)
!1751 = !DILocation(line: 632, column: 6, scope: !1734)
!1752 = !DILocation(line: 634, column: 24, scope: !1734)
!1753 = !DILocation(line: 634, column: 30, scope: !1734)
!1754 = !DILocation(line: 634, column: 46, scope: !1734)
!1755 = !DILocation(line: 634, column: 53, scope: !1734)
!1756 = !DILocation(line: 634, column: 7, scope: !1734)
!1757 = !DILocation(line: 634, column: 5, scope: !1734)
!1758 = !DILocation(line: 635, column: 6, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 635, column: 6)
!1760 = !DILocation(line: 635, column: 6, scope: !1734)
!1761 = !DILocation(line: 636, column: 10, scope: !1759)
!1762 = !DILocation(line: 636, column: 3, scope: !1759)
!1763 = !DILocation(line: 638, column: 2, scope: !1734)
!1764 = !DILocation(line: 638, column: 8, scope: !1734)
!1765 = !DILocation(line: 638, column: 22, scope: !1734)
!1766 = !DILocation(line: 639, column: 28, scope: !1734)
!1767 = !DILocation(line: 639, column: 35, scope: !1734)
!1768 = !DILocation(line: 639, column: 20, scope: !1734)
!1769 = !DILocation(line: 639, column: 2, scope: !1734)
!1770 = !DILocation(line: 639, column: 8, scope: !1734)
!1771 = !DILocation(line: 639, column: 18, scope: !1734)
!1772 = !DILocation(line: 642, column: 7, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 642, column: 6)
!1774 = !DILocation(line: 642, column: 13, scope: !1773)
!1775 = !DILocation(line: 642, column: 6, scope: !1734)
!1776 = !DILocation(line: 643, column: 3, scope: !1773)
!1777 = !DILocation(line: 645, column: 9, scope: !1743)
!1778 = !DILocation(line: 645, column: 7, scope: !1743)
!1779 = !DILocation(line: 645, column: 14, scope: !1742)
!1780 = !DILocation(line: 645, column: 18, scope: !1742)
!1781 = !DILocation(line: 645, column: 25, scope: !1742)
!1782 = !DILocation(line: 645, column: 16, scope: !1742)
!1783 = !DILocation(line: 645, column: 2, scope: !1743)
!1784 = !DILocation(line: 646, column: 3, scope: !1741)
!1785 = !DILocation(line: 646, column: 21, scope: !1741)
!1786 = !DILocation(line: 646, column: 29, scope: !1741)
!1787 = !DILocation(line: 646, column: 35, scope: !1741)
!1788 = !DILocation(line: 646, column: 45, scope: !1741)
!1789 = !DILocation(line: 647, column: 3, scope: !1741)
!1790 = !DILocation(line: 647, column: 21, scope: !1741)
!1791 = !DILocation(line: 647, column: 30, scope: !1741)
!1792 = !DILocation(line: 647, column: 37, scope: !1741)
!1793 = !DILocation(line: 647, column: 47, scope: !1741)
!1794 = !DILocation(line: 649, column: 3, scope: !1741)
!1795 = !DILocation(line: 649, column: 9, scope: !1741)
!1796 = !DILocation(line: 649, column: 22, scope: !1741)
!1797 = !DILocation(line: 651, column: 21, scope: !1741)
!1798 = !DILocation(line: 651, column: 28, scope: !1741)
!1799 = !DILocation(line: 651, column: 3, scope: !1741)
!1800 = !DILocation(line: 651, column: 9, scope: !1741)
!1801 = !DILocation(line: 651, column: 19, scope: !1741)
!1802 = !DILocation(line: 652, column: 30, scope: !1741)
!1803 = !DILocation(line: 652, column: 37, scope: !1741)
!1804 = !DILocation(line: 652, column: 42, scope: !1741)
!1805 = !DILocation(line: 653, column: 5, scope: !1741)
!1806 = !DILocation(line: 653, column: 12, scope: !1741)
!1807 = !DILocation(line: 653, column: 17, scope: !1741)
!1808 = !DILocation(line: 653, column: 21, scope: !1741)
!1809 = !DILocation(line: 652, column: 22, scope: !1741)
!1810 = !DILocation(line: 652, column: 3, scope: !1741)
!1811 = !DILocation(line: 652, column: 9, scope: !1741)
!1812 = !DILocation(line: 652, column: 14, scope: !1741)
!1813 = !DILocation(line: 652, column: 20, scope: !1741)
!1814 = !DILocation(line: 655, column: 8, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 655, column: 7)
!1816 = !DILocation(line: 655, column: 14, scope: !1815)
!1817 = !DILocation(line: 655, column: 19, scope: !1815)
!1818 = !DILocation(line: 655, column: 7, scope: !1741)
!1819 = !DILocation(line: 656, column: 4, scope: !1815)
!1820 = !DILocation(line: 658, column: 20, scope: !1741)
!1821 = !DILocation(line: 658, column: 27, scope: !1741)
!1822 = !DILocation(line: 658, column: 32, scope: !1741)
!1823 = !DILocation(line: 658, column: 3, scope: !1741)
!1824 = !DILocation(line: 658, column: 9, scope: !1741)
!1825 = !DILocation(line: 658, column: 14, scope: !1741)
!1826 = !DILocation(line: 658, column: 18, scope: !1741)
!1827 = !DILocation(line: 660, column: 26, scope: !1741)
!1828 = !DILocation(line: 660, column: 32, scope: !1741)
!1829 = !DILocation(line: 660, column: 44, scope: !1741)
!1830 = !DILocation(line: 660, column: 51, scope: !1741)
!1831 = !DILocation(line: 661, column: 6, scope: !1741)
!1832 = !DILocation(line: 661, column: 12, scope: !1741)
!1833 = !DILocation(line: 660, column: 8, scope: !1741)
!1834 = !DILocation(line: 660, column: 6, scope: !1741)
!1835 = !DILocation(line: 662, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 662, column: 7)
!1837 = !DILocation(line: 662, column: 7, scope: !1741)
!1838 = !DILocation(line: 663, column: 4, scope: !1836)
!1839 = !DILocation(line: 665, column: 26, scope: !1741)
!1840 = !DILocation(line: 665, column: 32, scope: !1741)
!1841 = !DILocation(line: 665, column: 45, scope: !1741)
!1842 = !DILocation(line: 665, column: 52, scope: !1741)
!1843 = !DILocation(line: 666, column: 6, scope: !1741)
!1844 = !DILocation(line: 666, column: 12, scope: !1741)
!1845 = !DILocation(line: 665, column: 8, scope: !1741)
!1846 = !DILocation(line: 665, column: 6, scope: !1741)
!1847 = !DILocation(line: 667, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 667, column: 7)
!1849 = !DILocation(line: 667, column: 7, scope: !1741)
!1850 = !DILocation(line: 668, column: 4, scope: !1848)
!1851 = !DILocation(line: 669, column: 2, scope: !1742)
!1852 = !DILocation(line: 669, column: 2, scope: !1741)
!1853 = !DILocation(line: 645, column: 41, scope: !1742)
!1854 = !DILocation(line: 645, column: 2, scope: !1742)
!1855 = distinct !{!1855, !1783, !1856, !409, !410}
!1856 = !DILocation(line: 669, column: 2, scope: !1743)
!1857 = !DILocation(line: 671, column: 2, scope: !1734)
!1858 = !DILocation(line: 673, column: 1, scope: !1734)
!1859 = !DILocation(line: 674, column: 17, scope: !1734)
!1860 = !DILocation(line: 674, column: 23, scope: !1734)
!1861 = !DILocation(line: 674, column: 2, scope: !1734)
!1862 = !DILocation(line: 675, column: 20, scope: !1734)
!1863 = !DILocation(line: 675, column: 2, scope: !1734)
!1864 = !DILocation(line: 676, column: 2, scope: !1734)
!1865 = !DILocation(line: 677, column: 1, scope: !1734)
!1866 = distinct !DISubprogram(name: "cond_evaluate_expr", scope: !2, file: !2, line: 24, type: !1867, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !1870)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!94, !89, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!1870 = !{!1871, !1872, !1873, !1874, !1878, !1879}
!1871 = !DILocalVariable(name: "p", arg: 1, scope: !1866, file: !2, line: 24, type: !89)
!1872 = !DILocalVariable(name: "expr", arg: 2, scope: !1866, file: !2, line: 24, type: !1869)
!1873 = !DILocalVariable(name: "i", scope: !1866, file: !2, line: 26, type: !69)
!1874 = !DILocalVariable(name: "s", scope: !1866, file: !2, line: 27, type: !1875)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 320, elements: !1876)
!1876 = !{!1877}
!1877 = !DISubrange(count: 10)
!1878 = !DILocalVariable(name: "sp", scope: !1866, file: !2, line: 28, type: !94)
!1879 = !DILocalVariable(name: "node", scope: !1880, file: !2, line: 34, type: !280)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !2, line: 33, column: 34)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !2, line: 33, column: 2)
!1882 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 33, column: 2)
!1883 = !DILocation(line: 24, column: 48, scope: !1866)
!1884 = !DILocation(line: 24, column: 69, scope: !1866)
!1885 = !DILocation(line: 26, column: 2, scope: !1866)
!1886 = !DILocation(line: 26, column: 6, scope: !1866)
!1887 = !DILocation(line: 27, column: 2, scope: !1866)
!1888 = !DILocation(line: 27, column: 6, scope: !1866)
!1889 = !DILocation(line: 28, column: 2, scope: !1866)
!1890 = !DILocation(line: 28, column: 6, scope: !1866)
!1891 = !DILocation(line: 30, column: 6, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 30, column: 6)
!1893 = !DILocation(line: 30, column: 12, scope: !1892)
!1894 = !DILocation(line: 30, column: 16, scope: !1892)
!1895 = !DILocation(line: 30, column: 6, scope: !1866)
!1896 = !DILocation(line: 31, column: 3, scope: !1892)
!1897 = !DILocation(line: 33, column: 9, scope: !1882)
!1898 = !DILocation(line: 33, column: 7, scope: !1882)
!1899 = !DILocation(line: 33, column: 14, scope: !1881)
!1900 = !DILocation(line: 33, column: 18, scope: !1881)
!1901 = !DILocation(line: 33, column: 24, scope: !1881)
!1902 = !DILocation(line: 33, column: 16, scope: !1881)
!1903 = !DILocation(line: 33, column: 2, scope: !1882)
!1904 = !DILocation(line: 34, column: 3, scope: !1880)
!1905 = !DILocation(line: 34, column: 26, scope: !1880)
!1906 = !DILocation(line: 34, column: 34, scope: !1880)
!1907 = !DILocation(line: 34, column: 40, scope: !1880)
!1908 = !DILocation(line: 34, column: 46, scope: !1880)
!1909 = !DILocation(line: 36, column: 11, scope: !1880)
!1910 = !DILocation(line: 36, column: 17, scope: !1880)
!1911 = !DILocation(line: 36, column: 3, scope: !1880)
!1912 = !DILocation(line: 38, column: 8, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !2, line: 38, column: 8)
!1914 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 36, column: 28)
!1915 = !DILocation(line: 38, column: 11, scope: !1913)
!1916 = !DILocation(line: 38, column: 8, scope: !1914)
!1917 = !DILocation(line: 39, column: 5, scope: !1913)
!1918 = !DILocation(line: 40, column: 6, scope: !1914)
!1919 = !DILocation(line: 41, column: 12, scope: !1914)
!1920 = !DILocation(line: 41, column: 15, scope: !1914)
!1921 = !DILocation(line: 41, column: 34, scope: !1914)
!1922 = !DILocation(line: 41, column: 40, scope: !1914)
!1923 = !DILocation(line: 41, column: 48, scope: !1914)
!1924 = !DILocation(line: 41, column: 54, scope: !1914)
!1925 = !DILocation(line: 41, column: 6, scope: !1914)
!1926 = !DILocation(line: 41, column: 4, scope: !1914)
!1927 = !DILocation(line: 41, column: 10, scope: !1914)
!1928 = !DILocation(line: 42, column: 4, scope: !1914)
!1929 = !DILocation(line: 44, column: 8, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1914, file: !2, line: 44, column: 8)
!1931 = !DILocation(line: 44, column: 11, scope: !1930)
!1932 = !DILocation(line: 44, column: 8, scope: !1914)
!1933 = !DILocation(line: 45, column: 5, scope: !1930)
!1934 = !DILocation(line: 46, column: 15, scope: !1914)
!1935 = !DILocation(line: 46, column: 13, scope: !1914)
!1936 = !DILocation(line: 46, column: 12, scope: !1914)
!1937 = !DILocation(line: 46, column: 6, scope: !1914)
!1938 = !DILocation(line: 46, column: 4, scope: !1914)
!1939 = !DILocation(line: 46, column: 10, scope: !1914)
!1940 = !DILocation(line: 47, column: 4, scope: !1914)
!1941 = !DILocation(line: 49, column: 8, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1914, file: !2, line: 49, column: 8)
!1943 = !DILocation(line: 49, column: 11, scope: !1942)
!1944 = !DILocation(line: 49, column: 8, scope: !1914)
!1945 = !DILocation(line: 50, column: 5, scope: !1942)
!1946 = !DILocation(line: 51, column: 6, scope: !1914)
!1947 = !DILocation(line: 52, column: 15, scope: !1914)
!1948 = !DILocation(line: 52, column: 18, scope: !1914)
!1949 = !DILocation(line: 52, column: 13, scope: !1914)
!1950 = !DILocation(line: 52, column: 6, scope: !1914)
!1951 = !DILocation(line: 52, column: 4, scope: !1914)
!1952 = !DILocation(line: 52, column: 10, scope: !1914)
!1953 = !DILocation(line: 53, column: 4, scope: !1914)
!1954 = !DILocation(line: 55, column: 8, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1914, file: !2, line: 55, column: 8)
!1956 = !DILocation(line: 55, column: 11, scope: !1955)
!1957 = !DILocation(line: 55, column: 8, scope: !1914)
!1958 = !DILocation(line: 56, column: 5, scope: !1955)
!1959 = !DILocation(line: 57, column: 6, scope: !1914)
!1960 = !DILocation(line: 58, column: 15, scope: !1914)
!1961 = !DILocation(line: 58, column: 18, scope: !1914)
!1962 = !DILocation(line: 58, column: 13, scope: !1914)
!1963 = !DILocation(line: 58, column: 6, scope: !1914)
!1964 = !DILocation(line: 58, column: 4, scope: !1914)
!1965 = !DILocation(line: 58, column: 10, scope: !1914)
!1966 = !DILocation(line: 59, column: 4, scope: !1914)
!1967 = !DILocation(line: 61, column: 8, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1914, file: !2, line: 61, column: 8)
!1969 = !DILocation(line: 61, column: 11, scope: !1968)
!1970 = !DILocation(line: 61, column: 8, scope: !1914)
!1971 = !DILocation(line: 62, column: 5, scope: !1968)
!1972 = !DILocation(line: 63, column: 6, scope: !1914)
!1973 = !DILocation(line: 64, column: 15, scope: !1914)
!1974 = !DILocation(line: 64, column: 18, scope: !1914)
!1975 = !DILocation(line: 64, column: 13, scope: !1914)
!1976 = !DILocation(line: 64, column: 6, scope: !1914)
!1977 = !DILocation(line: 64, column: 4, scope: !1914)
!1978 = !DILocation(line: 64, column: 10, scope: !1914)
!1979 = !DILocation(line: 65, column: 4, scope: !1914)
!1980 = !DILocation(line: 67, column: 8, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1914, file: !2, line: 67, column: 8)
!1982 = !DILocation(line: 67, column: 11, scope: !1981)
!1983 = !DILocation(line: 67, column: 8, scope: !1914)
!1984 = !DILocation(line: 68, column: 5, scope: !1981)
!1985 = !DILocation(line: 69, column: 6, scope: !1914)
!1986 = !DILocation(line: 70, column: 15, scope: !1914)
!1987 = !DILocation(line: 70, column: 13, scope: !1914)
!1988 = !DILocation(line: 70, column: 24, scope: !1914)
!1989 = !DILocation(line: 70, column: 27, scope: !1914)
!1990 = !DILocation(line: 70, column: 22, scope: !1914)
!1991 = !DILocation(line: 70, column: 19, scope: !1914)
!1992 = !DILocation(line: 70, column: 6, scope: !1914)
!1993 = !DILocation(line: 70, column: 4, scope: !1914)
!1994 = !DILocation(line: 70, column: 10, scope: !1914)
!1995 = !DILocation(line: 71, column: 4, scope: !1914)
!1996 = !DILocation(line: 73, column: 8, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1914, file: !2, line: 73, column: 8)
!1998 = !DILocation(line: 73, column: 11, scope: !1997)
!1999 = !DILocation(line: 73, column: 8, scope: !1914)
!2000 = !DILocation(line: 74, column: 5, scope: !1997)
!2001 = !DILocation(line: 75, column: 6, scope: !1914)
!2002 = !DILocation(line: 76, column: 15, scope: !1914)
!2003 = !DILocation(line: 76, column: 13, scope: !1914)
!2004 = !DILocation(line: 76, column: 24, scope: !1914)
!2005 = !DILocation(line: 76, column: 27, scope: !1914)
!2006 = !DILocation(line: 76, column: 22, scope: !1914)
!2007 = !DILocation(line: 76, column: 19, scope: !1914)
!2008 = !DILocation(line: 76, column: 6, scope: !1914)
!2009 = !DILocation(line: 76, column: 4, scope: !1914)
!2010 = !DILocation(line: 76, column: 10, scope: !1914)
!2011 = !DILocation(line: 77, column: 4, scope: !1914)
!2012 = !DILocation(line: 79, column: 4, scope: !1914)
!2013 = !DILocation(line: 81, column: 2, scope: !1881)
!2014 = !DILocation(line: 81, column: 2, scope: !1880)
!2015 = !DILocation(line: 33, column: 30, scope: !1881)
!2016 = !DILocation(line: 33, column: 2, scope: !1881)
!2017 = distinct !{!2017, !1903, !2018, !409, !410}
!2018 = !DILocation(line: 81, column: 2, scope: !1882)
!2019 = !DILocation(line: 82, column: 9, scope: !1866)
!2020 = !DILocation(line: 82, column: 2, scope: !1866)
!2021 = !DILocation(line: 83, column: 1, scope: !1866)
!2022 = !DISubprogram(name: "_printk", scope: !2023, file: !2023, line: 153, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2023 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!94, !1233, null}
!2026 = distinct !DISubprogram(name: "cond_node_destroy", scope: !2, file: !2, line: 140, type: !2027, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !271}
!2029 = !{!2030}
!2030 = !DILocalVariable(name: "node", arg: 1, scope: !2026, file: !2, line: 140, type: !271)
!2031 = !DILocation(line: 140, column: 49, scope: !2026)
!2032 = !DILocation(line: 142, column: 8, scope: !2026)
!2033 = !DILocation(line: 142, column: 14, scope: !2026)
!2034 = !DILocation(line: 142, column: 19, scope: !2026)
!2035 = !DILocation(line: 142, column: 2, scope: !2026)
!2036 = !DILocation(line: 144, column: 8, scope: !2026)
!2037 = !DILocation(line: 144, column: 14, scope: !2026)
!2038 = !DILocation(line: 144, column: 24, scope: !2026)
!2039 = !DILocation(line: 144, column: 2, scope: !2026)
!2040 = !DILocation(line: 145, column: 8, scope: !2026)
!2041 = !DILocation(line: 145, column: 14, scope: !2026)
!2042 = !DILocation(line: 145, column: 25, scope: !2026)
!2043 = !DILocation(line: 145, column: 2, scope: !2026)
!2044 = !DILocation(line: 146, column: 1, scope: !2026)
!2045 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2046, file: !2046, line: 51, type: !2047, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !2051)
!2046 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!2049, !2049}
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !64, line: 35, baseType: !2050)
!2050 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!2051 = !{!2052}
!2052 = !DILocalVariable(name: "overflow", arg: 1, scope: !2045, file: !2046, line: 51, type: !2049)
!2053 = !DILocation(line: 51, column: 60, scope: !2045)
!2054 = !DILocation(line: 53, column: 9, scope: !2045)
!2055 = !{i8 0, i8 2}
!2056 = !{}
!2057 = !DILocation(line: 53, column: 2, scope: !2045)
!2058 = !DISubprogram(name: "__kmalloc", scope: !9, file: !9, line: 488, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2059 = !DISubprogram(name: "kmalloc_large", scope: !9, file: !9, line: 531, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2060 = distinct !DISubprogram(name: "__kmalloc_index", scope: !9, file: !9, line: 444, type: !2061, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !2063)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!49, !376, !2049}
!2063 = !{!2064, !2065}
!2064 = !DILocalVariable(name: "size", arg: 1, scope: !2060, file: !9, line: 444, type: !376)
!2065 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2060, file: !9, line: 445, type: !2049)
!2066 = !DILocation(line: 444, column: 60, scope: !2060)
!2067 = !DILocation(line: 445, column: 16, scope: !2060)
!2068 = !DILocation(line: 447, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 447, column: 6)
!2070 = !DILocation(line: 447, column: 6, scope: !2060)
!2071 = !DILocation(line: 448, column: 3, scope: !2069)
!2072 = !DILocation(line: 450, column: 6, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 450, column: 6)
!2074 = !DILocation(line: 450, column: 11, scope: !2073)
!2075 = !DILocation(line: 450, column: 6, scope: !2060)
!2076 = !DILocation(line: 451, column: 3, scope: !2073)
!2077 = !DILocation(line: 453, column: 32, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 453, column: 6)
!2079 = !DILocation(line: 453, column: 37, scope: !2078)
!2080 = !DILocation(line: 453, column: 42, scope: !2078)
!2081 = !DILocation(line: 453, column: 45, scope: !2078)
!2082 = !DILocation(line: 453, column: 50, scope: !2078)
!2083 = !DILocation(line: 453, column: 6, scope: !2060)
!2084 = !DILocation(line: 454, column: 3, scope: !2078)
!2085 = !DILocation(line: 455, column: 32, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 455, column: 6)
!2087 = !DILocation(line: 455, column: 37, scope: !2086)
!2088 = !DILocation(line: 455, column: 43, scope: !2086)
!2089 = !DILocation(line: 455, column: 46, scope: !2086)
!2090 = !DILocation(line: 455, column: 51, scope: !2086)
!2091 = !DILocation(line: 455, column: 6, scope: !2060)
!2092 = !DILocation(line: 456, column: 3, scope: !2086)
!2093 = !DILocation(line: 457, column: 6, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 457, column: 6)
!2095 = !DILocation(line: 457, column: 11, scope: !2094)
!2096 = !DILocation(line: 457, column: 6, scope: !2060)
!2097 = !DILocation(line: 457, column: 26, scope: !2094)
!2098 = !DILocation(line: 458, column: 6, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 458, column: 6)
!2100 = !DILocation(line: 458, column: 11, scope: !2099)
!2101 = !DILocation(line: 458, column: 6, scope: !2060)
!2102 = !DILocation(line: 458, column: 26, scope: !2099)
!2103 = !DILocation(line: 459, column: 6, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 459, column: 6)
!2105 = !DILocation(line: 459, column: 11, scope: !2104)
!2106 = !DILocation(line: 459, column: 6, scope: !2060)
!2107 = !DILocation(line: 459, column: 26, scope: !2104)
!2108 = !DILocation(line: 460, column: 6, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 460, column: 6)
!2110 = !DILocation(line: 460, column: 11, scope: !2109)
!2111 = !DILocation(line: 460, column: 6, scope: !2060)
!2112 = !DILocation(line: 460, column: 26, scope: !2109)
!2113 = !DILocation(line: 461, column: 6, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 461, column: 6)
!2115 = !DILocation(line: 461, column: 11, scope: !2114)
!2116 = !DILocation(line: 461, column: 6, scope: !2060)
!2117 = !DILocation(line: 461, column: 26, scope: !2114)
!2118 = !DILocation(line: 462, column: 6, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 462, column: 6)
!2120 = !DILocation(line: 462, column: 11, scope: !2119)
!2121 = !DILocation(line: 462, column: 6, scope: !2060)
!2122 = !DILocation(line: 462, column: 26, scope: !2119)
!2123 = !DILocation(line: 463, column: 6, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 463, column: 6)
!2125 = !DILocation(line: 463, column: 11, scope: !2124)
!2126 = !DILocation(line: 463, column: 6, scope: !2060)
!2127 = !DILocation(line: 463, column: 26, scope: !2124)
!2128 = !DILocation(line: 464, column: 6, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 464, column: 6)
!2130 = !DILocation(line: 464, column: 11, scope: !2129)
!2131 = !DILocation(line: 464, column: 6, scope: !2060)
!2132 = !DILocation(line: 464, column: 26, scope: !2129)
!2133 = !DILocation(line: 465, column: 6, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 465, column: 6)
!2135 = !DILocation(line: 465, column: 11, scope: !2134)
!2136 = !DILocation(line: 465, column: 6, scope: !2060)
!2137 = !DILocation(line: 465, column: 26, scope: !2134)
!2138 = !DILocation(line: 466, column: 6, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 466, column: 6)
!2140 = !DILocation(line: 466, column: 11, scope: !2139)
!2141 = !DILocation(line: 466, column: 6, scope: !2060)
!2142 = !DILocation(line: 466, column: 26, scope: !2139)
!2143 = !DILocation(line: 467, column: 6, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 467, column: 6)
!2145 = !DILocation(line: 467, column: 11, scope: !2144)
!2146 = !DILocation(line: 467, column: 6, scope: !2060)
!2147 = !DILocation(line: 467, column: 26, scope: !2144)
!2148 = !DILocation(line: 468, column: 6, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 468, column: 6)
!2150 = !DILocation(line: 468, column: 11, scope: !2149)
!2151 = !DILocation(line: 468, column: 6, scope: !2060)
!2152 = !DILocation(line: 468, column: 26, scope: !2149)
!2153 = !DILocation(line: 469, column: 6, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 469, column: 6)
!2155 = !DILocation(line: 469, column: 11, scope: !2154)
!2156 = !DILocation(line: 469, column: 6, scope: !2060)
!2157 = !DILocation(line: 469, column: 26, scope: !2154)
!2158 = !DILocation(line: 470, column: 6, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 470, column: 6)
!2160 = !DILocation(line: 470, column: 11, scope: !2159)
!2161 = !DILocation(line: 470, column: 6, scope: !2060)
!2162 = !DILocation(line: 470, column: 26, scope: !2159)
!2163 = !DILocation(line: 471, column: 6, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 471, column: 6)
!2165 = !DILocation(line: 471, column: 11, scope: !2164)
!2166 = !DILocation(line: 471, column: 6, scope: !2060)
!2167 = !DILocation(line: 471, column: 26, scope: !2164)
!2168 = !DILocation(line: 472, column: 6, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 472, column: 6)
!2170 = !DILocation(line: 472, column: 11, scope: !2169)
!2171 = !DILocation(line: 472, column: 6, scope: !2060)
!2172 = !DILocation(line: 472, column: 26, scope: !2169)
!2173 = !DILocation(line: 473, column: 6, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 473, column: 6)
!2175 = !DILocation(line: 473, column: 11, scope: !2174)
!2176 = !DILocation(line: 473, column: 6, scope: !2060)
!2177 = !DILocation(line: 473, column: 26, scope: !2174)
!2178 = !DILocation(line: 474, column: 6, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 474, column: 6)
!2180 = !DILocation(line: 474, column: 11, scope: !2179)
!2181 = !DILocation(line: 474, column: 6, scope: !2060)
!2182 = !DILocation(line: 474, column: 27, scope: !2179)
!2183 = !DILocation(line: 475, column: 6, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 475, column: 6)
!2185 = !DILocation(line: 475, column: 11, scope: !2184)
!2186 = !DILocation(line: 475, column: 6, scope: !2060)
!2187 = !DILocation(line: 475, column: 32, scope: !2184)
!2188 = !DILocation(line: 477, column: 50, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2060, file: !9, line: 477, column: 6)
!2190 = !DILocation(line: 477, column: 6, scope: !2060)
!2191 = !DILocation(line: 478, column: 3, scope: !2189)
!2192 = !DILocation(line: 478, column: 3, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !9, line: 478, column: 3)
!2194 = distinct !DILexicalBlock(scope: !2189, file: !9, line: 478, column: 3)
!2195 = !{i32 -2143546220}
!2196 = !DILocation(line: 478, column: 3, scope: !2194)
!2197 = !DILocation(line: 480, column: 3, scope: !2189)
!2198 = !DILocation(line: 480, column: 3, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2189, file: !9, line: 480, column: 3)
!2200 = !DILocation(line: 480, column: 3, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2199, file: !9, line: 480, column: 3)
!2202 = !DILocation(line: 480, column: 3, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !9, line: 480, column: 3)
!2204 = !{i64 2151421279, i64 2151421308, i64 2151421354, i64 2151421412, i64 2151421466, i64 2151421520, i64 2151421575, i64 2151421606}
!2205 = !DILocation(line: 483, column: 2, scope: !2060)
!2206 = !DILocation(line: 484, column: 1, scope: !2060)
!2207 = !DISubprogram(name: "kmalloc_trace", scope: !9, file: !9, line: 525, type: !2208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!71, !2210, !63, !376}
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2212, line: 11, flags: DIFlagFwdDecl)
!2212 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2213 = distinct !DISubprogram(name: "kmalloc_type", scope: !9, file: !9, line: 401, type: !2214, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!53, !63, !75}
!2216 = !{!2217, !2218}
!2217 = !DILocalVariable(name: "flags", arg: 1, scope: !2213, file: !9, line: 401, type: !63)
!2218 = !DILocalVariable(name: "caller", arg: 2, scope: !2213, file: !9, line: 401, type: !75)
!2219 = !DILocation(line: 401, column: 67, scope: !2213)
!2220 = !DILocation(line: 401, column: 88, scope: !2213)
!2221 = !DILocation(line: 407, column: 6, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2213, file: !9, line: 407, column: 6)
!2223 = !DILocation(line: 407, column: 6, scope: !2213)
!2224 = !DILocation(line: 413, column: 3, scope: !2222)
!2225 = !DILocation(line: 423, column: 38, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2213, file: !9, line: 423, column: 6)
!2227 = !DILocation(line: 423, column: 44, scope: !2226)
!2228 = !DILocation(line: 423, column: 6, scope: !2213)
!2229 = !DILocation(line: 424, column: 3, scope: !2226)
!2230 = !DILocation(line: 426, column: 3, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2213, file: !9, line: 425, column: 6)
!2232 = !DILocation(line: 429, column: 1, scope: !2213)
!2233 = !DISubprogram(name: "__compiletime_assert_117", scope: !9, file: !9, line: 478, type: !2234, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null}
!2236 = distinct !DISubprogram(name: "expr_node_isvalid", scope: !2, file: !2, line: 362, type: !2237, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!94, !89, !280}
!2239 = !{!2240, !2241}
!2240 = !DILocalVariable(name: "p", arg: 1, scope: !2236, file: !2, line: 362, type: !89)
!2241 = !DILocalVariable(name: "expr", arg: 2, scope: !2236, file: !2, line: 362, type: !280)
!2242 = !DILocation(line: 362, column: 47, scope: !2236)
!2243 = !DILocation(line: 362, column: 73, scope: !2236)
!2244 = !DILocation(line: 364, column: 6, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 364, column: 6)
!2246 = !DILocation(line: 364, column: 12, scope: !2245)
!2247 = !DILocation(line: 364, column: 22, scope: !2245)
!2248 = !DILocation(line: 364, column: 27, scope: !2245)
!2249 = !DILocation(line: 364, column: 30, scope: !2245)
!2250 = !DILocation(line: 364, column: 36, scope: !2245)
!2251 = !DILocation(line: 364, column: 46, scope: !2245)
!2252 = !DILocation(line: 364, column: 6, scope: !2236)
!2253 = !DILocation(line: 365, column: 3, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 365, column: 3)
!2255 = distinct !DILexicalBlock(scope: !2245, file: !2, line: 364, column: 59)
!2256 = !DILocation(line: 365, column: 3, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !2, line: 365, column: 3)
!2258 = !DILocation(line: 366, column: 3, scope: !2255)
!2259 = !DILocation(line: 369, column: 6, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2236, file: !2, line: 369, column: 6)
!2261 = !DILocation(line: 369, column: 12, scope: !2260)
!2262 = !DILocation(line: 369, column: 22, scope: !2260)
!2263 = !DILocation(line: 369, column: 25, scope: !2260)
!2264 = !DILocation(line: 369, column: 33, scope: !2260)
!2265 = !DILocation(line: 369, column: 20, scope: !2260)
!2266 = !DILocation(line: 369, column: 6, scope: !2236)
!2267 = !DILocation(line: 370, column: 3, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 370, column: 3)
!2269 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 369, column: 40)
!2270 = !DILocation(line: 370, column: 3, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2268, file: !2, line: 370, column: 3)
!2272 = !DILocation(line: 371, column: 3, scope: !2269)
!2273 = !DILocation(line: 373, column: 2, scope: !2236)
!2274 = !DILocation(line: 374, column: 1, scope: !2236)
!2275 = distinct !DISubprogram(name: "cond_read_av_list", scope: !2, file: !2, line: 324, type: !2276, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !2279)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!94, !89, !71, !2278, !2278}
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!2279 = !{!2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288}
!2280 = !DILocalVariable(name: "p", arg: 1, scope: !2275, file: !2, line: 324, type: !89)
!2281 = !DILocalVariable(name: "fp", arg: 2, scope: !2275, file: !2, line: 324, type: !71)
!2282 = !DILocalVariable(name: "list", arg: 3, scope: !2275, file: !2, line: 325, type: !2278)
!2283 = !DILocalVariable(name: "other", arg: 4, scope: !2275, file: !2, line: 326, type: !2278)
!2284 = !DILocalVariable(name: "rc", scope: !2275, file: !2, line: 328, type: !94)
!2285 = !DILocalVariable(name: "buf", scope: !2275, file: !2, line: 329, type: !937)
!2286 = !DILocalVariable(name: "i", scope: !2275, file: !2, line: 330, type: !69)
!2287 = !DILocalVariable(name: "len", scope: !2275, file: !2, line: 330, type: !69)
!2288 = !DILocalVariable(name: "data", scope: !2275, file: !2, line: 331, type: !2289)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cond_insertf_data", file: !2, line: 253, size: 192, elements: !2290)
!2290 = !{!2291, !2292, !2293}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2289, file: !2, line: 254, baseType: !89, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2289, file: !2, line: 255, baseType: !222, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !2289, file: !2, line: 256, baseType: !2278, size: 64, offset: 128)
!2294 = !DILocation(line: 324, column: 47, scope: !2275)
!2295 = !DILocation(line: 324, column: 56, scope: !2275)
!2296 = !DILocation(line: 325, column: 30, scope: !2275)
!2297 = !DILocation(line: 326, column: 30, scope: !2275)
!2298 = !DILocation(line: 328, column: 2, scope: !2275)
!2299 = !DILocation(line: 328, column: 6, scope: !2275)
!2300 = !DILocation(line: 329, column: 2, scope: !2275)
!2301 = !DILocation(line: 329, column: 9, scope: !2275)
!2302 = !DILocation(line: 330, column: 2, scope: !2275)
!2303 = !DILocation(line: 330, column: 6, scope: !2275)
!2304 = !DILocation(line: 330, column: 9, scope: !2275)
!2305 = !DILocation(line: 331, column: 2, scope: !2275)
!2306 = !DILocation(line: 331, column: 27, scope: !2275)
!2307 = !DILocation(line: 333, column: 18, scope: !2275)
!2308 = !DILocation(line: 333, column: 23, scope: !2275)
!2309 = !DILocation(line: 333, column: 7, scope: !2275)
!2310 = !DILocation(line: 333, column: 5, scope: !2275)
!2311 = !DILocation(line: 334, column: 6, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2275, file: !2, line: 334, column: 6)
!2313 = !DILocation(line: 334, column: 6, scope: !2275)
!2314 = !DILocation(line: 335, column: 10, scope: !2312)
!2315 = !DILocation(line: 335, column: 3, scope: !2312)
!2316 = !DILocation(line: 337, column: 8, scope: !2275)
!2317 = !DILocation(line: 337, column: 6, scope: !2275)
!2318 = !DILocation(line: 338, column: 6, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2275, file: !2, line: 338, column: 6)
!2320 = !DILocation(line: 338, column: 10, scope: !2319)
!2321 = !DILocation(line: 338, column: 6, scope: !2275)
!2322 = !DILocation(line: 339, column: 3, scope: !2319)
!2323 = !DILocation(line: 341, column: 24, scope: !2275)
!2324 = !DILocation(line: 341, column: 16, scope: !2275)
!2325 = !DILocation(line: 341, column: 2, scope: !2275)
!2326 = !DILocation(line: 341, column: 8, scope: !2275)
!2327 = !DILocation(line: 341, column: 14, scope: !2275)
!2328 = !DILocation(line: 342, column: 7, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2275, file: !2, line: 342, column: 6)
!2330 = !DILocation(line: 342, column: 13, scope: !2329)
!2331 = !DILocation(line: 342, column: 6, scope: !2275)
!2332 = !DILocation(line: 343, column: 3, scope: !2329)
!2333 = !DILocation(line: 345, column: 11, scope: !2275)
!2334 = !DILocation(line: 345, column: 7, scope: !2275)
!2335 = !DILocation(line: 345, column: 9, scope: !2275)
!2336 = !DILocation(line: 346, column: 15, scope: !2275)
!2337 = !DILocation(line: 346, column: 7, scope: !2275)
!2338 = !DILocation(line: 346, column: 13, scope: !2275)
!2339 = !DILocation(line: 347, column: 9, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2275, file: !2, line: 347, column: 2)
!2341 = !DILocation(line: 347, column: 7, scope: !2340)
!2342 = !DILocation(line: 347, column: 14, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !2, line: 347, column: 2)
!2344 = !DILocation(line: 347, column: 18, scope: !2343)
!2345 = !DILocation(line: 347, column: 16, scope: !2343)
!2346 = !DILocation(line: 347, column: 2, scope: !2340)
!2347 = !DILocation(line: 348, column: 15, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2343, file: !2, line: 347, column: 28)
!2349 = !DILocation(line: 348, column: 21, scope: !2348)
!2350 = !DILocation(line: 348, column: 27, scope: !2348)
!2351 = !DILocation(line: 348, column: 8, scope: !2348)
!2352 = !DILocation(line: 348, column: 12, scope: !2348)
!2353 = !DILocation(line: 349, column: 25, scope: !2348)
!2354 = !DILocation(line: 349, column: 28, scope: !2348)
!2355 = !DILocation(line: 349, column: 43, scope: !2348)
!2356 = !DILocation(line: 349, column: 47, scope: !2348)
!2357 = !DILocation(line: 349, column: 8, scope: !2348)
!2358 = !DILocation(line: 349, column: 6, scope: !2348)
!2359 = !DILocation(line: 351, column: 7, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2348, file: !2, line: 351, column: 7)
!2361 = !DILocation(line: 351, column: 7, scope: !2348)
!2362 = !DILocation(line: 352, column: 10, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !2, line: 351, column: 11)
!2364 = !DILocation(line: 352, column: 16, scope: !2363)
!2365 = !DILocation(line: 352, column: 4, scope: !2363)
!2366 = !DILocation(line: 353, column: 4, scope: !2363)
!2367 = !DILocation(line: 353, column: 10, scope: !2363)
!2368 = !DILocation(line: 353, column: 16, scope: !2363)
!2369 = !DILocation(line: 354, column: 11, scope: !2363)
!2370 = !DILocation(line: 354, column: 4, scope: !2363)
!2371 = !DILocation(line: 356, column: 2, scope: !2348)
!2372 = !DILocation(line: 347, column: 24, scope: !2343)
!2373 = !DILocation(line: 347, column: 2, scope: !2343)
!2374 = distinct !{!2374, !2346, !2375, !409, !410}
!2375 = !DILocation(line: 356, column: 2, scope: !2340)
!2376 = !DILocation(line: 358, column: 14, scope: !2275)
!2377 = !DILocation(line: 358, column: 2, scope: !2275)
!2378 = !DILocation(line: 358, column: 8, scope: !2275)
!2379 = !DILocation(line: 358, column: 12, scope: !2275)
!2380 = !DILocation(line: 359, column: 2, scope: !2275)
!2381 = !DILocation(line: 360, column: 1, scope: !2275)
!2382 = !DISubprogram(name: "avtab_read_item", scope: !219, file: !219, line: 104, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!94, !541, !71, !89, !2385, !71}
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!94, !541, !1493, !2388, !71}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!2390 = distinct !DISubprogram(name: "cond_insertf", scope: !2, file: !2, line: 259, type: !2386, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !2391)
!2391 = !{!2392, !2393, !2394, !2395, !2396, !2398, !2399, !2400, !2401, !2402}
!2392 = !DILocalVariable(name: "a", arg: 1, scope: !2390, file: !2, line: 259, type: !541)
!2393 = !DILocalVariable(name: "k", arg: 2, scope: !2390, file: !2, line: 259, type: !1493)
!2394 = !DILocalVariable(name: "d", arg: 3, scope: !2390, file: !2, line: 260, type: !2388)
!2395 = !DILocalVariable(name: "ptr", arg: 4, scope: !2390, file: !2, line: 260, type: !71)
!2396 = !DILocalVariable(name: "data", scope: !2390, file: !2, line: 262, type: !2397)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2398 = !DILocalVariable(name: "p", scope: !2390, file: !2, line: 263, type: !89)
!2399 = !DILocalVariable(name: "other", scope: !2390, file: !2, line: 264, type: !2278)
!2400 = !DILocalVariable(name: "node_ptr", scope: !2390, file: !2, line: 265, type: !223)
!2401 = !DILocalVariable(name: "i", scope: !2390, file: !2, line: 266, type: !69)
!2402 = !DILocalVariable(name: "found", scope: !2390, file: !2, line: 267, type: !2049)
!2403 = !DILocation(line: 259, column: 39, scope: !2390)
!2404 = !DILocation(line: 259, column: 66, scope: !2390)
!2405 = !DILocation(line: 260, column: 30, scope: !2390)
!2406 = !DILocation(line: 260, column: 39, scope: !2390)
!2407 = !DILocation(line: 262, column: 2, scope: !2390)
!2408 = !DILocation(line: 262, column: 28, scope: !2390)
!2409 = !DILocation(line: 262, column: 35, scope: !2390)
!2410 = !DILocation(line: 263, column: 2, scope: !2390)
!2411 = !DILocation(line: 263, column: 19, scope: !2390)
!2412 = !DILocation(line: 263, column: 23, scope: !2390)
!2413 = !DILocation(line: 263, column: 29, scope: !2390)
!2414 = !DILocation(line: 264, column: 2, scope: !2390)
!2415 = !DILocation(line: 264, column: 23, scope: !2390)
!2416 = !DILocation(line: 264, column: 31, scope: !2390)
!2417 = !DILocation(line: 264, column: 37, scope: !2390)
!2418 = !DILocation(line: 265, column: 2, scope: !2390)
!2419 = !DILocation(line: 265, column: 21, scope: !2390)
!2420 = !DILocation(line: 266, column: 2, scope: !2390)
!2421 = !DILocation(line: 266, column: 6, scope: !2390)
!2422 = !DILocation(line: 267, column: 2, scope: !2390)
!2423 = !DILocation(line: 267, column: 7, scope: !2390)
!2424 = !DILocation(line: 274, column: 6, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2390, file: !2, line: 274, column: 6)
!2426 = !DILocation(line: 274, column: 9, scope: !2425)
!2427 = !DILocation(line: 274, column: 19, scope: !2425)
!2428 = !DILocation(line: 274, column: 6, scope: !2390)
!2429 = !DILocation(line: 275, column: 26, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !2, line: 275, column: 7)
!2431 = distinct !DILexicalBlock(scope: !2425, file: !2, line: 274, column: 33)
!2432 = !DILocation(line: 275, column: 29, scope: !2430)
!2433 = !DILocation(line: 275, column: 39, scope: !2430)
!2434 = !DILocation(line: 275, column: 7, scope: !2430)
!2435 = !DILocation(line: 275, column: 7, scope: !2431)
!2436 = !DILocation(line: 276, column: 4, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !2, line: 276, column: 4)
!2438 = distinct !DILexicalBlock(scope: !2430, file: !2, line: 275, column: 43)
!2439 = !DILocation(line: 276, column: 4, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !2, line: 276, column: 4)
!2441 = !DILocation(line: 277, column: 4, scope: !2438)
!2442 = !DILocation(line: 287, column: 7, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2431, file: !2, line: 287, column: 7)
!2444 = !DILocation(line: 287, column: 7, scope: !2431)
!2445 = !DILocation(line: 288, column: 34, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !2, line: 287, column: 14)
!2447 = !DILocation(line: 288, column: 37, scope: !2446)
!2448 = !DILocation(line: 288, column: 52, scope: !2446)
!2449 = !DILocation(line: 288, column: 15, scope: !2446)
!2450 = !DILocation(line: 288, column: 13, scope: !2446)
!2451 = !DILocation(line: 289, column: 8, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2446, file: !2, line: 289, column: 8)
!2453 = !DILocation(line: 289, column: 8, scope: !2446)
!2454 = !DILocation(line: 290, column: 32, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 290, column: 9)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !2, line: 289, column: 18)
!2457 = !DILocation(line: 290, column: 42, scope: !2455)
!2458 = !DILocation(line: 290, column: 45, scope: !2455)
!2459 = !DILocation(line: 290, column: 9, scope: !2455)
!2460 = !DILocation(line: 290, column: 9, scope: !2456)
!2461 = !DILocation(line: 291, column: 6, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !2, line: 291, column: 6)
!2463 = distinct !DILexicalBlock(scope: !2455, file: !2, line: 290, column: 57)
!2464 = !DILocation(line: 291, column: 6, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2462, file: !2, line: 291, column: 6)
!2466 = !DILocation(line: 292, column: 6, scope: !2463)
!2467 = !DILocation(line: 294, column: 11, scope: !2456)
!2468 = !DILocation(line: 295, column: 12, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 295, column: 5)
!2470 = !DILocation(line: 295, column: 10, scope: !2469)
!2471 = !DILocation(line: 295, column: 17, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2469, file: !2, line: 295, column: 5)
!2473 = !DILocation(line: 295, column: 21, scope: !2472)
!2474 = !DILocation(line: 295, column: 28, scope: !2472)
!2475 = !DILocation(line: 295, column: 19, scope: !2472)
!2476 = !DILocation(line: 295, column: 5, scope: !2469)
!2477 = !DILocation(line: 296, column: 10, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !2, line: 296, column: 10)
!2479 = distinct !DILexicalBlock(scope: !2472, file: !2, line: 295, column: 38)
!2480 = !DILocation(line: 296, column: 17, scope: !2478)
!2481 = !DILocation(line: 296, column: 23, scope: !2478)
!2482 = !DILocation(line: 296, column: 29, scope: !2478)
!2483 = !DILocation(line: 296, column: 26, scope: !2478)
!2484 = !DILocation(line: 296, column: 10, scope: !2479)
!2485 = !DILocation(line: 297, column: 13, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2478, file: !2, line: 296, column: 39)
!2487 = !DILocation(line: 298, column: 7, scope: !2486)
!2488 = !DILocation(line: 300, column: 5, scope: !2479)
!2489 = !DILocation(line: 295, column: 34, scope: !2472)
!2490 = !DILocation(line: 295, column: 5, scope: !2472)
!2491 = distinct !{!2491, !2476, !2492, !409, !410}
!2492 = !DILocation(line: 300, column: 5, scope: !2469)
!2493 = !DILocation(line: 301, column: 10, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2456, file: !2, line: 301, column: 9)
!2495 = !DILocation(line: 301, column: 9, scope: !2456)
!2496 = !DILocation(line: 302, column: 6, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 302, column: 6)
!2498 = distinct !DILexicalBlock(scope: !2494, file: !2, line: 301, column: 17)
!2499 = !DILocation(line: 302, column: 6, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !2, line: 302, column: 6)
!2501 = !DILocation(line: 303, column: 6, scope: !2498)
!2502 = !DILocation(line: 305, column: 4, scope: !2456)
!2503 = !DILocation(line: 306, column: 3, scope: !2446)
!2504 = !DILocation(line: 307, column: 27, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !2, line: 307, column: 8)
!2506 = distinct !DILexicalBlock(scope: !2443, file: !2, line: 306, column: 10)
!2507 = !DILocation(line: 307, column: 30, scope: !2505)
!2508 = !DILocation(line: 307, column: 45, scope: !2505)
!2509 = !DILocation(line: 307, column: 8, scope: !2505)
!2510 = !DILocation(line: 307, column: 8, scope: !2506)
!2511 = !DILocation(line: 308, column: 5, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !2, line: 308, column: 5)
!2513 = distinct !DILexicalBlock(scope: !2505, file: !2, line: 307, column: 49)
!2514 = !DILocation(line: 308, column: 5, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2512, file: !2, line: 308, column: 5)
!2516 = !DILocation(line: 309, column: 5, scope: !2513)
!2517 = !DILocation(line: 312, column: 2, scope: !2431)
!2518 = !DILocation(line: 314, column: 37, scope: !2390)
!2519 = !DILocation(line: 314, column: 40, scope: !2390)
!2520 = !DILocation(line: 314, column: 55, scope: !2390)
!2521 = !DILocation(line: 314, column: 58, scope: !2390)
!2522 = !DILocation(line: 314, column: 13, scope: !2390)
!2523 = !DILocation(line: 314, column: 11, scope: !2390)
!2524 = !DILocation(line: 315, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2390, file: !2, line: 315, column: 6)
!2526 = !DILocation(line: 315, column: 6, scope: !2390)
!2527 = !DILocation(line: 316, column: 3, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !2, line: 316, column: 3)
!2529 = distinct !DILexicalBlock(scope: !2525, file: !2, line: 315, column: 17)
!2530 = !DILocation(line: 316, column: 3, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2528, file: !2, line: 316, column: 3)
!2532 = !DILocation(line: 317, column: 3, scope: !2529)
!2533 = !DILocation(line: 320, column: 15, scope: !2390)
!2534 = !DILocation(line: 320, column: 3, scope: !2390)
!2535 = !DILocation(line: 320, column: 9, scope: !2390)
!2536 = !DILocation(line: 320, column: 13, scope: !2390)
!2537 = !DILocation(line: 321, column: 2, scope: !2390)
!2538 = !DILocation(line: 322, column: 1, scope: !2390)
!2539 = !DISubprogram(name: "avtab_insert_nonunique", scope: !219, file: !219, line: 113, type: !2540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!223, !541, !1493, !2388}
!2542 = distinct !DISubprogram(name: "cond_write_av_list", scope: !2, file: !2, line: 481, type: !2543, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !2545)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!94, !89, !2278, !834}
!2545 = !{!2546, !2547, !2548, !2549, !2550, !2551}
!2546 = !DILocalVariable(name: "p", arg: 1, scope: !2542, file: !2, line: 481, type: !89)
!2547 = !DILocalVariable(name: "list", arg: 2, scope: !2542, file: !2, line: 482, type: !2278)
!2548 = !DILocalVariable(name: "fp", arg: 3, scope: !2542, file: !2, line: 482, type: !834)
!2549 = !DILocalVariable(name: "buf", scope: !2542, file: !2, line: 484, type: !937)
!2550 = !DILocalVariable(name: "i", scope: !2542, file: !2, line: 485, type: !69)
!2551 = !DILocalVariable(name: "rc", scope: !2542, file: !2, line: 486, type: !94)
!2552 = !DILocation(line: 481, column: 48, scope: !2542)
!2553 = !DILocation(line: 482, column: 31, scope: !2542)
!2554 = !DILocation(line: 482, column: 57, scope: !2542)
!2555 = !DILocation(line: 484, column: 2, scope: !2542)
!2556 = !DILocation(line: 484, column: 9, scope: !2542)
!2557 = !DILocation(line: 485, column: 2, scope: !2542)
!2558 = !DILocation(line: 485, column: 6, scope: !2542)
!2559 = !DILocation(line: 486, column: 2, scope: !2542)
!2560 = !DILocation(line: 486, column: 6, scope: !2542)
!2561 = !DILocation(line: 488, column: 11, scope: !2542)
!2562 = !DILocation(line: 488, column: 2, scope: !2542)
!2563 = !DILocation(line: 488, column: 9, scope: !2542)
!2564 = !DILocation(line: 489, column: 17, scope: !2542)
!2565 = !DILocation(line: 489, column: 38, scope: !2542)
!2566 = !DILocation(line: 489, column: 7, scope: !2542)
!2567 = !DILocation(line: 489, column: 5, scope: !2542)
!2568 = !DILocation(line: 490, column: 6, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2542, file: !2, line: 490, column: 6)
!2570 = !DILocation(line: 490, column: 6, scope: !2542)
!2571 = !DILocation(line: 491, column: 10, scope: !2569)
!2572 = !DILocation(line: 491, column: 3, scope: !2569)
!2573 = !DILocation(line: 493, column: 9, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2542, file: !2, line: 493, column: 2)
!2575 = !DILocation(line: 493, column: 7, scope: !2574)
!2576 = !DILocation(line: 493, column: 14, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2574, file: !2, line: 493, column: 2)
!2578 = !DILocation(line: 493, column: 18, scope: !2577)
!2579 = !DILocation(line: 493, column: 24, scope: !2577)
!2580 = !DILocation(line: 493, column: 16, scope: !2577)
!2581 = !DILocation(line: 493, column: 2, scope: !2574)
!2582 = !DILocation(line: 494, column: 25, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2577, file: !2, line: 493, column: 34)
!2584 = !DILocation(line: 494, column: 28, scope: !2583)
!2585 = !DILocation(line: 494, column: 34, scope: !2583)
!2586 = !DILocation(line: 494, column: 40, scope: !2583)
!2587 = !DILocation(line: 494, column: 44, scope: !2583)
!2588 = !DILocation(line: 494, column: 8, scope: !2583)
!2589 = !DILocation(line: 494, column: 6, scope: !2583)
!2590 = !DILocation(line: 495, column: 7, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2583, file: !2, line: 495, column: 7)
!2592 = !DILocation(line: 495, column: 7, scope: !2583)
!2593 = !DILocation(line: 496, column: 11, scope: !2591)
!2594 = !DILocation(line: 496, column: 4, scope: !2591)
!2595 = !DILocation(line: 497, column: 2, scope: !2583)
!2596 = !DILocation(line: 493, column: 30, scope: !2577)
!2597 = !DILocation(line: 493, column: 2, scope: !2577)
!2598 = distinct !{!2598, !2581, !2599, !409, !410}
!2599 = !DILocation(line: 497, column: 2, scope: !2574)
!2600 = !DILocation(line: 499, column: 2, scope: !2542)
!2601 = !DILocation(line: 500, column: 1, scope: !2542)
!2602 = !DISubprogram(name: "avtab_write_item", scope: !219, file: !219, line: 110, type: !2603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!94, !89, !2605, !71}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!2607 = !DISubprogram(name: "hashtab_duplicate", scope: !102, file: !102, line: 139, type: !2608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!94, !1637, !1637, !2610, !1638, !71}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!94, !106, !106, !71}
!2613 = distinct !DISubprogram(name: "cond_bools_copy", scope: !2, file: !2, line: 686, type: !2611, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !2614)
!2614 = !{!2615, !2616, !2617, !2618}
!2615 = !DILocalVariable(name: "new", arg: 1, scope: !2613, file: !2, line: 686, type: !106)
!2616 = !DILocalVariable(name: "orig", arg: 2, scope: !2613, file: !2, line: 686, type: !106)
!2617 = !DILocalVariable(name: "args", arg: 3, scope: !2613, file: !2, line: 686, type: !71)
!2618 = !DILocalVariable(name: "datum", scope: !2613, file: !2, line: 688, type: !264)
!2619 = !DILocation(line: 686, column: 49, scope: !2613)
!2620 = !DILocation(line: 686, column: 75, scope: !2613)
!2621 = !DILocation(line: 686, column: 87, scope: !2613)
!2622 = !DILocation(line: 688, column: 2, scope: !2613)
!2623 = !DILocation(line: 688, column: 26, scope: !2613)
!2624 = !DILocation(line: 690, column: 18, scope: !2613)
!2625 = !DILocation(line: 690, column: 24, scope: !2613)
!2626 = !DILocation(line: 690, column: 10, scope: !2613)
!2627 = !DILocation(line: 690, column: 8, scope: !2613)
!2628 = !DILocation(line: 692, column: 7, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2613, file: !2, line: 692, column: 6)
!2630 = !DILocation(line: 692, column: 6, scope: !2613)
!2631 = !DILocation(line: 693, column: 3, scope: !2629)
!2632 = !DILocation(line: 695, column: 13, scope: !2613)
!2633 = !DILocation(line: 695, column: 19, scope: !2613)
!2634 = !DILocation(line: 695, column: 2, scope: !2613)
!2635 = !DILocation(line: 695, column: 7, scope: !2613)
!2636 = !DILocation(line: 695, column: 11, scope: !2613)
!2637 = !DILocation(line: 696, column: 15, scope: !2613)
!2638 = !DILocation(line: 696, column: 2, scope: !2613)
!2639 = !DILocation(line: 696, column: 7, scope: !2613)
!2640 = !DILocation(line: 696, column: 13, scope: !2613)
!2641 = !DILocation(line: 697, column: 2, scope: !2613)
!2642 = !DILocation(line: 698, column: 1, scope: !2613)
!2643 = distinct !DISubprogram(name: "cond_bools_index", scope: !2, file: !2, line: 700, type: !652, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !2644)
!2644 = !{!2645, !2646, !2647, !2648, !2649}
!2645 = !DILocalVariable(name: "key", arg: 1, scope: !2643, file: !2, line: 700, type: !71)
!2646 = !DILocalVariable(name: "datum", arg: 2, scope: !2643, file: !2, line: 700, type: !71)
!2647 = !DILocalVariable(name: "args", arg: 3, scope: !2643, file: !2, line: 700, type: !71)
!2648 = !DILocalVariable(name: "booldatum", scope: !2643, file: !2, line: 702, type: !264)
!2649 = !DILocalVariable(name: "cond_bool_array", scope: !2643, file: !2, line: 702, type: !263)
!2650 = !DILocation(line: 700, column: 35, scope: !2643)
!2651 = !DILocation(line: 700, column: 46, scope: !2643)
!2652 = !DILocation(line: 700, column: 59, scope: !2643)
!2653 = !DILocation(line: 702, column: 2, scope: !2643)
!2654 = !DILocation(line: 702, column: 26, scope: !2643)
!2655 = !DILocation(line: 702, column: 39, scope: !2643)
!2656 = !DILocation(line: 704, column: 14, scope: !2643)
!2657 = !DILocation(line: 704, column: 12, scope: !2643)
!2658 = !DILocation(line: 705, column: 20, scope: !2643)
!2659 = !DILocation(line: 705, column: 18, scope: !2643)
!2660 = !DILocation(line: 706, column: 42, scope: !2643)
!2661 = !DILocation(line: 706, column: 2, scope: !2643)
!2662 = !DILocation(line: 706, column: 18, scope: !2643)
!2663 = !DILocation(line: 706, column: 29, scope: !2643)
!2664 = !DILocation(line: 706, column: 35, scope: !2643)
!2665 = !DILocation(line: 706, column: 40, scope: !2643)
!2666 = !DILocation(line: 709, column: 1, scope: !2643)
!2667 = !DILocation(line: 708, column: 2, scope: !2643)
!2668 = !DISubprogram(name: "kmemdup", scope: !1230, file: !1230, line: 219, type: !2669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!71, !558, !376, !63}
!2671 = !DISubprogram(name: "avtab_alloc_dup", scope: !219, file: !219, line: 92, type: !2672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!94, !541, !2674}
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!2676 = distinct !DISubprogram(name: "cond_dup_av_list", scope: !2, file: !2, line: 604, type: !2677, scopeLine: 607, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !45, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!94, !2278, !2278, !541}
!2679 = !{!2680, !2681, !2682, !2683}
!2680 = !DILocalVariable(name: "new", arg: 1, scope: !2676, file: !2, line: 604, type: !2278)
!2681 = !DILocalVariable(name: "orig", arg: 2, scope: !2676, file: !2, line: 605, type: !2278)
!2682 = !DILocalVariable(name: "avtab", arg: 3, scope: !2676, file: !2, line: 606, type: !541)
!2683 = !DILocalVariable(name: "i", scope: !2676, file: !2, line: 608, type: !69)
!2684 = !DILocation(line: 604, column: 50, scope: !2676)
!2685 = !DILocation(line: 605, column: 25, scope: !2676)
!2686 = !DILocation(line: 606, column: 18, scope: !2676)
!2687 = !DILocation(line: 608, column: 2, scope: !2676)
!2688 = !DILocation(line: 608, column: 6, scope: !2676)
!2689 = !DILocation(line: 610, column: 9, scope: !2676)
!2690 = !DILocation(line: 610, column: 2, scope: !2676)
!2691 = !DILocation(line: 612, column: 23, scope: !2676)
!2692 = !DILocation(line: 612, column: 29, scope: !2676)
!2693 = !DILocation(line: 612, column: 15, scope: !2676)
!2694 = !DILocation(line: 612, column: 2, scope: !2676)
!2695 = !DILocation(line: 612, column: 7, scope: !2676)
!2696 = !DILocation(line: 612, column: 13, scope: !2676)
!2697 = !DILocation(line: 613, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2676, file: !2, line: 613, column: 6)
!2699 = !DILocation(line: 613, column: 12, scope: !2698)
!2700 = !DILocation(line: 613, column: 6, scope: !2676)
!2701 = !DILocation(line: 614, column: 3, scope: !2698)
!2702 = !DILocation(line: 616, column: 9, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2676, file: !2, line: 616, column: 2)
!2704 = !DILocation(line: 616, column: 7, scope: !2703)
!2705 = !DILocation(line: 616, column: 14, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !2, line: 616, column: 2)
!2707 = !DILocation(line: 616, column: 18, scope: !2706)
!2708 = !DILocation(line: 616, column: 24, scope: !2706)
!2709 = !DILocation(line: 616, column: 16, scope: !2706)
!2710 = !DILocation(line: 616, column: 2, scope: !2703)
!2711 = !DILocation(line: 617, column: 42, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2706, file: !2, line: 616, column: 34)
!2713 = !DILocation(line: 618, column: 15, scope: !2712)
!2714 = !DILocation(line: 618, column: 21, scope: !2712)
!2715 = !DILocation(line: 618, column: 27, scope: !2712)
!2716 = !DILocation(line: 618, column: 31, scope: !2712)
!2717 = !DILocation(line: 619, column: 15, scope: !2712)
!2718 = !DILocation(line: 619, column: 21, scope: !2712)
!2719 = !DILocation(line: 619, column: 27, scope: !2712)
!2720 = !DILocation(line: 619, column: 31, scope: !2712)
!2721 = !DILocation(line: 617, column: 19, scope: !2712)
!2722 = !DILocation(line: 617, column: 3, scope: !2712)
!2723 = !DILocation(line: 617, column: 8, scope: !2712)
!2724 = !DILocation(line: 617, column: 14, scope: !2712)
!2725 = !DILocation(line: 617, column: 17, scope: !2712)
!2726 = !DILocation(line: 620, column: 8, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2712, file: !2, line: 620, column: 7)
!2728 = !DILocation(line: 620, column: 13, scope: !2727)
!2729 = !DILocation(line: 620, column: 19, scope: !2727)
!2730 = !DILocation(line: 620, column: 7, scope: !2712)
!2731 = !DILocation(line: 621, column: 4, scope: !2727)
!2732 = !DILocation(line: 622, column: 3, scope: !2712)
!2733 = !DILocation(line: 622, column: 8, scope: !2712)
!2734 = !DILocation(line: 622, column: 11, scope: !2712)
!2735 = !DILocation(line: 623, column: 2, scope: !2712)
!2736 = !DILocation(line: 616, column: 30, scope: !2706)
!2737 = !DILocation(line: 616, column: 2, scope: !2706)
!2738 = distinct !{!2738, !2710, !2739, !409, !410}
!2739 = !DILocation(line: 623, column: 2, scope: !2703)
!2740 = !DILocation(line: 625, column: 2, scope: !2676)
!2741 = !DILocation(line: 626, column: 1, scope: !2676)
