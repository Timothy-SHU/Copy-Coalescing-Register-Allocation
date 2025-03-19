; ModuleID = 'security/keys/keyctl_pkey.c'
source_filename = "security/keys/keyctl_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_token = type { i32, ptr }
%struct.kernel_pkey_params = type { ptr, ptr, ptr, ptr, i32, %union.anon, i8 }
%union.anon = type { i32 }
%struct.kernel_pkey_query = type { i32, i32, i16, i16, i16, i16 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.0, %struct.rw_semaphore, ptr, ptr, %union.anon.3, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.4, %union.anon.8, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.0 = type { %struct.rb_node }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.anon.3 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.4 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.5, ptr, ptr, ptr }
%union.anon.5 = type { i64 }
%union.anon.8 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.anon.7 = type { i64, i64, ptr, ptr, ptr }
%struct.key_type = type { ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.lock_class_key = type {}
%struct.keyctl_pkey_query = type { i32, i32, i16, i16, i16, i16, [10 x i32] }
%struct.keyctl_pkey_params = type { i32, i32, %union.anon.10, [7 x i32] }
%union.anon.10 = type { i32 }
%struct.substring_t = type { ptr, ptr }

@.str = private unnamed_addr constant [28 x i8] c"security/keys/keyctl_pkey.c\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"raw\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1, !dbg !12
@param_keys = internal constant [3 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.3 }, %struct.match_token { i32 2, ptr @.str.4 }, %struct.match_token zeroinitializer], align 16, !dbg !17
@.str.3 = private unnamed_addr constant [7 x i8] c"enc=%s\00", align 1, !dbg !441
@.str.4 = private unnamed_addr constant [8 x i8] c"hash=%s\00", align 1, !dbg !446
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !451
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !454

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @keyctl_pkey_query(i32 noundef %id, ptr noundef %_info, ptr noundef %_res) #0 align 16 !dbg !476 {
entry:
  %id.addr = alloca i32, align 4
  %_info.addr = alloca ptr, align 8
  %_res.addr = alloca ptr, align 8
  %params = alloca %struct.kernel_pkey_params, align 8
  %res = alloca %struct.kernel_pkey_query, align 4
  %ret = alloca i64, align 8
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !494, metadata !DIExpression()), !dbg !501
  store ptr %_info, ptr %_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_info.addr, metadata !495, metadata !DIExpression()), !dbg !502
  store ptr %_res, ptr %_res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_res.addr, metadata !496, metadata !DIExpression()), !dbg !503
  call void @llvm.lifetime.start.p0(i64 48, ptr %params) #18, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %params, metadata !497, metadata !DIExpression()), !dbg !505
  call void @llvm.lifetime.start.p0(i64 16, ptr %res) #18, !dbg !506
  call void @llvm.dbg.declare(metadata ptr %res, metadata !498, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !508
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !499, metadata !DIExpression()), !dbg !509
  %0 = load i32, ptr %id.addr, align 4, !dbg !510
  %1 = load ptr, ptr %_info.addr, align 8, !dbg !511
  %call = call i32 @keyctl_pkey_params_get(i32 noundef %0, ptr noundef %1, ptr noundef %params) #19, !dbg !512
  %conv = sext i32 %call to i64, !dbg !512
  store i64 %conv, ptr %ret, align 8, !dbg !513
  %2 = load i64, ptr %ret, align 8, !dbg !514
  %cmp = icmp slt i64 %2, 0, !dbg !516
  br i1 %cmp, label %if.then, label %if.end, !dbg !517

if.then:                                          ; preds = %entry
  br label %error, !dbg !518

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 0, !dbg !519
  %3 = load ptr, ptr %key, align 8, !dbg !519
  %4 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 15, !dbg !520
  %type = getelementptr inbounds %struct.anon.7, ptr %4, i32 0, i32 2, !dbg !520
  %5 = load ptr, ptr %type, align 8, !dbg !520
  %asym_query = getelementptr inbounds %struct.key_type, ptr %5, i32 0, i32 16, !dbg !521
  %6 = load ptr, ptr %asym_query, align 8, !dbg !521
  %call2 = call i32 %6(ptr noundef %params, ptr noundef %res) #19, !dbg !522
  %conv3 = sext i32 %call2 to i64, !dbg !522
  store i64 %conv3, ptr %ret, align 8, !dbg !523
  %7 = load i64, ptr %ret, align 8, !dbg !524
  %cmp4 = icmp slt i64 %7, 0, !dbg !526
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !527

if.then6:                                         ; preds = %if.end
  br label %error, !dbg !528

if.end7:                                          ; preds = %if.end
  store i64 -14, ptr %ret, align 8, !dbg !529
  %8 = load ptr, ptr %_res.addr, align 8, !dbg !530
  %call8 = call i64 @copy_to_user(ptr noundef %8, ptr noundef %res, i64 noundef 16) #19, !dbg !532
  %cmp9 = icmp eq i64 %call8, 0, !dbg !533
  br i1 %cmp9, label %land.lhs.true, label %if.end15, !dbg !534

land.lhs.true:                                    ; preds = %if.end7
  %9 = load ptr, ptr %_res.addr, align 8, !dbg !535
  %__spare = getelementptr inbounds %struct.keyctl_pkey_query, ptr %9, i32 0, i32 6, !dbg !536
  %arraydecay = getelementptr inbounds [10 x i32], ptr %__spare, i64 0, i64 0, !dbg !535
  %call11 = call i64 @clear_user(ptr noundef %arraydecay, i64 noundef 40) #19, !dbg !537
  %cmp12 = icmp eq i64 %call11, 0, !dbg !538
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !539

if.then14:                                        ; preds = %land.lhs.true
  store i64 0, ptr %ret, align 8, !dbg !540
  br label %if.end15, !dbg !541

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %if.end7
  br label %error, !dbg !542

error:                                            ; preds = %if.end15, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !500), !dbg !543
  call void @keyctl_pkey_params_free(ptr noundef %params) #19, !dbg !544
  %10 = load i64, ptr %ret, align 8, !dbg !545
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !546
  call void @llvm.lifetime.end.p0(i64 16, ptr %res) #18, !dbg !546
  call void @llvm.lifetime.end.p0(i64 48, ptr %params) #18, !dbg !546
  ret i64 %10, !dbg !547
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @keyctl_pkey_params_get(i32 noundef %id, ptr noundef %_info, ptr noundef %params) #0 align 16 !dbg !548 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %_info.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %key_ref = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !552, metadata !DIExpression()), !dbg !561
  store ptr %_info, ptr %_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_info.addr, metadata !553, metadata !DIExpression()), !dbg !562
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !554, metadata !DIExpression()), !dbg !563
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_ref) #18, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %key_ref, metadata !555, metadata !DIExpression()), !dbg !565
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !566
  call void @llvm.dbg.declare(metadata ptr %p, metadata !559, metadata !DIExpression()), !dbg !567
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !568
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !560, metadata !DIExpression()), !dbg !569
  %0 = load ptr, ptr %params.addr, align 8, !dbg !570
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 48, i1 false), !dbg !571
  %1 = load ptr, ptr %params.addr, align 8, !dbg !572
  %encoding = getelementptr inbounds %struct.kernel_pkey_params, ptr %1, i32 0, i32 1, !dbg !573
  store ptr @.str.1, ptr %encoding, align 8, !dbg !574
  %2 = load ptr, ptr %_info.addr, align 8, !dbg !575
  %call = call ptr @strndup_user(ptr noundef %2, i64 noundef 4096) #19, !dbg !576
  store ptr %call, ptr %p, align 8, !dbg !577
  %3 = load ptr, ptr %p, align 8, !dbg !578
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #19, !dbg !580
  br i1 %call1, label %if.then, label %if.end, !dbg !581

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p, align 8, !dbg !582
  %call2 = call i64 @PTR_ERR(ptr noundef %4) #19, !dbg !583
  %conv = trunc i64 %call2 to i32, !dbg !583
  store i32 %conv, ptr %retval, align 4, !dbg !584
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !584

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %p, align 8, !dbg !585
  %6 = load ptr, ptr %params.addr, align 8, !dbg !586
  %info = getelementptr inbounds %struct.kernel_pkey_params, ptr %6, i32 0, i32 3, !dbg !587
  store ptr %5, ptr %info, align 8, !dbg !588
  %7 = load ptr, ptr %params.addr, align 8, !dbg !589
  %call3 = call i32 @keyctl_pkey_params_parse(ptr noundef %7) #19, !dbg !590
  store i32 %call3, ptr %ret, align 4, !dbg !591
  %8 = load i32, ptr %ret, align 4, !dbg !592
  %cmp = icmp slt i32 %8, 0, !dbg !594
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !595

if.then5:                                         ; preds = %if.end
  %9 = load i32, ptr %ret, align 4, !dbg !596
  store i32 %9, ptr %retval, align 4, !dbg !597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !597

if.end6:                                          ; preds = %if.end
  %10 = load i32, ptr %id.addr, align 4, !dbg !598
  %call7 = call ptr @lookup_user_key(i32 noundef %10, i64 noundef 0, i32 noundef 4) #19, !dbg !599
  store ptr %call7, ptr %key_ref, align 8, !dbg !600
  %11 = load ptr, ptr %key_ref, align 8, !dbg !601
  %call8 = call zeroext i1 @IS_ERR(ptr noundef %11) #19, !dbg !603
  br i1 %call8, label %if.then9, label %if.end12, !dbg !604

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %key_ref, align 8, !dbg !605
  %call10 = call i64 @PTR_ERR(ptr noundef %12) #19, !dbg !606
  %conv11 = trunc i64 %call10 to i32, !dbg !606
  store i32 %conv11, ptr %retval, align 4, !dbg !607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !607

if.end12:                                         ; preds = %if.end6
  %13 = load ptr, ptr %key_ref, align 8, !dbg !608
  %call13 = call ptr @key_ref_to_ptr(ptr noundef %13) #19, !dbg !609
  %14 = load ptr, ptr %params.addr, align 8, !dbg !610
  %key = getelementptr inbounds %struct.kernel_pkey_params, ptr %14, i32 0, i32 0, !dbg !611
  store ptr %call13, ptr %key, align 8, !dbg !612
  %15 = load ptr, ptr %params.addr, align 8, !dbg !613
  %key14 = getelementptr inbounds %struct.kernel_pkey_params, ptr %15, i32 0, i32 0, !dbg !615
  %16 = load ptr, ptr %key14, align 8, !dbg !615
  %17 = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 15, !dbg !616
  %type = getelementptr inbounds %struct.anon.7, ptr %17, i32 0, i32 2, !dbg !616
  %18 = load ptr, ptr %type, align 8, !dbg !616
  %asym_query = getelementptr inbounds %struct.key_type, ptr %18, i32 0, i32 16, !dbg !617
  %19 = load ptr, ptr %asym_query, align 8, !dbg !617
  %tobool = icmp ne ptr %19, null, !dbg !613
  br i1 %tobool, label %if.end16, label %if.then15, !dbg !618

if.then15:                                        ; preds = %if.end12
  store i32 -95, ptr %retval, align 4, !dbg !619
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !619

if.end16:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4, !dbg !620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !620

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !621
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !621
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_ref) #18, !dbg !621
  %20 = load i32, ptr %retval, align 4, !dbg !621
  ret i32 %20, !dbg !621
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !622 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !627, metadata !DIExpression()), !dbg !630
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !628, metadata !DIExpression()), !dbg !631
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !629, metadata !DIExpression()), !dbg !632
  %0 = load ptr, ptr %from.addr, align 8, !dbg !633
  %1 = load i64, ptr %n.addr, align 8, !dbg !635
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #19, !dbg !636
  br i1 %call, label %if.then, label %if.end, !dbg !637

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !638
  %3 = load ptr, ptr %from.addr, align 8, !dbg !639
  %4 = load i64, ptr %n.addr, align 8, !dbg !640
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #19, !dbg !641
  store i64 %call1, ptr %n.addr, align 8, !dbg !642
  br label %if.end, !dbg !643

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !644
  ret i64 %5, !dbg !645
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @clear_user(ptr noundef %to, i64 noundef %n) #3 align 16 !dbg !646 {
entry:
  %retval = alloca i64, align 8
  %to.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !651, metadata !DIExpression()), !dbg !653
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !652, metadata !DIExpression()), !dbg !654
  %0 = load ptr, ptr %to.addr, align 8, !dbg !655
  %1 = load i64, ptr %n.addr, align 8, !dbg !657
  %call = call zeroext i1 @__access_ok(ptr noundef %0, i64 noundef %1) #19, !dbg !658
  br i1 %call, label %if.then, label %if.end, !dbg !659

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !660
  %3 = load i64, ptr %n.addr, align 8, !dbg !661
  %call1 = call i64 @__clear_user(ptr noundef %2, i64 noundef %3) #19, !dbg !662
  store i64 %call1, ptr %retval, align 8, !dbg !663
  br label %return, !dbg !663

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %n.addr, align 8, !dbg !664
  store i64 %4, ptr %retval, align 8, !dbg !665
  br label %return, !dbg !665

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !666
  ret i64 %5, !dbg !666
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @keyctl_pkey_params_free(ptr noundef %params) #0 align 16 !dbg !667 {
entry:
  %params.addr = alloca ptr, align 8
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !671, metadata !DIExpression()), !dbg !672
  %0 = load ptr, ptr %params.addr, align 8, !dbg !673
  %info = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 3, !dbg !674
  %1 = load ptr, ptr %info, align 8, !dbg !674
  call void @kfree(ptr noundef %1) #19, !dbg !675
  %2 = load ptr, ptr %params.addr, align 8, !dbg !676
  %key = getelementptr inbounds %struct.kernel_pkey_params, ptr %2, i32 0, i32 0, !dbg !677
  %3 = load ptr, ptr %key, align 8, !dbg !677
  call void @key_put(ptr noundef %3) #19, !dbg !678
  ret void, !dbg !679
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @keyctl_pkey_e_d_s(i32 noundef %op, ptr noundef %_params, ptr noundef %_info, ptr noundef %_in, ptr noundef %_out) #0 align 16 !dbg !680 {
entry:
  %op.addr = alloca i32, align 4
  %_params.addr = alloca ptr, align 8
  %_info.addr = alloca ptr, align 8
  %_in.addr = alloca ptr, align 8
  %_out.addr = alloca ptr, align 8
  %params = alloca %struct.kernel_pkey_params, align 8
  %in = alloca ptr, align 8
  %out = alloca ptr, align 8
  %ret = alloca i64, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !697, metadata !DIExpression()), !dbg !709
  store ptr %_params, ptr %_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_params.addr, metadata !698, metadata !DIExpression()), !dbg !710
  store ptr %_info, ptr %_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_info.addr, metadata !699, metadata !DIExpression()), !dbg !711
  store ptr %_in, ptr %_in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_in.addr, metadata !700, metadata !DIExpression()), !dbg !712
  store ptr %_out, ptr %_out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_out.addr, metadata !701, metadata !DIExpression()), !dbg !713
  call void @llvm.lifetime.start.p0(i64 48, ptr %params) #18, !dbg !714
  call void @llvm.dbg.declare(metadata ptr %params, metadata !702, metadata !DIExpression()), !dbg !715
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #18, !dbg !716
  call void @llvm.dbg.declare(metadata ptr %in, metadata !703, metadata !DIExpression()), !dbg !717
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #18, !dbg !716
  call void @llvm.dbg.declare(metadata ptr %out, metadata !704, metadata !DIExpression()), !dbg !718
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !719
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !705, metadata !DIExpression()), !dbg !720
  %0 = load ptr, ptr %_params.addr, align 8, !dbg !721
  %1 = load ptr, ptr %_info.addr, align 8, !dbg !722
  %2 = load i32, ptr %op.addr, align 4, !dbg !723
  %call = call i32 @keyctl_pkey_params_get_2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %params) #19, !dbg !724
  %conv = sext i32 %call to i64, !dbg !724
  store i64 %conv, ptr %ret, align 8, !dbg !725
  %3 = load i64, ptr %ret, align 8, !dbg !726
  %cmp = icmp slt i64 %3, 0, !dbg !728
  br i1 %cmp, label %if.then, label %if.end, !dbg !729

if.then:                                          ; preds = %entry
  br label %error_params, !dbg !730

if.end:                                           ; preds = %entry
  store i64 -95, ptr %ret, align 8, !dbg !731
  %key = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 0, !dbg !732
  %4 = load ptr, ptr %key, align 8, !dbg !732
  %5 = getelementptr inbounds %struct.key, ptr %4, i32 0, i32 15, !dbg !734
  %type = getelementptr inbounds %struct.anon.7, ptr %5, i32 0, i32 2, !dbg !734
  %6 = load ptr, ptr %type, align 8, !dbg !734
  %asym_eds_op = getelementptr inbounds %struct.key_type, ptr %6, i32 0, i32 17, !dbg !735
  %7 = load ptr, ptr %asym_eds_op, align 8, !dbg !735
  %tobool = icmp ne ptr %7, null, !dbg !736
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !737

if.then2:                                         ; preds = %if.end
  br label %error_params, !dbg !738

if.end3:                                          ; preds = %if.end
  %8 = load i32, ptr %op.addr, align 4, !dbg !739
  switch i32 %8, label %sw.default [
    i32 25, label %sw.bb
    i32 26, label %sw.bb5
    i32 27, label %sw.bb7
  ], !dbg !740

sw.bb:                                            ; preds = %if.end3
  %op4 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 6, !dbg !741
  store i8 0, ptr %op4, align 8, !dbg !743
  br label %sw.epilog, !dbg !744

sw.bb5:                                           ; preds = %if.end3
  %op6 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 6, !dbg !745
  store i8 1, ptr %op6, align 8, !dbg !746
  br label %sw.epilog, !dbg !747

sw.bb7:                                           ; preds = %if.end3
  %op8 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 6, !dbg !748
  store i8 2, ptr %op8, align 8, !dbg !749
  br label %sw.epilog, !dbg !750

sw.default:                                       ; preds = %if.end3
  br label %do.body, !dbg !751

do.body:                                          ; preds = %sw.default
  br label %do.body9, !dbg !752

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !754

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !754

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !752

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 241, i32 0, i64 12) #18, !dbg !756, !srcloc !758
  br label %do.cond11, !dbg !756

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !756

do.end12:                                         ; preds = %do.cond11
  unreachable, !dbg !752

do.cond13:                                        ; No predecessors!
  br label %do.end14, !dbg !752

do.end14:                                         ; preds = %do.cond13
  br label %sw.epilog, !dbg !759

sw.epilog:                                        ; preds = %do.end14, %sw.bb7, %sw.bb5, %sw.bb
  %9 = load ptr, ptr %_in.addr, align 8, !dbg !760
  %in_len = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 4, !dbg !761
  %10 = load i32, ptr %in_len, align 8, !dbg !761
  %conv15 = zext i32 %10 to i64, !dbg !762
  %call16 = call ptr @memdup_user(ptr noundef %9, i64 noundef %conv15) #19, !dbg !763
  store ptr %call16, ptr %in, align 8, !dbg !764
  %11 = load ptr, ptr %in, align 8, !dbg !765
  %call17 = call zeroext i1 @IS_ERR(ptr noundef %11) #19, !dbg !767
  br i1 %call17, label %if.then18, label %if.end20, !dbg !768

if.then18:                                        ; preds = %sw.epilog
  %12 = load ptr, ptr %in, align 8, !dbg !769
  %call19 = call i64 @PTR_ERR(ptr noundef %12) #19, !dbg !771
  store i64 %call19, ptr %ret, align 8, !dbg !772
  br label %error_params, !dbg !773

if.end20:                                         ; preds = %sw.epilog
  store i64 -12, ptr %ret, align 8, !dbg !774
  %13 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 5, !dbg !775
  %14 = load i32, ptr %13, align 4, !dbg !775
  %conv21 = zext i32 %14 to i64, !dbg !776
  %call22 = call noalias ptr @kmalloc(i64 noundef %conv21, i32 noundef 3264) #20, !dbg !777
  store ptr %call22, ptr %out, align 8, !dbg !778
  %15 = load ptr, ptr %out, align 8, !dbg !779
  %tobool23 = icmp ne ptr %15, null, !dbg !779
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !781

if.then24:                                        ; preds = %if.end20
  br label %error_in, !dbg !782

if.end25:                                         ; preds = %if.end20
  %key26 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 0, !dbg !783
  %16 = load ptr, ptr %key26, align 8, !dbg !783
  %17 = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 15, !dbg !784
  %type27 = getelementptr inbounds %struct.anon.7, ptr %17, i32 0, i32 2, !dbg !784
  %18 = load ptr, ptr %type27, align 8, !dbg !784
  %asym_eds_op28 = getelementptr inbounds %struct.key_type, ptr %18, i32 0, i32 17, !dbg !785
  %19 = load ptr, ptr %asym_eds_op28, align 8, !dbg !785
  %20 = load ptr, ptr %in, align 8, !dbg !786
  %21 = load ptr, ptr %out, align 8, !dbg !787
  %call29 = call i32 %19(ptr noundef %params, ptr noundef %20, ptr noundef %21) #19, !dbg !788
  %conv30 = sext i32 %call29 to i64, !dbg !788
  store i64 %conv30, ptr %ret, align 8, !dbg !789
  %22 = load i64, ptr %ret, align 8, !dbg !790
  %cmp31 = icmp slt i64 %22, 0, !dbg !792
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !793

if.then33:                                        ; preds = %if.end25
  br label %error_out, !dbg !794

