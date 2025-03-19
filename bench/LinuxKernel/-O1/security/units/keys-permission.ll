; ModuleID = 'security/keys/permission.c'
source_filename = "security/keys/permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_key_task_permission: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad key_task_permission ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_key_validate: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad key_validate ; .previous"

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
%struct.cred = type { %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, %struct.kernel_cap_t, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.10 }
%struct.kernel_cap_t = type { i64 }
%union.anon.10 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@.str = private unnamed_addr constant [27 x i8] c"security/keys/permission.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_key_task_permission280 = internal global ptr @key_task_permission, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_key_validate283 = internal global ptr @key_validate, section ".discard.addressable", align 8, !dbg !412
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_key_task_permission280, ptr @__UNIQUE_ID___addressable_key_validate283], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @key_task_permission(ptr noundef %key_ref, ptr noundef %cred, i32 noundef %need_perm) #0 align 16 !dbg !423 {
entry:
  %retval = alloca i32, align 4
  %key_ref.addr = alloca ptr, align 8
  %cred.addr = alloca ptr, align 8
  %need_perm.addr = alloca i32, align 4
  %key = alloca ptr, align 8
  %kperm = alloca i32, align 4
  %mask = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key_ref, ptr %key_ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key_ref.addr, metadata !524, metadata !DIExpression()), !dbg !539
  store ptr %cred, ptr %cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cred.addr, metadata !525, metadata !DIExpression()), !dbg !540
  store i32 %need_perm, ptr %need_perm.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %need_perm.addr, metadata !526, metadata !DIExpression()), !dbg !541
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #6, !dbg !542
  call void @llvm.dbg.declare(metadata ptr %key, metadata !527, metadata !DIExpression()), !dbg !543
  call void @llvm.lifetime.start.p0(i64 4, ptr %kperm) #6, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %kperm, metadata !528, metadata !DIExpression()), !dbg !545
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #6, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !529, metadata !DIExpression()), !dbg !546
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !547
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !530, metadata !DIExpression()), !dbg !548
  %0 = load i32, ptr %need_perm.addr, align 4, !dbg !549
  switch i32 %0, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %sw.bb20
    i32 3, label %sw.bb21
    i32 4, label %sw.bb22
    i32 5, label %sw.bb23
    i32 6, label %sw.bb24
  ], !dbg !550

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !551
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !531, metadata !DIExpression()), !dbg !551
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !551
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !552
  %tobool = icmp ne i32 %1, 0, !dbg !552
  %lnot = xor i1 %tobool, true, !dbg !552
  %lnot1 = xor i1 %lnot, true, !dbg !552
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !552
  %conv = sext i32 %lnot.ext to i64, !dbg !552
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !552
  %tobool2 = icmp ne i64 %expval, 0, !dbg !552
  br i1 %tobool2, label %if.then, label %if.end, !dbg !551

if.then:                                          ; preds = %sw.default
  br label %do.body, !dbg !552

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !553
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !534, metadata !DIExpression()), !dbg !553
  store i32 2305, ptr %__flags, align 4, !dbg !553
  br label %do.body3, !dbg !553

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !554

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !554

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !553

do.body4:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !556
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 35, i32 %2, i64 12) #6, !dbg !556, !srcloc !558
  br label %do.cond5, !dbg !556

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !556

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !553

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !559

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !559

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !552
  br label %do.cond10, !dbg !553

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !553

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !553

if.end:                                           ; preds = %do.end11, %sw.default
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !551
  %tobool12 = icmp ne i32 %3, 0, !dbg !551
  %lnot13 = xor i1 %tobool12, true, !dbg !551
  %lnot15 = xor i1 %lnot13, true, !dbg !551
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !551
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !551
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !551
  store i64 %expval18, ptr %tmp, align 8, !dbg !552
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !561
  %4 = load i64, ptr %tmp, align 8, !dbg !551
  store i32 -13, ptr %retval, align 4, !dbg !562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !562

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  br label %lsm, !dbg !563

sw.bb19:                                          ; preds = %entry
  store i32 1, ptr %mask, align 4, !dbg !564
  br label %sw.epilog, !dbg !565

sw.bb20:                                          ; preds = %entry
  store i32 2, ptr %mask, align 4, !dbg !566
  br label %sw.epilog, !dbg !567

sw.bb21:                                          ; preds = %entry
  store i32 4, ptr %mask, align 4, !dbg !568
  br label %sw.epilog, !dbg !569

sw.bb22:                                          ; preds = %entry
  store i32 8, ptr %mask, align 4, !dbg !570
  br label %sw.epilog, !dbg !571

sw.bb23:                                          ; preds = %entry
  store i32 16, ptr %mask, align 4, !dbg !572
  br label %sw.epilog, !dbg !573

sw.bb24:                                          ; preds = %entry
  store i32 32, ptr %mask, align 4, !dbg !574
  br label %sw.epilog, !dbg !575

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19
  %5 = load ptr, ptr %key_ref.addr, align 8, !dbg !576
  %call = call ptr @key_ref_to_ptr(ptr noundef %5) #7, !dbg !577
  store ptr %call, ptr %key, align 8, !dbg !578
  %6 = load ptr, ptr %key, align 8, !dbg !579
  %uid = getelementptr inbounds %struct.key, ptr %6, i32 0, i32 8, !dbg !581
  %7 = load ptr, ptr %cred.addr, align 8, !dbg !582
  %fsuid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 7, !dbg !583
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !584
  %8 = load i32, ptr %coerce.dive, align 8, !dbg !584
  %coerce.dive25 = getelementptr inbounds %struct.kuid_t, ptr %fsuid, i32 0, i32 0, !dbg !584
  %9 = load i32, ptr %coerce.dive25, align 8, !dbg !584
  %call26 = call zeroext i1 @uid_eq(i32 %8, i32 %9) #7, !dbg !584
  br i1 %call26, label %if.then27, label %if.end28, !dbg !585

if.then27:                                        ; preds = %sw.epilog
  %10 = load ptr, ptr %key, align 8, !dbg !586
  %perm = getelementptr inbounds %struct.key, ptr %10, i32 0, i32 10, !dbg !588
  %11 = load i32, ptr %perm, align 8, !dbg !588
  %shr = lshr i32 %11, 16, !dbg !589
  store i32 %shr, ptr %kperm, align 4, !dbg !590
  br label %use_these_perms, !dbg !591

if.end28:                                         ; preds = %sw.epilog
  %12 = load ptr, ptr %key, align 8, !dbg !592
  %gid = getelementptr inbounds %struct.key, ptr %12, i32 0, i32 9, !dbg !594
  %coerce.dive29 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !595
  %13 = load i32, ptr %coerce.dive29, align 4, !dbg !595
  %call30 = call zeroext i1 @gid_valid(i32 %13) #7, !dbg !595
  br i1 %call30, label %land.lhs.true, label %if.end51, !dbg !596

land.lhs.true:                                    ; preds = %if.end28
  %14 = load ptr, ptr %key, align 8, !dbg !597
  %perm32 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 10, !dbg !598
  %15 = load i32, ptr %perm32, align 8, !dbg !598
  %and = and i32 %15, 16128, !dbg !599
  %tobool33 = icmp ne i32 %and, 0, !dbg !599
  br i1 %tobool33, label %if.then34, label %if.end51, !dbg !600