if.end34:                                         ; preds = %if.end25
  %23 = load ptr, ptr %_out.addr, align 8, !dbg !795
  %24 = load ptr, ptr %out, align 8, !dbg !797
  %25 = load i64, ptr %ret, align 8, !dbg !798
  %call35 = call i64 @copy_to_user(ptr noundef %23, ptr noundef %24, i64 noundef %25) #19, !dbg !799
  %cmp36 = icmp ne i64 %call35, 0, !dbg !800
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !801

if.then38:                                        ; preds = %if.end34
  store i64 -14, ptr %ret, align 8, !dbg !802
  br label %if.end39, !dbg !803

if.end39:                                         ; preds = %if.then38, %if.end34
  br label %error_out, !dbg !804

error_out:                                        ; preds = %if.end39, %if.then33
  call void @llvm.dbg.label(metadata !706), !dbg !805
  %26 = load ptr, ptr %out, align 8, !dbg !806
  call void @kfree(ptr noundef %26) #19, !dbg !807
  br label %error_in, !dbg !807

error_in:                                         ; preds = %error_out, %if.then24
  call void @llvm.dbg.label(metadata !707), !dbg !808
  %27 = load ptr, ptr %in, align 8, !dbg !809
  call void @kfree(ptr noundef %27) #19, !dbg !810
  br label %error_params, !dbg !810

error_params:                                     ; preds = %error_in, %if.then18, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !708), !dbg !811
  call void @keyctl_pkey_params_free(ptr noundef %params) #19, !dbg !812
  %28 = load i64, ptr %ret, align 8, !dbg !813
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !814
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #18, !dbg !814
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #18, !dbg !814
  call void @llvm.lifetime.end.p0(i64 48, ptr %params) #18, !dbg !814
  ret i64 %28, !dbg !815
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @keyctl_pkey_params_get_2(ptr noundef %_params, ptr noundef %_info, i32 noundef %op, ptr noundef %params) #0 align 16 !dbg !816 {
entry:
  %retval = alloca i32, align 4
  %_params.addr = alloca ptr, align 8
  %_info.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %params.addr = alloca ptr, align 8
  %uparams = alloca %struct.keyctl_pkey_params, align 4
  %info = alloca %struct.kernel_pkey_query, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %_params, ptr %_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_params.addr, metadata !820, metadata !DIExpression()), !dbg !827
  store ptr %_info, ptr %_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_info.addr, metadata !821, metadata !DIExpression()), !dbg !828
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !822, metadata !DIExpression()), !dbg !829
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !823, metadata !DIExpression()), !dbg !830
  call void @llvm.lifetime.start.p0(i64 40, ptr %uparams) #18, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %uparams, metadata !824, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 16, ptr %info) #18, !dbg !833
  call void @llvm.dbg.declare(metadata ptr %info, metadata !825, metadata !DIExpression()), !dbg !834
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !835
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !826, metadata !DIExpression()), !dbg !836
  %0 = load ptr, ptr %params.addr, align 8, !dbg !837
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 48, i1 false), !dbg !838
  %1 = load ptr, ptr %params.addr, align 8, !dbg !839
  %encoding = getelementptr inbounds %struct.kernel_pkey_params, ptr %1, i32 0, i32 1, !dbg !840
  store ptr @.str.1, ptr %encoding, align 8, !dbg !841
  %2 = load ptr, ptr %_params.addr, align 8, !dbg !842
  %call = call i64 @copy_from_user(ptr noundef %uparams, ptr noundef %2, i64 noundef 40) #19, !dbg !844
  %cmp = icmp ne i64 %call, 0, !dbg !845
  br i1 %cmp, label %if.then, label %if.end, !dbg !846

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !847

if.end:                                           ; preds = %entry
  %key_id = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 0, !dbg !848
  %3 = load i32, ptr %key_id, align 4, !dbg !848
  %4 = load ptr, ptr %_info.addr, align 8, !dbg !849
  %5 = load ptr, ptr %params.addr, align 8, !dbg !850
  %call1 = call i32 @keyctl_pkey_params_get(i32 noundef %3, ptr noundef %4, ptr noundef %5) #19, !dbg !851
  store i32 %call1, ptr %ret, align 4, !dbg !852
  %6 = load i32, ptr %ret, align 4, !dbg !853
  %cmp2 = icmp slt i32 %6, 0, !dbg !855
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !856

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !dbg !857
  store i32 %7, ptr %retval, align 4, !dbg !858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !858

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %params.addr, align 8, !dbg !859
  %key = getelementptr inbounds %struct.kernel_pkey_params, ptr %8, i32 0, i32 0, !dbg !860
  %9 = load ptr, ptr %key, align 8, !dbg !860
  %10 = getelementptr inbounds %struct.key, ptr %9, i32 0, i32 15, !dbg !861
  %type = getelementptr inbounds %struct.anon.7, ptr %10, i32 0, i32 2, !dbg !861
  %11 = load ptr, ptr %type, align 8, !dbg !861
  %asym_query = getelementptr inbounds %struct.key_type, ptr %11, i32 0, i32 16, !dbg !862
  %12 = load ptr, ptr %asym_query, align 8, !dbg !862
  %13 = load ptr, ptr %params.addr, align 8, !dbg !863
  %call5 = call i32 %12(ptr noundef %13, ptr noundef %info) #19, !dbg !859
  store i32 %call5, ptr %ret, align 4, !dbg !864
  %14 = load i32, ptr %ret, align 4, !dbg !865
  %cmp6 = icmp slt i32 %14, 0, !dbg !867
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !868

if.then7:                                         ; preds = %if.end4
  %15 = load i32, ptr %ret, align 4, !dbg !869
  store i32 %15, ptr %retval, align 4, !dbg !870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !870

if.end8:                                          ; preds = %if.end4
  %16 = load i32, ptr %op.addr, align 4, !dbg !871
  switch i32 %16, label %sw.default [
    i32 25, label %sw.bb
    i32 26, label %sw.bb16
    i32 27, label %sw.bb29
    i32 28, label %sw.bb40
  ], !dbg !872

sw.bb:                                            ; preds = %if.end8
  %in_len = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 1, !dbg !873
  %17 = load i32, ptr %in_len, align 4, !dbg !873
  %max_dec_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 5, !dbg !876
  %18 = load i16, ptr %max_dec_size, align 2, !dbg !876
  %conv = zext i16 %18 to i32, !dbg !877
  %cmp9 = icmp ugt i32 %17, %conv, !dbg !878
  br i1 %cmp9, label %if.then14, label %lor.lhs.false, !dbg !879

lor.lhs.false:                                    ; preds = %sw.bb
  %19 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 2, !dbg !880
  %20 = load i32, ptr %19, align 4, !dbg !880
  %max_enc_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 4, !dbg !881
  %21 = load i16, ptr %max_enc_size, align 4, !dbg !881
  %conv11 = zext i16 %21 to i32, !dbg !882
  %cmp12 = icmp ugt i32 %20, %conv11, !dbg !883
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !884

if.then14:                                        ; preds = %lor.lhs.false, %sw.bb
  store i32 -22, ptr %retval, align 4, !dbg !885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !885

if.end15:                                         ; preds = %lor.lhs.false
  br label %sw.epilog, !dbg !886

sw.bb16:                                          ; preds = %if.end8
  %in_len17 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 1, !dbg !887
  %22 = load i32, ptr %in_len17, align 4, !dbg !887
  %max_enc_size18 = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 4, !dbg !889
  %23 = load i16, ptr %max_enc_size18, align 4, !dbg !889
  %conv19 = zext i16 %23 to i32, !dbg !890
  %cmp20 = icmp ugt i32 %22, %conv19, !dbg !891
  br i1 %cmp20, label %if.then27, label %lor.lhs.false22, !dbg !892

lor.lhs.false22:                                  ; preds = %sw.bb16
  %24 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 2, !dbg !893
  %25 = load i32, ptr %24, align 4, !dbg !893
  %max_dec_size23 = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 5, !dbg !894
  %26 = load i16, ptr %max_dec_size23, align 2, !dbg !894
  %conv24 = zext i16 %26 to i32, !dbg !895
  %cmp25 = icmp ugt i32 %25, %conv24, !dbg !896
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !897

if.then27:                                        ; preds = %lor.lhs.false22, %sw.bb16
  store i32 -22, ptr %retval, align 4, !dbg !898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !898

if.end28:                                         ; preds = %lor.lhs.false22
  br label %sw.epilog, !dbg !899

sw.bb29:                                          ; preds = %if.end8
  %in_len30 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 1, !dbg !900
  %27 = load i32, ptr %in_len30, align 4, !dbg !900
  %max_data_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 2, !dbg !902
  %28 = load i16, ptr %max_data_size, align 4, !dbg !902
  %conv31 = zext i16 %28 to i32, !dbg !903
  %cmp32 = icmp ugt i32 %27, %conv31, !dbg !904
  br i1 %cmp32, label %if.then38, label %lor.lhs.false34, !dbg !905

lor.lhs.false34:                                  ; preds = %sw.bb29
  %29 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 2, !dbg !906
  %30 = load i32, ptr %29, align 4, !dbg !906
  %max_sig_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 3, !dbg !907
  %31 = load i16, ptr %max_sig_size, align 2, !dbg !907
  %conv35 = zext i16 %31 to i32, !dbg !908
  %cmp36 = icmp ugt i32 %30, %conv35, !dbg !909
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !910

if.then38:                                        ; preds = %lor.lhs.false34, %sw.bb29
  store i32 -22, ptr %retval, align 4, !dbg !911
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !911

if.end39:                                         ; preds = %lor.lhs.false34
  br label %sw.epilog, !dbg !912

sw.bb40:                                          ; preds = %if.end8
  %in_len41 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 1, !dbg !913
  %32 = load i32, ptr %in_len41, align 4, !dbg !913
  %max_data_size42 = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 2, !dbg !915
  %33 = load i16, ptr %max_data_size42, align 4, !dbg !915
  %conv43 = zext i16 %33 to i32, !dbg !916
  %cmp44 = icmp ugt i32 %32, %conv43, !dbg !917
  br i1 %cmp44, label %if.then51, label %lor.lhs.false46, !dbg !918

lor.lhs.false46:                                  ; preds = %sw.bb40
  %34 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 2, !dbg !919
  %35 = load i32, ptr %34, align 4, !dbg !919
  %max_sig_size47 = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 3, !dbg !920
  %36 = load i16, ptr %max_sig_size47, align 2, !dbg !920
  %conv48 = zext i16 %36 to i32, !dbg !921
  %cmp49 = icmp ugt i32 %35, %conv48, !dbg !922
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !923

if.then51:                                        ; preds = %lor.lhs.false46, %sw.bb40
  store i32 -22, ptr %retval, align 4, !dbg !924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !924

if.end52:                                         ; preds = %lor.lhs.false46
  br label %sw.epilog, !dbg !925

sw.default:                                       ; preds = %if.end8
  br label %do.body, !dbg !926

do.body:                                          ; preds = %sw.default
  br label %do.body53, !dbg !927

do.body53:                                        ; preds = %do.body
  br label %do.cond, !dbg !929

do.cond:                                          ; preds = %do.body53
  br label %do.end, !dbg !929

do.end:                                           ; preds = %do.cond
  br label %do.body54, !dbg !927

do.body54:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 158, i32 0, i64 12) #18, !dbg !931, !srcloc !933
  br label %do.cond55, !dbg !931

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !931

do.end56:                                         ; preds = %do.cond55
  unreachable, !dbg !927

do.cond57:                                        ; No predecessors!
  br label %do.end58, !dbg !927

do.end58:                                         ; preds = %do.cond57
  br label %sw.epilog, !dbg !934

sw.epilog:                                        ; preds = %do.end58, %if.end52, %if.end39, %if.end28, %if.end15
  %in_len59 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 1, !dbg !935
  %37 = load i32, ptr %in_len59, align 4, !dbg !935
  %38 = load ptr, ptr %params.addr, align 8, !dbg !936
  %in_len60 = getelementptr inbounds %struct.kernel_pkey_params, ptr %38, i32 0, i32 4, !dbg !937
  store i32 %37, ptr %in_len60, align 8, !dbg !938
  %39 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 2, !dbg !939
  %40 = load i32, ptr %39, align 4, !dbg !939
  %41 = load ptr, ptr %params.addr, align 8, !dbg !940
  %42 = getelementptr inbounds %struct.kernel_pkey_params, ptr %41, i32 0, i32 5, !dbg !941
  store i32 %40, ptr %42, align 4, !dbg !942
  store i32 0, ptr %retval, align 4, !dbg !943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !943

cleanup:                                          ; preds = %sw.epilog, %if.then51, %if.then38, %if.then27, %if.then14, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !944
  call void @llvm.lifetime.end.p0(i64 16, ptr %info) #18, !dbg !944
  call void @llvm.lifetime.end.p0(i64 40, ptr %uparams) #18, !dbg !944
  %43 = load i32, ptr %retval, align 4, !dbg !944
  ret i32 %43, !dbg !944
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !945 dso_local ptr @memdup_user(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !949 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !954, metadata !DIExpression()), !dbg !955
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !956
  %1 = ptrtoint ptr %0 to i64, !dbg !956
  %2 = inttoptr i64 %1 to ptr, !dbg !956
  %3 = ptrtoint ptr %2 to i64, !dbg !956
  %cmp = icmp uge i64 %3, -4095, !dbg !956
  %lnot = xor i1 %cmp, true, !dbg !956
  %lnot1 = xor i1 %lnot, true, !dbg !956
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !956
  %conv = sext i32 %lnot.ext to i64, !dbg !956
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !956
  %tobool = icmp ne i64 %expval, 0, !dbg !956
  ret i1 %tobool, !dbg !957
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !958 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !962, metadata !DIExpression()), !dbg !963
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !964
  %1 = ptrtoint ptr %0 to i64, !dbg !965
  ret i64 %1, !dbg !966
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !967 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !971, metadata !DIExpression()), !dbg !976
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !972, metadata !DIExpression()), !dbg !977
  %0 = load i64, ptr %size.addr, align 8, !dbg !978
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !979
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !980

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !981
  %tobool = icmp ne i64 %2, 0, !dbg !981
  br i1 %tobool, label %if.then, label %if.end7, !dbg !982

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !983
  call void @llvm.dbg.declare(metadata ptr %index, metadata !973, metadata !DIExpression()), !dbg !984
  %3 = load i64, ptr %size.addr, align 8, !dbg !985
  %cmp = icmp ugt i64 %3, 8192, !dbg !987
  br i1 %cmp, label %if.then1, label %if.end, !dbg !988

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !989
  %5 = load i32, ptr %flags.addr, align 4, !dbg !990
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !991
  store ptr %call, ptr %retval, align 8, !dbg !992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !992

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !993
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !993
  store i32 %call2, ptr %index, align 4, !dbg !994
  %7 = load i32, ptr %flags.addr, align 4, !dbg !995
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !996
  %9 = ptrtoint ptr %8 to i64, !dbg !996
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !997
  %idxprom = zext i32 %call3 to i64, !dbg !998
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !998
  %10 = load i32, ptr %index, align 4, !dbg !999
  %idxprom4 = zext i32 %10 to i64, !dbg !998
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !998
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !998
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1000
  %13 = load i64, ptr %size.addr, align 8, !dbg !1001
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !1002
  store ptr %call6, ptr %retval, align 8, !dbg !1003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1003

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !1004
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1005
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1006
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !1007
  store ptr %call8, ptr %retval, align 8, !dbg !1008
  br label %return, !dbg !1008

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1009
  ret ptr %16, !dbg !1009
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1010 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @keyctl_pkey_verify(ptr noundef %_params, ptr noundef %_info, ptr noundef %_in, ptr noundef %_in2) #0 align 16 !dbg !1013 {
entry:
  %_params.addr = alloca ptr, align 8
  %_info.addr = alloca ptr, align 8
  %_in.addr = alloca ptr, align 8
  %_in2.addr = alloca ptr, align 8
  %params = alloca %struct.kernel_pkey_params, align 8
  %in = alloca ptr, align 8
  %in2 = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %_params, ptr %_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_params.addr, metadata !1017, metadata !DIExpression()), !dbg !1027
  store ptr %_info, ptr %_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_info.addr, metadata !1018, metadata !DIExpression()), !dbg !1028
  store ptr %_in, ptr %_in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_in.addr, metadata !1019, metadata !DIExpression()), !dbg !1029
  store ptr %_in2, ptr %_in2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_in2.addr, metadata !1020, metadata !DIExpression()), !dbg !1030
  call void @llvm.lifetime.start.p0(i64 48, ptr %params) #18, !dbg !1031
  call void @llvm.dbg.declare(metadata ptr %params, metadata !1021, metadata !DIExpression()), !dbg !1032
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #18, !dbg !1033
  call void @llvm.dbg.declare(metadata ptr %in, metadata !1022, metadata !DIExpression()), !dbg !1034
  call void @llvm.lifetime.start.p0(i64 8, ptr %in2) #18, !dbg !1033
  call void @llvm.dbg.declare(metadata ptr %in2, metadata !1023, metadata !DIExpression()), !dbg !1035
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #18, !dbg !1036
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1024, metadata !DIExpression()), !dbg !1037
  %0 = load ptr, ptr %_params.addr, align 8, !dbg !1038
  %1 = load ptr, ptr %_info.addr, align 8, !dbg !1039
  %call = call i32 @keyctl_pkey_params_get_2(ptr noundef %0, ptr noundef %1, i32 noundef 28, ptr noundef %params) #19, !dbg !1040
  %conv = sext i32 %call to i64, !dbg !1040
  store i64 %conv, ptr %ret, align 8, !dbg !1041
  %2 = load i64, ptr %ret, align 8, !dbg !1042
  %cmp = icmp slt i64 %2, 0, !dbg !1044
  br i1 %cmp, label %if.then, label %if.end, !dbg !1045

if.then:                                          ; preds = %entry
  br label %error_params, !dbg !1046

if.end:                                           ; preds = %entry
  store i64 -95, ptr %ret, align 8, !dbg !1047
  %key = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 0, !dbg !1048
  %3 = load ptr, ptr %key, align 8, !dbg !1048
  %4 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 15, !dbg !1050
  %type = getelementptr inbounds %struct.anon.7, ptr %4, i32 0, i32 2, !dbg !1050
  %5 = load ptr, ptr %type, align 8, !dbg !1050
  %asym_verify_signature = getelementptr inbounds %struct.key_type, ptr %5, i32 0, i32 18, !dbg !1051
  %6 = load ptr, ptr %asym_verify_signature, align 8, !dbg !1051
  %tobool = icmp ne ptr %6, null, !dbg !1052
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !1053

if.then2:                                         ; preds = %if.end
  br label %error_params, !dbg !1054

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %_in.addr, align 8, !dbg !1055
  %in_len = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 4, !dbg !1056
  %8 = load i32, ptr %in_len, align 8, !dbg !1056
  %conv4 = zext i32 %8 to i64, !dbg !1057
  %call5 = call ptr @memdup_user(ptr noundef %7, i64 noundef %conv4) #19, !dbg !1058
  store ptr %call5, ptr %in, align 8, !dbg !1059
  %9 = load ptr, ptr %in, align 8, !dbg !1060
  %call6 = call zeroext i1 @IS_ERR(ptr noundef %9) #19, !dbg !1062
  br i1 %call6, label %if.then7, label %if.end9, !dbg !1063

if.then7:                                         ; preds = %if.end3
  %10 = load ptr, ptr %in, align 8, !dbg !1064
  %call8 = call i64 @PTR_ERR(ptr noundef %10) #19, !dbg !1066
  store i64 %call8, ptr %ret, align 8, !dbg !1067
  br label %error_params, !dbg !1068

if.end9:                                          ; preds = %if.end3
  %11 = load ptr, ptr %_in2.addr, align 8, !dbg !1069
  %12 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 5, !dbg !1070
  %13 = load i32, ptr %12, align 4, !dbg !1070
  %conv10 = zext i32 %13 to i64, !dbg !1071
  %call11 = call ptr @memdup_user(ptr noundef %11, i64 noundef %conv10) #19, !dbg !1072
  store ptr %call11, ptr %in2, align 8, !dbg !1073
  %14 = load ptr, ptr %in2, align 8, !dbg !1074
  %call12 = call zeroext i1 @IS_ERR(ptr noundef %14) #19, !dbg !1076
  br i1 %call12, label %if.then13, label %if.end15, !dbg !1077

if.then13:                                        ; preds = %if.end9
  %15 = load ptr, ptr %in2, align 8, !dbg !1078
  %call14 = call i64 @PTR_ERR(ptr noundef %15) #19, !dbg !1080
  store i64 %call14, ptr %ret, align 8, !dbg !1081
  br label %error_in, !dbg !1082

if.end15:                                         ; preds = %if.end9
  %op = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 6, !dbg !1083
  store i8 3, ptr %op, align 8, !dbg !1084
  %key16 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 0, !dbg !1085
  %16 = load ptr, ptr %key16, align 8, !dbg !1085
  %17 = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 15, !dbg !1086
  %type17 = getelementptr inbounds %struct.anon.7, ptr %17, i32 0, i32 2, !dbg !1086
  %18 = load ptr, ptr %type17, align 8, !dbg !1086
  %asym_verify_signature18 = getelementptr inbounds %struct.key_type, ptr %18, i32 0, i32 18, !dbg !1087
  %19 = load ptr, ptr %asym_verify_signature18, align 8, !dbg !1087
  %20 = load ptr, ptr %in, align 8, !dbg !1088
  %21 = load ptr, ptr %in2, align 8, !dbg !1089
  %call19 = call i32 %19(ptr noundef %params, ptr noundef %20, ptr noundef %21) #19, !dbg !1090
  %conv20 = sext i32 %call19 to i64, !dbg !1090
  store i64 %conv20, ptr %ret, align 8, !dbg !1091
  %22 = load ptr, ptr %in2, align 8, !dbg !1092
  call void @kfree(ptr noundef %22) #19, !dbg !1093
  br label %error_in, !dbg !1093