if.then34:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %key, align 8, !dbg !601
  %gid35 = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 9, !dbg !604
  %17 = load ptr, ptr %cred.addr, align 8, !dbg !605
  %fsgid = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 8, !dbg !606
  %coerce.dive36 = getelementptr inbounds %struct.kgid_t, ptr %gid35, i32 0, i32 0, !dbg !607
  %18 = load i32, ptr %coerce.dive36, align 4, !dbg !607
  %coerce.dive37 = getelementptr inbounds %struct.kgid_t, ptr %fsgid, i32 0, i32 0, !dbg !607
  %19 = load i32, ptr %coerce.dive37, align 4, !dbg !607
  %call38 = call zeroext i1 @gid_eq(i32 %18, i32 %19) #7, !dbg !607
  br i1 %call38, label %if.then39, label %if.end42, !dbg !608

if.then39:                                        ; preds = %if.then34
  %20 = load ptr, ptr %key, align 8, !dbg !609
  %perm40 = getelementptr inbounds %struct.key, ptr %20, i32 0, i32 10, !dbg !611
  %21 = load i32, ptr %perm40, align 8, !dbg !611
  %shr41 = lshr i32 %21, 8, !dbg !612
  store i32 %shr41, ptr %kperm, align 4, !dbg !613
  br label %use_these_perms, !dbg !614

if.end42:                                         ; preds = %if.then34
  %22 = load ptr, ptr %cred.addr, align 8, !dbg !615
  %group_info = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 24, !dbg !616
  %23 = load ptr, ptr %group_info, align 8, !dbg !616
  %24 = load ptr, ptr %key, align 8, !dbg !617
  %gid43 = getelementptr inbounds %struct.key, ptr %24, i32 0, i32 9, !dbg !618
  %coerce.dive44 = getelementptr inbounds %struct.kgid_t, ptr %gid43, i32 0, i32 0, !dbg !619
  %25 = load i32, ptr %coerce.dive44, align 4, !dbg !619
  %call45 = call i32 @groups_search(ptr noundef %23, i32 %25) #7, !dbg !619
  store i32 %call45, ptr %ret, align 4, !dbg !620
  %26 = load i32, ptr %ret, align 4, !dbg !621
  %tobool46 = icmp ne i32 %26, 0, !dbg !621
  br i1 %tobool46, label %if.then47, label %if.end50, !dbg !623

if.then47:                                        ; preds = %if.end42
  %27 = load ptr, ptr %key, align 8, !dbg !624
  %perm48 = getelementptr inbounds %struct.key, ptr %27, i32 0, i32 10, !dbg !626
  %28 = load i32, ptr %perm48, align 8, !dbg !626
  %shr49 = lshr i32 %28, 8, !dbg !627
  store i32 %shr49, ptr %kperm, align 4, !dbg !628
  br label %use_these_perms, !dbg !629

if.end50:                                         ; preds = %if.end42
  br label %if.end51, !dbg !630

if.end51:                                         ; preds = %if.end50, %land.lhs.true, %if.end28
  %29 = load ptr, ptr %key, align 8, !dbg !631
  %perm52 = getelementptr inbounds %struct.key, ptr %29, i32 0, i32 10, !dbg !632
  %30 = load i32, ptr %perm52, align 8, !dbg !632
  store i32 %30, ptr %kperm, align 4, !dbg !633
  br label %use_these_perms, !dbg !634

use_these_perms:                                  ; preds = %if.end51, %if.then47, %if.then39, %if.then27
  call void @llvm.dbg.label(metadata !537), !dbg !635
  %31 = load ptr, ptr %key_ref.addr, align 8, !dbg !636
  %call53 = call zeroext i1 @is_key_possessed(ptr noundef %31) #7, !dbg !638
  br i1 %call53, label %if.then54, label %if.end57, !dbg !639

if.then54:                                        ; preds = %use_these_perms
  %32 = load ptr, ptr %key, align 8, !dbg !640
  %perm55 = getelementptr inbounds %struct.key, ptr %32, i32 0, i32 10, !dbg !641
  %33 = load i32, ptr %perm55, align 8, !dbg !641
  %shr56 = lshr i32 %33, 24, !dbg !642
  %34 = load i32, ptr %kperm, align 4, !dbg !643
  %or = or i32 %34, %shr56, !dbg !643
  store i32 %or, ptr %kperm, align 4, !dbg !643
  br label %if.end57, !dbg !644

if.end57:                                         ; preds = %if.then54, %use_these_perms
  %35 = load i32, ptr %kperm, align 4, !dbg !645
  %36 = load i32, ptr %mask, align 4, !dbg !647
  %and58 = and i32 %35, %36, !dbg !648
  %37 = load i32, ptr %mask, align 4, !dbg !649
  %cmp = icmp ne i32 %and58, %37, !dbg !650
  br i1 %cmp, label %if.then60, label %if.end61, !dbg !651

if.then60:                                        ; preds = %if.end57
  store i32 -13, ptr %retval, align 4, !dbg !652
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !652

if.end61:                                         ; preds = %if.end57
  br label %lsm, !dbg !649

lsm:                                              ; preds = %if.end61, %sw.bb
  call void @llvm.dbg.label(metadata !538), !dbg !653
  %38 = load ptr, ptr %key_ref.addr, align 8, !dbg !654
  %39 = load ptr, ptr %cred.addr, align 8, !dbg !655
  %40 = load i32, ptr %need_perm.addr, align 4, !dbg !656
  %call62 = call i32 @security_key_permission(ptr noundef %38, ptr noundef %39, i32 noundef %40) #7, !dbg !657
  store i32 %call62, ptr %retval, align 4, !dbg !658
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !658