error_in:                                         ; preds = %if.end15, %if.then13
  call void @llvm.dbg.label(metadata !1025), !dbg !1094
  %23 = load ptr, ptr %in, align 8, !dbg !1095
  call void @kfree(ptr noundef %23) #19, !dbg !1096
  br label %error_params, !dbg !1096

error_params:                                     ; preds = %error_in, %if.then7, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !1026), !dbg !1097
  call void @keyctl_pkey_params_free(ptr noundef %params) #19, !dbg !1098
  %24 = load i64, ptr %ret, align 8, !dbg !1099
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #18, !dbg !1100
  call void @llvm.lifetime.end.p0(i64 8, ptr %in2) #18, !dbg !1100
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #18, !dbg !1100
  call void @llvm.lifetime.end.p0(i64 48, ptr %params) #18, !dbg !1100
  ret i64 %24, !dbg !1101
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1102 dso_local ptr @strndup_user(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @keyctl_pkey_params_parse(ptr noundef %params) #0 align 16 !dbg !1105 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca ptr, align 8
  %token_mask = alloca i64, align 8
  %args = alloca [3 x %struct.substring_t], align 16
  %c = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %token = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !1109, metadata !DIExpression()), !dbg !1122
  call void @llvm.lifetime.start.p0(i64 8, ptr %token_mask) #18, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %token_mask, metadata !1110, metadata !DIExpression()), !dbg !1124
  store i64 0, ptr %token_mask, align 8, !dbg !1124
  call void @llvm.lifetime.start.p0(i64 48, ptr %args) #18, !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %args, metadata !1111, metadata !DIExpression()), !dbg !1126
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #18, !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1118, metadata !DIExpression()), !dbg !1128
  %0 = load ptr, ptr %params.addr, align 8, !dbg !1129
  %info = getelementptr inbounds %struct.kernel_pkey_params, ptr %0, i32 0, i32 3, !dbg !1130
  %1 = load ptr, ptr %info, align 8, !dbg !1130
  store ptr %1, ptr %c, align 8, !dbg !1128
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1119, metadata !DIExpression()), !dbg !1131
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #18, !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %q, metadata !1120, metadata !DIExpression()), !dbg !1132
  call void @llvm.lifetime.start.p0(i64 4, ptr %token) #18, !dbg !1133
  call void @llvm.dbg.declare(metadata ptr %token, metadata !1121, metadata !DIExpression()), !dbg !1134
  br label %while.cond, !dbg !1135

while.cond:                                       ; preds = %sw.epilog, %if.then, %entry
  %call = call ptr @strsep(ptr noundef %c, ptr noundef @.str.2) #19, !dbg !1136
  store ptr %call, ptr %p, align 8, !dbg !1137
  %tobool = icmp ne ptr %call, null, !dbg !1135
  br i1 %tobool, label %while.body, label %while.end, !dbg !1135

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p, align 8, !dbg !1138
  %3 = load i8, ptr %2, align 1, !dbg !1141
  %conv = zext i8 %3 to i32, !dbg !1141
  %cmp = icmp eq i32 %conv, 0, !dbg !1142
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1143

lor.lhs.false:                                    ; preds = %while.body
  %4 = load ptr, ptr %p, align 8, !dbg !1144
  %5 = load i8, ptr %4, align 1, !dbg !1145
  %conv2 = zext i8 %5 to i32, !dbg !1145
  %cmp3 = icmp eq i32 %conv2, 32, !dbg !1146
  br i1 %cmp3, label %if.then, label %lor.lhs.false5, !dbg !1147

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %p, align 8, !dbg !1148
  %7 = load i8, ptr %6, align 1, !dbg !1149
  %conv6 = zext i8 %7 to i32, !dbg !1149
  %cmp7 = icmp eq i32 %conv6, 9, !dbg !1150
  br i1 %cmp7, label %if.then, label %if.end, !dbg !1151

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %while.body
  br label %while.cond, !dbg !1152, !llvm.loop !1153

if.end:                                           ; preds = %lor.lhs.false5
  %8 = load ptr, ptr %p, align 8, !dbg !1157
  %arraydecay = getelementptr inbounds [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !1158
  %call9 = call i32 @match_token(ptr noundef %8, ptr noundef @param_keys, ptr noundef %arraydecay) #19, !dbg !1159
  store i32 %call9, ptr %token, align 4, !dbg !1160
  %9 = load i32, ptr %token, align 4, !dbg !1161
  %cmp10 = icmp eq i32 %9, 0, !dbg !1163
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1164

if.then12:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !1165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1165

if.end13:                                         ; preds = %if.end
  %10 = load i32, ptr %token, align 4, !dbg !1166
  %11 = call i1 @llvm.is.constant.i32(i32 %10), !dbg !1166
  br i1 %11, label %land.lhs.true, label %cond.false, !dbg !1166

land.lhs.true:                                    ; preds = %if.end13
  %12 = ptrtoint ptr %token_mask to i64, !dbg !1166
  %cmp14 = icmp ne i64 %12, 0, !dbg !1166
  %conv15 = zext i1 %cmp14 to i32, !dbg !1166
  %13 = call i1 @llvm.is.constant.i32(i32 %conv15), !dbg !1166
  br i1 %13, label %land.lhs.true16, label %cond.false, !dbg !1166

land.lhs.true16:                                  ; preds = %land.lhs.true
  %14 = ptrtoint ptr %token_mask to i64, !dbg !1166
  %cmp17 = icmp ne i64 %14, 0, !dbg !1166
  br i1 %cmp17, label %land.lhs.true19, label %cond.false, !dbg !1166

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %15 = load i64, ptr %token_mask, align 8, !dbg !1166
  %16 = call i1 @llvm.is.constant.i64(i64 %15), !dbg !1166
  br i1 %16, label %cond.true, label %cond.false, !dbg !1168

cond.true:                                        ; preds = %land.lhs.true19
  %17 = load i32, ptr %token, align 4, !dbg !1166
  %conv20 = sext i32 %17 to i64, !dbg !1166
  %call21 = call zeroext i1 @generic___test_and_set_bit(i64 noundef %conv20, ptr noundef %token_mask) #19, !dbg !1166
  br i1 %call21, label %if.then26, label %if.end27, !dbg !1166

cond.false:                                       ; preds = %land.lhs.true19, %land.lhs.true16, %land.lhs.true, %if.end13
  %18 = load i32, ptr %token, align 4, !dbg !1166
  %conv23 = sext i32 %18 to i64, !dbg !1166
  %call24 = call zeroext i1 @___test_and_set_bit(i64 noundef %conv23, ptr noundef %token_mask) #19, !dbg !1166
  br i1 %call24, label %if.then26, label %if.end27, !dbg !1168

if.then26:                                        ; preds = %cond.false, %cond.true
  store i32 -22, ptr %retval, align 4, !dbg !1169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1169

if.end27:                                         ; preds = %cond.false, %cond.true
  %arrayidx = getelementptr [3 x %struct.substring_t], ptr %args, i64 0, i64 0, !dbg !1170
  %from = getelementptr inbounds %struct.substring_t, ptr %arrayidx, i32 0, i32 0, !dbg !1171
  %19 = load ptr, ptr %from, align 16, !dbg !1171
  store ptr %19, ptr %q, align 8, !dbg !1172
  %20 = load ptr, ptr %q, align 8, !dbg !1173
  %arrayidx28 = getelementptr i8, ptr %20, i64 0, !dbg !1173
  %21 = load i8, ptr %arrayidx28, align 1, !dbg !1173
  %tobool29 = icmp ne i8 %21, 0, !dbg !1173
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !1175

if.then30:                                        ; preds = %if.end27
  store i32 -22, ptr %retval, align 4, !dbg !1176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1176

if.end31:                                         ; preds = %if.end27
  %22 = load i32, ptr %token, align 4, !dbg !1177
  switch i32 %22, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb32
  ], !dbg !1178

sw.bb:                                            ; preds = %if.end31
  %23 = load ptr, ptr %q, align 8, !dbg !1179
  %24 = load ptr, ptr %params.addr, align 8, !dbg !1181
  %encoding = getelementptr inbounds %struct.kernel_pkey_params, ptr %24, i32 0, i32 1, !dbg !1182
  store ptr %23, ptr %encoding, align 8, !dbg !1183
  br label %sw.epilog, !dbg !1184

sw.bb32:                                          ; preds = %if.end31
  %25 = load ptr, ptr %q, align 8, !dbg !1185
  %26 = load ptr, ptr %params.addr, align 8, !dbg !1186
  %hash_algo = getelementptr inbounds %struct.kernel_pkey_params, ptr %26, i32 0, i32 2, !dbg !1187
  store ptr %25, ptr %hash_algo, align 8, !dbg !1188
  br label %sw.epilog, !dbg !1189

sw.default:                                       ; preds = %if.end31
  store i32 -22, ptr %retval, align 4, !dbg !1190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1190

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb
  br label %while.cond, !dbg !1135, !llvm.loop !1153

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1191

cleanup:                                          ; preds = %while.end, %sw.default, %if.then30, %if.then26, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %token) #18, !dbg !1192
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #18, !dbg !1192
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !1192
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #18, !dbg !1192
  call void @llvm.lifetime.end.p0(i64 48, ptr %args) #18, !dbg !1192
  call void @llvm.lifetime.end.p0(i64 8, ptr %token_mask) #18, !dbg !1192
  %27 = load i32, ptr %retval, align 4, !dbg !1192
  ret i32 %27, !dbg !1192
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1193 dso_local ptr @lookup_user_key(i32 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @key_ref_to_ptr(ptr noundef %key_ref) #5 align 16 !dbg !1196 {
entry:
  %key_ref.addr = alloca ptr, align 8
  store ptr %key_ref, ptr %key_ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key_ref.addr, metadata !1201, metadata !DIExpression()), !dbg !1202
  %0 = load ptr, ptr %key_ref.addr, align 8, !dbg !1203
  %1 = ptrtoint ptr %0 to i64, !dbg !1204
  %and = and i64 %1, -2, !dbg !1205
  %2 = inttoptr i64 %and to ptr, !dbg !1206
  ret ptr %2, !dbg !1207
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1208 dso_local ptr @strsep(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1212 dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @generic___test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1217 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  %old = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1224, metadata !DIExpression()), !dbg !1229
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1225, metadata !DIExpression()), !dbg !1230
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #18, !dbg !1231
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1226, metadata !DIExpression()), !dbg !1232
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1233
  %rem = urem i64 %0, 64, !dbg !1233
  %shl = shl i64 1, %rem, !dbg !1233
  store i64 %shl, ptr %mask, align 8, !dbg !1232
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !1234
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1227, metadata !DIExpression()), !dbg !1235
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1236
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1237
  %div = udiv i64 %2, 64, !dbg !1237
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !1238
  store ptr %add.ptr, ptr %p, align 8, !dbg !1235
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #18, !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %old, metadata !1228, metadata !DIExpression()), !dbg !1240
  %3 = load ptr, ptr %p, align 8, !dbg !1241
  %4 = load i64, ptr %3, align 8, !dbg !1242
  store i64 %4, ptr %old, align 8, !dbg !1240
  %5 = load i64, ptr %old, align 8, !dbg !1243
  %6 = load i64, ptr %mask, align 8, !dbg !1244
  %or = or i64 %5, %6, !dbg !1245
  %7 = load ptr, ptr %p, align 8, !dbg !1246
  store i64 %or, ptr %7, align 8, !dbg !1247
  %8 = load i64, ptr %old, align 8, !dbg !1248
  %9 = load i64, ptr %mask, align 8, !dbg !1249
  %and = and i64 %8, %9, !dbg !1250
  %cmp = icmp ne i64 %and, 0, !dbg !1251
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #18, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !1252
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #18, !dbg !1252
  ret i1 %cmp, !dbg !1253
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @___test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1254 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1257, metadata !DIExpression()), !dbg !1259
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1258, metadata !DIExpression()), !dbg !1260
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1261
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1262
  call void @__instrument_read_write_bitop(i64 noundef %0, ptr noundef %1) #19, !dbg !1263
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1264
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1265
  %call = call zeroext i1 @arch___test_and_set_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !1266
  ret i1 %call, !dbg !1267
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__instrument_read_write_bitop(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1268 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1272, metadata !DIExpression()), !dbg !1274
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1273, metadata !DIExpression()), !dbg !1275
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1276
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1279
  %div = sdiv i64 %1, 64, !dbg !1279
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1280
  call void @instrument_read_write(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !1281
  ret void, !dbg !1282
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch___test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1283 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1286, metadata !DIExpression()), !dbg !1289
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1287, metadata !DIExpression()), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #18, !dbg !1291
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1288, metadata !DIExpression()), !dbg !1292
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1293
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1294
  %2 = call i8 asm " btsq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #18, !dbg !1295, !srcloc !1296
  %3 = icmp ult i8 %2, 2, !dbg !1295
  call void @llvm.assume(i1 %3), !dbg !1295
  store i8 %2, ptr %oldbit, align 1, !dbg !1295
  %4 = load i8, ptr %oldbit, align 1, !dbg !1297, !range !1298, !noundef !398
  %tobool = trunc i8 %4 to i1, !dbg !1297
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #18, !dbg !1299
  ret i1 %tobool, !dbg !1300
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !1301 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1309, metadata !DIExpression()), !dbg !1311
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1310, metadata !DIExpression()), !dbg !1312
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1313
  %1 = load i64, ptr %size.addr, align 8, !dbg !1314
  %conv = trunc i64 %1 to i32, !dbg !1314
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !1315
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1316
  %3 = load i64, ptr %size.addr, align 8, !dbg !1316
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #19, !dbg !1316
  ret void, !dbg !1317
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !1318 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1323, metadata !DIExpression()), !dbg !1325
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1324, metadata !DIExpression()), !dbg !1326
  ret i1 true, !dbg !1327
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !1328 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1333, metadata !DIExpression()), !dbg !1336
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1334, metadata !DIExpression()), !dbg !1337
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1335, metadata !DIExpression()), !dbg !1338
  ret void, !dbg !1339
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #3 align 16 !dbg !1340 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1344, metadata !DIExpression()), !dbg !1354
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !1345, metadata !DIExpression()), !dbg !1355
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !1346, metadata !DIExpression()), !dbg !1356
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #18, !dbg !1357
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !1347, metadata !DIExpression()), !dbg !1358
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1359
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !1360
  %conv = trunc i64 %1 to i32, !dbg !1360
  store i32 %conv, ptr %sz, align 4, !dbg !1358
  %2 = load i32, ptr %sz, align 4, !dbg !1361
  %cmp = icmp sge i32 %2, 0, !dbg !1361
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1361

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !1361
  %conv2 = sext i32 %3 to i64, !dbg !1361
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !1361
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !1361
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !1363
  %lnot = xor i1 %5, true, !dbg !1361
  %lnot5 = xor i1 %lnot, true, !dbg !1361
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !1361
  %conv6 = sext i32 %lnot.ext to i64, !dbg !1361
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !1361
  %tobool = icmp ne i64 %expval, 0, !dbg !1361
  br i1 %tobool, label %if.then, label %if.end12, !dbg !1364

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !1365
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !1368
  br i1 %7, label %if.else, label %if.then7, !dbg !1369

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !1370
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !1371
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #19, !dbg !1372
  br label %if.end11, !dbg !1372

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !1373, !range !1298, !noundef !398
  %tobool8 = trunc i8 %10 to i1, !dbg !1373
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !1375

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #19, !dbg !1376, !srcloc !1377
  br label %if.end, !dbg !1376

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #19, !dbg !1378, !srcloc !1379
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !1380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1380

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !1381
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1348, metadata !DIExpression()), !dbg !1381
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !1381
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !1381
  %lnot15 = xor i1 %cmp13, true, !dbg !1381
  %lnot17 = xor i1 %lnot15, true, !dbg !1381
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !1381
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !1381
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !1382
  %tobool19 = icmp ne i32 %12, 0, !dbg !1382
  %lnot20 = xor i1 %tobool19, true, !dbg !1382
  %lnot22 = xor i1 %lnot20, true, !dbg !1382
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !1382
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !1382
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !1382
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !1382
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !1381

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !1382

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !1383
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1351, metadata !DIExpression()), !dbg !1383
  store i32 2307, ptr %__flags, align 4, !dbg !1383
  br label %do.body28, !dbg !1383

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !1384

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !1384

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !1383

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !1386
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 249, i32 %13, i64 12) #18, !dbg !1386, !srcloc !1388
  br label %do.cond30, !dbg !1386

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !1386

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !1383

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !1389

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !1389

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !1382
  br label %do.cond35, !dbg !1383

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !1383

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !1383

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !1381
  %tobool38 = icmp ne i32 %14, 0, !dbg !1381
  %lnot39 = xor i1 %tobool38, true, !dbg !1381
  %lnot41 = xor i1 %lnot39, true, !dbg !1381
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !1381
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !1381
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !1381
  store i64 %expval44, ptr %tmp, align 8, !dbg !1382
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !1391
  %15 = load i64, ptr %tmp, align 8, !dbg !1381
  %tobool45 = icmp ne i64 %15, 0, !dbg !1391
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !1392

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !1393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1393

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !1394
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !1395
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !1396, !range !1298, !noundef !398
  %tobool48 = trunc i8 %18 to i1, !dbg !1396
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #19, !dbg !1397
  store i1 true, ptr %retval, align 1, !dbg !1398
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1398

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #18, !dbg !1399
  %19 = load i1, ptr %retval, align 1, !dbg !1399
  ret i1 %19, !dbg !1399
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1400 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !1401 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1405, metadata !DIExpression()), !dbg !1407
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1406, metadata !DIExpression()), !dbg !1408
  %0 = load i32, ptr %size.addr, align 4, !dbg !1409
  %1 = load i64, ptr %count.addr, align 8, !dbg !1411
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #19, !dbg !1412
  ret void, !dbg !1413
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1414 dso_local void @__bad_copy_from() #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1417 dso_local void @__bad_copy_to() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !1418 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1422, metadata !DIExpression()), !dbg !1425
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1423, metadata !DIExpression()), !dbg !1426
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !1424, metadata !DIExpression()), !dbg !1427
  ret void, !dbg !1428
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1429 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #5 align 16 !dbg !1430 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1434, metadata !DIExpression()), !dbg !1439
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1435, metadata !DIExpression()), !dbg !1440
  %0 = load i64, ptr %size.addr, align 8, !dbg !1441
  %cmp = icmp ule i64 %0, 4096, !dbg !1442
  %conv = zext i1 %cmp to i32, !dbg !1442
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1443
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !1444

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1445
  %cmp1 = icmp ule i64 %2, 4096, !dbg !1446
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1447

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !1448
  %4 = ptrtoint ptr %3 to i64, !dbg !1448
  %cmp3 = icmp sge i64 %4, 0, !dbg !1448
  store i1 %cmp3, ptr %retval, align 1, !dbg !1450
  br label %return, !dbg !1450

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #18, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !1436, metadata !DIExpression()), !dbg !1452
  %5 = load i64, ptr %size.addr, align 8, !dbg !1453
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !1454
  %7 = ptrtoint ptr %6 to i64, !dbg !1455
  %add = add i64 %5, %7, !dbg !1456
  store i64 %add, ptr %sum, align 8, !dbg !1452
  %8 = load i64, ptr %sum, align 8, !dbg !1457
  %cmp5 = icmp sge i64 %8, 0, !dbg !1457
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !1458

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !1459
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !1460
  %11 = ptrtoint ptr %10 to i64, !dbg !1461
  %cmp7 = icmp uge i64 %9, %11, !dbg !1462
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !1463
  store i1 %12, ptr %retval, align 1, !dbg !1464
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #18, !dbg !1465
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !1466
  ret i1 %13, !dbg !1466
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__clear_user(ptr noundef %addr, i64 noundef %size) #3 align 16 !dbg !1467 {
entry:
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1469, metadata !DIExpression()), !dbg !1471
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1470, metadata !DIExpression()), !dbg !1472
  call void @might_fault() #19, !dbg !1473
  call void @stac() #19, !dbg !1474
  %0 = load i64, ptr %size.addr, align 8, !dbg !1475
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1475
  %2 = call i64 @llvm.read_register.i64(metadata !466), !dbg !1475
  %3 = call { i64, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldnstr\0A661:\0A\09rep stosb\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (((1 << 0) << 16) $| ((12*32+11)))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call rep_stos_alternative\0A6651:\0A.popsection\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={rsp},{ax},0,1,{rsp},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 %0, ptr %1, i64 %2) #18, !dbg !1475, !srcloc !1476
  %asmresult = extractvalue { i64, ptr, i64 } %3, 0, !dbg !1475
  %asmresult1 = extractvalue { i64, ptr, i64 } %3, 1, !dbg !1475
  %asmresult2 = extractvalue { i64, ptr, i64 } %3, 2, !dbg !1475
  store i64 %asmresult, ptr %size.addr, align 8, !dbg !1475
  store ptr %asmresult1, ptr %addr.addr, align 8, !dbg !1475
  call void @llvm.write_register.i64(metadata !466, i64 %asmresult2), !dbg !1475
  call void @clac() #19, !dbg !1477
  %4 = load i64, ptr %size.addr, align 8, !dbg !1478
  ret i64 %4, !dbg !1479
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #5 align 16 !dbg !1480 {
entry:
  ret void, !dbg !1482
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #3 align 16 !dbg !1483 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !1485, !srcloc !1486
  ret void, !dbg !1487
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #3 align 16 !dbg !1488 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !dbg !1489, !srcloc !1490
  ret void, !dbg !1491
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1492 dso_local void @key_put(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !1493 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !1495, metadata !DIExpression()), !dbg !1498
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !1496, metadata !DIExpression()), !dbg !1499
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1497, metadata !DIExpression()), !dbg !1500
  %0 = load ptr, ptr %to.addr, align 8, !dbg !1501
  %1 = load i64, ptr %n.addr, align 8, !dbg !1503
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #19, !dbg !1504
  br i1 %call, label %if.then, label %if.end, !dbg !1505

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !1506
  %3 = load ptr, ptr %from.addr, align 8, !dbg !1507
  %4 = load i64, ptr %n.addr, align 8, !dbg !1508
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #19, !dbg !1509
  store i64 %call1, ptr %n.addr, align 8, !dbg !1510
  br label %if.end, !dbg !1511

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !1512
  ret i64 %5, !dbg !1513
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1514 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1515 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !1516 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1520, metadata !DIExpression()), !dbg !1522
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1521, metadata !DIExpression()), !dbg !1523
  %0 = load i64, ptr %size.addr, align 8, !dbg !1524
  %tobool = icmp ne i64 %0, 0, !dbg !1524
  br i1 %tobool, label %if.end, label %if.then, !dbg !1526

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1527
  br label %return, !dbg !1527

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1528
  %cmp = icmp ule i64 %1, 8, !dbg !1530
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1531

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1532
  br label %return, !dbg !1532

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1533
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1535
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1536

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1537
  %cmp4 = icmp ule i64 %3, 96, !dbg !1538
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1539

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1540
  br label %return, !dbg !1540

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1541
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1543
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1544

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1545
  %cmp9 = icmp ule i64 %5, 192, !dbg !1546
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1547

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1548
  br label %return, !dbg !1548

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1549
  %cmp12 = icmp ule i64 %6, 8, !dbg !1551
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1552

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1553
  br label %return, !dbg !1553

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1554
  %cmp15 = icmp ule i64 %7, 16, !dbg !1556
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1557

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1558
  br label %return, !dbg !1558

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1559
  %cmp18 = icmp ule i64 %8, 32, !dbg !1561
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1562

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1563
  br label %return, !dbg !1563

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1564
  %cmp21 = icmp ule i64 %9, 64, !dbg !1566
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1567

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1568
  br label %return, !dbg !1568

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1569
  %cmp24 = icmp ule i64 %10, 128, !dbg !1571
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1572

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1573
  br label %return, !dbg !1573

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1574
  %cmp27 = icmp ule i64 %11, 256, !dbg !1576
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1577

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1578
  br label %return, !dbg !1578

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1579
  %cmp30 = icmp ule i64 %12, 512, !dbg !1581
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1582

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1583
  br label %return, !dbg !1583

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1584
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1586
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1587

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1588
  br label %return, !dbg !1588

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1589
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1591
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1592

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1593
  br label %return, !dbg !1593

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1594
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1596
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1597

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1598
  br label %return, !dbg !1598

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1599
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1601
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1602

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1603
  br label %return, !dbg !1603

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1604
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1606
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1607

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1608
  br label %return, !dbg !1608

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1609
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1611
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1612

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1613
  br label %return, !dbg !1613

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1614
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1616
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1617

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1618
  br label %return, !dbg !1618

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1619
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1621
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1622

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1623
  br label %return, !dbg !1623

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1624
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1626
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1627

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1628
  br label %return, !dbg !1628

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1629
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1631
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1632

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1633
  br label %return, !dbg !1633

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1634
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1636
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1637

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1638
  br label %return, !dbg !1638

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1639
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1641
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1642

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1643
  br label %return, !dbg !1643

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1644, !range !1298, !noundef !398
  %tobool69 = trunc i8 %25 to i1, !dbg !1644
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1646

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1647

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #22, !dbg !1648, !srcloc !1651
  unreachable, !dbg !1648

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1652

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1653

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1654

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1656

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1654

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #18, !dbg !1658, !srcloc !1660
  br label %do.end75, !dbg !1658

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1654

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1661
  br label %return, !dbg !1661

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1662
  ret i32 %26, !dbg !1662
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1663 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !1669 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1673, metadata !DIExpression()), !dbg !1675
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1674, metadata !DIExpression()), !dbg !1676
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1677
  %and = and i32 %0, 17, !dbg !1677
  %cmp = icmp eq i32 %and, 0, !dbg !1677
  %lnot = xor i1 %cmp, true, !dbg !1677
  %lnot1 = xor i1 %lnot, true, !dbg !1677
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1677
  %conv = sext i32 %lnot.ext to i64, !dbg !1677
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1677
  %tobool = icmp ne i64 %expval, 0, !dbg !1677
  br i1 %tobool, label %if.then, label %if.end, !dbg !1679

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1680
  br label %return, !dbg !1680

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1681
  %and2 = and i32 %1, 1, !dbg !1683
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1683
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1684

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1685
  br label %return, !dbg !1685

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1686
  br label %return, !dbg !1686

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1688
  ret i32 %2, !dbg !1688
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1689 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #15

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1690 dso_local void @__compiletime_assert_117() #17

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nounwind }
attributes #15 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!19}
!llvm.named.register.rsp = !{!466}
!llvm.module.flags = !{!467, !468, !469, !470, !471, !472, !473, !474}
!llvm.ident = !{!475}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "security/keys/keyctl_pkey.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8ff5ac5c735278bbd8e240c9fd6bab0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 3)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "param_keys", scope: !19, file: !2, line: 29, type: !459, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/keys/.keyctl_pkey.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22security/keys/keyctl_pkey\22 -D KBUILD_BASENAME=\22keyctl_pkey\22 -D KBUILD_MODNAME=\22keyctl_pkey\22 -D __KBUILD_MODNAME=kmod_keyctl_pkey -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/keys/keyctl_pkey.ll security/keys/keyctl_pkey.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !63, globals: !440, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21, !29, !43, !48, !53}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernel_pkey_operation", file: !22, line: 22, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "./include/linux/keyctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb6b47c8f95fa53866d7002b6a7b8c6")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "kernel_pkey_encrypt", value: 0)
!26 = !DIEnumerator(name: "kernel_pkey_decrypt", value: 1)
!27 = !DIEnumerator(name: "kernel_pkey_sign", value: 2)
!28 = !DIEnumerator(name: "kernel_pkey_verify", value: 3)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "key_need_perm", file: !30, line: 77, baseType: !23, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!32 = !DIEnumerator(name: "KEY_NEED_UNSPECIFIED", value: 0)
!33 = !DIEnumerator(name: "KEY_NEED_VIEW", value: 1)
!34 = !DIEnumerator(name: "KEY_NEED_READ", value: 2)
!35 = !DIEnumerator(name: "KEY_NEED_WRITE", value: 3)
!36 = !DIEnumerator(name: "KEY_NEED_SEARCH", value: 4)
!37 = !DIEnumerator(name: "KEY_NEED_LINK", value: 5)
!38 = !DIEnumerator(name: "KEY_NEED_SETATTR", value: 6)
!39 = !DIEnumerator(name: "KEY_NEED_UNLINK", value: 7)
!40 = !DIEnumerator(name: "KEY_SYSADMIN_OVERRIDE", value: 8)
!41 = !DIEnumerator(name: "KEY_AUTHTOKEN_OVERRIDE", value: 9)
!42 = !DIEnumerator(name: "KEY_DEFER_PERM_CHECK", value: 10)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 23, baseType: !23, size: 32, elements: !44)
!44 = !{!45, !46, !47}
!45 = !DIEnumerator(name: "Opt_err", value: 0)
!46 = !DIEnumerator(name: "Opt_enc", value: 1)
!47 = !DIEnumerator(name: "Opt_hash", value: 2)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 10, baseType: !23, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "false", value: 0)
!52 = !DIEnumerator(name: "true", value: 1)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !54, line: 364, baseType: !23, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!55 = !{!56, !57, !58, !59, !60, !61, !62}
!56 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!57 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!58 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!59 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!60 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!61 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!62 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!63 = !{!64, !66, !68, !69, !71, !72, !75, !67, !88, !74}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !65, line: 154, baseType: !23)
!65 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !65, line: 42, baseType: !67)
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !74)
!74 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !30, line: 195, size: 1728, elements: !77)
!77 = !{!78, !89, !96, !113, !164, !201, !202, !209, !210, !211, !218, !223, !224, !225, !227, !228, !423, !439}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !76, file: !30, line: 196, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !80, line: 113, baseType: !81)
!80 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !80, line: 111, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !81, file: !80, line: 112, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !65, line: 174, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 172, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !85, file: !65, line: 173, baseType: !88, size: 32)
!88 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !76, file: !30, line: 197, baseType: !90, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !30, line: 28, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !65, line: 104, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !93, line: 20, baseType: !94)
!93 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !95, line: 26, baseType: !88)
!95 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !30, line: 198, baseType: !97, size: 192, offset: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !30, line: 198, size: 192, elements: !98)
!98 = !{!99, !105}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !97, file: !30, line: 199, baseType: !100, size: 128)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !65, line: 190, size: 128, elements: !101)
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !65, line: 191, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !100, file: !65, line: 191, baseType: !103, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !97, file: !30, line: 200, baseType: !106, size: 192, align: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !107, line: 5, size: 192, align: 64, elements: !108)
!107 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!108 = !{!109, !110, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !106, file: !107, line: 6, baseType: !67, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !106, file: !107, line: 7, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !106, file: !107, line: 8, baseType: !111, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !76, file: !30, line: 205, baseType: !114, size: 320, offset: 256)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !115, line: 48, size: 320, elements: !116)
!115 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!116 = !{!117, !127, !128, !133, !163}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !114, file: !115, line: 49, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !119, line: 13, baseType: !120)
!119 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !65, line: 181, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 179, size: 64, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !121, file: !65, line: 180, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !93, line: 22, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !95, line: 30, baseType: !126)
!126 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !114, file: !115, line: 55, baseType: !118, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !114, file: !115, line: 57, baseType: !129, size: 32, offset: 128)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !130, line: 15, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !129, file: !130, line: 20, baseType: !84, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !114, file: !115, line: 59, baseType: !134, size: 32, offset: 160)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !135, line: 23, baseType: !136)
!135 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !135, line: 14, size: 32, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !136, file: !135, line: 15, baseType: !139, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !140, line: 44, baseType: !141)
!140 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !140, line: 14, size: 32, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !140, line: 15, baseType: !144, size: 32)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !140, line: 15, size: 32, elements: !145)
!145 = !{!146, !147, !155}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !144, file: !140, line: 16, baseType: !84, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, scope: !144, file: !140, line: 24, baseType: !148, size: 16)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !140, line: 24, size: 16, elements: !149)
!149 = !{!150, !154}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !148, file: !140, line: 25, baseType: !151, size: 8)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !93, line: 17, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !95, line: 21, baseType: !153)
!153 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !148, file: !140, line: 26, baseType: !151, size: 8, offset: 8)
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !144, file: !140, line: 28, baseType: !156, size: 32)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !140, line: 28, size: 32, elements: !157)
!157 = !{!158, !162}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !156, file: !140, line: 29, baseType: !159, size: 16)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !93, line: 19, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !95, line: 24, baseType: !161)
!161 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !156, file: !140, line: 30, baseType: !159, size: 16, offset: 16)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !114, file: !115, line: 60, baseType: !100, size: 128, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !76, file: !30, line: 206, baseType: !165, size: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !167, line: 54, size: 704, elements: !168)
!167 = !DIFile(filename: "security/keys/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65e07b4072a82be19b875e4a608fcbf3")
!168 = !{!169, !170, !178, !187, !188, !189, !190, !199, !200}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !166, file: !167, line: 55, baseType: !106, size: 192, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "cons_lock", scope: !166, file: !167, line: 56, baseType: !171, size: 256, offset: 192)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !172, line: 66, size: 256, elements: !173)
!172 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!173 = !{!174, !175, !176, !177}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !171, file: !172, line: 67, baseType: !118, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !171, file: !172, line: 68, baseType: !134, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !171, file: !172, line: 70, baseType: !129, size: 32, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !171, file: !172, line: 72, baseType: !100, size: 128, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !166, file: !167, line: 57, baseType: !179, size: 32, offset: 448)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !180, line: 29, baseType: !181)
!180 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !180, line: 17, size: 32, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !180, line: 18, baseType: !184, size: 32)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !180, line: 18, size: 32, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !184, file: !180, line: 19, baseType: !136, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !166, file: !167, line: 58, baseType: !79, size: 32, offset: 480)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !166, file: !167, line: 59, baseType: !84, size: 32, offset: 512)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nikeys", scope: !166, file: !167, line: 60, baseType: !84, size: 32, offset: 544)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !166, file: !167, line: 61, baseType: !191, size: 32, offset: 576)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !192, line: 23, baseType: !193)
!192 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 21, size: 32, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !193, file: !192, line: 22, baseType: !196, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !65, line: 37, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !198, line: 49, baseType: !23)
!198 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!199 = !DIDerivedType(tag: DW_TAG_member, name: "qnkeys", scope: !166, file: !167, line: 62, baseType: !88, size: 32, offset: 608)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "qnbytes", scope: !166, file: !167, line: 63, baseType: !88, size: 32, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !76, file: !30, line: 207, baseType: !68, size: 64, offset: 640)
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !30, line: 208, baseType: !203, size: 64, offset: 704)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !30, line: 208, size: 64, elements: !204)
!204 = !{!205, !208}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !203, file: !30, line: 209, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !207, line: 8, baseType: !125)
!207 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!208 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !203, file: !30, line: 210, baseType: !206, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !76, file: !30, line: 212, baseType: !206, size: 64, offset: 768)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !76, file: !30, line: 213, baseType: !191, size: 32, offset: 832)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !76, file: !30, line: 214, baseType: !212, size: 32, offset: 864)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !192, line: 28, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 26, size: 32, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !213, file: !192, line: 27, baseType: !216, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !65, line: 38, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !198, line: 50, baseType: !23)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !76, file: !30, line: 215, baseType: !219, size: 32, offset: 896)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !30, line: 31, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !65, line: 110, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !93, line: 21, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !95, line: 27, baseType: !23)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !76, file: !30, line: 216, baseType: !161, size: 16, offset: 928)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !76, file: !30, line: 217, baseType: !161, size: 16, offset: 944)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !76, file: !30, line: 221, baseType: !226, size: 16, offset: 960)
!226 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !76, file: !30, line: 228, baseType: !67, size: 64, offset: 1024)
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !30, line: 245, baseType: !229, size: 320, offset: 1088)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !30, line: 245, size: 320, elements: !230)
!230 = !{!231, !415}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !229, file: !30, line: 246, baseType: !232, size: 320)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !30, line: 114, size: 320, elements: !233)
!233 = !{!234, !235, !247, !399, !414}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !232, file: !30, line: 116, baseType: !67, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !30, line: 117, baseType: !236, size: 64, offset: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !30, line: 117, size: 64, elements: !237)
!237 = !{!238, !246}
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !30, line: 118, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !236, file: !30, line: 118, size: 64, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !239, file: !30, line: 120, baseType: !159, size: 16)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !239, file: !30, line: 121, baseType: !243, size: 48, offset: 16)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 6)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !236, file: !30, line: 127, baseType: !67, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !232, file: !30, line: 129, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !250, line: 64, size: 1344, elements: !251)
!250 = !DIFile(filename: "./include/linux/key-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79a6b816f9397cf1462a94b9d3d8f5a6")
!251 = !{!252, !255, !259, !260, !264, !286, !290, !294, !295, !315, !319, !323, !324, !330, !334, !339, !357, !385, !390, !394, !395}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !250, line: 66, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "def_datalen", scope: !249, file: !250, line: 72, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 61, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !198, line: 72, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !198, line: 16, baseType: !67)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !249, file: !250, line: 74, baseType: !23, size: 32, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "vet_description", scope: !249, file: !250, line: 79, baseType: !261, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!88, !253}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "preparse", scope: !249, file: !250, line: 85, baseType: !265, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!88, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_preparsed_payload", file: !250, line: 31, size: 640, elements: !270)
!270 = !{!271, !272, !274, !280, !283, !284, !285}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "orig_description", scope: !269, file: !250, line: 32, baseType: !253, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !269, file: !250, line: 33, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !269, file: !250, line: 34, baseType: !275, size: 256, offset: 128)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !30, line: 134, size: 256, elements: !276)
!276 = !{!277, !278}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !275, file: !30, line: 135, baseType: !68, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !275, file: !30, line: 136, baseType: !279, size: 256)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 256, elements: !10)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !269, file: !250, line: 35, baseType: !281, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !269, file: !250, line: 36, baseType: !256, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !269, file: !250, line: 37, baseType: !256, size: 64, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !269, file: !250, line: 38, baseType: !206, size: 64, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "free_preparse", scope: !249, file: !250, line: 89, baseType: !287, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !268}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "instantiate", scope: !249, file: !250, line: 95, baseType: !291, size: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!88, !75, !268}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !249, file: !250, line: 102, baseType: !291, size: 64, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "match_preparse", scope: !249, file: !250, line: 108, baseType: !296, size: 64, offset: 512)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!88, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_match_data", file: !250, line: 46, size: 256, elements: !301)
!301 = !{!302, !312, !313, !314}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !300, file: !250, line: 51, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!306, !308, !310}
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !65, line: 35, baseType: !307)
!307 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !300, file: !250, line: 54, baseType: !281, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "preparsed", scope: !300, file: !250, line: 55, baseType: !68, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_type", scope: !300, file: !250, line: 56, baseType: !23, size: 32, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "match_free", scope: !249, file: !250, line: 112, baseType: !316, size: 64, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !299}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "revoke", scope: !249, file: !250, line: 117, baseType: !320, size: 64, offset: 640)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !75}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !249, file: !250, line: 120, baseType: !320, size: 64, offset: 704)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "describe", scope: !249, file: !250, line: 123, baseType: !325, size: 64, offset: 768)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !308, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !30, line: 97, flags: DIFlagFwdDecl)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !249, file: !250, line: 132, baseType: !331, size: 64, offset: 832)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!74, !308, !273, !256}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !249, file: !250, line: 142, baseType: !335, size: 64, offset: 896)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_key_actor_t", file: !250, line: 41, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!88, !75, !68}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_restriction", scope: !249, file: !250, line: 150, baseType: !340, size: 64, offset: 960)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!343, !253}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !30, line: 176, size: 192, elements: !345)
!345 = !{!346, !355, !356}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !344, file: !30, line: 177, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !30, line: 171, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!88, !75, !351, !353, !75}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !344, file: !30, line: 178, baseType: !75, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !344, file: !30, line: 179, baseType: !248, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "asym_query", scope: !249, file: !250, line: 153, baseType: !358, size: 64, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!88, !361, !376}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_params", file: !22, line: 29, size: 384, elements: !364)
!364 = !{!365, !366, !367, !368, !369, !370, !375}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !363, file: !22, line: 30, baseType: !75, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !363, file: !22, line: 31, baseType: !253, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !363, file: !22, line: 32, baseType: !253, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !363, file: !22, line: 33, baseType: !273, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "in_len", scope: !363, file: !22, line: 34, baseType: !222, size: 32, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !22, line: 35, baseType: !371, size: 32, offset: 288)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !22, line: 35, size: 32, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !371, file: !22, line: 36, baseType: !222, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "in2_len", scope: !371, file: !22, line: 37, baseType: !222, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !363, file: !22, line: 39, baseType: !21, size: 8, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_query", file: !22, line: 13, size: 128, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "supported_ops", scope: !377, file: !22, line: 14, baseType: !222, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !377, file: !22, line: 15, baseType: !222, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "max_data_size", scope: !377, file: !22, line: 16, baseType: !160, size: 16, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "max_sig_size", scope: !377, file: !22, line: 17, baseType: !160, size: 16, offset: 80)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "max_enc_size", scope: !377, file: !22, line: 18, baseType: !160, size: 16, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_size", scope: !377, file: !22, line: 19, baseType: !160, size: 16, offset: 112)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "asym_eds_op", scope: !249, file: !250, line: 155, baseType: !386, size: 64, offset: 1088)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!88, !389, !281, !68}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "asym_verify_signature", scope: !249, file: !250, line: 157, baseType: !391, size: 64, offset: 1152)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!88, !389, !281, !281}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !249, file: !250, line: 161, baseType: !100, size: 128, offset: 1216)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "lock_class", scope: !249, file: !250, line: 162, baseType: !396, offset: 1344)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !397, line: 206, elements: !398)
!397 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!398 = !{}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !232, file: !30, line: 130, baseType: !400, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !30, line: 108, size: 192, elements: !402)
!402 = !{!403, !412, !413}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !401, file: !30, line: 109, baseType: !404, size: 128, align: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !65, line: 232, size: 128, align: 64, elements: !405)
!405 = !{!406, !408}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !65, line: 233, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !404, file: !65, line: 234, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !407}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !401, file: !30, line: 110, baseType: !79, size: 32, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !401, file: !30, line: 111, baseType: !306, size: 8, offset: 160)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !232, file: !30, line: 131, baseType: !253, size: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !30, line: 247, baseType: !416, size: 320)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !229, file: !30, line: 247, size: 320, elements: !417)
!417 = !{!418, !419, !420, !421, !422}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !416, file: !30, line: 248, baseType: !67, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !416, file: !30, line: 249, baseType: !67, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !416, file: !30, line: 250, baseType: !248, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !416, file: !30, line: 251, baseType: !400, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !416, file: !30, line: 252, baseType: !273, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !30, line: 260, baseType: !424, size: 256, offset: 1408)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !30, line: 260, size: 256, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !424, file: !30, line: 261, baseType: !275, size: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !30, line: 262, baseType: !428, size: 256)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !424, file: !30, line: 262, size: 256, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !428, file: !30, line: 264, baseType: !100, size: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !428, file: !30, line: 265, baseType: !432, size: 128, offset: 128)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !433, line: 22, size: 128, elements: !434)
!433 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!434 = !{!435, !438}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !432, file: !433, line: 23, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !433, line: 23, flags: DIFlagFwdDecl)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !432, file: !433, line: 24, baseType: !67, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !76, file: !30, line: 280, baseType: !343, size: 64, offset: 1664)
!440 = !{!0, !7, !12, !441, !446, !17, !451, !454}
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !443, isLocal: true, isDefinition: true)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 7)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !448, isLocal: true, isDefinition: true)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 8)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !453, line: 249, type: !3, isLocal: true, isDefinition: true)
!453 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !54, line: 480, type: !456, isLocal: true, isDefinition: true)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 21)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 384, elements: !15)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "match_token", file: !462, line: 14, size: 128, elements: !463)
!462 = !DIFile(filename: "./include/linux/parser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04065a33cd4b747875fdf369f6a5f3fe")
!463 = !{!464, !465}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !461, file: !462, line: 15, baseType: !88, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !461, file: !462, line: 16, baseType: !253, size: 64, offset: 64)
!466 = !{!"rsp"}
!467 = !{i32 7, !"Dwarf Version", i32 5}
!468 = !{i32 2, !"Debug Info Version", i32 3}
!469 = !{i32 1, !"wchar_size", i32 2}
!470 = !{i32 8, !"cf-protection-branch", i32 1}
!471 = !{i32 4, !"function_return_thunk_extern", i32 1}
!472 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!473 = !{i32 1, !"Code Model", i32 2}
!474 = !{i32 1, !"override-stack-alignment", i32 8}
!475 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!476 = distinct !DISubprogram(name: "keyctl_pkey_query", scope: !2, file: !2, line: 169, type: !477, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !493)
!477 = !DISubroutineType(types: !478)
!478 = !{!74, !90, !253, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyctl_pkey_query", file: !481, line: 98, size: 448, elements: !482)
!481 = !DIFile(filename: "./include/uapi/linux/keyctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3240d6fd2beed3359c99cdf001231412")
!482 = !{!483, !484, !485, !486, !487, !488, !489}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "supported_ops", scope: !480, file: !481, line: 99, baseType: !222, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !480, file: !481, line: 100, baseType: !222, size: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "max_data_size", scope: !480, file: !481, line: 101, baseType: !160, size: 16, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "max_sig_size", scope: !480, file: !481, line: 102, baseType: !160, size: 16, offset: 80)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "max_enc_size", scope: !480, file: !481, line: 103, baseType: !160, size: 16, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_size", scope: !480, file: !481, line: 104, baseType: !160, size: 16, offset: 112)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "__spare", scope: !480, file: !481, line: 105, baseType: !490, size: 320, offset: 128)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 320, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 10)
!493 = !{!494, !495, !496, !497, !498, !499, !500}
!494 = !DILocalVariable(name: "id", arg: 1, scope: !476, file: !2, line: 169, type: !90)
!495 = !DILocalVariable(name: "_info", arg: 2, scope: !476, file: !2, line: 170, type: !253)
!496 = !DILocalVariable(name: "_res", arg: 3, scope: !476, file: !2, line: 171, type: !479)
!497 = !DILocalVariable(name: "params", scope: !476, file: !2, line: 173, type: !363)
!498 = !DILocalVariable(name: "res", scope: !476, file: !2, line: 174, type: !377)
!499 = !DILocalVariable(name: "ret", scope: !476, file: !2, line: 175, type: !74)
!500 = !DILabel(scope: !476, name: "error", file: !2, line: 190)
!501 = !DILocation(line: 169, column: 37, scope: !476)
!502 = !DILocation(line: 170, column: 29, scope: !476)
!503 = !DILocation(line: 171, column: 43, scope: !476)
!504 = !DILocation(line: 173, column: 2, scope: !476)
!505 = !DILocation(line: 173, column: 28, scope: !476)
!506 = !DILocation(line: 174, column: 2, scope: !476)
!507 = !DILocation(line: 174, column: 27, scope: !476)
!508 = !DILocation(line: 175, column: 2, scope: !476)
!509 = !DILocation(line: 175, column: 7, scope: !476)
!510 = !DILocation(line: 177, column: 31, scope: !476)
!511 = !DILocation(line: 177, column: 35, scope: !476)
!512 = !DILocation(line: 177, column: 8, scope: !476)
!513 = !DILocation(line: 177, column: 6, scope: !476)
!514 = !DILocation(line: 178, column: 6, scope: !515)
!515 = distinct !DILexicalBlock(scope: !476, file: !2, line: 178, column: 6)
!516 = !DILocation(line: 178, column: 10, scope: !515)
!517 = !DILocation(line: 178, column: 6, scope: !476)
!518 = !DILocation(line: 179, column: 3, scope: !515)
!519 = !DILocation(line: 181, column: 15, scope: !476)
!520 = !DILocation(line: 181, column: 20, scope: !476)
!521 = !DILocation(line: 181, column: 26, scope: !476)
!522 = !DILocation(line: 181, column: 8, scope: !476)
!523 = !DILocation(line: 181, column: 6, scope: !476)
!524 = !DILocation(line: 182, column: 6, scope: !525)
!525 = distinct !DILexicalBlock(scope: !476, file: !2, line: 182, column: 6)
!526 = !DILocation(line: 182, column: 10, scope: !525)
!527 = !DILocation(line: 182, column: 6, scope: !476)
!528 = !DILocation(line: 183, column: 3, scope: !525)
!529 = !DILocation(line: 185, column: 6, scope: !476)
!530 = !DILocation(line: 186, column: 19, scope: !531)
!531 = distinct !DILexicalBlock(scope: !476, file: !2, line: 186, column: 6)
!532 = !DILocation(line: 186, column: 6, scope: !531)
!533 = !DILocation(line: 186, column: 44, scope: !531)
!534 = !DILocation(line: 186, column: 49, scope: !531)
!535 = !DILocation(line: 187, column: 17, scope: !531)
!536 = !DILocation(line: 187, column: 23, scope: !531)
!537 = !DILocation(line: 187, column: 6, scope: !531)
!538 = !DILocation(line: 187, column: 55, scope: !531)
!539 = !DILocation(line: 186, column: 6, scope: !476)
!540 = !DILocation(line: 188, column: 7, scope: !531)
!541 = !DILocation(line: 188, column: 3, scope: !531)
!542 = !DILocation(line: 187, column: 58, scope: !531)
!543 = !DILocation(line: 190, column: 1, scope: !476)
!544 = !DILocation(line: 191, column: 2, scope: !476)
!545 = !DILocation(line: 192, column: 9, scope: !476)
!546 = !DILocation(line: 193, column: 1, scope: !476)
!547 = !DILocation(line: 192, column: 2, scope: !476)
!548 = distinct !DISubprogram(name: "keyctl_pkey_params_get", scope: !2, file: !2, line: 78, type: !549, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !551)
!549 = !DISubroutineType(types: !550)
!550 = !{!88, !90, !253, !389}
!551 = !{!552, !553, !554, !555, !559, !560}
!552 = !DILocalVariable(name: "id", arg: 1, scope: !548, file: !2, line: 78, type: !90)
!553 = !DILocalVariable(name: "_info", arg: 2, scope: !548, file: !2, line: 79, type: !253)
!554 = !DILocalVariable(name: "params", arg: 3, scope: !548, file: !2, line: 80, type: !389)
!555 = !DILocalVariable(name: "key_ref", scope: !548, file: !2, line: 82, type: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_ref_t", file: !30, line: 153, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "__key_reference_with_attributes", file: !30, line: 153, flags: DIFlagFwdDecl)
!559 = !DILocalVariable(name: "p", scope: !548, file: !2, line: 83, type: !68)
!560 = !DILocalVariable(name: "ret", scope: !548, file: !2, line: 84, type: !88)
!561 = !DILocation(line: 78, column: 48, scope: !548)
!562 = !DILocation(line: 79, column: 26, scope: !548)
!563 = !DILocation(line: 80, column: 34, scope: !548)
!564 = !DILocation(line: 82, column: 2, scope: !548)
!565 = !DILocation(line: 82, column: 12, scope: !548)
!566 = !DILocation(line: 83, column: 2, scope: !548)
!567 = !DILocation(line: 83, column: 8, scope: !548)
!568 = !DILocation(line: 84, column: 2, scope: !548)
!569 = !DILocation(line: 84, column: 6, scope: !548)
!570 = !DILocation(line: 86, column: 9, scope: !548)
!571 = !DILocation(line: 86, column: 2, scope: !548)
!572 = !DILocation(line: 87, column: 2, scope: !548)
!573 = !DILocation(line: 87, column: 10, scope: !548)
!574 = !DILocation(line: 87, column: 19, scope: !548)
!575 = !DILocation(line: 89, column: 19, scope: !548)
!576 = !DILocation(line: 89, column: 6, scope: !548)
!577 = !DILocation(line: 89, column: 4, scope: !548)
!578 = !DILocation(line: 90, column: 13, scope: !579)
!579 = distinct !DILexicalBlock(scope: !548, file: !2, line: 90, column: 6)
!580 = !DILocation(line: 90, column: 6, scope: !579)
!581 = !DILocation(line: 90, column: 6, scope: !548)
!582 = !DILocation(line: 91, column: 18, scope: !579)
!583 = !DILocation(line: 91, column: 10, scope: !579)
!584 = !DILocation(line: 91, column: 3, scope: !579)
!585 = !DILocation(line: 92, column: 17, scope: !548)
!586 = !DILocation(line: 92, column: 2, scope: !548)
!587 = !DILocation(line: 92, column: 10, scope: !548)
!588 = !DILocation(line: 92, column: 15, scope: !548)
!589 = !DILocation(line: 94, column: 33, scope: !548)
!590 = !DILocation(line: 94, column: 8, scope: !548)
!591 = !DILocation(line: 94, column: 6, scope: !548)
!592 = !DILocation(line: 95, column: 6, scope: !593)
!593 = distinct !DILexicalBlock(scope: !548, file: !2, line: 95, column: 6)
!594 = !DILocation(line: 95, column: 10, scope: !593)
!595 = !DILocation(line: 95, column: 6, scope: !548)
!596 = !DILocation(line: 96, column: 10, scope: !593)
!597 = !DILocation(line: 96, column: 3, scope: !593)
!598 = !DILocation(line: 98, column: 28, scope: !548)
!599 = !DILocation(line: 98, column: 12, scope: !548)
!600 = !DILocation(line: 98, column: 10, scope: !548)
!601 = !DILocation(line: 99, column: 13, scope: !602)
!602 = distinct !DILexicalBlock(scope: !548, file: !2, line: 99, column: 6)
!603 = !DILocation(line: 99, column: 6, scope: !602)
!604 = !DILocation(line: 99, column: 6, scope: !548)
!605 = !DILocation(line: 100, column: 18, scope: !602)
!606 = !DILocation(line: 100, column: 10, scope: !602)
!607 = !DILocation(line: 100, column: 3, scope: !602)
!608 = !DILocation(line: 101, column: 31, scope: !548)
!609 = !DILocation(line: 101, column: 16, scope: !548)
!610 = !DILocation(line: 101, column: 2, scope: !548)
!611 = !DILocation(line: 101, column: 10, scope: !548)
!612 = !DILocation(line: 101, column: 14, scope: !548)
!613 = !DILocation(line: 103, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !548, file: !2, line: 103, column: 6)
!615 = !DILocation(line: 103, column: 15, scope: !614)
!616 = !DILocation(line: 103, column: 20, scope: !614)
!617 = !DILocation(line: 103, column: 26, scope: !614)
!618 = !DILocation(line: 103, column: 6, scope: !548)
!619 = !DILocation(line: 104, column: 3, scope: !614)
!620 = !DILocation(line: 106, column: 2, scope: !548)
!621 = !DILocation(line: 107, column: 1, scope: !548)
!622 = distinct !DISubprogram(name: "copy_to_user", scope: !623, file: !623, line: 188, type: !624, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !626)
!623 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!624 = !DISubroutineType(types: !625)
!625 = !{!67, !68, !281, !67}
!626 = !{!627, !628, !629}
!627 = !DILocalVariable(name: "to", arg: 1, scope: !622, file: !623, line: 188, type: !68)
!628 = !DILocalVariable(name: "from", arg: 2, scope: !622, file: !623, line: 188, type: !281)
!629 = !DILocalVariable(name: "n", arg: 3, scope: !622, file: !623, line: 188, type: !67)
!630 = !DILocation(line: 188, column: 27, scope: !622)
!631 = !DILocation(line: 188, column: 43, scope: !622)
!632 = !DILocation(line: 188, column: 63, scope: !622)
!633 = !DILocation(line: 190, column: 22, scope: !634)
!634 = distinct !DILexicalBlock(scope: !622, file: !623, line: 190, column: 6)
!635 = !DILocation(line: 190, column: 28, scope: !634)
!636 = !DILocation(line: 190, column: 6, scope: !634)
!637 = !DILocation(line: 190, column: 6, scope: !622)
!638 = !DILocation(line: 191, column: 21, scope: !634)
!639 = !DILocation(line: 191, column: 25, scope: !634)
!640 = !DILocation(line: 191, column: 31, scope: !634)
!641 = !DILocation(line: 191, column: 7, scope: !634)
!642 = !DILocation(line: 191, column: 5, scope: !634)
!643 = !DILocation(line: 191, column: 3, scope: !634)
!644 = !DILocation(line: 192, column: 9, scope: !622)
!645 = !DILocation(line: 192, column: 2, scope: !622)
!646 = distinct !DISubprogram(name: "clear_user", scope: !647, file: !647, line: 188, type: !648, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !650)
!647 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!648 = !DISubroutineType(types: !649)
!649 = !{!67, !68, !67}
!650 = !{!651, !652}
!651 = !DILocalVariable(name: "to", arg: 1, scope: !646, file: !647, line: 188, type: !68)
!652 = !DILocalVariable(name: "n", arg: 2, scope: !646, file: !647, line: 188, type: !67)
!653 = !DILocation(line: 188, column: 62, scope: !646)
!654 = !DILocation(line: 188, column: 80, scope: !646)
!655 = !DILocation(line: 190, column: 18, scope: !656)
!656 = distinct !DILexicalBlock(scope: !646, file: !647, line: 190, column: 6)
!657 = !DILocation(line: 190, column: 22, scope: !656)
!658 = !DILocation(line: 190, column: 6, scope: !656)
!659 = !DILocation(line: 190, column: 6, scope: !646)
!660 = !DILocation(line: 191, column: 23, scope: !656)
!661 = !DILocation(line: 191, column: 27, scope: !656)
!662 = !DILocation(line: 191, column: 10, scope: !656)
!663 = !DILocation(line: 191, column: 3, scope: !656)
!664 = !DILocation(line: 192, column: 9, scope: !646)
!665 = !DILocation(line: 192, column: 2, scope: !646)
!666 = !DILocation(line: 193, column: 1, scope: !646)
!667 = distinct !DISubprogram(name: "keyctl_pkey_params_free", scope: !2, file: !2, line: 17, type: !668, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !389}
!670 = !{!671}
!671 = !DILocalVariable(name: "params", arg: 1, scope: !667, file: !2, line: 17, type: !389)
!672 = !DILocation(line: 17, column: 64, scope: !667)
!673 = !DILocation(line: 19, column: 8, scope: !667)
!674 = !DILocation(line: 19, column: 16, scope: !667)
!675 = !DILocation(line: 19, column: 2, scope: !667)
!676 = !DILocation(line: 20, column: 10, scope: !667)
!677 = !DILocation(line: 20, column: 18, scope: !667)
!678 = !DILocation(line: 20, column: 2, scope: !667)
!679 = !DILocation(line: 21, column: 1, scope: !667)
!680 = distinct !DISubprogram(name: "keyctl_pkey_e_d_s", scope: !2, file: !2, line: 212, type: !681, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !696)
!681 = !DISubroutineType(types: !682)
!682 = !{!74, !88, !683, !253, !281, !68}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyctl_pkey_params", file: !481, line: 108, size: 320, elements: !686)
!686 = !{!687, !688, !689, !694}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "key_id", scope: !685, file: !481, line: 109, baseType: !94, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "in_len", scope: !685, file: !481, line: 110, baseType: !222, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !481, line: 111, baseType: !690, size: 32, offset: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !685, file: !481, line: 111, size: 32, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !690, file: !481, line: 112, baseType: !222, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "in2_len", scope: !690, file: !481, line: 113, baseType: !222, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "__spare", scope: !685, file: !481, line: 115, baseType: !695, size: 224, offset: 96)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 224, elements: !444)
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!697 = !DILocalVariable(name: "op", arg: 1, scope: !680, file: !2, line: 212, type: !88)
!698 = !DILocalVariable(name: "_params", arg: 2, scope: !680, file: !2, line: 213, type: !683)
!699 = !DILocalVariable(name: "_info", arg: 3, scope: !680, file: !2, line: 214, type: !253)
!700 = !DILocalVariable(name: "_in", arg: 4, scope: !680, file: !2, line: 215, type: !281)
!701 = !DILocalVariable(name: "_out", arg: 5, scope: !680, file: !2, line: 216, type: !68)
!702 = !DILocalVariable(name: "params", scope: !680, file: !2, line: 218, type: !363)
!703 = !DILocalVariable(name: "in", scope: !680, file: !2, line: 219, type: !68)
!704 = !DILocalVariable(name: "out", scope: !680, file: !2, line: 219, type: !68)
!705 = !DILocalVariable(name: "ret", scope: !680, file: !2, line: 220, type: !74)
!706 = !DILabel(scope: !680, name: "error_out", file: !2, line: 262)
!707 = !DILabel(scope: !680, name: "error_in", file: !2, line: 264)
!708 = !DILabel(scope: !680, name: "error_params", file: !2, line: 266)
!709 = !DILocation(line: 212, column: 28, scope: !680)
!710 = !DILocation(line: 213, column: 50, scope: !680)
!711 = !DILocation(line: 214, column: 29, scope: !680)
!712 = !DILocation(line: 215, column: 29, scope: !680)
!713 = !DILocation(line: 216, column: 23, scope: !680)
!714 = !DILocation(line: 218, column: 2, scope: !680)
!715 = !DILocation(line: 218, column: 28, scope: !680)
!716 = !DILocation(line: 219, column: 2, scope: !680)
!717 = !DILocation(line: 219, column: 8, scope: !680)
!718 = !DILocation(line: 219, column: 13, scope: !680)
!719 = !DILocation(line: 220, column: 2, scope: !680)
!720 = !DILocation(line: 220, column: 7, scope: !680)
!721 = !DILocation(line: 222, column: 33, scope: !680)
!722 = !DILocation(line: 222, column: 42, scope: !680)
!723 = !DILocation(line: 222, column: 49, scope: !680)
!724 = !DILocation(line: 222, column: 8, scope: !680)
!725 = !DILocation(line: 222, column: 6, scope: !680)
!726 = !DILocation(line: 223, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !680, file: !2, line: 223, column: 6)
!728 = !DILocation(line: 223, column: 10, scope: !727)
!729 = !DILocation(line: 223, column: 6, scope: !680)
!730 = !DILocation(line: 224, column: 3, scope: !727)
!731 = !DILocation(line: 226, column: 6, scope: !680)
!732 = !DILocation(line: 227, column: 14, scope: !733)
!733 = distinct !DILexicalBlock(scope: !680, file: !2, line: 227, column: 6)
!734 = !DILocation(line: 227, column: 19, scope: !733)
!735 = !DILocation(line: 227, column: 25, scope: !733)
!736 = !DILocation(line: 227, column: 7, scope: !733)
!737 = !DILocation(line: 227, column: 6, scope: !680)
!738 = !DILocation(line: 228, column: 3, scope: !733)
!739 = !DILocation(line: 230, column: 10, scope: !680)
!740 = !DILocation(line: 230, column: 2, scope: !680)
!741 = !DILocation(line: 232, column: 10, scope: !742)
!742 = distinct !DILexicalBlock(scope: !680, file: !2, line: 230, column: 14)
!743 = !DILocation(line: 232, column: 13, scope: !742)
!744 = !DILocation(line: 233, column: 3, scope: !742)
!745 = !DILocation(line: 235, column: 10, scope: !742)
!746 = !DILocation(line: 235, column: 13, scope: !742)
!747 = !DILocation(line: 236, column: 3, scope: !742)
!748 = !DILocation(line: 238, column: 10, scope: !742)
!749 = !DILocation(line: 238, column: 13, scope: !742)
!750 = !DILocation(line: 239, column: 3, scope: !742)
!751 = !DILocation(line: 241, column: 3, scope: !742)
!752 = !DILocation(line: 241, column: 3, scope: !753)
!753 = distinct !DILexicalBlock(scope: !742, file: !2, line: 241, column: 3)
!754 = !DILocation(line: 241, column: 3, scope: !755)
!755 = distinct !DILexicalBlock(scope: !753, file: !2, line: 241, column: 3)
!756 = !DILocation(line: 241, column: 3, scope: !757)
!757 = distinct !DILexicalBlock(scope: !753, file: !2, line: 241, column: 3)
!758 = !{i64 2154098581, i64 2154098610, i64 2154098656, i64 2154098714, i64 2154098768, i64 2154098822, i64 2154098877, i64 2154098908}
!759 = !DILocation(line: 242, column: 2, scope: !742)
!760 = !DILocation(line: 244, column: 19, scope: !680)
!761 = !DILocation(line: 244, column: 31, scope: !680)
!762 = !DILocation(line: 244, column: 24, scope: !680)
!763 = !DILocation(line: 244, column: 7, scope: !680)
!764 = !DILocation(line: 244, column: 5, scope: !680)
!765 = !DILocation(line: 245, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !680, file: !2, line: 245, column: 6)
!767 = !DILocation(line: 245, column: 6, scope: !766)
!768 = !DILocation(line: 245, column: 6, scope: !680)
!769 = !DILocation(line: 246, column: 17, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !2, line: 245, column: 18)
!771 = !DILocation(line: 246, column: 9, scope: !770)
!772 = !DILocation(line: 246, column: 7, scope: !770)
!773 = !DILocation(line: 247, column: 3, scope: !770)
!774 = !DILocation(line: 250, column: 6, scope: !680)
!775 = !DILocation(line: 251, column: 23, scope: !680)
!776 = !DILocation(line: 251, column: 16, scope: !680)
!777 = !DILocation(line: 251, column: 8, scope: !680)
!778 = !DILocation(line: 251, column: 6, scope: !680)
!779 = !DILocation(line: 252, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !680, file: !2, line: 252, column: 6)
!781 = !DILocation(line: 252, column: 6, scope: !680)
!782 = !DILocation(line: 253, column: 3, scope: !780)
!783 = !DILocation(line: 255, column: 15, scope: !680)
!784 = !DILocation(line: 255, column: 20, scope: !680)
!785 = !DILocation(line: 255, column: 26, scope: !680)
!786 = !DILocation(line: 255, column: 47, scope: !680)
!787 = !DILocation(line: 255, column: 51, scope: !680)
!788 = !DILocation(line: 255, column: 8, scope: !680)
!789 = !DILocation(line: 255, column: 6, scope: !680)
!790 = !DILocation(line: 256, column: 6, scope: !791)
!791 = distinct !DILexicalBlock(scope: !680, file: !2, line: 256, column: 6)
!792 = !DILocation(line: 256, column: 10, scope: !791)
!793 = !DILocation(line: 256, column: 6, scope: !680)
!794 = !DILocation(line: 257, column: 3, scope: !791)
!795 = !DILocation(line: 259, column: 19, scope: !796)
!796 = distinct !DILexicalBlock(scope: !680, file: !2, line: 259, column: 6)
!797 = !DILocation(line: 259, column: 25, scope: !796)
!798 = !DILocation(line: 259, column: 30, scope: !796)
!799 = !DILocation(line: 259, column: 6, scope: !796)
!800 = !DILocation(line: 259, column: 35, scope: !796)
!801 = !DILocation(line: 259, column: 6, scope: !680)
!802 = !DILocation(line: 260, column: 7, scope: !796)
!803 = !DILocation(line: 260, column: 3, scope: !796)
!804 = !DILocation(line: 259, column: 38, scope: !796)
!805 = !DILocation(line: 262, column: 1, scope: !680)
!806 = !DILocation(line: 263, column: 8, scope: !680)
!807 = !DILocation(line: 263, column: 2, scope: !680)
!808 = !DILocation(line: 264, column: 1, scope: !680)
!809 = !DILocation(line: 265, column: 8, scope: !680)
!810 = !DILocation(line: 265, column: 2, scope: !680)
!811 = !DILocation(line: 266, column: 1, scope: !680)
!812 = !DILocation(line: 267, column: 2, scope: !680)
!813 = !DILocation(line: 268, column: 9, scope: !680)
!814 = !DILocation(line: 269, column: 1, scope: !680)
!815 = !DILocation(line: 268, column: 2, scope: !680)
!816 = distinct !DISubprogram(name: "keyctl_pkey_params_get_2", scope: !2, file: !2, line: 113, type: !817, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{!88, !683, !253, !88, !389}
!819 = !{!820, !821, !822, !823, !824, !825, !826}
!820 = !DILocalVariable(name: "_params", arg: 1, scope: !816, file: !2, line: 113, type: !683)
!821 = !DILocalVariable(name: "_info", arg: 2, scope: !816, file: !2, line: 114, type: !253)
!822 = !DILocalVariable(name: "op", arg: 3, scope: !816, file: !2, line: 115, type: !88)
!823 = !DILocalVariable(name: "params", arg: 4, scope: !816, file: !2, line: 116, type: !389)
!824 = !DILocalVariable(name: "uparams", scope: !816, file: !2, line: 118, type: !685)
!825 = !DILocalVariable(name: "info", scope: !816, file: !2, line: 119, type: !377)
!826 = !DILocalVariable(name: "ret", scope: !816, file: !2, line: 120, type: !88)
!827 = !DILocation(line: 113, column: 77, scope: !816)
!828 = !DILocation(line: 114, column: 28, scope: !816)
!829 = !DILocation(line: 115, column: 13, scope: !816)
!830 = !DILocation(line: 116, column: 36, scope: !816)
!831 = !DILocation(line: 118, column: 2, scope: !816)
!832 = !DILocation(line: 118, column: 28, scope: !816)
!833 = !DILocation(line: 119, column: 2, scope: !816)
!834 = !DILocation(line: 119, column: 27, scope: !816)
!835 = !DILocation(line: 120, column: 2, scope: !816)
!836 = !DILocation(line: 120, column: 6, scope: !816)
!837 = !DILocation(line: 122, column: 9, scope: !816)
!838 = !DILocation(line: 122, column: 2, scope: !816)
!839 = !DILocation(line: 123, column: 2, scope: !816)
!840 = !DILocation(line: 123, column: 10, scope: !816)
!841 = !DILocation(line: 123, column: 19, scope: !816)
!842 = !DILocation(line: 125, column: 31, scope: !843)
!843 = distinct !DILexicalBlock(scope: !816, file: !2, line: 125, column: 6)
!844 = !DILocation(line: 125, column: 6, scope: !843)
!845 = !DILocation(line: 125, column: 57, scope: !843)
!846 = !DILocation(line: 125, column: 6, scope: !816)
!847 = !DILocation(line: 126, column: 3, scope: !843)
!848 = !DILocation(line: 128, column: 39, scope: !816)
!849 = !DILocation(line: 128, column: 47, scope: !816)
!850 = !DILocation(line: 128, column: 54, scope: !816)
!851 = !DILocation(line: 128, column: 8, scope: !816)
!852 = !DILocation(line: 128, column: 6, scope: !816)
!853 = !DILocation(line: 129, column: 6, scope: !854)
!854 = distinct !DILexicalBlock(scope: !816, file: !2, line: 129, column: 6)
!855 = !DILocation(line: 129, column: 10, scope: !854)
!856 = !DILocation(line: 129, column: 6, scope: !816)
!857 = !DILocation(line: 130, column: 10, scope: !854)
!858 = !DILocation(line: 130, column: 3, scope: !854)
!859 = !DILocation(line: 132, column: 8, scope: !816)
!860 = !DILocation(line: 132, column: 16, scope: !816)
!861 = !DILocation(line: 132, column: 21, scope: !816)
!862 = !DILocation(line: 132, column: 27, scope: !816)
!863 = !DILocation(line: 132, column: 38, scope: !816)
!864 = !DILocation(line: 132, column: 6, scope: !816)
!865 = !DILocation(line: 133, column: 6, scope: !866)
!866 = distinct !DILexicalBlock(scope: !816, file: !2, line: 133, column: 6)
!867 = !DILocation(line: 133, column: 10, scope: !866)
!868 = !DILocation(line: 133, column: 6, scope: !816)
!869 = !DILocation(line: 134, column: 10, scope: !866)
!870 = !DILocation(line: 134, column: 3, scope: !866)
!871 = !DILocation(line: 136, column: 10, scope: !816)
!872 = !DILocation(line: 136, column: 2, scope: !816)
!873 = !DILocation(line: 138, column: 15, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !2, line: 138, column: 7)
!875 = distinct !DILexicalBlock(scope: !816, file: !2, line: 136, column: 14)
!876 = !DILocation(line: 138, column: 30, scope: !874)
!877 = !DILocation(line: 138, column: 25, scope: !874)
!878 = !DILocation(line: 138, column: 23, scope: !874)
!879 = !DILocation(line: 138, column: 43, scope: !874)
!880 = !DILocation(line: 139, column: 15, scope: !874)
!881 = !DILocation(line: 139, column: 30, scope: !874)
!882 = !DILocation(line: 139, column: 25, scope: !874)
!883 = !DILocation(line: 139, column: 23, scope: !874)
!884 = !DILocation(line: 138, column: 7, scope: !875)
!885 = !DILocation(line: 140, column: 4, scope: !874)
!886 = !DILocation(line: 141, column: 3, scope: !875)
!887 = !DILocation(line: 143, column: 15, scope: !888)
!888 = distinct !DILexicalBlock(scope: !875, file: !2, line: 143, column: 7)
!889 = !DILocation(line: 143, column: 30, scope: !888)
!890 = !DILocation(line: 143, column: 25, scope: !888)
!891 = !DILocation(line: 143, column: 23, scope: !888)
!892 = !DILocation(line: 143, column: 43, scope: !888)
!893 = !DILocation(line: 144, column: 15, scope: !888)
!894 = !DILocation(line: 144, column: 30, scope: !888)
!895 = !DILocation(line: 144, column: 25, scope: !888)
!896 = !DILocation(line: 144, column: 23, scope: !888)
!897 = !DILocation(line: 143, column: 7, scope: !875)
!898 = !DILocation(line: 145, column: 4, scope: !888)
!899 = !DILocation(line: 146, column: 3, scope: !875)
!900 = !DILocation(line: 148, column: 15, scope: !901)
!901 = distinct !DILexicalBlock(scope: !875, file: !2, line: 148, column: 7)
!902 = !DILocation(line: 148, column: 30, scope: !901)
!903 = !DILocation(line: 148, column: 25, scope: !901)
!904 = !DILocation(line: 148, column: 23, scope: !901)
!905 = !DILocation(line: 148, column: 44, scope: !901)
!906 = !DILocation(line: 149, column: 15, scope: !901)
!907 = !DILocation(line: 149, column: 30, scope: !901)
!908 = !DILocation(line: 149, column: 25, scope: !901)
!909 = !DILocation(line: 149, column: 23, scope: !901)
!910 = !DILocation(line: 148, column: 7, scope: !875)
!911 = !DILocation(line: 150, column: 4, scope: !901)
!912 = !DILocation(line: 151, column: 3, scope: !875)
!913 = !DILocation(line: 153, column: 15, scope: !914)
!914 = distinct !DILexicalBlock(scope: !875, file: !2, line: 153, column: 7)
!915 = !DILocation(line: 153, column: 30, scope: !914)
!916 = !DILocation(line: 153, column: 25, scope: !914)
!917 = !DILocation(line: 153, column: 23, scope: !914)
!918 = !DILocation(line: 153, column: 44, scope: !914)
!919 = !DILocation(line: 154, column: 15, scope: !914)
!920 = !DILocation(line: 154, column: 30, scope: !914)
!921 = !DILocation(line: 154, column: 25, scope: !914)
!922 = !DILocation(line: 154, column: 23, scope: !914)
!923 = !DILocation(line: 153, column: 7, scope: !875)
!924 = !DILocation(line: 155, column: 4, scope: !914)
!925 = !DILocation(line: 156, column: 3, scope: !875)
!926 = !DILocation(line: 158, column: 3, scope: !875)
!927 = !DILocation(line: 158, column: 3, scope: !928)
!928 = distinct !DILexicalBlock(scope: !875, file: !2, line: 158, column: 3)
!929 = !DILocation(line: 158, column: 3, scope: !930)
!930 = distinct !DILexicalBlock(scope: !928, file: !2, line: 158, column: 3)
!931 = !DILocation(line: 158, column: 3, scope: !932)
!932 = distinct !DILexicalBlock(scope: !928, file: !2, line: 158, column: 3)
!933 = !{i64 2154097564, i64 2154097593, i64 2154097639, i64 2154097697, i64 2154097751, i64 2154097805, i64 2154097860, i64 2154097891}
!934 = !DILocation(line: 159, column: 2, scope: !875)
!935 = !DILocation(line: 161, column: 28, scope: !816)
!936 = !DILocation(line: 161, column: 2, scope: !816)
!937 = !DILocation(line: 161, column: 10, scope: !816)
!938 = !DILocation(line: 161, column: 18, scope: !816)
!939 = !DILocation(line: 162, column: 28, scope: !816)
!940 = !DILocation(line: 162, column: 2, scope: !816)
!941 = !DILocation(line: 162, column: 10, scope: !816)
!942 = !DILocation(line: 162, column: 18, scope: !816)
!943 = !DILocation(line: 163, column: 2, scope: !816)
!944 = !DILocation(line: 164, column: 1, scope: !816)
!945 = !DISubprogram(name: "memdup_user", scope: !946, file: !946, line: 15, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!946 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!947 = !DISubroutineType(types: !948)
!948 = !{!68, !281, !256}
!949 = distinct !DISubprogram(name: "IS_ERR", scope: !950, file: !950, line: 59, type: !951, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !953)
!950 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!951 = !DISubroutineType(types: !952)
!952 = !{!306, !281}
!953 = !{!954}
!954 = !DILocalVariable(name: "ptr", arg: 1, scope: !949, file: !950, line: 59, type: !281)
!955 = !DILocation(line: 59, column: 60, scope: !949)
!956 = !DILocation(line: 61, column: 9, scope: !949)
!957 = !DILocation(line: 61, column: 2, scope: !949)
!958 = distinct !DISubprogram(name: "PTR_ERR", scope: !950, file: !950, line: 49, type: !959, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !961)
!959 = !DISubroutineType(types: !960)
!960 = !{!74, !281}
!961 = !{!962}
!962 = !DILocalVariable(name: "ptr", arg: 1, scope: !958, file: !950, line: 49, type: !281)
!963 = !DILocation(line: 49, column: 61, scope: !958)
!964 = !DILocation(line: 51, column: 16, scope: !958)
!965 = !DILocation(line: 51, column: 9, scope: !958)
!966 = !DILocation(line: 51, column: 2, scope: !958)
!967 = distinct !DISubprogram(name: "kmalloc", scope: !54, file: !54, line: 591, type: !968, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!68, !256, !64}
!970 = !{!971, !972, !973}
!971 = !DILocalVariable(name: "size", arg: 1, scope: !967, file: !54, line: 591, type: !256)
!972 = !DILocalVariable(name: "flags", arg: 2, scope: !967, file: !54, line: 591, type: !64)
!973 = !DILocalVariable(name: "index", scope: !974, file: !54, line: 594, type: !23)
!974 = distinct !DILexicalBlock(scope: !975, file: !54, line: 593, column: 42)
!975 = distinct !DILexicalBlock(scope: !967, file: !54, line: 593, column: 6)
!976 = !DILocation(line: 591, column: 61, scope: !967)
!977 = !DILocation(line: 591, column: 73, scope: !967)
!978 = !DILocation(line: 593, column: 27, scope: !975)
!979 = !DILocation(line: 593, column: 6, scope: !975)
!980 = !DILocation(line: 593, column: 33, scope: !975)
!981 = !DILocation(line: 593, column: 36, scope: !975)
!982 = !DILocation(line: 593, column: 6, scope: !967)
!983 = !DILocation(line: 594, column: 3, scope: !974)
!984 = !DILocation(line: 594, column: 16, scope: !974)
!985 = !DILocation(line: 596, column: 7, scope: !986)
!986 = distinct !DILexicalBlock(scope: !974, file: !54, line: 596, column: 7)
!987 = !DILocation(line: 596, column: 12, scope: !986)
!988 = !DILocation(line: 596, column: 7, scope: !974)
!989 = !DILocation(line: 597, column: 25, scope: !986)
!990 = !DILocation(line: 597, column: 31, scope: !986)
!991 = !DILocation(line: 597, column: 11, scope: !986)
!992 = !DILocation(line: 597, column: 4, scope: !986)
!993 = !DILocation(line: 599, column: 11, scope: !974)
!994 = !DILocation(line: 599, column: 9, scope: !974)
!995 = !DILocation(line: 601, column: 33, scope: !974)
!996 = !DILocation(line: 601, column: 40, scope: !974)
!997 = !DILocation(line: 601, column: 20, scope: !974)
!998 = !DILocation(line: 601, column: 5, scope: !974)
!999 = !DILocation(line: 601, column: 51, scope: !974)
!1000 = !DILocation(line: 602, column: 5, scope: !974)
!1001 = !DILocation(line: 602, column: 12, scope: !974)
!1002 = !DILocation(line: 600, column: 10, scope: !974)
!1003 = !DILocation(line: 600, column: 3, scope: !974)
!1004 = !DILocation(line: 603, column: 2, scope: !975)
!1005 = !DILocation(line: 604, column: 19, scope: !967)
!1006 = !DILocation(line: 604, column: 25, scope: !967)
!1007 = !DILocation(line: 604, column: 9, scope: !967)
!1008 = !DILocation(line: 604, column: 2, scope: !967)
!1009 = !DILocation(line: 605, column: 1, scope: !967)
!1010 = !DISubprogram(name: "kfree", scope: !54, file: !54, line: 227, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !281}
!1013 = distinct !DISubprogram(name: "keyctl_pkey_verify", scope: !2, file: !2, line: 288, type: !1014, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1016)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!74, !683, !253, !281, !281}
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026}
!1017 = !DILocalVariable(name: "_params", arg: 1, scope: !1013, file: !2, line: 288, type: !683)
!1018 = !DILocalVariable(name: "_info", arg: 2, scope: !1013, file: !2, line: 289, type: !253)
!1019 = !DILocalVariable(name: "_in", arg: 3, scope: !1013, file: !2, line: 290, type: !281)
!1020 = !DILocalVariable(name: "_in2", arg: 4, scope: !1013, file: !2, line: 291, type: !281)
!1021 = !DILocalVariable(name: "params", scope: !1013, file: !2, line: 293, type: !363)
!1022 = !DILocalVariable(name: "in", scope: !1013, file: !2, line: 294, type: !68)
!1023 = !DILocalVariable(name: "in2", scope: !1013, file: !2, line: 294, type: !68)
!1024 = !DILocalVariable(name: "ret", scope: !1013, file: !2, line: 295, type: !74)
!1025 = !DILabel(scope: !1013, name: "error_in", file: !2, line: 322)
!1026 = !DILabel(scope: !1013, name: "error_params", file: !2, line: 324)
!1027 = !DILocation(line: 288, column: 65, scope: !1013)
!1028 = !DILocation(line: 289, column: 23, scope: !1013)
!1029 = !DILocation(line: 290, column: 23, scope: !1013)
!1030 = !DILocation(line: 291, column: 23, scope: !1013)
!1031 = !DILocation(line: 293, column: 2, scope: !1013)
!1032 = !DILocation(line: 293, column: 28, scope: !1013)
!1033 = !DILocation(line: 294, column: 2, scope: !1013)
!1034 = !DILocation(line: 294, column: 8, scope: !1013)
!1035 = !DILocation(line: 294, column: 13, scope: !1013)
!1036 = !DILocation(line: 295, column: 2, scope: !1013)
!1037 = !DILocation(line: 295, column: 7, scope: !1013)
!1038 = !DILocation(line: 297, column: 33, scope: !1013)
!1039 = !DILocation(line: 297, column: 42, scope: !1013)
!1040 = !DILocation(line: 297, column: 8, scope: !1013)
!1041 = !DILocation(line: 297, column: 6, scope: !1013)
!1042 = !DILocation(line: 299, column: 6, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 299, column: 6)
!1044 = !DILocation(line: 299, column: 10, scope: !1043)
!1045 = !DILocation(line: 299, column: 6, scope: !1013)
!1046 = !DILocation(line: 300, column: 3, scope: !1043)
!1047 = !DILocation(line: 302, column: 6, scope: !1013)
!1048 = !DILocation(line: 303, column: 14, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 303, column: 6)
!1050 = !DILocation(line: 303, column: 19, scope: !1049)
!1051 = !DILocation(line: 303, column: 25, scope: !1049)
!1052 = !DILocation(line: 303, column: 7, scope: !1049)
!1053 = !DILocation(line: 303, column: 6, scope: !1013)
!1054 = !DILocation(line: 304, column: 3, scope: !1049)
!1055 = !DILocation(line: 306, column: 19, scope: !1013)
!1056 = !DILocation(line: 306, column: 31, scope: !1013)
!1057 = !DILocation(line: 306, column: 24, scope: !1013)
!1058 = !DILocation(line: 306, column: 7, scope: !1013)
!1059 = !DILocation(line: 306, column: 5, scope: !1013)
!1060 = !DILocation(line: 307, column: 13, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 307, column: 6)
!1062 = !DILocation(line: 307, column: 6, scope: !1061)
!1063 = !DILocation(line: 307, column: 6, scope: !1013)
!1064 = !DILocation(line: 308, column: 17, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 307, column: 18)
!1066 = !DILocation(line: 308, column: 9, scope: !1065)
!1067 = !DILocation(line: 308, column: 7, scope: !1065)
!1068 = !DILocation(line: 309, column: 3, scope: !1065)
!1069 = !DILocation(line: 312, column: 20, scope: !1013)
!1070 = !DILocation(line: 312, column: 33, scope: !1013)
!1071 = !DILocation(line: 312, column: 26, scope: !1013)
!1072 = !DILocation(line: 312, column: 8, scope: !1013)
!1073 = !DILocation(line: 312, column: 6, scope: !1013)
!1074 = !DILocation(line: 313, column: 13, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 313, column: 6)
!1076 = !DILocation(line: 313, column: 6, scope: !1075)
!1077 = !DILocation(line: 313, column: 6, scope: !1013)
!1078 = !DILocation(line: 314, column: 17, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 313, column: 19)
!1080 = !DILocation(line: 314, column: 9, scope: !1079)
!1081 = !DILocation(line: 314, column: 7, scope: !1079)
!1082 = !DILocation(line: 315, column: 3, scope: !1079)
!1083 = !DILocation(line: 318, column: 9, scope: !1013)
!1084 = !DILocation(line: 318, column: 12, scope: !1013)
!1085 = !DILocation(line: 319, column: 15, scope: !1013)
!1086 = !DILocation(line: 319, column: 20, scope: !1013)
!1087 = !DILocation(line: 319, column: 26, scope: !1013)
!1088 = !DILocation(line: 319, column: 57, scope: !1013)
!1089 = !DILocation(line: 319, column: 61, scope: !1013)
!1090 = !DILocation(line: 319, column: 8, scope: !1013)
!1091 = !DILocation(line: 319, column: 6, scope: !1013)
!1092 = !DILocation(line: 321, column: 8, scope: !1013)
!1093 = !DILocation(line: 321, column: 2, scope: !1013)
!1094 = !DILocation(line: 322, column: 1, scope: !1013)
!1095 = !DILocation(line: 323, column: 8, scope: !1013)
!1096 = !DILocation(line: 323, column: 2, scope: !1013)
!1097 = !DILocation(line: 324, column: 1, scope: !1013)
!1098 = !DILocation(line: 325, column: 2, scope: !1013)
!1099 = !DILocation(line: 326, column: 9, scope: !1013)
!1100 = !DILocation(line: 327, column: 1, scope: !1013)
!1101 = !DILocation(line: 326, column: 2, scope: !1013)
!1102 = !DISubprogram(name: "strndup_user", scope: !946, file: !946, line: 14, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!273, !253, !74}
!1105 = distinct !DISubprogram(name: "keyctl_pkey_params_parse", scope: !2, file: !2, line: 38, type: !1106, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1108)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!88, !389}
!1108 = !{!1109, !1110, !1111, !1118, !1119, !1120, !1121}
!1109 = !DILocalVariable(name: "params", arg: 1, scope: !1105, file: !2, line: 38, type: !389)
!1110 = !DILocalVariable(name: "token_mask", scope: !1105, file: !2, line: 40, type: !67)
!1111 = !DILocalVariable(name: "args", scope: !1105, file: !2, line: 41, type: !1112)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 384, elements: !15)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "substring_t", file: !462, line: 28, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 25, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1114, file: !462, line: 26, baseType: !273, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !1114, file: !462, line: 27, baseType: !273, size: 64, offset: 64)
!1118 = !DILocalVariable(name: "c", scope: !1105, file: !2, line: 42, type: !273)
!1119 = !DILocalVariable(name: "p", scope: !1105, file: !2, line: 42, type: !273)
!1120 = !DILocalVariable(name: "q", scope: !1105, file: !2, line: 42, type: !273)
!1121 = !DILocalVariable(name: "token", scope: !1105, file: !2, line: 43, type: !88)
!1122 = !DILocation(line: 38, column: 64, scope: !1105)
!1123 = !DILocation(line: 40, column: 2, scope: !1105)
!1124 = !DILocation(line: 40, column: 16, scope: !1105)
!1125 = !DILocation(line: 41, column: 2, scope: !1105)
!1126 = !DILocation(line: 41, column: 14, scope: !1105)
!1127 = !DILocation(line: 42, column: 2, scope: !1105)
!1128 = !DILocation(line: 42, column: 8, scope: !1105)
!1129 = !DILocation(line: 42, column: 12, scope: !1105)
!1130 = !DILocation(line: 42, column: 20, scope: !1105)
!1131 = !DILocation(line: 42, column: 27, scope: !1105)
!1132 = !DILocation(line: 42, column: 31, scope: !1105)
!1133 = !DILocation(line: 43, column: 2, scope: !1105)
!1134 = !DILocation(line: 43, column: 6, scope: !1105)
!1135 = !DILocation(line: 45, column: 2, scope: !1105)
!1136 = !DILocation(line: 45, column: 14, scope: !1105)
!1137 = !DILocation(line: 45, column: 12, scope: !1105)
!1138 = !DILocation(line: 46, column: 8, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 46, column: 7)
!1140 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 45, column: 34)
!1141 = !DILocation(line: 46, column: 7, scope: !1139)
!1142 = !DILocation(line: 46, column: 10, scope: !1139)
!1143 = !DILocation(line: 46, column: 18, scope: !1139)
!1144 = !DILocation(line: 46, column: 22, scope: !1139)
!1145 = !DILocation(line: 46, column: 21, scope: !1139)
!1146 = !DILocation(line: 46, column: 24, scope: !1139)
!1147 = !DILocation(line: 46, column: 31, scope: !1139)
!1148 = !DILocation(line: 46, column: 35, scope: !1139)
!1149 = !DILocation(line: 46, column: 34, scope: !1139)
!1150 = !DILocation(line: 46, column: 37, scope: !1139)
!1151 = !DILocation(line: 46, column: 7, scope: !1140)
!1152 = !DILocation(line: 47, column: 4, scope: !1139)
!1153 = distinct !{!1153, !1135, !1154, !1155, !1156}
!1154 = !DILocation(line: 69, column: 2, scope: !1105)
!1155 = !{!"llvm.loop.mustprogress"}
!1156 = !{!"llvm.loop.unroll.disable"}
!1157 = !DILocation(line: 48, column: 23, scope: !1140)
!1158 = !DILocation(line: 48, column: 38, scope: !1140)
!1159 = !DILocation(line: 48, column: 11, scope: !1140)
!1160 = !DILocation(line: 48, column: 9, scope: !1140)
!1161 = !DILocation(line: 49, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 49, column: 7)
!1163 = !DILocation(line: 49, column: 13, scope: !1162)
!1164 = !DILocation(line: 49, column: 7, scope: !1140)
!1165 = !DILocation(line: 50, column: 4, scope: !1162)
!1166 = !DILocation(line: 51, column: 7, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 51, column: 7)
!1168 = !DILocation(line: 51, column: 7, scope: !1140)
!1169 = !DILocation(line: 52, column: 4, scope: !1167)
!1170 = !DILocation(line: 53, column: 7, scope: !1140)
!1171 = !DILocation(line: 53, column: 15, scope: !1140)
!1172 = !DILocation(line: 53, column: 5, scope: !1140)
!1173 = !DILocation(line: 54, column: 8, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 54, column: 7)
!1175 = !DILocation(line: 54, column: 7, scope: !1140)
!1176 = !DILocation(line: 55, column: 4, scope: !1174)
!1177 = !DILocation(line: 57, column: 11, scope: !1140)
!1178 = !DILocation(line: 57, column: 3, scope: !1140)
!1179 = !DILocation(line: 59, column: 23, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 57, column: 18)
!1181 = !DILocation(line: 59, column: 4, scope: !1180)
!1182 = !DILocation(line: 59, column: 12, scope: !1180)
!1183 = !DILocation(line: 59, column: 21, scope: !1180)
!1184 = !DILocation(line: 60, column: 4, scope: !1180)
!1185 = !DILocation(line: 63, column: 24, scope: !1180)
!1186 = !DILocation(line: 63, column: 4, scope: !1180)
!1187 = !DILocation(line: 63, column: 12, scope: !1180)
!1188 = !DILocation(line: 63, column: 22, scope: !1180)
!1189 = !DILocation(line: 64, column: 4, scope: !1180)
!1190 = !DILocation(line: 67, column: 4, scope: !1180)
!1191 = !DILocation(line: 71, column: 2, scope: !1105)
!1192 = !DILocation(line: 72, column: 1, scope: !1105)
!1193 = !DISubprogram(name: "lookup_user_key", scope: !30, file: !30, line: 454, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!556, !90, !67, !29}
!1196 = distinct !DISubprogram(name: "key_ref_to_ptr", scope: !30, file: !30, line: 161, type: !1197, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1200)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!75, !1199}
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!1200 = !{!1201}
!1201 = !DILocalVariable(name: "key_ref", arg: 1, scope: !1196, file: !30, line: 161, type: !1199)
!1202 = !DILocation(line: 161, column: 58, scope: !1196)
!1203 = !DILocation(line: 163, column: 41, scope: !1196)
!1204 = !DILocation(line: 163, column: 25, scope: !1196)
!1205 = !DILocation(line: 163, column: 49, scope: !1196)
!1206 = !DILocation(line: 163, column: 9, scope: !1196)
!1207 = !DILocation(line: 163, column: 2, scope: !1196)
!1208 = !DISubprogram(name: "strsep", scope: !946, file: !946, line: 137, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!273, !1211, !253}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!1212 = !DISubprogram(name: "match_token", scope: !462, file: !462, line: 30, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!88, !273, !1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1217 = distinct !DISubprogram(name: "generic___test_and_set_bit", scope: !1218, file: !1218, line: 73, type: !1219, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1223)
!1218 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!306, !67, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!1223 = !{!1224, !1225, !1226, !1227, !1228}
!1224 = !DILocalVariable(name: "nr", arg: 1, scope: !1217, file: !1218, line: 73, type: !67)
!1225 = !DILocalVariable(name: "addr", arg: 2, scope: !1217, file: !1218, line: 73, type: !1221)
!1226 = !DILocalVariable(name: "mask", scope: !1217, file: !1218, line: 75, type: !67)
!1227 = !DILocalVariable(name: "p", scope: !1217, file: !1218, line: 76, type: !71)
!1228 = !DILocalVariable(name: "old", scope: !1217, file: !1218, line: 77, type: !67)
!1229 = !DILocation(line: 73, column: 42, scope: !1217)
!1230 = !DILocation(line: 73, column: 70, scope: !1217)
!1231 = !DILocation(line: 75, column: 2, scope: !1217)
!1232 = !DILocation(line: 75, column: 16, scope: !1217)
!1233 = !DILocation(line: 75, column: 23, scope: !1217)
!1234 = !DILocation(line: 76, column: 2, scope: !1217)
!1235 = !DILocation(line: 76, column: 17, scope: !1217)
!1236 = !DILocation(line: 76, column: 39, scope: !1217)
!1237 = !DILocation(line: 76, column: 47, scope: !1217)
!1238 = !DILocation(line: 76, column: 45, scope: !1217)
!1239 = !DILocation(line: 77, column: 2, scope: !1217)
!1240 = !DILocation(line: 77, column: 16, scope: !1217)
!1241 = !DILocation(line: 77, column: 23, scope: !1217)
!1242 = !DILocation(line: 77, column: 22, scope: !1217)
!1243 = !DILocation(line: 79, column: 7, scope: !1217)
!1244 = !DILocation(line: 79, column: 13, scope: !1217)
!1245 = !DILocation(line: 79, column: 11, scope: !1217)
!1246 = !DILocation(line: 79, column: 3, scope: !1217)
!1247 = !DILocation(line: 79, column: 5, scope: !1217)
!1248 = !DILocation(line: 80, column: 10, scope: !1217)
!1249 = !DILocation(line: 80, column: 16, scope: !1217)
!1250 = !DILocation(line: 80, column: 14, scope: !1217)
!1251 = !DILocation(line: 80, column: 22, scope: !1217)
!1252 = !DILocation(line: 81, column: 1, scope: !1217)
!1253 = !DILocation(line: 80, column: 2, scope: !1217)
!1254 = distinct !DISubprogram(name: "___test_and_set_bit", scope: !1255, file: !1255, line: 97, type: !1219, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1256)
!1255 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1256 = !{!1257, !1258}
!1257 = !DILocalVariable(name: "nr", arg: 1, scope: !1254, file: !1255, line: 97, type: !67)
!1258 = !DILocalVariable(name: "addr", arg: 2, scope: !1254, file: !1255, line: 97, type: !1221)
!1259 = !DILocation(line: 97, column: 35, scope: !1254)
!1260 = !DILocation(line: 97, column: 63, scope: !1254)
!1261 = !DILocation(line: 99, column: 32, scope: !1254)
!1262 = !DILocation(line: 99, column: 36, scope: !1254)
!1263 = !DILocation(line: 99, column: 2, scope: !1254)
!1264 = !DILocation(line: 100, column: 33, scope: !1254)
!1265 = !DILocation(line: 100, column: 37, scope: !1254)
!1266 = !DILocation(line: 100, column: 9, scope: !1254)
!1267 = !DILocation(line: 100, column: 2, scope: !1254)
!1268 = distinct !DISubprogram(name: "__instrument_read_write_bitop", scope: !1255, file: !1255, line: 64, type: !1269, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1271)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !74, !1221}
!1271 = !{!1272, !1273}
!1272 = !DILocalVariable(name: "nr", arg: 1, scope: !1268, file: !1255, line: 64, type: !74)
!1273 = !DILocalVariable(name: "addr", arg: 2, scope: !1268, file: !1255, line: 64, type: !1221)
!1274 = !DILocation(line: 64, column: 64, scope: !1268)
!1275 = !DILocation(line: 64, column: 92, scope: !1268)
!1276 = !DILocation(line: 84, column: 25, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !1255, line: 83, column: 9)
!1278 = distinct !DILexicalBlock(scope: !1268, file: !1255, line: 66, column: 6)
!1279 = !DILocation(line: 84, column: 32, scope: !1277)
!1280 = !DILocation(line: 84, column: 30, scope: !1277)
!1281 = !DILocation(line: 84, column: 3, scope: !1277)
!1282 = !DILocation(line: 86, column: 1, scope: !1268)
!1283 = distinct !DISubprogram(name: "arch___test_and_set_bit", scope: !1284, file: !1284, line: 148, type: !1219, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1285)
!1284 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1285 = !{!1286, !1287, !1288}
!1286 = !DILocalVariable(name: "nr", arg: 1, scope: !1283, file: !1284, line: 148, type: !67)
!1287 = !DILocalVariable(name: "addr", arg: 2, scope: !1283, file: !1284, line: 148, type: !1221)
!1288 = !DILocalVariable(name: "oldbit", scope: !1283, file: !1284, line: 150, type: !306)
!1289 = !DILocation(line: 148, column: 39, scope: !1283)
!1290 = !DILocation(line: 148, column: 67, scope: !1283)
!1291 = !DILocation(line: 150, column: 2, scope: !1283)
!1292 = !DILocation(line: 150, column: 7, scope: !1283)
!1293 = !DILocation(line: 155, column: 8, scope: !1283)
!1294 = !DILocation(line: 155, column: 20, scope: !1283)
!1295 = !DILocation(line: 152, column: 2, scope: !1283)
!1296 = !{i64 2148087235, i64 2148087312}
!1297 = !DILocation(line: 156, column: 9, scope: !1283)
!1298 = !{i8 0, i8 2}
!1299 = !DILocation(line: 157, column: 1, scope: !1283)
!1300 = !DILocation(line: 156, column: 2, scope: !1283)
!1301 = distinct !DISubprogram(name: "instrument_read_write", scope: !1302, file: !1302, line: 52, type: !1303, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1308)
!1302 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !1305, !256}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1308 = !{!1309, !1310}
!1309 = !DILocalVariable(name: "v", arg: 1, scope: !1301, file: !1302, line: 52, type: !1305)
!1310 = !DILocalVariable(name: "size", arg: 2, scope: !1301, file: !1302, line: 52, type: !256)
!1311 = !DILocation(line: 52, column: 72, scope: !1301)
!1312 = !DILocation(line: 52, column: 82, scope: !1301)
!1313 = !DILocation(line: 54, column: 20, scope: !1301)
!1314 = !DILocation(line: 54, column: 23, scope: !1301)
!1315 = !DILocation(line: 54, column: 2, scope: !1301)
!1316 = !DILocation(line: 55, column: 2, scope: !1301)
!1317 = !DILocation(line: 56, column: 1, scope: !1301)
!1318 = distinct !DISubprogram(name: "kasan_check_write", scope: !1319, file: !1319, line: 44, type: !1320, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1322)
!1319 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!306, !1305, !23}
!1322 = !{!1323, !1324}
!1323 = !DILocalVariable(name: "p", arg: 1, scope: !1318, file: !1319, line: 44, type: !1305)
!1324 = !DILocalVariable(name: "size", arg: 2, scope: !1318, file: !1319, line: 44, type: !23)
!1325 = !DILocation(line: 44, column: 59, scope: !1318)
!1326 = !DILocation(line: 44, column: 75, scope: !1318)
!1327 = !DILocation(line: 46, column: 2, scope: !1318)
!1328 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1329, file: !1329, line: 229, type: !1330, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1332)
!1329 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !1305, !256, !88}
!1332 = !{!1333, !1334, !1335}
!1333 = !DILocalVariable(name: "ptr", arg: 1, scope: !1328, file: !1329, line: 229, type: !1305)
!1334 = !DILocalVariable(name: "size", arg: 2, scope: !1328, file: !1329, line: 229, type: !256)
!1335 = !DILocalVariable(name: "type", arg: 3, scope: !1328, file: !1329, line: 230, type: !88)
!1336 = !DILocation(line: 229, column: 60, scope: !1328)
!1337 = !DILocation(line: 229, column: 72, scope: !1328)
!1338 = !DILocation(line: 230, column: 15, scope: !1328)
!1339 = !DILocation(line: 230, column: 23, scope: !1328)
!1340 = distinct !DISubprogram(name: "check_copy_size", scope: !453, file: !453, line: 237, type: !1341, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1343)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!306, !281, !256, !306}
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1351}
!1344 = !DILocalVariable(name: "addr", arg: 1, scope: !1340, file: !453, line: 237, type: !281)
!1345 = !DILocalVariable(name: "bytes", arg: 2, scope: !1340, file: !453, line: 237, type: !256)
!1346 = !DILocalVariable(name: "is_source", arg: 3, scope: !1340, file: !453, line: 237, type: !306)
!1347 = !DILocalVariable(name: "sz", scope: !1340, file: !453, line: 239, type: !88)
!1348 = !DILocalVariable(name: "__ret_warn_on", scope: !1349, file: !453, line: 249, type: !88)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !453, line: 249, column: 6)
!1350 = distinct !DILexicalBlock(scope: !1340, file: !453, line: 249, column: 6)
!1351 = !DILocalVariable(name: "__flags", scope: !1352, file: !453, line: 249, type: !88)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !453, line: 249, column: 6)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !453, line: 249, column: 6)
!1354 = !DILocation(line: 237, column: 29, scope: !1340)
!1355 = !DILocation(line: 237, column: 42, scope: !1340)
!1356 = !DILocation(line: 237, column: 54, scope: !1340)
!1357 = !DILocation(line: 239, column: 2, scope: !1340)
!1358 = !DILocation(line: 239, column: 6, scope: !1340)
!1359 = !DILocation(line: 239, column: 33, scope: !1340)
!1360 = !DILocation(line: 239, column: 11, scope: !1340)
!1361 = !DILocation(line: 240, column: 6, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1340, file: !453, line: 240, column: 6)
!1363 = !DILocation(line: 0, scope: !1362)
!1364 = !DILocation(line: 240, column: 6, scope: !1340)
!1365 = !DILocation(line: 241, column: 29, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !453, line: 241, column: 7)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !453, line: 240, column: 39)
!1368 = !DILocation(line: 241, column: 8, scope: !1366)
!1369 = !DILocation(line: 241, column: 7, scope: !1367)
!1370 = !DILocation(line: 242, column: 18, scope: !1366)
!1371 = !DILocation(line: 242, column: 22, scope: !1366)
!1372 = !DILocation(line: 242, column: 4, scope: !1366)
!1373 = !DILocation(line: 243, column: 12, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1366, file: !453, line: 243, column: 12)
!1375 = !DILocation(line: 243, column: 12, scope: !1366)
!1376 = !DILocation(line: 244, column: 4, scope: !1374)
!1377 = !{i32 910376}
!1378 = !DILocation(line: 246, column: 4, scope: !1374)
!1379 = !{i32 910405}
!1380 = !DILocation(line: 247, column: 3, scope: !1367)
!1381 = !DILocation(line: 249, column: 6, scope: !1349)
!1382 = !DILocation(line: 249, column: 6, scope: !1353)
!1383 = !DILocation(line: 249, column: 6, scope: !1352)
!1384 = !DILocation(line: 249, column: 6, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1352, file: !453, line: 249, column: 6)
!1386 = !DILocation(line: 249, column: 6, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1352, file: !453, line: 249, column: 6)
!1388 = !{i64 2149547406, i64 2149547435, i64 2149547481, i64 2149547539, i64 2149547593, i64 2149547647, i64 2149547702, i64 2149547733, i64 2149548041, i64 2149548047, i64 2149548094, i64 2149548117, i64 2149548143}
!1389 = !DILocation(line: 249, column: 6, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1352, file: !453, line: 249, column: 6)
!1391 = !DILocation(line: 249, column: 6, scope: !1350)
!1392 = !DILocation(line: 249, column: 6, scope: !1340)
!1393 = !DILocation(line: 250, column: 3, scope: !1350)
!1394 = !DILocation(line: 251, column: 20, scope: !1340)
!1395 = !DILocation(line: 251, column: 26, scope: !1340)
!1396 = !DILocation(line: 251, column: 33, scope: !1340)
!1397 = !DILocation(line: 251, column: 2, scope: !1340)
!1398 = !DILocation(line: 252, column: 2, scope: !1340)
!1399 = !DILocation(line: 253, column: 1, scope: !1340)
!1400 = !DISubprogram(name: "_copy_to_user", scope: !623, file: !623, line: 176, type: !624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1401 = distinct !DISubprogram(name: "copy_overflow", scope: !453, file: !453, line: 230, type: !1402, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1404)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null, !88, !67}
!1404 = !{!1405, !1406}
!1405 = !DILocalVariable(name: "size", arg: 1, scope: !1401, file: !453, line: 230, type: !88)
!1406 = !DILocalVariable(name: "count", arg: 2, scope: !1401, file: !453, line: 230, type: !67)
!1407 = !DILocation(line: 230, column: 38, scope: !1401)
!1408 = !DILocation(line: 230, column: 58, scope: !1401)
!1409 = !DILocation(line: 233, column: 19, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1401, file: !453, line: 232, column: 6)
!1411 = !DILocation(line: 233, column: 25, scope: !1410)
!1412 = !DILocation(line: 233, column: 3, scope: !1410)
!1413 = !DILocation(line: 234, column: 1, scope: !1401)
!1414 = !DISubprogram(name: "__bad_copy_from", scope: !453, file: !453, line: 224, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null}
!1417 = !DISubprogram(name: "__bad_copy_to", scope: !453, file: !453, line: 226, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1418 = distinct !DISubprogram(name: "check_object_size", scope: !453, file: !453, line: 218, type: !1419, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !281, !67, !306}
!1421 = !{!1422, !1423, !1424}
!1422 = !DILocalVariable(name: "ptr", arg: 1, scope: !1418, file: !453, line: 218, type: !281)
!1423 = !DILocalVariable(name: "n", arg: 2, scope: !1418, file: !453, line: 218, type: !67)
!1424 = !DILocalVariable(name: "to_user", arg: 3, scope: !1418, file: !453, line: 219, type: !306)
!1425 = !DILocation(line: 218, column: 50, scope: !1418)
!1426 = !DILocation(line: 218, column: 69, scope: !1418)
!1427 = !DILocation(line: 219, column: 15, scope: !1418)
!1428 = !DILocation(line: 220, column: 3, scope: !1418)
!1429 = !DISubprogram(name: "__copy_overflow", scope: !453, file: !453, line: 228, type: !1402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1430 = distinct !DISubprogram(name: "__access_ok", scope: !647, file: !647, line: 85, type: !1431, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!306, !281, !67}
!1433 = !{!1434, !1435, !1436}
!1434 = !DILocalVariable(name: "ptr", arg: 1, scope: !1430, file: !647, line: 85, type: !281)
!1435 = !DILocalVariable(name: "size", arg: 2, scope: !1430, file: !647, line: 85, type: !67)
!1436 = !DILocalVariable(name: "sum", scope: !1437, file: !647, line: 90, type: !67)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !647, line: 89, column: 9)
!1438 = distinct !DILexicalBlock(scope: !1430, file: !647, line: 87, column: 6)
!1439 = !DILocation(line: 85, column: 51, scope: !1430)
!1440 = !DILocation(line: 85, column: 70, scope: !1430)
!1441 = !DILocation(line: 87, column: 27, scope: !1438)
!1442 = !DILocation(line: 87, column: 32, scope: !1438)
!1443 = !DILocation(line: 87, column: 6, scope: !1438)
!1444 = !DILocation(line: 87, column: 46, scope: !1438)
!1445 = !DILocation(line: 87, column: 49, scope: !1438)
!1446 = !DILocation(line: 87, column: 54, scope: !1438)
!1447 = !DILocation(line: 87, column: 6, scope: !1430)
!1448 = !DILocation(line: 88, column: 10, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1438, file: !647, line: 87, column: 68)
!1450 = !DILocation(line: 88, column: 3, scope: !1449)
!1451 = !DILocation(line: 90, column: 3, scope: !1437)
!1452 = !DILocation(line: 90, column: 17, scope: !1437)
!1453 = !DILocation(line: 90, column: 23, scope: !1437)
!1454 = !DILocation(line: 90, column: 45, scope: !1437)
!1455 = !DILocation(line: 90, column: 30, scope: !1437)
!1456 = !DILocation(line: 90, column: 28, scope: !1437)
!1457 = !DILocation(line: 91, column: 10, scope: !1437)
!1458 = !DILocation(line: 91, column: 34, scope: !1437)
!1459 = !DILocation(line: 91, column: 37, scope: !1437)
!1460 = !DILocation(line: 91, column: 59, scope: !1437)
!1461 = !DILocation(line: 91, column: 44, scope: !1437)
!1462 = !DILocation(line: 91, column: 41, scope: !1437)
!1463 = !DILocation(line: 0, scope: !1437)
!1464 = !DILocation(line: 91, column: 3, scope: !1437)
!1465 = !DILocation(line: 92, column: 2, scope: !1438)
!1466 = !DILocation(line: 93, column: 1, scope: !1430)
!1467 = distinct !DISubprogram(name: "__clear_user", scope: !647, file: !647, line: 165, type: !648, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1468)
!1468 = !{!1469, !1470}
!1469 = !DILocalVariable(name: "addr", arg: 1, scope: !1467, file: !647, line: 165, type: !68)
!1470 = !DILocalVariable(name: "size", arg: 2, scope: !1467, file: !647, line: 165, type: !67)
!1471 = !DILocation(line: 165, column: 77, scope: !1467)
!1472 = !DILocation(line: 165, column: 97, scope: !1467)
!1473 = !DILocation(line: 167, column: 2, scope: !1467)
!1474 = !DILocation(line: 168, column: 2, scope: !1467)
!1475 = !DILocation(line: 174, column: 2, scope: !1467)
!1476 = !{i64 5051724, i64 5051729, i64 2152539950, i64 2152539956, i64 2152539972, i64 2152539988, i64 2152540015, i64 2152540338, i64 2152539549, i64 2152540344, i64 2152540392, i64 2152540456, i64 2152540520, i64 2152540577, i64 2152539630, i64 2152539655, i64 2152540861, i64 2152541002, i64 2152540922, i64 2152541016, i64 2152539747, i64 5051826, i64 2152541081, i64 2152541125, i64 2152541148, i64 2152541181, i64 2152541212, i64 2152541251}
!1477 = !DILocation(line: 183, column: 2, scope: !1467)
!1478 = !DILocation(line: 185, column: 9, scope: !1467)
!1479 = !DILocation(line: 185, column: 2, scope: !1467)
!1480 = distinct !DISubprogram(name: "might_fault", scope: !1481, file: !1481, line: 202, type: !1415, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!1481 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!1482 = !DILocation(line: 202, column: 40, scope: !1480)
!1483 = distinct !DISubprogram(name: "stac", scope: !1484, file: !1484, line: 36, type: !1415, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!1484 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!1485 = !DILocation(line: 39, column: 2, scope: !1483)
!1486 = !{i64 2152036549, i64 2152036577, i64 2152036583, i64 2152036599, i64 2152036615, i64 2152036642, i64 2152036956, i64 2152036299, i64 2152036962, i64 2152037010, i64 2152037074, i64 2152037138, i64 2152037195, i64 2152036380, i64 2152036405, i64 2152037402, i64 2152037538, i64 2152037463, i64 2152037552, i64 2152036497}
!1487 = !DILocation(line: 40, column: 1, scope: !1483)
!1488 = distinct !DISubprogram(name: "clac", scope: !1484, file: !1484, line: 30, type: !1415, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!1489 = !DILocation(line: 33, column: 2, scope: !1488)
!1490 = !{i64 2152034882, i64 2152034910, i64 2152034916, i64 2152034932, i64 2152034948, i64 2152034975, i64 2152035289, i64 2152034632, i64 2152035295, i64 2152035343, i64 2152035407, i64 2152035471, i64 2152035528, i64 2152034713, i64 2152034738, i64 2152035735, i64 2152035871, i64 2152035796, i64 2152035885, i64 2152034830}
!1491 = !DILocation(line: 34, column: 1, scope: !1488)
!1492 = !DISubprogram(name: "key_put", scope: !30, file: !30, line: 302, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1493 = distinct !DISubprogram(name: "copy_from_user", scope: !623, file: !623, line: 180, type: !624, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1494)
!1494 = !{!1495, !1496, !1497}
!1495 = !DILocalVariable(name: "to", arg: 1, scope: !1493, file: !623, line: 180, type: !68)
!1496 = !DILocalVariable(name: "from", arg: 2, scope: !1493, file: !623, line: 180, type: !281)
!1497 = !DILocalVariable(name: "n", arg: 3, scope: !1493, file: !623, line: 180, type: !67)
!1498 = !DILocation(line: 180, column: 22, scope: !1493)
!1499 = !DILocation(line: 180, column: 45, scope: !1493)
!1500 = !DILocation(line: 180, column: 65, scope: !1493)
!1501 = !DILocation(line: 182, column: 22, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1493, file: !623, line: 182, column: 6)
!1503 = !DILocation(line: 182, column: 26, scope: !1502)
!1504 = !DILocation(line: 182, column: 6, scope: !1502)
!1505 = !DILocation(line: 182, column: 6, scope: !1493)
!1506 = !DILocation(line: 183, column: 23, scope: !1502)
!1507 = !DILocation(line: 183, column: 27, scope: !1502)
!1508 = !DILocation(line: 183, column: 33, scope: !1502)
!1509 = !DILocation(line: 183, column: 7, scope: !1502)
!1510 = !DILocation(line: 183, column: 5, scope: !1502)
!1511 = !DILocation(line: 183, column: 3, scope: !1502)
!1512 = !DILocation(line: 184, column: 9, scope: !1493)
!1513 = !DILocation(line: 184, column: 2, scope: !1493)
!1514 = !DISubprogram(name: "_copy_from_user", scope: !623, file: !623, line: 158, type: !624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1515 = !DISubprogram(name: "kmalloc_large", scope: !54, file: !54, line: 531, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1516 = distinct !DISubprogram(name: "__kmalloc_index", scope: !54, file: !54, line: 444, type: !1517, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!23, !256, !306}
!1519 = !{!1520, !1521}
!1520 = !DILocalVariable(name: "size", arg: 1, scope: !1516, file: !54, line: 444, type: !256)
!1521 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1516, file: !54, line: 445, type: !306)
!1522 = !DILocation(line: 444, column: 60, scope: !1516)
!1523 = !DILocation(line: 445, column: 16, scope: !1516)
!1524 = !DILocation(line: 447, column: 7, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 447, column: 6)
!1526 = !DILocation(line: 447, column: 6, scope: !1516)
!1527 = !DILocation(line: 448, column: 3, scope: !1525)
!1528 = !DILocation(line: 450, column: 6, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 450, column: 6)
!1530 = !DILocation(line: 450, column: 11, scope: !1529)
!1531 = !DILocation(line: 450, column: 6, scope: !1516)
!1532 = !DILocation(line: 451, column: 3, scope: !1529)
!1533 = !DILocation(line: 453, column: 32, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 453, column: 6)
!1535 = !DILocation(line: 453, column: 37, scope: !1534)
!1536 = !DILocation(line: 453, column: 42, scope: !1534)
!1537 = !DILocation(line: 453, column: 45, scope: !1534)
!1538 = !DILocation(line: 453, column: 50, scope: !1534)
!1539 = !DILocation(line: 453, column: 6, scope: !1516)
!1540 = !DILocation(line: 454, column: 3, scope: !1534)
!1541 = !DILocation(line: 455, column: 32, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 455, column: 6)
!1543 = !DILocation(line: 455, column: 37, scope: !1542)
!1544 = !DILocation(line: 455, column: 43, scope: !1542)
!1545 = !DILocation(line: 455, column: 46, scope: !1542)
!1546 = !DILocation(line: 455, column: 51, scope: !1542)
!1547 = !DILocation(line: 455, column: 6, scope: !1516)
!1548 = !DILocation(line: 456, column: 3, scope: !1542)
!1549 = !DILocation(line: 457, column: 6, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 457, column: 6)
!1551 = !DILocation(line: 457, column: 11, scope: !1550)
!1552 = !DILocation(line: 457, column: 6, scope: !1516)
!1553 = !DILocation(line: 457, column: 26, scope: !1550)
!1554 = !DILocation(line: 458, column: 6, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 458, column: 6)
!1556 = !DILocation(line: 458, column: 11, scope: !1555)
!1557 = !DILocation(line: 458, column: 6, scope: !1516)
!1558 = !DILocation(line: 458, column: 26, scope: !1555)
!1559 = !DILocation(line: 459, column: 6, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 459, column: 6)
!1561 = !DILocation(line: 459, column: 11, scope: !1560)
!1562 = !DILocation(line: 459, column: 6, scope: !1516)
!1563 = !DILocation(line: 459, column: 26, scope: !1560)
!1564 = !DILocation(line: 460, column: 6, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 460, column: 6)
!1566 = !DILocation(line: 460, column: 11, scope: !1565)
!1567 = !DILocation(line: 460, column: 6, scope: !1516)
!1568 = !DILocation(line: 460, column: 26, scope: !1565)
!1569 = !DILocation(line: 461, column: 6, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 461, column: 6)
!1571 = !DILocation(line: 461, column: 11, scope: !1570)
!1572 = !DILocation(line: 461, column: 6, scope: !1516)
!1573 = !DILocation(line: 461, column: 26, scope: !1570)
!1574 = !DILocation(line: 462, column: 6, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 462, column: 6)
!1576 = !DILocation(line: 462, column: 11, scope: !1575)
!1577 = !DILocation(line: 462, column: 6, scope: !1516)
!1578 = !DILocation(line: 462, column: 26, scope: !1575)
!1579 = !DILocation(line: 463, column: 6, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 463, column: 6)
!1581 = !DILocation(line: 463, column: 11, scope: !1580)
!1582 = !DILocation(line: 463, column: 6, scope: !1516)
!1583 = !DILocation(line: 463, column: 26, scope: !1580)
!1584 = !DILocation(line: 464, column: 6, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 464, column: 6)
!1586 = !DILocation(line: 464, column: 11, scope: !1585)
!1587 = !DILocation(line: 464, column: 6, scope: !1516)
!1588 = !DILocation(line: 464, column: 26, scope: !1585)
!1589 = !DILocation(line: 465, column: 6, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 465, column: 6)
!1591 = !DILocation(line: 465, column: 11, scope: !1590)
!1592 = !DILocation(line: 465, column: 6, scope: !1516)
!1593 = !DILocation(line: 465, column: 26, scope: !1590)
!1594 = !DILocation(line: 466, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 466, column: 6)
!1596 = !DILocation(line: 466, column: 11, scope: !1595)
!1597 = !DILocation(line: 466, column: 6, scope: !1516)
!1598 = !DILocation(line: 466, column: 26, scope: !1595)
!1599 = !DILocation(line: 467, column: 6, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 467, column: 6)
!1601 = !DILocation(line: 467, column: 11, scope: !1600)
!1602 = !DILocation(line: 467, column: 6, scope: !1516)
!1603 = !DILocation(line: 467, column: 26, scope: !1600)
!1604 = !DILocation(line: 468, column: 6, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 468, column: 6)
!1606 = !DILocation(line: 468, column: 11, scope: !1605)
!1607 = !DILocation(line: 468, column: 6, scope: !1516)
!1608 = !DILocation(line: 468, column: 26, scope: !1605)
!1609 = !DILocation(line: 469, column: 6, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 469, column: 6)
!1611 = !DILocation(line: 469, column: 11, scope: !1610)
!1612 = !DILocation(line: 469, column: 6, scope: !1516)
!1613 = !DILocation(line: 469, column: 26, scope: !1610)
!1614 = !DILocation(line: 470, column: 6, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 470, column: 6)
!1616 = !DILocation(line: 470, column: 11, scope: !1615)
!1617 = !DILocation(line: 470, column: 6, scope: !1516)
!1618 = !DILocation(line: 470, column: 26, scope: !1615)
!1619 = !DILocation(line: 471, column: 6, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 471, column: 6)
!1621 = !DILocation(line: 471, column: 11, scope: !1620)
!1622 = !DILocation(line: 471, column: 6, scope: !1516)
!1623 = !DILocation(line: 471, column: 26, scope: !1620)
!1624 = !DILocation(line: 472, column: 6, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 472, column: 6)
!1626 = !DILocation(line: 472, column: 11, scope: !1625)
!1627 = !DILocation(line: 472, column: 6, scope: !1516)
!1628 = !DILocation(line: 472, column: 26, scope: !1625)
!1629 = !DILocation(line: 473, column: 6, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 473, column: 6)
!1631 = !DILocation(line: 473, column: 11, scope: !1630)
!1632 = !DILocation(line: 473, column: 6, scope: !1516)
!1633 = !DILocation(line: 473, column: 26, scope: !1630)
!1634 = !DILocation(line: 474, column: 6, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 474, column: 6)
!1636 = !DILocation(line: 474, column: 11, scope: !1635)
!1637 = !DILocation(line: 474, column: 6, scope: !1516)
!1638 = !DILocation(line: 474, column: 27, scope: !1635)
!1639 = !DILocation(line: 475, column: 6, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 475, column: 6)
!1641 = !DILocation(line: 475, column: 11, scope: !1640)
!1642 = !DILocation(line: 475, column: 6, scope: !1516)
!1643 = !DILocation(line: 475, column: 32, scope: !1640)
!1644 = !DILocation(line: 477, column: 50, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1516, file: !54, line: 477, column: 6)
!1646 = !DILocation(line: 477, column: 6, scope: !1516)
!1647 = !DILocation(line: 478, column: 3, scope: !1645)
!1648 = !DILocation(line: 478, column: 3, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !54, line: 478, column: 3)
!1650 = distinct !DILexicalBlock(scope: !1645, file: !54, line: 478, column: 3)
!1651 = !{i32 -2143555971}
!1652 = !DILocation(line: 478, column: 3, scope: !1650)
!1653 = !DILocation(line: 480, column: 3, scope: !1645)
!1654 = !DILocation(line: 480, column: 3, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1645, file: !54, line: 480, column: 3)
!1656 = !DILocation(line: 480, column: 3, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1655, file: !54, line: 480, column: 3)
!1658 = !DILocation(line: 480, column: 3, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !54, line: 480, column: 3)
!1660 = !{i64 2151411528, i64 2151411557, i64 2151411603, i64 2151411661, i64 2151411715, i64 2151411769, i64 2151411824, i64 2151411855}
!1661 = !DILocation(line: 483, column: 2, scope: !1516)
!1662 = !DILocation(line: 484, column: 1, scope: !1516)
!1663 = !DISubprogram(name: "kmalloc_trace", scope: !54, file: !54, line: 525, type: !1664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!68, !1666, !64, !256}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1668, line: 11, flags: DIFlagFwdDecl)
!1668 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1669 = distinct !DISubprogram(name: "kmalloc_type", scope: !54, file: !54, line: 401, type: !1670, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1672)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!53, !64, !67}
!1672 = !{!1673, !1674}
!1673 = !DILocalVariable(name: "flags", arg: 1, scope: !1669, file: !54, line: 401, type: !64)
!1674 = !DILocalVariable(name: "caller", arg: 2, scope: !1669, file: !54, line: 401, type: !67)
!1675 = !DILocation(line: 401, column: 67, scope: !1669)
!1676 = !DILocation(line: 401, column: 88, scope: !1669)
!1677 = !DILocation(line: 407, column: 6, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1669, file: !54, line: 407, column: 6)
!1679 = !DILocation(line: 407, column: 6, scope: !1669)
!1680 = !DILocation(line: 413, column: 3, scope: !1678)
!1681 = !DILocation(line: 423, column: 38, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1669, file: !54, line: 423, column: 6)
!1683 = !DILocation(line: 423, column: 44, scope: !1682)
!1684 = !DILocation(line: 423, column: 6, scope: !1669)
!1685 = !DILocation(line: 424, column: 3, scope: !1682)
!1686 = !DILocation(line: 426, column: 3, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1669, file: !54, line: 425, column: 6)
!1688 = !DILocation(line: 429, column: 1, scope: !1669)
!1689 = !DISubprogram(name: "__kmalloc", scope: !54, file: !54, line: 488, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1690 = !DISubprogram(name: "__compiletime_assert_117", scope: !54, file: !54, line: 478, type: !1415, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