cleanup:                                          ; preds = %lsm, %if.then60, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !659
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #6, !dbg !659
  call void @llvm.lifetime.end.p0(i64 4, ptr %kperm) #6, !dbg !659
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #6, !dbg !659
  %41 = load i32, ptr %retval, align 4, !dbg !659
  ret i32 %41, !dbg !659
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @key_ref_to_ptr(ptr noundef %key_ref) #4 align 16 !dbg !660 {
entry:
  %key_ref.addr = alloca ptr, align 8
  store ptr %key_ref, ptr %key_ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key_ref.addr, metadata !664, metadata !DIExpression()), !dbg !665
  %0 = load ptr, ptr %key_ref.addr, align 8, !dbg !666
  %1 = ptrtoint ptr %0 to i64, !dbg !667
  %and = and i64 %1, -2, !dbg !668
  %2 = inttoptr i64 %and to ptr, !dbg !669
  ret ptr %2, !dbg !670
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_eq(i32 %left.coerce, i32 %right.coerce) #4 align 16 !dbg !671 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !675, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.declare(metadata ptr %right, metadata !676, metadata !DIExpression()), !dbg !678
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !679
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !679
  %call = call i32 @__kuid_val(i32 %0) #7, !dbg !679
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !680
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !680
  %call4 = call i32 @__kuid_val(i32 %1) #7, !dbg !680
  %cmp = icmp eq i32 %call, %call4, !dbg !681
  ret i1 %cmp, !dbg !682
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_valid(i32 %gid.coerce) #4 align 16 !dbg !683 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !687, metadata !DIExpression()), !dbg !688
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !689
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !689
  %call = call i32 @__kgid_val(i32 %0) #7, !dbg !689
  %cmp = icmp ne i32 %call, -1, !dbg !690
  ret i1 %cmp, !dbg !691
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_eq(i32 %left.coerce, i32 %right.coerce) #4 align 16 !dbg !692 {
entry:
  %left = alloca %struct.kgid_t, align 4
  %right = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !696, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.declare(metadata ptr %right, metadata !697, metadata !DIExpression()), !dbg !699
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0, !dbg !700
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !700
  %call = call i32 @__kgid_val(i32 %0) #7, !dbg !700
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0, !dbg !701
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !701
  %call4 = call i32 @__kgid_val(i32 %1) #7, !dbg !701
  %cmp = icmp eq i32 %call, %call4, !dbg !702
  ret i1 %cmp, !dbg !703
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !704 dso_local i32 @groups_search(ptr noundef, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_key_possessed(ptr noundef %key_ref) #4 align 16 !dbg !709 {
entry:
  %key_ref.addr = alloca ptr, align 8
  store ptr %key_ref, ptr %key_ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key_ref.addr, metadata !713, metadata !DIExpression()), !dbg !714
  %0 = load ptr, ptr %key_ref.addr, align 8, !dbg !715
  %1 = ptrtoint ptr %0 to i64, !dbg !716
  %and = and i64 %1, 1, !dbg !717
  %tobool = icmp ne i64 %and, 0, !dbg !716
  ret i1 %tobool, !dbg !718
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !719 dso_local i32 @security_key_permission(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @key_validate(ptr noundef %key) #0 align 16 !dbg !723 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %tmp = alloca i64, align 8
  %expiry = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !727, metadata !DIExpression()), !dbg !730
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #6, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !728, metadata !DIExpression()), !dbg !732
  br label %do.body, !dbg !733

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !735

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !735

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %key.addr, align 8, !dbg !733
  %flags1 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14, !dbg !733
  %1 = load volatile i64, ptr %flags1, align 8, !dbg !733
  store i64 %1, ptr %tmp, align 8, !dbg !735
  %2 = load i64, ptr %tmp, align 8, !dbg !733
  store i64 %2, ptr %flags, align 8, !dbg !732
  call void @llvm.lifetime.start.p0(i64 8, ptr %expiry) #6, !dbg !737
  call void @llvm.dbg.declare(metadata ptr %expiry, metadata !729, metadata !DIExpression()), !dbg !738
  br label %do.body2, !dbg !739

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !741

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !741

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %key.addr, align 8, !dbg !739
  %4 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 6, !dbg !739
  %5 = load volatile i64, ptr %4, align 8, !dbg !739
  store i64 %5, ptr %tmp5, align 8, !dbg !741
  %6 = load i64, ptr %tmp5, align 8, !dbg !739
  store i64 %6, ptr %expiry, align 8, !dbg !738
  %7 = load i64, ptr %flags, align 8, !dbg !743
  %and = and i64 %7, 32, !dbg !745
  %tobool = icmp ne i64 %and, 0, !dbg !745
  br i1 %tobool, label %if.then, label %if.end, !dbg !746

if.then:                                          ; preds = %do.end4
  store i32 -126, ptr %retval, align 4, !dbg !747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !747

if.end:                                           ; preds = %do.end4
  %8 = load i64, ptr %flags, align 8, !dbg !748
  %and6 = and i64 %8, 3, !dbg !750
  %tobool7 = icmp ne i64 %and6, 0, !dbg !750
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !751

if.then8:                                         ; preds = %if.end
  store i32 -128, ptr %retval, align 4, !dbg !752
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !752

if.end9:                                          ; preds = %if.end
  %9 = load i64, ptr %expiry, align 8, !dbg !753
  %tobool10 = icmp ne i64 %9, 0, !dbg !753
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !755

if.then11:                                        ; preds = %if.end9
  %call = call i64 @ktime_get_real_seconds() #7, !dbg !756
  %10 = load i64, ptr %expiry, align 8, !dbg !759
  %cmp = icmp sge i64 %call, %10, !dbg !760
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !761

if.then12:                                        ; preds = %if.then11
  store i32 -127, ptr %retval, align 4, !dbg !762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !762

if.end13:                                         ; preds = %if.then11
  br label %if.end14, !dbg !763

if.end14:                                         ; preds = %if.end13, %if.end9
  store i32 0, ptr %retval, align 4, !dbg !764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !764

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %expiry) #6, !dbg !765
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #6, !dbg !765
  %11 = load i32, ptr %retval, align 4, !dbg !765
  ret i32 %11, !dbg !765
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !766 dso_local i64 @ktime_get_real_seconds() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #4 align 16 !dbg !770 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !774, metadata !DIExpression()), !dbg !775
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !776
  %0 = load i32, ptr %val, align 4, !dbg !776
  ret i32 %0, !dbg !777
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #4 align 16 !dbg !778 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !782, metadata !DIExpression()), !dbg !783
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !784
  %0 = load i32, ptr %val, align 4, !dbg !784
  ret i32 %0, !dbg !785
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!414, !415, !416, !417, !418, !419, !420, !421}
!llvm.ident = !{!422}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "security/keys/permission.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ce71493c5d03a7e455d20be6e85c70f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 27)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_key_task_permission280", scope: !9, file: !2, line: 92, type: !34, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/keys/.permission.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22security/keys/permission\22 -D KBUILD_BASENAME=\22permission\22 -D KBUILD_MODNAME=\22permission\22 -D __KBUILD_MODNAME=kmod_permission -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/keys/permission.ll security/keys/permission.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !33, globals: !411, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernel_pkey_operation", file: !12, line: 22, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/keyctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb6b47c8f95fa53866d7002b6a7b8c6")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "kernel_pkey_encrypt", value: 0)
!16 = !DIEnumerator(name: "kernel_pkey_decrypt", value: 1)
!17 = !DIEnumerator(name: "kernel_pkey_sign", value: 2)
!18 = !DIEnumerator(name: "kernel_pkey_verify", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "key_need_perm", file: !20, line: 77, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!22 = !DIEnumerator(name: "KEY_NEED_UNSPECIFIED", value: 0)
!23 = !DIEnumerator(name: "KEY_NEED_VIEW", value: 1)
!24 = !DIEnumerator(name: "KEY_NEED_READ", value: 2)
!25 = !DIEnumerator(name: "KEY_NEED_WRITE", value: 3)
!26 = !DIEnumerator(name: "KEY_NEED_SEARCH", value: 4)
!27 = !DIEnumerator(name: "KEY_NEED_LINK", value: 5)
!28 = !DIEnumerator(name: "KEY_NEED_SETATTR", value: 6)
!29 = !DIEnumerator(name: "KEY_NEED_UNLINK", value: 7)
!30 = !DIEnumerator(name: "KEY_SYSADMIN_OVERRIDE", value: 8)
!31 = !DIEnumerator(name: "KEY_AUTHTOKEN_OVERRIDE", value: 9)
!32 = !DIEnumerator(name: "KEY_DEFER_PERM_CHECK", value: 10)
!33 = !{!34, !35, !39, !43, !38, !184}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!42 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !20, line: 195, size: 1728, elements: !45)
!45 = !{!46, !58, !65, !82, !132, !169, !170, !177, !178, !179, !186, !191, !192, !193, !195, !196, !394, !410}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !44, file: !20, line: 196, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !48, line: 113, baseType: !49)
!48 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !48, line: 111, size: 32, elements: !50)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !49, file: !48, line: 112, baseType: !52, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !53, line: 174, baseType: !54)
!53 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 172, size: 32, elements: !55)
!55 = !{!56}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !54, file: !53, line: 173, baseType: !57, size: 32)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !44, file: !20, line: 197, baseType: !59, size: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !20, line: 28, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !53, line: 104, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !62, line: 20, baseType: !63)
!62 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !64, line: 26, baseType: !57)
!64 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!65 = !DIDerivedType(tag: DW_TAG_member, scope: !44, file: !20, line: 198, baseType: !66, size: 192, offset: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !20, line: 198, size: 192, elements: !67)
!67 = !{!68, !74}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !66, file: !20, line: 199, baseType: !69, size: 128)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !53, line: 190, size: 128, elements: !70)
!70 = !{!71, !73}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !69, file: !53, line: 191, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !69, file: !53, line: 191, baseType: !72, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !66, file: !20, line: 200, baseType: !75, size: 192, align: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !76, line: 5, size: 192, align: 64, elements: !77)
!76 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!77 = !{!78, !79, !81}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !75, file: !76, line: 6, baseType: !38, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !75, file: !76, line: 7, baseType: !80, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !75, file: !76, line: 8, baseType: !80, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !44, file: !20, line: 205, baseType: !83, size: 320, offset: 256)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !84, line: 48, size: 320, elements: !85)
!84 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!85 = !{!86, !95, !96, !101, !131}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !83, file: !84, line: 49, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !88, line: 13, baseType: !89)
!88 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !53, line: 181, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 179, size: 64, elements: !91)
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !90, file: !53, line: 180, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !62, line: 22, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !64, line: 30, baseType: !42)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !83, file: !84, line: 55, baseType: !87, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !83, file: !84, line: 57, baseType: !97, size: 32, offset: 128)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !98, line: 15, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !97, file: !98, line: 20, baseType: !52, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !83, file: !84, line: 59, baseType: !102, size: 32, offset: 160)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !103, line: 23, baseType: !104)
!103 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !103, line: 14, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !104, file: !103, line: 15, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !108, line: 44, baseType: !109)
!108 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !108, line: 14, size: 32, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !109, file: !108, line: 15, baseType: !112, size: 32)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !109, file: !108, line: 15, size: 32, elements: !113)
!113 = !{!114, !115, !123}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !112, file: !108, line: 16, baseType: !52, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !108, line: 24, baseType: !116, size: 16)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !112, file: !108, line: 24, size: 16, elements: !117)
!117 = !{!118, !122}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !116, file: !108, line: 25, baseType: !119, size: 8)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !62, line: 17, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !64, line: 21, baseType: !121)
!121 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !116, file: !108, line: 26, baseType: !119, size: 8, offset: 8)
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !108, line: 28, baseType: !124, size: 32)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !112, file: !108, line: 28, size: 32, elements: !125)
!125 = !{!126, !130}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !124, file: !108, line: 29, baseType: !127, size: 16)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !62, line: 19, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !64, line: 24, baseType: !129)
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !124, file: !108, line: 30, baseType: !127, size: 16, offset: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !83, file: !84, line: 60, baseType: !69, size: 128, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !44, file: !20, line: 206, baseType: !133, size: 64, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !135, line: 54, size: 704, elements: !136)
!135 = !DIFile(filename: "security/keys/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65e07b4072a82be19b875e4a608fcbf3")
!136 = !{!137, !138, !146, !155, !156, !157, !158, !167, !168}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !134, file: !135, line: 55, baseType: !75, size: 192, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "cons_lock", scope: !134, file: !135, line: 56, baseType: !139, size: 256, offset: 192)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !140, line: 66, size: 256, elements: !141)
!140 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!141 = !{!142, !143, !144, !145}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !139, file: !140, line: 67, baseType: !87, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !139, file: !140, line: 68, baseType: !102, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !139, file: !140, line: 70, baseType: !97, size: 32, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !139, file: !140, line: 72, baseType: !69, size: 128, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !134, file: !135, line: 57, baseType: !147, size: 32, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !148, line: 29, baseType: !149)
!148 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !148, line: 17, size: 32, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !148, line: 18, baseType: !152, size: 32)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !148, line: 18, size: 32, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !152, file: !148, line: 19, baseType: !104, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !134, file: !135, line: 58, baseType: !47, size: 32, offset: 480)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !134, file: !135, line: 59, baseType: !52, size: 32, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nikeys", scope: !134, file: !135, line: 60, baseType: !52, size: 32, offset: 544)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !134, file: !135, line: 61, baseType: !159, size: 32, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !160, line: 23, baseType: !161)
!160 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 21, size: 32, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !161, file: !160, line: 22, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !53, line: 37, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !166, line: 49, baseType: !13)
!166 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!167 = !DIDerivedType(tag: DW_TAG_member, name: "qnkeys", scope: !134, file: !135, line: 62, baseType: !57, size: 32, offset: 608)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "qnbytes", scope: !134, file: !135, line: 63, baseType: !57, size: 32, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !44, file: !20, line: 207, baseType: !34, size: 64, offset: 640)
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !44, file: !20, line: 208, baseType: !171, size: 64, offset: 704)
!171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !20, line: 208, size: 64, elements: !172)
!172 = !{!173, !176}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !171, file: !20, line: 209, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !175, line: 8, baseType: !94)
!175 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!176 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !171, file: !20, line: 210, baseType: !174, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !44, file: !20, line: 212, baseType: !174, size: 64, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !44, file: !20, line: 213, baseType: !159, size: 32, offset: 832)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !44, file: !20, line: 214, baseType: !180, size: 32, offset: 864)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !160, line: 28, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 26, size: 32, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !181, file: !160, line: 27, baseType: !184, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !53, line: 38, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !166, line: 50, baseType: !13)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !44, file: !20, line: 215, baseType: !187, size: 32, offset: 896)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !20, line: 31, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 110, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !62, line: 21, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !64, line: 27, baseType: !13)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !44, file: !20, line: 216, baseType: !129, size: 16, offset: 928)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !44, file: !20, line: 217, baseType: !129, size: 16, offset: 944)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !44, file: !20, line: 221, baseType: !194, size: 16, offset: 960)
!194 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !20, line: 228, baseType: !38, size: 64, offset: 1024)
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !44, file: !20, line: 245, baseType: !197, size: 320, offset: 1088)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !20, line: 245, size: 320, elements: !198)
!198 = !{!199, !386}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !197, file: !20, line: 246, baseType: !200, size: 320)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !20, line: 114, size: 320, elements: !201)
!201 = !{!202, !203, !215, !370, !385}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !200, file: !20, line: 116, baseType: !38, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !20, line: 117, baseType: !204, size: 64, offset: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !20, line: 117, size: 64, elements: !205)
!205 = !{!206, !214}
!206 = !DIDerivedType(tag: DW_TAG_member, scope: !204, file: !20, line: 118, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !20, line: 118, size: 64, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !207, file: !20, line: 120, baseType: !127, size: 16)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !207, file: !20, line: 121, baseType: !211, size: 48, offset: 16)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 6)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !204, file: !20, line: 127, baseType: !38, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !200, file: !20, line: 129, baseType: !216, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !218, line: 64, size: 1344, elements: !219)
!218 = !DIFile(filename: "./include/linux/key-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79a6b816f9397cf1462a94b9d3d8f5a6")
!219 = !{!220, !223, !227, !228, !232, !256, !260, !264, !265, !285, !289, !293, !294, !300, !305, !310, !328, !356, !361, !365, !366}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !218, line: 66, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "def_datalen", scope: !217, file: !218, line: 72, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 61, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !166, line: 72, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !166, line: 16, baseType: !38)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !217, file: !218, line: 74, baseType: !13, size: 32, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "vet_description", scope: !217, file: !218, line: 79, baseType: !229, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!57, !221}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "preparse", scope: !217, file: !218, line: 85, baseType: !233, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!57, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_preparsed_payload", file: !218, line: 31, size: 640, elements: !238)
!238 = !{!239, !240, !242, !250, !253, !254, !255}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "orig_description", scope: !237, file: !218, line: 32, baseType: !221, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !237, file: !218, line: 33, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !237, file: !218, line: 34, baseType: !243, size: 256, offset: 128)
!243 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !20, line: 134, size: 256, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !243, file: !20, line: 135, baseType: !34, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !243, file: !20, line: 136, baseType: !247, size: 256)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 256, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 4)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !237, file: !218, line: 35, baseType: !251, size: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !237, file: !218, line: 36, baseType: !224, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !237, file: !218, line: 37, baseType: !224, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !237, file: !218, line: 38, baseType: !174, size: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "free_preparse", scope: !217, file: !218, line: 89, baseType: !257, size: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !236}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "instantiate", scope: !217, file: !218, line: 95, baseType: !261, size: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!57, !43, !236}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !217, file: !218, line: 102, baseType: !261, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "match_preparse", scope: !217, file: !218, line: 108, baseType: !266, size: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!57, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_match_data", file: !218, line: 46, size: 256, elements: !271)
!271 = !{!272, !282, !283, !284}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !270, file: !218, line: 51, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!276, !278, !280}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !53, line: 35, baseType: !277)
!277 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !270, file: !218, line: 54, baseType: !251, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "preparsed", scope: !270, file: !218, line: 55, baseType: !34, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_type", scope: !270, file: !218, line: 56, baseType: !13, size: 32, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "match_free", scope: !217, file: !218, line: 112, baseType: !286, size: 64, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !269}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "revoke", scope: !217, file: !218, line: 117, baseType: !290, size: 64, offset: 640)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !43}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !217, file: !218, line: 120, baseType: !290, size: 64, offset: 704)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "describe", scope: !217, file: !218, line: 123, baseType: !295, size: 64, offset: 768)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !278, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !20, line: 97, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !217, file: !218, line: 132, baseType: !301, size: 64, offset: 832)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !278, !241, !224}
!304 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !217, file: !218, line: 142, baseType: !306, size: 64, offset: 896)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_key_actor_t", file: !218, line: 41, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!57, !43, !34}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_restriction", scope: !217, file: !218, line: 150, baseType: !311, size: 64, offset: 960)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !221}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !20, line: 176, size: 192, elements: !316)
!316 = !{!317, !326, !327}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !315, file: !20, line: 177, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !20, line: 171, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!57, !43, !322, !324, !43}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !315, file: !20, line: 178, baseType: !43, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !315, file: !20, line: 179, baseType: !216, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "asym_query", scope: !217, file: !218, line: 153, baseType: !329, size: 64, offset: 1024)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!57, !332, !347}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_params", file: !12, line: 29, size: 384, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !346}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !334, file: !12, line: 30, baseType: !43, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !334, file: !12, line: 31, baseType: !221, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !334, file: !12, line: 32, baseType: !221, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !334, file: !12, line: 33, baseType: !241, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "in_len", scope: !334, file: !12, line: 34, baseType: !190, size: 32, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !12, line: 35, baseType: !342, size: 32, offset: 288)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !12, line: 35, size: 32, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !342, file: !12, line: 36, baseType: !190, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "in2_len", scope: !342, file: !12, line: 37, baseType: !190, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !334, file: !12, line: 39, baseType: !11, size: 8, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_query", file: !12, line: 13, size: 128, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "supported_ops", scope: !348, file: !12, line: 14, baseType: !190, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !348, file: !12, line: 15, baseType: !190, size: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "max_data_size", scope: !348, file: !12, line: 16, baseType: !128, size: 16, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "max_sig_size", scope: !348, file: !12, line: 17, baseType: !128, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "max_enc_size", scope: !348, file: !12, line: 18, baseType: !128, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_size", scope: !348, file: !12, line: 19, baseType: !128, size: 16, offset: 112)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "asym_eds_op", scope: !217, file: !218, line: 155, baseType: !357, size: 64, offset: 1088)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!57, !360, !251, !34}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "asym_verify_signature", scope: !217, file: !218, line: 157, baseType: !362, size: 64, offset: 1152)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!57, !360, !251, !251}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !217, file: !218, line: 161, baseType: !69, size: 128, offset: 1216)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "lock_class", scope: !217, file: !218, line: 162, baseType: !367, offset: 1344)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !368, line: 206, elements: !369)
!368 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!369 = !{}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !200, file: !20, line: 130, baseType: !371, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !20, line: 108, size: 192, elements: !373)
!373 = !{!374, !383, !384}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !372, file: !20, line: 109, baseType: !375, size: 128, align: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !53, line: 232, size: 128, align: 64, elements: !376)
!376 = !{!377, !379}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !53, line: 233, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !375, file: !53, line: 234, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !378}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !372, file: !20, line: 110, baseType: !47, size: 32, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !372, file: !20, line: 111, baseType: !276, size: 8, offset: 160)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !200, file: !20, line: 131, baseType: !221, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !20, line: 247, baseType: !387, size: 320)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !20, line: 247, size: 320, elements: !388)
!388 = !{!389, !390, !391, !392, !393}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !387, file: !20, line: 248, baseType: !38, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !387, file: !20, line: 249, baseType: !38, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !387, file: !20, line: 250, baseType: !216, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !387, file: !20, line: 251, baseType: !371, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !387, file: !20, line: 252, baseType: !241, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !44, file: !20, line: 260, baseType: !395, size: 256, offset: 1408)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !20, line: 260, size: 256, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !395, file: !20, line: 261, baseType: !243, size: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !20, line: 262, baseType: !399, size: 256)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !395, file: !20, line: 262, size: 256, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !399, file: !20, line: 264, baseType: !69, size: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !399, file: !20, line: 265, baseType: !403, size: 128, offset: 128)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !404, line: 22, size: 128, elements: !405)
!404 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!405 = !{!406, !409}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !403, file: !404, line: 23, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !404, line: 23, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !403, file: !404, line: 24, baseType: !38, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !44, file: !20, line: 280, baseType: !314, size: 64, offset: 1664)
!411 = !{!0, !7, !412}
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_key_validate283", scope: !9, file: !2, line: 123, type: !34, isLocal: true, isDefinition: true)
!414 = !{i32 7, !"Dwarf Version", i32 5}
!415 = !{i32 2, !"Debug Info Version", i32 3}
!416 = !{i32 1, !"wchar_size", i32 2}
!417 = !{i32 8, !"cf-protection-branch", i32 1}
!418 = !{i32 4, !"function_return_thunk_extern", i32 1}
!419 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!420 = !{i32 1, !"Code Model", i32 2}
!421 = !{i32 1, !"override-stack-alignment", i32 8}
!422 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!423 = distinct !DISubprogram(name: "key_task_permission", scope: !2, file: !2, line: 26, type: !424, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !523)
!424 = !DISubroutineType(types: !425)
!425 = !{!57, !426, !430, !19}
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_ref_t", file: !20, line: 153, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "__key_reference_with_attributes", file: !20, line: 153, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !433, line: 110, size: 1472, elements: !434)
!433 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !501, !504, !508, !518}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !432, file: !433, line: 111, baseType: !87, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !432, file: !433, line: 112, baseType: !159, size: 32, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !432, file: !433, line: 113, baseType: !180, size: 32, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !432, file: !433, line: 114, baseType: !159, size: 32, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !432, file: !433, line: 115, baseType: !180, size: 32, offset: 160)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !432, file: !433, line: 116, baseType: !159, size: 32, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !432, file: !433, line: 117, baseType: !180, size: 32, offset: 224)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !432, file: !433, line: 118, baseType: !159, size: 32, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !432, file: !433, line: 119, baseType: !180, size: 32, offset: 288)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !432, file: !433, line: 120, baseType: !13, size: 32, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !432, file: !433, line: 121, baseType: !446, size: 64, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !447, line: 24, baseType: !448)
!447 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 24, size: 64, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !448, file: !447, line: 24, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !62, line: 23, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !64, line: 31, baseType: !453)
!453 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !432, file: !433, line: 122, baseType: !446, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !432, file: !433, line: 123, baseType: !446, size: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !432, file: !433, line: 124, baseType: !446, size: 64, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !432, file: !433, line: 125, baseType: !446, size: 64, offset: 640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !432, file: !433, line: 127, baseType: !121, size: 8, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !432, file: !433, line: 129, baseType: !43, size: 64, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !432, file: !433, line: 130, baseType: !43, size: 64, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !432, file: !433, line: 131, baseType: !43, size: 64, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !432, file: !433, line: 132, baseType: !43, size: 64, offset: 960)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !432, file: !433, line: 135, baseType: !34, size: 64, offset: 1024)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !432, file: !433, line: 137, baseType: !465, size: 64, offset: 1088)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !467, line: 14, size: 1088, elements: !468)
!467 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!468 = !{!469, !470, !479, !480, !481, !488, !489, !490}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !466, file: !467, line: 15, baseType: !47, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !466, file: !467, line: 17, baseType: !471, size: 320, offset: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !472, line: 22, size: 320, elements: !473)
!472 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!473 = !{!474, !475, !476, !477}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !471, file: !472, line: 23, baseType: !102, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !471, file: !472, line: 24, baseType: !93, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !471, file: !472, line: 26, baseType: !69, size: 128, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !471, file: !472, line: 28, baseType: !478, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !466, file: !467, line: 19, baseType: !38, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !466, file: !467, line: 20, baseType: !87, size: 64, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !466, file: !467, line: 23, baseType: !482, size: 128, offset: 512)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !53, line: 198, size: 128, elements: !483)
!483 = !{!484, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !482, file: !53, line: 199, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !482, file: !53, line: 199, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !466, file: !467, line: 24, baseType: !159, size: 32, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !466, file: !467, line: 29, baseType: !87, size: 64, offset: 704)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !466, file: !467, line: 36, baseType: !491, size: 320, offset: 768)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !492, line: 15, size: 320, elements: !493)
!492 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!493 = !{!494, !495, !496, !497, !498, !499, !500}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !491, file: !492, line: 16, baseType: !102, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !491, file: !492, line: 18, baseType: !57, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !491, file: !492, line: 19, baseType: !57, size: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !491, file: !492, line: 20, baseType: !57, size: 32, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !491, file: !492, line: 21, baseType: !57, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !491, file: !492, line: 22, baseType: !38, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !491, file: !492, line: 23, baseType: !38, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !432, file: !433, line: 138, baseType: !502, size: 64, offset: 1152)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !160, line: 18, flags: DIFlagFwdDecl)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !432, file: !433, line: 139, baseType: !505, size: 64, offset: 1216)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !507, line: 16, flags: DIFlagFwdDecl)
!507 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !432, file: !433, line: 140, baseType: !509, size: 64, offset: 1280)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !433, line: 25, size: 64, elements: !511)
!511 = !{!512, !513, !514}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !510, file: !433, line: 26, baseType: !52, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !510, file: !433, line: 27, baseType: !57, size: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !510, file: !433, line: 28, baseType: !515, offset: 64)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: -1)
!518 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !433, line: 142, baseType: !519, size: 128, offset: 1344)
!519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !433, line: 142, size: 128, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !519, file: !433, line: 143, baseType: !57, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !519, file: !433, line: 144, baseType: !375, size: 128, align: 64)
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !534, !537, !538}
!524 = !DILocalVariable(name: "key_ref", arg: 1, scope: !423, file: !2, line: 26, type: !426)
!525 = !DILocalVariable(name: "cred", arg: 2, scope: !423, file: !2, line: 26, type: !430)
!526 = !DILocalVariable(name: "need_perm", arg: 3, scope: !423, file: !2, line: 27, type: !19)
!527 = !DILocalVariable(name: "key", scope: !423, file: !2, line: 29, type: !43)
!528 = !DILocalVariable(name: "kperm", scope: !423, file: !2, line: 30, type: !187)
!529 = !DILocalVariable(name: "mask", scope: !423, file: !2, line: 30, type: !187)
!530 = !DILocalVariable(name: "ret", scope: !423, file: !2, line: 31, type: !57)
!531 = !DILocalVariable(name: "__ret_warn_on", scope: !532, file: !2, line: 35, type: !57)
!532 = distinct !DILexicalBlock(scope: !533, file: !2, line: 35, column: 3)
!533 = distinct !DILexicalBlock(scope: !423, file: !2, line: 33, column: 21)
!534 = !DILocalVariable(name: "__flags", scope: !535, file: !2, line: 35, type: !57)
!535 = distinct !DILexicalBlock(scope: !536, file: !2, line: 35, column: 3)
!536 = distinct !DILexicalBlock(scope: !532, file: !2, line: 35, column: 3)
!537 = !DILabel(scope: !423, name: "use_these_perms", file: !2, line: 77)
!538 = !DILabel(scope: !423, name: "lsm", file: !2, line: 89)
!539 = !DILocation(line: 26, column: 41, scope: !423)
!540 = !DILocation(line: 26, column: 69, scope: !423)
!541 = !DILocation(line: 27, column: 23, scope: !423)
!542 = !DILocation(line: 29, column: 2, scope: !423)
!543 = !DILocation(line: 29, column: 14, scope: !423)
!544 = !DILocation(line: 30, column: 2, scope: !423)
!545 = !DILocation(line: 30, column: 13, scope: !423)
!546 = !DILocation(line: 30, column: 20, scope: !423)
!547 = !DILocation(line: 31, column: 2, scope: !423)
!548 = !DILocation(line: 31, column: 6, scope: !423)
!549 = !DILocation(line: 33, column: 10, scope: !423)
!550 = !DILocation(line: 33, column: 2, scope: !423)
!551 = !DILocation(line: 35, column: 3, scope: !532)
!552 = !DILocation(line: 35, column: 3, scope: !536)
!553 = !DILocation(line: 35, column: 3, scope: !535)
!554 = !DILocation(line: 35, column: 3, scope: !555)
!555 = distinct !DILexicalBlock(scope: !535, file: !2, line: 35, column: 3)
!556 = !DILocation(line: 35, column: 3, scope: !557)
!557 = distinct !DILexicalBlock(scope: !535, file: !2, line: 35, column: 3)
!558 = !{i64 2154167956, i64 2154167985, i64 2154168031, i64 2154168089, i64 2154168143, i64 2154168197, i64 2154168252, i64 2154168283, i64 2154168591, i64 2154168597, i64 2154168644, i64 2154168667, i64 2154168693}
!559 = !DILocation(line: 35, column: 3, scope: !560)
!560 = distinct !DILexicalBlock(scope: !535, file: !2, line: 35, column: 3)
!561 = !DILocation(line: 35, column: 3, scope: !533)
!562 = !DILocation(line: 36, column: 3, scope: !533)
!563 = !DILocation(line: 41, column: 3, scope: !533)
!564 = !DILocation(line: 43, column: 27, scope: !533)
!565 = !DILocation(line: 43, column: 43, scope: !533)
!566 = !DILocation(line: 44, column: 27, scope: !533)
!567 = !DILocation(line: 44, column: 43, scope: !533)
!568 = !DILocation(line: 45, column: 28, scope: !533)
!569 = !DILocation(line: 45, column: 45, scope: !533)
!570 = !DILocation(line: 46, column: 29, scope: !533)
!571 = !DILocation(line: 46, column: 47, scope: !533)
!572 = !DILocation(line: 47, column: 27, scope: !533)
!573 = !DILocation(line: 47, column: 43, scope: !533)
!574 = !DILocation(line: 48, column: 30, scope: !533)
!575 = !DILocation(line: 48, column: 49, scope: !533)
!576 = !DILocation(line: 51, column: 23, scope: !423)
!577 = !DILocation(line: 51, column: 8, scope: !423)
!578 = !DILocation(line: 51, column: 6, scope: !423)
!579 = !DILocation(line: 54, column: 13, scope: !580)
!580 = distinct !DILexicalBlock(scope: !423, file: !2, line: 54, column: 6)
!581 = !DILocation(line: 54, column: 18, scope: !580)
!582 = !DILocation(line: 54, column: 23, scope: !580)
!583 = !DILocation(line: 54, column: 29, scope: !580)
!584 = !DILocation(line: 54, column: 6, scope: !580)
!585 = !DILocation(line: 54, column: 6, scope: !423)
!586 = !DILocation(line: 55, column: 11, scope: !587)
!587 = distinct !DILexicalBlock(scope: !580, file: !2, line: 54, column: 37)
!588 = !DILocation(line: 55, column: 16, scope: !587)
!589 = !DILocation(line: 55, column: 21, scope: !587)
!590 = !DILocation(line: 55, column: 9, scope: !587)
!591 = !DILocation(line: 56, column: 3, scope: !587)
!592 = !DILocation(line: 61, column: 16, scope: !593)
!593 = distinct !DILexicalBlock(scope: !423, file: !2, line: 61, column: 6)
!594 = !DILocation(line: 61, column: 21, scope: !593)
!595 = !DILocation(line: 61, column: 6, scope: !593)
!596 = !DILocation(line: 61, column: 26, scope: !593)
!597 = !DILocation(line: 61, column: 29, scope: !593)
!598 = !DILocation(line: 61, column: 34, scope: !593)
!599 = !DILocation(line: 61, column: 39, scope: !593)
!600 = !DILocation(line: 61, column: 6, scope: !423)
!601 = !DILocation(line: 62, column: 14, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !2, line: 62, column: 7)
!603 = distinct !DILexicalBlock(scope: !593, file: !2, line: 61, column: 54)
!604 = !DILocation(line: 62, column: 19, scope: !602)
!605 = !DILocation(line: 62, column: 24, scope: !602)
!606 = !DILocation(line: 62, column: 30, scope: !602)
!607 = !DILocation(line: 62, column: 7, scope: !602)
!608 = !DILocation(line: 62, column: 7, scope: !603)
!609 = !DILocation(line: 63, column: 12, scope: !610)
!610 = distinct !DILexicalBlock(scope: !602, file: !2, line: 62, column: 38)
!611 = !DILocation(line: 63, column: 17, scope: !610)
!612 = !DILocation(line: 63, column: 22, scope: !610)
!613 = !DILocation(line: 63, column: 10, scope: !610)
!614 = !DILocation(line: 64, column: 4, scope: !610)
!615 = !DILocation(line: 67, column: 23, scope: !603)
!616 = !DILocation(line: 67, column: 29, scope: !603)
!617 = !DILocation(line: 67, column: 41, scope: !603)
!618 = !DILocation(line: 67, column: 46, scope: !603)
!619 = !DILocation(line: 67, column: 9, scope: !603)
!620 = !DILocation(line: 67, column: 7, scope: !603)
!621 = !DILocation(line: 68, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !603, file: !2, line: 68, column: 7)
!623 = !DILocation(line: 68, column: 7, scope: !603)
!624 = !DILocation(line: 69, column: 12, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !2, line: 68, column: 12)
!626 = !DILocation(line: 69, column: 17, scope: !625)
!627 = !DILocation(line: 69, column: 22, scope: !625)
!628 = !DILocation(line: 69, column: 10, scope: !625)
!629 = !DILocation(line: 70, column: 4, scope: !625)
!630 = !DILocation(line: 72, column: 2, scope: !603)
!631 = !DILocation(line: 75, column: 10, scope: !423)
!632 = !DILocation(line: 75, column: 15, scope: !423)
!633 = !DILocation(line: 75, column: 8, scope: !423)
!634 = !DILocation(line: 75, column: 2, scope: !423)
!635 = !DILocation(line: 77, column: 1, scope: !423)
!636 = !DILocation(line: 82, column: 23, scope: !637)
!637 = distinct !DILexicalBlock(scope: !423, file: !2, line: 82, column: 6)
!638 = !DILocation(line: 82, column: 6, scope: !637)
!639 = !DILocation(line: 82, column: 6, scope: !423)
!640 = !DILocation(line: 83, column: 12, scope: !637)
!641 = !DILocation(line: 83, column: 17, scope: !637)
!642 = !DILocation(line: 83, column: 22, scope: !637)
!643 = !DILocation(line: 83, column: 9, scope: !637)
!644 = !DILocation(line: 83, column: 3, scope: !637)
!645 = !DILocation(line: 85, column: 7, scope: !646)
!646 = distinct !DILexicalBlock(scope: !423, file: !2, line: 85, column: 6)
!647 = !DILocation(line: 85, column: 15, scope: !646)
!648 = !DILocation(line: 85, column: 13, scope: !646)
!649 = !DILocation(line: 85, column: 24, scope: !646)
!650 = !DILocation(line: 85, column: 21, scope: !646)
!651 = !DILocation(line: 85, column: 6, scope: !423)
!652 = !DILocation(line: 86, column: 3, scope: !646)
!653 = !DILocation(line: 89, column: 1, scope: !423)
!654 = !DILocation(line: 90, column: 33, scope: !423)
!655 = !DILocation(line: 90, column: 42, scope: !423)
!656 = !DILocation(line: 90, column: 48, scope: !423)
!657 = !DILocation(line: 90, column: 9, scope: !423)
!658 = !DILocation(line: 90, column: 2, scope: !423)
!659 = !DILocation(line: 91, column: 1, scope: !423)
!660 = distinct !DISubprogram(name: "key_ref_to_ptr", scope: !20, file: !20, line: 161, type: !661, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{!43, !426}
!663 = !{!664}
!664 = !DILocalVariable(name: "key_ref", arg: 1, scope: !660, file: !20, line: 161, type: !426)
!665 = !DILocation(line: 161, column: 58, scope: !660)
!666 = !DILocation(line: 163, column: 41, scope: !660)
!667 = !DILocation(line: 163, column: 25, scope: !660)
!668 = !DILocation(line: 163, column: 49, scope: !660)
!669 = !DILocation(line: 163, column: 9, scope: !660)
!670 = !DILocation(line: 163, column: 2, scope: !660)
!671 = distinct !DISubprogram(name: "uid_eq", scope: !160, file: !160, line: 61, type: !672, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{!276, !159, !159}
!674 = !{!675, !676}
!675 = !DILocalVariable(name: "left", arg: 1, scope: !671, file: !160, line: 61, type: !159)
!676 = !DILocalVariable(name: "right", arg: 2, scope: !671, file: !160, line: 61, type: !159)
!677 = !DILocation(line: 61, column: 34, scope: !671)
!678 = !DILocation(line: 61, column: 47, scope: !671)
!679 = !DILocation(line: 63, column: 9, scope: !671)
!680 = !DILocation(line: 63, column: 29, scope: !671)
!681 = !DILocation(line: 63, column: 26, scope: !671)
!682 = !DILocation(line: 63, column: 2, scope: !671)
!683 = distinct !DISubprogram(name: "gid_valid", scope: !160, file: !160, line: 116, type: !684, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{!276, !180}
!686 = !{!687}
!687 = !DILocalVariable(name: "gid", arg: 1, scope: !683, file: !160, line: 116, type: !180)
!688 = !DILocation(line: 116, column: 37, scope: !683)
!689 = !DILocation(line: 118, column: 9, scope: !683)
!690 = !DILocation(line: 118, column: 25, scope: !683)
!691 = !DILocation(line: 118, column: 2, scope: !683)
!692 = distinct !DISubprogram(name: "gid_eq", scope: !160, file: !160, line: 66, type: !693, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{!276, !180, !180}
!695 = !{!696, !697}
!696 = !DILocalVariable(name: "left", arg: 1, scope: !692, file: !160, line: 66, type: !180)
!697 = !DILocalVariable(name: "right", arg: 2, scope: !692, file: !160, line: 66, type: !180)
!698 = !DILocation(line: 66, column: 34, scope: !692)
!699 = !DILocation(line: 66, column: 47, scope: !692)
!700 = !DILocation(line: 68, column: 9, scope: !692)
!701 = !DILocation(line: 68, column: 29, scope: !692)
!702 = !DILocation(line: 68, column: 26, scope: !692)
!703 = !DILocation(line: 68, column: 2, scope: !692)
!704 = !DISubprogram(name: "groups_search", scope: !433, file: !433, line: 62, type: !705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!705 = !DISubroutineType(types: !706)
!706 = !{!57, !707, !180}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!709 = distinct !DISubprogram(name: "is_key_possessed", scope: !20, file: !20, line: 166, type: !710, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !712)
!710 = !DISubroutineType(types: !711)
!711 = !{!276, !426}
!712 = !{!713}
!713 = !DILocalVariable(name: "key_ref", arg: 1, scope: !709, file: !20, line: 166, type: !426)
!714 = !DILocation(line: 166, column: 53, scope: !709)
!715 = !DILocation(line: 168, column: 25, scope: !709)
!716 = !DILocation(line: 168, column: 9, scope: !709)
!717 = !DILocation(line: 168, column: 33, scope: !709)
!718 = !DILocation(line: 168, column: 2, scope: !709)
!719 = !DISubprogram(name: "security_key_permission", scope: !720, file: !720, line: 1921, type: !721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!720 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!721 = !DISubroutineType(types: !722)
!722 = !{!57, !427, !430, !19}
!723 = distinct !DISubprogram(name: "key_validate", scope: !2, file: !2, line: 102, type: !724, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{!57, !278}
!726 = !{!727, !728, !729}
!727 = !DILocalVariable(name: "key", arg: 1, scope: !723, file: !2, line: 102, type: !278)
!728 = !DILocalVariable(name: "flags", scope: !723, file: !2, line: 104, type: !38)
!729 = !DILocalVariable(name: "expiry", scope: !723, file: !2, line: 105, type: !174)
!730 = !DILocation(line: 102, column: 36, scope: !723)
!731 = !DILocation(line: 104, column: 2, scope: !723)
!732 = !DILocation(line: 104, column: 16, scope: !723)
!733 = !DILocation(line: 104, column: 24, scope: !734)
!734 = distinct !DILexicalBlock(scope: !723, file: !2, line: 104, column: 24)
!735 = !DILocation(line: 104, column: 24, scope: !736)
!736 = distinct !DILexicalBlock(scope: !734, file: !2, line: 104, column: 24)
!737 = !DILocation(line: 105, column: 2, scope: !723)
!738 = !DILocation(line: 105, column: 11, scope: !723)
!739 = !DILocation(line: 105, column: 20, scope: !740)
!740 = distinct !DILexicalBlock(scope: !723, file: !2, line: 105, column: 20)
!741 = !DILocation(line: 105, column: 20, scope: !742)
!742 = distinct !DILexicalBlock(scope: !740, file: !2, line: 105, column: 20)
!743 = !DILocation(line: 107, column: 6, scope: !744)
!744 = distinct !DILexicalBlock(scope: !723, file: !2, line: 107, column: 6)
!745 = !DILocation(line: 107, column: 12, scope: !744)
!746 = !DILocation(line: 107, column: 6, scope: !723)
!747 = !DILocation(line: 108, column: 3, scope: !744)
!748 = !DILocation(line: 111, column: 6, scope: !749)
!749 = distinct !DILexicalBlock(scope: !723, file: !2, line: 111, column: 6)
!750 = !DILocation(line: 111, column: 12, scope: !749)
!751 = !DILocation(line: 111, column: 6, scope: !723)
!752 = !DILocation(line: 113, column: 3, scope: !749)
!753 = !DILocation(line: 116, column: 6, scope: !754)
!754 = distinct !DILexicalBlock(scope: !723, file: !2, line: 116, column: 6)
!755 = !DILocation(line: 116, column: 6, scope: !723)
!756 = !DILocation(line: 117, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !2, line: 117, column: 7)
!758 = distinct !DILexicalBlock(scope: !754, file: !2, line: 116, column: 14)
!759 = !DILocation(line: 117, column: 35, scope: !757)
!760 = !DILocation(line: 117, column: 32, scope: !757)
!761 = !DILocation(line: 117, column: 7, scope: !758)
!762 = !DILocation(line: 118, column: 4, scope: !757)
!763 = !DILocation(line: 119, column: 2, scope: !758)
!764 = !DILocation(line: 121, column: 2, scope: !723)
!765 = !DILocation(line: 122, column: 1, scope: !723)
!766 = !DISubprogram(name: "ktime_get_real_seconds", scope: !767, file: !767, line: 54, type: !768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!767 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!768 = !DISubroutineType(types: !769)
!769 = !{!174}
!770 = distinct !DISubprogram(name: "__kuid_val", scope: !160, file: !160, line: 34, type: !771, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!164, !159}
!773 = !{!774}
!774 = !DILocalVariable(name: "uid", arg: 1, scope: !770, file: !160, line: 34, type: !159)
!775 = !DILocation(line: 34, column: 39, scope: !770)
!776 = !DILocation(line: 36, column: 13, scope: !770)
!777 = !DILocation(line: 36, column: 2, scope: !770)
!778 = distinct !DISubprogram(name: "__kgid_val", scope: !160, file: !160, line: 39, type: !779, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{!184, !180}
!781 = !{!782}
!782 = !DILocalVariable(name: "gid", arg: 1, scope: !778, file: !160, line: 39, type: !180)
!783 = !DILocation(line: 39, column: 39, scope: !778)
!784 = !DILocation(line: 41, column: 13, scope: !778)
!785 = !DILocation(line: 41, column: 2, scope: !778)
