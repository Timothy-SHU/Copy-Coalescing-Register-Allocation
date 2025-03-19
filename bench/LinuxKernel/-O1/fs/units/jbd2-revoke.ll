; ModuleID = 'fs/jbd2/revoke.c'
source_filename = "fs/jbd2/revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.journal_s = type { i64, i64, i32, %struct.mutex, ptr, ptr, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, i64, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.13, %struct.qspinlock }
%union.anon.13 = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.transaction_stats_s = type { i64, i64, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.jbd2_revoke_table_s = type { i32, i32, ptr }
%struct.jbd2_journal_handle = type { %union.anon.15, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%union.anon.15 = type { ptr }
%struct.transaction_s = type { ptr, i32, i32, i64, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i64, i64, i64, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i64, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i64, i32, i32, i32 }
%struct.buffer_head = type { i64, ptr, %union.anon.16, i64, i64, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%union.anon.16 = type { ptr }
%struct.jbd2_revoke_record_s = type { %struct.list_head, i32, i64 }
%struct.journal_head = type { ptr, %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jbd2_journal_revoke_header_s = type { %struct.journal_header_s, i32 }
%struct.journal_header_s = type { i32, i32, i32 }
%struct.journal_superblock_s = type { %struct.journal_header_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i8, [3 x i8], i32, i32, [40 x i32], i32, [768 x i8] }

@jbd2_revoke_record_cache = internal global ptr null, align 8, !dbg !0
@jbd2_revoke_table_cache = internal global ptr null, align 8, !dbg !5426
@.str = private unnamed_addr constant [17 x i8] c"fs/jbd2/revoke.c\00", align 1, !dbg !5388
@.str.1 = private unnamed_addr constant [21 x i8] c"jbd2_revoke_record_s\00", align 1, !dbg !5393
@.str.2 = private unnamed_addr constant [46 x i8] c"\010JBD2: failed to create revoke_record cache\0A\00", align 1, !dbg !5398
@.str.3 = private unnamed_addr constant [20 x i8] c"jbd2_revoke_table_s\00", align 1, !dbg !5403
@.str.4 = private unnamed_addr constant [45 x i8] c"\010JBD2: failed to create revoke_table cache\0A\00", align 1, !dbg !5406
@.str.5 = private unnamed_addr constant [36 x i8] c"\013JBD2 unexpected failure: %s: %s;\0A\00", align 1, !dbg !5411
@__func__.jbd2_journal_revoke = private unnamed_addr constant [20 x i8] c"jbd2_journal_revoke\00", align 1, !dbg !5416
@.str.6 = private unnamed_addr constant [20 x i8] c"!buffer_revoked(bh)\00", align 1, !dbg !5419
@.str.7 = private unnamed_addr constant [29 x i8] c"\013inconsistent data on disk\0A\00", align 1, !dbg !5421
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5428
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !5430
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/jbd2.h\00", align 1, !dbg !5434
@llvm.compiler.used = appending global [1 x ptr] [ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @jbd2_journal_destroy_revoke_record_cache() #0 align 16 !dbg !5445 {
entry:
  %0 = load ptr, ptr @jbd2_revoke_record_cache, align 8, !dbg !5446
  call void @kmem_cache_destroy(ptr noundef %0) #18, !dbg !5447
  store ptr null, ptr @jbd2_revoke_record_cache, align 8, !dbg !5448
  ret void, !dbg !5449
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5450 dso_local void @kmem_cache_destroy(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @jbd2_journal_destroy_revoke_table_cache() #0 align 16 !dbg !5453 {
entry:
  %0 = load ptr, ptr @jbd2_revoke_table_cache, align 8, !dbg !5454
  call void @kmem_cache_destroy(ptr noundef %0) #18, !dbg !5455
  store ptr null, ptr @jbd2_revoke_table_cache, align 8, !dbg !5456
  ret void, !dbg !5457
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @jbd2_journal_init_revoke_record_cache() #2 section ".init.text" align 16 !dbg !5458 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca i32, align 4
  br label %do.body, !dbg !5459

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @jbd2_revoke_record_cache, align 8, !dbg !5460
  %tobool = icmp ne ptr %0, null, !dbg !5460
  %lnot = xor i1 %tobool, true, !dbg !5460
  %lnot1 = xor i1 %lnot, true, !dbg !5460
  %lnot2 = xor i1 %lnot1, true, !dbg !5460
  %lnot3 = xor i1 %lnot2, true, !dbg !5460
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5460
  %conv = sext i32 %lnot.ext to i64, !dbg !5460
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5460
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5460
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5463

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !5460

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !5464

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !5466

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !5464

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 195, i32 0, i64 12) #19, !dbg !5468, !srcloc !5470
  br label %do.end8, !dbg !5468

do.end8:                                          ; preds = %do.body7
  unreachable, !dbg !5464

do.end9:                                          ; No predecessors!
  br label %if.end, !dbg !5464

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.end10, !dbg !5463

do.end10:                                         ; preds = %if.end
  %call = call ptr @kmem_cache_create(ptr noundef @.str.1, i32 noundef 32, i32 noundef 8, i32 noundef 139264, ptr noundef null) #18, !dbg !5471
  store ptr %call, ptr @jbd2_revoke_record_cache, align 8, !dbg !5472
  %1 = load ptr, ptr @jbd2_revoke_record_cache, align 8, !dbg !5473
  %tobool11 = icmp ne ptr %1, null, !dbg !5473
  br i1 %tobool11, label %if.end16, label %if.then12, !dbg !5475

if.then12:                                        ; preds = %do.end10
  br label %do.body13, !dbg !5476

do.body13:                                        ; preds = %if.then12
  br label %do.end14, !dbg !5479

do.end14:                                         ; preds = %do.body13
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #20, !dbg !5476
  store i32 %call15, ptr %tmp, align 4, !dbg !5479
  %2 = load i32, ptr %tmp, align 4, !dbg !5476
  store i32 -12, ptr %retval, align 4, !dbg !5481
  br label %return, !dbg !5481

if.end16:                                         ; preds = %do.end10
  store i32 0, ptr %retval, align 4, !dbg !5482
  br label %return, !dbg !5482

return:                                           ; preds = %if.end16, %do.end14
  %3 = load i32, ptr %retval, align 4, !dbg !5483
  ret i32 %3, !dbg !5483
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5484 dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5487 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @jbd2_journal_init_revoke_table_cache() #2 section ".init.text" align 16 !dbg !5491 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca i32, align 4
  br label %do.body, !dbg !5492

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @jbd2_revoke_table_cache, align 8, !dbg !5493
  %tobool = icmp ne ptr %0, null, !dbg !5493
  %lnot = xor i1 %tobool, true, !dbg !5493
  %lnot1 = xor i1 %lnot, true, !dbg !5493
  %lnot2 = xor i1 %lnot1, true, !dbg !5493
  %lnot3 = xor i1 %lnot2, true, !dbg !5493
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5493
  %conv = sext i32 %lnot.ext to i64, !dbg !5493
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5493
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5493
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5496

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !5493

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !5497

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !5499

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !5497

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 208, i32 0, i64 12) #19, !dbg !5501, !srcloc !5503
  br label %do.end8, !dbg !5501

do.end8:                                          ; preds = %do.body7
  unreachable, !dbg !5497

do.end9:                                          ; No predecessors!
  br label %if.end, !dbg !5497

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.end10, !dbg !5496

do.end10:                                         ; preds = %if.end
  %call = call ptr @kmem_cache_create(ptr noundef @.str.3, i32 noundef 16, i32 noundef 8, i32 noundef 131072, ptr noundef null) #18, !dbg !5504
  store ptr %call, ptr @jbd2_revoke_table_cache, align 8, !dbg !5505
  %1 = load ptr, ptr @jbd2_revoke_table_cache, align 8, !dbg !5506
  %tobool11 = icmp ne ptr %1, null, !dbg !5506
  br i1 %tobool11, label %if.end16, label %if.then12, !dbg !5508

if.then12:                                        ; preds = %do.end10
  br label %do.body13, !dbg !5509

do.body13:                                        ; preds = %if.then12
  br label %do.end14, !dbg !5512

do.end14:                                         ; preds = %do.body13
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #20, !dbg !5509
  store i32 %call15, ptr %tmp, align 4, !dbg !5512
  %2 = load i32, ptr %tmp, align 4, !dbg !5509
  store i32 -12, ptr %retval, align 4, !dbg !5514
  br label %return, !dbg !5514

if.end16:                                         ; preds = %do.end10
  store i32 0, ptr %retval, align 4, !dbg !5515
  br label %return, !dbg !5515

return:                                           ; preds = %if.end16, %do.end14
  %3 = load i32, ptr %retval, align 4, !dbg !5516
  ret i32 %3, !dbg !5516
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @jbd2_journal_init_revoke(ptr noundef %journal, i32 noundef %hash_size) #0 align 16 !dbg !5517 {
entry:
  %retval = alloca i32, align 4
  %journal.addr = alloca ptr, align 8
  %hash_size.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %journal, ptr %journal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %journal.addr, metadata !5521, metadata !DIExpression()), !dbg !5525
  store i32 %hash_size, ptr %hash_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash_size.addr, metadata !5522, metadata !DIExpression()), !dbg !5526
  br label %do.body, !dbg !5527

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %journal.addr, align 8, !dbg !5528
  %j_revoke_table = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 53, !dbg !5528
  %arrayidx = getelementptr [2 x ptr], ptr %j_revoke_table, i64 0, i64 0, !dbg !5528
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !5528
  %cmp = icmp eq ptr %1, null, !dbg !5528
  %lnot = xor i1 %cmp, true, !dbg !5528
  %lnot1 = xor i1 %lnot, true, !dbg !5528
  %lnot2 = xor i1 %lnot1, true, !dbg !5528
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5528
  %conv = sext i32 %lnot.ext to i64, !dbg !5528
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5528
  %tobool = icmp ne i64 %expval, 0, !dbg !5528
  br i1 %tobool, label %if.then, label %if.end, !dbg !5531

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !5528

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !5532

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !5534

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5532

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 265, i32 0, i64 12) #19, !dbg !5536, !srcloc !5538
  br label %do.end6, !dbg !5536

do.end6:                                          ; preds = %do.body5
  unreachable, !dbg !5532

do.end7:                                          ; No predecessors!
  br label %if.end, !dbg !5532

if.end:                                           ; preds = %do.end7, %do.body
  br label %do.end8, !dbg !5531

do.end8:                                          ; preds = %if.end
  br label %do.body9, !dbg !5539

do.body9:                                         ; preds = %do.end8
  %2 = load i32, ptr %hash_size.addr, align 4, !dbg !5540
  %conv10 = sext i32 %2 to i64, !dbg !5540
  %call = call zeroext i1 @is_power_of_2(i64 noundef %conv10) #21, !dbg !5540
  %lnot11 = xor i1 %call, true, !dbg !5540
  %lnot13 = xor i1 %lnot11, true, !dbg !5540
  %lnot15 = xor i1 %lnot13, true, !dbg !5540
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !5540
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !5540
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !5540
  %tobool19 = icmp ne i64 %expval18, 0, !dbg !5540
  br i1 %tobool19, label %if.then20, label %if.end27, !dbg !5543

if.then20:                                        ; preds = %do.body9
  br label %do.body21, !dbg !5540

do.body21:                                        ; preds = %if.then20
  br label %do.body22, !dbg !5544

do.body22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !5546

do.end23:                                         ; preds = %do.body22
  br label %do.body24, !dbg !5544

do.body24:                                        ; preds = %do.end23
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 266, i32 0, i64 12) #19, !dbg !5548, !srcloc !5550
  br label %do.end25, !dbg !5548

do.end25:                                         ; preds = %do.body24
  unreachable, !dbg !5544

do.end26:                                         ; No predecessors!
  br label %if.end27, !dbg !5544

if.end27:                                         ; preds = %do.end26, %do.body9
  br label %do.end28, !dbg !5543

do.end28:                                         ; preds = %if.end27
  %3 = load i32, ptr %hash_size.addr, align 4, !dbg !5551
  %call29 = call ptr @jbd2_journal_init_revoke_table(i32 noundef %3) #18, !dbg !5552
  %4 = load ptr, ptr %journal.addr, align 8, !dbg !5553
  %j_revoke_table30 = getelementptr inbounds %struct.journal_s, ptr %4, i32 0, i32 53, !dbg !5554
  %arrayidx31 = getelementptr [2 x ptr], ptr %j_revoke_table30, i64 0, i64 0, !dbg !5553
  store ptr %call29, ptr %arrayidx31, align 8, !dbg !5555
  %5 = load ptr, ptr %journal.addr, align 8, !dbg !5556
  %j_revoke_table32 = getelementptr inbounds %struct.journal_s, ptr %5, i32 0, i32 53, !dbg !5558
  %arrayidx33 = getelementptr [2 x ptr], ptr %j_revoke_table32, i64 0, i64 0, !dbg !5556
  %6 = load ptr, ptr %arrayidx33, align 8, !dbg !5556
  %tobool34 = icmp ne ptr %6, null, !dbg !5556
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !5559

if.then35:                                        ; preds = %do.end28
  br label %fail0, !dbg !5560

if.end36:                                         ; preds = %do.end28
  %7 = load i32, ptr %hash_size.addr, align 4, !dbg !5561
  %call37 = call ptr @jbd2_journal_init_revoke_table(i32 noundef %7) #18, !dbg !5562
  %8 = load ptr, ptr %journal.addr, align 8, !dbg !5563
  %j_revoke_table38 = getelementptr inbounds %struct.journal_s, ptr %8, i32 0, i32 53, !dbg !5564
  %arrayidx39 = getelementptr [2 x ptr], ptr %j_revoke_table38, i64 0, i64 1, !dbg !5563
  store ptr %call37, ptr %arrayidx39, align 8, !dbg !5565
  %9 = load ptr, ptr %journal.addr, align 8, !dbg !5566
  %j_revoke_table40 = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 53, !dbg !5568
  %arrayidx41 = getelementptr [2 x ptr], ptr %j_revoke_table40, i64 0, i64 1, !dbg !5566
  %10 = load ptr, ptr %arrayidx41, align 8, !dbg !5566
  %tobool42 = icmp ne ptr %10, null, !dbg !5566
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !5569

if.then43:                                        ; preds = %if.end36
  br label %fail1, !dbg !5570

if.end44:                                         ; preds = %if.end36
  %11 = load ptr, ptr %journal.addr, align 8, !dbg !5571
  %j_revoke_table45 = getelementptr inbounds %struct.journal_s, ptr %11, i32 0, i32 53, !dbg !5572
  %arrayidx46 = getelementptr [2 x ptr], ptr %j_revoke_table45, i64 0, i64 1, !dbg !5571
  %12 = load ptr, ptr %arrayidx46, align 8, !dbg !5571
  %13 = load ptr, ptr %journal.addr, align 8, !dbg !5573
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %13, i32 0, i32 52, !dbg !5574
  store ptr %12, ptr %j_revoke, align 8, !dbg !5575
  br label %do.body47, !dbg !5576

do.body47:                                        ; preds = %if.end44
  %14 = load ptr, ptr %journal.addr, align 8, !dbg !5577
  %j_revoke_lock = getelementptr inbounds %struct.journal_s, ptr %14, i32 0, i32 51, !dbg !5577
  %call48 = call ptr @spinlock_check(ptr noundef %j_revoke_lock) #18, !dbg !5577
  %15 = load ptr, ptr %journal.addr, align 8, !dbg !5577
  %j_revoke_lock49 = getelementptr inbounds %struct.journal_s, ptr %15, i32 0, i32 51, !dbg !5577
  %16 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5577
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %16, i32 0, i32 0, !dbg !5577
  %17 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5577
  %counter = getelementptr inbounds %struct.atomic_t, ptr %17, i32 0, i32 0, !dbg !5577
  store i32 0, ptr %counter, align 4, !dbg !5577
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %j_revoke_lock49, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5577
  br label %do.end50, !dbg !5577

do.end50:                                         ; preds = %do.body47
  store i32 0, ptr %retval, align 4, !dbg !5579
  br label %return, !dbg !5579

fail1:                                            ; preds = %if.then43
  call void @llvm.dbg.label(metadata !5523), !dbg !5580
  %18 = load ptr, ptr %journal.addr, align 8, !dbg !5581
  %j_revoke_table51 = getelementptr inbounds %struct.journal_s, ptr %18, i32 0, i32 53, !dbg !5582
  %arrayidx52 = getelementptr [2 x ptr], ptr %j_revoke_table51, i64 0, i64 0, !dbg !5581
  %19 = load ptr, ptr %arrayidx52, align 8, !dbg !5581
  call void @jbd2_journal_destroy_revoke_table(ptr noundef %19) #18, !dbg !5583
  %20 = load ptr, ptr %journal.addr, align 8, !dbg !5584
  %j_revoke_table53 = getelementptr inbounds %struct.journal_s, ptr %20, i32 0, i32 53, !dbg !5585
  %arrayidx54 = getelementptr [2 x ptr], ptr %j_revoke_table53, i64 0, i64 0, !dbg !5584
  store ptr null, ptr %arrayidx54, align 8, !dbg !5586
  br label %fail0, !dbg !5584

fail0:                                            ; preds = %fail1, %if.then35
  call void @llvm.dbg.label(metadata !5524), !dbg !5587
  store i32 -12, ptr %retval, align 4, !dbg !5588
  br label %return, !dbg !5588

return:                                           ; preds = %fail0, %do.end50
  %21 = load i32, ptr %retval, align 4, !dbg !5589
  ret i32 %21, !dbg !5589
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #6 align 16 !dbg !5590 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5595, metadata !DIExpression()), !dbg !5596
  %0 = load i64, ptr %n.addr, align 8, !dbg !5597
  %cmp = icmp ne i64 %0, 0, !dbg !5598
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5599

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !5600
  %2 = load i64, ptr %n.addr, align 8, !dbg !5601
  %sub = sub i64 %2, 1, !dbg !5602
  %and = and i64 %1, %sub, !dbg !5603
  %cmp1 = icmp eq i64 %and, 0, !dbg !5604
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !5605
  ret i1 %3, !dbg !5606
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @jbd2_journal_init_revoke_table(i32 noundef %hash_size) #0 align 16 !dbg !5607 {
entry:
  %hash_size.addr = alloca i32, align 4
  %shift = alloca i32, align 4
  %tmp = alloca i32, align 4
  %table = alloca ptr, align 8
  store i32 %hash_size, ptr %hash_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash_size.addr, metadata !5611, metadata !DIExpression()), !dbg !5617
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #19, !dbg !5618
  call void @llvm.dbg.declare(metadata ptr %shift, metadata !5612, metadata !DIExpression()), !dbg !5619
  store i32 0, ptr %shift, align 4, !dbg !5619
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #19, !dbg !5620
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5613, metadata !DIExpression()), !dbg !5621
  %0 = load i32, ptr %hash_size.addr, align 4, !dbg !5622
  store i32 %0, ptr %tmp, align 4, !dbg !5621
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #19, !dbg !5623
  call void @llvm.dbg.declare(metadata ptr %table, metadata !5614, metadata !DIExpression()), !dbg !5624
  %1 = load ptr, ptr @jbd2_revoke_table_cache, align 8, !dbg !5625
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3264) #18, !dbg !5626
  store ptr %call, ptr %table, align 8, !dbg !5627
  %2 = load ptr, ptr %table, align 8, !dbg !5628
  %tobool = icmp ne ptr %2, null, !dbg !5628
  br i1 %tobool, label %if.end, label %if.then, !dbg !5630

if.then:                                          ; preds = %entry
  br label %out, !dbg !5631

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !5632

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, ptr %tmp, align 4, !dbg !5633
  %shr = ashr i32 %3, 1, !dbg !5633
  store i32 %shr, ptr %tmp, align 4, !dbg !5633
  %conv = sext i32 %shr to i64, !dbg !5634
  %cmp = icmp ne i64 %conv, 0, !dbg !5635
  br i1 %cmp, label %while.body, label %while.end, !dbg !5632

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %shift, align 4, !dbg !5636
  %inc = add i32 %4, 1, !dbg !5636
  store i32 %inc, ptr %shift, align 4, !dbg !5636
  br label %while.cond, !dbg !5632, !llvm.loop !5637

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %hash_size.addr, align 4, !dbg !5640
  %6 = load ptr, ptr %table, align 8, !dbg !5641
  %hash_size2 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %6, i32 0, i32 0, !dbg !5642
  store i32 %5, ptr %hash_size2, align 8, !dbg !5643
  %7 = load i32, ptr %shift, align 4, !dbg !5644
  %8 = load ptr, ptr %table, align 8, !dbg !5645
  %hash_shift = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %8, i32 0, i32 1, !dbg !5646
  store i32 %7, ptr %hash_shift, align 4, !dbg !5647
  %9 = load i32, ptr %hash_size.addr, align 4, !dbg !5648
  %conv3 = sext i32 %9 to i64, !dbg !5648
  %call4 = call noalias ptr @kmalloc_array(i64 noundef %conv3, i64 noundef 16, i32 noundef 3264) #22, !dbg !5649
  %10 = load ptr, ptr %table, align 8, !dbg !5650
  %hash_table = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %10, i32 0, i32 2, !dbg !5651
  store ptr %call4, ptr %hash_table, align 8, !dbg !5652
  %11 = load ptr, ptr %table, align 8, !dbg !5653
  %hash_table5 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %11, i32 0, i32 2, !dbg !5655
  %12 = load ptr, ptr %hash_table5, align 8, !dbg !5655
  %tobool6 = icmp ne ptr %12, null, !dbg !5653
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5656

if.then7:                                         ; preds = %while.end
  %13 = load ptr, ptr @jbd2_revoke_table_cache, align 8, !dbg !5657
  %14 = load ptr, ptr %table, align 8, !dbg !5659
  call void @kmem_cache_free(ptr noundef %13, ptr noundef %14) #18, !dbg !5660
  store ptr null, ptr %table, align 8, !dbg !5661
  br label %out, !dbg !5662

if.end8:                                          ; preds = %while.end
  store i32 0, ptr %tmp, align 4, !dbg !5663
  br label %for.cond, !dbg !5665

for.cond:                                         ; preds = %for.inc, %if.end8
  %15 = load i32, ptr %tmp, align 4, !dbg !5666
  %16 = load i32, ptr %hash_size.addr, align 4, !dbg !5668
  %cmp9 = icmp slt i32 %15, %16, !dbg !5669
  br i1 %cmp9, label %for.body, label %for.end, !dbg !5670

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %table, align 8, !dbg !5671
  %hash_table11 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %17, i32 0, i32 2, !dbg !5672
  %18 = load ptr, ptr %hash_table11, align 8, !dbg !5672
  %19 = load i32, ptr %tmp, align 4, !dbg !5673
  %idxprom = sext i32 %19 to i64, !dbg !5671
  %arrayidx = getelementptr %struct.list_head, ptr %18, i64 %idxprom, !dbg !5671
  call void @INIT_LIST_HEAD(ptr noundef %arrayidx) #18, !dbg !5674
  br label %for.inc, !dbg !5674

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %tmp, align 4, !dbg !5675
  %inc12 = add i32 %20, 1, !dbg !5675
  store i32 %inc12, ptr %tmp, align 4, !dbg !5675
  br label %for.cond, !dbg !5676, !llvm.loop !5677

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !5678

out:                                              ; preds = %for.end, %if.then7, %if.then
  call void @llvm.dbg.label(metadata !5615), !dbg !5679
  %21 = load ptr, ptr %table, align 8, !dbg !5680
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #19, !dbg !5681
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #19, !dbg !5681
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #19, !dbg !5681
  ret ptr %21, !dbg !5682
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #7 align 16 !dbg !5683 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5689, metadata !DIExpression()), !dbg !5690
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5691
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5692
  ret ptr %1, !dbg !5693
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @jbd2_journal_destroy_revoke_table(ptr noundef %table) #0 align 16 !dbg !5694 {
entry:
  %table.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %hash_list = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !5698, metadata !DIExpression()), !dbg !5701
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !5702
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5699, metadata !DIExpression()), !dbg !5703
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash_list) #19, !dbg !5704
  call void @llvm.dbg.declare(metadata ptr %hash_list, metadata !5700, metadata !DIExpression()), !dbg !5705
  store i32 0, ptr %i, align 4, !dbg !5706
  br label %for.cond, !dbg !5708

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5709
  %1 = load ptr, ptr %table.addr, align 8, !dbg !5711
  %hash_size = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %1, i32 0, i32 0, !dbg !5712
  %2 = load i32, ptr %hash_size, align 8, !dbg !5712
  %cmp = icmp slt i32 %0, %2, !dbg !5713
  br i1 %cmp, label %for.body, label %for.end, !dbg !5714

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %table.addr, align 8, !dbg !5715
  %hash_table = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %3, i32 0, i32 2, !dbg !5717
  %4 = load ptr, ptr %hash_table, align 8, !dbg !5717
  %5 = load i32, ptr %i, align 4, !dbg !5718
  %idxprom = sext i32 %5 to i64, !dbg !5715
  %arrayidx = getelementptr %struct.list_head, ptr %4, i64 %idxprom, !dbg !5715
  store ptr %arrayidx, ptr %hash_list, align 8, !dbg !5719
  br label %do.body, !dbg !5720

do.body:                                          ; preds = %for.body
  %6 = load ptr, ptr %hash_list, align 8, !dbg !5721
  %call = call i32 @list_empty(ptr noundef %6) #18, !dbg !5721
  %tobool = icmp ne i32 %call, 0, !dbg !5721
  %lnot = xor i1 %tobool, true, !dbg !5721
  %lnot1 = xor i1 %lnot, true, !dbg !5721
  %lnot2 = xor i1 %lnot1, true, !dbg !5721
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5721
  %conv = sext i32 %lnot.ext to i64, !dbg !5721
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5721
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5721
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5724

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !5721

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !5725

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !5727

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !5727

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !5725

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 255, i32 0, i64 12) #19, !dbg !5729, !srcloc !5731
  br label %do.cond7, !dbg !5729

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5729

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !5725

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !5725

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !5725

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !5724

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !5724

do.end12:                                         ; preds = %do.cond11
  br label %for.inc, !dbg !5732

for.inc:                                          ; preds = %do.end12
  %7 = load i32, ptr %i, align 4, !dbg !5733
  %inc = add i32 %7, 1, !dbg !5733
  store i32 %inc, ptr %i, align 4, !dbg !5733
  br label %for.cond, !dbg !5734, !llvm.loop !5735

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %table.addr, align 8, !dbg !5737
  %hash_table13 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %8, i32 0, i32 2, !dbg !5738
  %9 = load ptr, ptr %hash_table13, align 8, !dbg !5738
  call void @kfree(ptr noundef %9) #18, !dbg !5739
  %10 = load ptr, ptr @jbd2_revoke_table_cache, align 8, !dbg !5740
  %11 = load ptr, ptr %table.addr, align 8, !dbg !5741
  call void @kmem_cache_free(ptr noundef %10, ptr noundef %11) #18, !dbg !5742
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash_list) #19, !dbg !5743
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !5743
  ret void, !dbg !5743
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @jbd2_journal_destroy_revoke(ptr noundef %journal) #0 align 16 !dbg !5744 {
entry:
  %journal.addr = alloca ptr, align 8
  store ptr %journal, ptr %journal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %journal.addr, metadata !5748, metadata !DIExpression()), !dbg !5749
  %0 = load ptr, ptr %journal.addr, align 8, !dbg !5750
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 52, !dbg !5751
  store ptr null, ptr %j_revoke, align 8, !dbg !5752
  %1 = load ptr, ptr %journal.addr, align 8, !dbg !5753
  %j_revoke_table = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 53, !dbg !5755
  %arrayidx = getelementptr [2 x ptr], ptr %j_revoke_table, i64 0, i64 0, !dbg !5753
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !5753
  %tobool = icmp ne ptr %2, null, !dbg !5753
  br i1 %tobool, label %if.then, label %if.end, !dbg !5756

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %journal.addr, align 8, !dbg !5757
  %j_revoke_table1 = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 53, !dbg !5758
  %arrayidx2 = getelementptr [2 x ptr], ptr %j_revoke_table1, i64 0, i64 0, !dbg !5757
  %4 = load ptr, ptr %arrayidx2, align 8, !dbg !5757
  call void @jbd2_journal_destroy_revoke_table(ptr noundef %4) #18, !dbg !5759
  br label %if.end, !dbg !5759

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %journal.addr, align 8, !dbg !5760
  %j_revoke_table3 = getelementptr inbounds %struct.journal_s, ptr %5, i32 0, i32 53, !dbg !5762
  %arrayidx4 = getelementptr [2 x ptr], ptr %j_revoke_table3, i64 0, i64 1, !dbg !5760
  %6 = load ptr, ptr %arrayidx4, align 8, !dbg !5760
  %tobool5 = icmp ne ptr %6, null, !dbg !5760
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !5763

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %journal.addr, align 8, !dbg !5764
  %j_revoke_table7 = getelementptr inbounds %struct.journal_s, ptr %7, i32 0, i32 53, !dbg !5765
  %arrayidx8 = getelementptr [2 x ptr], ptr %j_revoke_table7, i64 0, i64 1, !dbg !5764
  %8 = load ptr, ptr %arrayidx8, align 8, !dbg !5764
  call void @jbd2_journal_destroy_revoke_table(ptr noundef %8) #18, !dbg !5766
  br label %if.end9, !dbg !5766

if.end9:                                          ; preds = %if.then6, %if.end
  ret void, !dbg !5767
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @jbd2_journal_revoke(ptr noundef %handle, i64 noundef %blocknr, ptr noundef %bh_in) #0 align 16 !dbg !5768 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %blocknr.addr = alloca i64, align 8
  %bh_in.addr = alloca ptr, align 8
  %bh = alloca ptr, align 8
  %journal = alloca ptr, align 8
  %bdev = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %val = alloca i32, align 4
  %tmp74 = alloca i32, align 4
  %tmp79 = alloca i32, align 4
  %tmp82 = alloca i32, align 4
  %tmp101 = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !5796, metadata !DIExpression()), !dbg !5814
  store i64 %blocknr, ptr %blocknr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blocknr.addr, metadata !5797, metadata !DIExpression()), !dbg !5815
  store ptr %bh_in, ptr %bh_in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh_in.addr, metadata !5798, metadata !DIExpression()), !dbg !5816
  call void @llvm.lifetime.start.p0(i64 8, ptr %bh) #19, !dbg !5817
  call void @llvm.dbg.declare(metadata ptr %bh, metadata !5799, metadata !DIExpression()), !dbg !5818
  store ptr null, ptr %bh, align 8, !dbg !5818
  call void @llvm.lifetime.start.p0(i64 8, ptr %journal) #19, !dbg !5819
  call void @llvm.dbg.declare(metadata ptr %journal, metadata !5800, metadata !DIExpression()), !dbg !5820
  call void @llvm.lifetime.start.p0(i64 8, ptr %bdev) #19, !dbg !5821
  call void @llvm.dbg.declare(metadata ptr %bdev, metadata !5801, metadata !DIExpression()), !dbg !5822
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #19, !dbg !5823
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5802, metadata !DIExpression()), !dbg !5824
  br label %do.body, !dbg !5825

do.body:                                          ; preds = %entry
  call void @might_resched() #18, !dbg !5826
  br label %do.cond, !dbg !5826

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5826

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %bh_in.addr, align 8, !dbg !5828
  %tobool = icmp ne ptr %0, null, !dbg !5828
  br i1 %tobool, label %if.then, label %if.end, !dbg !5830

if.then:                                          ; preds = %do.end
  br label %do.body1, !dbg !5831

do.body1:                                         ; preds = %if.then
  br label %do.cond2, !dbg !5832

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5832

do.end3:                                          ; preds = %do.cond2
  br label %if.end, !dbg !5832

if.end:                                           ; preds = %do.end3, %do.end
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !5834
  %2 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %1, i32 0, i32 0, !dbg !5835
  %3 = load ptr, ptr %2, align 8, !dbg !5835
  %t_journal = getelementptr inbounds %struct.transaction_s, ptr %3, i32 0, i32 0, !dbg !5836
  %4 = load ptr, ptr %t_journal, align 8, !dbg !5836
  store ptr %4, ptr %journal, align 8, !dbg !5837
  %5 = load ptr, ptr %journal, align 8, !dbg !5838
  %call = call i32 @jbd2_journal_set_features(ptr noundef %5, i64 noundef 0, i64 noundef 0, i64 noundef 1) #18, !dbg !5840
  %tobool4 = icmp ne i32 %call, 0, !dbg !5840
  br i1 %tobool4, label %if.end18, label %if.then5, !dbg !5841

if.then5:                                         ; preds = %if.end
  br label %do.body6, !dbg !5842

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !5844

do.body7:                                         ; preds = %do.body6
  br label %do.body8, !dbg !5847

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !5849

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5849

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !5847

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 340, i32 0, i64 12) #19, !dbg !5851, !srcloc !5853
  br label %do.cond12, !dbg !5851

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5851

do.end13:                                         ; preds = %do.cond12
  unreachable, !dbg !5847

do.cond14:                                        ; No predecessors!
  br label %do.end15, !dbg !5847

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !5854

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5854

do.end17:                                         ; preds = %do.cond16
  store i32 -22, ptr %retval, align 4, !dbg !5855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5855

if.end18:                                         ; preds = %if.end
  %6 = load ptr, ptr %journal, align 8, !dbg !5856
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %6, i32 0, i32 35, !dbg !5857
  %7 = load ptr, ptr %j_fs_dev, align 8, !dbg !5857
  store ptr %7, ptr %bdev, align 8, !dbg !5858
  %8 = load ptr, ptr %bh_in.addr, align 8, !dbg !5859
  store ptr %8, ptr %bh, align 8, !dbg !5860
  %9 = load ptr, ptr %bh, align 8, !dbg !5861
  %tobool19 = icmp ne ptr %9, null, !dbg !5861
  br i1 %tobool19, label %if.end28, label %if.then20, !dbg !5863

if.then20:                                        ; preds = %if.end18
  %10 = load ptr, ptr %bdev, align 8, !dbg !5864
  %11 = load i64, ptr %blocknr.addr, align 8, !dbg !5866
  %12 = load ptr, ptr %journal, align 8, !dbg !5867
  %j_blocksize = getelementptr inbounds %struct.journal_s, ptr %12, i32 0, i32 32, !dbg !5868
  %13 = load i32, ptr %j_blocksize, align 8, !dbg !5868
  %call21 = call ptr @__find_get_block(ptr noundef %10, i64 noundef %11, i32 noundef %13) #18, !dbg !5869
  store ptr %call21, ptr %bh, align 8, !dbg !5870
  %14 = load ptr, ptr %bh, align 8, !dbg !5871
  %tobool22 = icmp ne ptr %14, null, !dbg !5871
  br i1 %tobool22, label %if.then23, label %if.end27, !dbg !5873

if.then23:                                        ; preds = %if.then20
  br label %do.body24, !dbg !5874

do.body24:                                        ; preds = %if.then23
  br label %do.cond25, !dbg !5875

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !5875

do.end26:                                         ; preds = %do.cond25
  br label %if.end27, !dbg !5875

if.end27:                                         ; preds = %do.end26, %if.then20
  br label %if.end28, !dbg !5877

if.end28:                                         ; preds = %if.end27, %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5878
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5803, metadata !DIExpression()), !dbg !5878
  %15 = load ptr, ptr %handle.addr, align 8, !dbg !5878
  %h_revoke_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %15, i32 0, i32 3, !dbg !5878
  %16 = load i32, ptr %h_revoke_credits, align 4, !dbg !5878
  %cmp = icmp sle i32 %16, 0, !dbg !5878
  %lnot = xor i1 %cmp, true, !dbg !5878
  %lnot29 = xor i1 %lnot, true, !dbg !5878
  %lnot.ext = zext i1 %lnot29 to i32, !dbg !5878
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5878
  %17 = load i32, ptr %__ret_warn_on, align 4, !dbg !5879
  %tobool30 = icmp ne i32 %17, 0, !dbg !5879
  %lnot31 = xor i1 %tobool30, true, !dbg !5879
  %lnot33 = xor i1 %lnot31, true, !dbg !5879
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !5879
  %conv = sext i32 %lnot.ext34 to i64, !dbg !5879
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5879
  %tobool35 = icmp ne i64 %expval, 0, !dbg !5879
  br i1 %tobool35, label %if.then36, label %if.end49, !dbg !5878

if.then36:                                        ; preds = %if.end28
  br label %do.body37, !dbg !5879

do.body37:                                        ; preds = %if.then36
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !5880
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5806, metadata !DIExpression()), !dbg !5880
  store i32 2307, ptr %__flags, align 4, !dbg !5880
  br label %do.body38, !dbg !5880

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5881

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5881

do.end40:                                         ; preds = %do.cond39
  br label %do.body41, !dbg !5880

do.body41:                                        ; preds = %do.end40
  %18 = load i32, ptr %__flags, align 4, !dbg !5883
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 374, i32 %18, i64 12) #19, !dbg !5883, !srcloc !5885
  br label %do.cond42, !dbg !5883

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !5883

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !5880

do.body44:                                        ; preds = %do.end43
  br label %do.cond45, !dbg !5886

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !5886

do.end46:                                         ; preds = %do.cond45
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !5879
  br label %do.cond47, !dbg !5880

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !5880

do.end48:                                         ; preds = %do.cond47
  br label %if.end49, !dbg !5880

if.end49:                                         ; preds = %do.end48, %if.end28
  %19 = load i32, ptr %__ret_warn_on, align 4, !dbg !5878
  %tobool50 = icmp ne i32 %19, 0, !dbg !5878
  %lnot51 = xor i1 %tobool50, true, !dbg !5878
  %lnot53 = xor i1 %lnot51, true, !dbg !5878
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !5878
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !5878
  %expval56 = call i64 @llvm.expect.i64(i64 %conv55, i64 0), !dbg !5878
  store i64 %expval56, ptr %tmp, align 8, !dbg !5879
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5888
  %20 = load i64, ptr %tmp, align 8, !dbg !5878
  %tobool57 = icmp ne i64 %20, 0, !dbg !5888
  br i1 %tobool57, label %if.then58, label %if.end62, !dbg !5889

if.then58:                                        ; preds = %if.end49
  %21 = load ptr, ptr %bh_in.addr, align 8, !dbg !5890
  %tobool59 = icmp ne ptr %21, null, !dbg !5890
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !5893

if.then60:                                        ; preds = %if.then58
  %22 = load ptr, ptr %bh, align 8, !dbg !5894
  call void @brelse(ptr noundef %22) #18, !dbg !5895
  br label %if.end61, !dbg !5895

if.end61:                                         ; preds = %if.then60, %if.then58
  store i32 -5, ptr %retval, align 4, !dbg !5896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5896

if.end62:                                         ; preds = %if.end49
  %23 = load ptr, ptr %bh, align 8, !dbg !5897
  %tobool63 = icmp ne ptr %23, null, !dbg !5897
  br i1 %tobool63, label %if.then64, label %if.end99, !dbg !5898

if.then64:                                        ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #19, !dbg !5899
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5809, metadata !DIExpression()), !dbg !5899
  %24 = load ptr, ptr %bh, align 8, !dbg !5899
  %call65 = call i32 @buffer_revoked(ptr noundef %24) #18, !dbg !5899
  %tobool66 = icmp ne i32 %call65, 0, !dbg !5899
  %lnot67 = xor i1 %tobool66, true, !dbg !5899
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !5899
  store i32 %lnot.ext68, ptr %val, align 4, !dbg !5899
  %25 = load i32, ptr %val, align 4, !dbg !5900
  %tobool69 = icmp ne i32 %25, 0, !dbg !5900
  br i1 %tobool69, label %if.end81, label %if.then70, !dbg !5899

if.then70:                                        ; preds = %if.then64
  br label %do.body71, !dbg !5902

do.body71:                                        ; preds = %if.then70
  br label %do.cond72, !dbg !5905

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5905

do.end73:                                         ; preds = %do.cond72
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef @__func__.jbd2_journal_revoke, ptr noundef @.str.6) #20, !dbg !5902
  store i32 %call75, ptr %tmp74, align 4, !dbg !5905
  %26 = load i32, ptr %tmp74, align 4, !dbg !5902
  br label %do.body76, !dbg !5907

do.body76:                                        ; preds = %do.end73
  br label %do.cond77, !dbg !5909

do.cond77:                                        ; preds = %do.body76
  br label %do.end78, !dbg !5909

do.end78:                                         ; preds = %do.cond77
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #20, !dbg !5907
  store i32 %call80, ptr %tmp79, align 4, !dbg !5909
  %27 = load i32, ptr %tmp79, align 4, !dbg !5907
  br label %if.end81, !dbg !5911

if.end81:                                         ; preds = %do.end78, %if.then64
  %28 = load i32, ptr %val, align 4, !dbg !5899
  store i32 %28, ptr %tmp82, align 4, !dbg !5900
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #19, !dbg !5912
  %29 = load i32, ptr %tmp82, align 4, !dbg !5899
  %tobool83 = icmp ne i32 %29, 0, !dbg !5912
  br i1 %tobool83, label %if.end88, label %if.then84, !dbg !5913

if.then84:                                        ; preds = %if.end81
  %30 = load ptr, ptr %bh_in.addr, align 8, !dbg !5914
  %tobool85 = icmp ne ptr %30, null, !dbg !5914
  br i1 %tobool85, label %if.end87, label %if.then86, !dbg !5917

if.then86:                                        ; preds = %if.then84
  %31 = load ptr, ptr %bh, align 8, !dbg !5918
  call void @brelse(ptr noundef %31) #18, !dbg !5919
  br label %if.end87, !dbg !5919

if.end87:                                         ; preds = %if.then86, %if.then84
  store i32 -5, ptr %retval, align 4, !dbg !5920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5920

if.end88:                                         ; preds = %if.end81
  %32 = load ptr, ptr %bh, align 8, !dbg !5921
  call void @set_buffer_revoked(ptr noundef %32) #18, !dbg !5922
  %33 = load ptr, ptr %bh, align 8, !dbg !5923
  call void @set_buffer_revokevalid(ptr noundef %33) #18, !dbg !5924
  %34 = load ptr, ptr %bh_in.addr, align 8, !dbg !5925
  %tobool89 = icmp ne ptr %34, null, !dbg !5925
  br i1 %tobool89, label %if.then90, label %if.else, !dbg !5927

if.then90:                                        ; preds = %if.end88
  br label %do.body91, !dbg !5928

do.body91:                                        ; preds = %if.then90
  br label %do.cond92, !dbg !5930

do.cond92:                                        ; preds = %do.body91
  br label %do.end93, !dbg !5930

do.end93:                                         ; preds = %do.cond92
  %35 = load ptr, ptr %handle.addr, align 8, !dbg !5932
  %36 = load ptr, ptr %bh_in.addr, align 8, !dbg !5933
  %call94 = call i32 @jbd2_journal_forget(ptr noundef %35, ptr noundef %36) #18, !dbg !5934
  br label %if.end98, !dbg !5935

if.else:                                          ; preds = %if.end88
  br label %do.body95, !dbg !5936

do.body95:                                        ; preds = %if.else
  br label %do.cond96, !dbg !5938

do.cond96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !5938

do.end97:                                         ; preds = %do.cond96
  %37 = load ptr, ptr %bh, align 8, !dbg !5940
  call void @__brelse(ptr noundef %37) #18, !dbg !5941
  br label %if.end98

if.end98:                                         ; preds = %do.end97, %do.end93
  br label %if.end99, !dbg !5942

if.end99:                                         ; preds = %if.end98, %if.end62
  %38 = load ptr, ptr %handle.addr, align 8, !dbg !5943
  %h_revoke_credits100 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %38, i32 0, i32 3, !dbg !5944
  %39 = load i32, ptr %h_revoke_credits100, align 4, !dbg !5945
  %dec = add i32 %39, -1, !dbg !5945
  store i32 %dec, ptr %h_revoke_credits100, align 4, !dbg !5945
  store i32 0, ptr %tmp101, align 4, !dbg !5946
  %40 = load i32, ptr %tmp101, align 4, !dbg !5949
  %41 = load ptr, ptr %journal, align 8, !dbg !5950
  %42 = load i64, ptr %blocknr.addr, align 8, !dbg !5951
  %43 = load ptr, ptr %handle.addr, align 8, !dbg !5952
  %44 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %43, i32 0, i32 0, !dbg !5953
  %45 = load ptr, ptr %44, align 8, !dbg !5953
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %45, i32 0, i32 1, !dbg !5954
  %46 = load i32, ptr %t_tid, align 8, !dbg !5954
  %call102 = call i32 @insert_revoke_hash(ptr noundef %41, i64 noundef %42, i32 noundef %46) #18, !dbg !5955
  store i32 %call102, ptr %err, align 4, !dbg !5956
  br label %do.body103, !dbg !5957

do.body103:                                       ; preds = %if.end99
  br label %do.cond104, !dbg !5958

do.cond104:                                       ; preds = %do.body103
  br label %do.end105, !dbg !5958

do.end105:                                        ; preds = %do.cond104
  %47 = load i32, ptr %err, align 4, !dbg !5960
  store i32 %47, ptr %retval, align 4, !dbg !5961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5961

cleanup:                                          ; preds = %do.end105, %if.end87, %if.end61, %do.end17
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #19, !dbg !5962
  call void @llvm.lifetime.end.p0(i64 8, ptr %bdev) #19, !dbg !5962
  call void @llvm.lifetime.end.p0(i64 8, ptr %journal) #19, !dbg !5962
  call void @llvm.lifetime.end.p0(i64 8, ptr %bh) #19, !dbg !5962
  %48 = load i32, ptr %retval, align 4, !dbg !5962
  ret i32 %48, !dbg !5962
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #7 align 16 !dbg !5432 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5963
  %0 = load ptr, ptr %tmp, align 8, !dbg !5963
  %call = call i32 %0() #18, !dbg !5965
  ret void, !dbg !5966
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5967 dso_local i32 @jbd2_journal_set_features(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5970 dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @brelse(ptr noundef %bh) #10 align 16 !dbg !5973 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !5977, metadata !DIExpression()), !dbg !5978
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !5979
  %tobool = icmp ne ptr %0, null, !dbg !5979
  br i1 %tobool, label %if.then, label %if.end, !dbg !5981

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bh.addr, align 8, !dbg !5982
  call void @__brelse(ptr noundef %1) #18, !dbg !5983
  br label %if.end, !dbg !5983

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5984
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @buffer_revoked(ptr noundef %bh) #7 align 16 !dbg !5985 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !5991, metadata !DIExpression()), !dbg !5992
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !5992
  %b_state = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 0, !dbg !5992
  %1 = ptrtoint ptr %b_state to i64, !dbg !5992
  %cmp = icmp ne i64 %1, 0, !dbg !5992
  %conv = zext i1 %cmp to i32, !dbg !5992
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5992
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !5992

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %bh.addr, align 8, !dbg !5992
  %b_state1 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 0, !dbg !5992
  %4 = ptrtoint ptr %b_state1 to i64, !dbg !5992
  %cmp2 = icmp ne i64 %4, 0, !dbg !5992
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5992

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %bh.addr, align 8, !dbg !5992
  %b_state5 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 0, !dbg !5992
  %6 = load i64, ptr %b_state5, align 8, !dbg !5992
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5992
  br i1 %7, label %cond.true, label %cond.false, !dbg !5992

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %bh.addr, align 8, !dbg !5992
  %b_state6 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 0, !dbg !5992
  %call = call zeroext i1 @const_test_bit(i64 noundef 19, ptr noundef %b_state6) #18, !dbg !5992
  %conv7 = zext i1 %call to i32, !dbg !5992
  br label %cond.end, !dbg !5992

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %bh.addr, align 8, !dbg !5992
  %b_state8 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 0, !dbg !5992
  %call9 = call zeroext i1 @_test_bit(i64 noundef 19, ptr noundef %b_state8) #18, !dbg !5992
  %conv10 = zext i1 %call9 to i32, !dbg !5992
  br label %cond.end, !dbg !5992

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !5992
  ret i32 %cond, !dbg !5992
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_buffer_revoked(ptr noundef %bh) #7 align 16 !dbg !5993 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !5995, metadata !DIExpression()), !dbg !5996
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !5997
  %b_state = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 0, !dbg !5997
  %1 = ptrtoint ptr %b_state to i64, !dbg !5997
  %cmp = icmp ne i64 %1, 0, !dbg !5997
  %conv = zext i1 %cmp to i32, !dbg !5997
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5997
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !5997

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %bh.addr, align 8, !dbg !5997
  %b_state1 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 0, !dbg !5997
  %4 = ptrtoint ptr %b_state1 to i64, !dbg !5997
  %cmp2 = icmp ne i64 %4, 0, !dbg !5997
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5997

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %bh.addr, align 8, !dbg !5997
  %b_state5 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 0, !dbg !5997
  %6 = load i64, ptr %b_state5, align 8, !dbg !5997
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5997
  br i1 %7, label %cond.true, label %cond.false, !dbg !5996

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %bh.addr, align 8, !dbg !5997
  %b_state6 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 0, !dbg !5997
  %call = call zeroext i1 @const_test_bit(i64 noundef 19, ptr noundef %b_state6) #18, !dbg !5997
  br i1 %call, label %if.end, label %if.then, !dbg !5997

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %bh.addr, align 8, !dbg !5997
  %b_state8 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 0, !dbg !5997
  %call9 = call zeroext i1 @_test_bit(i64 noundef 19, ptr noundef %b_state8) #18, !dbg !5997
  br i1 %call9, label %if.end, label %if.then, !dbg !5996

if.then:                                          ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %bh.addr, align 8, !dbg !5997
  %b_state11 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 0, !dbg !5997
  call void @set_bit(i64 noundef 19, ptr noundef %b_state11) #18, !dbg !5997
  br label %if.end, !dbg !5997

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  ret void, !dbg !5996
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_buffer_revokevalid(ptr noundef %bh) #7 align 16 !dbg !5999 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !6001, metadata !DIExpression()), !dbg !6002
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !6003
  %b_state = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 0, !dbg !6003
  %1 = ptrtoint ptr %b_state to i64, !dbg !6003
  %cmp = icmp ne i64 %1, 0, !dbg !6003
  %conv = zext i1 %cmp to i32, !dbg !6003
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !6003
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !6003

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %bh.addr, align 8, !dbg !6003
  %b_state1 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 0, !dbg !6003
  %4 = ptrtoint ptr %b_state1 to i64, !dbg !6003
  %cmp2 = icmp ne i64 %4, 0, !dbg !6003
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !6003

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %bh.addr, align 8, !dbg !6003
  %b_state5 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 0, !dbg !6003
  %6 = load i64, ptr %b_state5, align 8, !dbg !6003
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6003
  br i1 %7, label %cond.true, label %cond.false, !dbg !6002

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %bh.addr, align 8, !dbg !6003
  %b_state6 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 0, !dbg !6003
  %call = call zeroext i1 @const_test_bit(i64 noundef 20, ptr noundef %b_state6) #18, !dbg !6003
  br i1 %call, label %if.end, label %if.then, !dbg !6003

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %bh.addr, align 8, !dbg !6003
  %b_state8 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 0, !dbg !6003
  %call9 = call zeroext i1 @_test_bit(i64 noundef 20, ptr noundef %b_state8) #18, !dbg !6003
  br i1 %call9, label %if.end, label %if.then, !dbg !6002

if.then:                                          ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %bh.addr, align 8, !dbg !6003
  %b_state11 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 0, !dbg !6003
  call void @set_bit(i64 noundef 20, ptr noundef %b_state11) #18, !dbg !6003
  br label %if.end, !dbg !6003

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  ret void, !dbg !6002
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6005 dso_local i32 @jbd2_journal_forget(ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6008 dso_local void @__brelse(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insert_revoke_hash(ptr noundef %journal, i64 noundef %blocknr, i32 noundef %seq) #0 align 16 !dbg !6009 {
entry:
  %retval = alloca i32, align 4
  %journal.addr = alloca ptr, align 8
  %blocknr.addr = alloca i64, align 8
  %seq.addr = alloca i32, align 4
  %hash_list = alloca ptr, align 8
  %record = alloca ptr, align 8
  %gfp_mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %journal, ptr %journal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %journal.addr, metadata !6013, metadata !DIExpression()), !dbg !6019
  store i64 %blocknr, ptr %blocknr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blocknr.addr, metadata !6014, metadata !DIExpression()), !dbg !6020
  store i32 %seq, ptr %seq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !6015, metadata !DIExpression()), !dbg !6021
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash_list) #19, !dbg !6022
  call void @llvm.dbg.declare(metadata ptr %hash_list, metadata !6016, metadata !DIExpression()), !dbg !6023
  call void @llvm.lifetime.start.p0(i64 8, ptr %record) #19, !dbg !6024
  call void @llvm.dbg.declare(metadata ptr %record, metadata !6017, metadata !DIExpression()), !dbg !6025
  call void @llvm.lifetime.start.p0(i64 4, ptr %gfp_mask) #19, !dbg !6026
  call void @llvm.dbg.declare(metadata ptr %gfp_mask, metadata !6018, metadata !DIExpression()), !dbg !6027
  store i32 3136, ptr %gfp_mask, align 4, !dbg !6027
  %0 = load i32, ptr %gfp_mask, align 4, !dbg !6028
  %or = or i32 %0, 32768, !dbg !6028
  store i32 %or, ptr %gfp_mask, align 4, !dbg !6028
  %1 = load ptr, ptr @jbd2_revoke_record_cache, align 8, !dbg !6030
  %2 = load i32, ptr %gfp_mask, align 4, !dbg !6031
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef %2) #18, !dbg !6032
  store ptr %call, ptr %record, align 8, !dbg !6033
  %3 = load ptr, ptr %record, align 8, !dbg !6034
  %tobool = icmp ne ptr %3, null, !dbg !6034
  br i1 %tobool, label %if.end, label %if.then, !dbg !6037

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6038

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %seq.addr, align 4, !dbg !6039
  %5 = load ptr, ptr %record, align 8, !dbg !6040
  %sequence = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %5, i32 0, i32 1, !dbg !6041
  store i32 %4, ptr %sequence, align 8, !dbg !6042
  %6 = load i64, ptr %blocknr.addr, align 8, !dbg !6043
  %7 = load ptr, ptr %record, align 8, !dbg !6044
  %blocknr1 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %7, i32 0, i32 2, !dbg !6045
  store i64 %6, ptr %blocknr1, align 8, !dbg !6046
  %8 = load ptr, ptr %journal.addr, align 8, !dbg !6047
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %8, i32 0, i32 52, !dbg !6048
  %9 = load ptr, ptr %j_revoke, align 8, !dbg !6048
  %hash_table = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %9, i32 0, i32 2, !dbg !6049
  %10 = load ptr, ptr %hash_table, align 8, !dbg !6049
  %11 = load ptr, ptr %journal.addr, align 8, !dbg !6050
  %12 = load i64, ptr %blocknr.addr, align 8, !dbg !6051
  %call2 = call i32 @hash(ptr noundef %11, i64 noundef %12) #18, !dbg !6052
  %idxprom = sext i32 %call2 to i64, !dbg !6047
  %arrayidx = getelementptr %struct.list_head, ptr %10, i64 %idxprom, !dbg !6047
  store ptr %arrayidx, ptr %hash_list, align 8, !dbg !6053
  %13 = load ptr, ptr %journal.addr, align 8, !dbg !6054
  %j_revoke_lock = getelementptr inbounds %struct.journal_s, ptr %13, i32 0, i32 51, !dbg !6055
  call void @spin_lock(ptr noundef %j_revoke_lock) #18, !dbg !6056
  %14 = load ptr, ptr %record, align 8, !dbg !6057
  %hash = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %14, i32 0, i32 0, !dbg !6058
  %15 = load ptr, ptr %hash_list, align 8, !dbg !6059
  call void @list_add(ptr noundef %hash, ptr noundef %15) #18, !dbg !6060
  %16 = load ptr, ptr %journal.addr, align 8, !dbg !6061
  %j_revoke_lock3 = getelementptr inbounds %struct.journal_s, ptr %16, i32 0, i32 51, !dbg !6062
  call void @spin_unlock(ptr noundef %j_revoke_lock3) #18, !dbg !6063
  store i32 0, ptr %retval, align 4, !dbg !6064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6064

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %gfp_mask) #19, !dbg !6065
  call void @llvm.lifetime.end.p0(i64 8, ptr %record) #19, !dbg !6065
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash_list) #19, !dbg !6065
  %17 = load i32, ptr %retval, align 4, !dbg !6065
  ret i32 %17, !dbg !6065
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @jbd2_journal_cancel_revoke(ptr noundef %handle, ptr noundef %jh) #0 align 16 !dbg !6066 {
entry:
  %handle.addr = alloca ptr, align 8
  %jh.addr = alloca ptr, align 8
  %record = alloca ptr, align 8
  %journal = alloca ptr, align 8
  %need_cancel = alloca i32, align 4
  %did_revoke = alloca i32, align 4
  %bh = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %bh2 = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !6070, metadata !DIExpression()), !dbg !6080
  store ptr %jh, ptr %jh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %jh.addr, metadata !6071, metadata !DIExpression()), !dbg !6081
  call void @llvm.lifetime.start.p0(i64 8, ptr %record) #19, !dbg !6082
  call void @llvm.dbg.declare(metadata ptr %record, metadata !6072, metadata !DIExpression()), !dbg !6083
  call void @llvm.lifetime.start.p0(i64 8, ptr %journal) #19, !dbg !6084
  call void @llvm.dbg.declare(metadata ptr %journal, metadata !6073, metadata !DIExpression()), !dbg !6085
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !6086
  %1 = getelementptr inbounds %struct.jbd2_journal_handle, ptr %0, i32 0, i32 0, !dbg !6087
  %2 = load ptr, ptr %1, align 8, !dbg !6087
  %t_journal = getelementptr inbounds %struct.transaction_s, ptr %2, i32 0, i32 0, !dbg !6088
  %3 = load ptr, ptr %t_journal, align 8, !dbg !6088
  store ptr %3, ptr %journal, align 8, !dbg !6085
  call void @llvm.lifetime.start.p0(i64 4, ptr %need_cancel) #19, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %need_cancel, metadata !6074, metadata !DIExpression()), !dbg !6090
  call void @llvm.lifetime.start.p0(i64 4, ptr %did_revoke) #19, !dbg !6091
  call void @llvm.dbg.declare(metadata ptr %did_revoke, metadata !6075, metadata !DIExpression()), !dbg !6092
  store i32 0, ptr %did_revoke, align 4, !dbg !6092
  call void @llvm.lifetime.start.p0(i64 8, ptr %bh) #19, !dbg !6093
  call void @llvm.dbg.declare(metadata ptr %bh, metadata !6076, metadata !DIExpression()), !dbg !6094
  %4 = load ptr, ptr %jh.addr, align 8, !dbg !6095
  %call = call ptr @jh2bh(ptr noundef %4) #18, !dbg !6096
  store ptr %call, ptr %bh, align 8, !dbg !6094
  store i32 0, ptr %tmp, align 4, !dbg !6097
  %5 = load i32, ptr %tmp, align 4, !dbg !6100
  %6 = load ptr, ptr %bh, align 8, !dbg !6101
  %call1 = call i32 @test_set_buffer_revokevalid(ptr noundef %6) #18, !dbg !6103
  %tobool = icmp ne i32 %call1, 0, !dbg !6103
  br i1 %tobool, label %if.then, label %if.else, !dbg !6104

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %bh, align 8, !dbg !6105
  %call2 = call i32 @test_clear_buffer_revoked(ptr noundef %7) #18, !dbg !6107
  store i32 %call2, ptr %need_cancel, align 4, !dbg !6108
  br label %if.end, !dbg !6109

if.else:                                          ; preds = %entry
  store i32 1, ptr %need_cancel, align 4, !dbg !6110
  %8 = load ptr, ptr %bh, align 8, !dbg !6112
  call void @clear_buffer_revoked(ptr noundef %8) #18, !dbg !6113
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, ptr %need_cancel, align 4, !dbg !6114
  %tobool3 = icmp ne i32 %9, 0, !dbg !6114
  br i1 %tobool3, label %if.then4, label %if.end11, !dbg !6116

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %journal, align 8, !dbg !6117
  %11 = load ptr, ptr %bh, align 8, !dbg !6119
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 3, !dbg !6120
  %12 = load i64, ptr %b_blocknr, align 8, !dbg !6120
  %call5 = call ptr @find_revoke_record(ptr noundef %10, i64 noundef %12) #18, !dbg !6121
  store ptr %call5, ptr %record, align 8, !dbg !6122
  %13 = load ptr, ptr %record, align 8, !dbg !6123
  %tobool6 = icmp ne ptr %13, null, !dbg !6123
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !6125

if.then7:                                         ; preds = %if.then4
  store i32 0, ptr %tmp8, align 4, !dbg !6126
  %14 = load i32, ptr %tmp8, align 4, !dbg !6130
  %15 = load ptr, ptr %journal, align 8, !dbg !6131
  %j_revoke_lock = getelementptr inbounds %struct.journal_s, ptr %15, i32 0, i32 51, !dbg !6132
  call void @spin_lock(ptr noundef %j_revoke_lock) #18, !dbg !6133
  %16 = load ptr, ptr %record, align 8, !dbg !6134
  %hash = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %16, i32 0, i32 0, !dbg !6135
  call void @list_del(ptr noundef %hash) #18, !dbg !6136
  %17 = load ptr, ptr %journal, align 8, !dbg !6137
  %j_revoke_lock9 = getelementptr inbounds %struct.journal_s, ptr %17, i32 0, i32 51, !dbg !6138
  call void @spin_unlock(ptr noundef %j_revoke_lock9) #18, !dbg !6139
  %18 = load ptr, ptr @jbd2_revoke_record_cache, align 8, !dbg !6140
  %19 = load ptr, ptr %record, align 8, !dbg !6141
  call void @kmem_cache_free(ptr noundef %18, ptr noundef %19) #18, !dbg !6142
  store i32 1, ptr %did_revoke, align 4, !dbg !6143
  br label %if.end10, !dbg !6144

if.end10:                                         ; preds = %if.then7, %if.then4
  br label %if.end11, !dbg !6145

if.end11:                                         ; preds = %if.end10, %if.end
  %20 = load i32, ptr %need_cancel, align 4, !dbg !6146
  %tobool12 = icmp ne i32 %20, 0, !dbg !6146
  br i1 %tobool12, label %if.then13, label %if.end22, !dbg !6147

if.then13:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %bh2) #19, !dbg !6148
  call void @llvm.dbg.declare(metadata ptr %bh2, metadata !6077, metadata !DIExpression()), !dbg !6149
  %21 = load ptr, ptr %bh, align 8, !dbg !6150
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 6, !dbg !6151
  %22 = load ptr, ptr %b_bdev, align 8, !dbg !6151
  %23 = load ptr, ptr %bh, align 8, !dbg !6152
  %b_blocknr14 = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 3, !dbg !6153
  %24 = load i64, ptr %b_blocknr14, align 8, !dbg !6153
  %25 = load ptr, ptr %bh, align 8, !dbg !6154
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %25, i32 0, i32 4, !dbg !6155
  %26 = load i64, ptr %b_size, align 8, !dbg !6155
  %conv = trunc i64 %26 to i32, !dbg !6154
  %call15 = call ptr @__find_get_block(ptr noundef %22, i64 noundef %24, i32 noundef %conv) #18, !dbg !6156
  store ptr %call15, ptr %bh2, align 8, !dbg !6157
  %27 = load ptr, ptr %bh2, align 8, !dbg !6158
  %tobool16 = icmp ne ptr %27, null, !dbg !6158
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !6160

if.then17:                                        ; preds = %if.then13
  %28 = load ptr, ptr %bh2, align 8, !dbg !6161
  %29 = load ptr, ptr %bh, align 8, !dbg !6164
  %cmp = icmp ne ptr %28, %29, !dbg !6165
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !6166

if.then19:                                        ; preds = %if.then17
  %30 = load ptr, ptr %bh2, align 8, !dbg !6167
  call void @clear_buffer_revoked(ptr noundef %30) #18, !dbg !6168
  br label %if.end20, !dbg !6168

if.end20:                                         ; preds = %if.then19, %if.then17
  %31 = load ptr, ptr %bh2, align 8, !dbg !6169
  call void @__brelse(ptr noundef %31) #18, !dbg !6170
  br label %if.end21, !dbg !6171

if.end21:                                         ; preds = %if.end20, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %bh2) #19, !dbg !6172
  br label %if.end22, !dbg !6173

if.end22:                                         ; preds = %if.end21, %if.end11
  %32 = load i32, ptr %did_revoke, align 4, !dbg !6174
  call void @llvm.lifetime.end.p0(i64 8, ptr %bh) #19, !dbg !6175
  call void @llvm.lifetime.end.p0(i64 4, ptr %did_revoke) #19, !dbg !6175
  call void @llvm.lifetime.end.p0(i64 4, ptr %need_cancel) #19, !dbg !6175
  call void @llvm.lifetime.end.p0(i64 8, ptr %journal) #19, !dbg !6175
  call void @llvm.lifetime.end.p0(i64 8, ptr %record) #19, !dbg !6175
  ret i32 %32, !dbg !6176
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @jh2bh(ptr noundef %jh) #10 align 16 !dbg !6177 {
entry:
  %jh.addr = alloca ptr, align 8
  store ptr %jh, ptr %jh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %jh.addr, metadata !6181, metadata !DIExpression()), !dbg !6182
  %0 = load ptr, ptr %jh.addr, align 8, !dbg !6183
  %b_bh = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 0, !dbg !6184
  %1 = load ptr, ptr %b_bh, align 8, !dbg !6184
  ret ptr %1, !dbg !6185
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_set_buffer_revokevalid(ptr noundef %bh) #7 align 16 !dbg !6186 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !6190, metadata !DIExpression()), !dbg !6191
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !6191
  %b_state = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 0, !dbg !6191
  %call = call zeroext i1 @test_and_set_bit(i64 noundef 20, ptr noundef %b_state) #18, !dbg !6191
  %conv = zext i1 %call to i32, !dbg !6191
  ret i32 %conv, !dbg !6191
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_clear_buffer_revoked(ptr noundef %bh) #7 align 16 !dbg !6192 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !6194, metadata !DIExpression()), !dbg !6195
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !6195
  %b_state = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 0, !dbg !6195
  %call = call zeroext i1 @test_and_clear_bit(i64 noundef 19, ptr noundef %b_state) #18, !dbg !6195
  %conv = zext i1 %call to i32, !dbg !6195
  ret i32 %conv, !dbg !6195
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_buffer_revoked(ptr noundef %bh) #7 align 16 !dbg !6196 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !6198, metadata !DIExpression()), !dbg !6199
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !6199
  %b_state = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 0, !dbg !6199
  call void @clear_bit(i64 noundef 19, ptr noundef %b_state) #18, !dbg !6199
  ret void, !dbg !6199
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_revoke_record(ptr noundef %journal, i64 noundef %blocknr) #0 align 16 !dbg !6200 {
entry:
  %retval = alloca ptr, align 8
  %journal.addr = alloca ptr, align 8
  %blocknr.addr = alloca i64, align 8
  %hash_list = alloca ptr, align 8
  %record = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %journal, ptr %journal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %journal.addr, metadata !6204, metadata !DIExpression()), !dbg !6208
  store i64 %blocknr, ptr %blocknr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blocknr.addr, metadata !6205, metadata !DIExpression()), !dbg !6209
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash_list) #19, !dbg !6210
  call void @llvm.dbg.declare(metadata ptr %hash_list, metadata !6206, metadata !DIExpression()), !dbg !6211
  call void @llvm.lifetime.start.p0(i64 8, ptr %record) #19, !dbg !6212
  call void @llvm.dbg.declare(metadata ptr %record, metadata !6207, metadata !DIExpression()), !dbg !6213
  %0 = load ptr, ptr %journal.addr, align 8, !dbg !6214
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 52, !dbg !6215
  %1 = load ptr, ptr %j_revoke, align 8, !dbg !6215
  %hash_table = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %1, i32 0, i32 2, !dbg !6216
  %2 = load ptr, ptr %hash_table, align 8, !dbg !6216
  %3 = load ptr, ptr %journal.addr, align 8, !dbg !6217
  %4 = load i64, ptr %blocknr.addr, align 8, !dbg !6218
  %call = call i32 @hash(ptr noundef %3, i64 noundef %4) #18, !dbg !6219
  %idxprom = sext i32 %call to i64, !dbg !6214
  %arrayidx = getelementptr %struct.list_head, ptr %2, i64 %idxprom, !dbg !6214
  store ptr %arrayidx, ptr %hash_list, align 8, !dbg !6220
  %5 = load ptr, ptr %journal.addr, align 8, !dbg !6221
  %j_revoke_lock = getelementptr inbounds %struct.journal_s, ptr %5, i32 0, i32 51, !dbg !6222
  call void @spin_lock(ptr noundef %j_revoke_lock) #18, !dbg !6223
  %6 = load ptr, ptr %hash_list, align 8, !dbg !6224
  %next = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6225
  %7 = load ptr, ptr %next, align 8, !dbg !6225
  store ptr %7, ptr %record, align 8, !dbg !6226
  br label %while.cond, !dbg !6227

while.cond:                                       ; preds = %if.end, %entry
  %8 = load ptr, ptr %record, align 8, !dbg !6228
  %hash = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %8, i32 0, i32 0, !dbg !6229
  %9 = load ptr, ptr %hash_list, align 8, !dbg !6230
  %cmp = icmp ne ptr %hash, %9, !dbg !6231
  br i1 %cmp, label %while.body, label %while.end, !dbg !6227

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %record, align 8, !dbg !6232
  %blocknr1 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %10, i32 0, i32 2, !dbg !6235
  %11 = load i64, ptr %blocknr1, align 8, !dbg !6235
  %12 = load i64, ptr %blocknr.addr, align 8, !dbg !6236
  %cmp2 = icmp eq i64 %11, %12, !dbg !6237
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6238

if.then:                                          ; preds = %while.body
  %13 = load ptr, ptr %journal.addr, align 8, !dbg !6239
  %j_revoke_lock3 = getelementptr inbounds %struct.journal_s, ptr %13, i32 0, i32 51, !dbg !6241
  call void @spin_unlock(ptr noundef %j_revoke_lock3) #18, !dbg !6242
  %14 = load ptr, ptr %record, align 8, !dbg !6243
  store ptr %14, ptr %retval, align 8, !dbg !6244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6244

if.end:                                           ; preds = %while.body
  %15 = load ptr, ptr %record, align 8, !dbg !6245
  %hash4 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %15, i32 0, i32 0, !dbg !6246
  %next5 = getelementptr inbounds %struct.list_head, ptr %hash4, i32 0, i32 0, !dbg !6247
  %16 = load ptr, ptr %next5, align 8, !dbg !6247
  store ptr %16, ptr %record, align 8, !dbg !6248
  br label %while.cond, !dbg !6227, !llvm.loop !6249

while.end:                                        ; preds = %while.cond
  %17 = load ptr, ptr %journal.addr, align 8, !dbg !6251
  %j_revoke_lock6 = getelementptr inbounds %struct.journal_s, ptr %17, i32 0, i32 51, !dbg !6252
  call void @spin_unlock(ptr noundef %j_revoke_lock6) #18, !dbg !6253
  store ptr null, ptr %retval, align 8, !dbg !6254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6254

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %record) #19, !dbg !6255
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash_list) #19, !dbg !6255
  %18 = load ptr, ptr %retval, align 8, !dbg !6255
  ret ptr %18, !dbg !6255
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #7 align 16 !dbg !6256 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6260, metadata !DIExpression()), !dbg !6261
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6262
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6262
  call void @_raw_spin_lock(ptr noundef %1) #18, !dbg !6262
  ret void, !dbg !6263
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #10 align 16 !dbg !6264 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6269, metadata !DIExpression()), !dbg !6270
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6271
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !6272
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6273
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6274
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6275
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6276
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6277
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6278
  ret void, !dbg !6279
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #7 align 16 !dbg !6280 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6282, metadata !DIExpression()), !dbg !6283
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6284
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6284
  call void @_raw_spin_unlock(ptr noundef %1) #18, !dbg !6284
  ret void, !dbg !6285
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6286 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @jbd2_clear_buffer_revoked_flags(ptr noundef %journal) #0 align 16 !dbg !6289 {
entry:
  %journal.addr = alloca ptr, align 8
  %revoke = alloca ptr, align 8
  %i = alloca i32, align 4
  %hash_list = alloca ptr, align 8
  %list_entry = alloca ptr, align 8
  %record = alloca ptr, align 8
  %bh = alloca ptr, align 8
  store ptr %journal, ptr %journal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %journal.addr, metadata !6291, metadata !DIExpression()), !dbg !6304
  call void @llvm.lifetime.start.p0(i64 8, ptr %revoke) #19, !dbg !6305
  call void @llvm.dbg.declare(metadata ptr %revoke, metadata !6292, metadata !DIExpression()), !dbg !6306
  %0 = load ptr, ptr %journal.addr, align 8, !dbg !6307
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 52, !dbg !6308
  %1 = load ptr, ptr %j_revoke, align 8, !dbg !6308
  store ptr %1, ptr %revoke, align 8, !dbg !6306
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !6309
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6293, metadata !DIExpression()), !dbg !6310
  store i32 0, ptr %i, align 4, !dbg !6310
  store i32 0, ptr %i, align 4, !dbg !6311
  br label %for.cond, !dbg !6312

for.cond:                                         ; preds = %for.inc6, %entry
  %2 = load i32, ptr %i, align 4, !dbg !6313
  %3 = load ptr, ptr %revoke, align 8, !dbg !6314
  %hash_size = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %3, i32 0, i32 0, !dbg !6315
  %4 = load i32, ptr %hash_size, align 8, !dbg !6315
  %cmp = icmp slt i32 %2, %4, !dbg !6316
  br i1 %cmp, label %for.body, label %for.end7, !dbg !6317

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash_list) #19, !dbg !6318
  call void @llvm.dbg.declare(metadata ptr %hash_list, metadata !6294, metadata !DIExpression()), !dbg !6319
  call void @llvm.lifetime.start.p0(i64 8, ptr %list_entry) #19, !dbg !6320
  call void @llvm.dbg.declare(metadata ptr %list_entry, metadata !6298, metadata !DIExpression()), !dbg !6321
  %5 = load ptr, ptr %revoke, align 8, !dbg !6322
  %hash_table = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %5, i32 0, i32 2, !dbg !6323
  %6 = load ptr, ptr %hash_table, align 8, !dbg !6323
  %7 = load i32, ptr %i, align 4, !dbg !6324
  %idxprom = sext i32 %7 to i64, !dbg !6322
  %arrayidx = getelementptr %struct.list_head, ptr %6, i64 %idxprom, !dbg !6322
  store ptr %arrayidx, ptr %hash_list, align 8, !dbg !6325
  %8 = load ptr, ptr %hash_list, align 8, !dbg !6326
  %next = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 0, !dbg !6326
  %9 = load ptr, ptr %next, align 8, !dbg !6326
  store ptr %9, ptr %list_entry, align 8, !dbg !6326
  br label %for.cond1, !dbg !6326

for.cond1:                                        ; preds = %for.inc, %for.body
  %10 = load ptr, ptr %list_entry, align 8, !dbg !6327
  %11 = load ptr, ptr %hash_list, align 8, !dbg !6327
  %call = call i32 @list_is_head(ptr noundef %10, ptr noundef %11) #18, !dbg !6327
  %tobool = icmp ne i32 %call, 0, !dbg !6327
  %lnot = xor i1 %tobool, true, !dbg !6327
  br i1 %lnot, label %for.body2, label %for.end, !dbg !6326

for.body2:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 8, ptr %record) #19, !dbg !6328
  call void @llvm.dbg.declare(metadata ptr %record, metadata !6299, metadata !DIExpression()), !dbg !6329
  call void @llvm.lifetime.start.p0(i64 8, ptr %bh) #19, !dbg !6330
  call void @llvm.dbg.declare(metadata ptr %bh, metadata !6303, metadata !DIExpression()), !dbg !6331
  %12 = load ptr, ptr %list_entry, align 8, !dbg !6332
  store ptr %12, ptr %record, align 8, !dbg !6333
  %13 = load ptr, ptr %journal.addr, align 8, !dbg !6334
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %13, i32 0, i32 35, !dbg !6335
  %14 = load ptr, ptr %j_fs_dev, align 8, !dbg !6335
  %15 = load ptr, ptr %record, align 8, !dbg !6336
  %blocknr = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %15, i32 0, i32 2, !dbg !6337
  %16 = load i64, ptr %blocknr, align 8, !dbg !6337
  %17 = load ptr, ptr %journal.addr, align 8, !dbg !6338
  %j_blocksize = getelementptr inbounds %struct.journal_s, ptr %17, i32 0, i32 32, !dbg !6339
  %18 = load i32, ptr %j_blocksize, align 8, !dbg !6339
  %call3 = call ptr @__find_get_block(ptr noundef %14, i64 noundef %16, i32 noundef %18) #18, !dbg !6340
  store ptr %call3, ptr %bh, align 8, !dbg !6341
  %19 = load ptr, ptr %bh, align 8, !dbg !6342
  %tobool4 = icmp ne ptr %19, null, !dbg !6342
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6344

if.then:                                          ; preds = %for.body2
  %20 = load ptr, ptr %bh, align 8, !dbg !6345
  call void @clear_buffer_revoked(ptr noundef %20) #18, !dbg !6347
  %21 = load ptr, ptr %bh, align 8, !dbg !6348
  call void @__brelse(ptr noundef %21) #18, !dbg !6349
  br label %if.end, !dbg !6350

if.end:                                           ; preds = %if.then, %for.body2
  call void @llvm.lifetime.end.p0(i64 8, ptr %bh) #19, !dbg !6351
  call void @llvm.lifetime.end.p0(i64 8, ptr %record) #19, !dbg !6351
  br label %for.inc, !dbg !6352

for.inc:                                          ; preds = %if.end
  %22 = load ptr, ptr %list_entry, align 8, !dbg !6327
  %next5 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 0, !dbg !6327
  %23 = load ptr, ptr %next5, align 8, !dbg !6327
  store ptr %23, ptr %list_entry, align 8, !dbg !6327
  br label %for.cond1, !dbg !6327, !llvm.loop !6353

for.end:                                          ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 8, ptr %list_entry) #19, !dbg !6355
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash_list) #19, !dbg !6355
  br label %for.inc6, !dbg !6356

for.inc6:                                         ; preds = %for.end
  %24 = load i32, ptr %i, align 4, !dbg !6357
  %inc = add i32 %24, 1, !dbg !6357
  store i32 %inc, ptr %i, align 4, !dbg !6357
  br label %for.cond, !dbg !6358, !llvm.loop !6359

for.end7:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !6361
  call void @llvm.lifetime.end.p0(i64 8, ptr %revoke) #19, !dbg !6361
  ret void, !dbg !6361
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_head(ptr noundef %list, ptr noundef %head) #10 align 16 !dbg !6362 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6368, metadata !DIExpression()), !dbg !6370
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6369, metadata !DIExpression()), !dbg !6371
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6372
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6373
  %cmp = icmp eq ptr %0, %1, !dbg !6374
  %conv = zext i1 %cmp to i32, !dbg !6374
  ret i32 %conv, !dbg !6375
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @jbd2_journal_switch_revoke_table(ptr noundef %journal) #0 align 16 !dbg !6376 {
entry:
  %journal.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %journal, ptr %journal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %journal.addr, metadata !6378, metadata !DIExpression()), !dbg !6380
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !6381
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6379, metadata !DIExpression()), !dbg !6382
  %0 = load ptr, ptr %journal.addr, align 8, !dbg !6383
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 52, !dbg !6385
  %1 = load ptr, ptr %j_revoke, align 8, !dbg !6385
  %2 = load ptr, ptr %journal.addr, align 8, !dbg !6386
  %j_revoke_table = getelementptr inbounds %struct.journal_s, ptr %2, i32 0, i32 53, !dbg !6387
  %arrayidx = getelementptr [2 x ptr], ptr %j_revoke_table, i64 0, i64 0, !dbg !6386
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !6386
  %cmp = icmp eq ptr %1, %3, !dbg !6388
  br i1 %cmp, label %if.then, label %if.else, !dbg !6389

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %journal.addr, align 8, !dbg !6390
  %j_revoke_table1 = getelementptr inbounds %struct.journal_s, ptr %4, i32 0, i32 53, !dbg !6391
  %arrayidx2 = getelementptr [2 x ptr], ptr %j_revoke_table1, i64 0, i64 1, !dbg !6390
  %5 = load ptr, ptr %arrayidx2, align 8, !dbg !6390
  %6 = load ptr, ptr %journal.addr, align 8, !dbg !6392
  %j_revoke3 = getelementptr inbounds %struct.journal_s, ptr %6, i32 0, i32 52, !dbg !6393
  store ptr %5, ptr %j_revoke3, align 8, !dbg !6394
  br label %if.end, !dbg !6392

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %journal.addr, align 8, !dbg !6395
  %j_revoke_table4 = getelementptr inbounds %struct.journal_s, ptr %7, i32 0, i32 53, !dbg !6396
  %arrayidx5 = getelementptr [2 x ptr], ptr %j_revoke_table4, i64 0, i64 0, !dbg !6395
  %8 = load ptr, ptr %arrayidx5, align 8, !dbg !6395
  %9 = load ptr, ptr %journal.addr, align 8, !dbg !6397
  %j_revoke6 = getelementptr inbounds %struct.journal_s, ptr %9, i32 0, i32 52, !dbg !6398
  store ptr %8, ptr %j_revoke6, align 8, !dbg !6399
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %i, align 4, !dbg !6400
  br label %for.cond, !dbg !6402

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4, !dbg !6403
  %11 = load ptr, ptr %journal.addr, align 8, !dbg !6405
  %j_revoke7 = getelementptr inbounds %struct.journal_s, ptr %11, i32 0, i32 52, !dbg !6406
  %12 = load ptr, ptr %j_revoke7, align 8, !dbg !6406
  %hash_size = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %12, i32 0, i32 0, !dbg !6407
  %13 = load i32, ptr %hash_size, align 8, !dbg !6407
  %cmp8 = icmp slt i32 %10, %13, !dbg !6408
  br i1 %cmp8, label %for.body, label %for.end, !dbg !6409

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %journal.addr, align 8, !dbg !6410
  %j_revoke9 = getelementptr inbounds %struct.journal_s, ptr %14, i32 0, i32 52, !dbg !6411
  %15 = load ptr, ptr %j_revoke9, align 8, !dbg !6411
  %hash_table = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %15, i32 0, i32 2, !dbg !6412
  %16 = load ptr, ptr %hash_table, align 8, !dbg !6412
  %17 = load i32, ptr %i, align 4, !dbg !6413
  %idxprom = sext i32 %17 to i64, !dbg !6410
  %arrayidx10 = getelementptr %struct.list_head, ptr %16, i64 %idxprom, !dbg !6410
  call void @INIT_LIST_HEAD(ptr noundef %arrayidx10) #18, !dbg !6414
  br label %for.inc, !dbg !6414

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4, !dbg !6415
  %inc = add i32 %18, 1, !dbg !6415
  store i32 %inc, ptr %i, align 4, !dbg !6415
  br label %for.cond, !dbg !6416, !llvm.loop !6417

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !6419
  ret void, !dbg !6419
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #10 align 16 !dbg !6420 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6422, metadata !DIExpression()), !dbg !6423
  br label %do.body, !dbg !6424

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6425

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6427

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6425

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6429
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6429
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6429
  store volatile ptr %0, ptr %next, align 8, !dbg !6429
  br label %do.end3, !dbg !6429

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6425

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6431

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6432

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6434

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6432

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6436
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6436
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6436
  store volatile ptr %2, ptr %prev, align 8, !dbg !6436
  br label %do.end9, !dbg !6436

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6432

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6438
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @jbd2_journal_write_revoke_records(ptr noundef %transaction, ptr noundef %log_bufs) #0 align 16 !dbg !6439 {
entry:
  %transaction.addr = alloca ptr, align 8
  %log_bufs.addr = alloca ptr, align 8
  %journal = alloca ptr, align 8
  %descriptor = alloca ptr, align 8
  %record = alloca ptr, align 8
  %revoke = alloca ptr, align 8
  %hash_list = alloca ptr, align 8
  %i = alloca i32, align 4
  %offset = alloca i32, align 4
  %count = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %transaction, ptr %transaction.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %transaction.addr, metadata !6443, metadata !DIExpression()), !dbg !6453
  store ptr %log_bufs, ptr %log_bufs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %log_bufs.addr, metadata !6444, metadata !DIExpression()), !dbg !6454
  call void @llvm.lifetime.start.p0(i64 8, ptr %journal) #19, !dbg !6455
  call void @llvm.dbg.declare(metadata ptr %journal, metadata !6445, metadata !DIExpression()), !dbg !6456
  %0 = load ptr, ptr %transaction.addr, align 8, !dbg !6457
  %t_journal = getelementptr inbounds %struct.transaction_s, ptr %0, i32 0, i32 0, !dbg !6458
  %1 = load ptr, ptr %t_journal, align 8, !dbg !6458
  store ptr %1, ptr %journal, align 8, !dbg !6456
  call void @llvm.lifetime.start.p0(i64 8, ptr %descriptor) #19, !dbg !6459
  call void @llvm.dbg.declare(metadata ptr %descriptor, metadata !6446, metadata !DIExpression()), !dbg !6460
  call void @llvm.lifetime.start.p0(i64 8, ptr %record) #19, !dbg !6461
  call void @llvm.dbg.declare(metadata ptr %record, metadata !6447, metadata !DIExpression()), !dbg !6462
  call void @llvm.lifetime.start.p0(i64 8, ptr %revoke) #19, !dbg !6463
  call void @llvm.dbg.declare(metadata ptr %revoke, metadata !6448, metadata !DIExpression()), !dbg !6464
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash_list) #19, !dbg !6465
  call void @llvm.dbg.declare(metadata ptr %hash_list, metadata !6449, metadata !DIExpression()), !dbg !6466
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !6467
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6450, metadata !DIExpression()), !dbg !6468
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #19, !dbg !6467
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6451, metadata !DIExpression()), !dbg !6469
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #19, !dbg !6467
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6452, metadata !DIExpression()), !dbg !6470
  store ptr null, ptr %descriptor, align 8, !dbg !6471
  store i32 0, ptr %offset, align 4, !dbg !6472
  store i32 0, ptr %count, align 4, !dbg !6473
  %2 = load ptr, ptr %journal, align 8, !dbg !6474
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %2, i32 0, i32 52, !dbg !6475
  %3 = load ptr, ptr %j_revoke, align 8, !dbg !6475
  %4 = load ptr, ptr %journal, align 8, !dbg !6476
  %j_revoke_table = getelementptr inbounds %struct.journal_s, ptr %4, i32 0, i32 53, !dbg !6477
  %arrayidx = getelementptr [2 x ptr], ptr %j_revoke_table, i64 0, i64 0, !dbg !6476
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !6476
  %cmp = icmp eq ptr %3, %5, !dbg !6478
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6474

cond.true:                                        ; preds = %entry
  %6 = load ptr, ptr %journal, align 8, !dbg !6479
  %j_revoke_table1 = getelementptr inbounds %struct.journal_s, ptr %6, i32 0, i32 53, !dbg !6480
  %arrayidx2 = getelementptr [2 x ptr], ptr %j_revoke_table1, i64 0, i64 1, !dbg !6479
  %7 = load ptr, ptr %arrayidx2, align 8, !dbg !6479
  br label %cond.end, !dbg !6474

cond.false:                                       ; preds = %entry
  %8 = load ptr, ptr %journal, align 8, !dbg !6481
  %j_revoke_table3 = getelementptr inbounds %struct.journal_s, ptr %8, i32 0, i32 53, !dbg !6482
  %arrayidx4 = getelementptr [2 x ptr], ptr %j_revoke_table3, i64 0, i64 0, !dbg !6481
  %9 = load ptr, ptr %arrayidx4, align 8, !dbg !6481
  br label %cond.end, !dbg !6474

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ %9, %cond.false ], !dbg !6474
  store ptr %cond, ptr %revoke, align 8, !dbg !6483
  store i32 0, ptr %i, align 4, !dbg !6484
  br label %for.cond, !dbg !6486

for.cond:                                         ; preds = %for.inc, %cond.end
  %10 = load i32, ptr %i, align 4, !dbg !6487
  %11 = load ptr, ptr %revoke, align 8, !dbg !6489
  %hash_size = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %11, i32 0, i32 0, !dbg !6490
  %12 = load i32, ptr %hash_size, align 8, !dbg !6490
  %cmp5 = icmp slt i32 %10, %12, !dbg !6491
  br i1 %cmp5, label %for.body, label %for.end, !dbg !6492

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %revoke, align 8, !dbg !6493
  %hash_table = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %13, i32 0, i32 2, !dbg !6495
  %14 = load ptr, ptr %hash_table, align 8, !dbg !6495
  %15 = load i32, ptr %i, align 4, !dbg !6496
  %idxprom = sext i32 %15 to i64, !dbg !6493
  %arrayidx6 = getelementptr %struct.list_head, ptr %14, i64 %idxprom, !dbg !6493
  store ptr %arrayidx6, ptr %hash_list, align 8, !dbg !6497
  br label %while.cond, !dbg !6498

while.cond:                                       ; preds = %while.body, %for.body
  %16 = load ptr, ptr %hash_list, align 8, !dbg !6499
  %call = call i32 @list_empty(ptr noundef %16) #18, !dbg !6500
  %tobool = icmp ne i32 %call, 0, !dbg !6501
  %lnot = xor i1 %tobool, true, !dbg !6501
  br i1 %lnot, label %while.body, label %while.end, !dbg !6498

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %hash_list, align 8, !dbg !6502
  %next = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 0, !dbg !6504
  %18 = load ptr, ptr %next, align 8, !dbg !6504
  store ptr %18, ptr %record, align 8, !dbg !6505
  %19 = load ptr, ptr %transaction.addr, align 8, !dbg !6506
  %20 = load ptr, ptr %log_bufs.addr, align 8, !dbg !6507
  %21 = load ptr, ptr %record, align 8, !dbg !6508
  call void @write_one_revoke_record(ptr noundef %19, ptr noundef %20, ptr noundef %descriptor, ptr noundef %offset, ptr noundef %21) #18, !dbg !6509
  %22 = load i32, ptr %count, align 4, !dbg !6510
  %inc = add i32 %22, 1, !dbg !6510
  store i32 %inc, ptr %count, align 4, !dbg !6510
  %23 = load ptr, ptr %record, align 8, !dbg !6511
  %hash = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %23, i32 0, i32 0, !dbg !6512
  call void @list_del(ptr noundef %hash) #18, !dbg !6513
  %24 = load ptr, ptr @jbd2_revoke_record_cache, align 8, !dbg !6514
  %25 = load ptr, ptr %record, align 8, !dbg !6515
  call void @kmem_cache_free(ptr noundef %24, ptr noundef %25) #18, !dbg !6516
  br label %while.cond, !dbg !6498, !llvm.loop !6517

while.end:                                        ; preds = %while.cond
  br label %for.inc, !dbg !6519

for.inc:                                          ; preds = %while.end
  %26 = load i32, ptr %i, align 4, !dbg !6520
  %inc7 = add i32 %26, 1, !dbg !6520
  store i32 %inc7, ptr %i, align 4, !dbg !6520
  br label %for.cond, !dbg !6521, !llvm.loop !6522

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %descriptor, align 8, !dbg !6524
  %tobool8 = icmp ne ptr %27, null, !dbg !6524
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6526

if.then:                                          ; preds = %for.end
  %28 = load ptr, ptr %journal, align 8, !dbg !6527
  %29 = load ptr, ptr %descriptor, align 8, !dbg !6528
  %30 = load i32, ptr %offset, align 4, !dbg !6529
  call void @flush_descriptor(ptr noundef %28, ptr noundef %29, i32 noundef %30) #18, !dbg !6530
  br label %if.end, !dbg !6530

if.end:                                           ; preds = %if.then, %for.end
  store i32 0, ptr %tmp, align 4, !dbg !6531
  %31 = load i32, ptr %tmp, align 4, !dbg !6534
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #19, !dbg !6535
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #19, !dbg !6535
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !6535
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash_list) #19, !dbg !6535
  call void @llvm.lifetime.end.p0(i64 8, ptr %revoke) #19, !dbg !6535
  call void @llvm.lifetime.end.p0(i64 8, ptr %record) #19, !dbg !6535
  call void @llvm.lifetime.end.p0(i64 8, ptr %descriptor) #19, !dbg !6535
  call void @llvm.lifetime.end.p0(i64 8, ptr %journal) #19, !dbg !6535
  ret void, !dbg !6535
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #10 align 16 !dbg !6536 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6540, metadata !DIExpression()), !dbg !6541
  br label %do.body, !dbg !6542

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6544

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6542
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6542
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6542
  store ptr %1, ptr %tmp, align 8, !dbg !6544
  %2 = load ptr, ptr %tmp, align 8, !dbg !6542
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6546
  %cmp = icmp eq ptr %2, %3, !dbg !6547
  %conv = zext i1 %cmp to i32, !dbg !6547
  ret i32 %conv, !dbg !6548
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @write_one_revoke_record(ptr noundef %transaction, ptr noundef %log_bufs, ptr noundef %descriptorp, ptr noundef %offsetp, ptr noundef %record) #0 align 16 !dbg !6549 {
entry:
  %transaction.addr = alloca ptr, align 8
  %log_bufs.addr = alloca ptr, align 8
  %descriptorp.addr = alloca ptr, align 8
  %offsetp.addr = alloca ptr, align 8
  %record.addr = alloca ptr, align 8
  %journal = alloca ptr, align 8
  %csum_size = alloca i32, align 4
  %descriptor = alloca ptr, align 8
  %sz = alloca i32, align 4
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %transaction, ptr %transaction.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %transaction.addr, metadata !6553, metadata !DIExpression()), !dbg !6563
  store ptr %log_bufs, ptr %log_bufs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %log_bufs.addr, metadata !6554, metadata !DIExpression()), !dbg !6564
  store ptr %descriptorp, ptr %descriptorp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %descriptorp.addr, metadata !6555, metadata !DIExpression()), !dbg !6565
  store ptr %offsetp, ptr %offsetp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offsetp.addr, metadata !6556, metadata !DIExpression()), !dbg !6566
  store ptr %record, ptr %record.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %record.addr, metadata !6557, metadata !DIExpression()), !dbg !6567
  call void @llvm.lifetime.start.p0(i64 8, ptr %journal) #19, !dbg !6568
  call void @llvm.dbg.declare(metadata ptr %journal, metadata !6558, metadata !DIExpression()), !dbg !6569
  %0 = load ptr, ptr %transaction.addr, align 8, !dbg !6570
  %t_journal = getelementptr inbounds %struct.transaction_s, ptr %0, i32 0, i32 0, !dbg !6571
  %1 = load ptr, ptr %t_journal, align 8, !dbg !6571
  store ptr %1, ptr %journal, align 8, !dbg !6569
  call void @llvm.lifetime.start.p0(i64 4, ptr %csum_size) #19, !dbg !6572
  call void @llvm.dbg.declare(metadata ptr %csum_size, metadata !6559, metadata !DIExpression()), !dbg !6573
  store i32 0, ptr %csum_size, align 4, !dbg !6573
  call void @llvm.lifetime.start.p0(i64 8, ptr %descriptor) #19, !dbg !6574
  call void @llvm.dbg.declare(metadata ptr %descriptor, metadata !6560, metadata !DIExpression()), !dbg !6575
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #19, !dbg !6576
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6561, metadata !DIExpression()), !dbg !6577
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #19, !dbg !6576
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6562, metadata !DIExpression()), !dbg !6578
  %2 = load ptr, ptr %journal, align 8, !dbg !6579
  %call = call i32 @is_journal_aborted(ptr noundef %2) #18, !dbg !6581
  %tobool = icmp ne i32 %call, 0, !dbg !6581
  br i1 %tobool, label %if.then, label %if.end, !dbg !6582

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6583

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %descriptorp.addr, align 8, !dbg !6584
  %4 = load ptr, ptr %3, align 8, !dbg !6585
  store ptr %4, ptr %descriptor, align 8, !dbg !6586
  %5 = load ptr, ptr %offsetp.addr, align 8, !dbg !6587
  %6 = load i32, ptr %5, align 4, !dbg !6588
  store i32 %6, ptr %offset, align 4, !dbg !6589
  %7 = load ptr, ptr %journal, align 8, !dbg !6590
  %call1 = call i32 @jbd2_journal_has_csum_v2or3(ptr noundef %7) #18, !dbg !6592
  %tobool2 = icmp ne i32 %call1, 0, !dbg !6592
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6593

if.then3:                                         ; preds = %if.end
  store i32 4, ptr %csum_size, align 4, !dbg !6594
  br label %if.end4, !dbg !6595

if.end4:                                          ; preds = %if.then3, %if.end
  %8 = load ptr, ptr %journal, align 8, !dbg !6596
  %call5 = call zeroext i1 @jbd2_has_feature_64bit(ptr noundef %8) #18, !dbg !6598
  br i1 %call5, label %if.then6, label %if.else, !dbg !6599

if.then6:                                         ; preds = %if.end4
  store i32 8, ptr %sz, align 4, !dbg !6600
  br label %if.end7, !dbg !6601

if.else:                                          ; preds = %if.end4
  store i32 4, ptr %sz, align 4, !dbg !6602
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %9 = load ptr, ptr %descriptor, align 8, !dbg !6603
  %tobool8 = icmp ne ptr %9, null, !dbg !6603
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !6605

if.then9:                                         ; preds = %if.end7
  %10 = load i32, ptr %offset, align 4, !dbg !6606
  %11 = load i32, ptr %sz, align 4, !dbg !6609
  %add = add i32 %10, %11, !dbg !6610
  %12 = load ptr, ptr %journal, align 8, !dbg !6611
  %j_blocksize = getelementptr inbounds %struct.journal_s, ptr %12, i32 0, i32 32, !dbg !6612
  %13 = load i32, ptr %j_blocksize, align 8, !dbg !6612
  %14 = load i32, ptr %csum_size, align 4, !dbg !6613
  %sub = sub i32 %13, %14, !dbg !6614
  %cmp = icmp sgt i32 %add, %sub, !dbg !6615
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !6616

if.then10:                                        ; preds = %if.then9
  %15 = load ptr, ptr %journal, align 8, !dbg !6617
  %16 = load ptr, ptr %descriptor, align 8, !dbg !6619
  %17 = load i32, ptr %offset, align 4, !dbg !6620
  call void @flush_descriptor(ptr noundef %15, ptr noundef %16, i32 noundef %17) #18, !dbg !6621
  store ptr null, ptr %descriptor, align 8, !dbg !6622
  br label %if.end11, !dbg !6623

if.end11:                                         ; preds = %if.then10, %if.then9
  br label %if.end12, !dbg !6624

if.end12:                                         ; preds = %if.end11, %if.end7
  %18 = load ptr, ptr %descriptor, align 8, !dbg !6625
  %tobool13 = icmp ne ptr %18, null, !dbg !6625
  br i1 %tobool13, label %if.end19, label %if.then14, !dbg !6627

if.then14:                                        ; preds = %if.end12
  %19 = load ptr, ptr %transaction.addr, align 8, !dbg !6628
  %call15 = call ptr @jbd2_journal_get_descriptor_buffer(ptr noundef %19, i32 noundef 5) #18, !dbg !6630
  store ptr %call15, ptr %descriptor, align 8, !dbg !6631
  %20 = load ptr, ptr %descriptor, align 8, !dbg !6632
  %tobool16 = icmp ne ptr %20, null, !dbg !6632
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !6634

if.then17:                                        ; preds = %if.then14
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6635

if.end18:                                         ; preds = %if.then14
  br label %do.body, !dbg !6636

do.body:                                          ; preds = %if.end18
  br label %do.cond, !dbg !6637

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6637

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %log_bufs.addr, align 8, !dbg !6639
  %22 = load ptr, ptr %descriptor, align 8, !dbg !6640
  call void @jbd2_file_log_bh(ptr noundef %21, ptr noundef %22) #18, !dbg !6641
  store i32 16, ptr %offset, align 4, !dbg !6642
  %23 = load ptr, ptr %descriptor, align 8, !dbg !6643
  %24 = load ptr, ptr %descriptorp.addr, align 8, !dbg !6644
  store ptr %23, ptr %24, align 8, !dbg !6645
  br label %if.end19, !dbg !6646

if.end19:                                         ; preds = %do.end, %if.end12
  %25 = load ptr, ptr %journal, align 8, !dbg !6647
  %call20 = call zeroext i1 @jbd2_has_feature_64bit(ptr noundef %25) #18, !dbg !6649
  br i1 %call20, label %if.then21, label %if.else22, !dbg !6650

if.then21:                                        ; preds = %if.end19
  %26 = load ptr, ptr %record.addr, align 8, !dbg !6651
  %blocknr = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %26, i32 0, i32 2, !dbg !6651
  %27 = load i64, ptr %blocknr, align 8, !dbg !6651
  %28 = call i64 @llvm.bswap.i64(i64 %27), !dbg !6651
  %29 = load ptr, ptr %descriptor, align 8, !dbg !6652
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 5, !dbg !6653
  %30 = load ptr, ptr %b_data, align 8, !dbg !6653
  %31 = load i32, ptr %offset, align 4, !dbg !6654
  %idxprom = sext i32 %31 to i64, !dbg !6652
  %arrayidx = getelementptr i8, ptr %30, i64 %idxprom, !dbg !6652
  store i64 %28, ptr %arrayidx, align 8, !dbg !6655
  br label %if.end27, !dbg !6656

if.else22:                                        ; preds = %if.end19
  %32 = load ptr, ptr %record.addr, align 8, !dbg !6657
  %blocknr23 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %32, i32 0, i32 2, !dbg !6657
  %33 = load i64, ptr %blocknr23, align 8, !dbg !6657
  %conv = trunc i64 %33 to i32, !dbg !6657
  %34 = call i32 @llvm.bswap.i32(i32 %conv), !dbg !6657
  %35 = load ptr, ptr %descriptor, align 8, !dbg !6658
  %b_data24 = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 5, !dbg !6659
  %36 = load ptr, ptr %b_data24, align 8, !dbg !6659
  %37 = load i32, ptr %offset, align 4, !dbg !6660
  %idxprom25 = sext i32 %37 to i64, !dbg !6658
  %arrayidx26 = getelementptr i8, ptr %36, i64 %idxprom25, !dbg !6658
  store i32 %34, ptr %arrayidx26, align 4, !dbg !6661
  br label %if.end27

if.end27:                                         ; preds = %if.else22, %if.then21
  %38 = load i32, ptr %sz, align 4, !dbg !6662
  %39 = load i32, ptr %offset, align 4, !dbg !6663
  %add28 = add i32 %39, %38, !dbg !6663
  store i32 %add28, ptr %offset, align 4, !dbg !6663
  %40 = load i32, ptr %offset, align 4, !dbg !6664
  %41 = load ptr, ptr %offsetp.addr, align 8, !dbg !6665
  store i32 %40, ptr %41, align 4, !dbg !6666
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6667
  br label %cleanup, !dbg !6667

cleanup:                                          ; preds = %if.end27, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #19, !dbg !6667
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #19, !dbg !6667
  call void @llvm.lifetime.end.p0(i64 8, ptr %descriptor) #19, !dbg !6667
  call void @llvm.lifetime.end.p0(i64 4, ptr %csum_size) #19, !dbg !6667
  call void @llvm.lifetime.end.p0(i64 8, ptr %journal) #19, !dbg !6667
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6667

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @flush_descriptor(ptr noundef %journal, ptr noundef %descriptor, i32 noundef %offset) #0 align 16 !dbg !6668 {
entry:
  %journal.addr = alloca ptr, align 8
  %descriptor.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %header = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %journal, ptr %journal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %journal.addr, metadata !6672, metadata !DIExpression()), !dbg !6676
  store ptr %descriptor, ptr %descriptor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %descriptor.addr, metadata !6673, metadata !DIExpression()), !dbg !6677
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6674, metadata !DIExpression()), !dbg !6678
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #19, !dbg !6679
  call void @llvm.dbg.declare(metadata ptr %header, metadata !6675, metadata !DIExpression()), !dbg !6680
  %0 = load ptr, ptr %journal.addr, align 8, !dbg !6681
  %call = call i32 @is_journal_aborted(ptr noundef %0) #18, !dbg !6683
  %tobool = icmp ne i32 %call, 0, !dbg !6683
  br i1 %tobool, label %if.then, label %if.end, !dbg !6684

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6685

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %descriptor.addr, align 8, !dbg !6686
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5, !dbg !6687
  %2 = load ptr, ptr %b_data, align 8, !dbg !6687
  store ptr %2, ptr %header, align 8, !dbg !6688
  %3 = load i32, ptr %offset.addr, align 4, !dbg !6689
  %4 = call i32 @llvm.bswap.i32(i32 %3), !dbg !6689
  %5 = load ptr, ptr %header, align 8, !dbg !6690
  %r_count = getelementptr inbounds %struct.jbd2_journal_revoke_header_s, ptr %5, i32 0, i32 1, !dbg !6691
  store i32 %4, ptr %r_count, align 4, !dbg !6692
  %6 = load ptr, ptr %journal.addr, align 8, !dbg !6693
  %7 = load ptr, ptr %descriptor.addr, align 8, !dbg !6694
  call void @jbd2_descriptor_block_csum_set(ptr noundef %6, ptr noundef %7) #18, !dbg !6695
  %8 = load ptr, ptr %descriptor.addr, align 8, !dbg !6696
  call void @set_buffer_jwrite(ptr noundef %8) #18, !dbg !6697
  br label %do.body, !dbg !6698

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !6699

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6699

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %descriptor.addr, align 8, !dbg !6701
  call void @set_buffer_dirty(ptr noundef %9) #18, !dbg !6702
  %10 = load ptr, ptr %descriptor.addr, align 8, !dbg !6703
  call void @write_dirty_buffer(ptr noundef %10, i32 noundef 38912) #18, !dbg !6704
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6705
  br label %cleanup, !dbg !6705

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #19, !dbg !6705
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6705

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @jbd2_journal_set_revoke(ptr noundef %journal, i64 noundef %blocknr, i32 noundef %sequence) #0 align 16 !dbg !6706 {
entry:
  %retval = alloca i32, align 4
  %journal.addr = alloca ptr, align 8
  %blocknr.addr = alloca i64, align 8
  %sequence.addr = alloca i32, align 4
  %record = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %journal, ptr %journal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %journal.addr, metadata !6708, metadata !DIExpression()), !dbg !6712
  store i64 %blocknr, ptr %blocknr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blocknr.addr, metadata !6709, metadata !DIExpression()), !dbg !6713
  store i32 %sequence, ptr %sequence.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sequence.addr, metadata !6710, metadata !DIExpression()), !dbg !6714
  call void @llvm.lifetime.start.p0(i64 8, ptr %record) #19, !dbg !6715
  call void @llvm.dbg.declare(metadata ptr %record, metadata !6711, metadata !DIExpression()), !dbg !6716
  %0 = load ptr, ptr %journal.addr, align 8, !dbg !6717
  %1 = load i64, ptr %blocknr.addr, align 8, !dbg !6718
  %call = call ptr @find_revoke_record(ptr noundef %0, i64 noundef %1) #18, !dbg !6719
  store ptr %call, ptr %record, align 8, !dbg !6720
  %2 = load ptr, ptr %record, align 8, !dbg !6721
  %tobool = icmp ne ptr %2, null, !dbg !6721
  br i1 %tobool, label %if.then, label %if.end6, !dbg !6723

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %sequence.addr, align 4, !dbg !6724
  %4 = load ptr, ptr %record, align 8, !dbg !6727
  %sequence1 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %4, i32 0, i32 1, !dbg !6728
  %5 = load i32, ptr %sequence1, align 8, !dbg !6728
  %call2 = call i32 @tid_gt(i32 noundef %3, i32 noundef %5) #18, !dbg !6729
  %tobool3 = icmp ne i32 %call2, 0, !dbg !6729
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !6730

if.then4:                                         ; preds = %if.then
  %6 = load i32, ptr %sequence.addr, align 4, !dbg !6731
  %7 = load ptr, ptr %record, align 8, !dbg !6732
  %sequence5 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %7, i32 0, i32 1, !dbg !6733
  store i32 %6, ptr %sequence5, align 8, !dbg !6734
  br label %if.end, !dbg !6732

if.end:                                           ; preds = %if.then4, %if.then
  store i32 0, ptr %retval, align 4, !dbg !6735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6735

if.end6:                                          ; preds = %entry
  %8 = load ptr, ptr %journal.addr, align 8, !dbg !6736
  %9 = load i64, ptr %blocknr.addr, align 8, !dbg !6737
  %10 = load i32, ptr %sequence.addr, align 4, !dbg !6738
  %call7 = call i32 @insert_revoke_hash(ptr noundef %8, i64 noundef %9, i32 noundef %10) #18, !dbg !6739
  store i32 %call7, ptr %retval, align 4, !dbg !6740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6740

cleanup:                                          ; preds = %if.end6, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %record) #19, !dbg !6741
  %11 = load i32, ptr %retval, align 4, !dbg !6741
  ret i32 %11, !dbg !6741
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tid_gt(i32 noundef %x, i32 noundef %y) #10 align 16 !dbg !6742 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %difference = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6746, metadata !DIExpression()), !dbg !6749
  store i32 %y, ptr %y.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !6747, metadata !DIExpression()), !dbg !6750
  call void @llvm.lifetime.start.p0(i64 4, ptr %difference) #19, !dbg !6751
  call void @llvm.dbg.declare(metadata ptr %difference, metadata !6748, metadata !DIExpression()), !dbg !6752
  %0 = load i32, ptr %x.addr, align 4, !dbg !6753
  %1 = load i32, ptr %y.addr, align 4, !dbg !6754
  %sub = sub i32 %0, %1, !dbg !6755
  store i32 %sub, ptr %difference, align 4, !dbg !6752
  %2 = load i32, ptr %difference, align 4, !dbg !6756
  %cmp = icmp sgt i32 %2, 0, !dbg !6757
  %conv = zext i1 %cmp to i32, !dbg !6757
  call void @llvm.lifetime.end.p0(i64 4, ptr %difference) #19, !dbg !6758
  ret i32 %conv, !dbg !6759
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @jbd2_journal_test_revoke(ptr noundef %journal, i64 noundef %blocknr, i32 noundef %sequence) #0 align 16 !dbg !6760 {
entry:
  %retval = alloca i32, align 4
  %journal.addr = alloca ptr, align 8
  %blocknr.addr = alloca i64, align 8
  %sequence.addr = alloca i32, align 4
  %record = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %journal, ptr %journal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %journal.addr, metadata !6762, metadata !DIExpression()), !dbg !6766
  store i64 %blocknr, ptr %blocknr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blocknr.addr, metadata !6763, metadata !DIExpression()), !dbg !6767
  store i32 %sequence, ptr %sequence.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sequence.addr, metadata !6764, metadata !DIExpression()), !dbg !6768
  call void @llvm.lifetime.start.p0(i64 8, ptr %record) #19, !dbg !6769
  call void @llvm.dbg.declare(metadata ptr %record, metadata !6765, metadata !DIExpression()), !dbg !6770
  %0 = load ptr, ptr %journal.addr, align 8, !dbg !6771
  %1 = load i64, ptr %blocknr.addr, align 8, !dbg !6772
  %call = call ptr @find_revoke_record(ptr noundef %0, i64 noundef %1) #18, !dbg !6773
  store ptr %call, ptr %record, align 8, !dbg !6774
  %2 = load ptr, ptr %record, align 8, !dbg !6775
  %tobool = icmp ne ptr %2, null, !dbg !6775
  br i1 %tobool, label %if.end, label %if.then, !dbg !6777

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6778

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %sequence.addr, align 4, !dbg !6779
  %4 = load ptr, ptr %record, align 8, !dbg !6781
  %sequence1 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %4, i32 0, i32 1, !dbg !6782
  %5 = load i32, ptr %sequence1, align 8, !dbg !6782
  %call2 = call i32 @tid_gt(i32 noundef %3, i32 noundef %5) #18, !dbg !6783
  %tobool3 = icmp ne i32 %call2, 0, !dbg !6783
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6784

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6785

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6786

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %record) #19, !dbg !6787
  %6 = load i32, ptr %retval, align 4, !dbg !6787
  ret i32 %6, !dbg !6787
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @jbd2_journal_clear_revoke(ptr noundef %journal) #0 align 16 !dbg !6788 {
entry:
  %journal.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %hash_list = alloca ptr, align 8
  %record = alloca ptr, align 8
  %revoke = alloca ptr, align 8
  store ptr %journal, ptr %journal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %journal.addr, metadata !6790, metadata !DIExpression()), !dbg !6795
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !6796
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6791, metadata !DIExpression()), !dbg !6797
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash_list) #19, !dbg !6798
  call void @llvm.dbg.declare(metadata ptr %hash_list, metadata !6792, metadata !DIExpression()), !dbg !6799
  call void @llvm.lifetime.start.p0(i64 8, ptr %record) #19, !dbg !6800
  call void @llvm.dbg.declare(metadata ptr %record, metadata !6793, metadata !DIExpression()), !dbg !6801
  call void @llvm.lifetime.start.p0(i64 8, ptr %revoke) #19, !dbg !6802
  call void @llvm.dbg.declare(metadata ptr %revoke, metadata !6794, metadata !DIExpression()), !dbg !6803
  %0 = load ptr, ptr %journal.addr, align 8, !dbg !6804
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 52, !dbg !6805
  %1 = load ptr, ptr %j_revoke, align 8, !dbg !6805
  store ptr %1, ptr %revoke, align 8, !dbg !6806
  store i32 0, ptr %i, align 4, !dbg !6807
  br label %for.cond, !dbg !6809

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !6810
  %3 = load ptr, ptr %revoke, align 8, !dbg !6812
  %hash_size = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %3, i32 0, i32 0, !dbg !6813
  %4 = load i32, ptr %hash_size, align 8, !dbg !6813
  %cmp = icmp slt i32 %2, %4, !dbg !6814
  br i1 %cmp, label %for.body, label %for.end, !dbg !6815

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %revoke, align 8, !dbg !6816
  %hash_table = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %5, i32 0, i32 2, !dbg !6818
  %6 = load ptr, ptr %hash_table, align 8, !dbg !6818
  %7 = load i32, ptr %i, align 4, !dbg !6819
  %idxprom = sext i32 %7 to i64, !dbg !6816
  %arrayidx = getelementptr %struct.list_head, ptr %6, i64 %idxprom, !dbg !6816
  store ptr %arrayidx, ptr %hash_list, align 8, !dbg !6820
  br label %while.cond, !dbg !6821

while.cond:                                       ; preds = %while.body, %for.body
  %8 = load ptr, ptr %hash_list, align 8, !dbg !6822
  %call = call i32 @list_empty(ptr noundef %8) #18, !dbg !6823
  %tobool = icmp ne i32 %call, 0, !dbg !6824
  %lnot = xor i1 %tobool, true, !dbg !6824
  br i1 %lnot, label %while.body, label %while.end, !dbg !6821

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %hash_list, align 8, !dbg !6825
  %next = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !6827
  %10 = load ptr, ptr %next, align 8, !dbg !6827
  store ptr %10, ptr %record, align 8, !dbg !6828
  %11 = load ptr, ptr %record, align 8, !dbg !6829
  %hash = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %11, i32 0, i32 0, !dbg !6830
  call void @list_del(ptr noundef %hash) #18, !dbg !6831
  %12 = load ptr, ptr @jbd2_revoke_record_cache, align 8, !dbg !6832
  %13 = load ptr, ptr %record, align 8, !dbg !6833
  call void @kmem_cache_free(ptr noundef %12, ptr noundef %13) #18, !dbg !6834
  br label %while.cond, !dbg !6821, !llvm.loop !6835

while.end:                                        ; preds = %while.cond
  br label %for.inc, !dbg !6837

for.inc:                                          ; preds = %while.end
  %14 = load i32, ptr %i, align 4, !dbg !6838
  %inc = add i32 %14, 1, !dbg !6838
  store i32 %inc, ptr %i, align 4, !dbg !6838
  br label %for.cond, !dbg !6839, !llvm.loop !6840

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %revoke) #19, !dbg !6842
  call void @llvm.lifetime.end.p0(i64 8, ptr %record) #19, !dbg !6842
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash_list) #19, !dbg !6842
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !6842
  ret void, !dbg !6842
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6843 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6846 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6850, metadata !DIExpression()), !dbg !6854
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6851, metadata !DIExpression()), !dbg !6855
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6852, metadata !DIExpression()), !dbg !6856
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #19, !dbg !6857
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6853, metadata !DIExpression()), !dbg !6858
  %0 = load i64, ptr %n.addr, align 8, !dbg !6859
  %1 = load i64, ptr %size.addr, align 8, !dbg !6859
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6859
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6859
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6859
  store i64 %4, ptr %bytes, align 8, !dbg !6859
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !6859
  %lnot = xor i1 %call, true, !dbg !6859
  %lnot1 = xor i1 %lnot, true, !dbg !6859
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6859
  %conv = sext i32 %lnot.ext to i64, !dbg !6859
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6859
  %tobool = icmp ne i64 %expval, 0, !dbg !6859
  br i1 %tobool, label %if.then, label %if.end, !dbg !6861

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6862

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6863
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6865
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6866

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6867
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6868
  br i1 %8, label %if.then2, label %if.end4, !dbg !6869

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6870
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6871
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #23, !dbg !6872
  store ptr %call3, ptr %retval, align 8, !dbg !6873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6873

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6874
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6875
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #23, !dbg !6876
  store ptr %call5, ptr %retval, align 8, !dbg !6877
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6877

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #19, !dbg !6878
  %13 = load ptr, ptr %retval, align 8, !dbg !6878
  ret ptr %13, !dbg !6878
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #10 align 16 !dbg !6879 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6884, metadata !DIExpression()), !dbg !6885
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6886, !range !6887, !noundef !1202
  %tobool = trunc i8 %0 to i1, !dbg !6886
  %lnot = xor i1 %tobool, true, !dbg !6886
  %lnot1 = xor i1 %lnot, true, !dbg !6886
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6886
  %conv = sext i32 %lnot.ext to i64, !dbg !6886
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6886
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6886
  ret i1 %tobool2, !dbg !6888
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !6889 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6893, metadata !DIExpression()), !dbg !6898
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6894, metadata !DIExpression()), !dbg !6899
  %0 = load i64, ptr %size.addr, align 8, !dbg !6900
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6901
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6902

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6903
  %tobool = icmp ne i64 %2, 0, !dbg !6903
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6904

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !6905
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6895, metadata !DIExpression()), !dbg !6906
  %3 = load i64, ptr %size.addr, align 8, !dbg !6907
  %cmp = icmp ugt i64 %3, 8192, !dbg !6909
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6910

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6911
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6912
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #23, !dbg !6913
  store ptr %call, ptr %retval, align 8, !dbg !6914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6914

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6915
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6915
  store i32 %call2, ptr %index, align 4, !dbg !6916
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6917
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6918
  %9 = ptrtoint ptr %8 to i64, !dbg !6918
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6919
  %idxprom = zext i32 %call3 to i64, !dbg !6920
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6920
  %10 = load i32, ptr %index, align 4, !dbg !6921
  %idxprom4 = zext i32 %10 to i64, !dbg !6920
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6920
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6920
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6922
  %13 = load i64, ptr %size.addr, align 8, !dbg !6923
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #24, !dbg !6924
  store ptr %call6, ptr %retval, align 8, !dbg !6925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6925

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !6926
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6927
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6928
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #23, !dbg !6929
  store ptr %call8, ptr %retval, align 8, !dbg !6930
  br label %return, !dbg !6930

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6931
  ret ptr %16, !dbg !6931
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6932 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6933 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !6934 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6938, metadata !DIExpression()), !dbg !6940
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6939, metadata !DIExpression()), !dbg !6941
  %0 = load i64, ptr %size.addr, align 8, !dbg !6942
  %tobool = icmp ne i64 %0, 0, !dbg !6942
  br i1 %tobool, label %if.end, label %if.then, !dbg !6944

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6945
  br label %return, !dbg !6945

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6946
  %cmp = icmp ule i64 %1, 8, !dbg !6948
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6949

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6950
  br label %return, !dbg !6950

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6951
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6953
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6954

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6955
  %cmp4 = icmp ule i64 %3, 96, !dbg !6956
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6957

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6958
  br label %return, !dbg !6958

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6959
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6961
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6962

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6963
  %cmp9 = icmp ule i64 %5, 192, !dbg !6964
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6965

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6966
  br label %return, !dbg !6966

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6967
  %cmp12 = icmp ule i64 %6, 8, !dbg !6969
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6970

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6971
  br label %return, !dbg !6971

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6972
  %cmp15 = icmp ule i64 %7, 16, !dbg !6974
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6975

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6976
  br label %return, !dbg !6976

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6977
  %cmp18 = icmp ule i64 %8, 32, !dbg !6979
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6980

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6981
  br label %return, !dbg !6981

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6982
  %cmp21 = icmp ule i64 %9, 64, !dbg !6984
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6985

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6986
  br label %return, !dbg !6986

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6987
  %cmp24 = icmp ule i64 %10, 128, !dbg !6989
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6990

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6991
  br label %return, !dbg !6991

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6992
  %cmp27 = icmp ule i64 %11, 256, !dbg !6994
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6995

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6996
  br label %return, !dbg !6996

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6997
  %cmp30 = icmp ule i64 %12, 512, !dbg !6999
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7000

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7001
  br label %return, !dbg !7001

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7002
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7004
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7005

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7006
  br label %return, !dbg !7006

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7007
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7009
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7010

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7011
  br label %return, !dbg !7011

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7012
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7014
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7015

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7016
  br label %return, !dbg !7016

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7017
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7019
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7020

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7021
  br label %return, !dbg !7021

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7022
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7024
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7025

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7026
  br label %return, !dbg !7026

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7027
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7029
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7030

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7031
  br label %return, !dbg !7031

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7032
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7034
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7035

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7036
  br label %return, !dbg !7036

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7037
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7039
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7040

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7041
  br label %return, !dbg !7041

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7042
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7044
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7045

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7046
  br label %return, !dbg !7046

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7047
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7049
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7050

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7051
  br label %return, !dbg !7051

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7052
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7054
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7055

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7056
  br label %return, !dbg !7056

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7057
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7059
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7060

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7061
  br label %return, !dbg !7061

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7062, !range !6887, !noundef !1202
  %tobool69 = trunc i8 %25 to i1, !dbg !7062
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7064

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7065

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #25, !dbg !7066, !srcloc !7069
  unreachable, !dbg !7066

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7070

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7071

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7072

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7074

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7072

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 480, i32 0, i64 12) #19, !dbg !7076, !srcloc !7078
  br label %do.end75, !dbg !7076

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7072

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7079
  br label %return, !dbg !7079

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7080
  ret i32 %26, !dbg !7080
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7081 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !7084 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7088, metadata !DIExpression()), !dbg !7090
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7089, metadata !DIExpression()), !dbg !7091
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7092
  %and = and i32 %0, 17, !dbg !7092
  %cmp = icmp eq i32 %and, 0, !dbg !7092
  %lnot = xor i1 %cmp, true, !dbg !7092
  %lnot1 = xor i1 %lnot, true, !dbg !7092
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7092
  %conv = sext i32 %lnot.ext to i64, !dbg !7092
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7092
  %tobool = icmp ne i64 %expval, 0, !dbg !7092
  br i1 %tobool, label %if.then, label %if.end, !dbg !7094

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7095
  br label %return, !dbg !7095

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7096
  %and2 = and i32 %1, 1, !dbg !7098
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7098
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7099

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7100
  br label %return, !dbg !7100

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7101
  br label %return, !dbg !7101

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7103
  ret i32 %2, !dbg !7103
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7104 dso_local void @__compiletime_assert_245() #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7105 dso_local void @kfree(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7108 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7116, metadata !DIExpression()), !dbg !7121
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7117, metadata !DIExpression()), !dbg !7122
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #19, !dbg !7123
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7118, metadata !DIExpression()), !dbg !7124
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7125
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7126
  %div = udiv i64 %1, 64, !dbg !7126
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7127
  store ptr %add.ptr, ptr %p, align 8, !dbg !7124
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #19, !dbg !7128
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7119, metadata !DIExpression()), !dbg !7129
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7130
  %rem = urem i64 %2, 64, !dbg !7130
  %shl = shl i64 1, %rem, !dbg !7130
  store i64 %shl, ptr %mask, align 8, !dbg !7129
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #19, !dbg !7131
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7120, metadata !DIExpression()), !dbg !7132
  %3 = load ptr, ptr %p, align 8, !dbg !7133
  %4 = load i64, ptr %3, align 8, !dbg !7134
  store i64 %4, ptr %val, align 8, !dbg !7132
  %5 = load i64, ptr %val, align 8, !dbg !7135
  %6 = load i64, ptr %mask, align 8, !dbg !7136
  %and = and i64 %5, %6, !dbg !7137
  %tobool = icmp ne i64 %and, 0, !dbg !7138
  %lnot = xor i1 %tobool, true, !dbg !7138
  %lnot1 = xor i1 %lnot, true, !dbg !7139
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #19, !dbg !7140
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #19, !dbg !7140
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #19, !dbg !7140
  ret i1 %lnot1, !dbg !7141
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7142 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7145, metadata !DIExpression()), !dbg !7147
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7146, metadata !DIExpression()), !dbg !7148
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7149
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7150
  %div = udiv i64 %1, 64, !dbg !7150
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7151
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !7152
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7153
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7154
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !7155
  ret i1 %call, !dbg !7156
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !7157 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7165, metadata !DIExpression()), !dbg !7167
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7166, metadata !DIExpression()), !dbg !7168
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7169
  %1 = load i64, ptr %size.addr, align 8, !dbg !7170
  %conv = trunc i64 %1 to i32, !dbg !7170
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !7171
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7172
  %3 = load i64, ptr %size.addr, align 8, !dbg !7172
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !7172
  ret void, !dbg !7173
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7174 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7177, metadata !DIExpression()), !dbg !7179
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7178, metadata !DIExpression()), !dbg !7180
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7181
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7182
  br i1 %1, label %cond.true, label %cond.false, !dbg !7182

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7183
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7184
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !7185
  %conv = zext i1 %call to i32, !dbg !7185
  br label %cond.end, !dbg !7182

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7186
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7187
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !7188
  %conv2 = zext i1 %call1 to i32, !dbg !7188
  br label %cond.end, !dbg !7182

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7182
  %tobool = icmp ne i32 %cond, 0, !dbg !7182
  ret i1 %tobool, !dbg !7189
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #10 align 16 !dbg !7190 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7195, metadata !DIExpression()), !dbg !7197
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7196, metadata !DIExpression()), !dbg !7198
  ret i1 true, !dbg !7199
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #10 align 16 !dbg !7200 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7205, metadata !DIExpression()), !dbg !7208
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7206, metadata !DIExpression()), !dbg !7209
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7207, metadata !DIExpression()), !dbg !7210
  ret void, !dbg !7211
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7212 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7216, metadata !DIExpression()), !dbg !7218
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7217, metadata !DIExpression()), !dbg !7219
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7220
  %and = and i64 %0, 63, !dbg !7221
  %shl = shl i64 1, %and, !dbg !7222
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7223
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7224
  %shr = ashr i64 %2, 6, !dbg !7225
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7223
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7223
  %and1 = and i64 %shl, %3, !dbg !7226
  %cmp = icmp ne i64 %and1, 0, !dbg !7227
  ret i1 %cmp, !dbg !7228
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7229 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7231, metadata !DIExpression()), !dbg !7234
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7232, metadata !DIExpression()), !dbg !7235
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #19, !dbg !7236
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7233, metadata !DIExpression()), !dbg !7237
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7238
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7239
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #19, !dbg !7240, !srcloc !7241
  %3 = icmp ult i8 %2, 2, !dbg !7240
  call void @llvm.assume(i1 %3), !dbg !7240
  store i8 %2, ptr %oldbit, align 1, !dbg !7240
  %4 = load i8, ptr %oldbit, align 1, !dbg !7242, !range !6887, !noundef !1202
  %tobool = trunc i8 %4 to i1, !dbg !7242
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #19, !dbg !7243
  ret i1 %tobool, !dbg !7244
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7245 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7251, metadata !DIExpression()), !dbg !7253
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7252, metadata !DIExpression()), !dbg !7254
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7255
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7256
  %div = sdiv i64 %1, 64, !dbg !7256
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7257
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !7258
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7259
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7260
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !7261
  ret void, !dbg !7262
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !7263 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7265, metadata !DIExpression()), !dbg !7267
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7266, metadata !DIExpression()), !dbg !7268
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7269
  %1 = load i64, ptr %size.addr, align 8, !dbg !7270
  %conv = trunc i64 %1 to i32, !dbg !7270
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !7271
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7272
  %3 = load i64, ptr %size.addr, align 8, !dbg !7272
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !7272
  ret void, !dbg !7273
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7274 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7276, metadata !DIExpression()), !dbg !7278
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7277, metadata !DIExpression()), !dbg !7279
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7280
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7282
  br i1 %1, label %if.then, label %if.else, !dbg !7283

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7284
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7284
  %shr = ashr i64 %3, 3, !dbg !7284
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7284
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7286
  %and = and i64 %4, 7, !dbg !7286
  %sh_prom = trunc i64 %and to i32, !dbg !7286
  %shl = shl i32 1, %sh_prom, !dbg !7286
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #19, !dbg !7287, !srcloc !7288
  br label %if.end, !dbg !7289

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7290
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7292
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #19, !dbg !7293, !srcloc !7294
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7295
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #10 align 16 !dbg !7296 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7298, metadata !DIExpression()), !dbg !7300
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7299, metadata !DIExpression()), !dbg !7301
  ret i1 true, !dbg !7302
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hash(ptr noundef %journal, i64 noundef %block) #10 align 16 !dbg !7303 {
entry:
  %journal.addr = alloca ptr, align 8
  %block.addr = alloca i64, align 8
  store ptr %journal, ptr %journal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %journal.addr, metadata !7307, metadata !DIExpression()), !dbg !7309
  store i64 %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !7308, metadata !DIExpression()), !dbg !7310
  %0 = load i64, ptr %block.addr, align 8, !dbg !7311
  %1 = load ptr, ptr %journal.addr, align 8, !dbg !7312
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 52, !dbg !7313
  %2 = load ptr, ptr %j_revoke, align 8, !dbg !7313
  %hash_shift = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %2, i32 0, i32 1, !dbg !7314
  %3 = load i32, ptr %hash_shift, align 4, !dbg !7314
  %call = call i32 @hash_64_generic(i64 noundef %0, i32 noundef %3) #18, !dbg !7315
  ret i32 %call, !dbg !7316
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #10 align 16 !dbg !7317 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7321, metadata !DIExpression()), !dbg !7323
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7322, metadata !DIExpression()), !dbg !7324
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7325
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7326
  %2 = load ptr, ptr %head.addr, align 8, !dbg !7327
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !7328
  %3 = load ptr, ptr %next, align 8, !dbg !7328
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #18, !dbg !7329
  ret void, !dbg !7330
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hash_64_generic(i64 noundef %val, i32 noundef %bits) #7 align 16 !dbg !7331 {
entry:
  %val.addr = alloca i64, align 8
  %bits.addr = alloca i32, align 4
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7336, metadata !DIExpression()), !dbg !7338
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !7337, metadata !DIExpression()), !dbg !7339
  %0 = load i64, ptr %val.addr, align 8, !dbg !7340
  %mul = mul i64 %0, 7046029254386353131, !dbg !7341
  %1 = load i32, ptr %bits.addr, align 4, !dbg !7342
  %sub = sub i32 64, %1, !dbg !7343
  %sh_prom = zext i32 %sub to i64, !dbg !7344
  %shr = lshr i64 %mul, %sh_prom, !dbg !7344
  %conv = trunc i64 %shr to i32, !dbg !7340
  ret i32 %conv, !dbg !7345
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #10 align 16 !dbg !7346 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7350, metadata !DIExpression()), !dbg !7353
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7351, metadata !DIExpression()), !dbg !7354
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7352, metadata !DIExpression()), !dbg !7355
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7356
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7358
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7359
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !7360
  br i1 %call, label %if.end, label %if.then, !dbg !7361

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7362

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7363
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7364
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7365
  store ptr %3, ptr %prev1, align 8, !dbg !7366
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7367
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7368
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7369
  store ptr %5, ptr %next2, align 8, !dbg !7370
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7371
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7372
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7373
  store ptr %7, ptr %prev3, align 8, !dbg !7374
  br label %do.body, !dbg !7375

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7376

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7378

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7376

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7380
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7380
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7380
  store volatile ptr %9, ptr %next6, align 8, !dbg !7380
  br label %do.end7, !dbg !7380

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7376

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7382
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #10 align 16 !dbg !7383 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7387, metadata !DIExpression()), !dbg !7390
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7388, metadata !DIExpression()), !dbg !7391
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7389, metadata !DIExpression()), !dbg !7392
  ret i1 true, !dbg !7393
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7394 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7398, metadata !DIExpression()), !dbg !7400
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7399, metadata !DIExpression()), !dbg !7401
  br label %do.body, !dbg !7402

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7403

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7405
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7406
  %div = sdiv i64 %1, 64, !dbg !7406
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7407
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !7408
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7409
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7410
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !7411
  ret i1 %call, !dbg !7412
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !7413 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7415, metadata !DIExpression()), !dbg !7417
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7416, metadata !DIExpression()), !dbg !7418
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7419
  %1 = load i64, ptr %size.addr, align 8, !dbg !7420
  %conv = trunc i64 %1 to i32, !dbg !7420
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !7421
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7422
  %3 = load i64, ptr %size.addr, align 8, !dbg !7422
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !7422
  ret void, !dbg !7423
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7424 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7426, metadata !DIExpression()), !dbg !7430
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7427, metadata !DIExpression()), !dbg !7431
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #19, !dbg !7432
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7428, metadata !DIExpression()), !dbg !7432
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7432
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7432
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #19, !dbg !7432, !srcloc !7433
  %3 = icmp ult i8 %2, 2, !dbg !7432
  call void @llvm.assume(i1 %3), !dbg !7432
  store i8 %2, ptr %c, align 1, !dbg !7432
  %4 = load i8, ptr %c, align 1, !dbg !7432, !range !6887, !noundef !1202
  %tobool = trunc i8 %4 to i1, !dbg !7432
  %frombool = zext i1 %tobool to i8, !dbg !7432
  store i8 %frombool, ptr %tmp, align 1, !dbg !7432
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #19, !dbg !7434
  %5 = load i8, ptr %tmp, align 1, !dbg !7432, !range !6887, !noundef !1202
  %tobool1 = trunc i8 %5 to i1, !dbg !7432
  ret i1 %tobool1, !dbg !7435
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7436 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7438, metadata !DIExpression()), !dbg !7440
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7439, metadata !DIExpression()), !dbg !7441
  br label %do.body, !dbg !7442

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7443

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7445
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7446
  %div = sdiv i64 %1, 64, !dbg !7446
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7447
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !7448
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7449
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7450
  %call = call zeroext i1 @arch_test_and_clear_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !7451
  ret i1 %call, !dbg !7452
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7453 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7455, metadata !DIExpression()), !dbg !7459
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7456, metadata !DIExpression()), !dbg !7460
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #19, !dbg !7461
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7457, metadata !DIExpression()), !dbg !7461
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7461
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7461
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #19, !dbg !7461, !srcloc !7462
  %3 = icmp ult i8 %2, 2, !dbg !7461
  call void @llvm.assume(i1 %3), !dbg !7461
  store i8 %2, ptr %c, align 1, !dbg !7461
  %4 = load i8, ptr %c, align 1, !dbg !7461, !range !6887, !noundef !1202
  %tobool = trunc i8 %4 to i1, !dbg !7461
  %frombool = zext i1 %tobool to i8, !dbg !7461
  store i8 %frombool, ptr %tmp, align 1, !dbg !7461
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #19, !dbg !7463
  %5 = load i8, ptr %tmp, align 1, !dbg !7461, !range !6887, !noundef !1202
  %tobool1 = trunc i8 %5 to i1, !dbg !7461
  ret i1 %tobool1, !dbg !7464
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7465 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7467, metadata !DIExpression()), !dbg !7469
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7468, metadata !DIExpression()), !dbg !7470
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7471
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7472
  %div = sdiv i64 %1, 64, !dbg !7472
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7473
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !7474
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7475
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7476
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !7477
  ret void, !dbg !7478
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !7479 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7481, metadata !DIExpression()), !dbg !7483
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7482, metadata !DIExpression()), !dbg !7484
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7485
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7487
  br i1 %1, label %if.then, label %if.else, !dbg !7488

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7489
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7489
  %shr = ashr i64 %3, 3, !dbg !7489
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7489
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7491
  %and = and i64 %4, 7, !dbg !7491
  %sh_prom = trunc i64 %and to i32, !dbg !7491
  %shl = shl i32 1, %sh_prom, !dbg !7491
  %not = xor i32 %shl, -1, !dbg !7492
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #19, !dbg !7493, !srcloc !7494
  br label %if.end, !dbg !7495

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7496
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7498
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #19, !dbg !7499, !srcloc !7500
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7501
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7502 dso_local void @_raw_spin_lock(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #10 align 16 !dbg !7506 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7508, metadata !DIExpression()), !dbg !7509
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7510
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !7512
  br i1 %call, label %if.end, label %if.then, !dbg !7513

if.then:                                          ; preds = %entry
  br label %return, !dbg !7514

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7515
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7516
  %2 = load ptr, ptr %prev, align 8, !dbg !7516
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !7517
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7518
  %4 = load ptr, ptr %next, align 8, !dbg !7518
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !7519
  br label %return, !dbg !7520

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !7520
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #10 align 16 !dbg !7521 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7525, metadata !DIExpression()), !dbg !7526
  ret i1 true, !dbg !7527
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #10 align 16 !dbg !7528 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7530, metadata !DIExpression()), !dbg !7532
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7531, metadata !DIExpression()), !dbg !7533
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !7534
  %1 = load ptr, ptr %next.addr, align 8, !dbg !7535
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7536
  store ptr %0, ptr %prev1, align 8, !dbg !7537
  br label %do.body, !dbg !7538

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !7539

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !7541

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !7539

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7543
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !7543
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7543
  store volatile ptr %2, ptr %next4, align 8, !dbg !7543
  br label %do.end5, !dbg !7543

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !7539

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !7545
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7546 dso_local void @_raw_spin_unlock(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_journal_aborted(ptr noundef %journal) #10 align 16 !dbg !7547 {
entry:
  %journal.addr = alloca ptr, align 8
  store ptr %journal, ptr %journal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %journal.addr, metadata !7551, metadata !DIExpression()), !dbg !7552
  %0 = load ptr, ptr %journal.addr, align 8, !dbg !7553
  %j_flags = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 0, !dbg !7554
  %1 = load i64, ptr %j_flags, align 8, !dbg !7554
  %and = and i64 %1, 2, !dbg !7555
  %conv = trunc i64 %and to i32, !dbg !7553
  ret i32 %conv, !dbg !7556
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jbd2_journal_has_csum_v2or3(ptr noundef %journal) #10 align 16 !dbg !7557 {
entry:
  %journal.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %journal, ptr %journal.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %journal.addr, metadata !7559, metadata !DIExpression()), !dbg !7565
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !7566
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7560, metadata !DIExpression()), !dbg !7566
  %0 = load ptr, ptr %journal.addr, align 8, !dbg !7566
  %call = call zeroext i1 @jbd2_journal_has_csum_v2or3_feature(ptr noundef %0) #18, !dbg !7566
  br i1 %call, label %land.rhs, label %land.end, !dbg !7566

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %journal.addr, align 8, !dbg !7566
  %j_chksum_driver = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 70, !dbg !7566
  %2 = load ptr, ptr %j_chksum_driver, align 8, !dbg !7566
  %cmp = icmp eq ptr %2, null, !dbg !7566
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !7567
  %lnot = xor i1 %3, true, !dbg !7566
  %lnot1 = xor i1 %lnot, true, !dbg !7566
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7566
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !7566
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !7568
  %tobool = icmp ne i32 %4, 0, !dbg !7568
  %lnot2 = xor i1 %tobool, true, !dbg !7568
  %lnot4 = xor i1 %lnot2, true, !dbg !7568
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !7568
  %conv = sext i32 %lnot.ext5 to i64, !dbg !7568
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7568
  %tobool6 = icmp ne i64 %expval, 0, !dbg !7568
  br i1 %tobool6, label %if.then, label %if.end, !dbg !7566

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !7568

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !7569
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7562, metadata !DIExpression()), !dbg !7569
  store i32 2307, ptr %__flags, align 4, !dbg !7569
  br label %do.body7, !dbg !7569

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !7570

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !7570

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !7569

do.body8:                                         ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !7572
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 1731, i32 %5, i64 12) #19, !dbg !7572, !srcloc !7574
  br label %do.cond9, !dbg !7572

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !7572

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !7569

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !7575

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !7575

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !7568
  br label %do.cond14, !dbg !7569

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !7569

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !7569

if.end:                                           ; preds = %do.end15, %land.end
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !7566
  %tobool16 = icmp ne i32 %6, 0, !dbg !7566
  %lnot17 = xor i1 %tobool16, true, !dbg !7566
  %lnot19 = xor i1 %lnot17, true, !dbg !7566
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !7566
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !7566
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !7566
  store i64 %expval22, ptr %tmp, align 8, !dbg !7568
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !7577
  %7 = load i64, ptr %tmp, align 8, !dbg !7566
  %8 = load ptr, ptr %journal.addr, align 8, !dbg !7578
  %j_chksum_driver23 = getelementptr inbounds %struct.journal_s, ptr %8, i32 0, i32 70, !dbg !7579
  %9 = load ptr, ptr %j_chksum_driver23, align 8, !dbg !7579
  %cmp24 = icmp ne ptr %9, null, !dbg !7580
  %conv25 = zext i1 %cmp24 to i32, !dbg !7580
  ret i32 %conv25, !dbg !7581
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @jbd2_has_feature_64bit(ptr noundef %j) #10 align 16 !dbg !7582 {
entry:
  %j.addr = alloca ptr, align 8
  store ptr %j, ptr %j.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %j.addr, metadata !7586, metadata !DIExpression()), !dbg !7587
  %0 = load ptr, ptr %j.addr, align 8, !dbg !7587
  %call = call zeroext i1 @jbd2_format_support_feature(ptr noundef %0) #18, !dbg !7587
  br i1 %call, label %land.rhs, label %land.end, !dbg !7587

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %j.addr, align 8, !dbg !7587
  %j_superblock = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 5, !dbg !7587
  %2 = load ptr, ptr %j_superblock, align 8, !dbg !7587
  %s_feature_incompat = getelementptr inbounds %struct.journal_superblock_s, ptr %2, i32 0, i32 8, !dbg !7587
  %3 = load i32, ptr %s_feature_incompat, align 4, !dbg !7587
  %and = and i32 %3, 33554432, !dbg !7587
  %cmp = icmp ne i32 %and, 0, !dbg !7587
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !7588
  ret i1 %4, !dbg !7587
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7589 dso_local ptr @jbd2_journal_get_descriptor_buffer(ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @jbd2_file_log_bh(ptr noundef %head, ptr noundef %bh) #10 align 16 !dbg !7592 {
entry:
  %head.addr = alloca ptr, align 8
  %bh.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7596, metadata !DIExpression()), !dbg !7598
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !7597, metadata !DIExpression()), !dbg !7599
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !7600
  %b_assoc_buffers = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 9, !dbg !7601
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7602
  call void @list_add_tail(ptr noundef %b_assoc_buffers, ptr noundef %1) #18, !dbg !7603
  ret void, !dbg !7604
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @jbd2_journal_has_csum_v2or3_feature(ptr noundef %j) #10 align 16 !dbg !7605 {
entry:
  %j.addr = alloca ptr, align 8
  store ptr %j, ptr %j.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %j.addr, metadata !7607, metadata !DIExpression()), !dbg !7608
  %0 = load ptr, ptr %j.addr, align 8, !dbg !7609
  %call = call zeroext i1 @jbd2_has_feature_csum2(ptr noundef %0) #18, !dbg !7610
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !7611

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %j.addr, align 8, !dbg !7612
  %call1 = call zeroext i1 @jbd2_has_feature_csum3(ptr noundef %1) #18, !dbg !7613
  br label %lor.end, !dbg !7611

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %2, !dbg !7614
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @jbd2_has_feature_csum2(ptr noundef %j) #10 align 16 !dbg !7615 {
entry:
  %j.addr = alloca ptr, align 8
  store ptr %j, ptr %j.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %j.addr, metadata !7617, metadata !DIExpression()), !dbg !7618
  %0 = load ptr, ptr %j.addr, align 8, !dbg !7618
  %call = call zeroext i1 @jbd2_format_support_feature(ptr noundef %0) #18, !dbg !7618
  br i1 %call, label %land.rhs, label %land.end, !dbg !7618

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %j.addr, align 8, !dbg !7618
  %j_superblock = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 5, !dbg !7618
  %2 = load ptr, ptr %j_superblock, align 8, !dbg !7618
  %s_feature_incompat = getelementptr inbounds %struct.journal_superblock_s, ptr %2, i32 0, i32 8, !dbg !7618
  %3 = load i32, ptr %s_feature_incompat, align 4, !dbg !7618
  %and = and i32 %3, 134217728, !dbg !7618
  %cmp = icmp ne i32 %and, 0, !dbg !7618
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !7619
  ret i1 %4, !dbg !7618
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @jbd2_has_feature_csum3(ptr noundef %j) #10 align 16 !dbg !7620 {
entry:
  %j.addr = alloca ptr, align 8
  store ptr %j, ptr %j.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %j.addr, metadata !7622, metadata !DIExpression()), !dbg !7623
  %0 = load ptr, ptr %j.addr, align 8, !dbg !7623
  %call = call zeroext i1 @jbd2_format_support_feature(ptr noundef %0) #18, !dbg !7623
  br i1 %call, label %land.rhs, label %land.end, !dbg !7623

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %j.addr, align 8, !dbg !7623
  %j_superblock = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 5, !dbg !7623
  %2 = load ptr, ptr %j_superblock, align 8, !dbg !7623
  %s_feature_incompat = getelementptr inbounds %struct.journal_superblock_s, ptr %2, i32 0, i32 8, !dbg !7623
  %3 = load i32, ptr %s_feature_incompat, align 4, !dbg !7623
  %and = and i32 %3, 268435456, !dbg !7623
  %cmp = icmp ne i32 %and, 0, !dbg !7623
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !7624
  ret i1 %4, !dbg !7623
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @jbd2_format_support_feature(ptr noundef %j) #10 align 16 !dbg !7625 {
entry:
  %j.addr = alloca ptr, align 8
  store ptr %j, ptr %j.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %j.addr, metadata !7627, metadata !DIExpression()), !dbg !7628
  %0 = load ptr, ptr %j.addr, align 8, !dbg !7629
  %j_superblock = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 5, !dbg !7630
  %1 = load ptr, ptr %j_superblock, align 8, !dbg !7630
  %s_header = getelementptr inbounds %struct.journal_superblock_s, ptr %1, i32 0, i32 0, !dbg !7631
  %h_blocktype = getelementptr inbounds %struct.journal_header_s, ptr %s_header, i32 0, i32 1, !dbg !7632
  %2 = load i32, ptr %h_blocktype, align 4, !dbg !7632
  %cmp = icmp ne i32 %2, 50331648, !dbg !7633
  ret i1 %cmp, !dbg !7634
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #10 align 16 !dbg !7635 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7637, metadata !DIExpression()), !dbg !7639
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7638, metadata !DIExpression()), !dbg !7640
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7641
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7642
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7643
  %2 = load ptr, ptr %prev, align 8, !dbg !7643
  %3 = load ptr, ptr %head.addr, align 8, !dbg !7644
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18, !dbg !7645
  ret void, !dbg !7646
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7647 dso_local void @jbd2_descriptor_block_csum_set(ptr noundef, ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_buffer_jwrite(ptr noundef %bh) #7 align 16 !dbg !7650 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !7652, metadata !DIExpression()), !dbg !7653
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !7654
  %b_state = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 0, !dbg !7654
  %1 = ptrtoint ptr %b_state to i64, !dbg !7654
  %cmp = icmp ne i64 %1, 0, !dbg !7654
  %conv = zext i1 %cmp to i32, !dbg !7654
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !7654
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !7654

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %bh.addr, align 8, !dbg !7654
  %b_state1 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 0, !dbg !7654
  %4 = ptrtoint ptr %b_state1 to i64, !dbg !7654
  %cmp2 = icmp ne i64 %4, 0, !dbg !7654
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !7654

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %bh.addr, align 8, !dbg !7654
  %b_state5 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 0, !dbg !7654
  %6 = load i64, ptr %b_state5, align 8, !dbg !7654
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !7654
  br i1 %7, label %cond.true, label %cond.false, !dbg !7653

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %bh.addr, align 8, !dbg !7654
  %b_state6 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 0, !dbg !7654
  %call = call zeroext i1 @const_test_bit(i64 noundef 17, ptr noundef %b_state6) #18, !dbg !7654
  br i1 %call, label %if.end, label %if.then, !dbg !7654

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %bh.addr, align 8, !dbg !7654
  %b_state8 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 0, !dbg !7654
  %call9 = call zeroext i1 @_test_bit(i64 noundef 17, ptr noundef %b_state8) #18, !dbg !7654
  br i1 %call9, label %if.end, label %if.then, !dbg !7653

if.then:                                          ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %bh.addr, align 8, !dbg !7654
  %b_state11 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 0, !dbg !7654
  call void @set_bit(i64 noundef 17, ptr noundef %b_state11) #18, !dbg !7654
  br label %if.end, !dbg !7654

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  ret void, !dbg !7653
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_buffer_dirty(ptr noundef %bh) #7 align 16 !dbg !7656 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !7658, metadata !DIExpression()), !dbg !7659
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !7660
  %b_state = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 0, !dbg !7660
  %1 = ptrtoint ptr %b_state to i64, !dbg !7660
  %cmp = icmp ne i64 %1, 0, !dbg !7660
  %conv = zext i1 %cmp to i32, !dbg !7660
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !7660
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !7660

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %bh.addr, align 8, !dbg !7660
  %b_state1 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 0, !dbg !7660
  %4 = ptrtoint ptr %b_state1 to i64, !dbg !7660
  %cmp2 = icmp ne i64 %4, 0, !dbg !7660
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !7660

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %bh.addr, align 8, !dbg !7660
  %b_state5 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 0, !dbg !7660
  %6 = load i64, ptr %b_state5, align 8, !dbg !7660
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !7660
  br i1 %7, label %cond.true, label %cond.false, !dbg !7659

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %bh.addr, align 8, !dbg !7660
  %b_state6 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 0, !dbg !7660
  %call = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %b_state6) #18, !dbg !7660
  br i1 %call, label %if.end, label %if.then, !dbg !7660

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %bh.addr, align 8, !dbg !7660
  %b_state8 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 0, !dbg !7660
  %call9 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %b_state8) #18, !dbg !7660
  br i1 %call9, label %if.end, label %if.then, !dbg !7659

if.then:                                          ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %bh.addr, align 8, !dbg !7660
  %b_state11 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 0, !dbg !7660
  call void @set_bit(i64 noundef 1, ptr noundef %b_state11) #18, !dbg !7660
  br label %if.end, !dbg !7660

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  ret void, !dbg !7659
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7662 dso_local void @write_dirty_buffer(ptr noundef, i32 noundef) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { noredzone }
attributes #19 = { nounwind }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone nounwind willreturn memory(none) }
attributes #22 = { noredzone allocsize(0,1) }
attributes #23 = { noredzone allocsize(0) }
attributes #24 = { noredzone allocsize(2) }
attributes #25 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5436, !5437, !5438, !5439, !5440, !5441, !5442, !5443}
!llvm.ident = !{!5444}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "jbd2_revoke_record_cache", scope: !2, file: !3, line: 95, type: !2481, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/jbd2/.revoke.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/jbd2/jbd2\22 -D KBUILD_BASENAME=\22revoke\22 -D KBUILD_MODNAME=\22jbd2\22 -D __KBUILD_MODNAME=kmod_jbd2 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/jbd2/revoke.ll fs/jbd2/revoke.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5360, globals: !5387, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/jbd2/revoke.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8dbd1b2622c7d8c602e5843951a2884")
!4 = !{!5, !13, !21, !37, !43, !48, !54, !60, !66, !73, !78, !86, !94, !103, !108, !113, !119, !123, !128, !134, !141, !148, !156, !5211, !5291, !5296, !5306, !5318, !5341}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !14, line: 9, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!17 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!18 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!19 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!20 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !22, line: 1325, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!24 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!25 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!26 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!27 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!28 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!29 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!30 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!31 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!32 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!33 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!34 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!35 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!36 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !38, line: 26, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!41 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!42 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !44, line: 2052, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!47 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !49, line: 54, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "USRQUOTA", value: 0)
!52 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!53 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !55, line: 1381, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!58 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!59 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !61, line: 45, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!64 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!65 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !67, line: 487, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!70 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!71 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!72 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !74, line: 65, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!75 = !{!76, !77}
!76 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!77 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !79, line: 620, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!80 = !{!81, !82, !83, !84, !85}
!81 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!82 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!83 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!84 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!85 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !79, line: 597, baseType: !87, size: 32, elements: !88)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !{!89, !90, !91, !92, !93}
!89 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!90 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!91 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!92 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!93 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !67, line: 547, baseType: !7, size: 32, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !102}
!96 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!97 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!98 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!99 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!100 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!101 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!102 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !67, line: 564, baseType: !7, size: 32, elements: !104)
!104 = !{!105, !106, !107}
!105 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!106 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!107 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !67, line: 577, baseType: !7, size: 32, elements: !109)
!109 = !{!110, !111, !112}
!110 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!111 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!112 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !67, line: 503, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118}
!115 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!117 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!118 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !55, line: 295, baseType: !7, size: 32, elements: !120)
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!122 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !55, line: 285, baseType: !7, size: 32, elements: !124)
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!126 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!127 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !129, line: 16, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "TT_NONE", value: 0)
!132 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!133 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !135, line: 51, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!138 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!139 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!140 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !142, line: 15, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!143 = !{!144, !145, !146, !147}
!144 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!145 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!146 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!147 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !149, line: 68, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!150 = !{!151, !152, !153, !154, !155}
!151 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!152 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!153 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!154 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!155 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !158, file: !157, line: 567, baseType: !7, size: 32, elements: !5281)
!157 = !DIFile(filename: "./include/linux/jbd2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "072378681f9a7c8bcf642036e73917c8")
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_s", file: !157, line: 551, size: 1664, elements: !159)
!159 = !{!160, !5220, !5221, !5222, !5223, !5224, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "t_journal", scope: !158, file: !157, line: 554, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_t", file: !157, line: 105, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_s", file: !157, line: 750, size: 11776, elements: !164)
!164 = !{!165, !167, !168, !169, !231, !4971, !5012, !5013, !5014, !5015, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5070, !5072, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5085, !5099, !5100, !5101, !5104, !5121, !5122, !5123, !5201, !5202, !5207, !5216}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "j_flags", scope: !163, file: !157, line: 756, baseType: !166, size: 64)
!166 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "j_atomic_flags", scope: !163, file: !157, line: 761, baseType: !166, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "j_errno", scope: !163, file: !157, line: 769, baseType: !87, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "j_abort_mutex", scope: !163, file: !157, line: 774, baseType: !170, size: 256, offset: 192)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !171, line: 66, size: 256, elements: !172)
!171 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!172 = !{!173, !186, !220, !225}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !170, file: !171, line: 67, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !175, line: 13, baseType: !176)
!175 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !177, line: 181, baseType: !178)
!177 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 179, size: 64, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !178, file: !177, line: 180, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !182, line: 22, baseType: !183)
!182 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !184, line: 30, baseType: !185)
!184 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!185 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !170, file: !171, line: 68, baseType: !187, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !188, line: 23, baseType: !189)
!188 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !188, line: 14, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !189, file: !188, line: 15, baseType: !192, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !193, line: 44, baseType: !194)
!193 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !193, line: 14, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !193, line: 15, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !194, file: !193, line: 15, size: 32, elements: !198)
!198 = !{!199, !204, !212}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !197, file: !193, line: 16, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !177, line: 174, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 172, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !201, file: !177, line: 173, baseType: !87, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !193, line: 24, baseType: !205, size: 16)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !193, line: 24, size: 16, elements: !206)
!206 = !{!207, !211}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !205, file: !193, line: 25, baseType: !208, size: 8)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !182, line: 17, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !184, line: 21, baseType: !210)
!210 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !205, file: !193, line: 26, baseType: !208, size: 8, offset: 8)
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !193, line: 28, baseType: !213, size: 32)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !193, line: 28, size: 32, elements: !214)
!214 = !{!215, !219}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !213, file: !193, line: 29, baseType: !216, size: 16)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !182, line: 19, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !184, line: 24, baseType: !218)
!218 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !213, file: !193, line: 30, baseType: !216, size: 16, offset: 16)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !170, file: !171, line: 70, baseType: !221, size: 32, offset: 96)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !222, line: 15, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !221, file: !222, line: 20, baseType: !200, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !170, file: !171, line: 72, baseType: !226, size: 128, offset: 128)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !177, line: 190, size: 128, elements: !227)
!227 = !{!228, !230}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !177, line: 191, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !226, file: !177, line: 191, baseType: !229, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "j_sb_buffer", scope: !163, file: !157, line: 779, baseType: !232, size: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_head", file: !234, line: 59, size: 832, elements: !235)
!234 = !DIFile(filename: "./include/linux/buffer_head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc335f14f0fab7e7c331101f97325549")
!235 = !{!236, !237, !238, !4957, !4958, !4959, !4960, !4961, !4966, !4967, !4968, !4969, !4970}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "b_state", scope: !233, file: !234, line: 60, baseType: !166, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "b_this_page", scope: !233, file: !234, line: 61, baseType: !232, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !234, line: 62, baseType: !239, size: 64, offset: 128)
!239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !234, line: 62, size: 64, elements: !240)
!240 = !{!241, !4956}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "b_page", scope: !239, file: !234, line: 63, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !22, line: 74, size: 512, align: 128, elements: !244)
!244 = !{!245, !246, !4950, !4955}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !22, line: 75, baseType: !166, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !22, line: 83, baseType: !247, size: 320, offset: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !22, line: 83, size: 320, elements: !248)
!248 = !{!249, !4876, !4890, !4894, !4949}
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !22, line: 84, baseType: !250, size: 320)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !22, line: 84, size: 320, elements: !251)
!251 = !{!252, !264, !4870, !4875}
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !22, line: 90, baseType: !253, size: 128)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !22, line: 90, size: 128, elements: !254)
!254 = !{!255, !256, !262, !263}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !253, file: !22, line: 91, baseType: !226, size: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, scope: !253, file: !22, line: 94, baseType: !257, size: 128)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !253, file: !22, line: 94, size: 128, elements: !258)
!258 = !{!259, !261}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !257, file: !22, line: 96, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !257, file: !22, line: 98, baseType: !7, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !253, file: !22, line: 102, baseType: !226, size: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !253, file: !22, line: 103, baseType: !226, size: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !250, file: !22, line: 106, baseType: !265, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 472, size: 1536, align: 64, elements: !267)
!267 = !{!268, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4864, !4865, !4866, !4867, !4868, !4869}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !266, file: !44, line: 473, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 641, size: 4800, elements: !271)
!271 = !{!272, !274, !275, !284, !285, !292, !293, !296, !297, !4700, !4701, !4702, !4703, !4704, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4744, !4747, !4748, !4749, !4758, !4759, !4760, !4761}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !270, file: !44, line: 642, baseType: !273, size: 16)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !177, line: 24, baseType: !218)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !270, file: !44, line: 643, baseType: !218, size: 16, offset: 16)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !270, file: !44, line: 644, baseType: !276, size: 32, offset: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !277, line: 23, baseType: !278)
!277 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 21, size: 32, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !278, file: !277, line: 22, baseType: !281, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !177, line: 37, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !283, line: 49, baseType: !7)
!283 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !270, file: !44, line: 645, baseType: !226, size: 128, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !270, file: !44, line: 646, baseType: !286, size: 32, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !277, line: 28, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 26, size: 32, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !287, file: !277, line: 27, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !177, line: 38, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !283, line: 50, baseType: !7)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !270, file: !44, line: 647, baseType: !7, size: 32, offset: 224)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !270, file: !44, line: 650, baseType: !294, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 607, flags: DIFlagFwdDecl)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !270, file: !44, line: 651, baseType: !294, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !270, file: !44, line: 654, baseType: !298, size: 64, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1966, size: 2048, align: 512, elements: !301)
!301 = !{!302, !4534, !4544, !4548, !4552, !4556, !4560, !4564, !4568, !4572, !4576, !4577, !4581, !4585, !4622, !4651, !4655, !4661, !4665, !4669, !4673, !4677, !4681, !4687, !4691}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !300, file: !44, line: 1967, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!306, !269, !306, !7}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !308, line: 82, size: 1536, elements: !309)
!308 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!309 = !{!310, !311, !321, !329, !330, !350, !351, !355, !376, !4517, !4518, !4519, !4520, !4526, !4527, !4528}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !307, file: !308, line: 84, baseType: !7, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !307, file: !308, line: 85, baseType: !312, size: 32, offset: 32)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !313, line: 275, baseType: !314)
!313 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !313, line: 275, size: 32, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !314, file: !313, line: 275, baseType: !317, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !313, line: 69, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !313, line: 64, size: 32, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !318, file: !313, line: 65, baseType: !7, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !307, file: !308, line: 86, baseType: !322, size: 128, offset: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !323, line: 38, size: 128, elements: !324)
!323 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!324 = !{!325, !327}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !323, line: 39, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !322, file: !323, line: 39, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !307, file: !308, line: 87, baseType: !306, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !307, file: !308, line: 88, baseType: !331, size: 128, offset: 256)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !308, line: 49, size: 128, elements: !332)
!332 = !{!333, !347}
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !308, line: 50, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !308, line: 50, size: 64, elements: !335)
!335 = !{!336, !343}
!336 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !308, line: 51, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !308, line: 51, size: 64, elements: !338)
!338 = !{!339, !342}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !337, file: !308, line: 52, baseType: !340, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !182, line: 21, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !184, line: 27, baseType: !7)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !337, file: !308, line: 52, baseType: !340, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !334, file: !308, line: 54, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !182, line: 23, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !184, line: 31, baseType: !346)
!346 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !308, line: 56, baseType: !348, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !307, file: !308, line: 89, baseType: !269, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !307, file: !308, line: 91, baseType: !352, size: 256, offset: 448)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 256, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !307, file: !308, line: 94, baseType: !356, size: 64, offset: 704)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !357, line: 25, size: 64, elements: !358)
!357 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !357, line: 26, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !357, line: 26, size: 64, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !360, file: !357, line: 28, baseType: !345, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !357, line: 30, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !357, line: 30, size: 64, elements: !365)
!365 = !{!366, !375}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !364, file: !357, line: 31, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !368, line: 29, baseType: !369)
!368 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !368, line: 17, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !368, line: 18, baseType: !372, size: 32)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !368, line: 18, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !372, file: !368, line: 19, baseType: !189, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !364, file: !357, line: 32, baseType: !87, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !307, file: !308, line: 95, baseType: !377, size: 64, offset: 768)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !308, line: 128, size: 1024, align: 512, elements: !380)
!380 = !{!381, !385, !386, !393, !402, !406, !410, !414, !415, !419, !424, !4507, !4511}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !379, file: !308, line: 129, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!87, !306, !7}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !379, file: !308, line: 130, baseType: !382, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !379, file: !308, line: 131, baseType: !387, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!87, !390, !392}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !379, file: !308, line: 132, baseType: !394, size: 64, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!87, !390, !7, !397, !400}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !379, file: !308, line: 134, baseType: !403, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!87, !390}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !379, file: !308, line: 135, baseType: !407, size: 64, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!87, !306}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !379, file: !308, line: 136, baseType: !411, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !306}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !379, file: !308, line: 137, baseType: !411, size: 64, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !379, file: !308, line: 138, baseType: !416, size: 64, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !306, !269}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !379, file: !308, line: 139, baseType: !420, size: 64, offset: 576)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!423, !306, !423, !87}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !379, file: !308, line: 140, baseType: !425, size: 64, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!428, !4506}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !430, line: 70, size: 256, elements: !431)
!430 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!431 = !{!432, !433, !4502, !4503}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !429, file: !430, line: 71, baseType: !306, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !429, file: !430, line: 72, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1190, size: 10752, elements: !436)
!436 = !{!437, !438, !441, !442, !443, !446, !2124, !2258, !2298, !2383, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2400, !2404, !2405, !3251, !3257, !3258, !3261, !3262, !3263, !3304, !4436, !4437, !4438, !4439, !4440, !4441, !4444, !4445, !4452, !4453, !4454, !4455, !4456, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !435, file: !44, line: 1191, baseType: !226, size: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !435, file: !44, line: 1192, baseType: !439, size: 32, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !177, line: 21, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !177, line: 18, baseType: !340)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !435, file: !44, line: 1193, baseType: !210, size: 8, offset: 160)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !435, file: !44, line: 1194, baseType: !166, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !435, file: !44, line: 1195, baseType: !444, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !177, line: 52, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !283, line: 88, baseType: !185)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !435, file: !44, line: 1196, baseType: !447, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2366, size: 576, elements: !449)
!449 = !{!450, !451, !452, !458, !462, !466, !470, !2112, !2113, !2114, !2116, !2117, !2118, !2120, !2121, !2122, !2123}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !448, file: !44, line: 2367, baseType: !397, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !448, file: !44, line: 2368, baseType: !87, size: 32, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !448, file: !44, line: 2376, baseType: !453, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!87, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !430, line: 21, flags: DIFlagFwdDecl)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !448, file: !44, line: 2377, baseType: !459, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 75, flags: DIFlagFwdDecl)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !448, file: !44, line: 2378, baseType: !463, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!306, !447, !87, !397, !260}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !448, file: !44, line: 2380, baseType: !467, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !434}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !448, file: !44, line: 2381, baseType: !471, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !473)
!473 = !{!474, !475, !476, !480, !1768, !1794, !1795, !1796, !1797, !1801, !1804, !1805, !1806, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1874, !1878, !1898, !1916, !1917, !1918, !1919, !1928, !1951, !1952, !1955, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1969, !1970, !2070, !2078, !2079, !2080, !2082, !2086, !2087, !2091, !2092, !2093, !2094, !2096, !2097, !2098, !2105, !2106, !2107, !2111}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !472, file: !6, line: 403, baseType: !5, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !472, file: !6, line: 406, baseType: !226, size: 128, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !472, file: !6, line: 409, baseType: !477, size: 448, offset: 192)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 448, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 56)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !472, file: !6, line: 417, baseType: !481, size: 768, offset: 640)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !482)
!482 = !{!483, !1751, !1752, !1753, !1756}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !481, file: !6, line: 46, baseType: !484, size: 512)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !485, line: 64, size: 512, elements: !486)
!485 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!486 = !{!487, !488, !489, !491, !537, !1634, !1741, !1746, !1747, !1748, !1749, !1750}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !484, file: !485, line: 65, baseType: !397, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !484, file: !485, line: 66, baseType: !226, size: 128, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !484, file: !485, line: 67, baseType: !490, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !484, file: !485, line: 68, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !485, line: 168, size: 768, elements: !494)
!494 = !{!495, !496, !497, !498}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !493, file: !485, line: 169, baseType: !226, size: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !493, file: !485, line: 170, baseType: !367, size: 32, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !493, file: !485, line: 171, baseType: !484, size: 512, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !493, file: !485, line: 172, baseType: !499, size: 64, offset: 704)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !485, line: 133, size: 192, elements: !502)
!502 = !{!503, !510, !515}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !501, file: !485, line: 134, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!87, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !501, file: !485, line: 135, baseType: !511, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!397, !508}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !501, file: !485, line: 136, baseType: !516, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!87, !508, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !485, line: 125, size: 20736, elements: !522)
!522 = !{!523, !527, !531, !532, !536}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !521, file: !485, line: 126, baseType: !524, size: 192)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 192, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 3)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !521, file: !485, line: 127, baseType: !528, size: 4096, offset: 192)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 4096, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !521, file: !485, line: 128, baseType: !87, size: 32, offset: 4288)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !521, file: !485, line: 129, baseType: !533, size: 16384, offset: 4320)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 16384, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 2048)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !521, file: !485, line: 130, baseType: !87, size: 32, offset: 20704)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !484, file: !485, line: 69, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !485, line: 116, size: 384, elements: !541)
!541 = !{!542, !546, !572, !1593, !1624, !1628}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !540, file: !485, line: 117, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !490}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !540, file: !485, line: 118, baseType: !547, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !550, line: 254, size: 128, elements: !551)
!550 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!551 = !{!552, !565}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !549, file: !550, line: 255, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!556, !490, !560, !423}
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !177, line: 66, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !283, line: 73, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !283, line: 15, baseType: !559)
!559 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !550, line: 30, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !561, file: !550, line: 31, baseType: !397, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !561, file: !550, line: 32, baseType: !273, size: 16, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !549, file: !550, line: 256, baseType: !566, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!556, !490, !560, !397, !569}
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !177, line: 61, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !283, line: 72, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !283, line: 16, baseType: !166)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !540, file: !485, line: 119, baseType: !573, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !550, line: 84, size: 320, elements: !577)
!577 = !{!578, !579, !583, !1589, !1591}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !576, file: !550, line: 85, baseType: !397, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !576, file: !550, line: 86, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!273, !490, !560, !87}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !576, file: !550, line: 88, baseType: !584, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!273, !490, !587, !87}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !550, line: 175, size: 512, elements: !589)
!589 = !{!590, !591, !592, !593, !597, !1584, !1585}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !588, file: !550, line: 176, baseType: !561, size: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !588, file: !550, line: 177, baseType: !569, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !588, file: !550, line: 178, baseType: !260, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !588, file: !550, line: 179, baseType: !594, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!265}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !588, file: !550, line: 180, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!556, !601, !490, !587, !423, !444, !569}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 994, size: 1856, align: 64, elements: !603)
!603 = !{!604, !623, !624, !626, !627, !628, !629, !630, !702, !914, !923, !929, !930, !1574, !1575, !1576, !1577, !1579, !1580, !1583}
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !602, file: !44, line: 995, baseType: !605, size: 128)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !602, file: !44, line: 995, size: 128, elements: !606)
!606 = !{!607, !613, !622}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !605, file: !44, line: 996, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !609, line: 60, size: 64, elements: !610)
!609 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !608, file: !609, line: 61, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !605, file: !44, line: 997, baseType: !614, size: 128, align: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !177, line: 232, size: 128, align: 64, elements: !615)
!615 = !{!616, !618}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !614, file: !177, line: 233, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !614, file: !177, line: 234, baseType: !619, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !617}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !605, file: !44, line: 998, baseType: !7, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !602, file: !44, line: 1005, baseType: !367, size: 32, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !602, file: !44, line: 1006, baseType: !625, size: 32, offset: 160)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !177, line: 156, baseType: !7)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !602, file: !44, line: 1007, baseType: !174, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !602, file: !44, line: 1008, baseType: !170, size: 256, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !602, file: !44, line: 1009, baseType: !444, size: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !602, file: !44, line: 1010, baseType: !7, size: 32, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !602, file: !44, line: 1011, baseType: !631, size: 256, offset: 640)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 948, size: 256, elements: !632)
!632 = !{!633, !654, !698, !699, !700, !701}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !631, file: !44, line: 949, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !635, line: 34, baseType: !636)
!635 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !635, line: 25, size: 64, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !636, file: !635, line: 26, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !640, line: 27, baseType: !641)
!640 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !640, line: 13, size: 64, elements: !642)
!642 = !{!643, !653}
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !640, line: 14, baseType: !644, size: 32)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !640, line: 14, size: 32, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !644, file: !640, line: 15, baseType: !200, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !640, line: 16, baseType: !648, size: 32)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !644, file: !640, line: 16, size: 32, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !648, file: !640, line: 18, baseType: !208, size: 8)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !648, file: !640, line: 19, baseType: !652, size: 24, offset: 8)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 24, elements: !525)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !641, file: !640, line: 26, baseType: !192, size: 32, offset: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !631, file: !44, line: 950, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !14, line: 59, size: 768, elements: !657)
!657 = !{!658, !664, !665, !666, !679, !680, !687, !688}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !656, file: !14, line: 61, baseType: !659, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !660, line: 113, baseType: !661)
!660 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !660, line: 111, size: 32, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !661, file: !660, line: 112, baseType: !200, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !656, file: !14, line: 62, baseType: !7, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !656, file: !14, line: 63, baseType: !367, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !656, file: !14, line: 65, baseType: !667, size: 256, offset: 128)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 256, elements: !677)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !177, line: 194, size: 64, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !668, file: !177, line: 195, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !177, line: 198, size: 128, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !177, line: 199, baseType: !671, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !672, file: !177, line: 199, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!677 = !{!678}
!678 = !DISubrange(count: 4)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !656, file: !14, line: 66, baseType: !668, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !656, file: !14, line: 68, baseType: !681, size: 192, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !682, line: 41, baseType: !683)
!682 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !682, line: 37, size: 192, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !683, file: !682, line: 38, baseType: !367, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !683, file: !682, line: 39, baseType: !226, size: 128, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !656, file: !14, line: 69, baseType: !614, size: 128, align: 64, offset: 640)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !656, file: !14, line: 70, baseType: !689, offset: 768)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, elements: !696)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !14, line: 54, size: 128, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !690, file: !14, line: 55, baseType: !87, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !690, file: !14, line: 56, baseType: !694, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !14, line: 56, flags: DIFlagFwdDecl)
!696 = !{!697}
!697 = !DISubrange(count: -1)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !631, file: !44, line: 951, baseType: !13, size: 32, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !631, file: !44, line: 952, baseType: !276, size: 32, offset: 160)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !631, file: !44, line: 952, baseType: !276, size: 32, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !631, file: !44, line: 953, baseType: !87, size: 32, offset: 224)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !602, file: !44, line: 1012, baseType: !703, size: 64, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !706, line: 110, size: 1472, elements: !707)
!706 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !724, !725, !726, !727, !728, !729, !859, !860, !861, !862, !863, !894, !897, !901, !909}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !705, file: !706, line: 111, baseType: !174, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !705, file: !706, line: 112, baseType: !276, size: 32, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !705, file: !706, line: 113, baseType: !286, size: 32, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !705, file: !706, line: 114, baseType: !276, size: 32, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !705, file: !706, line: 115, baseType: !286, size: 32, offset: 160)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !705, file: !706, line: 116, baseType: !276, size: 32, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !705, file: !706, line: 117, baseType: !286, size: 32, offset: 224)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !705, file: !706, line: 118, baseType: !276, size: 32, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !705, file: !706, line: 119, baseType: !286, size: 32, offset: 288)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !705, file: !706, line: 120, baseType: !7, size: 32, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !705, file: !706, line: 121, baseType: !719, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !720, line: 24, baseType: !721)
!720 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !720, line: 24, size: 64, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !721, file: !720, line: 24, baseType: !344, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !705, file: !706, line: 122, baseType: !719, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !705, file: !706, line: 123, baseType: !719, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !705, file: !706, line: 124, baseType: !719, size: 64, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !705, file: !706, line: 125, baseType: !719, size: 64, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !705, file: !706, line: 127, baseType: !210, size: 8, offset: 704)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !705, file: !706, line: 129, baseType: !730, size: 64, offset: 768)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !732, line: 195, size: 1728, elements: !733)
!732 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!733 = !{!734, !735, !740, !752, !761, !764, !765, !772, !773, !774, !775, !778, !779, !780, !782, !783, !823, !844}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !731, file: !732, line: 196, baseType: !659, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !731, file: !732, line: 197, baseType: !736, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !732, line: 28, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !177, line: 104, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !182, line: 20, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !184, line: 26, baseType: !87)
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 198, baseType: !741, size: 192, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 198, size: 192, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !741, file: !732, line: 199, baseType: !226, size: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !741, file: !732, line: 200, baseType: !745, size: 192, align: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !746, line: 5, size: 192, align: 64, elements: !747)
!746 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!747 = !{!748, !749, !751}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !745, file: !746, line: 6, baseType: !166, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !745, file: !746, line: 7, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !745, file: !746, line: 8, baseType: !750, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !731, file: !732, line: 205, baseType: !753, size: 320, offset: 256)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !754, line: 48, size: 320, elements: !755)
!754 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!755 = !{!756, !757, !758, !759, !760}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !753, file: !754, line: 49, baseType: !174, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !753, file: !754, line: 55, baseType: !174, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !753, file: !754, line: 57, baseType: !221, size: 32, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !753, file: !754, line: 59, baseType: !187, size: 32, offset: 160)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !753, file: !754, line: 60, baseType: !226, size: 128, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !731, file: !732, line: 206, baseType: !762, size: 64, offset: 576)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !732, line: 206, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !731, file: !732, line: 207, baseType: !260, size: 64, offset: 640)
!765 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 208, baseType: !766, size: 64, offset: 704)
!766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 208, size: 64, elements: !767)
!767 = !{!768, !771}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !766, file: !732, line: 209, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !770, line: 8, baseType: !183)
!770 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!771 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !766, file: !732, line: 210, baseType: !769, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !731, file: !732, line: 212, baseType: !769, size: 64, offset: 768)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !731, file: !732, line: 213, baseType: !276, size: 32, offset: 832)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !731, file: !732, line: 214, baseType: !286, size: 32, offset: 864)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !731, file: !732, line: 215, baseType: !776, size: 32, offset: 896)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !732, line: 31, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !177, line: 110, baseType: !340)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !731, file: !732, line: 216, baseType: !218, size: 16, offset: 928)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !731, file: !732, line: 217, baseType: !218, size: 16, offset: 944)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !731, file: !732, line: 221, baseType: !781, size: 16, offset: 960)
!781 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !732, line: 228, baseType: !166, size: 64, offset: 1024)
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 245, baseType: !784, size: 320, offset: 1088)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 245, size: 320, elements: !785)
!785 = !{!786, !815}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !784, file: !732, line: 246, baseType: !787, size: 320)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !732, line: 114, size: 320, elements: !788)
!788 = !{!789, !790, !802, !805, !814}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !787, file: !732, line: 116, baseType: !166, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !732, line: 117, baseType: !791, size: 64, offset: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !732, line: 117, size: 64, elements: !792)
!792 = !{!793, !801}
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !732, line: 118, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !791, file: !732, line: 118, size: 64, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !794, file: !732, line: 120, baseType: !216, size: 16)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !794, file: !732, line: 121, baseType: !798, size: 48, offset: 16)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 48, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 6)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !791, file: !732, line: 127, baseType: !166, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !732, line: 129, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !732, line: 102, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !787, file: !732, line: 130, baseType: !806, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !732, line: 108, size: 192, elements: !808)
!808 = !{!809, !810, !811}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !807, file: !732, line: 109, baseType: !614, size: 128, align: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !807, file: !732, line: 110, baseType: !659, size: 32, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !807, file: !732, line: 111, baseType: !812, size: 8, offset: 160)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !177, line: 35, baseType: !813)
!813 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !787, file: !732, line: 131, baseType: !397, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !732, line: 247, baseType: !816, size: 320)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !784, file: !732, line: 247, size: 320, elements: !817)
!817 = !{!818, !819, !820, !821, !822}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !816, file: !732, line: 248, baseType: !166, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !816, file: !732, line: 249, baseType: !166, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !816, file: !732, line: 250, baseType: !803, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !816, file: !732, line: 251, baseType: !806, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !816, file: !732, line: 252, baseType: !423, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 260, baseType: !824, size: 256, offset: 1408)
!824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 260, size: 256, elements: !825)
!825 = !{!826, !832}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !824, file: !732, line: 261, baseType: !827, size: 256)
!827 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !732, line: 134, size: 256, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !827, file: !732, line: 135, baseType: !260, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !827, file: !732, line: 136, baseType: !831, size: 256)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 256, elements: !677)
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !732, line: 262, baseType: !833, size: 256)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !732, line: 262, size: 256, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !833, file: !732, line: 264, baseType: !226, size: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !833, file: !732, line: 265, baseType: !837, size: 128, offset: 128)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !838, line: 22, size: 128, elements: !839)
!838 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!839 = !{!840, !843}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !837, file: !838, line: 23, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !838, line: 23, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !837, file: !838, line: 24, baseType: !166, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !731, file: !732, line: 280, baseType: !845, size: 64, offset: 1664)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !732, line: 176, size: 192, elements: !847)
!847 = !{!848, !857, !858}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !846, file: !732, line: 177, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !732, line: 171, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!87, !730, !853, !855, !730}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !804)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !846, file: !732, line: 178, baseType: !730, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !846, file: !732, line: 179, baseType: !803, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !705, file: !706, line: 130, baseType: !730, size: 64, offset: 832)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !705, file: !706, line: 131, baseType: !730, size: 64, offset: 896)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !705, file: !706, line: 132, baseType: !730, size: 64, offset: 960)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !705, file: !706, line: 135, baseType: !260, size: 64, offset: 1024)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !705, file: !706, line: 137, baseType: !864, size: 64, offset: 1088)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !866, line: 14, size: 1088, elements: !867)
!866 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!867 = !{!868, !869, !878, !879, !880, !881, !882, !883}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !865, file: !866, line: 15, baseType: !659, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !865, file: !866, line: 17, baseType: !870, size: 320, offset: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !871, line: 22, size: 320, elements: !872)
!871 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!872 = !{!873, !874, !875, !876}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !870, file: !871, line: 23, baseType: !187, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !870, file: !871, line: 24, baseType: !181, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !870, file: !871, line: 26, baseType: !226, size: 128, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !870, file: !871, line: 28, baseType: !877, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !865, file: !866, line: 19, baseType: !166, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !865, file: !866, line: 20, baseType: !174, size: 64, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !865, file: !866, line: 23, baseType: !672, size: 128, offset: 512)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !865, file: !866, line: 24, baseType: !276, size: 32, offset: 640)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !865, file: !866, line: 29, baseType: !174, size: 64, offset: 704)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !865, file: !866, line: 36, baseType: !884, size: 320, offset: 768)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !885, line: 15, size: 320, elements: !886)
!885 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!886 = !{!887, !888, !889, !890, !891, !892, !893}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !884, file: !885, line: 16, baseType: !187, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !884, file: !885, line: 18, baseType: !87, size: 32, offset: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !884, file: !885, line: 19, baseType: !87, size: 32, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !884, file: !885, line: 20, baseType: !87, size: 32, offset: 96)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !884, file: !885, line: 21, baseType: !87, size: 32, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !884, file: !885, line: 22, baseType: !166, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !884, file: !885, line: 23, baseType: !166, size: 64, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !705, file: !706, line: 138, baseType: !895, size: 64, offset: 1152)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !277, line: 18, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !705, file: !706, line: 139, baseType: !898, size: 64, offset: 1216)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !900, line: 16, flags: DIFlagFwdDecl)
!900 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!901 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !705, file: !706, line: 140, baseType: !902, size: 64, offset: 1280)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !706, line: 25, size: 64, elements: !904)
!904 = !{!905, !906, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !903, file: !706, line: 26, baseType: !200, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !903, file: !706, line: 27, baseType: !87, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !903, file: !706, line: 28, baseType: !908, offset: 64)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, elements: !696)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !706, line: 142, baseType: !910, size: 128, offset: 1344)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !706, line: 142, size: 128, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !910, file: !706, line: 143, baseType: !87, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !910, file: !706, line: 144, baseType: !614, size: 128, align: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !602, file: !44, line: 1013, baseType: !915, size: 256, offset: 960)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 970, size: 256, elements: !916)
!916 = !{!917, !918, !919, !920, !921, !922}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !915, file: !44, line: 971, baseType: !166, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !915, file: !44, line: 972, baseType: !7, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !915, file: !44, line: 973, baseType: !7, size: 32, offset: 96)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !915, file: !44, line: 974, baseType: !7, size: 32, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !915, file: !44, line: 975, baseType: !7, size: 32, offset: 160)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !915, file: !44, line: 976, baseType: !444, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !602, file: !44, line: 1014, baseType: !924, size: 128, offset: 1216)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !925, line: 8, size: 128, elements: !926)
!925 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !924, file: !925, line: 9, baseType: !428, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !924, file: !925, line: 10, baseType: !306, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !602, file: !44, line: 1015, baseType: !269, size: 64, offset: 1344)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !602, file: !44, line: 1016, baseType: !931, size: 64, offset: 1408)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1914, size: 2112, elements: !934)
!934 = !{!935, !936, !940, !945, !949, !1122, !1123, !1138, !1151, !1159, !1163, !1164, !1493, !1494, !1498, !1503, !1504, !1508, !1512, !1518, !1519, !1523, !1524, !1531, !1535, !1539, !1545, !1549, !1555, !1559, !1563, !1564, !1570}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !933, file: !44, line: 1915, baseType: !471, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !933, file: !44, line: 1916, baseType: !937, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!444, !601, !444, !87}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !933, file: !44, line: 1917, baseType: !941, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!556, !601, !423, !569, !944}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !933, file: !44, line: 1918, baseType: !946, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!556, !601, !397, !569, !944}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !933, file: !44, line: 1919, baseType: !950, size: 64, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!556, !953, !1058}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 373, size: 384, elements: !955)
!955 = !{!956, !957, !958, !962, !963, !964, !965}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !954, file: !44, line: 374, baseType: !601, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !954, file: !44, line: 375, baseType: !444, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !954, file: !44, line: 376, baseType: !959, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !953, !559}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !954, file: !44, line: 377, baseType: !260, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !954, file: !44, line: 378, baseType: !87, size: 32, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !954, file: !44, line: 379, baseType: !216, size: 16, offset: 288)
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !44, line: 380, baseType: !966, size: 64, offset: 320)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !44, line: 380, size: 64, elements: !967)
!967 = !{!968, !1054}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !966, file: !44, line: 386, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !971, line: 998, size: 448, elements: !972)
!971 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!972 = !{!973, !1040, !1041}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !970, file: !971, line: 999, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !22, line: 293, size: 1536, elements: !976)
!976 = !{!977, !1007, !1021}
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !22, line: 295, baseType: !978, size: 512)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !22, line: 295, size: 512, elements: !979)
!979 = !{!980, !1006}
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !22, line: 296, baseType: !981, size: 448)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !22, line: 296, size: 448, elements: !982)
!982 = !{!983, !984, !993, !994, !995, !1004, !1005}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !22, line: 298, baseType: !166, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !22, line: 299, baseType: !985, size: 128, offset: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !981, file: !22, line: 299, size: 128, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !985, file: !22, line: 300, baseType: !226, size: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !22, line: 302, baseType: !989, size: 128)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !22, line: 302, size: 128, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !989, file: !22, line: 303, baseType: !260, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !989, file: !22, line: 305, baseType: !7, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !981, file: !22, line: 310, baseType: !265, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !981, file: !22, line: 311, baseType: !166, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !22, line: 312, baseType: !996, size: 64, offset: 320)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !981, file: !22, line: 312, size: 64, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !996, file: !22, line: 313, baseType: !260, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !996, file: !22, line: 314, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !22, line: 257, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 255, size: 64, elements: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1001, file: !22, line: 256, baseType: !166, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !981, file: !22, line: 316, baseType: !200, size: 32, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !981, file: !22, line: 317, baseType: !200, size: 32, offset: 416)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !978, file: !22, line: 323, baseType: !243, size: 512, align: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !22, line: 325, baseType: !1008, size: 512, offset: 512)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !22, line: 325, size: 512, elements: !1009)
!1009 = !{!1010, !1020}
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !22, line: 326, baseType: !1011, size: 320)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !22, line: 326, size: 320, elements: !1012)
!1012 = !{!1013, !1014, !1015, !1016, !1017, !1018, !1019}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1011, file: !22, line: 327, baseType: !166, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1011, file: !22, line: 328, baseType: !166, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1011, file: !22, line: 329, baseType: !166, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1011, file: !22, line: 331, baseType: !200, size: 32, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1011, file: !22, line: 332, baseType: !200, size: 32, offset: 224)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1011, file: !22, line: 333, baseType: !200, size: 32, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1011, file: !22, line: 335, baseType: !7, size: 32, offset: 288)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1008, file: !22, line: 339, baseType: !243, size: 512, align: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !22, line: 341, baseType: !1022, size: 512, offset: 1024)
!1022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !22, line: 341, size: 512, elements: !1023)
!1023 = !{!1024, !1033, !1039}
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !22, line: 342, baseType: !1025, size: 384)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !22, line: 342, size: 384, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1025, file: !22, line: 343, baseType: !166, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1025, file: !22, line: 344, baseType: !166, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1025, file: !22, line: 346, baseType: !260, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1025, file: !22, line: 347, baseType: !260, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1025, file: !22, line: 348, baseType: !260, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1025, file: !22, line: 349, baseType: !260, size: 64, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !22, line: 352, baseType: !1034, size: 256)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !22, line: 352, size: 256, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1034, file: !22, line: 353, baseType: !166, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1034, file: !22, line: 354, baseType: !166, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1034, file: !22, line: 356, baseType: !226, size: 128, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1022, file: !22, line: 359, baseType: !243, size: 512, align: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !970, file: !971, line: 1000, baseType: !87, size: 32, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !970, file: !971, line: 1001, baseType: !1042, size: 320, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !682, line: 14, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !682, line: 30, size: 320, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1053}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1043, file: !682, line: 31, baseType: !7, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1043, file: !682, line: 32, baseType: !260, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1043, file: !682, line: 33, baseType: !1048, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !682, line: 16, baseType: !1049)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!87, !1052, !7, !87, !260}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1043, file: !682, line: 34, baseType: !226, size: 128, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !966, file: !44, line: 395, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!556, !260}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1060, line: 41, size: 320, elements: !1061)
!1060 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1067, !1072, !1117}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1059, file: !1060, line: 42, baseType: !208, size: 8)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1059, file: !1060, line: 43, baseType: !812, size: 8, offset: 8)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1059, file: !1060, line: 44, baseType: !812, size: 8, offset: 16)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1059, file: !1060, line: 45, baseType: !812, size: 8, offset: 24)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1059, file: !1060, line: 46, baseType: !812, size: 8, offset: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !1060, line: 47, baseType: !1068, size: 64, offset: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !1060, line: 47, size: 64, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1068, file: !1060, line: 48, baseType: !569, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1068, file: !1060, line: 49, baseType: !87, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !1060, line: 61, baseType: !1073, size: 128, offset: 128)
!1073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !1060, line: 61, size: 128, elements: !1074)
!1074 = !{!1075, !1081}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1073, file: !1060, line: 67, baseType: !1076, size: 128)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1077, line: 17, size: 128, elements: !1078)
!1077 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1076, file: !1077, line: 19, baseType: !260, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1076, file: !1077, line: 20, baseType: !570, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !1060, line: 68, baseType: !1082, size: 128)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1073, file: !1060, line: 68, size: 128, elements: !1083)
!1083 = !{!1084, !1116}
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !1060, line: 69, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1082, file: !1060, line: 69, size: 64, elements: !1086)
!1086 = !{!1087, !1090, !1097, !1106, !1115}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1085, file: !1060, line: 71, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1076)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1085, file: !1060, line: 72, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1060, line: 17, size: 128, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1093, file: !1060, line: 18, baseType: !260, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1093, file: !1060, line: 19, baseType: !569, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1085, file: !1060, line: 73, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1101, line: 31, size: 128, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1102 = !{!1103, !1104, !1105}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1100, file: !1101, line: 32, baseType: !242, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1100, file: !1101, line: 33, baseType: !7, size: 32, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1100, file: !1101, line: 34, baseType: !7, size: 32, offset: 96)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1085, file: !1060, line: 74, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1109, line: 296, size: 128, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1110 = !{!1111, !1112, !1114}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1108, file: !1109, line: 297, baseType: !367, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1108, file: !1109, line: 299, baseType: !1113, size: 32, offset: 32)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !177, line: 154, baseType: !7)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1108, file: !1109, line: 300, baseType: !260, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1085, file: !1060, line: 75, baseType: !260, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1082, file: !1060, line: 77, baseType: !569, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !1060, line: 80, baseType: !1118, size: 64, offset: 256)
!1118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !1060, line: 80, size: 64, elements: !1119)
!1119 = !{!1120, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1118, file: !1060, line: 81, baseType: !166, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1118, file: !1060, line: 82, baseType: !444, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !933, file: !44, line: 1920, baseType: !950, size: 64, offset: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !933, file: !44, line: 1921, baseType: !1124, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!87, !953, !1127, !7}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !55, line: 1559, size: 192, elements: !1129)
!1129 = !{!1130, !1133, !1134}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1128, file: !55, line: 1560, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !55, line: 32, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1128, file: !55, line: 1561, baseType: !812, size: 8, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1128, file: !55, line: 1562, baseType: !1135, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !1127}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !933, file: !44, line: 1923, baseType: !1139, size: 64, offset: 448)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!87, !601, !1142}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1858, size: 128, elements: !1144)
!1144 = !{!1145, !1150}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1143, file: !44, line: 1859, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1855, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!812, !1142, !397, !87, !444, !344, !7}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1143, file: !44, line: 1860, baseType: !444, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !933, file: !44, line: 1924, baseType: !1152, size: 64, offset: 512)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!1155, !601, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1156, line: 59, baseType: !7)
!1156 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !933, file: !44, line: 1925, baseType: !1160, size: 64, offset: 576)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!559, !601, !7, !166}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !933, file: !44, line: 1926, baseType: !1160, size: 64, offset: 640)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !933, file: !44, line: 1927, baseType: !1165, size: 64, offset: 704)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!87, !601, !1168}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !22, line: 625, size: 1344, elements: !1170)
!1170 = !{!1171, !1180, !1349, !1355, !1362, !1363, !1368, !1369, !1374, !1375, !1378, !1486, !1487, !1488, !1489, !1490, !1491}
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !22, line: 628, baseType: !1172, size: 128)
!1172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !22, line: 628, size: 128, elements: !1173)
!1173 = !{!1174, !1179}
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1172, file: !22, line: 629, baseType: !1175, size: 128)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1172, file: !22, line: 629, size: 128, elements: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1175, file: !22, line: 631, baseType: !166, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1175, file: !22, line: 632, baseType: !166, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1172, file: !22, line: 635, baseType: !614, size: 128, align: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1169, file: !22, line: 639, baseType: !1181, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !22, line: 733, size: 10240, elements: !1183)
!1183 = !{!1184, !1347}
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !22, line: 734, baseType: !1185, size: 10240)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1182, file: !22, line: 734, size: 10240, elements: !1186)
!1186 = !{!1187, !1191, !1205, !1209, !1210, !1211, !1212, !1213, !1214, !1223, !1224, !1225, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1264, !1266, !1269, !1316, !1317, !1318, !1321, !1322, !1323, !1326, !1327, !1328, !1334, !1335}
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !22, line: 739, baseType: !1188, size: 512, align: 512)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1185, file: !22, line: 739, size: 512, align: 512, elements: !1189)
!1189 = !{!1190}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1188, file: !22, line: 747, baseType: !200, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1185, file: !22, line: 750, baseType: !1192, size: 128, offset: 512)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1193, line: 218, size: 128, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1194 = !{!1195, !1203, !1204}
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !1193, line: 219, baseType: !1196, size: 32)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !1193, line: 219, size: 32, elements: !1197)
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1196, file: !1193, line: 220, baseType: !367, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1196, file: !1193, line: 221, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1193, line: 197, baseType: !1201)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1193, line: 197, elements: !1202)
!1202 = !{}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1192, file: !1193, line: 223, baseType: !7, size: 32, offset: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1192, file: !1193, line: 224, baseType: !260, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1185, file: !22, line: 752, baseType: !1206, size: 64, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!166, !601, !166, !166, !166, !166}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1185, file: !22, line: 756, baseType: !166, size: 64, offset: 704)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1185, file: !22, line: 757, baseType: !166, size: 64, offset: 768)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1185, file: !22, line: 760, baseType: !166, size: 64, offset: 832)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1185, file: !22, line: 761, baseType: !166, size: 64, offset: 896)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1185, file: !22, line: 763, baseType: !166, size: 64, offset: 960)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1185, file: !22, line: 764, baseType: !1215, size: 64, offset: 1024)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1217, line: 299, baseType: !1218)
!1217 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1217, line: 299, size: 64, elements: !1219)
!1219 = !{!1220}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1218, file: !1217, line: 299, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1222, line: 18, baseType: !166)
!1222 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1185, file: !22, line: 773, baseType: !200, size: 32, offset: 1088)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1185, file: !22, line: 785, baseType: !200, size: 32, offset: 1120)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1185, file: !22, line: 795, baseType: !1226, size: 64, offset: 1152)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !22, line: 726, size: 128, elements: !1228)
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1227, file: !22, line: 727, baseType: !344, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1227, file: !22, line: 728, baseType: !87, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1185, file: !22, line: 801, baseType: !166, size: 64, offset: 1216)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1185, file: !22, line: 804, baseType: !174, size: 64, offset: 1280)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1185, file: !22, line: 806, baseType: !87, size: 32, offset: 1344)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1185, file: !22, line: 808, baseType: !367, size: 32, offset: 1376)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1185, file: !22, line: 823, baseType: !753, size: 320, offset: 1408)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1185, file: !22, line: 825, baseType: !226, size: 128, offset: 1728)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1185, file: !22, line: 845, baseType: !87, size: 32, offset: 1856)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1185, file: !22, line: 849, baseType: !166, size: 64, offset: 1920)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1185, file: !22, line: 850, baseType: !166, size: 64, offset: 1984)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1185, file: !22, line: 852, baseType: !166, size: 64, offset: 2048)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1185, file: !22, line: 853, baseType: !166, size: 64, offset: 2112)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1185, file: !22, line: 854, baseType: !176, size: 64, offset: 2176)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1185, file: !22, line: 855, baseType: !166, size: 64, offset: 2240)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1185, file: !22, line: 856, baseType: !166, size: 64, offset: 2304)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1185, file: !22, line: 857, baseType: !166, size: 64, offset: 2368)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1185, file: !22, line: 858, baseType: !166, size: 64, offset: 2432)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1185, file: !22, line: 865, baseType: !317, size: 32, offset: 2496)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1185, file: !22, line: 867, baseType: !367, size: 32, offset: 2528)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1185, file: !22, line: 869, baseType: !166, size: 64, offset: 2560)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1185, file: !22, line: 869, baseType: !166, size: 64, offset: 2624)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1185, file: !22, line: 869, baseType: !166, size: 64, offset: 2688)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1185, file: !22, line: 869, baseType: !166, size: 64, offset: 2752)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1185, file: !22, line: 870, baseType: !166, size: 64, offset: 2816)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1185, file: !22, line: 870, baseType: !166, size: 64, offset: 2880)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1185, file: !22, line: 870, baseType: !166, size: 64, offset: 2944)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1185, file: !22, line: 871, baseType: !166, size: 64, offset: 3008)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1185, file: !22, line: 871, baseType: !166, size: 64, offset: 3072)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1185, file: !22, line: 871, baseType: !166, size: 64, offset: 3136)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1185, file: !22, line: 871, baseType: !166, size: 64, offset: 3200)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1185, file: !22, line: 873, baseType: !1261, size: 3328, offset: 3264)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 3328, elements: !1262)
!1262 = !{!1263}
!1263 = !DISubrange(count: 52)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1185, file: !22, line: 875, baseType: !1265, size: 1280, offset: 6592)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 1280, elements: !677)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1185, file: !22, line: 877, baseType: !1267, size: 64, offset: 7872)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !22, line: 877, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1185, file: !22, line: 880, baseType: !1270, size: 1088, offset: 7936)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1271, line: 72, baseType: !1272)
!1271 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1271, line: 23, size: 1088, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1281, !1282, !1283, !1284, !1311, !1312, !1313}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1272, file: !1271, line: 28, baseType: !344, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1272, file: !1271, line: 38, baseType: !176, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1272, file: !1271, line: 40, baseType: !166, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1272, file: !1271, line: 43, baseType: !753, size: 320, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1272, file: !1271, line: 44, baseType: !1279, size: 64, offset: 512)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1271, line: 44, flags: DIFlagFwdDecl)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1272, file: !1271, line: 48, baseType: !166, size: 64, offset: 576)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1272, file: !1271, line: 59, baseType: !170, size: 256, offset: 640)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1272, file: !1271, line: 60, baseType: !260, size: 64, offset: 896)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1272, file: !1271, line: 61, baseType: !1285, size: 64, offset: 960)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1288, line: 13, size: 1216, elements: !1289)
!1288 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1289 = !{!1290, !1291, !1292, !1293, !1294, !1295, !1296, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1287, file: !1288, line: 14, baseType: !260, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1287, file: !1288, line: 15, baseType: !166, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1287, file: !1288, line: 17, baseType: !166, size: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1287, file: !1288, line: 17, baseType: !166, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1287, file: !1288, line: 18, baseType: !166, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1287, file: !1288, line: 18, baseType: !166, size: 64, offset: 320)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1287, file: !1288, line: 19, baseType: !1297, size: 64, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1287, file: !1288, line: 21, baseType: !559, size: 64, offset: 448)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1287, file: !1288, line: 23, baseType: !559, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1287, file: !1288, line: 24, baseType: !559, size: 64, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1287, file: !1288, line: 25, baseType: !559, size: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1287, file: !1288, line: 26, baseType: !559, size: 64, offset: 704)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1287, file: !1288, line: 27, baseType: !559, size: 64, offset: 768)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1287, file: !1288, line: 28, baseType: !559, size: 64, offset: 832)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1287, file: !1288, line: 29, baseType: !559, size: 64, offset: 896)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1287, file: !1288, line: 30, baseType: !559, size: 64, offset: 960)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1287, file: !1288, line: 31, baseType: !559, size: 64, offset: 1024)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1287, file: !1288, line: 32, baseType: !559, size: 64, offset: 1088)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1287, file: !1288, line: 33, baseType: !559, size: 64, offset: 1152)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1272, file: !1271, line: 63, baseType: !200, size: 32, offset: 1024)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1272, file: !1271, line: 69, baseType: !216, size: 16, offset: 1056)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1272, file: !1271, line: 70, baseType: !1314, size: 16, offset: 1072)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !182, line: 18, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !184, line: 23, baseType: !781)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1185, file: !22, line: 882, baseType: !166, size: 64, offset: 9024)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1185, file: !22, line: 885, baseType: !367, size: 32, offset: 9088)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1185, file: !22, line: 886, baseType: !1319, size: 64, offset: 9152)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !22, line: 732, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1185, file: !22, line: 901, baseType: !895, size: 64, offset: 9216)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1185, file: !22, line: 904, baseType: !601, size: 64, offset: 9280)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1185, file: !22, line: 906, baseType: !1324, size: 64, offset: 9344)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !22, line: 906, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1185, file: !22, line: 930, baseType: !200, size: 32, offset: 9408)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1185, file: !22, line: 933, baseType: !200, size: 32, offset: 9440)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1185, file: !22, line: 935, baseType: !1329, size: 64, offset: 9472)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !135, line: 103, size: 64, elements: !1330)
!1330 = !{!1331}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1329, file: !135, line: 104, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !135, line: 101, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1185, file: !22, line: 940, baseType: !174, size: 64, offset: 9536)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1185, file: !22, line: 942, baseType: !1336, size: 256, offset: 9600)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1337, line: 98, size: 256, elements: !1338)
!1337 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1338 = !{!1339, !1340, !1341}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1336, file: !1337, line: 99, baseType: !174, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1336, file: !1337, line: 100, baseType: !226, size: 128, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1336, file: !1337, line: 101, baseType: !1342, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1337, line: 21, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1182, file: !22, line: 986, baseType: !1348, offset: 10240)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, elements: !696)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1169, file: !22, line: 640, baseType: !1350, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1217, line: 297, baseType: !1351)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1217, line: 297, size: 64, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1351, file: !1217, line: 297, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1222, line: 19, baseType: !166)
!1355 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !22, line: 646, baseType: !1356, size: 64, offset: 256)
!1356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !22, line: 646, size: 64, elements: !1357)
!1357 = !{!1358, !1361}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1356, file: !22, line: 647, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !22, line: 542, baseType: !166)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1356, file: !22, line: 648, baseType: !1360, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1169, file: !22, line: 666, baseType: !87, size: 32, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1169, file: !22, line: 667, baseType: !1364, size: 64, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !22, line: 579, size: 320, elements: !1366)
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1365, file: !22, line: 580, baseType: !753, size: 320)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1169, file: !22, line: 670, baseType: !812, size: 8, offset: 448)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1169, file: !22, line: 681, baseType: !1370, size: 256, offset: 512)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1169, file: !22, line: 678, size: 256, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1370, file: !22, line: 679, baseType: !745, size: 192, align: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1370, file: !22, line: 680, baseType: !166, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1169, file: !22, line: 689, baseType: !226, size: 128, offset: 768)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1169, file: !22, line: 691, baseType: !1376, size: 64, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !22, line: 691, flags: DIFlagFwdDecl)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1169, file: !22, line: 694, baseType: !1379, size: 64, offset: 960)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1381)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1382, line: 563, size: 1024, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1383 = !{!1384, !1388, !1389, !1393, !1397, !1401, !1450, !1454, !1458, !1462, !1463, !1464, !1468, !1472, !1478, !1482}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1381, file: !1382, line: 564, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !1168}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1381, file: !1382, line: 569, baseType: !1385, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1381, file: !1382, line: 571, baseType: !1390, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!87, !1168, !166}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1381, file: !1382, line: 572, baseType: !1394, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!87, !1168}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1381, file: !1382, line: 578, baseType: !1398, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!87, !1168, !166, !166, !166}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1381, file: !1382, line: 580, baseType: !1402, size: 64, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !22, line: 1184, baseType: !7)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1382, line: 512, size: 896, elements: !1408)
!1408 = !{!1409, !1417, !1418, !1425, !1432, !1442, !1443, !1444, !1446, !1448}
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1407, file: !1382, line: 513, baseType: !1410, size: 320)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1407, file: !1382, line: 513, size: 320, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1415, !1416}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1410, file: !1382, line: 514, baseType: !1168, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1410, file: !1382, line: 515, baseType: !1113, size: 32, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1410, file: !1382, line: 516, baseType: !166, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1410, file: !1382, line: 517, baseType: !166, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1410, file: !1382, line: 518, baseType: !166, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1407, file: !1382, line: 520, baseType: !21, size: 32, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1407, file: !1382, line: 522, baseType: !1419, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1222, line: 22, baseType: !1421)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1222, line: 22, size: 64, elements: !1422)
!1422 = !{!1423}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1421, file: !1222, line: 22, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1222, line: 15, baseType: !166)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1407, file: !1382, line: 524, baseType: !1426, size: 64, offset: 448)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1217, line: 372, baseType: !1428)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1217, line: 372, size: 64, elements: !1429)
!1429 = !{!1430}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1428, file: !1217, line: 372, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1222, line: 16, baseType: !166)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1407, file: !1382, line: 527, baseType: !1433, size: 64, offset: 512)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1407, file: !1382, line: 527, size: 64, elements: !1434)
!1434 = !{!1435, !1441}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1433, file: !1382, line: 528, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1222, line: 21, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1222, line: 21, size: 64, elements: !1438)
!1438 = !{!1439}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1437, file: !1222, line: 21, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1222, line: 14, baseType: !166)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1433, file: !1382, line: 529, baseType: !1420, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1407, file: !1382, line: 534, baseType: !242, size: 64, offset: 576)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1407, file: !1382, line: 535, baseType: !242, size: 64, offset: 640)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1407, file: !1382, line: 541, baseType: !1445, size: 64, offset: 704)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1407, file: !1382, line: 545, baseType: !1447, size: 64, offset: 768)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1407, file: !1382, line: 549, baseType: !1449, size: 64, offset: 832)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1217, line: 520, baseType: !242)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1381, file: !1382, line: 581, baseType: !1451, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1405, !1406, !7}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1381, file: !1382, line: 582, baseType: !1455, size: 64, offset: 448)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1405, !1406, !166, !166}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1381, file: !1382, line: 584, baseType: !1459, size: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!166, !1168}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1381, file: !1382, line: 588, baseType: !1402, size: 64, offset: 576)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1381, file: !1382, line: 591, baseType: !1402, size: 64, offset: 640)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1381, file: !1382, line: 597, baseType: !1465, size: 64, offset: 704)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!87, !1168, !166, !260, !87, !87}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1381, file: !1382, line: 603, baseType: !1469, size: 64, offset: 768)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!397, !1168}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1381, file: !1382, line: 613, baseType: !1473, size: 64, offset: 832)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!87, !1168, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !22, line: 717, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1381, file: !1382, line: 625, baseType: !1479, size: 64, offset: 896)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!1476, !1168, !166}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1381, file: !1382, line: 633, baseType: !1483, size: 64, offset: 960)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!242, !1168, !166}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1169, file: !22, line: 697, baseType: !166, size: 64, offset: 1024)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1169, file: !22, line: 699, baseType: !601, size: 64, offset: 1088)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1169, file: !22, line: 700, baseType: !260, size: 64, offset: 1152)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1169, file: !22, line: 711, baseType: !174, size: 64, offset: 1216)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1169, file: !22, line: 717, baseType: !1476, size: 64, offset: 1280)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1169, file: !22, line: 722, baseType: !1492, offset: 1344)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !22, line: 570, elements: !1202)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !933, file: !44, line: 1928, baseType: !166, size: 64, offset: 768)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !933, file: !44, line: 1929, baseType: !1495, size: 64, offset: 832)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!87, !269, !601}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !933, file: !44, line: 1930, baseType: !1499, size: 64, offset: 896)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!87, !601, !1502}
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1061, baseType: !260)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !933, file: !44, line: 1931, baseType: !1495, size: 64, offset: 960)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !933, file: !44, line: 1932, baseType: !1505, size: 64, offset: 1024)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!87, !601, !444, !444, !87}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !933, file: !44, line: 1933, baseType: !1509, size: 64, offset: 1088)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!87, !87, !601, !87}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !933, file: !44, line: 1934, baseType: !1513, size: 64, offset: 1152)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!87, !601, !87, !1516}
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1063, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !933, file: !44, line: 1935, baseType: !1206, size: 64, offset: 1216)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !933, file: !44, line: 1936, baseType: !1520, size: 64, offset: 1280)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!87, !87}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !933, file: !44, line: 1937, baseType: !1513, size: 64, offset: 1344)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !933, file: !44, line: 1938, baseType: !1525, size: 64, offset: 1408)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!556, !1528, !601, !944, !569, !7}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1530, line: 59, flags: DIFlagFwdDecl)
!1530 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !933, file: !44, line: 1939, baseType: !1532, size: 64, offset: 1472)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!556, !601, !944, !1528, !569, !7}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !933, file: !44, line: 1940, baseType: !1536, size: 64, offset: 1536)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !601}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !933, file: !44, line: 1941, baseType: !1540, size: 64, offset: 1600)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!87, !601, !87, !1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !933, file: !44, line: 1942, baseType: !1546, size: 64, offset: 1664)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!559, !601, !87, !444, !444}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !933, file: !44, line: 1944, baseType: !1550, size: 64, offset: 1728)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !1553, !601}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1530, line: 66, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !933, file: !44, line: 1948, baseType: !1556, size: 64, offset: 1792)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!556, !601, !444, !601, !444, !569, !7}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !933, file: !44, line: 1950, baseType: !1560, size: 64, offset: 1856)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!444, !601, !444, !601, !444, !444, !7}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !933, file: !44, line: 1953, baseType: !1505, size: 64, offset: 1920)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !933, file: !44, line: 1954, baseType: !1565, size: 64, offset: 1984)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!87, !1568, !7}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !44, line: 1911, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !933, file: !44, line: 1955, baseType: !1571, size: 64, offset: 2048)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!87, !1568, !1127, !7}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !602, file: !44, line: 1018, baseType: !344, size: 64, offset: 1472)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !602, file: !44, line: 1020, baseType: !260, size: 64, offset: 1536)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !602, file: !44, line: 1023, baseType: !260, size: 64, offset: 1600)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !602, file: !44, line: 1027, baseType: !1578, size: 64, offset: 1664)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !602, file: !44, line: 1029, baseType: !265, size: 64, offset: 1728)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !602, file: !44, line: 1030, baseType: !1581, size: 32, offset: 1792)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1582, line: 8, baseType: !340)
!1582 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !602, file: !44, line: 1031, baseType: !1581, size: 32, offset: 1824)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !588, file: !550, line: 182, baseType: !598, size: 64, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !588, file: !550, line: 184, baseType: !1586, size: 64, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!87, !601, !490, !587, !1168}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !576, file: !550, line: 90, baseType: !1590, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !576, file: !550, line: 91, baseType: !1592, size: 64, offset: 256)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !540, file: !485, line: 120, baseType: !1594, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!1597, !508}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1599)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !38, line: 39, size: 384, elements: !1600)
!1600 = !{!1601, !1602, !1606, !1610, !1616, !1620}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1599, file: !38, line: 40, baseType: !37, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1599, file: !38, line: 41, baseType: !1603, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!812}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1599, file: !38, line: 42, baseType: !1607, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!260}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1599, file: !38, line: 43, baseType: !1611, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!1297, !1614}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !38, line: 19, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1599, file: !38, line: 44, baseType: !1617, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!1297}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1599, file: !38, line: 45, baseType: !1621, size: 64, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !260}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !540, file: !485, line: 121, baseType: !1625, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!1297, !508}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !540, file: !485, line: 122, baseType: !1629, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{null, !508, !1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !484, file: !485, line: 70, baseType: !1635, size: 64, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1637, line: 190, size: 1152, elements: !1638)
!1637 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1733, !1734, !1735, !1736, !1737, !1740}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1636, file: !1637, line: 191, baseType: !200, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1636, file: !1637, line: 192, baseType: !200, size: 32, offset: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1636, file: !1637, line: 202, baseType: !1635, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1636, file: !1637, line: 203, baseType: !397, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1636, file: !1637, line: 205, baseType: !745, size: 192, align: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1636, file: !1637, line: 207, baseType: !1297, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1636, file: !1637, line: 208, baseType: !7, size: 32, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !1637, line: 209, baseType: !1647, size: 256, offset: 512)
!1647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1636, file: !1637, line: 209, size: 256, elements: !1648)
!1648 = !{!1649, !1661, !1665}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1647, file: !1637, line: 210, baseType: !1650, size: 256)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1637, line: 153, size: 256, elements: !1651)
!1651 = !{!1652, !1653, !1657, !1660}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1650, file: !1637, line: 154, baseType: !166, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1650, file: !1637, line: 156, baseType: !1654, size: 64, offset: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !746, line: 12, size: 64, elements: !1655)
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1654, file: !746, line: 13, baseType: !750, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1650, file: !1637, line: 162, baseType: !1658, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1637, line: 162, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1650, file: !1637, line: 167, baseType: !166, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1647, file: !1637, line: 211, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1637, line: 170, size: 64, elements: !1663)
!1663 = !{!1664}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1662, file: !1637, line: 171, baseType: !1635, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1647, file: !1637, line: 212, baseType: !1666, size: 256)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1637, line: 174, size: 256, elements: !1667)
!1667 = !{!1668, !1728, !1731, !1732}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1666, file: !1637, line: 175, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1637, line: 271, size: 768, elements: !1672)
!1672 = !{!1673, !1693, !1697, !1701, !1705, !1709, !1713, !1717, !1718, !1719, !1720, !1724}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1671, file: !1637, line: 276, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!87, !1677}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1637, line: 251, size: 1216, elements: !1679)
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1678, file: !1637, line: 253, baseType: !1635, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1678, file: !1637, line: 254, baseType: !601, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1678, file: !1637, line: 255, baseType: !1553, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1678, file: !1637, line: 256, baseType: !260, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1678, file: !1637, line: 259, baseType: !170, size: 256, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1678, file: !1637, line: 260, baseType: !170, size: 256, offset: 512)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1678, file: !1637, line: 261, baseType: !87, size: 32, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1678, file: !1637, line: 262, baseType: !226, size: 128, offset: 832)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1678, file: !1637, line: 263, baseType: !423, size: 64, offset: 960)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1678, file: !1637, line: 265, baseType: !569, size: 64, offset: 1024)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1678, file: !1637, line: 266, baseType: !812, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1678, file: !1637, line: 267, baseType: !812, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1678, file: !1637, line: 268, baseType: !1379, size: 64, offset: 1152)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1671, file: !1637, line: 277, baseType: !1694, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !1677}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1671, file: !1637, line: 290, baseType: !1698, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!87, !1553, !260}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1671, file: !1637, line: 292, baseType: !1702, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!260, !1553, !944}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1671, file: !1637, line: 293, baseType: !1706, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!260, !1553, !260, !944}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1671, file: !1637, line: 294, baseType: !1710, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !1553, !260}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1671, file: !1637, line: 296, baseType: !1714, size: 64, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!556, !1677, !423, !569, !444}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1671, file: !1637, line: 306, baseType: !569, size: 64, offset: 448)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1671, file: !1637, line: 313, baseType: !812, size: 8, offset: 512)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1671, file: !1637, line: 314, baseType: !1714, size: 64, offset: 576)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1671, file: !1637, line: 317, baseType: !1721, size: 64, offset: 640)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!1155, !1677, !1157}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1671, file: !1637, line: 320, baseType: !1725, size: 64, offset: 704)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!87, !1677, !1168}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1666, file: !1637, line: 176, baseType: !1729, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1637, line: 35, flags: DIFlagFwdDecl)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1666, file: !1637, line: 177, baseType: !444, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1666, file: !1637, line: 178, baseType: !1635, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1636, file: !1637, line: 215, baseType: !260, size: 64, offset: 768)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1636, file: !1637, line: 221, baseType: !344, size: 64, offset: 832)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1636, file: !1637, line: 223, baseType: !218, size: 16, offset: 896)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1636, file: !1637, line: 224, baseType: !273, size: 16, offset: 912)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1636, file: !1637, line: 225, baseType: !1738, size: 64, offset: 960)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1637, line: 36, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1636, file: !1637, line: 227, baseType: !614, size: 128, align: 64, offset: 1024)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !484, file: !485, line: 71, baseType: !1742, size: 32, offset: 448)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1743, line: 19, size: 32, elements: !1744)
!1743 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1744 = !{!1745}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1742, file: !1743, line: 20, baseType: !659, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !484, file: !485, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !484, file: !485, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !484, file: !485, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !484, file: !485, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !484, file: !485, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !481, file: !6, line: 47, baseType: !471, size: 64, offset: 512)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !481, file: !6, line: 48, baseType: !490, size: 64, offset: 576)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !481, file: !6, line: 49, baseType: !1754, size: 64, offset: 640)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !481, file: !6, line: 50, baseType: !1757, size: 64, offset: 704)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1759, line: 26, size: 256, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1758, file: !1759, line: 27, baseType: !7, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1758, file: !1759, line: 28, baseType: !1763, size: 192, offset: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1764, line: 43, size: 192, elements: !1765)
!1764 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1765 = !{!1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1763, file: !1764, line: 44, baseType: !187, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1763, file: !1764, line: 45, baseType: !226, size: 128, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !472, file: !6, line: 418, baseType: !1769, size: 64, offset: 1408)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1771)
!1771 = !{!1772, !1773, !1778, !1782, !1786, !1790}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1770, file: !6, line: 54, baseType: !561, size: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1770, file: !6, line: 55, baseType: !1774, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!556, !1769, !1777, !423}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1770, file: !6, line: 57, baseType: !1779, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!556, !1769, !1777, !397, !569}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1770, file: !6, line: 59, baseType: !1783, size: 64, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !471, !397}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1770, file: !6, line: 60, baseType: !1787, size: 64, offset: 320)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!87, !471}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1770, file: !6, line: 61, baseType: !1791, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{null, !471}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !472, file: !6, line: 419, baseType: !397, size: 64, offset: 1472)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !472, file: !6, line: 420, baseType: !397, size: 64, offset: 1536)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !472, file: !6, line: 421, baseType: !490, size: 64, offset: 1600)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !472, file: !6, line: 424, baseType: !1798, size: 64, offset: 1664)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1800)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !472, file: !6, line: 425, baseType: !1802, size: 64, offset: 1728)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !472, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !472, file: !6, line: 435, baseType: !170, size: 256, offset: 1856)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !472, file: !6, line: 437, baseType: !1807, size: 64, offset: 2112)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1809, line: 69, size: 320, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1810 = !{!1811, !1812, !1813, !1830, !1832, !1836, !1837}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1808, file: !1809, line: 70, baseType: !397, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1808, file: !1809, line: 71, baseType: !471, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1808, file: !1809, line: 72, baseType: !1814, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1809, line: 47, size: 256, elements: !1817)
!1817 = !{!1818, !1819, !1825, !1829}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1816, file: !1809, line: 49, baseType: !7, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1816, file: !1809, line: 51, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!87, !397, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1816, file: !1809, line: 53, baseType: !1826, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!87, !423, !1823}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1816, file: !1809, line: 55, baseType: !1621, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1808, file: !1809, line: 73, baseType: !1831, size: 16, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1808, file: !1809, line: 74, baseType: !1833, size: 8, offset: 208)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !182, line: 16, baseType: !1834)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !184, line: 20, baseType: !1835)
!1835 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1808, file: !1809, line: 75, baseType: !208, size: 8, offset: 216)
!1837 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 76, baseType: !1838, size: 64, offset: 256)
!1838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 76, size: 64, elements: !1839)
!1839 = !{!1840, !1841, !1848}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1838, file: !1809, line: 77, baseType: !260, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1838, file: !1809, line: 78, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1844)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1809, line: 86, size: 128, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1844, file: !1809, line: 87, baseType: !7, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1844, file: !1809, line: 88, baseType: !423, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1838, file: !1809, line: 79, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1809, line: 92, size: 256, elements: !1852)
!1852 = !{!1853, !1854, !1855, !1857, !1858}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1851, file: !1809, line: 94, baseType: !7, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1851, file: !1809, line: 95, baseType: !7, size: 32, offset: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1851, file: !1809, line: 96, baseType: !1856, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1851, file: !1809, line: 97, baseType: !1814, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1851, file: !1809, line: 98, baseType: !260, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !472, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !472, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !472, file: !6, line: 442, baseType: !1798, size: 64, offset: 2240)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !472, file: !6, line: 443, baseType: !1802, size: 64, offset: 2304)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !472, file: !6, line: 444, baseType: !812, size: 8, offset: 2368)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !472, file: !6, line: 451, baseType: !812, size: 8, offset: 2376)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !472, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !472, file: !6, line: 455, baseType: !1867, size: 64, offset: 2432)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1869, line: 23, size: 96, elements: !1870)
!1869 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1870 = !{!1871, !1872, !1873}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1868, file: !1869, line: 24, baseType: !87, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1868, file: !1869, line: 24, baseType: !87, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1868, file: !1869, line: 24, baseType: !87, size: 32, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !472, file: !6, line: 458, baseType: !1875, size: 64, offset: 2496)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!87}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !472, file: !6, line: 460, baseType: !1879, size: 4032, align: 512, offset: 2560)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1880, size: 4032, elements: !1896)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1881)
!1881 = !{!1882, !1883, !1884}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1880, file: !6, line: 363, baseType: !260, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1880, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1880, file: !6, line: 367, baseType: !1885, size: 448, offset: 128)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1885, file: !6, line: 320, baseType: !471, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1885, file: !6, line: 321, baseType: !1889, size: 384, offset: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1890, line: 40, size: 384, elements: !1891)
!1890 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1891 = !{!1892}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1889, file: !1890, line: 41, baseType: !1893, size: 384, align: 64)
!1893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 384, align: 64, elements: !1894)
!1894 = !{!1895}
!1895 = !DISubrange(count: 2)
!1896 = !{!1897}
!1897 = !DISubrange(count: 7)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !472, file: !6, line: 463, baseType: !1899, size: 192, offset: 6592)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1900, line: 8, size: 192, elements: !1901)
!1900 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1901 = !{!1902, !1903, !1905}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1899, file: !1900, line: 10, baseType: !7, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1899, file: !1900, line: 11, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1899, file: !1900, line: 12, baseType: !1906, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1908, line: 59, size: 48, elements: !1909)
!1908 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1907, file: !1908, line: 60, baseType: !1314, size: 16)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1907, file: !1908, line: 61, baseType: !1314, size: 16, offset: 16)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1907, file: !1908, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1907, file: !1908, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1907, file: !1908, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1907, file: !1908, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !472, file: !6, line: 465, baseType: !166, size: 64, offset: 6784)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !472, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !472, file: !6, line: 470, baseType: !226, size: 128, offset: 6912)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !472, file: !6, line: 471, baseType: !1920, size: 64, offset: 7040)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1922, line: 33, size: 96, elements: !1923)
!1922 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1923 = !{!1924, !1925, !1926, !1927}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1921, file: !1922, line: 37, baseType: !87, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1921, file: !1922, line: 43, baseType: !87, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1921, file: !1922, line: 45, baseType: !218, size: 16, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1921, file: !1922, line: 47, baseType: !218, size: 16, offset: 80)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !472, file: !6, line: 476, baseType: !1929, size: 64, offset: 7104)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1931)
!1931 = !{!1932, !1948, !1949, !1950}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1930, file: !6, line: 379, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1935, line: 204, baseType: !1936)
!1935 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1935, line: 197, size: 192, elements: !1937)
!1937 = !{!1938, !1940, !1941, !1942, !1944, !1946}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1936, file: !1935, line: 198, baseType: !1939, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1935, line: 21, baseType: !341)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1936, file: !1935, line: 199, baseType: !210, size: 8, offset: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1936, file: !1935, line: 200, baseType: !210, size: 8, offset: 40)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1936, file: !1935, line: 201, baseType: !1943, size: 16, offset: 48)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1935, line: 17, baseType: !217)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1936, file: !1935, line: 202, baseType: !1945, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1935, line: 16, baseType: !345)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1936, file: !1935, line: 203, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1935, line: 22, baseType: !345)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1930, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1930, file: !6, line: 381, baseType: !423, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1930, file: !6, line: 382, baseType: !423, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !472, file: !6, line: 477, baseType: !1930, size: 256, offset: 7168)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !472, file: !6, line: 480, baseType: !1953, size: 64, offset: 7424)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !472, file: !6, line: 483, baseType: !1956, size: 64, offset: 7488)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !472, file: !6, line: 488, baseType: !423, size: 64, offset: 7552)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !472, file: !6, line: 492, baseType: !260, size: 64, offset: 7616)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !472, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !472, file: !6, line: 495, baseType: !260, size: 64, offset: 7744)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !472, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !472, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !472, file: !6, line: 500, baseType: !1965, size: 64, offset: 7872)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1967, line: 45, baseType: !1968)
!1967 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !472, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !472, file: !6, line: 504, baseType: !1971, size: 64, offset: 8000)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1974, line: 96, size: 192, elements: !1975)
!1974 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1975 = !{!1976, !1977, !2031, !2034}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1973, file: !1974, line: 97, baseType: !7, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1973, file: !1974, line: 98, baseType: !1978, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1974, line: 24, size: 3072, elements: !1980)
!1980 = !{!1981, !1983, !1984, !1985, !1986, !2000, !2001, !2002, !2003, !2015, !2016, !2017, !2028, !2029, !2030}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1979, file: !1974, line: 26, baseType: !1982, size: 128)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 128, elements: !1894)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1979, file: !1974, line: 27, baseType: !1982, size: 128, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1979, file: !1974, line: 28, baseType: !87, size: 32, offset: 256)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1979, file: !1974, line: 31, baseType: !367, size: 32, align: 512, offset: 512)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1979, file: !1974, line: 32, baseType: !1987, size: 960, offset: 576)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1988, line: 206, size: 960, elements: !1989)
!1988 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1989 = !{!1990, !1991, !1994, !1996, !1997, !1999}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1987, file: !1988, line: 207, baseType: !617, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1987, file: !1988, line: 208, baseType: !1992, size: 256, offset: 64)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1993, size: 256, elements: !677)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1987, file: !1988, line: 209, baseType: !1995, size: 256, offset: 320)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 256, elements: !677)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1987, file: !1988, line: 213, baseType: !559, size: 64, offset: 576)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1987, file: !1988, line: 215, baseType: !1998, size: 256, offset: 640)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 256, elements: !677)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1987, file: !1988, line: 216, baseType: !208, size: 8, offset: 896)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1979, file: !1974, line: 33, baseType: !166, size: 64, offset: 1536)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1979, file: !1974, line: 34, baseType: !166, size: 64, offset: 1600)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1979, file: !1974, line: 35, baseType: !812, size: 8, offset: 1664)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1979, file: !1974, line: 36, baseType: !2004, size: 320, offset: 1728)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2005, line: 11, size: 320, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2006 = !{!2007, !2008, !2009, !2014}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2004, file: !2005, line: 16, baseType: !672, size: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2004, file: !2005, line: 17, baseType: !166, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2004, file: !2005, line: 18, baseType: !2010, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !2013}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2004, file: !2005, line: 19, baseType: !340, size: 32, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1979, file: !1974, line: 37, baseType: !1336, size: 256, offset: 2048)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1979, file: !1974, line: 38, baseType: !614, size: 128, align: 64, offset: 2304)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1979, file: !1974, line: 39, baseType: !2018, size: 64, offset: 2432)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1974, line: 49, size: 768, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2019, file: !1974, line: 50, baseType: !367, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2019, file: !1974, line: 51, baseType: !1995, size: 256, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2019, file: !1974, line: 53, baseType: !1995, size: 256, offset: 320)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2019, file: !1974, line: 54, baseType: !166, size: 64, offset: 576)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2019, file: !1974, line: 55, baseType: !2018, size: 64, offset: 640)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2019, file: !1974, line: 56, baseType: !87, size: 32, offset: 704)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2019, file: !1974, line: 57, baseType: !87, size: 32, offset: 736)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1979, file: !1974, line: 40, baseType: !166, size: 64, offset: 2496)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1979, file: !1974, line: 42, baseType: !87, size: 32, offset: 2560)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1979, file: !1974, line: 43, baseType: !1972, size: 64, offset: 2624)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1973, file: !1974, line: 99, baseType: !2032, offset: 128)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2033, line: 211, elements: !1202)
!2033 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1973, file: !1974, line: 100, baseType: !2035, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1974, line: 63, size: 3008, elements: !2037)
!2037 = !{!2038, !2039, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2069}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2036, file: !1974, line: 64, baseType: !2018, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2036, file: !1974, line: 65, baseType: !2040, size: 192, offset: 64)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2018, size: 192, elements: !525)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2036, file: !1974, line: 67, baseType: !87, size: 32, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2036, file: !1974, line: 68, baseType: !170, size: 256, offset: 320)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2036, file: !1974, line: 69, baseType: !367, size: 32, offset: 576)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2036, file: !1974, line: 70, baseType: !170, size: 256, offset: 640)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2036, file: !1974, line: 71, baseType: !166, size: 64, offset: 896)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2036, file: !1974, line: 72, baseType: !166, size: 64, offset: 960)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2036, file: !1974, line: 73, baseType: !166, size: 64, offset: 1024)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2036, file: !1974, line: 74, baseType: !166, size: 64, offset: 1088)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2036, file: !1974, line: 75, baseType: !166, size: 64, offset: 1152)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2036, file: !1974, line: 76, baseType: !166, size: 64, offset: 1216)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2036, file: !1974, line: 77, baseType: !166, size: 64, offset: 1280)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2036, file: !1974, line: 78, baseType: !166, size: 64, offset: 1344)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2036, file: !1974, line: 79, baseType: !812, size: 8, offset: 1408)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2036, file: !1974, line: 80, baseType: !166, size: 64, offset: 1472)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2036, file: !1974, line: 81, baseType: !170, size: 256, offset: 1536)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2036, file: !1974, line: 82, baseType: !1758, size: 256, offset: 1792)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2036, file: !1974, line: 84, baseType: !200, size: 32, offset: 2048)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2036, file: !1974, line: 87, baseType: !166, size: 64, offset: 2112)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2036, file: !1974, line: 88, baseType: !166, size: 64, offset: 2176)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2036, file: !1974, line: 89, baseType: !2061, size: 704, offset: 2240)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1337, line: 111, size: 704, elements: !2062)
!2062 = !{!2063, !2064, !2065, !2068}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2061, file: !1337, line: 112, baseType: !1336, size: 256)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2061, file: !1337, line: 113, baseType: !2004, size: 320, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2061, file: !1337, line: 116, baseType: !2066, size: 64, offset: 576)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1337, line: 18, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2061, file: !1337, line: 117, baseType: !87, size: 32, offset: 640)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2036, file: !1974, line: 90, baseType: !1972, size: 64, offset: 2944)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !472, file: !6, line: 515, baseType: !2071, size: 64, offset: 8064)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2073, line: 117, size: 128, elements: !2074)
!2073 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2074 = !{!2075, !2076, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2072, file: !2073, line: 118, baseType: !738, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2072, file: !2073, line: 119, baseType: !738, size: 32, offset: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2072, file: !2073, line: 120, baseType: !559, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !472, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !472, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !472, file: !6, line: 520, baseType: !2081, size: 64, offset: 8192)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !472, file: !6, line: 523, baseType: !2083, size: 64, offset: 8256)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !472, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !472, file: !6, line: 525, baseType: !2088, size: 64, offset: 8384)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !472, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !472, file: !6, line: 533, baseType: !260, size: 64, offset: 8512)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !472, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !472, file: !6, line: 535, baseType: !2095, size: 64, offset: 8640)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !472, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !472, file: !6, line: 539, baseType: !87, size: 32, offset: 8736)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !472, file: !6, line: 540, baseType: !2099, size: 64, offset: 8768)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2101, line: 32, size: 64, elements: !2102)
!2101 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2100, file: !2101, line: 33, baseType: !738, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2100, file: !2101, line: 34, baseType: !738, size: 32, offset: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !472, file: !6, line: 563, baseType: !226, size: 128, offset: 8832)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !472, file: !6, line: 565, baseType: !226, size: 128, offset: 8960)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !472, file: !6, line: 568, baseType: !2108, size: 64, offset: 9088)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{null}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !472, file: !6, line: 570, baseType: !200, size: 32, offset: 9152)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !448, file: !44, line: 2382, baseType: !447, size: 64, offset: 448)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !448, file: !44, line: 2383, baseType: !668, size: 64, offset: 512)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !448, file: !44, line: 2385, baseType: !2115, offset: 576)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2033, line: 206, elements: !1202)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !448, file: !44, line: 2386, baseType: !2115, offset: 576)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !448, file: !44, line: 2387, baseType: !2115, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !448, file: !44, line: 2388, baseType: !2119, offset: 576)
!2119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2115, elements: !525)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !448, file: !44, line: 2390, baseType: !2115, offset: 576)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !448, file: !44, line: 2391, baseType: !2115, offset: 576)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !448, file: !44, line: 2392, baseType: !2115, offset: 576)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !448, file: !44, line: 2393, baseType: !2115, offset: 576)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !435, file: !44, line: 1197, baseType: !2125, size: 64, offset: 384)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2127)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 2057, size: 1664, elements: !2128)
!2128 = !{!2129, !2133, !2137, !2138, !2142, !2148, !2152, !2153, !2154, !2158, !2162, !2166, !2167, !2168, !2174, !2178, !2179, !2183, !2184, !2185, !2186, !2190, !2194, !2241, !2256, !2257}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2127, file: !44, line: 2058, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!269, !434}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2127, file: !44, line: 2059, baseType: !2134, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !269}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2127, file: !44, line: 2060, baseType: !2134, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2127, file: !44, line: 2062, baseType: !2139, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !269, !87}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2127, file: !44, line: 2063, baseType: !2143, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!87, !269, !2146}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 309, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2127, file: !44, line: 2064, baseType: !2149, size: 64, offset: 320)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!87, !269}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2127, file: !44, line: 2065, baseType: !2134, size: 64, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2127, file: !44, line: 2066, baseType: !467, size: 64, offset: 448)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2127, file: !44, line: 2067, baseType: !2155, size: 64, offset: 512)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!87, !434, !87}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2127, file: !44, line: 2068, baseType: !2159, size: 64, offset: 576)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!87, !434, !43}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2127, file: !44, line: 2069, baseType: !2163, size: 64, offset: 640)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!87, !434}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2127, file: !44, line: 2070, baseType: !2159, size: 64, offset: 704)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2127, file: !44, line: 2071, baseType: !2163, size: 64, offset: 768)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2127, file: !44, line: 2072, baseType: !2169, size: 64, offset: 832)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!87, !306, !2172}
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 62, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2127, file: !44, line: 2073, baseType: !2175, size: 64, offset: 896)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!87, !434, !1904, !423}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2127, file: !44, line: 2074, baseType: !467, size: 64, offset: 960)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2127, file: !44, line: 2076, baseType: !2180, size: 64, offset: 1024)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!87, !1553, !306}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2127, file: !44, line: 2077, baseType: !2180, size: 64, offset: 1088)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2127, file: !44, line: 2078, baseType: !2180, size: 64, offset: 1152)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2127, file: !44, line: 2079, baseType: !2180, size: 64, offset: 1216)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2127, file: !44, line: 2081, baseType: !2187, size: 64, offset: 1280)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!556, !434, !87, !423, !569, !444}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2127, file: !44, line: 2082, baseType: !2191, size: 64, offset: 1344)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!556, !434, !87, !397, !569, !444}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2127, file: !44, line: 2083, baseType: !2195, size: 64, offset: 1408)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!2198, !269}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !49, line: 296, size: 1664, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2226, !2227, !2228}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2200, file: !49, line: 297, baseType: !672, size: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2200, file: !49, line: 298, baseType: !226, size: 128, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2200, file: !49, line: 299, baseType: !226, size: 128, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2200, file: !49, line: 300, baseType: !226, size: 128, offset: 384)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2200, file: !49, line: 301, baseType: !170, size: 256, offset: 512)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2200, file: !49, line: 302, baseType: !367, size: 32, offset: 768)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2200, file: !49, line: 303, baseType: !200, size: 32, offset: 800)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2200, file: !49, line: 304, baseType: !434, size: 64, offset: 832)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2200, file: !49, line: 305, baseType: !2211, size: 64, offset: 896)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !49, line: 68, size: 64, elements: !2212)
!2212 = !{!2213, !2225}
!2213 = !DIDerivedType(tag: DW_TAG_member, scope: !2211, file: !49, line: 69, baseType: !2214, size: 32)
!2214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2211, file: !49, line: 69, size: 32, elements: !2215)
!2215 = !{!2216, !2217, !2218}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2214, file: !49, line: 70, baseType: !276, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2214, file: !49, line: 71, baseType: !286, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2214, file: !49, line: 72, baseType: !2219, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2220, line: 24, baseType: !2221)
!2220 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2220, line: 22, size: 32, elements: !2222)
!2222 = !{!2223}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2221, file: !2220, line: 23, baseType: !2224, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2220, line: 20, baseType: !282)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2211, file: !49, line: 74, baseType: !48, size: 32, offset: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2200, file: !49, line: 306, baseType: !444, size: 64, offset: 960)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2200, file: !49, line: 307, baseType: !166, size: 64, offset: 1024)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2200, file: !49, line: 308, baseType: !2229, size: 576, offset: 1088)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !49, line: 205, size: 576, elements: !2230)
!2230 = !{!2231, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2229, file: !49, line: 206, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !49, line: 66, baseType: !185)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2229, file: !49, line: 207, baseType: !2232, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2229, file: !49, line: 208, baseType: !2232, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2229, file: !49, line: 209, baseType: !2232, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2229, file: !49, line: 210, baseType: !2232, size: 64, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2229, file: !49, line: 211, baseType: !2232, size: 64, offset: 320)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2229, file: !49, line: 212, baseType: !2232, size: 64, offset: 384)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2229, file: !49, line: 213, baseType: !769, size: 64, offset: 448)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2229, file: !49, line: 214, baseType: !769, size: 64, offset: 512)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2127, file: !44, line: 2085, baseType: !2242, size: 64, offset: 1472)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!559, !434, !2245}
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2247, line: 15, size: 256, elements: !2248)
!2247 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2248 = !{!2249, !2250, !2251, !2252, !2253}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2246, file: !2247, line: 16, baseType: !1113, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2246, file: !2247, line: 19, baseType: !87, size: 32, offset: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2246, file: !2247, line: 26, baseType: !166, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2246, file: !2247, line: 33, baseType: !166, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2246, file: !2247, line: 36, baseType: !2254, size: 64, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2247, line: 36, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2127, file: !44, line: 2087, baseType: !2242, size: 64, offset: 1536)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2127, file: !44, line: 2089, baseType: !467, size: 64, offset: 1600)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !435, file: !44, line: 1198, baseType: !2259, size: 64, offset: 448)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2261)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !49, line: 324, size: 704, elements: !2262)
!2262 = !{!2263, !2267, !2271, !2275, !2276, !2277, !2278, !2279, !2284, !2289, !2293}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2261, file: !49, line: 325, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!87, !2199}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2261, file: !49, line: 326, baseType: !2268, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!2199, !434, !87}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2261, file: !49, line: 327, baseType: !2272, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{null, !2199}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2261, file: !49, line: 328, baseType: !2264, size: 64, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2261, file: !49, line: 329, baseType: !2264, size: 64, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2261, file: !49, line: 330, baseType: !2264, size: 64, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2261, file: !49, line: 331, baseType: !2155, size: 64, offset: 384)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2261, file: !49, line: 334, baseType: !2280, size: 64, offset: 448)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!2283, !269}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2261, file: !49, line: 335, baseType: !2285, size: 64, offset: 512)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!87, !269, !2288}
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2261, file: !49, line: 337, baseType: !2290, size: 64, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!87, !269, !2283}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2261, file: !49, line: 339, baseType: !2294, size: 64, offset: 640)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!87, !434, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !435, file: !44, line: 1199, baseType: !2299, size: 64, offset: 512)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2301)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !49, line: 430, size: 704, elements: !2302)
!2302 = !{!2303, !2309, !2310, !2314, !2315, !2316, !2331, !2354, !2358, !2359, !2382}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2301, file: !49, line: 431, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!87, !434, !87, !87, !2307}
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !924)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2301, file: !49, line: 432, baseType: !2155, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2301, file: !49, line: 433, baseType: !2311, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!87, !434, !7}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2301, file: !49, line: 434, baseType: !2311, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2301, file: !49, line: 435, baseType: !2155, size: 64, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2301, file: !49, line: 436, baseType: !2317, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!87, !434, !87, !2320}
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !49, line: 417, size: 256, elements: !2322)
!2322 = !{!2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2321, file: !49, line: 418, baseType: !87, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2321, file: !49, line: 419, baseType: !7, size: 32, offset: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2321, file: !49, line: 420, baseType: !7, size: 32, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2321, file: !49, line: 422, baseType: !7, size: 32, offset: 96)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2321, file: !49, line: 423, baseType: !7, size: 32, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2321, file: !49, line: 424, baseType: !7, size: 32, offset: 160)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2321, file: !49, line: 425, baseType: !7, size: 32, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2321, file: !49, line: 426, baseType: !7, size: 32, offset: 224)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2301, file: !49, line: 437, baseType: !2332, size: 64, offset: 384)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!87, !434, !2211, !2335}
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !49, line: 345, size: 960, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2336, file: !49, line: 346, baseType: !87, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2336, file: !49, line: 347, baseType: !344, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2336, file: !49, line: 348, baseType: !344, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2336, file: !49, line: 349, baseType: !344, size: 64, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2336, file: !49, line: 350, baseType: !344, size: 64, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2336, file: !49, line: 351, baseType: !344, size: 64, offset: 320)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2336, file: !49, line: 352, baseType: !344, size: 64, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2336, file: !49, line: 353, baseType: !181, size: 64, offset: 448)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2336, file: !49, line: 355, baseType: !181, size: 64, offset: 512)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2336, file: !49, line: 356, baseType: !87, size: 32, offset: 576)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2336, file: !49, line: 357, baseType: !87, size: 32, offset: 608)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2336, file: !49, line: 358, baseType: !344, size: 64, offset: 640)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2336, file: !49, line: 359, baseType: !344, size: 64, offset: 704)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2336, file: !49, line: 360, baseType: !344, size: 64, offset: 768)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2336, file: !49, line: 361, baseType: !181, size: 64, offset: 832)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2336, file: !49, line: 362, baseType: !87, size: 32, offset: 896)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2301, file: !49, line: 438, baseType: !2355, size: 64, offset: 448)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!87, !434, !2297, !2335}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2301, file: !49, line: 440, baseType: !2332, size: 64, offset: 512)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2301, file: !49, line: 441, baseType: !2360, size: 64, offset: 576)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!87, !434, !2363}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !49, line: 411, size: 1408, elements: !2365)
!2365 = !{!2366, !2367}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2364, file: !49, line: 412, baseType: !7, size: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2364, file: !49, line: 413, baseType: !2368, size: 1344, offset: 64)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2369, size: 1344, elements: !525)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !49, line: 397, size: 448, elements: !2370)
!2370 = !{!2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2381}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2369, file: !49, line: 398, baseType: !7, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2369, file: !49, line: 399, baseType: !7, size: 32, offset: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2369, file: !49, line: 401, baseType: !7, size: 32, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2369, file: !49, line: 402, baseType: !7, size: 32, offset: 96)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2369, file: !49, line: 403, baseType: !7, size: 32, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2369, file: !49, line: 404, baseType: !7, size: 32, offset: 160)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2369, file: !49, line: 405, baseType: !7, size: 32, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2369, file: !49, line: 406, baseType: !346, size: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2369, file: !49, line: 407, baseType: !2380, size: 64, offset: 320)
!2380 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !177, line: 132, baseType: !344)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2369, file: !49, line: 408, baseType: !2380, size: 64, offset: 384)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2301, file: !49, line: 442, baseType: !2311, size: 64, offset: 640)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !435, file: !44, line: 1200, baseType: !2384, size: 64, offset: 576)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2386)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 54, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !435, file: !44, line: 1201, baseType: !166, size: 64, offset: 640)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !435, file: !44, line: 1202, baseType: !166, size: 64, offset: 704)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !435, file: !44, line: 1203, baseType: !166, size: 64, offset: 768)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !435, file: !44, line: 1204, baseType: !306, size: 64, offset: 832)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !435, file: !44, line: 1205, baseType: !753, size: 320, offset: 896)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !435, file: !44, line: 1206, baseType: !87, size: 32, offset: 1216)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !435, file: !44, line: 1207, baseType: !200, size: 32, offset: 1248)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !435, file: !44, line: 1209, baseType: !260, size: 64, offset: 1280)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !435, file: !44, line: 1211, baseType: !2396, size: 64, offset: 1344)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2399)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1211, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !435, file: !44, line: 1223, baseType: !2401, size: 64, offset: 1408)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !323, line: 34, size: 64, elements: !2402)
!2402 = !{!2403}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2401, file: !323, line: 35, baseType: !326, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !435, file: !44, line: 1224, baseType: !226, size: 128, offset: 1472)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !435, file: !44, line: 1225, baseType: !2406, size: 64, offset: 1600)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2408, line: 40, size: 7424, elements: !2409)
!2408 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2409 = !{!2410, !2412, !2413, !3205, !3206, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3249, !3250}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2407, file: !2408, line: 41, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !177, line: 131, baseType: !344)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2407, file: !2408, line: 42, baseType: !2411, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2407, file: !2408, line: 43, baseType: !2414, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !55, line: 128, size: 4544, elements: !2416)
!2416 = !{!2417, !2418, !2419, !2420, !2422, !2423, !2424, !2425, !2426, !2606, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3171, !3172, !3173, !3174, !3177, !3178, !3181, !3184, !3185, !3188, !3189, !3190, !3191}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2415, file: !55, line: 133, baseType: !87, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2415, file: !55, line: 134, baseType: !87, size: 32, offset: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2415, file: !55, line: 135, baseType: !87, size: 32, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2415, file: !55, line: 137, baseType: !2421, size: 256, offset: 96)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 256, elements: !353)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2415, file: !55, line: 139, baseType: !218, size: 16, offset: 352)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2415, file: !55, line: 140, baseType: !218, size: 16, offset: 368)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2415, file: !55, line: 142, baseType: !1108, size: 128, offset: 384)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2415, file: !55, line: 143, baseType: !2406, size: 64, offset: 512)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2415, file: !55, line: 145, baseType: !2427, size: 64, offset: 576)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2429)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !55, line: 1388, size: 1152, elements: !2430)
!2430 = !{!2431, !2522, !2526, !2531, !2535, !2539, !2540, !2544, !2545, !2551, !2555, !2556, !2560, !2586, !2591, !2596, !2597, !2601}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2429, file: !55, line: 1389, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{null, !2435}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2408, line: 265, size: 960, elements: !2437)
!2437 = !{!2438, !2439, !2440, !2442, !2443, !2444, !2446, !2447, !2454, !2456, !2459, !2460, !2463, !2467, !2468, !2470, !2471, !2472, !2473, !2475, !2520}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2436, file: !2408, line: 266, baseType: !2435, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2436, file: !2408, line: 267, baseType: !2406, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2436, file: !2408, line: 268, baseType: !2441, size: 32, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2408, line: 256, baseType: !341)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2436, file: !2408, line: 271, baseType: !218, size: 16, offset: 160)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2436, file: !2408, line: 272, baseType: !218, size: 16, offset: 176)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2436, file: !2408, line: 273, baseType: !2445, size: 8, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2408, line: 97, baseType: !208)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2436, file: !2408, line: 274, baseType: !200, size: 32, offset: 224)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2436, file: !2408, line: 276, baseType: !2448, size: 160, align: 32, offset: 256)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1101, line: 77, size: 160, align: 32, elements: !2449)
!2449 = !{!2450, !2451, !2452, !2453}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2448, file: !1101, line: 78, baseType: !2411, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2448, file: !1101, line: 80, baseType: !7, size: 32, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2448, file: !1101, line: 82, baseType: !7, size: 32, offset: 96)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2448, file: !1101, line: 84, baseType: !7, size: 32, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2436, file: !2408, line: 278, baseType: !2455, size: 32, offset: 416)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2408, line: 258, baseType: !7)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2436, file: !2408, line: 279, baseType: !2457, size: 64, offset: 448)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2408, line: 20, baseType: !2433)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2436, file: !2408, line: 280, baseType: !260, size: 64, offset: 512)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2436, file: !2408, line: 288, baseType: !2461, size: 64, offset: 576)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2408, line: 288, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2436, file: !2408, line: 289, baseType: !2464, size: 64, offset: 640)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2408, line: 228, size: 64, elements: !2465)
!2465 = !{!2466}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2464, file: !2408, line: 229, baseType: !344, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2436, file: !2408, line: 291, baseType: !344, size: 64, offset: 704)
!2468 = !DIDerivedType(tag: DW_TAG_member, scope: !2436, file: !2408, line: 299, baseType: !2469, offset: 768)
!2469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2436, file: !2408, line: 299, elements: !1202)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2436, file: !2408, line: 305, baseType: !218, size: 16, offset: 768)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2436, file: !2408, line: 311, baseType: !218, size: 16, offset: 784)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2436, file: !2408, line: 313, baseType: !200, size: 32, offset: 800)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2436, file: !2408, line: 315, baseType: !2474, size: 64, offset: 832)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2436, file: !2408, line: 317, baseType: !2476, size: 64, offset: 896)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2478, line: 678, size: 1984, elements: !2479)
!2478 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2479 = !{!2480, !2484, !2485, !2488, !2509, !2510, !2511, !2512, !2517, !2518, !2519}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2477, file: !2478, line: 679, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2483, line: 325, flags: DIFlagFwdDecl)
!2483 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2477, file: !2478, line: 680, baseType: !7, size: 32, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2477, file: !2478, line: 685, baseType: !2486, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2478, line: 685, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2477, file: !2478, line: 687, baseType: !2489, size: 576, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2490, line: 26, baseType: !2491)
!2490 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2490, line: 16, size: 576, elements: !2492)
!2492 = !{!2493, !2494, !2495, !2496, !2497, !2498, !2503, !2508}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2491, file: !2490, line: 17, baseType: !367, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2491, file: !2490, line: 18, baseType: !87, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2491, file: !2490, line: 19, baseType: !87, size: 32, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2491, file: !2490, line: 20, baseType: !1544, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2491, file: !2490, line: 22, baseType: !260, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2491, file: !2490, line: 23, baseType: !2499, size: 64, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2490, line: 13, baseType: !2501)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!260, !1113, !260}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2491, file: !2490, line: 24, baseType: !2504, size: 64, offset: 320)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2490, line: 14, baseType: !2506)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{null, !260, !260}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2491, file: !2490, line: 25, baseType: !681, size: 192, offset: 384)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2477, file: !2478, line: 688, baseType: !2489, size: 576, offset: 768)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2477, file: !2478, line: 694, baseType: !7, size: 32, offset: 1344)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2477, file: !2478, line: 699, baseType: !367, size: 32, offset: 1376)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2477, file: !2478, line: 700, baseType: !2513, size: 128, offset: 1408)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2478, line: 550, size: 128, elements: !2514)
!2514 = !{!2515, !2516}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2513, file: !2478, line: 551, baseType: !2435, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2513, file: !2478, line: 552, baseType: !2435, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2477, file: !2478, line: 701, baseType: !1336, size: 256, offset: 1536)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2477, file: !2478, line: 702, baseType: !2066, size: 64, offset: 1792)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2477, file: !2478, line: 707, baseType: !672, size: 128, offset: 1856)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2436, file: !2408, line: 324, baseType: !2521, offset: 960)
!2521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, elements: !696)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2429, file: !55, line: 1390, baseType: !2523, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!87, !2435, !1127, !7}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2429, file: !55, line: 1392, baseType: !2527, size: 64, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!87, !2414, !2530}
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !55, line: 115, baseType: !7)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2429, file: !55, line: 1393, baseType: !2532, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !2414}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2429, file: !55, line: 1394, baseType: !2536, size: 64, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!87, !2406, !2530, !7, !166}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2429, file: !55, line: 1396, baseType: !2536, size: 64, offset: 320)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2429, file: !55, line: 1398, baseType: !2541, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!7, !2414, !7}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2429, file: !55, line: 1400, baseType: !2532, size: 64, offset: 448)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2429, file: !55, line: 1401, baseType: !2546, size: 64, offset: 512)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!87, !2406, !2549}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !44, line: 56, flags: DIFlagFwdDecl)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2429, file: !55, line: 1402, baseType: !2552, size: 64, offset: 576)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!87, !2406, !812}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2429, file: !55, line: 1403, baseType: !2532, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2429, file: !55, line: 1405, baseType: !2557, size: 64, offset: 704)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{null, !2406, !166}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2429, file: !55, line: 1406, baseType: !2561, size: 64, offset: 768)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!87, !2414, !2411, !7, !2564, !260}
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !55, line: 342, baseType: !2565)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!87, !2568, !7, !260}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2570, line: 106, size: 512, elements: !2571)
!2570 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2581, !2582}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2569, file: !2570, line: 107, baseType: !345, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2569, file: !2570, line: 108, baseType: !345, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2569, file: !2570, line: 109, baseType: !345, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2569, file: !2570, line: 110, baseType: !209, size: 8, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2569, file: !2570, line: 111, baseType: !209, size: 8, offset: 200)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2569, file: !2570, line: 112, baseType: !209, size: 8, offset: 208)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2569, file: !2570, line: 113, baseType: !209, size: 8, offset: 216)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2569, file: !2570, line: 114, baseType: !2580, size: 32, offset: 224)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 32, elements: !677)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2569, file: !2570, line: 115, baseType: !345, size: 64, offset: 256)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2569, file: !2570, line: 116, baseType: !2583, size: 192, offset: 320)
!2583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 192, elements: !2584)
!2584 = !{!2585}
!2585 = !DISubrange(count: 24)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2429, file: !55, line: 1408, baseType: !2587, size: 64, offset: 832)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!423, !2414, !2590}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2429, file: !55, line: 1410, baseType: !2592, size: 64, offset: 896)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!87, !2414, !2595, !54}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2429, file: !55, line: 1412, baseType: !471, size: 64, offset: 960)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2429, file: !55, line: 1413, baseType: !2598, size: 64, offset: 1024)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2600)
!2600 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !55, line: 37, flags: DIFlagFwdDecl)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2429, file: !55, line: 1420, baseType: !2602, size: 64, offset: 1088)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!87, !2414, !2605}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2415, file: !55, line: 146, baseType: !2607, size: 64, offset: 640)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !55, line: 391, size: 7296, elements: !2609)
!2609 = !{!2610, !2611, !2614, !2635, !2638, !2641, !2642, !2646, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3091, !3092, !3096, !3097, !3098, !3099, !3132, !3133, !3134, !3137, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3156, !3157, !3158, !3159, !3160, !3161}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2608, file: !55, line: 392, baseType: !1131, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2608, file: !55, line: 393, baseType: !2612, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !55, line: 30, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2608, file: !55, line: 395, baseType: !2615, size: 128, offset: 128)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2616, line: 105, size: 128, elements: !2617)
!2616 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2617 = !{!2618, !2619}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2615, file: !2616, line: 110, baseType: !166, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2615, file: !2616, line: 118, baseType: !2620, size: 64, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2616, line: 95, size: 448, elements: !2622)
!2622 = !{!2623, !2624, !2630, !2631, !2632, !2633, !2634}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2621, file: !2616, line: 96, baseType: !174, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2621, file: !2616, line: 97, baseType: !2625, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2616, line: 60, baseType: !2627)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{null, !2629}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2621, file: !2616, line: 98, baseType: !2625, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2621, file: !2616, line: 99, baseType: !812, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2621, file: !2616, line: 100, baseType: !812, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2621, file: !2616, line: 101, baseType: !614, size: 128, align: 64, offset: 256)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2621, file: !2616, line: 102, baseType: !2629, size: 64, offset: 384)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2608, file: !55, line: 397, baseType: !2636, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !55, line: 39, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2608, file: !55, line: 398, baseType: !2639, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !55, line: 38, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2608, file: !55, line: 399, baseType: !170, size: 256, offset: 384)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2608, file: !55, line: 401, baseType: !2643, size: 64, offset: 640)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2645)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !55, line: 401, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2608, file: !55, line: 404, baseType: !2647, size: 64, offset: 704)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !55, line: 404, flags: DIFlagFwdDecl)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2608, file: !55, line: 406, baseType: !7, size: 32, offset: 768)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2608, file: !55, line: 409, baseType: !1108, size: 128, offset: 832)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2608, file: !55, line: 410, baseType: !7, size: 32, offset: 960)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2608, file: !55, line: 416, baseType: !260, size: 64, offset: 1024)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2608, file: !55, line: 421, baseType: !166, size: 64, offset: 1088)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2608, file: !55, line: 426, baseType: !200, size: 32, offset: 1152)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2608, file: !55, line: 432, baseType: !87, size: 32, offset: 1184)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2608, file: !55, line: 434, baseType: !367, size: 32, offset: 1216)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2608, file: !55, line: 436, baseType: !2414, size: 64, offset: 1280)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2608, file: !55, line: 438, baseType: !659, size: 32, offset: 1344)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2608, file: !55, line: 443, baseType: !490, size: 64, offset: 1408)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2608, file: !55, line: 450, baseType: !2661, size: 64, offset: 1472)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 705, size: 5824, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2669, !2670, !2722, !2792, !2793, !2794, !2795, !2796, !2803, !2967, !2980, !2990, !2994, !2996, !2997, !2998, !3002, !3009, !3010, !3013, !3016, !3020, !3023, !3024, !3025, !3026, !3027, !3028, !3058, !3059, !3060, !3063, !3066, !3075, !3076, !3077, !3078, !3079, !3080}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2662, file: !67, line: 706, baseType: !484, size: 512)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2662, file: !67, line: 707, baseType: !2661, size: 64, offset: 512)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2662, file: !67, line: 709, baseType: !2667, size: 64, offset: 576)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 37, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2662, file: !67, line: 711, baseType: !397, size: 64, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2662, file: !67, line: 712, baseType: !2671, size: 64, offset: 704)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 89, size: 384, elements: !2674)
!2674 = !{!2675, !2676, !2677, !2683, !2687, !2691}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2673, file: !67, line: 90, baseType: !397, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2673, file: !67, line: 91, baseType: !573, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2673, file: !67, line: 92, baseType: !2678, size: 64, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!87, !2681, !520}
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2662)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2673, file: !67, line: 93, baseType: !2684, size: 64, offset: 192)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!423, !2681, !2590, !1632, !1633}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2673, file: !67, line: 95, baseType: !2688, size: 64, offset: 256)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{null, !2661}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2673, file: !67, line: 97, baseType: !2692, size: 64, offset: 320)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2694)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !79, line: 286, size: 1472, elements: !2695)
!2695 = !{!2696, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2694, file: !79, line: 287, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!87, !2661}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2694, file: !79, line: 288, baseType: !2688, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2694, file: !79, line: 289, baseType: !2697, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2694, file: !79, line: 290, baseType: !2697, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2694, file: !79, line: 291, baseType: !2697, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2694, file: !79, line: 292, baseType: !2697, size: 64, offset: 320)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2694, file: !79, line: 293, baseType: !2697, size: 64, offset: 384)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2694, file: !79, line: 294, baseType: !2697, size: 64, offset: 448)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2694, file: !79, line: 295, baseType: !2697, size: 64, offset: 512)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2694, file: !79, line: 296, baseType: !2697, size: 64, offset: 576)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2694, file: !79, line: 297, baseType: !2697, size: 64, offset: 640)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2694, file: !79, line: 298, baseType: !2697, size: 64, offset: 704)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2694, file: !79, line: 299, baseType: !2697, size: 64, offset: 768)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2694, file: !79, line: 300, baseType: !2697, size: 64, offset: 832)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2694, file: !79, line: 301, baseType: !2697, size: 64, offset: 896)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2694, file: !79, line: 302, baseType: !2697, size: 64, offset: 960)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2694, file: !79, line: 303, baseType: !2697, size: 64, offset: 1024)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2694, file: !79, line: 304, baseType: !2697, size: 64, offset: 1088)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2694, file: !79, line: 305, baseType: !2697, size: 64, offset: 1152)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2694, file: !79, line: 306, baseType: !2697, size: 64, offset: 1216)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2694, file: !79, line: 307, baseType: !2697, size: 64, offset: 1280)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2694, file: !79, line: 308, baseType: !2697, size: 64, offset: 1344)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2694, file: !79, line: 309, baseType: !2697, size: 64, offset: 1408)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2662, file: !67, line: 714, baseType: !2723, size: 64, offset: 768)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2725)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2726, line: 80, size: 1344, elements: !2727)
!2726 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2791}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2725, file: !2726, line: 81, baseType: !397, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2725, file: !2726, line: 82, baseType: !397, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2725, file: !2726, line: 83, baseType: !573, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2725, file: !2726, line: 84, baseType: !573, size: 64, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2725, file: !2726, line: 85, baseType: !573, size: 64, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2725, file: !2726, line: 87, baseType: !2734, size: 64, offset: 320)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!87, !2661, !2737}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !61, line: 96, size: 1152, elements: !2739)
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746, !2750, !2754, !2755, !2756, !2757, !2758, !2766, !2767, !2768, !2769, !2770, !2771}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2738, file: !61, line: 97, baseType: !397, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2738, file: !61, line: 98, baseType: !2723, size: 64, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2738, file: !61, line: 100, baseType: !471, size: 64, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2738, file: !61, line: 101, baseType: !397, size: 64, offset: 192)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2738, file: !61, line: 103, baseType: !812, size: 8, offset: 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2738, file: !61, line: 104, baseType: !60, size: 32, offset: 288)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2738, file: !61, line: 106, baseType: !2747, size: 64, offset: 320)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2749)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !61, line: 106, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2738, file: !61, line: 107, baseType: !2751, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2753)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !61, line: 107, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2738, file: !61, line: 109, baseType: !2697, size: 64, offset: 448)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2738, file: !61, line: 110, baseType: !2688, size: 64, offset: 512)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2738, file: !61, line: 111, baseType: !2697, size: 64, offset: 576)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2738, file: !61, line: 112, baseType: !2688, size: 64, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2738, file: !61, line: 113, baseType: !2759, size: 64, offset: 704)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!87, !2661, !2762}
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !79, line: 60, baseType: !2763)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !79, line: 58, size: 32, elements: !2764)
!2764 = !{!2765}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2763, file: !79, line: 59, baseType: !87, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2738, file: !61, line: 114, baseType: !2697, size: 64, offset: 768)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2738, file: !61, line: 115, baseType: !573, size: 64, offset: 832)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2738, file: !61, line: 116, baseType: !573, size: 64, offset: 896)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2738, file: !61, line: 118, baseType: !2692, size: 64, offset: 960)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2738, file: !61, line: 119, baseType: !2688, size: 64, offset: 1024)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2738, file: !61, line: 121, baseType: !2772, size: 64, offset: 1088)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !61, line: 121, flags: DIFlagFwdDecl)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2725, file: !2726, line: 88, baseType: !2678, size: 64, offset: 384)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2725, file: !2726, line: 89, baseType: !2697, size: 64, offset: 448)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2725, file: !2726, line: 90, baseType: !2688, size: 64, offset: 512)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2725, file: !2726, line: 91, baseType: !2688, size: 64, offset: 576)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2725, file: !2726, line: 92, baseType: !2688, size: 64, offset: 640)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2725, file: !2726, line: 94, baseType: !2697, size: 64, offset: 704)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2725, file: !2726, line: 95, baseType: !2697, size: 64, offset: 768)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2725, file: !2726, line: 97, baseType: !2759, size: 64, offset: 832)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2725, file: !2726, line: 98, baseType: !2697, size: 64, offset: 896)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2725, file: !2726, line: 100, baseType: !2697, size: 64, offset: 960)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2725, file: !2726, line: 102, baseType: !2697, size: 64, offset: 1024)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2725, file: !2726, line: 103, baseType: !2688, size: 64, offset: 1088)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2725, file: !2726, line: 105, baseType: !2692, size: 64, offset: 1152)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2725, file: !2726, line: 107, baseType: !2788, size: 64, offset: 1216)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2790)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2726, line: 107, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2725, file: !2726, line: 109, baseType: !812, size: 8, offset: 1280)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2662, file: !67, line: 715, baseType: !2737, size: 64, offset: 832)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2662, file: !67, line: 717, baseType: !260, size: 64, offset: 896)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2662, file: !67, line: 719, baseType: !260, size: 64, offset: 960)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2662, file: !67, line: 721, baseType: !170, size: 256, offset: 1024)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2662, file: !67, line: 725, baseType: !2797, size: 448, offset: 1280)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 517, size: 448, elements: !2798)
!2798 = !{!2799, !2800, !2801, !2802}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2797, file: !67, line: 518, baseType: !226, size: 128)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2797, file: !67, line: 519, baseType: !226, size: 128, offset: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2797, file: !67, line: 520, baseType: !226, size: 128, offset: 256)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2797, file: !67, line: 521, baseType: !66, size: 32, offset: 384)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2662, file: !67, line: 726, baseType: !2804, size: 2496, offset: 1728)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !79, line: 663, size: 2496, elements: !2805)
!2805 = !{!2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2850, !2851, !2852, !2853, !2854, !2855, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2960, !2964}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2804, file: !79, line: 664, baseType: !2762, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2804, file: !79, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2804, file: !79, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2804, file: !79, line: 667, baseType: !812, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2804, file: !79, line: 668, baseType: !812, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2804, file: !79, line: 669, baseType: !812, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2804, file: !79, line: 670, baseType: !812, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2804, file: !79, line: 671, baseType: !812, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2804, file: !79, line: 672, baseType: !812, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2804, file: !79, line: 673, baseType: !812, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2804, file: !79, line: 674, baseType: !812, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2804, file: !79, line: 675, baseType: !340, size: 32, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2804, file: !79, line: 676, baseType: !367, size: 32, offset: 96)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2804, file: !79, line: 678, baseType: !226, size: 128, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2804, file: !79, line: 679, baseType: !1758, size: 256, offset: 256)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2804, file: !79, line: 680, baseType: !2822, size: 64, offset: 512)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2824, line: 43, size: 1536, elements: !2825)
!2824 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2833, !2834, !2835, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2823, file: !2824, line: 44, baseType: !397, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2823, file: !2824, line: 45, baseType: !87, size: 32, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2823, file: !2824, line: 46, baseType: !226, size: 128, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2823, file: !2824, line: 47, baseType: !367, size: 32, offset: 256)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2823, file: !2824, line: 48, baseType: !2831, size: 64, offset: 320)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !79, line: 629, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2823, file: !2824, line: 49, baseType: !2004, size: 320, offset: 384)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2823, file: !2824, line: 50, baseType: !166, size: 64, offset: 704)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2823, file: !2824, line: 51, baseType: !2836, size: 64, offset: 768)
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2837, line: 29, baseType: !181)
!2837 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2823, file: !2824, line: 52, baseType: !2836, size: 64, offset: 832)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2823, file: !2824, line: 53, baseType: !2836, size: 64, offset: 896)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2823, file: !2824, line: 54, baseType: !2836, size: 64, offset: 960)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2823, file: !2824, line: 55, baseType: !2836, size: 64, offset: 1024)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2823, file: !2824, line: 56, baseType: !166, size: 64, offset: 1088)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2823, file: !2824, line: 57, baseType: !166, size: 64, offset: 1152)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2823, file: !2824, line: 58, baseType: !166, size: 64, offset: 1216)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2823, file: !2824, line: 59, baseType: !166, size: 64, offset: 1280)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2823, file: !2824, line: 60, baseType: !166, size: 64, offset: 1344)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2823, file: !2824, line: 61, baseType: !2661, size: 64, offset: 1408)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2823, file: !2824, line: 62, baseType: !812, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2823, file: !2824, line: 63, baseType: !812, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2804, file: !79, line: 681, baseType: !812, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2804, file: !79, line: 682, baseType: !812, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2804, file: !79, line: 683, baseType: !812, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2804, file: !79, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2804, file: !79, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2804, file: !79, line: 690, baseType: !2856, size: 512, offset: 640)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !74, line: 118, size: 512, elements: !2857)
!2857 = !{!2858, !2864, !2865, !2870, !2922, !2923, !2924, !2925}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2856, file: !74, line: 119, baseType: !2859, size: 256)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2860, line: 9, size: 256, elements: !2861)
!2860 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2861 = !{!2862, !2863}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2859, file: !2860, line: 10, baseType: !745, size: 192, align: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2859, file: !2860, line: 11, baseType: !2836, size: 64, offset: 192)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2856, file: !74, line: 120, baseType: !2836, size: 64, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2856, file: !74, line: 121, baseType: !2866, size: 64, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!73, !2869}
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2856, file: !74, line: 122, baseType: !2871, size: 64, offset: 384)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !74, line: 159, size: 512, align: 512, elements: !2873)
!2873 = !{!2874, !2899, !2900, !2903, !2908, !2909, !2917, !2921}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2872, file: !74, line: 160, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !74, line: 215, size: 4608, align: 512, elements: !2877)
!2877 = !{!2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2876, file: !74, line: 216, baseType: !187, size: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2876, file: !74, line: 217, baseType: !7, size: 32, offset: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2876, file: !74, line: 218, baseType: !7, size: 32, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2876, file: !74, line: 219, baseType: !7, size: 32, offset: 96)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2876, file: !74, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2876, file: !74, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2876, file: !74, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2876, file: !74, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2876, file: !74, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2876, file: !74, line: 226, baseType: !7, size: 32, offset: 160)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2876, file: !74, line: 227, baseType: !218, size: 16, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2876, file: !74, line: 228, baseType: !218, size: 16, offset: 208)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2876, file: !74, line: 229, baseType: !7, size: 32, offset: 224)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2876, file: !74, line: 235, baseType: !2836, size: 64, offset: 256)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2876, file: !74, line: 236, baseType: !2869, size: 64, offset: 320)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2876, file: !74, line: 237, baseType: !2836, size: 64, offset: 384)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2876, file: !74, line: 238, baseType: !2869, size: 64, offset: 448)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2876, file: !74, line: 239, baseType: !2896, size: 4096, align: 512, offset: 512)
!2896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2872, size: 4096, align: 512, elements: !2897)
!2897 = !{!2898}
!2898 = !DISubrange(count: 8)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2872, file: !74, line: 161, baseType: !7, size: 32, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2872, file: !74, line: 162, baseType: !2901, size: 32, offset: 96)
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !177, line: 32, baseType: !2902)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !283, line: 96, baseType: !87)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2872, file: !74, line: 163, baseType: !2904, size: 32, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !313, line: 274, baseType: !2905)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !313, line: 274, size: 32, elements: !2906)
!2906 = !{!2907}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2905, file: !313, line: 274, baseType: !317, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2872, file: !74, line: 164, baseType: !2869, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2872, file: !74, line: 165, baseType: !2910, size: 128, offset: 256)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2860, line: 14, size: 128, elements: !2911)
!2911 = !{!2912}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2910, file: !2860, line: 15, baseType: !2913, size: 128)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !746, line: 26, size: 128, elements: !2914)
!2914 = !{!2915, !2916}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2913, file: !746, line: 27, baseType: !1654, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2913, file: !746, line: 28, baseType: !750, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2872, file: !74, line: 166, baseType: !2918, size: 64, offset: 384)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!2836}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2872, file: !74, line: 167, baseType: !2836, size: 64, offset: 448)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2856, file: !74, line: 123, baseType: !208, size: 8, offset: 448)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2856, file: !74, line: 124, baseType: !208, size: 8, offset: 456)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2856, file: !74, line: 125, baseType: !208, size: 8, offset: 464)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2856, file: !74, line: 126, baseType: !208, size: 8, offset: 472)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2804, file: !79, line: 691, baseType: !344, size: 64, offset: 1152)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2804, file: !79, line: 692, baseType: !1336, size: 256, offset: 1216)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2804, file: !79, line: 693, baseType: !681, size: 192, offset: 1472)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2804, file: !79, line: 694, baseType: !2831, size: 64, offset: 1664)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2804, file: !79, line: 695, baseType: !200, size: 32, offset: 1728)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2804, file: !79, line: 696, baseType: !200, size: 32, offset: 1760)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2804, file: !79, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2804, file: !79, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2804, file: !79, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2804, file: !79, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2804, file: !79, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2804, file: !79, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2804, file: !79, line: 703, baseType: !812, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2804, file: !79, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2804, file: !79, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2804, file: !79, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2804, file: !79, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2804, file: !79, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2804, file: !79, line: 709, baseType: !7, size: 32, offset: 1824)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2804, file: !79, line: 710, baseType: !78, size: 32, offset: 1856)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2804, file: !79, line: 711, baseType: !86, size: 32, offset: 1888)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2804, file: !79, line: 712, baseType: !86, size: 32, offset: 1920)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2804, file: !79, line: 713, baseType: !87, size: 32, offset: 1952)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2804, file: !79, line: 714, baseType: !87, size: 32, offset: 1984)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2804, file: !79, line: 715, baseType: !344, size: 64, offset: 2048)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2804, file: !79, line: 716, baseType: !344, size: 64, offset: 2112)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2804, file: !79, line: 717, baseType: !344, size: 64, offset: 2176)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2804, file: !79, line: 718, baseType: !344, size: 64, offset: 2240)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2804, file: !79, line: 720, baseType: !2955, size: 64, offset: 2304)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !79, line: 632, size: 64, elements: !2957)
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2956, file: !79, line: 633, baseType: !367, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2956, file: !79, line: 634, baseType: !7, size: 32, offset: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2804, file: !79, line: 721, baseType: !2961, size: 64, offset: 2368)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{null, !2661, !738}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2804, file: !79, line: 722, baseType: !2965, size: 64, offset: 2432)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !79, line: 722, flags: DIFlagFwdDecl)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2662, file: !67, line: 727, baseType: !2968, size: 64, offset: 4224)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !79, line: 742, size: 1792, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2977, !2978, !2979}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2969, file: !79, line: 743, baseType: !2694, size: 1472)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2969, file: !79, line: 744, baseType: !2697, size: 64, offset: 1472)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2969, file: !79, line: 745, baseType: !2974, size: 64, offset: 1536)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{null, !2661, !812}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2969, file: !79, line: 746, baseType: !2697, size: 64, offset: 1600)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2969, file: !79, line: 747, baseType: !2688, size: 64, offset: 1664)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2969, file: !79, line: 748, baseType: !2688, size: 64, offset: 1728)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2662, file: !67, line: 736, baseType: !2981, size: 128, offset: 4288)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !67, line: 529, size: 128, elements: !2982)
!2982 = !{!2983, !2987}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2981, file: !67, line: 531, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2986, line: 13, flags: DIFlagFwdDecl)
!2986 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2981, file: !67, line: 532, baseType: !2988, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !67, line: 49, flags: DIFlagFwdDecl)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2662, file: !67, line: 738, baseType: !2991, size: 64, offset: 4416)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2993)
!2993 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 738, flags: DIFlagFwdDecl)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2662, file: !67, line: 740, baseType: !2995, size: 64, offset: 4480)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2662, file: !67, line: 741, baseType: !344, size: 64, offset: 4544)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2662, file: !67, line: 746, baseType: !344, size: 64, offset: 4608)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2662, file: !67, line: 747, baseType: !2999, size: 64, offset: 4672)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3001)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 747, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2662, file: !67, line: 749, baseType: !3003, size: 64, offset: 4736)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 428, size: 128, elements: !3005)
!3005 = !{!3006, !3007, !3008}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3004, file: !67, line: 433, baseType: !7, size: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3004, file: !67, line: 434, baseType: !7, size: 32, offset: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3004, file: !67, line: 435, baseType: !166, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2662, file: !67, line: 751, baseType: !226, size: 128, offset: 4800)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2662, file: !67, line: 762, baseType: !3011, size: 64, offset: 4928)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !67, line: 762, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2662, file: !67, line: 770, baseType: !3014, offset: 4992)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3015, line: 5, elements: !1202)
!3015 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2662, file: !67, line: 772, baseType: !3017, size: 64, offset: 4992)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3019, line: 18, flags: DIFlagFwdDecl)
!3019 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2662, file: !67, line: 773, baseType: !3021, size: 64, offset: 5056)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2726, line: 22, flags: DIFlagFwdDecl)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2662, file: !67, line: 776, baseType: !87, size: 32, offset: 5120)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2662, file: !67, line: 778, baseType: !439, size: 32, offset: 5152)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2662, file: !67, line: 779, baseType: !340, size: 32, offset: 5184)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2662, file: !67, line: 781, baseType: !367, size: 32, offset: 5216)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2662, file: !67, line: 782, baseType: !226, size: 128, offset: 5248)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2662, file: !67, line: 784, baseType: !3029, size: 64, offset: 5376)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3031)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3032, line: 52, size: 768, elements: !3033)
!3032 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3033 = !{!3034, !3035, !3036, !3037, !3038, !3042, !3046, !3047, !3048, !3049, !3053, !3057}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3031, file: !3032, line: 53, baseType: !397, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3031, file: !3032, line: 55, baseType: !573, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3031, file: !3032, line: 56, baseType: !573, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3031, file: !3032, line: 58, baseType: !2678, size: 64, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3031, file: !3032, line: 59, baseType: !3039, size: 64, offset: 256)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!423, !2681, !2590}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3031, file: !3032, line: 61, baseType: !3043, size: 64, offset: 320)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !3029}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3031, file: !3032, line: 62, baseType: !2688, size: 64, offset: 384)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3031, file: !3032, line: 64, baseType: !2697, size: 64, offset: 448)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3031, file: !3032, line: 66, baseType: !1597, size: 64, offset: 512)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3031, file: !3032, line: 67, baseType: !3050, size: 64, offset: 576)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!1297, !2681}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3031, file: !3032, line: 69, baseType: !3054, size: 64, offset: 640)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{null, !2681, !1632, !1633}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3031, file: !3032, line: 71, baseType: !2692, size: 64, offset: 704)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2662, file: !67, line: 785, baseType: !573, size: 64, offset: 5440)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2662, file: !67, line: 787, baseType: !2688, size: 64, offset: 5504)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2662, file: !67, line: 788, baseType: !3061, size: 64, offset: 5568)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 46, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2662, file: !67, line: 789, baseType: !3064, size: 64, offset: 5632)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 48, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2662, file: !67, line: 791, baseType: !3067, size: 64, offset: 5696)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !67, line: 597, size: 128, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3073, !3074}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3068, file: !67, line: 598, baseType: !94, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3068, file: !67, line: 599, baseType: !103, size: 32, offset: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3068, file: !67, line: 600, baseType: !108, size: 32, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3068, file: !67, line: 601, baseType: !812, size: 8, offset: 96)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3068, file: !67, line: 602, baseType: !812, size: 8, offset: 104)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2662, file: !67, line: 793, baseType: !113, size: 32, offset: 5760)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2662, file: !67, line: 795, baseType: !812, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2662, file: !67, line: 796, baseType: !812, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2662, file: !67, line: 797, baseType: !812, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2662, file: !67, line: 798, baseType: !812, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2662, file: !67, line: 799, baseType: !812, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2608, file: !55, line: 451, baseType: !86, size: 32, offset: 1536)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2608, file: !55, line: 457, baseType: !166, size: 64, offset: 1600)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2608, file: !55, line: 459, baseType: !7, size: 32, offset: 1664)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2608, file: !55, line: 466, baseType: !7, size: 32, offset: 1696)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2608, file: !55, line: 468, baseType: !2004, size: 320, offset: 1728)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2608, file: !55, line: 469, baseType: !1336, size: 256, offset: 2048)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2608, file: !55, line: 471, baseType: !200, size: 32, offset: 2304)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2608, file: !55, line: 473, baseType: !3089, size: 64, offset: 2368)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !55, line: 473, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2608, file: !55, line: 475, baseType: !226, size: 128, offset: 2432)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2608, file: !55, line: 477, baseType: !3093, size: 64, offset: 2560)
!3093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !3094)
!3094 = !{!3095}
!3095 = !DISubrange(count: 1)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2608, file: !55, line: 478, baseType: !2461, size: 64, offset: 2624)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2608, file: !55, line: 479, baseType: !226, size: 128, offset: 2688)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2608, file: !55, line: 480, baseType: !170, size: 256, offset: 2816)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2608, file: !55, line: 483, baseType: !3100, size: 960, offset: 3072)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !55, line: 300, size: 960, elements: !3101)
!3101 = !{!3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !3100, file: !55, line: 301, baseType: !119, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3100, file: !55, line: 302, baseType: !166, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3100, file: !55, line: 303, baseType: !166, size: 64, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3100, file: !55, line: 305, baseType: !7, size: 32, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3100, file: !55, line: 306, baseType: !7, size: 32, offset: 224)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3100, file: !55, line: 307, baseType: !7, size: 32, offset: 256)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3100, file: !55, line: 308, baseType: !7, size: 32, offset: 288)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !3100, file: !55, line: 309, baseType: !7, size: 32, offset: 320)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3100, file: !55, line: 310, baseType: !7, size: 32, offset: 352)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3100, file: !55, line: 311, baseType: !7, size: 32, offset: 384)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3100, file: !55, line: 312, baseType: !7, size: 32, offset: 416)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3100, file: !55, line: 313, baseType: !7, size: 32, offset: 448)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3100, file: !55, line: 314, baseType: !7, size: 32, offset: 480)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3100, file: !55, line: 315, baseType: !7, size: 32, offset: 512)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3100, file: !55, line: 316, baseType: !7, size: 32, offset: 544)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3100, file: !55, line: 317, baseType: !7, size: 32, offset: 576)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !3100, file: !55, line: 318, baseType: !7, size: 32, offset: 608)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3100, file: !55, line: 319, baseType: !7, size: 32, offset: 640)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3100, file: !55, line: 320, baseType: !7, size: 32, offset: 672)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3100, file: !55, line: 321, baseType: !7, size: 32, offset: 704)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3100, file: !55, line: 322, baseType: !7, size: 32, offset: 736)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !3100, file: !55, line: 323, baseType: !7, size: 32, offset: 768)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3100, file: !55, line: 325, baseType: !218, size: 16, offset: 800)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3100, file: !55, line: 326, baseType: !218, size: 16, offset: 816)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3100, file: !55, line: 327, baseType: !218, size: 16, offset: 832)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3100, file: !55, line: 329, baseType: !210, size: 8, offset: 848)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3100, file: !55, line: 330, baseType: !210, size: 8, offset: 856)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3100, file: !55, line: 331, baseType: !210, size: 8, offset: 864)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3100, file: !55, line: 332, baseType: !123, size: 32, offset: 896)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3100, file: !55, line: 339, baseType: !7, size: 32, offset: 928)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2608, file: !55, line: 485, baseType: !7, size: 32, offset: 4032)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2608, file: !55, line: 487, baseType: !87, size: 32, offset: 4064)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2608, file: !55, line: 489, baseType: !3135, size: 64, offset: 4096)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !55, line: 31, flags: DIFlagFwdDecl)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2608, file: !55, line: 494, baseType: !3138, size: 64, offset: 4160)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !55, line: 35, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2608, file: !55, line: 495, baseType: !226, size: 128, offset: 4224)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2608, file: !55, line: 497, baseType: !226, size: 128, offset: 4352)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2608, file: !55, line: 498, baseType: !367, size: 32, offset: 4480)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2608, file: !55, line: 499, baseType: !2061, size: 704, offset: 4544)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2608, file: !55, line: 501, baseType: !170, size: 256, offset: 5248)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2608, file: !55, line: 502, baseType: !170, size: 256, offset: 5504)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2608, file: !55, line: 508, baseType: !226, size: 128, offset: 5760)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2608, file: !55, line: 509, baseType: !367, size: 32, offset: 5888)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2608, file: !55, line: 511, baseType: !87, size: 32, offset: 5920)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2608, file: !55, line: 517, baseType: !614, size: 128, align: 64, offset: 5952)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2608, file: !55, line: 518, baseType: !681, size: 192, offset: 6080)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2608, file: !55, line: 523, baseType: !170, size: 256, offset: 6272)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2608, file: !55, line: 525, baseType: !87, size: 32, offset: 6528)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2608, file: !55, line: 527, baseType: !3154, size: 64, offset: 6592)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !55, line: 527, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2608, file: !55, line: 528, baseType: !226, size: 128, offset: 6656)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2608, file: !55, line: 530, baseType: !306, size: 64, offset: 6784)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2608, file: !55, line: 531, baseType: !306, size: 64, offset: 6848)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2608, file: !55, line: 532, baseType: !306, size: 64, offset: 6912)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2608, file: !55, line: 536, baseType: !170, size: 256, offset: 6976)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2608, file: !55, line: 538, baseType: !812, size: 8, offset: 7232)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2415, file: !55, line: 147, baseType: !260, size: 64, offset: 704)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2415, file: !55, line: 149, baseType: !2477, size: 1984, offset: 768)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2415, file: !55, line: 151, baseType: !87, size: 32, offset: 2752)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2415, file: !55, line: 152, baseType: !166, size: 64, offset: 2816)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2415, file: !55, line: 161, baseType: !170, size: 256, offset: 2880)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2415, file: !55, line: 162, baseType: !7, size: 32, offset: 3136)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2415, file: !55, line: 164, baseType: !3169, size: 64, offset: 3200)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2415, file: !55, line: 165, baseType: !484, size: 512, offset: 3264)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2415, file: !55, line: 166, baseType: !490, size: 64, offset: 3776)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2415, file: !55, line: 168, baseType: !226, size: 128, offset: 3840)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2415, file: !55, line: 170, baseType: !3175, size: 64, offset: 3968)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !55, line: 170, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2415, file: !55, line: 171, baseType: !200, size: 32, offset: 4032)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2415, file: !55, line: 172, baseType: !3179, size: 64, offset: 4096)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !55, line: 104, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2415, file: !55, line: 197, baseType: !3182, size: 64, offset: 4160)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !55, line: 197, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2415, file: !55, line: 199, baseType: !87, size: 32, offset: 4224)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2415, file: !55, line: 200, baseType: !3186, size: 64, offset: 4288)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !55, line: 105, flags: DIFlagFwdDecl)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2415, file: !55, line: 201, baseType: !2032, offset: 4352)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2415, file: !55, line: 202, baseType: !344, size: 64, offset: 4352)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2415, file: !55, line: 203, baseType: !2530, size: 32, offset: 4416)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2415, file: !55, line: 209, baseType: !3192, size: 64, offset: 4480)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !55, line: 384, size: 576, elements: !3194)
!3194 = !{!3195, !3196, !3197, !3198}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3193, file: !55, line: 385, baseType: !484, size: 512)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3193, file: !55, line: 386, baseType: !812, size: 8, offset: 512)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3193, file: !55, line: 387, baseType: !7, size: 32, offset: 544)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3193, file: !55, line: 388, baseType: !3199, offset: 576)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3200, elements: !696)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !55, line: 378, size: 640, elements: !3201)
!3201 = !{!3202, !3203, !3204}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3200, file: !55, line: 379, baseType: !484, size: 512)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3200, file: !55, line: 380, baseType: !2411, size: 64, offset: 512)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3200, file: !55, line: 381, baseType: !2411, size: 64, offset: 576)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2407, file: !2408, line: 44, baseType: !2607, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2407, file: !2408, line: 45, baseType: !3207, size: 64, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2408, line: 45, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2407, file: !2408, line: 46, baseType: !166, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2407, file: !2408, line: 47, baseType: !812, size: 8, offset: 384)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2407, file: !2408, line: 48, baseType: !208, size: 8, offset: 392)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2407, file: !2408, line: 49, baseType: !812, size: 8, offset: 400)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2407, file: !2408, line: 50, baseType: !812, size: 8, offset: 408)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2407, file: !2408, line: 51, baseType: !439, size: 32, offset: 416)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2407, file: !2408, line: 52, baseType: !200, size: 32, offset: 448)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2407, file: !2408, line: 53, baseType: !367, size: 32, offset: 480)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2407, file: !2408, line: 54, baseType: !269, size: 64, offset: 512)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2407, file: !2408, line: 55, baseType: !260, size: 64, offset: 576)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2407, file: !2408, line: 56, baseType: !260, size: 64, offset: 640)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2407, file: !2408, line: 57, baseType: !3221, size: 64, offset: 704)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3223)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !55, line: 1477, size: 128, elements: !3224)
!3224 = !{!3225, !3229}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3223, file: !55, line: 1478, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{null, !2406, !812}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3223, file: !55, line: 1483, baseType: !3230, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{null, !2406}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2407, file: !2408, line: 58, baseType: !170, size: 256, offset: 768)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2407, file: !2408, line: 60, baseType: !87, size: 32, offset: 1024)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2407, file: !2408, line: 61, baseType: !87, size: 32, offset: 1056)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2407, file: !2408, line: 62, baseType: !490, size: 64, offset: 1088)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2407, file: !2408, line: 65, baseType: !170, size: 256, offset: 1152)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2407, file: !2408, line: 66, baseType: !434, size: 64, offset: 1408)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2407, file: !2408, line: 68, baseType: !3240, size: 64, offset: 1472)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !55, line: 63, size: 808, elements: !3242)
!3242 = !{!3243, !3247}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3241, file: !55, line: 64, baseType: !3244, size: 296)
!3244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 296, elements: !3245)
!3245 = !{!3246}
!3246 = !DISubrange(count: 37)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3241, file: !55, line: 65, baseType: !3248, size: 512, offset: 296)
!3248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 512, elements: !529)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2407, file: !2408, line: 72, baseType: !812, size: 8, offset: 1536)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2407, file: !2408, line: 77, baseType: !2662, size: 5824, offset: 1600)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !435, file: !44, line: 1226, baseType: !3252, size: 64, offset: 1664)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !55, line: 1495, size: 128, elements: !3254)
!3254 = !{!3255, !3256}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3253, file: !55, line: 1496, baseType: !2406, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3253, file: !55, line: 1497, baseType: !260, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !435, file: !44, line: 1227, baseType: !3169, size: 64, offset: 1728)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !435, file: !44, line: 1228, baseType: !3259, size: 64, offset: 1792)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1228, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !435, file: !44, line: 1229, baseType: !672, size: 128, offset: 1856)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !435, file: !44, line: 1230, baseType: !7, size: 32, offset: 1984)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !435, file: !44, line: 1231, baseType: !3264, size: 2496, offset: 2048)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !49, line: 521, size: 2496, elements: !3265)
!3265 = !{!3266, !3267, !3268, !3270, !3302}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3264, file: !49, line: 522, baseType: !7, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3264, file: !49, line: 523, baseType: !753, size: 320, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3264, file: !49, line: 524, baseType: !3269, size: 192, offset: 384)
!3269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 192, elements: !525)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3264, file: !49, line: 525, baseType: !3271, size: 1728, offset: 576)
!3271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3272, size: 1728, elements: !525)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !49, line: 222, size: 576, elements: !3273)
!3273 = !{!3274, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3272, file: !49, line: 223, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !49, line: 445, size: 256, elements: !3277)
!3277 = !{!3278, !3279, !3292, !3293}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3276, file: !49, line: 446, baseType: !87, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3276, file: !49, line: 447, baseType: !3280, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3282)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !49, line: 312, size: 512, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3282, file: !49, line: 313, baseType: !2155, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3282, file: !49, line: 314, baseType: !2155, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3282, file: !49, line: 315, baseType: !2155, size: 64, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3282, file: !49, line: 316, baseType: !2155, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3282, file: !49, line: 317, baseType: !2264, size: 64, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3282, file: !49, line: 318, baseType: !2264, size: 64, offset: 320)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3282, file: !49, line: 319, baseType: !2264, size: 64, offset: 384)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3282, file: !49, line: 320, baseType: !2294, size: 64, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3276, file: !49, line: 448, baseType: !471, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3276, file: !49, line: 449, baseType: !3275, size: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3272, file: !49, line: 224, baseType: !87, size: 32, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3272, file: !49, line: 226, baseType: !226, size: 128, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3272, file: !49, line: 227, baseType: !166, size: 64, offset: 256)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3272, file: !49, line: 228, baseType: !7, size: 32, offset: 320)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3272, file: !49, line: 229, baseType: !7, size: 32, offset: 352)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3272, file: !49, line: 230, baseType: !2232, size: 64, offset: 384)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3272, file: !49, line: 231, baseType: !2232, size: 64, offset: 448)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3272, file: !49, line: 232, baseType: !260, size: 64, offset: 512)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3264, file: !49, line: 526, baseType: !3303, size: 192, offset: 2304)
!3303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3280, size: 192, elements: !525)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !435, file: !44, line: 1233, baseType: !3305, size: 2368, offset: 4544)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1184, size: 2368, elements: !3306)
!3306 = !{!3307, !3308, !3309}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3305, file: !44, line: 1185, baseType: !218, size: 16)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3305, file: !44, line: 1186, baseType: !218, size: 16, offset: 16)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3305, file: !44, line: 1187, baseType: !3310, size: 2304, offset: 64)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3311, size: 2304, elements: !525)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3312, line: 12, size: 768, elements: !3313)
!3312 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3313 = !{!3314, !3322, !3323, !4434, !4435}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3311, file: !3312, line: 13, baseType: !3315, size: 384)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3316, line: 17, size: 384, elements: !3317)
!3316 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3317 = !{!3318, !3319, !3320, !3321}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3315, file: !3316, line: 18, baseType: !87, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3315, file: !3316, line: 19, baseType: !87, size: 32, offset: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3315, file: !3316, line: 20, baseType: !681, size: 192, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3315, file: !3316, line: 22, baseType: !614, size: 128, align: 64, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3311, file: !3312, line: 14, baseType: !1856, size: 64, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3311, file: !3312, line: 15, baseType: !3324, size: 64, offset: 448)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3325, line: 16, size: 64, elements: !3326)
!3325 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3326 = !{!3327}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3324, file: !3325, line: 17, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1530, line: 746, size: 58368, elements: !3330)
!3330 = !{!3331, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3411, !3422, !3442, !3446, !3449, !3480, !3481, !3482, !3483, !3491, !3493, !3494, !3495, !3496, !3497, !3498, !3509, !3510, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3527, !3528, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3616, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3664, !3670, !3671, !3672, !3673, !3674, !3678, !3681, !3688, !3693, !3696, !3699, !3702, !3705, !3843, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3881, !3882, !3883, !3892, !3900, !3901, !3902, !3903, !3904, !3909, !3910, !3911, !3914, !3915, !3917, !3928, !3931, !3939, !3942, !3943, !4029, !4030, !4031, !4032, !4033, !4039, !4040, !4041, !4042, !4045, !4046, !4049, !4052, !4053, !4056, !4057, !4058, !4061, !4062, !4063, !4064, !4065, !4066, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4098, !4099, !4105, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4187, !4189, !4190, !4191, !4192, !4193, !4194, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4211, !4212, !4213}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3329, file: !1530, line: 752, baseType: !3332, size: 192)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3333, line: 56, size: 192, elements: !3334)
!3333 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3334 = !{!3335, !3336, !3337, !3338}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3332, file: !3333, line: 57, baseType: !166, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3332, file: !3333, line: 58, baseType: !166, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3332, file: !3333, line: 59, baseType: !340, size: 32, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3332, file: !3333, line: 61, baseType: !340, size: 32, offset: 160)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3329, file: !1530, line: 754, baseType: !7, size: 32, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3329, file: !1530, line: 767, baseType: !260, size: 64, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3329, file: !1530, line: 768, baseType: !659, size: 32, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3329, file: !1530, line: 770, baseType: !7, size: 32, offset: 352)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3329, file: !1530, line: 771, baseType: !7, size: 32, offset: 384)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3329, file: !1530, line: 774, baseType: !87, size: 32, offset: 416)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3329, file: !1530, line: 775, baseType: !3346, size: 128, offset: 448)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3347, line: 58, size: 128, elements: !3348)
!3347 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3348 = !{!3349, !3350, !3355, !3356}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3346, file: !3347, line: 59, baseType: !608, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, scope: !3346, file: !3347, line: 60, baseType: !3351, size: 32, offset: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3346, file: !3347, line: 60, size: 32, elements: !3352)
!3352 = !{!3353, !3354}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3351, file: !3347, line: 61, baseType: !7, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3351, file: !3347, line: 62, baseType: !200, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3346, file: !3347, line: 65, baseType: !216, size: 16, offset: 96)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3346, file: !3347, line: 65, baseType: !216, size: 16, offset: 112)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3329, file: !1530, line: 776, baseType: !7, size: 32, offset: 576)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3329, file: !1530, line: 777, baseType: !166, size: 64, offset: 640)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3329, file: !1530, line: 778, baseType: !3328, size: 64, offset: 704)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3329, file: !1530, line: 787, baseType: !87, size: 32, offset: 768)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3329, file: !1530, line: 788, baseType: !87, size: 32, offset: 800)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3329, file: !1530, line: 790, baseType: !87, size: 32, offset: 832)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3329, file: !1530, line: 792, baseType: !87, size: 32, offset: 864)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3329, file: !1530, line: 793, baseType: !87, size: 32, offset: 896)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3329, file: !1530, line: 794, baseType: !87, size: 32, offset: 928)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3329, file: !1530, line: 795, baseType: !7, size: 32, offset: 960)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3329, file: !1530, line: 797, baseType: !3368, size: 2048, offset: 1024)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1530, line: 551, size: 2048, elements: !3369)
!3369 = !{!3370, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3390, !3393, !3394, !3395}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3368, file: !1530, line: 553, baseType: !3371, size: 128)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1530, line: 411, size: 128, elements: !3372)
!3372 = !{!3373, !3374}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3371, file: !1530, line: 412, baseType: !166, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3371, file: !1530, line: 413, baseType: !340, size: 32, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3368, file: !1530, line: 554, baseType: !745, size: 192, align: 64, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3368, file: !1530, line: 555, baseType: !344, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3368, file: !1530, line: 556, baseType: !344, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3368, file: !1530, line: 558, baseType: !226, size: 128, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3368, file: !1530, line: 559, baseType: !7, size: 32, offset: 576)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3368, file: !1530, line: 561, baseType: !344, size: 64, offset: 640)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3368, file: !1530, line: 562, baseType: !344, size: 64, offset: 704)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3368, file: !1530, line: 563, baseType: !344, size: 64, offset: 768)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3368, file: !1530, line: 564, baseType: !344, size: 64, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3368, file: !1530, line: 565, baseType: !181, size: 64, offset: 896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3368, file: !1530, line: 566, baseType: !344, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3368, file: !1530, line: 568, baseType: !344, size: 64, offset: 1024)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3368, file: !1530, line: 571, baseType: !87, size: 32, offset: 1088)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3368, file: !1530, line: 572, baseType: !3389, size: 64, offset: 1152)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3368, file: !1530, line: 574, baseType: !3391, size: 64, offset: 1216)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1530, line: 49, flags: DIFlagFwdDecl)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3368, file: !1530, line: 576, baseType: !3391, size: 64, offset: 1280)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3368, file: !1530, line: 578, baseType: !166, size: 64, offset: 1344)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3368, file: !1530, line: 588, baseType: !3396, size: 512, align: 512, offset: 1536)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1530, line: 497, size: 512, align: 512, elements: !3397)
!3397 = !{!3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3396, file: !1530, line: 498, baseType: !344, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3396, file: !1530, line: 499, baseType: !344, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3396, file: !1530, line: 500, baseType: !344, size: 64, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3396, file: !1530, line: 501, baseType: !340, size: 32, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3396, file: !1530, line: 502, baseType: !340, size: 32, offset: 224)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3396, file: !1530, line: 503, baseType: !166, size: 64, offset: 256)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3396, file: !1530, line: 504, baseType: !166, size: 64, offset: 320)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3396, file: !1530, line: 505, baseType: !166, size: 64, offset: 384)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3396, file: !1530, line: 506, baseType: !3407, size: 64, align: 64, offset: 448)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1530, line: 445, size: 64, align: 64, elements: !3408)
!3408 = !{!3409, !3410}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3407, file: !1530, line: 446, baseType: !7, size: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3407, file: !1530, line: 447, baseType: !7, size: 32, offset: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3329, file: !1530, line: 798, baseType: !3412, size: 384, offset: 3072)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1530, line: 592, size: 384, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419, !3420}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3412, file: !1530, line: 593, baseType: !226, size: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3412, file: !1530, line: 594, baseType: !166, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3412, file: !1530, line: 595, baseType: !166, size: 64, offset: 192)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3412, file: !1530, line: 596, baseType: !7, size: 32, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3412, file: !1530, line: 597, baseType: !218, size: 16, offset: 288)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3412, file: !1530, line: 598, baseType: !218, size: 16, offset: 304)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3412, file: !1530, line: 600, baseType: !3421, size: 64, offset: 320)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3329, file: !1530, line: 799, baseType: !3423, size: 1792, offset: 3456)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1530, line: 610, size: 1792, elements: !3424)
!3424 = !{!3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3423, file: !1530, line: 611, baseType: !745, size: 192, align: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3423, file: !1530, line: 618, baseType: !344, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3423, file: !1530, line: 619, baseType: !344, size: 64, offset: 256)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3423, file: !1530, line: 620, baseType: !344, size: 64, offset: 320)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3423, file: !1530, line: 621, baseType: !344, size: 64, offset: 384)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3423, file: !1530, line: 622, baseType: !344, size: 64, offset: 448)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3423, file: !1530, line: 629, baseType: !181, size: 64, offset: 512)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3423, file: !1530, line: 630, baseType: !344, size: 64, offset: 576)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3423, file: !1530, line: 631, baseType: !7, size: 32, offset: 640)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3423, file: !1530, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3423, file: !1530, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3423, file: !1530, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3423, file: !1530, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3423, file: !1530, line: 662, baseType: !2856, size: 512, offset: 704)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3423, file: !1530, line: 671, baseType: !2856, size: 512, offset: 1216)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3423, file: !1530, line: 679, baseType: !3441, size: 64, offset: 1728)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3329, file: !1530, line: 800, baseType: !3443, size: 64, offset: 5248)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3445)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1530, line: 800, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3329, file: !1530, line: 809, baseType: !3447, size: 64, offset: 5312)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1530, line: 70, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3329, file: !1530, line: 825, baseType: !3450, size: 2048, align: 512, offset: 5632)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1530, line: 509, size: 2048, align: 512, elements: !3451)
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3450, file: !1530, line: 511, baseType: !344, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3450, file: !1530, line: 512, baseType: !344, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3450, file: !1530, line: 513, baseType: !344, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3450, file: !1530, line: 514, baseType: !344, size: 64, offset: 192)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3450, file: !1530, line: 515, baseType: !344, size: 64, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3450, file: !1530, line: 516, baseType: !344, size: 64, offset: 320)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3450, file: !1530, line: 518, baseType: !344, size: 64, offset: 384)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3450, file: !1530, line: 519, baseType: !344, size: 64, offset: 448)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3450, file: !1530, line: 520, baseType: !181, size: 64, offset: 512)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3450, file: !1530, line: 522, baseType: !344, size: 64, offset: 576)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3450, file: !1530, line: 523, baseType: !344, size: 64, offset: 640)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3450, file: !1530, line: 524, baseType: !181, size: 64, offset: 704)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3450, file: !1530, line: 526, baseType: !181, size: 64, offset: 768)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3450, file: !1530, line: 527, baseType: !344, size: 64, offset: 832)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3450, file: !1530, line: 529, baseType: !344, size: 64, offset: 896)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3450, file: !1530, line: 530, baseType: !344, size: 64, offset: 960)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3450, file: !1530, line: 531, baseType: !344, size: 64, offset: 1024)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3450, file: !1530, line: 532, baseType: !344, size: 64, offset: 1088)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3450, file: !1530, line: 533, baseType: !344, size: 64, offset: 1152)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3450, file: !1530, line: 535, baseType: !344, size: 64, offset: 1216)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3450, file: !1530, line: 536, baseType: !344, size: 64, offset: 1280)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3450, file: !1530, line: 537, baseType: !344, size: 64, offset: 1344)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3450, file: !1530, line: 538, baseType: !344, size: 64, offset: 1408)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3450, file: !1530, line: 539, baseType: !344, size: 64, offset: 1472)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3450, file: !1530, line: 540, baseType: !344, size: 64, offset: 1536)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3450, file: !1530, line: 541, baseType: !344, size: 64, offset: 1600)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3450, file: !1530, line: 542, baseType: !344, size: 64, offset: 1664)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3450, file: !1530, line: 543, baseType: !344, size: 64, offset: 1728)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3329, file: !1530, line: 833, baseType: !7, size: 32, offset: 7680)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3329, file: !1530, line: 836, baseType: !7, size: 32, offset: 7712)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3329, file: !1530, line: 837, baseType: !87, size: 32, offset: 7744)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3329, file: !1530, line: 838, baseType: !3484, size: 64, offset: 7808)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3486)
!3486 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3487, line: 19, baseType: !3488)
!3487 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3487, line: 19, size: 64, elements: !3489)
!3489 = !{!3490}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3488, file: !3487, line: 19, baseType: !3093, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3329, file: !1530, line: 839, baseType: !3492, size: 64, offset: 7872)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3329, file: !1530, line: 840, baseType: !3486, size: 64, offset: 7936)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3329, file: !1530, line: 841, baseType: !260, size: 64, offset: 8000)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3329, file: !1530, line: 843, baseType: !218, size: 16, offset: 8064)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3329, file: !1530, line: 845, baseType: !218, size: 16, offset: 8080)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3329, file: !1530, line: 848, baseType: !87, size: 32, offset: 8096)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3329, file: !1530, line: 849, baseType: !3499, size: 32, offset: 8128)
!3499 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1530, line: 718, size: 32, elements: !3500)
!3500 = !{!3501, !3508}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3499, file: !1530, line: 724, baseType: !3502, size: 32)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3499, file: !1530, line: 719, size: 32, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3502, file: !1530, line: 720, baseType: !208, size: 8)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3502, file: !1530, line: 721, baseType: !208, size: 8, offset: 8)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3502, file: !1530, line: 722, baseType: !208, size: 8, offset: 16)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3502, file: !1530, line: 723, baseType: !208, size: 8, offset: 24)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3499, file: !1530, line: 725, baseType: !340, size: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3329, file: !1530, line: 850, baseType: !226, size: 128, offset: 8192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3329, file: !1530, line: 851, baseType: !3511, size: 64, offset: 8320)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1530, line: 60, flags: DIFlagFwdDecl)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3329, file: !1530, line: 855, baseType: !166, size: 64, offset: 8384)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3329, file: !1530, line: 856, baseType: !208, size: 8, offset: 8448)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3329, file: !1530, line: 857, baseType: !208, size: 8, offset: 8456)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3329, file: !1530, line: 858, baseType: !87, size: 32, offset: 8480)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3329, file: !1530, line: 859, baseType: !226, size: 128, offset: 8512)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3329, file: !1530, line: 860, baseType: !87, size: 32, offset: 8640)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3329, file: !1530, line: 861, baseType: !226, size: 128, offset: 8704)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3329, file: !1530, line: 873, baseType: !3521, size: 256, offset: 8832)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1530, line: 376, size: 256, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3526}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3521, file: !1530, line: 381, baseType: !166, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3521, file: !1530, line: 384, baseType: !346, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3521, file: !1530, line: 389, baseType: !346, size: 64, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3521, file: !1530, line: 392, baseType: !346, size: 64, offset: 192)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3329, file: !1530, line: 875, baseType: !226, size: 128, offset: 9088)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3329, file: !1530, line: 877, baseType: !3529, size: 320, offset: 9216)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3530, line: 86, size: 320, elements: !3531)
!3530 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3531 = !{!3532, !3533, !3534}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3529, file: !3530, line: 87, baseType: !87, size: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3529, file: !3530, line: 88, baseType: !226, size: 128, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3529, file: !3530, line: 89, baseType: !226, size: 128, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3329, file: !1530, line: 878, baseType: !745, size: 192, align: 64, offset: 9536)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3329, file: !1530, line: 881, baseType: !1181, size: 64, offset: 9728)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3329, file: !1530, line: 882, baseType: !1181, size: 64, offset: 9792)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3329, file: !1530, line: 884, baseType: !87, size: 32, offset: 9856)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3329, file: !1530, line: 885, baseType: !87, size: 32, offset: 9888)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3329, file: !1530, line: 886, baseType: !87, size: 32, offset: 9920)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3329, file: !1530, line: 888, baseType: !87, size: 32, offset: 9952)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3329, file: !1530, line: 890, baseType: !166, size: 64, offset: 9984)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3329, file: !1530, line: 893, baseType: !7, size: 32, offset: 10048)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3329, file: !1530, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3329, file: !1530, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3329, file: !1530, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3329, file: !1530, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3329, file: !1530, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3329, file: !1530, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3329, file: !1530, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3329, file: !1530, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3329, file: !1530, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3329, file: !1530, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3329, file: !1530, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3329, file: !1530, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3329, file: !1530, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3329, file: !1530, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3329, file: !1530, line: 969, baseType: !166, size: 64, offset: 10176)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3329, file: !1530, line: 971, baseType: !3560, size: 448, offset: 10240)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !129, line: 25, size: 448, elements: !3561)
!3561 = !{!3562, !3563, !3568}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3560, file: !129, line: 26, baseType: !166, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3560, file: !129, line: 27, baseType: !3564, size: 64, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!559, !3567}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, scope: !3560, file: !129, line: 28, baseType: !3569, size: 320, offset: 128)
!3569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3560, file: !129, line: 28, size: 320, elements: !3570)
!3570 = !{!3571, !3581, !3606}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3569, file: !129, line: 37, baseType: !3572, size: 320)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3569, file: !129, line: 30, size: 320, elements: !3573)
!3573 = !{!3574, !3576, !3577, !3578, !3579, !3580}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3572, file: !129, line: 31, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3572, file: !129, line: 32, baseType: !340, size: 32, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3572, file: !129, line: 33, baseType: !340, size: 32, offset: 96)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3572, file: !129, line: 34, baseType: !340, size: 32, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3572, file: !129, line: 35, baseType: !344, size: 64, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3572, file: !129, line: 36, baseType: !3575, size: 64, offset: 256)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3569, file: !129, line: 47, baseType: !3582, size: 192)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3569, file: !129, line: 39, size: 192, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3605}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3582, file: !129, line: 40, baseType: !2901, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3582, file: !129, line: 41, baseType: !128, size: 32, offset: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, scope: !3582, file: !129, line: 42, baseType: !3587, size: 64, offset: 64)
!3587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3582, file: !129, line: 42, size: 64, elements: !3588)
!3588 = !{!3589, !3597}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3587, file: !129, line: 43, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3592, line: 7, size: 128, elements: !3593)
!3592 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3593 = !{!3594, !3596}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3591, file: !3592, line: 8, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !283, line: 93, baseType: !185)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3591, file: !3592, line: 9, baseType: !185, size: 64, offset: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3587, file: !129, line: 44, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3600, line: 7, size: 64, elements: !3601)
!3600 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3601 = !{!3602, !3604}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3599, file: !3600, line: 8, baseType: !3603, size: 32)
!3603 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3600, line: 5, baseType: !738)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3599, file: !3600, line: 9, baseType: !738, size: 32, offset: 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3582, file: !129, line: 46, baseType: !344, size: 64, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3569, file: !129, line: 55, baseType: !3607, size: 256)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3569, file: !129, line: 49, size: 256, elements: !3608)
!3608 = !{!3609, !3612, !3613, !3614, !3615}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3607, file: !129, line: 50, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !129, line: 14, flags: DIFlagFwdDecl)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3607, file: !129, line: 51, baseType: !87, size: 32, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3607, file: !129, line: 52, baseType: !87, size: 32, offset: 96)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3607, file: !129, line: 53, baseType: !166, size: 64, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3607, file: !129, line: 54, baseType: !166, size: 64, offset: 192)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3329, file: !1530, line: 973, baseType: !3617, size: 32, offset: 10688)
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !177, line: 27, baseType: !3618)
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !283, line: 28, baseType: !87)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3329, file: !1530, line: 974, baseType: !3617, size: 32, offset: 10720)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3329, file: !1530, line: 978, baseType: !166, size: 64, offset: 10752)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3329, file: !1530, line: 987, baseType: !3328, size: 64, offset: 10816)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3329, file: !1530, line: 990, baseType: !3328, size: 64, offset: 10880)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3329, file: !1530, line: 995, baseType: !226, size: 128, offset: 10944)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3329, file: !1530, line: 996, baseType: !226, size: 128, offset: 11072)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3329, file: !1530, line: 997, baseType: !3328, size: 64, offset: 11200)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3329, file: !1530, line: 1005, baseType: !226, size: 128, offset: 11264)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3329, file: !1530, line: 1006, baseType: !226, size: 128, offset: 11392)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3329, file: !1530, line: 1009, baseType: !655, size: 64, offset: 11520)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3329, file: !1530, line: 1010, baseType: !3630, size: 512, offset: 11584)
!3630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 512, elements: !677)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3329, file: !1530, line: 1011, baseType: !226, size: 128, offset: 12096)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3329, file: !1530, line: 1012, baseType: !226, size: 128, offset: 12224)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3329, file: !1530, line: 1014, baseType: !1757, size: 64, offset: 12352)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3329, file: !1530, line: 1017, baseType: !1904, size: 64, offset: 12416)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3329, file: !1530, line: 1020, baseType: !1904, size: 64, offset: 12480)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3329, file: !1530, line: 1023, baseType: !260, size: 64, offset: 12544)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3329, file: !1530, line: 1025, baseType: !344, size: 64, offset: 12608)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3329, file: !1530, line: 1026, baseType: !344, size: 64, offset: 12672)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3329, file: !1530, line: 1031, baseType: !344, size: 64, offset: 12736)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3329, file: !1530, line: 1032, baseType: !3641, size: 192, offset: 12800)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1530, line: 324, size: 192, elements: !3642)
!3642 = !{!3643, !3644, !3645}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3641, file: !1530, line: 326, baseType: !344, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3641, file: !1530, line: 327, baseType: !344, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3641, file: !1530, line: 328, baseType: !187, size: 32, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3329, file: !1530, line: 1041, baseType: !166, size: 64, offset: 12992)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3329, file: !1530, line: 1042, baseType: !166, size: 64, offset: 13056)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3329, file: !1530, line: 1045, baseType: !344, size: 64, offset: 13120)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3329, file: !1530, line: 1048, baseType: !344, size: 64, offset: 13184)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3329, file: !1530, line: 1051, baseType: !166, size: 64, offset: 13248)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3329, file: !1530, line: 1052, baseType: !166, size: 64, offset: 13312)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3329, file: !1530, line: 1055, baseType: !3653, size: 640, offset: 13376)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3654, line: 132, size: 640, elements: !3655)
!3654 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3655 = !{!3656, !3662, !3663}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3653, file: !3654, line: 133, baseType: !3657, size: 576)
!3657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3658, size: 576, elements: !525)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3654, line: 117, size: 192, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3658, file: !3654, line: 118, baseType: !344, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3658, file: !3654, line: 119, baseType: !2910, size: 128, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3653, file: !3654, line: 134, baseType: !7, size: 32, offset: 576)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3653, file: !3654, line: 135, baseType: !7, size: 32, offset: 608)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3329, file: !1530, line: 1058, baseType: !3665, size: 448, offset: 14016)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3654, line: 144, size: 448, elements: !3666)
!3666 = !{!3667, !3668, !3669}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3665, file: !3654, line: 145, baseType: !614, size: 128, align: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3665, file: !3654, line: 146, baseType: !170, size: 256, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3665, file: !3654, line: 147, baseType: !7, size: 32, offset: 384)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3329, file: !1530, line: 1064, baseType: !703, size: 64, offset: 14464)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3329, file: !1530, line: 1067, baseType: !703, size: 64, offset: 14528)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3329, file: !1530, line: 1070, baseType: !703, size: 64, offset: 14592)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3329, file: !1530, line: 1074, baseType: !730, size: 64, offset: 14656)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3329, file: !1530, line: 1084, baseType: !3675, size: 128, offset: 14720)
!3675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 128, elements: !3676)
!3676 = !{!3677}
!3677 = !DISubrange(count: 16)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3329, file: !1530, line: 1086, baseType: !3679, size: 64, offset: 14848)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1530, line: 55, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3329, file: !1530, line: 1089, baseType: !3682, size: 64, offset: 14912)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3683, line: 12, size: 64, elements: !3684)
!3683 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3684 = !{!3685}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3682, file: !3683, line: 13, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3683, line: 8, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3329, file: !1530, line: 1090, baseType: !3689, size: 128, offset: 14976)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3690, line: 13, size: 128, elements: !3691)
!3690 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3691 = !{!3692}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3689, file: !3690, line: 14, baseType: !226, size: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3329, file: !1530, line: 1097, baseType: !3694, size: 64, offset: 15104)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1530, line: 50, flags: DIFlagFwdDecl)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3329, file: !1530, line: 1100, baseType: !3697, size: 64, offset: 15168)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1530, line: 1100, flags: DIFlagFwdDecl)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3329, file: !1530, line: 1103, baseType: !3700, size: 64, offset: 15232)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1530, line: 53, flags: DIFlagFwdDecl)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3329, file: !1530, line: 1107, baseType: !3703, size: 64, offset: 15296)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1530, line: 56, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3329, file: !1530, line: 1110, baseType: !3706, size: 64, offset: 15360)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3708, line: 93, size: 8768, elements: !3709)
!3708 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3709 = !{!3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3757, !3766, !3767, !3769, !3770, !3771, !3774, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3812, !3813, !3820, !3830, !3833, !3834, !3837, !3838, !3839, !3840, !3841, !3842}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3707, file: !3708, line: 94, baseType: !659, size: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3707, file: !3708, line: 95, baseType: !200, size: 32, offset: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3707, file: !3708, line: 96, baseType: !87, size: 32, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3707, file: !3708, line: 97, baseType: !87, size: 32, offset: 96)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3707, file: !3708, line: 98, baseType: !226, size: 128, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3707, file: !3708, line: 100, baseType: !681, size: 192, offset: 256)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3707, file: !3708, line: 103, baseType: !3328, size: 64, offset: 448)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3707, file: !3708, line: 106, baseType: !3718, size: 192, offset: 512)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !900, line: 32, size: 192, elements: !3719)
!3719 = !{!3720, !3721}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3718, file: !900, line: 33, baseType: !226, size: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3718, file: !900, line: 34, baseType: !3722, size: 64, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3723, line: 25, baseType: !3724)
!3723 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3723, line: 23, size: 64, elements: !3725)
!3725 = !{!3726}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3724, file: !3723, line: 24, baseType: !3093, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3707, file: !3708, line: 109, baseType: !668, size: 64, offset: 704)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3707, file: !3708, line: 112, baseType: !87, size: 32, offset: 768)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3707, file: !3708, line: 114, baseType: !87, size: 32, offset: 800)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3707, file: !3708, line: 115, baseType: !3328, size: 64, offset: 832)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3707, file: !3708, line: 118, baseType: !87, size: 32, offset: 896)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3707, file: !3708, line: 119, baseType: !7, size: 32, offset: 928)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3707, file: !3708, line: 121, baseType: !3734, size: 64, offset: 960)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3708, line: 80, size: 448, elements: !3736)
!3736 = !{!3737, !3738, !3744}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3735, file: !3708, line: 81, baseType: !200, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3735, file: !3708, line: 82, baseType: !3739, size: 128, offset: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3708, line: 75, size: 128, elements: !3740)
!3740 = !{!3741, !3742}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3739, file: !3708, line: 76, baseType: !3328, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3739, file: !3708, line: 77, baseType: !3743, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3735, file: !3708, line: 83, baseType: !1758, size: 256, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3707, file: !3708, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3707, file: !3708, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3707, file: !3708, line: 138, baseType: !7, size: 32, offset: 1056)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3707, file: !3708, line: 139, baseType: !226, size: 128, offset: 1088)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3707, file: !3708, line: 142, baseType: !2856, size: 512, offset: 1216)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3707, file: !3708, line: 143, baseType: !2836, size: 64, offset: 1728)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3707, file: !3708, line: 150, baseType: !3752, size: 256, offset: 1792)
!3752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3753, size: 256, elements: !1894)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3708, line: 38, size: 128, elements: !3754)
!3754 = !{!3755, !3756}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3753, file: !3708, line: 39, baseType: !344, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3753, file: !3708, line: 40, baseType: !344, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3707, file: !3708, line: 156, baseType: !3758, size: 192, offset: 2048)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3708, line: 66, size: 192, elements: !3759)
!3759 = !{!3760}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3758, file: !3708, line: 67, baseType: !3761, size: 192)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3708, line: 47, size: 192, elements: !3762)
!3762 = !{!3763, !3764, !3765}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3761, file: !3708, line: 48, baseType: !176, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3761, file: !3708, line: 49, baseType: !176, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3761, file: !3708, line: 50, baseType: !176, size: 64, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3707, file: !3708, line: 160, baseType: !3653, size: 640, offset: 2240)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3707, file: !3708, line: 163, baseType: !3768, size: 256, offset: 2880)
!3768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 256, elements: !677)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3707, file: !3708, line: 169, baseType: !655, size: 64, offset: 3136)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3707, file: !3708, line: 172, baseType: !87, size: 32, offset: 3200)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3707, file: !3708, line: 174, baseType: !3772, size: 64, offset: 3264)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3708, line: 174, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3707, file: !3708, line: 185, baseType: !3775, size: 64, offset: 3328)
!3775 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !313, line: 860, baseType: !3776)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !313, line: 853, size: 64, elements: !3777)
!3777 = !{!3778, !3779}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3776, file: !313, line: 858, baseType: !312, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3776, file: !313, line: 859, baseType: !367, size: 32, offset: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3707, file: !3708, line: 186, baseType: !344, size: 64, offset: 3392)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3707, file: !3708, line: 186, baseType: !344, size: 64, offset: 3456)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3707, file: !3708, line: 186, baseType: !344, size: 64, offset: 3520)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3707, file: !3708, line: 186, baseType: !344, size: 64, offset: 3584)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3707, file: !3708, line: 187, baseType: !344, size: 64, offset: 3648)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3707, file: !3708, line: 188, baseType: !344, size: 64, offset: 3712)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3707, file: !3708, line: 189, baseType: !3641, size: 192, offset: 3776)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3707, file: !3708, line: 190, baseType: !166, size: 64, offset: 3968)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3707, file: !3708, line: 190, baseType: !166, size: 64, offset: 4032)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3707, file: !3708, line: 190, baseType: !166, size: 64, offset: 4096)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3707, file: !3708, line: 190, baseType: !166, size: 64, offset: 4160)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3707, file: !3708, line: 191, baseType: !166, size: 64, offset: 4224)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3707, file: !3708, line: 191, baseType: !166, size: 64, offset: 4288)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3707, file: !3708, line: 191, baseType: !166, size: 64, offset: 4352)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3707, file: !3708, line: 191, baseType: !166, size: 64, offset: 4416)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3707, file: !3708, line: 192, baseType: !166, size: 64, offset: 4480)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3707, file: !3708, line: 192, baseType: !166, size: 64, offset: 4544)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3707, file: !3708, line: 192, baseType: !166, size: 64, offset: 4608)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3707, file: !3708, line: 192, baseType: !166, size: 64, offset: 4672)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3707, file: !3708, line: 193, baseType: !166, size: 64, offset: 4736)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3707, file: !3708, line: 193, baseType: !166, size: 64, offset: 4800)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3707, file: !3708, line: 194, baseType: !3802, size: 448, offset: 4864)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3803, line: 12, size: 448, elements: !3804)
!3803 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3804 = !{!3805, !3806, !3807, !3808, !3809, !3810, !3811}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3802, file: !3803, line: 15, baseType: !344, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3802, file: !3803, line: 17, baseType: !344, size: 64, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3802, file: !3803, line: 19, baseType: !344, size: 64, offset: 128)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3802, file: !3803, line: 21, baseType: !344, size: 64, offset: 192)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3802, file: !3803, line: 29, baseType: !344, size: 64, offset: 256)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3802, file: !3803, line: 35, baseType: !344, size: 64, offset: 320)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3802, file: !3803, line: 44, baseType: !344, size: 64, offset: 384)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3707, file: !3708, line: 202, baseType: !346, size: 64, offset: 5312)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3707, file: !3708, line: 213, baseType: !3814, size: 2048, offset: 5376)
!3814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3815, size: 2048, elements: !3676)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3816, line: 43, size: 128, elements: !3817)
!3816 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3817 = !{!3818, !3819}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3815, file: !3816, line: 44, baseType: !571, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3815, file: !3816, line: 45, baseType: !571, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3707, file: !3708, line: 216, baseType: !3821, size: 448, offset: 7424)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3708, line: 30, size: 448, elements: !3822)
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3828, !3829}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3821, file: !3708, line: 31, baseType: !87, size: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3821, file: !3708, line: 32, baseType: !559, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3821, file: !3708, line: 33, baseType: !166, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3821, file: !3708, line: 34, baseType: !344, size: 64, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3821, file: !3708, line: 34, baseType: !344, size: 64, offset: 256)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3821, file: !3708, line: 35, baseType: !166, size: 64, offset: 320)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3821, file: !3708, line: 35, baseType: !166, size: 64, offset: 384)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3707, file: !3708, line: 219, baseType: !3831, size: 64, offset: 7872)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3708, line: 219, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3707, file: !3708, line: 222, baseType: !7, size: 32, offset: 7936)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3707, file: !3708, line: 223, baseType: !3835, size: 64, offset: 8000)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3708, line: 223, flags: DIFlagFwdDecl)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3707, file: !3708, line: 230, baseType: !812, size: 8, offset: 8064)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3707, file: !3708, line: 231, baseType: !781, size: 16, offset: 8080)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3707, file: !3708, line: 232, baseType: !781, size: 16, offset: 8096)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3707, file: !3708, line: 234, baseType: !1181, size: 64, offset: 8128)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3707, file: !3708, line: 237, baseType: !170, size: 256, offset: 8192)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3707, file: !3708, line: 243, baseType: !753, size: 320, offset: 8448)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3329, file: !1530, line: 1111, baseType: !3844, size: 64, offset: 15424)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3708, line: 20, size: 16640, elements: !3846)
!3846 = !{!3847, !3848, !3849, !3850}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3845, file: !3708, line: 21, baseType: !367, size: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3845, file: !3708, line: 22, baseType: !659, size: 32, offset: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3845, file: !3708, line: 23, baseType: !681, size: 192, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3845, file: !3708, line: 24, baseType: !3851, size: 16384, offset: 256)
!3851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3852, size: 16384, elements: !529)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !900, line: 51, size: 256, elements: !3853)
!3853 = !{!3854}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3852, file: !900, line: 52, baseType: !3855, size: 256)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !900, line: 37, size: 256, elements: !3856)
!3856 = !{!3857, !3864, !3865, !3869}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3855, file: !900, line: 39, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3859, line: 83, baseType: !3860)
!3859 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3859, line: 82, baseType: !3862)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{null, !87}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3855, file: !900, line: 40, baseType: !166, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3855, file: !900, line: 46, baseType: !3866, size: 64, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3859, line: 86, baseType: !3867)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3859, line: 85, baseType: !2109)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3855, file: !900, line: 48, baseType: !3722, size: 64, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3329, file: !1530, line: 1112, baseType: !3722, size: 64, offset: 15488)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3329, file: !1530, line: 1113, baseType: !3722, size: 64, offset: 15552)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3329, file: !1530, line: 1115, baseType: !3722, size: 64, offset: 15616)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3329, file: !1530, line: 1116, baseType: !3718, size: 192, offset: 15680)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3329, file: !1530, line: 1117, baseType: !166, size: 64, offset: 15872)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3329, file: !1530, line: 1118, baseType: !569, size: 64, offset: 15936)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3329, file: !1530, line: 1119, baseType: !7, size: 32, offset: 16000)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3329, file: !1530, line: 1121, baseType: !617, size: 64, offset: 16064)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3329, file: !1530, line: 1125, baseType: !3879, size: 64, offset: 16128)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1530, line: 43, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3329, file: !1530, line: 1127, baseType: !276, size: 32, offset: 16192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3329, file: !1530, line: 1128, baseType: !7, size: 32, offset: 16224)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3329, file: !1530, line: 1130, baseType: !3884, size: 128, offset: 16256)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3885, line: 37, size: 128, elements: !3886)
!3885 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3886 = !{!3887, !3888, !3889}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3884, file: !3885, line: 38, baseType: !87, size: 32)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3884, file: !3885, line: 39, baseType: !200, size: 32, offset: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3884, file: !3885, line: 40, baseType: !3890, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3885, line: 24, flags: DIFlagFwdDecl)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3329, file: !1530, line: 1131, baseType: !3893, size: 256, offset: 16384)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3894, line: 12, size: 256, elements: !3895)
!3894 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3895 = !{!3896, !3897, !3898, !3899}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3893, file: !3894, line: 13, baseType: !423, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3893, file: !3894, line: 14, baseType: !166, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3893, file: !3894, line: 15, baseType: !166, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3893, file: !3894, line: 16, baseType: !812, size: 8, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3329, file: !1530, line: 1134, baseType: !344, size: 64, offset: 16640)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3329, file: !1530, line: 1135, baseType: !344, size: 64, offset: 16704)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3329, file: !1530, line: 1138, baseType: !367, size: 32, offset: 16768)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3329, file: !1530, line: 1141, baseType: !187, size: 32, offset: 16800)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3329, file: !1530, line: 1143, baseType: !3905, size: 64, offset: 16832)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1530, line: 735, size: 64, elements: !3906)
!3906 = !{!3907}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3905, file: !1530, line: 736, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3329, file: !1530, line: 1147, baseType: !2913, size: 128, offset: 16896)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3329, file: !1530, line: 1149, baseType: !3328, size: 64, offset: 17024)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3329, file: !1530, line: 1151, baseType: !3912, size: 64, offset: 17088)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1530, line: 1151, flags: DIFlagFwdDecl)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3329, file: !1530, line: 1188, baseType: !260, size: 64, offset: 17152)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3329, file: !1530, line: 1191, baseType: !3916, size: 64, offset: 17216)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3329, file: !1530, line: 1194, baseType: !3918, size: 64, offset: 17280)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !55, line: 976, size: 320, elements: !3920)
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926, !3927}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3919, file: !55, line: 977, baseType: !1131, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3919, file: !55, line: 980, baseType: !1131, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !3919, file: !55, line: 981, baseType: !218, size: 16, offset: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3919, file: !55, line: 983, baseType: !218, size: 16, offset: 144)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3919, file: !55, line: 985, baseType: !812, size: 8, offset: 160)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !3919, file: !55, line: 986, baseType: !812, size: 8, offset: 168)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3919, file: !55, line: 988, baseType: !226, size: 128, offset: 192)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3329, file: !1530, line: 1197, baseType: !3929, size: 64, offset: 17344)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1530, line: 61, flags: DIFlagFwdDecl)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3329, file: !1530, line: 1199, baseType: !3932, size: 64, offset: 17408)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3934, line: 99, size: 128, elements: !3935)
!3934 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3935 = !{!3936, !3937, !3938}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3933, file: !3934, line: 100, baseType: !174, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3933, file: !3934, line: 101, baseType: !200, size: 32, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3933, file: !3934, line: 103, baseType: !218, size: 16, offset: 96)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3329, file: !1530, line: 1202, baseType: !3940, size: 64, offset: 17472)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1530, line: 48, flags: DIFlagFwdDecl)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3329, file: !1530, line: 1205, baseType: !166, size: 64, offset: 17536)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3329, file: !1530, line: 1206, baseType: !3944, size: 64, offset: 17600)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !900, line: 14, baseType: !3946)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !900, line: 12, size: 384, elements: !3947)
!3947 = !{!3948}
!3948 = !DIDerivedType(tag: DW_TAG_member, scope: !3946, file: !900, line: 13, baseType: !3949, size: 384)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3946, file: !900, line: 13, size: 384, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3954}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3949, file: !900, line: 13, baseType: !87, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3949, file: !900, line: 13, baseType: !87, size: 32, offset: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3949, file: !900, line: 13, baseType: !87, size: 32, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3949, file: !900, line: 13, baseType: !3955, size: 256, offset: 128)
!3955 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3956, line: 37, size: 256, elements: !3957)
!3956 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3957 = !{!3958, !3963, !3976, !3982, !3991, !4018, !4023}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3955, file: !3956, line: 42, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3955, file: !3956, line: 39, size: 64, elements: !3960)
!3960 = !{!3961, !3962}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3959, file: !3956, line: 40, baseType: !3618, size: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3959, file: !3956, line: 41, baseType: !282, size: 32, offset: 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3955, file: !3956, line: 50, baseType: !3964, size: 192)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3955, file: !3956, line: 45, size: 192, elements: !3965)
!3965 = !{!3966, !3968, !3969, !3975}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3964, file: !3956, line: 46, baseType: !3967, size: 32)
!3967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !283, line: 95, baseType: !87)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3964, file: !3956, line: 47, baseType: !87, size: 32, offset: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3964, file: !3956, line: 48, baseType: !3970, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3956, line: 11, baseType: !3971)
!3971 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3956, line: 8, size: 64, elements: !3972)
!3972 = !{!3973, !3974}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3971, file: !3956, line: 9, baseType: !87, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3971, file: !3956, line: 10, baseType: !260, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3964, file: !3956, line: 49, baseType: !87, size: 32, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3955, file: !3956, line: 57, baseType: !3977, size: 128)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3955, file: !3956, line: 53, size: 128, elements: !3978)
!3978 = !{!3979, !3980, !3981}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3977, file: !3956, line: 54, baseType: !3618, size: 32)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3977, file: !3956, line: 55, baseType: !282, size: 32, offset: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3977, file: !3956, line: 56, baseType: !3970, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3955, file: !3956, line: 66, baseType: !3983, size: 256)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3955, file: !3956, line: 60, size: 256, elements: !3984)
!3984 = !{!3985, !3986, !3987, !3988, !3990}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3983, file: !3956, line: 61, baseType: !3618, size: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3983, file: !3956, line: 62, baseType: !282, size: 32, offset: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3983, file: !3956, line: 63, baseType: !87, size: 32, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3983, file: !3956, line: 64, baseType: !3989, size: 64, offset: 128)
!3989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !283, line: 94, baseType: !558)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3983, file: !3956, line: 65, baseType: !3989, size: 64, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3955, file: !3956, line: 105, baseType: !3992, size: 256)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3955, file: !3956, line: 69, size: 256, elements: !3993)
!3993 = !{!3994, !3995}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3992, file: !3956, line: 70, baseType: !260, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, scope: !3992, file: !3956, line: 79, baseType: !3996, size: 192, offset: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3992, file: !3956, line: 79, size: 192, elements: !3997)
!3997 = !{!3998, !3999, !4000, !4007, !4012}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3996, file: !3956, line: 81, baseType: !87, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3996, file: !3956, line: 86, baseType: !781, size: 16)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3996, file: !3956, line: 92, baseType: !4001, size: 192)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3996, file: !3956, line: 88, size: 192, elements: !4002)
!4002 = !{!4003, !4005, !4006}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4001, file: !3956, line: 89, baseType: !4004, size: 64)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 64, elements: !2897)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4001, file: !3956, line: 90, baseType: !260, size: 64, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4001, file: !3956, line: 91, baseType: !260, size: 64, offset: 128)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3996, file: !3956, line: 97, baseType: !4008, size: 96)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3996, file: !3956, line: 94, size: 96, elements: !4009)
!4009 = !{!4010, !4011}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4008, file: !3956, line: 95, baseType: !4004, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4008, file: !3956, line: 96, baseType: !341, size: 32, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3996, file: !3956, line: 103, baseType: !4013, size: 128)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3996, file: !3956, line: 99, size: 128, elements: !4014)
!4014 = !{!4015, !4016, !4017}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4013, file: !3956, line: 100, baseType: !166, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4013, file: !3956, line: 101, baseType: !341, size: 32, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4013, file: !3956, line: 102, baseType: !341, size: 32, offset: 96)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3955, file: !3956, line: 111, baseType: !4019, size: 128)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3955, file: !3956, line: 108, size: 128, elements: !4020)
!4020 = !{!4021, !4022}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4019, file: !3956, line: 109, baseType: !559, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4019, file: !3956, line: 110, baseType: !87, size: 32, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3955, file: !3956, line: 118, baseType: !4024, size: 128)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3955, file: !3956, line: 114, size: 128, elements: !4025)
!4025 = !{!4026, !4027, !4028}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4024, file: !3956, line: 115, baseType: !260, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4024, file: !3956, line: 116, baseType: !87, size: 32, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4024, file: !3956, line: 117, baseType: !7, size: 32, offset: 96)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3329, file: !1530, line: 1208, baseType: !3802, size: 448, offset: 17664)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3329, file: !1530, line: 1215, baseType: !344, size: 64, offset: 18112)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3329, file: !1530, line: 1217, baseType: !344, size: 64, offset: 18176)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3329, file: !1530, line: 1219, baseType: !344, size: 64, offset: 18240)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3329, file: !1530, line: 1223, baseType: !4034, size: 64, offset: 18304)
!4034 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4035, line: 99, baseType: !4036)
!4035 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4035, line: 99, size: 64, elements: !4037)
!4037 = !{!4038}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4036, file: !4035, line: 99, baseType: !3093, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3329, file: !1530, line: 1225, baseType: !312, size: 32, offset: 18368)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3329, file: !1530, line: 1226, baseType: !87, size: 32, offset: 18400)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3329, file: !1530, line: 1227, baseType: !87, size: 32, offset: 18432)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3329, file: !1530, line: 1231, baseType: !4043, size: 64, offset: 18496)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1530, line: 1231, flags: DIFlagFwdDecl)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3329, file: !1530, line: 1233, baseType: !226, size: 128, offset: 18560)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3329, file: !1530, line: 1240, baseType: !4047, size: 64, offset: 18688)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1530, line: 62, flags: DIFlagFwdDecl)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3329, file: !1530, line: 1242, baseType: !4050, size: 64, offset: 18752)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1530, line: 1242, flags: DIFlagFwdDecl)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3329, file: !1530, line: 1244, baseType: !226, size: 128, offset: 18816)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3329, file: !1530, line: 1245, baseType: !4054, size: 64, offset: 18944)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1530, line: 51, flags: DIFlagFwdDecl)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3329, file: !1530, line: 1246, baseType: !170, size: 256, offset: 19008)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3329, file: !1530, line: 1247, baseType: !7, size: 32, offset: 19264)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3329, file: !1530, line: 1250, baseType: !4059, size: 64, offset: 19328)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1530, line: 57, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3329, file: !1530, line: 1251, baseType: !170, size: 256, offset: 19392)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3329, file: !1530, line: 1252, baseType: !226, size: 128, offset: 19648)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3329, file: !1530, line: 1259, baseType: !1476, size: 64, offset: 19776)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3329, file: !1530, line: 1260, baseType: !781, size: 16, offset: 19840)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3329, file: !1530, line: 1261, baseType: !781, size: 16, offset: 19856)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3329, file: !1530, line: 1314, baseType: !4067, size: 64, offset: 19904)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4069, line: 62, size: 256, align: 256, elements: !4070)
!4069 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4070 = !{!4071, !4072, !4073, !4074, !4075, !4076, !4077}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4068, file: !4069, line: 75, baseType: !341, size: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4068, file: !4069, line: 90, baseType: !341, size: 32, offset: 32)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4068, file: !4069, line: 112, baseType: !345, size: 64, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4068, file: !4069, line: 132, baseType: !341, size: 32, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4068, file: !4069, line: 140, baseType: !341, size: 32, offset: 160)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4068, file: !4069, line: 149, baseType: !341, size: 32, offset: 192)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4068, file: !4069, line: 154, baseType: !4078, offset: 224)
!4078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, elements: !696)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3329, file: !1530, line: 1315, baseType: !340, size: 32, offset: 19968)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3329, file: !1530, line: 1316, baseType: !340, size: 32, offset: 20000)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3329, file: !1530, line: 1321, baseType: !166, size: 64, offset: 20032)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3329, file: !1530, line: 1325, baseType: !87, size: 32, offset: 20096)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3329, file: !1530, line: 1326, baseType: !87, size: 32, offset: 20128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3329, file: !1530, line: 1327, baseType: !87, size: 32, offset: 20160)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3329, file: !1530, line: 1328, baseType: !87, size: 32, offset: 20192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3329, file: !1530, line: 1329, baseType: !614, size: 128, align: 64, offset: 20224)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3329, file: !1530, line: 1332, baseType: !4088, size: 128, offset: 20352)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4089, line: 51, size: 128, elements: !4090)
!4089 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4090 = !{!4091, !4096, !4097}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4088, file: !4089, line: 60, baseType: !4092, size: 64)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4093, line: 7, size: 64, elements: !4094)
!4093 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4094 = !{!4095}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4092, file: !4093, line: 12, baseType: !3488, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4088, file: !4089, line: 63, baseType: !812, size: 8, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4088, file: !4089, line: 70, baseType: !812, size: 8, offset: 72)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3329, file: !1530, line: 1335, baseType: !1528, size: 64, offset: 20480)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3329, file: !1530, line: 1337, baseType: !4100, size: 128, offset: 20544)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4089, line: 39, size: 128, elements: !4101)
!4101 = !{!4102, !4103, !4104}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4100, file: !4089, line: 40, baseType: !242, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4100, file: !4089, line: 42, baseType: !341, size: 32, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4100, file: !4089, line: 43, baseType: !341, size: 32, offset: 96)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3329, file: !1530, line: 1340, baseType: !4106, size: 64, offset: 20672)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1530, line: 69, flags: DIFlagFwdDecl)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3329, file: !1530, line: 1351, baseType: !87, size: 32, offset: 20736)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3329, file: !1530, line: 1352, baseType: !87, size: 32, offset: 20768)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3329, file: !1530, line: 1354, baseType: !166, size: 64, offset: 20800)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3329, file: !1530, line: 1364, baseType: !344, size: 64, offset: 20864)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3329, file: !1530, line: 1365, baseType: !344, size: 64, offset: 20928)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3329, file: !1530, line: 1412, baseType: !166, size: 64, offset: 20992)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3329, file: !1530, line: 1453, baseType: !2414, size: 64, offset: 21056)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3329, file: !1530, line: 1457, baseType: !4116, size: 64, offset: 21120)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !135, line: 61, size: 576, elements: !4118)
!4118 = !{!4119, !4120, !4139, !4142, !4143, !4176, !4186}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4117, file: !135, line: 62, baseType: !134, size: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, scope: !4117, file: !135, line: 64, baseType: !4121, size: 192, offset: 64)
!4121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4117, file: !135, line: 64, size: 192, elements: !4122)
!4122 = !{!4123, !4134}
!4123 = !DIDerivedType(tag: DW_TAG_member, scope: !4121, file: !135, line: 65, baseType: !4124, size: 192)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4121, file: !135, line: 65, size: 192, elements: !4125)
!4125 = !{!4126, !4133}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4124, file: !135, line: 66, baseType: !4127, size: 128)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4128, line: 50, size: 128, elements: !4129)
!4128 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4129 = !{!4130, !4131, !4132}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4127, file: !4128, line: 52, baseType: !166, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4127, file: !4128, line: 54, baseType: !7, size: 32, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4127, file: !4128, line: 55, baseType: !7, size: 32, offset: 96)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4124, file: !135, line: 67, baseType: !166, size: 64, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_member, scope: !4121, file: !135, line: 70, baseType: !4135, size: 192)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4121, file: !135, line: 70, size: 192, elements: !4136)
!4136 = !{!4137, !4138}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4135, file: !135, line: 71, baseType: !614, size: 128, align: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4135, file: !135, line: 72, baseType: !166, size: 64, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4117, file: !135, line: 76, baseType: !4140, size: 64, offset: 256)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !135, line: 76, flags: DIFlagFwdDecl)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4117, file: !135, line: 77, baseType: !166, size: 64, offset: 320)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4117, file: !135, line: 79, baseType: !4144, size: 64, offset: 384)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4128, line: 25, size: 256, elements: !4146)
!4146 = !{!4147, !4153, !4157}
!4147 = !DIDerivedType(tag: DW_TAG_member, scope: !4145, file: !4128, line: 26, baseType: !4148, size: 128)
!4148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4145, file: !4128, line: 26, size: 128, elements: !4149)
!4149 = !{!4150, !4152}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4148, file: !4128, line: 27, baseType: !4151, size: 128)
!4151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 128, elements: !3676)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4148, file: !4128, line: 28, baseType: !4151, size: 128)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4145, file: !4128, line: 31, baseType: !4154, size: 64, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4156)
!4156 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4128, line: 23, flags: DIFlagFwdDecl)
!4157 = !DIDerivedType(tag: DW_TAG_member, scope: !4145, file: !4128, line: 33, baseType: !4158, size: 64, offset: 192)
!4158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4145, file: !4128, line: 33, size: 64, elements: !4159)
!4159 = !{!4160, !4166, !4171}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4158, file: !4128, line: 38, baseType: !4161, size: 64)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4158, file: !4128, line: 34, size: 64, elements: !4162)
!4162 = !{!4163, !4164, !4165}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4161, file: !4128, line: 35, baseType: !738, size: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4161, file: !4128, line: 36, baseType: !208, size: 8, offset: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4161, file: !4128, line: 37, baseType: !208, size: 8, offset: 40)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4158, file: !4128, line: 42, baseType: !4167, size: 16)
!4167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4158, file: !4128, line: 39, size: 16, elements: !4168)
!4168 = !{!4169, !4170}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4167, file: !4128, line: 40, baseType: !208, size: 8)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4167, file: !4128, line: 41, baseType: !208, size: 8, offset: 8)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4158, file: !4128, line: 46, baseType: !4172, size: 16)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4158, file: !4128, line: 43, size: 16, elements: !4173)
!4173 = !{!4174, !4175}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4172, file: !4128, line: 44, baseType: !208, size: 8)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4172, file: !4128, line: 45, baseType: !208, size: 8, offset: 8)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4117, file: !135, line: 81, baseType: !4177, size: 64, offset: 448)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !135, line: 85, size: 384, elements: !4179)
!4179 = !{!4180, !4181, !4182, !4183, !4184, !4185}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4178, file: !135, line: 86, baseType: !4140, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4178, file: !135, line: 87, baseType: !166, size: 64, offset: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4178, file: !135, line: 88, baseType: !166, size: 64, offset: 128)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4178, file: !135, line: 89, baseType: !166, size: 64, offset: 192)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4178, file: !135, line: 90, baseType: !812, size: 8, offset: 256)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4178, file: !135, line: 92, baseType: !4177, size: 64, offset: 320)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4117, file: !135, line: 82, baseType: !7, size: 32, offset: 512)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3329, file: !1530, line: 1463, baseType: !4188, offset: 21184)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1530, line: 739, elements: !1202)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3329, file: !1530, line: 1470, baseType: !614, size: 128, align: 64, offset: 21184)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3329, file: !1530, line: 1471, baseType: !659, size: 32, offset: 21312)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3329, file: !1530, line: 1472, baseType: !87, size: 32, offset: 21344)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3329, file: !1530, line: 1474, baseType: !3328, size: 64, offset: 21376)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3329, file: !1530, line: 1475, baseType: !2004, size: 320, offset: 21440)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3329, file: !1530, line: 1478, baseType: !4195, size: 64, offset: 21760)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1530, line: 1478, flags: DIFlagFwdDecl)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3329, file: !1530, line: 1482, baseType: !659, size: 32, offset: 21824)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3329, file: !1530, line: 1489, baseType: !260, size: 64, offset: 21888)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3329, file: !1530, line: 1504, baseType: !260, size: 64, offset: 21952)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3329, file: !1530, line: 1505, baseType: !345, size: 64, offset: 22016)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3329, file: !1530, line: 1506, baseType: !344, size: 64, offset: 22080)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3329, file: !1530, line: 1507, baseType: !345, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3329, file: !1530, line: 1508, baseType: !345, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3329, file: !1530, line: 1509, baseType: !345, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3329, file: !1530, line: 1510, baseType: !614, size: 128, align: 64, offset: 22208)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3329, file: !1530, line: 1511, baseType: !87, size: 32, offset: 22336)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3329, file: !1530, line: 1515, baseType: !4208, size: 64, offset: 22400)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !609, line: 56, size: 64, elements: !4209)
!4209 = !{!4210}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4208, file: !609, line: 57, baseType: !612, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3329, file: !1530, line: 1518, baseType: !4208, size: 64, offset: 22464)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3329, file: !1530, line: 1528, baseType: !614, size: 128, align: 64, offset: 22528)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3329, file: !1530, line: 1552, baseType: !4214, size: 35328, offset: 23040)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4215, line: 430, size: 35328, elements: !4216)
!4215 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4216 = !{!4217, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4246, !4247, !4248, !4249, !4250, !4251, !4254, !4255, !4256, !4257}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4214, file: !4215, line: 432, baseType: !4218, size: 192)
!4218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4219, size: 192, elements: !525)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4220, line: 16, size: 64, elements: !4221)
!4220 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4221 = !{!4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4219, file: !4220, line: 17, baseType: !216, size: 16)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4219, file: !4220, line: 18, baseType: !216, size: 16, offset: 16)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4219, file: !4220, line: 19, baseType: !216, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4219, file: !4220, line: 19, baseType: !216, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4219, file: !4220, line: 19, baseType: !216, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4219, file: !4220, line: 19, baseType: !216, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4219, file: !4220, line: 19, baseType: !216, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4219, file: !4220, line: 20, baseType: !216, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4219, file: !4220, line: 20, baseType: !216, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4219, file: !4220, line: 20, baseType: !216, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4219, file: !4220, line: 20, baseType: !216, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4219, file: !4220, line: 20, baseType: !216, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4219, file: !4220, line: 20, baseType: !216, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4214, file: !4215, line: 436, baseType: !166, size: 64, offset: 192)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4214, file: !4215, line: 440, baseType: !218, size: 16, offset: 256)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4214, file: !4215, line: 441, baseType: !218, size: 16, offset: 272)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4214, file: !4215, line: 442, baseType: !218, size: 16, offset: 288)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4214, file: !4215, line: 443, baseType: !218, size: 16, offset: 304)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4214, file: !4215, line: 447, baseType: !166, size: 64, offset: 320)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4214, file: !4215, line: 448, baseType: !166, size: 64, offset: 384)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4214, file: !4215, line: 459, baseType: !4243, size: 256, offset: 448)
!4243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4244, size: 256, elements: !677)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4215, line: 428, flags: DIFlagFwdDecl)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4214, file: !4215, line: 461, baseType: !166, size: 64, offset: 704)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4214, file: !4215, line: 463, baseType: !166, size: 64, offset: 768)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4214, file: !4215, line: 465, baseType: !166, size: 64, offset: 832)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4214, file: !4215, line: 466, baseType: !166, size: 64, offset: 896)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4214, file: !4215, line: 467, baseType: !166, size: 64, offset: 960)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4214, file: !4215, line: 473, baseType: !4252, size: 64, offset: 1024)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4215, line: 10, flags: DIFlagFwdDecl)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4214, file: !4215, line: 480, baseType: !166, size: 64, offset: 1088)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4214, file: !4215, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4214, file: !4215, line: 491, baseType: !340, size: 32, offset: 1184)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4214, file: !4215, line: 501, baseType: !4258, size: 33792, offset: 1536)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4259, line: 448, size: 33792, elements: !4260)
!4259 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4260 = !{!4261, !4262, !4263, !4425, !4426, !4432, !4433}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4258, file: !4259, line: 461, baseType: !7, size: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4258, file: !4259, line: 468, baseType: !166, size: 64, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4258, file: !4259, line: 476, baseType: !4264, size: 64, offset: 128)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4259, line: 356, size: 33280, align: 512, elements: !4266)
!4266 = !{!4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4265, file: !4259, line: 358, baseType: !7, size: 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4265, file: !4259, line: 361, baseType: !7, size: 32, offset: 32)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4265, file: !4259, line: 364, baseType: !344, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4265, file: !4259, line: 367, baseType: !344, size: 64, offset: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4265, file: !4259, line: 370, baseType: !344, size: 64, offset: 192)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4265, file: !4259, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4265, file: !4259, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4265, file: !4259, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4265, file: !4259, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4265, file: !4259, line: 397, baseType: !4277, size: 32768, offset: 512)
!4277 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4259, line: 348, size: 32768, elements: !4278)
!4278 = !{!4279, !4294, !4331, !4408, !4421}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4277, file: !4259, line: 349, baseType: !4280, size: 896)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4259, line: 12, size: 896, elements: !4281)
!4281 = !{!4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4293}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4280, file: !4259, line: 13, baseType: !340, size: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4280, file: !4259, line: 14, baseType: !340, size: 32, offset: 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4280, file: !4259, line: 15, baseType: !340, size: 32, offset: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4280, file: !4259, line: 16, baseType: !340, size: 32, offset: 96)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4280, file: !4259, line: 17, baseType: !340, size: 32, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4280, file: !4259, line: 18, baseType: !340, size: 32, offset: 160)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4280, file: !4259, line: 19, baseType: !340, size: 32, offset: 192)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4280, file: !4259, line: 22, baseType: !4290, size: 640, offset: 224)
!4290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 640, elements: !4291)
!4291 = !{!4292}
!4292 = !DISubrange(count: 20)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4280, file: !4259, line: 25, baseType: !340, size: 32, offset: 864)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4277, file: !4259, line: 350, baseType: !4295, size: 4096, align: 128)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4259, line: 34, size: 4096, align: 128, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4316, !4317, !4318, !4320, !4322, !4326}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4295, file: !4259, line: 35, baseType: !216, size: 16)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4295, file: !4259, line: 36, baseType: !216, size: 16, offset: 16)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4295, file: !4259, line: 37, baseType: !216, size: 16, offset: 32)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4295, file: !4259, line: 38, baseType: !216, size: 16, offset: 48)
!4301 = !DIDerivedType(tag: DW_TAG_member, scope: !4295, file: !4259, line: 39, baseType: !4302, size: 128, offset: 64)
!4302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4295, file: !4259, line: 39, size: 128, elements: !4303)
!4303 = !{!4304, !4309}
!4304 = !DIDerivedType(tag: DW_TAG_member, scope: !4302, file: !4259, line: 40, baseType: !4305, size: 128)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4302, file: !4259, line: 40, size: 128, elements: !4306)
!4306 = !{!4307, !4308}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4305, file: !4259, line: 41, baseType: !344, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4305, file: !4259, line: 42, baseType: !344, size: 64, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, scope: !4302, file: !4259, line: 44, baseType: !4310, size: 128)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4302, file: !4259, line: 44, size: 128, elements: !4311)
!4311 = !{!4312, !4313, !4314, !4315}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4310, file: !4259, line: 45, baseType: !340, size: 32)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4310, file: !4259, line: 46, baseType: !340, size: 32, offset: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4310, file: !4259, line: 47, baseType: !340, size: 32, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4310, file: !4259, line: 48, baseType: !340, size: 32, offset: 96)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4295, file: !4259, line: 51, baseType: !340, size: 32, offset: 192)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4295, file: !4259, line: 52, baseType: !340, size: 32, offset: 224)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4295, file: !4259, line: 55, baseType: !4319, size: 1024, offset: 256)
!4319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 1024, elements: !353)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4295, file: !4259, line: 58, baseType: !4321, size: 2048, offset: 1280)
!4321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 2048, elements: !529)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4295, file: !4259, line: 60, baseType: !4323, size: 384, offset: 3328)
!4323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 384, elements: !4324)
!4324 = !{!4325}
!4325 = !DISubrange(count: 12)
!4326 = !DIDerivedType(tag: DW_TAG_member, scope: !4295, file: !4259, line: 62, baseType: !4327, size: 384, offset: 3712)
!4327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4295, file: !4259, line: 62, size: 384, elements: !4328)
!4328 = !{!4329, !4330}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4327, file: !4259, line: 63, baseType: !4323, size: 384)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4327, file: !4259, line: 64, baseType: !4323, size: 384)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4277, file: !4259, line: 351, baseType: !4332, size: 1088)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4259, line: 79, size: 1088, elements: !4333)
!4333 = !{!4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4407}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4332, file: !4259, line: 80, baseType: !340, size: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4332, file: !4259, line: 81, baseType: !340, size: 32, offset: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4332, file: !4259, line: 82, baseType: !340, size: 32, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4332, file: !4259, line: 83, baseType: !340, size: 32, offset: 96)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4332, file: !4259, line: 84, baseType: !340, size: 32, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4332, file: !4259, line: 85, baseType: !340, size: 32, offset: 160)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4332, file: !4259, line: 86, baseType: !340, size: 32, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4332, file: !4259, line: 88, baseType: !4290, size: 640, offset: 224)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4332, file: !4259, line: 89, baseType: !208, size: 8, offset: 864)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4332, file: !4259, line: 90, baseType: !208, size: 8, offset: 872)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4332, file: !4259, line: 91, baseType: !208, size: 8, offset: 880)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4332, file: !4259, line: 92, baseType: !208, size: 8, offset: 888)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4332, file: !4259, line: 93, baseType: !208, size: 8, offset: 896)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4332, file: !4259, line: 94, baseType: !208, size: 8, offset: 904)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4332, file: !4259, line: 95, baseType: !4349, size: 64, offset: 960)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4351, line: 11, size: 128, elements: !4352)
!4351 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4352 = !{!4353, !4354}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4350, file: !4351, line: 12, baseType: !559, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4350, file: !4351, line: 13, baseType: !4355, size: 64, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4357, line: 103, size: 1344, elements: !4358)
!4357 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4358 = !{!4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4387, !4388, !4389}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4356, file: !4357, line: 109, baseType: !166, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4356, file: !4357, line: 110, baseType: !166, size: 64, offset: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4356, file: !4357, line: 111, baseType: !166, size: 64, offset: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4356, file: !4357, line: 112, baseType: !166, size: 64, offset: 192)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4356, file: !4357, line: 113, baseType: !166, size: 64, offset: 256)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4356, file: !4357, line: 114, baseType: !166, size: 64, offset: 320)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4356, file: !4357, line: 117, baseType: !166, size: 64, offset: 384)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4356, file: !4357, line: 118, baseType: !166, size: 64, offset: 448)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4356, file: !4357, line: 119, baseType: !166, size: 64, offset: 512)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4356, file: !4357, line: 120, baseType: !166, size: 64, offset: 576)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4356, file: !4357, line: 121, baseType: !166, size: 64, offset: 640)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4356, file: !4357, line: 122, baseType: !166, size: 64, offset: 704)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4356, file: !4357, line: 123, baseType: !166, size: 64, offset: 768)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4356, file: !4357, line: 124, baseType: !166, size: 64, offset: 832)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4356, file: !4357, line: 125, baseType: !166, size: 64, offset: 896)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4356, file: !4357, line: 139, baseType: !166, size: 64, offset: 960)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4356, file: !4357, line: 142, baseType: !166, size: 64, offset: 1024)
!4376 = !DIDerivedType(tag: DW_TAG_member, scope: !4356, file: !4357, line: 144, baseType: !4377, size: 64, offset: 1088)
!4377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4356, file: !4357, line: 144, size: 64, elements: !4378)
!4378 = !{!4379, !4380, !4381}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4377, file: !4357, line: 146, baseType: !216, size: 16)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4377, file: !4357, line: 148, baseType: !344, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4377, file: !4357, line: 150, baseType: !4382, size: 64)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4357, line: 59, size: 64, elements: !4383)
!4383 = !{!4384, !4385, !4386}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4382, file: !4357, line: 61, baseType: !344, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4382, file: !4357, line: 63, baseType: !344, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4382, file: !4357, line: 65, baseType: !344, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4356, file: !4357, line: 153, baseType: !166, size: 64, offset: 1152)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4356, file: !4357, line: 154, baseType: !166, size: 64, offset: 1216)
!4389 = !DIDerivedType(tag: DW_TAG_member, scope: !4356, file: !4357, line: 156, baseType: !4390, size: 64, offset: 1280)
!4390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4356, file: !4357, line: 156, size: 64, elements: !4391)
!4391 = !{!4392, !4393, !4394}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4390, file: !4357, line: 158, baseType: !216, size: 16)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4390, file: !4357, line: 160, baseType: !344, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4390, file: !4357, line: 162, baseType: !4395, size: 64)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4357, line: 69, size: 64, elements: !4396)
!4396 = !{!4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4395, file: !4357, line: 71, baseType: !344, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4395, file: !4357, line: 73, baseType: !344, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4395, file: !4357, line: 75, baseType: !344, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4395, file: !4357, line: 77, baseType: !344, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4395, file: !4357, line: 80, baseType: !344, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4395, file: !4357, line: 83, baseType: !344, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4395, file: !4357, line: 86, baseType: !344, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4395, file: !4357, line: 88, baseType: !344, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4395, file: !4357, line: 93, baseType: !344, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4395, file: !4357, line: 100, baseType: !344, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4332, file: !4259, line: 96, baseType: !340, size: 32, offset: 1024)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4277, file: !4259, line: 352, baseType: !4409, size: 4608, align: 512)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4259, line: 333, size: 4608, align: 512, elements: !4410)
!4410 = !{!4411, !4412, !4419}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4409, file: !4259, line: 334, baseType: !4295, size: 4096, align: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4409, file: !4259, line: 335, baseType: !4413, size: 512, offset: 4096)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4259, line: 312, size: 512, elements: !4414)
!4414 = !{!4415, !4416, !4417}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4413, file: !4259, line: 313, baseType: !344, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4413, file: !4259, line: 314, baseType: !344, size: 64, offset: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4413, file: !4259, line: 315, baseType: !4418, size: 384, offset: 128)
!4418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 384, elements: !799)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4409, file: !4259, line: 336, baseType: !4420, offset: 4608)
!4420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, elements: !696)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4277, file: !4259, line: 353, baseType: !4422, size: 32768)
!4422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 32768, elements: !4423)
!4423 = !{!4424}
!4424 = !DISubrange(count: 4096)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4258, file: !4259, line: 484, baseType: !4264, size: 64, offset: 192)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4258, file: !4259, line: 491, baseType: !4427, size: 128, offset: 256)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4259, line: 404, size: 128, elements: !4428)
!4428 = !{!4429, !4430, !4431}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4427, file: !4259, line: 424, baseType: !344, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4427, file: !4259, line: 432, baseType: !7, size: 32, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4427, file: !4259, line: 440, baseType: !7, size: 32, offset: 96)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4258, file: !4259, line: 498, baseType: !4427, size: 128, offset: 384)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4258, file: !4259, line: 508, baseType: !4265, size: 33280, align: 512, offset: 512)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3311, file: !3312, line: 16, baseType: !681, size: 192, offset: 512)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3311, file: !3312, line: 17, baseType: !200, size: 32, offset: 704)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !435, file: !44, line: 1240, baseType: !260, size: 64, offset: 6912)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !435, file: !44, line: 1243, baseType: !340, size: 32, offset: 6976)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !435, file: !44, line: 1245, baseType: !769, size: 64, offset: 7040)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !435, file: !44, line: 1246, baseType: !769, size: 64, offset: 7104)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !435, file: !44, line: 1248, baseType: !341, size: 32, offset: 7168)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !435, file: !44, line: 1249, baseType: !4442, size: 64, offset: 7232)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 634, flags: DIFlagFwdDecl)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !435, file: !44, line: 1252, baseType: !2421, size: 256, offset: 7296)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !435, file: !44, line: 1253, baseType: !4446, size: 128, offset: 7552)
!4446 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4447, line: 21, baseType: !4448)
!4447 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4447, line: 19, size: 128, elements: !4449)
!4449 = !{!4450}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4448, file: !4447, line: 20, baseType: !4451, size: 128)
!4451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 128, elements: !3676)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !435, file: !44, line: 1255, baseType: !7, size: 32, offset: 7680)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !435, file: !44, line: 1261, baseType: !170, size: 256, offset: 7744)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !435, file: !44, line: 1267, baseType: !397, size: 64, offset: 8000)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !435, file: !44, line: 1269, baseType: !377, size: 64, offset: 8064)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !435, file: !44, line: 1271, baseType: !4457, size: 448, offset: 8128)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2247, line: 63, size: 448, elements: !4458)
!4458 = !{!4459, !4464, !4465, !4466, !4467, !4468, !4469}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4457, file: !2247, line: 64, baseType: !4460, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!166, !4463, !2245}
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4457, file: !2247, line: 66, baseType: !4460, size: 64, offset: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4457, file: !2247, line: 69, baseType: !559, size: 64, offset: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4457, file: !2247, line: 70, baseType: !87, size: 32, offset: 192)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4457, file: !2247, line: 71, baseType: !7, size: 32, offset: 224)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4457, file: !2247, line: 74, baseType: !226, size: 128, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4457, file: !2247, line: 85, baseType: !4470, size: 64, offset: 384)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !435, file: !44, line: 1274, baseType: !174, size: 64, offset: 8576)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !435, file: !44, line: 1280, baseType: !174, size: 64, offset: 8640)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !435, file: !44, line: 1283, baseType: !87, size: 32, offset: 8704)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !435, file: !44, line: 1286, baseType: !1581, size: 32, offset: 8736)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !435, file: !44, line: 1289, baseType: !2066, size: 64, offset: 8768)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !435, file: !44, line: 1290, baseType: !668, size: 64, offset: 8832)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !435, file: !44, line: 1297, baseType: !895, size: 64, offset: 8896)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !435, file: !44, line: 1304, baseType: !4479, size: 64, offset: 8960)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4480, line: 49, size: 64, elements: !4481)
!4480 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4481 = !{!4482}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4479, file: !4480, line: 50, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4480, line: 41, size: 512, align: 512, elements: !4485)
!4485 = !{!4486, !4487, !4492}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4484, file: !4480, line: 43, baseType: !367, size: 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4484, file: !4480, line: 45, baseType: !4488, size: 192, offset: 64)
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4480, line: 29, size: 192, elements: !4489)
!4489 = !{!4490, !4491}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4488, file: !4480, line: 30, baseType: !226, size: 128)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4488, file: !4480, line: 32, baseType: !559, size: 64, offset: 128)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4484, file: !4480, line: 46, baseType: !559, size: 64, offset: 256)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !435, file: !44, line: 1305, baseType: !4479, size: 64, offset: 9024)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !435, file: !44, line: 1306, baseType: !614, size: 128, align: 64, offset: 9088)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !435, file: !44, line: 1307, baseType: !1336, size: 256, offset: 9216)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !435, file: !44, line: 1309, baseType: !170, size: 256, offset: 9472)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !435, file: !44, line: 1314, baseType: !87, size: 32, offset: 9728)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !435, file: !44, line: 1317, baseType: !367, size: 32, align: 512, offset: 10240)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !435, file: !44, line: 1318, baseType: !226, size: 128, offset: 10304)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !435, file: !44, line: 1320, baseType: !367, size: 32, offset: 10432)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !435, file: !44, line: 1321, baseType: !226, size: 128, offset: 10496)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !429, file: !430, line: 73, baseType: !87, size: 32, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !429, file: !430, line: 74, baseType: !4504, size: 64, offset: 192)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !720, line: 42, flags: DIFlagFwdDecl)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !379, file: !308, line: 141, baseType: !4508, size: 64, offset: 704)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!87, !2307, !812}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !379, file: !308, line: 142, baseType: !4512, size: 64, offset: 768)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!306, !306, !4515}
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !307, file: !308, line: 96, baseType: !434, size: 64, offset: 832)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !307, file: !308, line: 97, baseType: !166, size: 64, offset: 896)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !307, file: !308, line: 98, baseType: !260, size: 64, offset: 960)
!4520 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !308, line: 100, baseType: !4521, size: 128, offset: 1024)
!4521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !308, line: 100, size: 128, elements: !4522)
!4522 = !{!4523, !4524}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4521, file: !308, line: 101, baseType: !226, size: 128)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4521, file: !308, line: 102, baseType: !4525, size: 64)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !307, file: !308, line: 104, baseType: !226, size: 128, offset: 1152)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !307, file: !308, line: 105, baseType: !226, size: 128, offset: 1280)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !307, file: !308, line: 113, baseType: !4529, size: 128, offset: 1408)
!4529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !307, file: !308, line: 109, size: 128, elements: !4530)
!4530 = !{!4531, !4532, !4533}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4529, file: !308, line: 110, baseType: !672, size: 128)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4529, file: !308, line: 111, baseType: !322, size: 128)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4529, file: !308, line: 112, baseType: !614, size: 128, align: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !300, file: !44, line: 1968, baseType: !4535, size: 64, offset: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!397, !306, !269, !4538}
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4540, line: 10, size: 128, elements: !4541)
!4540 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4541 = !{!4542, !4543}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4539, file: !4540, line: 11, baseType: !1621, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4539, file: !4540, line: 12, baseType: !260, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !300, file: !44, line: 1969, baseType: !4545, size: 64, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!87, !4504, !269, !87}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !300, file: !44, line: 1970, baseType: !4549, size: 64, offset: 192)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!294, !269, !87, !812}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !300, file: !44, line: 1972, baseType: !4553, size: 64, offset: 256)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!87, !306, !423, !87}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !300, file: !44, line: 1974, baseType: !4557, size: 64, offset: 320)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!87, !4504, !269, !306, !273, !812}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !300, file: !44, line: 1976, baseType: !4561, size: 64, offset: 384)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!87, !306, !269, !306}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !300, file: !44, line: 1977, baseType: !4565, size: 64, offset: 448)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!87, !269, !306}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !300, file: !44, line: 1978, baseType: !4569, size: 64, offset: 512)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!87, !4504, !269, !306, !397}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !300, file: !44, line: 1980, baseType: !4573, size: 64, offset: 576)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!87, !4504, !269, !306, !273}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !300, file: !44, line: 1982, baseType: !4565, size: 64, offset: 640)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !300, file: !44, line: 1983, baseType: !4578, size: 64, offset: 704)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!87, !4504, !269, !306, !273, !439}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !300, file: !44, line: 1985, baseType: !4582, size: 64, offset: 768)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!87, !4504, !269, !306, !269, !306, !7}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !300, file: !44, line: 1987, baseType: !4586, size: 64, offset: 832)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!87, !4504, !306, !4589}
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 226, size: 640, elements: !4591)
!4591 = !{!4592, !4593, !4594, !4604, !4613, !4614, !4619, !4620, !4621}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4590, file: !44, line: 227, baseType: !7, size: 32)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4590, file: !44, line: 228, baseType: !273, size: 16, offset: 32)
!4594 = !DIDerivedType(tag: DW_TAG_member, scope: !4590, file: !44, line: 241, baseType: !4595, size: 32, offset: 64)
!4595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4590, file: !44, line: 241, size: 32, elements: !4596)
!4596 = !{!4597, !4598}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4595, file: !44, line: 242, baseType: !276, size: 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4595, file: !44, line: 243, baseType: !4599, size: 32)
!4599 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4600, line: 16, baseType: !4601)
!4600 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4600, line: 14, size: 32, elements: !4602)
!4602 = !{!4603}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4601, file: !4600, line: 15, baseType: !281, size: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, scope: !4590, file: !44, line: 245, baseType: !4605, size: 32, offset: 96)
!4605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4590, file: !44, line: 245, size: 32, elements: !4606)
!4606 = !{!4607, !4608}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4605, file: !44, line: 246, baseType: !286, size: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4605, file: !44, line: 247, baseType: !4609, size: 32)
!4609 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4600, line: 20, baseType: !4610)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4600, line: 18, size: 32, elements: !4611)
!4611 = !{!4612}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4610, file: !4600, line: 19, baseType: !290, size: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4590, file: !44, line: 249, baseType: !444, size: 64, offset: 128)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4590, file: !44, line: 250, baseType: !4615, size: 128, offset: 192)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !770, line: 13, size: 128, elements: !4616)
!4616 = !{!4617, !4618}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4615, file: !770, line: 14, baseType: !769, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4615, file: !770, line: 15, baseType: !559, size: 64, offset: 64)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4590, file: !44, line: 251, baseType: !4615, size: 128, offset: 320)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4590, file: !44, line: 252, baseType: !4615, size: 128, offset: 448)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4590, file: !44, line: 259, baseType: !601, size: 64, offset: 576)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !300, file: !44, line: 1988, baseType: !4623, size: 64, offset: 896)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!87, !4504, !2307, !4626, !340, !7}
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4628, line: 22, size: 1280, elements: !4629)
!4628 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4629 = !{!4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4627, file: !4628, line: 23, baseType: !340, size: 32)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4627, file: !4628, line: 24, baseType: !273, size: 16, offset: 32)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4627, file: !4628, line: 25, baseType: !7, size: 32, offset: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4627, file: !4628, line: 26, baseType: !777, size: 32, offset: 96)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4627, file: !4628, line: 27, baseType: !344, size: 64, offset: 128)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4627, file: !4628, line: 28, baseType: !344, size: 64, offset: 192)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4627, file: !4628, line: 41, baseType: !344, size: 64, offset: 256)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4627, file: !4628, line: 42, baseType: !439, size: 32, offset: 320)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4627, file: !4628, line: 43, baseType: !439, size: 32, offset: 352)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4627, file: !4628, line: 44, baseType: !276, size: 32, offset: 384)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4627, file: !4628, line: 45, baseType: !286, size: 32, offset: 416)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4627, file: !4628, line: 46, baseType: !444, size: 64, offset: 448)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4627, file: !4628, line: 47, baseType: !4615, size: 128, offset: 512)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4627, file: !4628, line: 48, baseType: !4615, size: 128, offset: 640)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4627, file: !4628, line: 49, baseType: !4615, size: 128, offset: 768)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4627, file: !4628, line: 50, baseType: !4615, size: 128, offset: 896)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4627, file: !4628, line: 51, baseType: !344, size: 64, offset: 1024)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4627, file: !4628, line: 52, baseType: !344, size: 64, offset: 1088)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4627, file: !4628, line: 53, baseType: !340, size: 32, offset: 1152)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4627, file: !4628, line: 54, baseType: !340, size: 32, offset: 1184)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4627, file: !4628, line: 55, baseType: !344, size: 64, offset: 1216)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !300, file: !44, line: 1990, baseType: !4652, size: 64, offset: 960)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!556, !306, !423, !569}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !300, file: !44, line: 1991, baseType: !4656, size: 64, offset: 1024)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!87, !269, !4659, !344, !344}
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 55, flags: DIFlagFwdDecl)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !300, file: !44, line: 1993, baseType: !4662, size: 64, offset: 1088)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!87, !269, !87}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !300, file: !44, line: 1994, baseType: !4666, size: 64, offset: 1152)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!87, !269, !306, !601, !7, !273}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !300, file: !44, line: 1997, baseType: !4670, size: 64, offset: 1216)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!87, !4504, !269, !601, !273}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !300, file: !44, line: 1999, baseType: !4674, size: 64, offset: 1280)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!294, !4504, !306, !87}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !300, file: !44, line: 2001, baseType: !4678, size: 64, offset: 1344)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!87, !4504, !306, !294, !87}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !300, file: !44, line: 2003, baseType: !4682, size: 64, offset: 1408)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!87, !4504, !306, !4685}
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !44, line: 76, flags: DIFlagFwdDecl)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !300, file: !44, line: 2005, baseType: !4688, size: 64, offset: 1472)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!87, !306, !4685}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !300, file: !44, line: 2006, baseType: !4692, size: 64, offset: 1536)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!4695, !269}
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !44, line: 3192, size: 192, elements: !4697)
!4697 = !{!4698, !4699}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4696, file: !44, line: 3193, baseType: !1108, size: 128)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4696, file: !44, line: 3194, baseType: !340, size: 32, offset: 128)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !270, file: !44, line: 655, baseType: !434, size: 64, offset: 448)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !270, file: !44, line: 656, baseType: !265, size: 64, offset: 512)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !270, file: !44, line: 659, baseType: !260, size: 64, offset: 576)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !270, file: !44, line: 663, baseType: !166, size: 64, offset: 640)
!4704 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !44, line: 671, baseType: !4705, size: 32, offset: 704)
!4705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !44, line: 671, size: 32, elements: !4706)
!4706 = !{!4707, !4709}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4705, file: !44, line: 672, baseType: !4708, size: 32)
!4708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4705, file: !44, line: 673, baseType: !7, size: 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !270, file: !44, line: 675, baseType: !439, size: 32, offset: 736)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !270, file: !44, line: 676, baseType: !444, size: 64, offset: 768)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !270, file: !44, line: 677, baseType: !4615, size: 128, offset: 832)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !270, file: !44, line: 678, baseType: !4615, size: 128, offset: 960)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !270, file: !44, line: 679, baseType: !4615, size: 128, offset: 1088)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !270, file: !44, line: 680, baseType: !367, size: 32, offset: 1216)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !270, file: !44, line: 681, baseType: !218, size: 16, offset: 1248)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !270, file: !44, line: 682, baseType: !208, size: 8, offset: 1264)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !270, file: !44, line: 683, baseType: !208, size: 8, offset: 1272)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !270, file: !44, line: 684, baseType: !2380, size: 64, offset: 1280)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !270, file: !44, line: 691, baseType: !166, size: 64, offset: 1344)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !270, file: !44, line: 692, baseType: !753, size: 320, offset: 1408)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !270, file: !44, line: 694, baseType: !166, size: 64, offset: 1728)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !270, file: !44, line: 695, baseType: !166, size: 64, offset: 1792)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !270, file: !44, line: 697, baseType: !672, size: 128, offset: 1856)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !270, file: !44, line: 698, baseType: !226, size: 128, offset: 1984)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !270, file: !44, line: 707, baseType: !226, size: 128, offset: 2112)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !270, file: !44, line: 708, baseType: !226, size: 128, offset: 2240)
!4728 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !44, line: 709, baseType: !4729, size: 128, offset: 2368)
!4729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !44, line: 709, size: 128, elements: !4730)
!4730 = !{!4731, !4732}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4729, file: !44, line: 710, baseType: !668, size: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4729, file: !44, line: 711, baseType: !614, size: 128, align: 64)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !270, file: !44, line: 713, baseType: !176, size: 64, offset: 2496)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !270, file: !44, line: 714, baseType: !176, size: 64, offset: 2560)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !270, file: !44, line: 715, baseType: !200, size: 32, offset: 2624)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !270, file: !44, line: 716, baseType: !200, size: 32, offset: 2656)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !270, file: !44, line: 717, baseType: !200, size: 32, offset: 2688)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !270, file: !44, line: 719, baseType: !200, size: 32, offset: 2720)
!4739 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !44, line: 721, baseType: !4740, size: 64, offset: 2752)
!4740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !44, line: 721, size: 64, elements: !4741)
!4741 = !{!4742, !4743}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4740, file: !44, line: 722, baseType: !931, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4740, file: !44, line: 723, baseType: !2134, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !270, file: !44, line: 725, baseType: !4745, size: 64, offset: 2816)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 725, flags: DIFlagFwdDecl)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !270, file: !44, line: 726, baseType: !266, size: 1536, align: 64, offset: 2880)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !270, file: !44, line: 727, baseType: !226, size: 128, offset: 4416)
!4749 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !44, line: 728, baseType: !4750, size: 64, offset: 4544)
!4750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !44, line: 728, size: 64, elements: !4751)
!4751 = !{!4752, !4753, !4756, !4757}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4750, file: !44, line: 729, baseType: !1528, size: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4750, file: !44, line: 730, baseType: !4754, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 730, flags: DIFlagFwdDecl)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4750, file: !44, line: 731, baseType: !423, size: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4750, file: !44, line: 732, baseType: !7, size: 32)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !270, file: !44, line: 735, baseType: !341, size: 32, offset: 4608)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !270, file: !44, line: 738, baseType: !341, size: 32, offset: 4640)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !270, file: !44, line: 739, baseType: !4442, size: 64, offset: 4672)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !270, file: !44, line: 750, baseType: !260, size: 64, offset: 4736)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !266, file: !44, line: 474, baseType: !1108, size: 128, offset: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !266, file: !44, line: 475, baseType: !753, size: 320, offset: 192)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !266, file: !44, line: 476, baseType: !1113, size: 32, offset: 512)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !266, file: !44, line: 477, baseType: !200, size: 32, offset: 544)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !266, file: !44, line: 482, baseType: !2913, size: 128, offset: 576)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !266, file: !44, line: 483, baseType: !166, size: 64, offset: 704)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !266, file: !44, line: 484, baseType: !166, size: 64, offset: 768)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !266, file: !44, line: 485, baseType: !4770, size: 64, offset: 832)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4772)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 404, size: 1280, elements: !4773)
!4773 = !{!4774, !4778, !4782, !4786, !4790, !4806, !4811, !4815, !4819, !4823, !4827, !4831, !4832, !4836, !4840, !4844, !4849, !4853, !4859, !4860}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4772, file: !44, line: 405, baseType: !4775, size: 64)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!87, !242, !2146}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4772, file: !44, line: 406, baseType: !4779, size: 64, offset: 64)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!87, !601, !974}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4772, file: !44, line: 409, baseType: !4783, size: 64, offset: 128)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!87, !265, !2146}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4772, file: !44, line: 412, baseType: !4787, size: 64, offset: 192)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!812, !265, !974}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4772, file: !44, line: 414, baseType: !4791, size: 64, offset: 256)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{null, !4794}
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !971, line: 1276, size: 448, elements: !4796)
!4796 = !{!4797, !4798, !4799, !4801, !4802, !4803, !4804, !4805}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4795, file: !971, line: 1277, baseType: !601, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4795, file: !971, line: 1278, baseType: !265, size: 64, offset: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !4795, file: !971, line: 1279, baseType: !4800, size: 64, offset: 128)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !4795, file: !971, line: 1281, baseType: !166, size: 64, offset: 192)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !4795, file: !971, line: 1282, baseType: !7, size: 32, offset: 256)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !4795, file: !971, line: 1283, baseType: !7, size: 32, offset: 288)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !4795, file: !971, line: 1284, baseType: !812, size: 8, offset: 320)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !4795, file: !971, line: 1285, baseType: !166, size: 64, offset: 384)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4772, file: !44, line: 416, baseType: !4807, size: 64, offset: 320)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!87, !601, !265, !444, !7, !4810, !1544}
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4772, file: !44, line: 419, baseType: !4812, size: 64, offset: 384)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!87, !601, !265, !444, !7, !7, !242, !260}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4772, file: !44, line: 424, baseType: !4816, size: 64, offset: 448)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!2411, !265, !2411}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4772, file: !44, line: 425, baseType: !4820, size: 64, offset: 512)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{null, !974, !569, !569}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4772, file: !44, line: 426, baseType: !4824, size: 64, offset: 576)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!812, !974, !1113}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4772, file: !44, line: 427, baseType: !4828, size: 64, offset: 640)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{null, !974}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4772, file: !44, line: 428, baseType: !950, size: 64, offset: 704)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4772, file: !44, line: 433, baseType: !4833, size: 64, offset: 768)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!87, !265, !974, !974, !141}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4772, file: !44, line: 435, baseType: !4837, size: 64, offset: 832)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!87, !974}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4772, file: !44, line: 436, baseType: !4841, size: 64, offset: 896)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!812, !974, !569, !569}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4772, file: !44, line: 438, baseType: !4845, size: 64, offset: 960)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{null, !974, !4848, !4848}
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4772, file: !44, line: 439, baseType: !4850, size: 64, offset: 1024)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!87, !265, !242}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4772, file: !44, line: 442, baseType: !4854, size: 64, offset: 1088)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!87, !4857, !601, !2605}
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 66, flags: DIFlagFwdDecl)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4772, file: !44, line: 444, baseType: !1536, size: 64, offset: 1152)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4772, file: !44, line: 445, baseType: !4861, size: 64, offset: 1216)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!87, !953, !1058}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !44, line: 486, baseType: !166, size: 64, offset: 896)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !266, file: !44, line: 487, baseType: !753, size: 320, offset: 960)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !266, file: !44, line: 488, baseType: !1581, size: 32, offset: 1280)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !266, file: !44, line: 489, baseType: !367, size: 32, offset: 1312)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !266, file: !44, line: 490, baseType: !226, size: 128, offset: 1344)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !266, file: !44, line: 491, baseType: !260, size: 64, offset: 1472)
!4870 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !22, line: 107, baseType: !4871, size: 64, offset: 192)
!4871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !22, line: 107, size: 64, elements: !4872)
!4872 = !{!4873, !4874}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4871, file: !22, line: 108, baseType: !166, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4871, file: !22, line: 109, baseType: !166, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !250, file: !22, line: 117, baseType: !166, size: 64, offset: 256)
!4876 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !22, line: 119, baseType: !4877, size: 320)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !22, line: 119, size: 320, elements: !4878)
!4878 = !{!4879, !4880, !4883, !4884, !4885}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4877, file: !22, line: 124, baseType: !166, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4877, file: !22, line: 125, baseType: !4881, size: 64, offset: 64)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !22, line: 125, flags: DIFlagFwdDecl)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4877, file: !22, line: 126, baseType: !166, size: 64, offset: 128)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4877, file: !22, line: 127, baseType: !166, size: 64, offset: 192)
!4885 = !DIDerivedType(tag: DW_TAG_member, scope: !4877, file: !22, line: 128, baseType: !4886, size: 64, offset: 256)
!4886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4877, file: !22, line: 128, size: 64, elements: !4887)
!4887 = !{!4888, !4889}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4886, file: !22, line: 133, baseType: !166, size: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4886, file: !22, line: 138, baseType: !174, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !22, line: 141, baseType: !4891, size: 64)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !22, line: 141, size: 64, elements: !4892)
!4892 = !{!4893}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4891, file: !22, line: 142, baseType: !166, size: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !22, line: 144, baseType: !4895, size: 128)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !22, line: 144, size: 128, elements: !4896)
!4896 = !{!4897, !4948}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4895, file: !22, line: 146, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !149, line: 126, size: 1216, elements: !4900)
!4900 = !{!4901, !4911, !4912, !4913, !4914, !4915, !4916, !4930, !4931, !4932}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4899, file: !149, line: 127, baseType: !4902, size: 384)
!4902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !149, line: 21, size: 384, elements: !4903)
!4903 = !{!4904, !4905, !4907, !4908, !4909, !4910}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4902, file: !149, line: 22, baseType: !166, size: 64)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4902, file: !149, line: 23, baseType: !4906, size: 64, offset: 64)
!4906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4902, file: !149, line: 24, baseType: !4906, size: 64, offset: 128)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4902, file: !149, line: 25, baseType: !166, size: 64, offset: 192)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4902, file: !149, line: 26, baseType: !166, size: 64, offset: 256)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4902, file: !149, line: 27, baseType: !166, size: 64, offset: 320)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4899, file: !149, line: 128, baseType: !2615, size: 128, offset: 384)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4899, file: !149, line: 129, baseType: !1758, size: 256, offset: 512)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4899, file: !149, line: 130, baseType: !148, size: 32, offset: 768)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4899, file: !149, line: 131, baseType: !7, size: 32, offset: 800)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4899, file: !149, line: 132, baseType: !166, size: 64, offset: 832)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4899, file: !149, line: 133, baseType: !4917, size: 64, offset: 896)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4919)
!4919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !149, line: 77, size: 192, elements: !4920)
!4920 = !{!4921, !4925, !4926}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4919, file: !149, line: 83, baseType: !4922, size: 64)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{null, !242}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4919, file: !149, line: 89, baseType: !1402, size: 64, offset: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4919, file: !149, line: 100, baseType: !4927, size: 64, offset: 128)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!87, !4898, !166, !166, !87}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4899, file: !149, line: 134, baseType: !260, size: 64, offset: 960)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4899, file: !149, line: 135, baseType: !87, size: 32, offset: 1024)
!4932 = !DIDerivedType(tag: DW_TAG_member, scope: !4899, file: !149, line: 136, baseType: !4933, size: 128, offset: 1088)
!4933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4899, file: !149, line: 136, size: 128, elements: !4934)
!4934 = !{!4935, !4941}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4933, file: !149, line: 137, baseType: !4936, size: 128)
!4936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4937, line: 6, size: 128, elements: !4938)
!4937 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4938 = !{!4939, !4940}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4936, file: !4937, line: 7, baseType: !344, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4936, file: !4937, line: 8, baseType: !344, size: 64, offset: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, scope: !4933, file: !149, line: 138, baseType: !4942)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4933, file: !149, line: 138, elements: !4943)
!4943 = !{!4944, !4946}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4942, file: !149, line: 138, baseType: !4945)
!4945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4942, file: !149, line: 138, elements: !1202)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4942, file: !149, line: 138, baseType: !4947)
!4947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4936, elements: !696)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4895, file: !22, line: 147, baseType: !260, size: 64, offset: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !247, file: !22, line: 161, baseType: !614, size: 128, align: 64)
!4950 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !22, line: 164, baseType: !4951, size: 32, offset: 384)
!4951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !22, line: 164, size: 32, elements: !4952)
!4952 = !{!4953, !4954}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4951, file: !22, line: 169, baseType: !200, size: 32)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4951, file: !22, line: 177, baseType: !7, size: 32)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !243, file: !22, line: 181, baseType: !200, size: 32, offset: 416)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "b_folio", scope: !239, file: !234, line: 64, baseType: !974, size: 64)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "b_blocknr", scope: !233, file: !234, line: 67, baseType: !2411, size: 64, offset: 192)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !233, file: !234, line: 68, baseType: !569, size: 64, offset: 256)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "b_data", scope: !233, file: !234, line: 69, baseType: !423, size: 64, offset: 320)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "b_bdev", scope: !233, file: !234, line: 71, baseType: !2406, size: 64, offset: 384)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "b_end_io", scope: !233, file: !234, line: 72, baseType: !4962, size: 64, offset: 448)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DIDerivedType(tag: DW_TAG_typedef, name: "bh_end_io_t", file: !234, line: 48, baseType: !4964)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{null, !232, !87}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "b_private", scope: !233, file: !234, line: 73, baseType: !260, size: 64, offset: 512)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_buffers", scope: !233, file: !234, line: 74, baseType: !226, size: 128, offset: 576)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_map", scope: !233, file: !234, line: 75, baseType: !265, size: 64, offset: 704)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "b_count", scope: !233, file: !234, line: 77, baseType: !200, size: 32, offset: 768)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "b_uptodate_lock", scope: !233, file: !234, line: 78, baseType: !367, size: 32, offset: 800)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "j_superblock", scope: !163, file: !157, line: 784, baseType: !4972, size: 64, offset: 512)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_superblock_t", file: !157, line: 277, baseType: !4974)
!4974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_superblock_s", file: !157, line: 226, size: 8192, elements: !4975)
!4975 = !{!4976, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5001, !5002, !5003, !5007, !5008}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "s_header", scope: !4974, file: !157, line: 229, baseType: !4977, size: 96)
!4977 = !DIDerivedType(tag: DW_TAG_typedef, name: "journal_header_t", file: !157, line: 136, baseType: !4978)
!4978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_header_s", file: !157, line: 131, size: 96, elements: !4979)
!4979 = !{!4980, !4982, !4983}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "h_magic", scope: !4978, file: !157, line: 133, baseType: !4981, size: 32)
!4981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !1156, line: 39, baseType: !341)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "h_blocktype", scope: !4978, file: !157, line: 134, baseType: !4981, size: 32, offset: 32)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "h_sequence", scope: !4978, file: !157, line: 135, baseType: !4981, size: 32, offset: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !4974, file: !157, line: 233, baseType: !4981, size: 32, offset: 96)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxlen", scope: !4974, file: !157, line: 234, baseType: !4981, size: 32, offset: 128)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "s_first", scope: !4974, file: !157, line: 235, baseType: !4981, size: 32, offset: 160)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "s_sequence", scope: !4974, file: !157, line: 239, baseType: !4981, size: 32, offset: 192)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "s_start", scope: !4974, file: !157, line: 240, baseType: !4981, size: 32, offset: 224)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "s_errno", scope: !4974, file: !157, line: 244, baseType: !4981, size: 32, offset: 256)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_compat", scope: !4974, file: !157, line: 248, baseType: !4981, size: 32, offset: 288)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_incompat", scope: !4974, file: !157, line: 249, baseType: !4981, size: 32, offset: 320)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "s_feature_ro_compat", scope: !4974, file: !157, line: 250, baseType: !4981, size: 32, offset: 352)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !4974, file: !157, line: 252, baseType: !4451, size: 128, offset: 384)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "s_nr_users", scope: !4974, file: !157, line: 255, baseType: !4981, size: 32, offset: 512)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "s_dynsuper", scope: !4974, file: !157, line: 257, baseType: !4981, size: 32, offset: 544)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_transaction", scope: !4974, file: !157, line: 260, baseType: !4981, size: 32, offset: 576)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_trans_data", scope: !4974, file: !157, line: 261, baseType: !4981, size: 32, offset: 608)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum_type", scope: !4974, file: !157, line: 264, baseType: !209, size: 8, offset: 640)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "s_padding2", scope: !4974, file: !157, line: 265, baseType: !5000, size: 24, offset: 648)
!5000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 24, elements: !525)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "s_num_fc_blks", scope: !4974, file: !157, line: 267, baseType: !4981, size: 32, offset: 672)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "s_head", scope: !4974, file: !157, line: 268, baseType: !4981, size: 32, offset: 704)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "s_padding", scope: !4974, file: !157, line: 271, baseType: !5004, size: 1280, offset: 736)
!5004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 1280, elements: !5005)
!5005 = !{!5006}
!5006 = !DISubrange(count: 40)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "s_checksum", scope: !4974, file: !157, line: 272, baseType: !4981, size: 32, offset: 2016)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "s_users", scope: !4974, file: !157, line: 275, baseType: !5009, size: 6144, offset: 2048)
!5009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 6144, elements: !5010)
!5010 = !{!5011}
!5011 = !DISubrange(count: 768)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "j_state_lock", scope: !163, file: !157, line: 789, baseType: !634, size: 64, offset: 576)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "j_barrier_count", scope: !163, file: !157, line: 797, baseType: !87, size: 32, offset: 640)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "j_barrier", scope: !163, file: !157, line: 802, baseType: !170, size: 256, offset: 704)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "j_running_transaction", scope: !163, file: !157, line: 811, baseType: !5016, size: 64, offset: 960)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DIDerivedType(tag: DW_TAG_typedef, name: "transaction_t", file: !5018, line: 17, baseType: !158)
!5018 = !DIFile(filename: "./include/linux/journal-head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a64d63ceb0222c76d889f081fb8fa94")
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "j_committing_transaction", scope: !163, file: !157, line: 819, baseType: !5016, size: 64, offset: 1024)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_transactions", scope: !163, file: !157, line: 827, baseType: !5016, size: 64, offset: 1088)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_transaction_locked", scope: !163, file: !157, line: 835, baseType: !681, size: 192, offset: 1152)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_done_commit", scope: !163, file: !157, line: 840, baseType: !681, size: 192, offset: 1344)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_commit", scope: !163, file: !157, line: 845, baseType: !681, size: 192, offset: 1536)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_updates", scope: !163, file: !157, line: 850, baseType: !681, size: 192, offset: 1728)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "j_wait_reserved", scope: !163, file: !157, line: 857, baseType: !681, size: 192, offset: 1920)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wait", scope: !163, file: !157, line: 864, baseType: !681, size: 192, offset: 2112)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_mutex", scope: !163, file: !157, line: 871, baseType: !170, size: 256, offset: 2304)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "j_chkpt_bhs", scope: !163, file: !157, line: 881, baseType: !5029, size: 4096, offset: 2560)
!5029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 4096, elements: !529)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "j_shrinker", scope: !163, file: !157, line: 889, baseType: !4457, size: 448, offset: 6656)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "j_checkpoint_jh_count", scope: !163, file: !157, line: 896, baseType: !870, size: 320, offset: 7104)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "j_shrink_transaction", scope: !163, file: !157, line: 904, baseType: !5016, size: 64, offset: 7424)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "j_head", scope: !163, file: !157, line: 912, baseType: !166, size: 64, offset: 7488)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "j_tail", scope: !163, file: !157, line: 920, baseType: !166, size: 64, offset: 7552)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "j_free", scope: !163, file: !157, line: 928, baseType: !166, size: 64, offset: 7616)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "j_first", scope: !163, file: !157, line: 936, baseType: !166, size: 64, offset: 7680)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "j_last", scope: !163, file: !157, line: 944, baseType: !166, size: 64, offset: 7744)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_first", scope: !163, file: !157, line: 952, baseType: !166, size: 64, offset: 7808)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_off", scope: !163, file: !157, line: 961, baseType: !166, size: 64, offset: 7872)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_last", scope: !163, file: !157, line: 969, baseType: !166, size: 64, offset: 7936)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "j_dev", scope: !163, file: !157, line: 974, baseType: !2406, size: 64, offset: 8000)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "j_blocksize", scope: !163, file: !157, line: 979, baseType: !87, size: 32, offset: 8064)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "j_blk_offset", scope: !163, file: !157, line: 986, baseType: !346, size: 64, offset: 8128)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "j_devname", scope: !163, file: !157, line: 991, baseType: !477, size: 448, offset: 8192)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "j_fs_dev", scope: !163, file: !157, line: 999, baseType: !2406, size: 64, offset: 8640)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "j_total_len", scope: !163, file: !157, line: 1004, baseType: !7, size: 32, offset: 8704)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "j_reserved_credits", scope: !163, file: !157, line: 1011, baseType: !200, size: 32, offset: 8736)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "j_list_lock", scope: !163, file: !157, line: 1016, baseType: !367, size: 32, offset: 8768)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "j_inode", scope: !163, file: !157, line: 1024, baseType: !269, size: 64, offset: 8832)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "j_tail_sequence", scope: !163, file: !157, line: 1031, baseType: !5051, size: 32, offset: 8896)
!5051 = !DIDerivedType(tag: DW_TAG_typedef, name: "tid_t", file: !5018, line: 16, baseType: !7)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "j_transaction_sequence", scope: !163, file: !157, line: 1038, baseType: !5051, size: 32, offset: 8928)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_sequence", scope: !163, file: !157, line: 1046, baseType: !5051, size: 32, offset: 8960)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_request", scope: !163, file: !157, line: 1054, baseType: !5051, size: 32, offset: 8992)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "j_uuid", scope: !163, file: !157, line: 1064, baseType: !4451, size: 128, offset: 9024)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "j_task", scope: !163, file: !157, line: 1069, baseType: !3328, size: 64, offset: 9152)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "j_max_transaction_buffers", scope: !163, file: !157, line: 1077, baseType: !87, size: 32, offset: 9216)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_records_per_block", scope: !163, file: !157, line: 1084, baseType: !87, size: 32, offset: 9248)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "j_transaction_overhead_buffers", scope: !163, file: !157, line: 1091, baseType: !87, size: 32, offset: 9280)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_interval", scope: !163, file: !157, line: 1098, baseType: !166, size: 64, offset: 9344)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_timer", scope: !163, file: !157, line: 1103, baseType: !2004, size: 320, offset: 9408)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_lock", scope: !163, file: !157, line: 1108, baseType: !367, size: 32, offset: 9728)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke", scope: !163, file: !157, line: 1116, baseType: !5064, size: 64, offset: 9792)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_revoke_table_s", file: !3, line: 111, size: 128, elements: !5066)
!5066 = !{!5067, !5068, !5069}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size", scope: !5065, file: !3, line: 115, baseType: !87, size: 32)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "hash_shift", scope: !5065, file: !3, line: 116, baseType: !87, size: 32, offset: 32)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !5065, file: !3, line: 117, baseType: !229, size: 64, offset: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "j_revoke_table", scope: !163, file: !157, line: 1121, baseType: !5071, size: 128, offset: 9856)
!5071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5064, size: 128, elements: !1894)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "j_wbuf", scope: !163, file: !157, line: 1126, baseType: !5073, size: 64, offset: 9984)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wbuf", scope: !163, file: !157, line: 1133, baseType: !5073, size: 64, offset: 10048)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "j_wbufsize", scope: !163, file: !157, line: 1140, baseType: !87, size: 32, offset: 10112)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_wbufsize", scope: !163, file: !157, line: 1147, baseType: !87, size: 32, offset: 10144)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "j_last_sync_writer", scope: !163, file: !157, line: 1155, baseType: !3617, size: 32, offset: 10176)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "j_average_commit_time", scope: !163, file: !157, line: 1163, baseType: !344, size: 64, offset: 10240)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "j_min_batch_time", scope: !163, file: !157, line: 1171, baseType: !340, size: 32, offset: 10304)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "j_max_batch_time", scope: !163, file: !157, line: 1179, baseType: !340, size: 32, offset: 10336)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "j_commit_callback", scope: !163, file: !157, line: 1186, baseType: !5082, size: 64, offset: 10368)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{null, !161, !5016}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "j_submit_inode_data_buffers", scope: !163, file: !157, line: 1196, baseType: !5086, size: 64, offset: 10432)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!87, !5089}
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_inode", file: !157, line: 397, size: 512, elements: !5091)
!5091 = !{!5092, !5093, !5094, !5095, !5096, !5097, !5098}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "i_transaction", scope: !5090, file: !157, line: 404, baseType: !5016, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "i_next_transaction", scope: !5090, file: !157, line: 412, baseType: !5016, size: 64, offset: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "i_list", scope: !5090, file: !157, line: 417, baseType: !226, size: 128, offset: 128)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "i_vfs_inode", scope: !5090, file: !157, line: 424, baseType: !269, size: 64, offset: 256)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !5090, file: !157, line: 429, baseType: !166, size: 64, offset: 320)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "i_dirty_start", scope: !5090, file: !157, line: 437, baseType: !444, size: 64, offset: 384)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "i_dirty_end", scope: !5090, file: !157, line: 445, baseType: !444, size: 64, offset: 448)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "j_finish_inode_data_buffers", scope: !163, file: !157, line: 1207, baseType: !5086, size: 64, offset: 10496)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "j_history_lock", scope: !163, file: !157, line: 1217, baseType: !367, size: 32, offset: 10560)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "j_proc_entry", scope: !163, file: !157, line: 1222, baseType: !5102, size: 64, offset: 10624)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !157, line: 1222, flags: DIFlagFwdDecl)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "j_stats", scope: !163, file: !157, line: 1227, baseType: !5105, size: 640, offset: 10688)
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_stats_s", file: !157, line: 724, size: 640, elements: !5106)
!5106 = !{!5107, !5108, !5109}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "ts_tid", scope: !5105, file: !157, line: 725, baseType: !166, size: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "ts_requested", scope: !5105, file: !157, line: 726, baseType: !166, size: 64, offset: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !5105, file: !157, line: 727, baseType: !5110, size: 512, offset: 128)
!5110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_run_stats_s", file: !157, line: 711, size: 512, elements: !5111)
!5111 = !{!5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "rs_wait", scope: !5110, file: !157, line: 712, baseType: !166, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "rs_request_delay", scope: !5110, file: !157, line: 713, baseType: !166, size: 64, offset: 64)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "rs_running", scope: !5110, file: !157, line: 714, baseType: !166, size: 64, offset: 128)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "rs_locked", scope: !5110, file: !157, line: 715, baseType: !166, size: 64, offset: 192)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "rs_flushing", scope: !5110, file: !157, line: 716, baseType: !166, size: 64, offset: 256)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "rs_logging", scope: !5110, file: !157, line: 717, baseType: !166, size: 64, offset: 320)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "rs_handle_count", scope: !5110, file: !157, line: 719, baseType: !341, size: 32, offset: 384)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "rs_blocks", scope: !5110, file: !157, line: 720, baseType: !341, size: 32, offset: 416)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "rs_blocks_logged", scope: !5110, file: !157, line: 721, baseType: !341, size: 32, offset: 448)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "j_failed_commit", scope: !163, file: !157, line: 1232, baseType: !7, size: 32, offset: 11328)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "j_private", scope: !163, file: !157, line: 1240, baseType: !260, size: 64, offset: 11392)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "j_chksum_driver", scope: !163, file: !157, line: 1247, baseType: !5124, size: 64, offset: 11456)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_shash", file: !5126, line: 268, size: 320, elements: !5127)
!5126 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!5127 = !{!5128, !5129}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "descsize", scope: !5125, file: !5126, line: 269, baseType: !7, size: 32)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5125, file: !5126, line: 270, baseType: !5130, size: 256, offset: 64)
!5130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !5131, line: 422, size: 256, elements: !5132)
!5131 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!5132 = !{!5133, !5134, !5135, !5136, !5141, !5199}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5130, file: !5131, line: 423, baseType: !659, size: 32)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !5130, file: !5131, line: 425, baseType: !340, size: 32, offset: 32)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5130, file: !5131, line: 427, baseType: !87, size: 32, offset: 64)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5130, file: !5131, line: 429, baseType: !5137, size: 64, offset: 128)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{null, !5140}
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !5130, file: !5131, line: 431, baseType: !5142, size: 64, offset: 192)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !5131, line: 343, size: 3072, align: 64, elements: !5144)
!5144 = !{!5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5157, !5158, !5162, !5189, !5193, !5194, !5198}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !5143, file: !5131, line: 344, baseType: !226, size: 128)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !5143, file: !5131, line: 345, baseType: !226, size: 128, offset: 128)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !5143, file: !5131, line: 347, baseType: !340, size: 32, offset: 256)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !5143, file: !5131, line: 348, baseType: !7, size: 32, offset: 288)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !5143, file: !5131, line: 349, baseType: !7, size: 32, offset: 320)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !5143, file: !5131, line: 350, baseType: !7, size: 32, offset: 352)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !5143, file: !5131, line: 352, baseType: !87, size: 32, offset: 384)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !5143, file: !5131, line: 353, baseType: !659, size: 32, offset: 416)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !5143, file: !5131, line: 355, baseType: !5154, size: 1024, offset: 448)
!5154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 1024, elements: !5155)
!5155 = !{!5156}
!5156 = !DISubrange(count: 128)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !5143, file: !5131, line: 356, baseType: !5154, size: 1024, offset: 1472)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !5143, file: !5131, line: 358, baseType: !5159, size: 64, offset: 2496)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5161)
!5161 = !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !5131, line: 160, flags: DIFlagFwdDecl)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !5143, file: !5131, line: 363, baseType: !5163, size: 256, offset: 2560)
!5163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5143, file: !5131, line: 360, size: 256, elements: !5164)
!5164 = !{!5165, !5181}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !5163, file: !5131, line: 361, baseType: !5166, size: 256)
!5166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !5131, line: 235, size: 256, elements: !5167)
!5167 = !{!5168, !5169, !5170, !5176, !5180}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !5166, file: !5131, line: 236, baseType: !7, size: 32)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !5166, file: !5131, line: 237, baseType: !7, size: 32, offset: 32)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !5166, file: !5131, line: 238, baseType: !5171, size: 64, offset: 64)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DISubroutineType(types: !5173)
!5173 = !{!87, !5140, !5174, !7}
!5174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5175, size: 64)
!5175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !5166, file: !5131, line: 240, baseType: !5177, size: 64, offset: 128)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{null, !5140, !2595, !5174}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !5166, file: !5131, line: 241, baseType: !5177, size: 64, offset: 192)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !5163, file: !5131, line: 362, baseType: !5182, size: 128)
!5182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !5131, line: 255, size: 128, elements: !5183)
!5183 = !{!5184, !5188}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !5182, file: !5131, line: 256, baseType: !5185, size: 64)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!87, !5140, !5174, !7, !2595, !1856}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !5182, file: !5131, line: 258, baseType: !5185, size: 64, offset: 64)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !5143, file: !5131, line: 365, baseType: !5190, size: 64, offset: 2816)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!87, !5140}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !5143, file: !5131, line: 366, baseType: !5137, size: 64, offset: 2880)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !5143, file: !5131, line: 367, baseType: !5195, size: 64, offset: 2944)
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{null, !5142}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !5143, file: !5131, line: 369, baseType: !471, size: 64, offset: 3008)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !5130, file: !5131, line: 433, baseType: !5200, align: 64, offset: 256)
!5200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, elements: !696)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "j_csum_seed", scope: !163, file: !157, line: 1254, baseType: !341, size: 32, offset: 11520)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_cleanup_callback", scope: !163, file: !157, line: 1276, baseType: !5203, size: 64, offset: 11584)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{null, !5206, !87, !5051}
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "j_fc_replay_callback", scope: !163, file: !157, line: 1289, baseType: !5208, size: 64, offset: 11648)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = !DISubroutineType(types: !5210)
!5210 = !{!87, !5206, !232, !5211, !87, !5051}
!5211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "passtype", file: !157, line: 741, baseType: !7, size: 32, elements: !5212)
!5212 = !{!5213, !5214, !5215}
!5213 = !DIEnumerator(name: "PASS_SCAN", value: 0)
!5214 = !DIEnumerator(name: "PASS_REVOKE", value: 1)
!5215 = !DIEnumerator(name: "PASS_REPLAY", value: 2)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "j_bmap", scope: !163, file: !157, line: 1300, baseType: !5217, size: 64, offset: 11712)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!87, !5206, !2605}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "t_tid", scope: !158, file: !157, line: 557, baseType: !5051, size: 32, offset: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "t_state", scope: !158, file: !157, line: 577, baseType: !156, size: 32, offset: 96)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "t_log_start", scope: !158, file: !157, line: 582, baseType: !166, size: 64, offset: 128)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "t_nr_buffers", scope: !158, file: !157, line: 588, baseType: !87, size: 32, offset: 192)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "t_reserved_list", scope: !158, file: !157, line: 595, baseType: !5225, size: 64, offset: 256)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "journal_head", file: !5018, line: 22, size: 896, elements: !5227)
!5227 = !{!5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5254}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "b_bh", scope: !5226, file: !5018, line: 26, baseType: !232, size: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "b_state_lock", scope: !5226, file: !5018, line: 31, baseType: !367, size: 32, offset: 64)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "b_jcount", scope: !5226, file: !5018, line: 37, baseType: !87, size: 32, offset: 96)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "b_jlist", scope: !5226, file: !5018, line: 46, baseType: !7, size: 32, offset: 128)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "b_modified", scope: !5226, file: !5018, line: 53, baseType: !7, size: 32, offset: 160)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "b_frozen_data", scope: !5226, file: !5018, line: 59, baseType: !423, size: 64, offset: 192)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "b_committed_data", scope: !5226, file: !5018, line: 66, baseType: !423, size: 64, offset: 256)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "b_transaction", scope: !5226, file: !5018, line: 77, baseType: !5016, size: 64, offset: 320)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "b_next_transaction", scope: !5226, file: !5018, line: 85, baseType: !5016, size: 64, offset: 384)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "b_tnext", scope: !5226, file: !5018, line: 91, baseType: !5225, size: 64, offset: 448)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "b_tprev", scope: !5226, file: !5018, line: 91, baseType: !5225, size: 64, offset: 512)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "b_cp_transaction", scope: !5226, file: !5018, line: 98, baseType: !5016, size: 64, offset: 576)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "b_cpnext", scope: !5226, file: !5018, line: 105, baseType: !5225, size: 64, offset: 640)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "b_cpprev", scope: !5226, file: !5018, line: 105, baseType: !5225, size: 64, offset: 704)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "b_triggers", scope: !5226, file: !5018, line: 108, baseType: !5243, size: 64, offset: 768)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_buffer_trigger_type", file: !157, line: 1460, size: 128, elements: !5245)
!5245 = !{!5246, !5250}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "t_frozen", scope: !5244, file: !157, line: 1467, baseType: !5247, size: 64)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{null, !5243, !232, !260, !569}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "t_abort", scope: !5244, file: !157, line: 1475, baseType: !5251, size: 64, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{null, !5243, !232}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "b_frozen_triggers", scope: !5226, file: !5018, line: 111, baseType: !5243, size: 64, offset: 832)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "t_buffers", scope: !158, file: !157, line: 601, baseType: !5225, size: 64, offset: 320)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "t_forget", scope: !158, file: !157, line: 608, baseType: !5225, size: 64, offset: 384)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "t_checkpoint_list", scope: !158, file: !157, line: 614, baseType: !5225, size: 64, offset: 448)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "t_shadow_list", scope: !158, file: !157, line: 623, baseType: !5225, size: 64, offset: 512)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "t_inode_list", scope: !158, file: !157, line: 631, baseType: !226, size: 128, offset: 576)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "t_max_wait", scope: !158, file: !157, line: 636, baseType: !166, size: 64, offset: 704)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "t_start", scope: !158, file: !157, line: 641, baseType: !166, size: 64, offset: 768)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "t_requested", scope: !158, file: !157, line: 646, baseType: !166, size: 64, offset: 832)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "t_chp_stats", scope: !158, file: !157, line: 651, baseType: !5264, size: 192, offset: 896)
!5264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transaction_chp_stats_s", file: !157, line: 510, size: 192, elements: !5265)
!5265 = !{!5266, !5267, !5268, !5269}
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "cs_chp_time", scope: !5264, file: !157, line: 511, baseType: !166, size: 64)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "cs_forced_to_close", scope: !5264, file: !157, line: 512, baseType: !341, size: 32, offset: 64)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "cs_written", scope: !5264, file: !157, line: 513, baseType: !341, size: 32, offset: 96)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "cs_dropped", scope: !5264, file: !157, line: 514, baseType: !341, size: 32, offset: 128)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "t_updates", scope: !158, file: !157, line: 657, baseType: !200, size: 32, offset: 1088)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "t_outstanding_credits", scope: !158, file: !157, line: 665, baseType: !200, size: 32, offset: 1120)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "t_outstanding_revokes", scope: !158, file: !157, line: 671, baseType: !200, size: 32, offset: 1152)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "t_handle_count", scope: !158, file: !157, line: 676, baseType: !200, size: 32, offset: 1184)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "t_cpnext", scope: !158, file: !157, line: 682, baseType: !5016, size: 64, offset: 1216)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "t_cpprev", scope: !158, file: !157, line: 682, baseType: !5016, size: 64, offset: 1280)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "t_expires", scope: !158, file: !157, line: 688, baseType: !166, size: 64, offset: 1344)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "t_start_time", scope: !158, file: !157, line: 693, baseType: !2836, size: 64, offset: 1408)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "t_synchronous_commit", scope: !158, file: !157, line: 699, baseType: !7, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "t_need_data_flush", scope: !158, file: !157, line: 702, baseType: !87, size: 32, offset: 1504)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "t_private_list", scope: !158, file: !157, line: 708, baseType: !226, size: 128, offset: 1536)
!5281 = !{!5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290}
!5282 = !DIEnumerator(name: "T_RUNNING", value: 0)
!5283 = !DIEnumerator(name: "T_LOCKED", value: 1)
!5284 = !DIEnumerator(name: "T_SWITCH", value: 2)
!5285 = !DIEnumerator(name: "T_FLUSH", value: 3)
!5286 = !DIEnumerator(name: "T_COMMIT", value: 4)
!5287 = !DIEnumerator(name: "T_COMMIT_DFLUSH", value: 5)
!5288 = !DIEnumerator(name: "T_COMMIT_JFLUSH", value: 6)
!5289 = !DIEnumerator(name: "T_COMMIT_CALLBACK", value: 7)
!5290 = !DIEnumerator(name: "T_FINISHED", value: 8)
!5291 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5292, line: 10, baseType: !7, size: 32, elements: !5293)
!5292 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5293 = !{!5294, !5295}
!5294 = !DIEnumerator(name: "false", value: 0)
!5295 = !DIEnumerator(name: "true", value: 1)
!5296 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !5297, line: 364, baseType: !7, size: 32, elements: !5298)
!5297 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!5298 = !{!5299, !5300, !5301, !5302, !5303, !5304, !5305}
!5299 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!5300 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!5301 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!5302 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!5303 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!5304 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!5305 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!5306 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "jbd_state_bits", file: !157, line: 305, baseType: !7, size: 32, elements: !5307)
!5307 = !{!5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317}
!5308 = !DIEnumerator(name: "BH_JBD", value: 16)
!5309 = !DIEnumerator(name: "BH_JWrite", value: 17)
!5310 = !DIEnumerator(name: "BH_Freed", value: 18)
!5311 = !DIEnumerator(name: "BH_Revoked", value: 19)
!5312 = !DIEnumerator(name: "BH_RevokeValid", value: 20)
!5313 = !DIEnumerator(name: "BH_JBDDirty", value: 21)
!5314 = !DIEnumerator(name: "BH_JournalHead", value: 22)
!5315 = !DIEnumerator(name: "BH_Shadow", value: 23)
!5316 = !DIEnumerator(name: "BH_Verified", value: 24)
!5317 = !DIEnumerator(name: "BH_JBDPrivateStart", value: 25)
!5318 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_flag_bits", file: !2408, line: 404, baseType: !7, size: 32, elements: !5319)
!5319 = !{!5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340}
!5320 = !DIEnumerator(name: "__REQ_FAILFAST_DEV", value: 8)
!5321 = !DIEnumerator(name: "__REQ_FAILFAST_TRANSPORT", value: 9)
!5322 = !DIEnumerator(name: "__REQ_FAILFAST_DRIVER", value: 10)
!5323 = !DIEnumerator(name: "__REQ_SYNC", value: 11)
!5324 = !DIEnumerator(name: "__REQ_META", value: 12)
!5325 = !DIEnumerator(name: "__REQ_PRIO", value: 13)
!5326 = !DIEnumerator(name: "__REQ_NOMERGE", value: 14)
!5327 = !DIEnumerator(name: "__REQ_IDLE", value: 15)
!5328 = !DIEnumerator(name: "__REQ_INTEGRITY", value: 16)
!5329 = !DIEnumerator(name: "__REQ_FUA", value: 17)
!5330 = !DIEnumerator(name: "__REQ_PREFLUSH", value: 18)
!5331 = !DIEnumerator(name: "__REQ_RAHEAD", value: 19)
!5332 = !DIEnumerator(name: "__REQ_BACKGROUND", value: 20)
!5333 = !DIEnumerator(name: "__REQ_NOWAIT", value: 21)
!5334 = !DIEnumerator(name: "__REQ_POLLED", value: 22)
!5335 = !DIEnumerator(name: "__REQ_ALLOC_CACHE", value: 23)
!5336 = !DIEnumerator(name: "__REQ_SWAP", value: 24)
!5337 = !DIEnumerator(name: "__REQ_DRV", value: 25)
!5338 = !DIEnumerator(name: "__REQ_FS_PRIVATE", value: 26)
!5339 = !DIEnumerator(name: "__REQ_NOUNMAP", value: 27)
!5340 = !DIEnumerator(name: "__REQ_NR_BITS", value: 28)
!5341 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bh_state_bits", file: !234, line: 19, baseType: !7, size: 32, elements: !5342)
!5342 = !{!5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359}
!5343 = !DIEnumerator(name: "BH_Uptodate", value: 0)
!5344 = !DIEnumerator(name: "BH_Dirty", value: 1)
!5345 = !DIEnumerator(name: "BH_Lock", value: 2)
!5346 = !DIEnumerator(name: "BH_Req", value: 3)
!5347 = !DIEnumerator(name: "BH_Mapped", value: 4)
!5348 = !DIEnumerator(name: "BH_New", value: 5)
!5349 = !DIEnumerator(name: "BH_Async_Read", value: 6)
!5350 = !DIEnumerator(name: "BH_Async_Write", value: 7)
!5351 = !DIEnumerator(name: "BH_Delay", value: 8)
!5352 = !DIEnumerator(name: "BH_Boundary", value: 9)
!5353 = !DIEnumerator(name: "BH_Write_EIO", value: 10)
!5354 = !DIEnumerator(name: "BH_Unwritten", value: 11)
!5355 = !DIEnumerator(name: "BH_Quiet", value: 12)
!5356 = !DIEnumerator(name: "BH_Meta", value: 13)
!5357 = !DIEnumerator(name: "BH_Prio", value: 14)
!5358 = !DIEnumerator(name: "BH_Defer_Completion", value: 15)
!5359 = !DIEnumerator(name: "BH_PrivateStart", value: 16)
!5360 = !{!5361, !260, !5362, !1113, !166, !5368, !5369, !2095, !5370, !5372, !5374, !5376, !5378, !345, !5379, !4981, !341, !5380, !5381, !2441}
!5361 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_flags_t", file: !177, line: 155, baseType: !7)
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_revoke_record_s", file: !3, line: 102, size: 256, elements: !5364)
!5364 = !{!5365, !5366, !5367}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5363, file: !3, line: 104, baseType: !226, size: 128)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !5363, file: !3, line: 105, baseType: !5051, size: 32, offset: 128)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "blocknr", scope: !5363, file: !3, line: 106, baseType: !346, size: 64, offset: 192)
!5368 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !177, line: 42, baseType: !166)
!5369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !399)
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !559)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !229)
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5375)
!5378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !1156, line: 41, baseType: !345)
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = !DIDerivedType(tag: DW_TAG_typedef, name: "jbd2_journal_revoke_header_t", file: !157, line: 214, baseType: !5383)
!5383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_journal_revoke_header_s", file: !157, line: 210, size: 128, elements: !5384)
!5384 = !{!5385, !5386}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "r_header", scope: !5383, file: !157, line: 212, baseType: !4977, size: 96)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "r_count", scope: !5383, file: !157, line: 213, baseType: !4981, size: 32, offset: 96)
!5387 = !{!5388, !5393, !5398, !5403, !5406, !5411, !5416, !5419, !5421, !0, !5426, !5428, !5430, !5434}
!5388 = !DIGlobalVariableExpression(var: !5389, expr: !DIExpression())
!5389 = distinct !DIGlobalVariable(scope: null, file: !3, line: 195, type: !5390, isLocal: true, isDefinition: true)
!5390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 136, elements: !5391)
!5391 = !{!5392}
!5392 = !DISubrange(count: 17)
!5393 = !DIGlobalVariableExpression(var: !5394, expr: !DIExpression())
!5394 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !5395, isLocal: true, isDefinition: true)
!5395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 168, elements: !5396)
!5396 = !{!5397}
!5397 = !DISubrange(count: 21)
!5398 = !DIGlobalVariableExpression(var: !5399, expr: !DIExpression())
!5399 = distinct !DIGlobalVariable(scope: null, file: !3, line: 200, type: !5400, isLocal: true, isDefinition: true)
!5400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 368, elements: !5401)
!5401 = !{!5402}
!5402 = !DISubrange(count: 46)
!5403 = !DIGlobalVariableExpression(var: !5404, expr: !DIExpression())
!5404 = distinct !DIGlobalVariable(scope: null, file: !3, line: 209, type: !5405, isLocal: true, isDefinition: true)
!5405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 160, elements: !4291)
!5406 = !DIGlobalVariableExpression(var: !5407, expr: !DIExpression())
!5407 = distinct !DIGlobalVariable(scope: null, file: !3, line: 212, type: !5408, isLocal: true, isDefinition: true)
!5408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 360, elements: !5409)
!5409 = !{!5410}
!5410 = !DISubrange(count: 45)
!5411 = !DIGlobalVariableExpression(var: !5412, expr: !DIExpression())
!5412 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !5413, isLocal: true, isDefinition: true)
!5413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 288, elements: !5414)
!5414 = !{!5415}
!5415 = !DISubrange(count: 36)
!5416 = !DIGlobalVariableExpression(var: !5417, expr: !DIExpression())
!5417 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !5418, isLocal: true, isDefinition: true)
!5418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 160, elements: !4291)
!5419 = !DIGlobalVariableExpression(var: !5420, expr: !DIExpression())
!5420 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !5405, isLocal: true, isDefinition: true)
!5421 = !DIGlobalVariableExpression(var: !5422, expr: !DIExpression())
!5422 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !5423, isLocal: true, isDefinition: true)
!5423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 232, elements: !5424)
!5424 = !{!5425}
!5425 = !DISubrange(count: 29)
!5426 = !DIGlobalVariableExpression(var: !5427, expr: !DIExpression())
!5427 = distinct !DIGlobalVariable(name: "jbd2_revoke_table_cache", scope: !2, file: !3, line: 96, type: !2481, isLocal: true, isDefinition: true)
!5428 = !DIGlobalVariableExpression(var: !5429, expr: !DIExpression())
!5429 = distinct !DIGlobalVariable(scope: null, file: !5297, line: 480, type: !5395, isLocal: true, isDefinition: true)
!5430 = !DIGlobalVariableExpression(var: !5431, expr: !DIExpression())
!5431 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !5432, file: !5433, line: 112, type: !260, isLocal: true, isDefinition: true)
!5432 = distinct !DISubprogram(name: "might_resched", scope: !5433, file: !5433, line: 110, type: !2109, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5433 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5434 = !DIGlobalVariableExpression(var: !5435, expr: !DIExpression())
!5435 = distinct !DIGlobalVariable(scope: null, file: !157, line: 1730, type: !5395, isLocal: true, isDefinition: true)
!5436 = !{i32 7, !"Dwarf Version", i32 5}
!5437 = !{i32 2, !"Debug Info Version", i32 3}
!5438 = !{i32 1, !"wchar_size", i32 2}
!5439 = !{i32 8, !"cf-protection-branch", i32 1}
!5440 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5441 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5442 = !{i32 1, !"Code Model", i32 2}
!5443 = !{i32 1, !"override-stack-alignment", i32 8}
!5444 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5445 = distinct !DISubprogram(name: "jbd2_journal_destroy_revoke_record_cache", scope: !3, file: !3, line: 181, type: !2109, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5446 = !DILocation(line: 183, column: 21, scope: !5445)
!5447 = !DILocation(line: 183, column: 2, scope: !5445)
!5448 = !DILocation(line: 184, column: 27, scope: !5445)
!5449 = !DILocation(line: 185, column: 1, scope: !5445)
!5450 = !DISubprogram(name: "kmem_cache_destroy", scope: !5297, file: !5297, line: 197, type: !5451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5451 = !DISubroutineType(types: !5452)
!5452 = !{null, !2481}
!5453 = distinct !DISubprogram(name: "jbd2_journal_destroy_revoke_table_cache", scope: !3, file: !3, line: 187, type: !2109, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5454 = !DILocation(line: 189, column: 21, scope: !5453)
!5455 = !DILocation(line: 189, column: 2, scope: !5453)
!5456 = !DILocation(line: 190, column: 26, scope: !5453)
!5457 = !DILocation(line: 191, column: 1, scope: !5453)
!5458 = distinct !DISubprogram(name: "jbd2_journal_init_revoke_record_cache", scope: !3, file: !3, line: 193, type: !1876, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5459 = !DILocation(line: 195, column: 2, scope: !5458)
!5460 = !DILocation(line: 195, column: 2, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 195, column: 2)
!5462 = distinct !DILexicalBlock(scope: !5458, file: !3, line: 195, column: 2)
!5463 = !DILocation(line: 195, column: 2, scope: !5462)
!5464 = !DILocation(line: 195, column: 2, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 195, column: 2)
!5466 = !DILocation(line: 195, column: 2, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 195, column: 2)
!5468 = !DILocation(line: 195, column: 2, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 195, column: 2)
!5470 = !{i64 2155559478, i64 2155559507, i64 2155559553, i64 2155559611, i64 2155559665, i64 2155559719, i64 2155559774, i64 2155559805}
!5471 = !DILocation(line: 196, column: 29, scope: !5458)
!5472 = !DILocation(line: 196, column: 27, scope: !5458)
!5473 = !DILocation(line: 199, column: 7, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5458, file: !3, line: 199, column: 6)
!5475 = !DILocation(line: 199, column: 6, scope: !5458)
!5476 = !DILocation(line: 200, column: 3, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 200, column: 3)
!5478 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 199, column: 33)
!5479 = !DILocation(line: 200, column: 3, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 200, column: 3)
!5481 = !DILocation(line: 201, column: 3, scope: !5478)
!5482 = !DILocation(line: 203, column: 2, scope: !5458)
!5483 = !DILocation(line: 204, column: 1, scope: !5458)
!5484 = !DISubprogram(name: "kmem_cache_create", scope: !5297, file: !5297, line: 189, type: !5485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{!2481, !397, !7, !7, !5361, !1621}
!5487 = !DISubprogram(name: "_printk", scope: !5488, file: !5488, line: 153, type: !5489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5488 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5489 = !DISubroutineType(types: !5490)
!5490 = !{!87, !397, null}
!5491 = distinct !DISubprogram(name: "jbd2_journal_init_revoke_table_cache", scope: !3, file: !3, line: 206, type: !1876, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5492 = !DILocation(line: 208, column: 2, scope: !5491)
!5493 = !DILocation(line: 208, column: 2, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 208, column: 2)
!5495 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 208, column: 2)
!5496 = !DILocation(line: 208, column: 2, scope: !5495)
!5497 = !DILocation(line: 208, column: 2, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 208, column: 2)
!5499 = !DILocation(line: 208, column: 2, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 208, column: 2)
!5501 = !DILocation(line: 208, column: 2, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 208, column: 2)
!5503 = !{i64 2155561538, i64 2155561567, i64 2155561613, i64 2155561671, i64 2155561725, i64 2155561779, i64 2155561834, i64 2155561865}
!5504 = !DILocation(line: 209, column: 28, scope: !5491)
!5505 = !DILocation(line: 209, column: 26, scope: !5491)
!5506 = !DILocation(line: 211, column: 7, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 211, column: 6)
!5508 = !DILocation(line: 211, column: 6, scope: !5491)
!5509 = !DILocation(line: 212, column: 3, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 212, column: 3)
!5511 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 211, column: 32)
!5512 = !DILocation(line: 212, column: 3, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 212, column: 3)
!5514 = !DILocation(line: 213, column: 3, scope: !5511)
!5515 = !DILocation(line: 215, column: 2, scope: !5491)
!5516 = !DILocation(line: 216, column: 1, scope: !5491)
!5517 = distinct !DISubprogram(name: "jbd2_journal_init_revoke", scope: !3, file: !3, line: 263, type: !5518, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5520)
!5518 = !DISubroutineType(types: !5519)
!5519 = !{!87, !161, !87}
!5520 = !{!5521, !5522, !5523, !5524}
!5521 = !DILocalVariable(name: "journal", arg: 1, scope: !5517, file: !3, line: 263, type: !161)
!5522 = !DILocalVariable(name: "hash_size", arg: 2, scope: !5517, file: !3, line: 263, type: !87)
!5523 = !DILabel(scope: !5517, name: "fail1", file: !3, line: 282)
!5524 = !DILabel(scope: !5517, name: "fail0", file: !3, line: 285)
!5525 = !DILocation(line: 263, column: 41, scope: !5517)
!5526 = !DILocation(line: 263, column: 54, scope: !5517)
!5527 = !DILocation(line: 265, column: 2, scope: !5517)
!5528 = !DILocation(line: 265, column: 2, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 265, column: 2)
!5530 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 265, column: 2)
!5531 = !DILocation(line: 265, column: 2, scope: !5530)
!5532 = !DILocation(line: 265, column: 2, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 265, column: 2)
!5534 = !DILocation(line: 265, column: 2, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 265, column: 2)
!5536 = !DILocation(line: 265, column: 2, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 265, column: 2)
!5538 = !{i64 2155564856, i64 2155564885, i64 2155564931, i64 2155564989, i64 2155565043, i64 2155565097, i64 2155565152, i64 2155565183}
!5539 = !DILocation(line: 266, column: 2, scope: !5517)
!5540 = !DILocation(line: 266, column: 2, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 266, column: 2)
!5542 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 266, column: 2)
!5543 = !DILocation(line: 266, column: 2, scope: !5542)
!5544 = !DILocation(line: 266, column: 2, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 266, column: 2)
!5546 = !DILocation(line: 266, column: 2, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 266, column: 2)
!5548 = !DILocation(line: 266, column: 2, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 266, column: 2)
!5550 = !{i64 2155565912, i64 2155565941, i64 2155565987, i64 2155566045, i64 2155566099, i64 2155566153, i64 2155566208, i64 2155566239}
!5551 = !DILocation(line: 268, column: 62, scope: !5517)
!5552 = !DILocation(line: 268, column: 31, scope: !5517)
!5553 = !DILocation(line: 268, column: 2, scope: !5517)
!5554 = !DILocation(line: 268, column: 11, scope: !5517)
!5555 = !DILocation(line: 268, column: 29, scope: !5517)
!5556 = !DILocation(line: 269, column: 7, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 269, column: 6)
!5558 = !DILocation(line: 269, column: 16, scope: !5557)
!5559 = !DILocation(line: 269, column: 6, scope: !5517)
!5560 = !DILocation(line: 270, column: 3, scope: !5557)
!5561 = !DILocation(line: 272, column: 62, scope: !5517)
!5562 = !DILocation(line: 272, column: 31, scope: !5517)
!5563 = !DILocation(line: 272, column: 2, scope: !5517)
!5564 = !DILocation(line: 272, column: 11, scope: !5517)
!5565 = !DILocation(line: 272, column: 29, scope: !5517)
!5566 = !DILocation(line: 273, column: 7, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 273, column: 6)
!5568 = !DILocation(line: 273, column: 16, scope: !5567)
!5569 = !DILocation(line: 273, column: 6, scope: !5517)
!5570 = !DILocation(line: 274, column: 3, scope: !5567)
!5571 = !DILocation(line: 276, column: 22, scope: !5517)
!5572 = !DILocation(line: 276, column: 31, scope: !5517)
!5573 = !DILocation(line: 276, column: 2, scope: !5517)
!5574 = !DILocation(line: 276, column: 11, scope: !5517)
!5575 = !DILocation(line: 276, column: 20, scope: !5517)
!5576 = !DILocation(line: 278, column: 2, scope: !5517)
!5577 = !DILocation(line: 278, column: 2, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 278, column: 2)
!5579 = !DILocation(line: 280, column: 2, scope: !5517)
!5580 = !DILocation(line: 282, column: 1, scope: !5517)
!5581 = !DILocation(line: 283, column: 36, scope: !5517)
!5582 = !DILocation(line: 283, column: 45, scope: !5517)
!5583 = !DILocation(line: 283, column: 2, scope: !5517)
!5584 = !DILocation(line: 284, column: 2, scope: !5517)
!5585 = !DILocation(line: 284, column: 11, scope: !5517)
!5586 = !DILocation(line: 284, column: 29, scope: !5517)
!5587 = !DILocation(line: 285, column: 1, scope: !5517)
!5588 = !DILocation(line: 286, column: 2, scope: !5517)
!5589 = !DILocation(line: 287, column: 1, scope: !5517)
!5590 = distinct !DISubprogram(name: "is_power_of_2", scope: !5591, file: !5591, line: 45, type: !5592, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5594)
!5591 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!5592 = !DISubroutineType(types: !5593)
!5593 = !{!812, !166}
!5594 = !{!5595}
!5595 = !DILocalVariable(name: "n", arg: 1, scope: !5590, file: !5591, line: 45, type: !166)
!5596 = !DILocation(line: 45, column: 34, scope: !5590)
!5597 = !DILocation(line: 47, column: 10, scope: !5590)
!5598 = !DILocation(line: 47, column: 12, scope: !5590)
!5599 = !DILocation(line: 47, column: 17, scope: !5590)
!5600 = !DILocation(line: 47, column: 22, scope: !5590)
!5601 = !DILocation(line: 47, column: 27, scope: !5590)
!5602 = !DILocation(line: 47, column: 29, scope: !5590)
!5603 = !DILocation(line: 47, column: 24, scope: !5590)
!5604 = !DILocation(line: 47, column: 35, scope: !5590)
!5605 = !DILocation(line: 0, scope: !5590)
!5606 = !DILocation(line: 47, column: 2, scope: !5590)
!5607 = distinct !DISubprogram(name: "jbd2_journal_init_revoke_table", scope: !3, file: !3, line: 218, type: !5608, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5610)
!5608 = !DISubroutineType(types: !5609)
!5609 = !{!5064, !87}
!5610 = !{!5611, !5612, !5613, !5614, !5615}
!5611 = !DILocalVariable(name: "hash_size", arg: 1, scope: !5607, file: !3, line: 218, type: !87)
!5612 = !DILocalVariable(name: "shift", scope: !5607, file: !3, line: 220, type: !87)
!5613 = !DILocalVariable(name: "tmp", scope: !5607, file: !3, line: 221, type: !87)
!5614 = !DILocalVariable(name: "table", scope: !5607, file: !3, line: 222, type: !5064)
!5615 = !DILabel(scope: !5616, name: "out", file: !3, line: 244)
!5616 = !DILexicalBlockFile(scope: !5607, file: !3, discriminator: 0)
!5617 = !DILocation(line: 218, column: 71, scope: !5607)
!5618 = !DILocation(line: 220, column: 2, scope: !5607)
!5619 = !DILocation(line: 220, column: 6, scope: !5607)
!5620 = !DILocation(line: 221, column: 2, scope: !5607)
!5621 = !DILocation(line: 221, column: 6, scope: !5607)
!5622 = !DILocation(line: 221, column: 12, scope: !5607)
!5623 = !DILocation(line: 222, column: 2, scope: !5607)
!5624 = !DILocation(line: 222, column: 30, scope: !5607)
!5625 = !DILocation(line: 224, column: 27, scope: !5607)
!5626 = !DILocation(line: 224, column: 10, scope: !5607)
!5627 = !DILocation(line: 224, column: 8, scope: !5607)
!5628 = !DILocation(line: 225, column: 7, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 225, column: 6)
!5630 = !DILocation(line: 225, column: 6, scope: !5616)
!5631 = !DILocation(line: 226, column: 3, scope: !5629)
!5632 = !DILocation(line: 228, column: 2, scope: !5616)
!5633 = !DILocation(line: 228, column: 13, scope: !5616)
!5634 = !DILocation(line: 228, column: 8, scope: !5616)
!5635 = !DILocation(line: 228, column: 22, scope: !5616)
!5636 = !DILocation(line: 229, column: 8, scope: !5616)
!5637 = distinct !{!5637, !5632, !5636, !5638, !5639}
!5638 = !{!"llvm.loop.mustprogress"}
!5639 = !{!"llvm.loop.unroll.disable"}
!5640 = !DILocation(line: 231, column: 21, scope: !5616)
!5641 = !DILocation(line: 231, column: 2, scope: !5616)
!5642 = !DILocation(line: 231, column: 9, scope: !5616)
!5643 = !DILocation(line: 231, column: 19, scope: !5616)
!5644 = !DILocation(line: 232, column: 22, scope: !5616)
!5645 = !DILocation(line: 232, column: 2, scope: !5616)
!5646 = !DILocation(line: 232, column: 9, scope: !5616)
!5647 = !DILocation(line: 232, column: 20, scope: !5616)
!5648 = !DILocation(line: 234, column: 17, scope: !5616)
!5649 = !DILocation(line: 234, column: 3, scope: !5616)
!5650 = !DILocation(line: 233, column: 2, scope: !5616)
!5651 = !DILocation(line: 233, column: 9, scope: !5616)
!5652 = !DILocation(line: 233, column: 20, scope: !5616)
!5653 = !DILocation(line: 235, column: 7, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 235, column: 6)
!5655 = !DILocation(line: 235, column: 14, scope: !5654)
!5656 = !DILocation(line: 235, column: 6, scope: !5616)
!5657 = !DILocation(line: 236, column: 19, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 235, column: 26)
!5659 = !DILocation(line: 236, column: 44, scope: !5658)
!5660 = !DILocation(line: 236, column: 3, scope: !5658)
!5661 = !DILocation(line: 237, column: 9, scope: !5658)
!5662 = !DILocation(line: 238, column: 3, scope: !5658)
!5663 = !DILocation(line: 241, column: 11, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 241, column: 2)
!5665 = !DILocation(line: 241, column: 7, scope: !5664)
!5666 = !DILocation(line: 241, column: 16, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 241, column: 2)
!5668 = !DILocation(line: 241, column: 22, scope: !5667)
!5669 = !DILocation(line: 241, column: 20, scope: !5667)
!5670 = !DILocation(line: 241, column: 2, scope: !5664)
!5671 = !DILocation(line: 242, column: 19, scope: !5667)
!5672 = !DILocation(line: 242, column: 26, scope: !5667)
!5673 = !DILocation(line: 242, column: 37, scope: !5667)
!5674 = !DILocation(line: 242, column: 3, scope: !5667)
!5675 = !DILocation(line: 241, column: 36, scope: !5667)
!5676 = !DILocation(line: 241, column: 2, scope: !5667)
!5677 = distinct !{!5677, !5670, !5678, !5638, !5639}
!5678 = !DILocation(line: 242, column: 41, scope: !5664)
!5679 = !DILocation(line: 244, column: 1, scope: !5616)
!5680 = !DILocation(line: 245, column: 9, scope: !5616)
!5681 = !DILocation(line: 246, column: 1, scope: !5616)
!5682 = !DILocation(line: 245, column: 2, scope: !5616)
!5683 = distinct !DISubprogram(name: "spinlock_check", scope: !5684, file: !5684, line: 324, type: !5685, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5688)
!5684 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5685 = !DISubroutineType(types: !5686)
!5686 = !{!5687, !1447}
!5687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!5688 = !{!5689}
!5689 = !DILocalVariable(name: "lock", arg: 1, scope: !5683, file: !5684, line: 324, type: !1447)
!5690 = !DILocation(line: 324, column: 67, scope: !5683)
!5691 = !DILocation(line: 326, column: 10, scope: !5683)
!5692 = !DILocation(line: 326, column: 16, scope: !5683)
!5693 = !DILocation(line: 326, column: 2, scope: !5683)
!5694 = distinct !DISubprogram(name: "jbd2_journal_destroy_revoke_table", scope: !3, file: !3, line: 248, type: !5695, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5697)
!5695 = !DISubroutineType(types: !5696)
!5696 = !{null, !5064}
!5697 = !{!5698, !5699, !5700}
!5698 = !DILocalVariable(name: "table", arg: 1, scope: !5694, file: !3, line: 248, type: !5064)
!5699 = !DILocalVariable(name: "i", scope: !5694, file: !3, line: 250, type: !87)
!5700 = !DILocalVariable(name: "hash_list", scope: !5694, file: !3, line: 251, type: !229)
!5701 = !DILocation(line: 248, column: 75, scope: !5694)
!5702 = !DILocation(line: 250, column: 2, scope: !5694)
!5703 = !DILocation(line: 250, column: 6, scope: !5694)
!5704 = !DILocation(line: 251, column: 2, scope: !5694)
!5705 = !DILocation(line: 251, column: 20, scope: !5694)
!5706 = !DILocation(line: 253, column: 9, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 253, column: 2)
!5708 = !DILocation(line: 253, column: 7, scope: !5707)
!5709 = !DILocation(line: 253, column: 14, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 253, column: 2)
!5711 = !DILocation(line: 253, column: 18, scope: !5710)
!5712 = !DILocation(line: 253, column: 25, scope: !5710)
!5713 = !DILocation(line: 253, column: 16, scope: !5710)
!5714 = !DILocation(line: 253, column: 2, scope: !5707)
!5715 = !DILocation(line: 254, column: 16, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 253, column: 41)
!5717 = !DILocation(line: 254, column: 23, scope: !5716)
!5718 = !DILocation(line: 254, column: 34, scope: !5716)
!5719 = !DILocation(line: 254, column: 13, scope: !5716)
!5720 = !DILocation(line: 255, column: 3, scope: !5716)
!5721 = !DILocation(line: 255, column: 3, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 255, column: 3)
!5723 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 255, column: 3)
!5724 = !DILocation(line: 255, column: 3, scope: !5723)
!5725 = !DILocation(line: 255, column: 3, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5722, file: !3, line: 255, column: 3)
!5727 = !DILocation(line: 255, column: 3, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 255, column: 3)
!5729 = !DILocation(line: 255, column: 3, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 255, column: 3)
!5731 = !{i64 2155563737, i64 2155563766, i64 2155563812, i64 2155563870, i64 2155563924, i64 2155563978, i64 2155564033, i64 2155564064}
!5732 = !DILocation(line: 256, column: 2, scope: !5716)
!5733 = !DILocation(line: 253, column: 37, scope: !5710)
!5734 = !DILocation(line: 253, column: 2, scope: !5710)
!5735 = distinct !{!5735, !5714, !5736, !5638, !5639}
!5736 = !DILocation(line: 256, column: 2, scope: !5707)
!5737 = !DILocation(line: 258, column: 8, scope: !5694)
!5738 = !DILocation(line: 258, column: 15, scope: !5694)
!5739 = !DILocation(line: 258, column: 2, scope: !5694)
!5740 = !DILocation(line: 259, column: 18, scope: !5694)
!5741 = !DILocation(line: 259, column: 43, scope: !5694)
!5742 = !DILocation(line: 259, column: 2, scope: !5694)
!5743 = !DILocation(line: 260, column: 1, scope: !5694)
!5744 = distinct !DISubprogram(name: "jbd2_journal_destroy_revoke", scope: !3, file: !3, line: 290, type: !5745, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5747)
!5745 = !DISubroutineType(types: !5746)
!5746 = !{null, !161}
!5747 = !{!5748}
!5748 = !DILocalVariable(name: "journal", arg: 1, scope: !5744, file: !3, line: 290, type: !161)
!5749 = !DILocation(line: 290, column: 45, scope: !5744)
!5750 = !DILocation(line: 292, column: 2, scope: !5744)
!5751 = !DILocation(line: 292, column: 11, scope: !5744)
!5752 = !DILocation(line: 292, column: 20, scope: !5744)
!5753 = !DILocation(line: 293, column: 6, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 293, column: 6)
!5755 = !DILocation(line: 293, column: 15, scope: !5754)
!5756 = !DILocation(line: 293, column: 6, scope: !5744)
!5757 = !DILocation(line: 294, column: 37, scope: !5754)
!5758 = !DILocation(line: 294, column: 46, scope: !5754)
!5759 = !DILocation(line: 294, column: 3, scope: !5754)
!5760 = !DILocation(line: 295, column: 6, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 295, column: 6)
!5762 = !DILocation(line: 295, column: 15, scope: !5761)
!5763 = !DILocation(line: 295, column: 6, scope: !5744)
!5764 = !DILocation(line: 296, column: 37, scope: !5761)
!5765 = !DILocation(line: 296, column: 46, scope: !5761)
!5766 = !DILocation(line: 296, column: 3, scope: !5761)
!5767 = !DILocation(line: 297, column: 1, scope: !5744)
!5768 = distinct !DISubprogram(name: "jbd2_journal_revoke", scope: !3, file: !3, line: 326, type: !5769, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5795)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!87, !5771, !346, !232}
!5771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5772, size: 64)
!5772 = !DIDerivedType(tag: DW_TAG_typedef, name: "handle_t", file: !157, line: 91, baseType: !5773)
!5773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jbd2_journal_handle", file: !157, line: 477, size: 448, elements: !5774)
!5774 = !{!5775, !5780, !5781, !5782, !5783, !5784, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5792, !5793, !5794}
!5775 = !DIDerivedType(tag: DW_TAG_member, scope: !5773, file: !157, line: 479, baseType: !5776, size: 64)
!5776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5773, file: !157, line: 479, size: 64, elements: !5777)
!5777 = !{!5778, !5779}
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "h_transaction", scope: !5776, file: !157, line: 480, baseType: !5016, size: 64)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "h_journal", scope: !5776, file: !157, line: 482, baseType: !161, size: 64)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "h_rsv_handle", scope: !5773, file: !157, line: 485, baseType: !5771, size: 64, offset: 64)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "h_total_credits", scope: !5773, file: !157, line: 486, baseType: !87, size: 32, offset: 128)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "h_revoke_credits", scope: !5773, file: !157, line: 487, baseType: !87, size: 32, offset: 160)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "h_revoke_credits_requested", scope: !5773, file: !157, line: 488, baseType: !87, size: 32, offset: 192)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "h_ref", scope: !5773, file: !157, line: 489, baseType: !87, size: 32, offset: 224)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "h_err", scope: !5773, file: !157, line: 490, baseType: !87, size: 32, offset: 256)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "h_sync", scope: !5773, file: !157, line: 493, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "h_jdata", scope: !5773, file: !157, line: 494, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "h_reserved", scope: !5773, file: !157, line: 495, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "h_aborted", scope: !5773, file: !157, line: 496, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "h_type", scope: !5773, file: !157, line: 497, baseType: !7, size: 8, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "h_line_no", scope: !5773, file: !157, line: 498, baseType: !7, size: 16, offset: 300, flags: DIFlagBitField, extraData: i64 288)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "h_start_jiffies", scope: !5773, file: !157, line: 500, baseType: !166, size: 64, offset: 320)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "h_requested_credits", scope: !5773, file: !157, line: 501, baseType: !7, size: 32, offset: 384)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "saved_alloc_context", scope: !5773, file: !157, line: 503, baseType: !7, size: 32, offset: 416)
!5795 = !{!5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5806, !5809}
!5796 = !DILocalVariable(name: "handle", arg: 1, scope: !5768, file: !3, line: 326, type: !5771)
!5797 = !DILocalVariable(name: "blocknr", arg: 2, scope: !5768, file: !3, line: 326, type: !346)
!5798 = !DILocalVariable(name: "bh_in", arg: 3, scope: !5768, file: !3, line: 327, type: !232)
!5799 = !DILocalVariable(name: "bh", scope: !5768, file: !3, line: 329, type: !232)
!5800 = !DILocalVariable(name: "journal", scope: !5768, file: !3, line: 330, type: !161)
!5801 = !DILocalVariable(name: "bdev", scope: !5768, file: !3, line: 331, type: !2406)
!5802 = !DILocalVariable(name: "err", scope: !5768, file: !3, line: 332, type: !87)
!5803 = !DILocalVariable(name: "__ret_warn_on", scope: !5804, file: !3, line: 374, type: !87)
!5804 = distinct !DILexicalBlock(scope: !5805, file: !3, line: 374, column: 6)
!5805 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 374, column: 6)
!5806 = !DILocalVariable(name: "__flags", scope: !5807, file: !3, line: 374, type: !87)
!5807 = distinct !DILexicalBlock(scope: !5808, file: !3, line: 374, column: 6)
!5808 = distinct !DILexicalBlock(scope: !5804, file: !3, line: 374, column: 6)
!5809 = !DILocalVariable(name: "val", scope: !5810, file: !3, line: 383, type: !87)
!5810 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 383, column: 8)
!5811 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 383, column: 7)
!5812 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 382, column: 10)
!5813 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 382, column: 6)
!5814 = !DILocation(line: 326, column: 35, scope: !5768)
!5815 = !DILocation(line: 326, column: 62, scope: !5768)
!5816 = !DILocation(line: 327, column: 26, scope: !5768)
!5817 = !DILocation(line: 329, column: 2, scope: !5768)
!5818 = !DILocation(line: 329, column: 22, scope: !5768)
!5819 = !DILocation(line: 330, column: 2, scope: !5768)
!5820 = !DILocation(line: 330, column: 13, scope: !5768)
!5821 = !DILocation(line: 331, column: 2, scope: !5768)
!5822 = !DILocation(line: 331, column: 23, scope: !5768)
!5823 = !DILocation(line: 332, column: 2, scope: !5768)
!5824 = !DILocation(line: 332, column: 6, scope: !5768)
!5825 = !DILocation(line: 334, column: 2, scope: !5768)
!5826 = !DILocation(line: 334, column: 2, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 334, column: 2)
!5828 = !DILocation(line: 335, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 335, column: 6)
!5830 = !DILocation(line: 335, column: 6, scope: !5768)
!5831 = !DILocation(line: 336, column: 3, scope: !5829)
!5832 = !DILocation(line: 336, column: 3, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5829, file: !3, line: 336, column: 3)
!5834 = !DILocation(line: 338, column: 12, scope: !5768)
!5835 = !DILocation(line: 338, column: 20, scope: !5768)
!5836 = !DILocation(line: 338, column: 35, scope: !5768)
!5837 = !DILocation(line: 338, column: 10, scope: !5768)
!5838 = !DILocation(line: 339, column: 33, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 339, column: 6)
!5840 = !DILocation(line: 339, column: 7, scope: !5839)
!5841 = !DILocation(line: 339, column: 6, scope: !5768)
!5842 = !DILocation(line: 340, column: 3, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 339, column: 78)
!5844 = !DILocation(line: 340, column: 3, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 340, column: 3)
!5846 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 340, column: 3)
!5847 = !DILocation(line: 340, column: 3, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 340, column: 3)
!5849 = !DILocation(line: 340, column: 3, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 340, column: 3)
!5851 = !DILocation(line: 340, column: 3, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 340, column: 3)
!5853 = !{i64 2155567598, i64 2155567627, i64 2155567673, i64 2155567731, i64 2155567785, i64 2155567839, i64 2155567894, i64 2155567925}
!5854 = !DILocation(line: 340, column: 3, scope: !5846)
!5855 = !DILocation(line: 341, column: 3, scope: !5843)
!5856 = !DILocation(line: 344, column: 9, scope: !5768)
!5857 = !DILocation(line: 344, column: 18, scope: !5768)
!5858 = !DILocation(line: 344, column: 7, scope: !5768)
!5859 = !DILocation(line: 345, column: 7, scope: !5768)
!5860 = !DILocation(line: 345, column: 5, scope: !5768)
!5861 = !DILocation(line: 347, column: 7, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 347, column: 6)
!5863 = !DILocation(line: 347, column: 6, scope: !5768)
!5864 = !DILocation(line: 348, column: 25, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 347, column: 11)
!5866 = !DILocation(line: 348, column: 31, scope: !5865)
!5867 = !DILocation(line: 348, column: 40, scope: !5865)
!5868 = !DILocation(line: 348, column: 49, scope: !5865)
!5869 = !DILocation(line: 348, column: 8, scope: !5865)
!5870 = !DILocation(line: 348, column: 6, scope: !5865)
!5871 = !DILocation(line: 349, column: 7, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 349, column: 7)
!5873 = !DILocation(line: 349, column: 7, scope: !5865)
!5874 = !DILocation(line: 350, column: 4, scope: !5872)
!5875 = !DILocation(line: 350, column: 4, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5872, file: !3, line: 350, column: 4)
!5877 = !DILocation(line: 351, column: 2, scope: !5865)
!5878 = !DILocation(line: 374, column: 6, scope: !5804)
!5879 = !DILocation(line: 374, column: 6, scope: !5808)
!5880 = !DILocation(line: 374, column: 6, scope: !5807)
!5881 = !DILocation(line: 374, column: 6, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 374, column: 6)
!5883 = !DILocation(line: 374, column: 6, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 374, column: 6)
!5885 = !{i64 2155568880, i64 2155568909, i64 2155568955, i64 2155569013, i64 2155569067, i64 2155569121, i64 2155569176, i64 2155569207, i64 2155569515, i64 2155569521, i64 2155569568, i64 2155569591, i64 2155569617}
!5886 = !DILocation(line: 374, column: 6, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 374, column: 6)
!5888 = !DILocation(line: 374, column: 6, scope: !5805)
!5889 = !DILocation(line: 374, column: 6, scope: !5768)
!5890 = !DILocation(line: 375, column: 8, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 375, column: 7)
!5892 = distinct !DILexicalBlock(scope: !5805, file: !3, line: 374, column: 51)
!5893 = !DILocation(line: 375, column: 7, scope: !5892)
!5894 = !DILocation(line: 376, column: 11, scope: !5891)
!5895 = !DILocation(line: 376, column: 4, scope: !5891)
!5896 = !DILocation(line: 377, column: 3, scope: !5892)
!5897 = !DILocation(line: 382, column: 6, scope: !5813)
!5898 = !DILocation(line: 382, column: 6, scope: !5768)
!5899 = !DILocation(line: 383, column: 8, scope: !5810)
!5900 = !DILocation(line: 383, column: 8, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 383, column: 8)
!5902 = !DILocation(line: 383, column: 8, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 383, column: 8)
!5904 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 383, column: 8)
!5905 = !DILocation(line: 383, column: 8, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5903, file: !3, line: 383, column: 8)
!5907 = !DILocation(line: 383, column: 8, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 383, column: 8)
!5909 = !DILocation(line: 383, column: 8, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 383, column: 8)
!5911 = !DILocation(line: 383, column: 8, scope: !5904)
!5912 = !DILocation(line: 383, column: 8, scope: !5811)
!5913 = !DILocation(line: 383, column: 7, scope: !5812)
!5914 = !DILocation(line: 385, column: 9, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 385, column: 8)
!5916 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 384, column: 36)
!5917 = !DILocation(line: 385, column: 8, scope: !5916)
!5918 = !DILocation(line: 386, column: 12, scope: !5915)
!5919 = !DILocation(line: 386, column: 5, scope: !5915)
!5920 = !DILocation(line: 387, column: 4, scope: !5916)
!5921 = !DILocation(line: 389, column: 22, scope: !5812)
!5922 = !DILocation(line: 389, column: 3, scope: !5812)
!5923 = !DILocation(line: 390, column: 26, scope: !5812)
!5924 = !DILocation(line: 390, column: 3, scope: !5812)
!5925 = !DILocation(line: 391, column: 7, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 391, column: 7)
!5927 = !DILocation(line: 391, column: 7, scope: !5812)
!5928 = !DILocation(line: 392, column: 4, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 391, column: 14)
!5930 = !DILocation(line: 392, column: 4, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 392, column: 4)
!5932 = !DILocation(line: 393, column: 24, scope: !5929)
!5933 = !DILocation(line: 393, column: 32, scope: !5929)
!5934 = !DILocation(line: 393, column: 4, scope: !5929)
!5935 = !DILocation(line: 394, column: 3, scope: !5929)
!5936 = !DILocation(line: 395, column: 4, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 394, column: 10)
!5938 = !DILocation(line: 395, column: 4, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5937, file: !3, line: 395, column: 4)
!5940 = !DILocation(line: 396, column: 13, scope: !5937)
!5941 = !DILocation(line: 396, column: 4, scope: !5937)
!5942 = !DILocation(line: 398, column: 2, scope: !5812)
!5943 = !DILocation(line: 399, column: 2, scope: !5768)
!5944 = !DILocation(line: 399, column: 10, scope: !5768)
!5945 = !DILocation(line: 399, column: 26, scope: !5768)
!5946 = !DILocation(line: 401, column: 2, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5948, file: !3, line: 401, column: 2)
!5948 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 401, column: 2)
!5949 = !DILocation(line: 401, column: 2, scope: !5948)
!5950 = !DILocation(line: 402, column: 27, scope: !5768)
!5951 = !DILocation(line: 402, column: 36, scope: !5768)
!5952 = !DILocation(line: 403, column: 5, scope: !5768)
!5953 = !DILocation(line: 403, column: 13, scope: !5768)
!5954 = !DILocation(line: 403, column: 28, scope: !5768)
!5955 = !DILocation(line: 402, column: 8, scope: !5768)
!5956 = !DILocation(line: 402, column: 6, scope: !5768)
!5957 = !DILocation(line: 404, column: 2, scope: !5768)
!5958 = !DILocation(line: 404, column: 2, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 404, column: 2)
!5960 = !DILocation(line: 405, column: 9, scope: !5768)
!5961 = !DILocation(line: 405, column: 2, scope: !5768)
!5962 = !DILocation(line: 406, column: 1, scope: !5768)
!5963 = !DILocation(line: 112, column: 2, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5432, file: !5433, line: 112, column: 2)
!5965 = !DILocation(line: 112, column: 2, scope: !5432)
!5966 = !DILocation(line: 113, column: 1, scope: !5432)
!5967 = !DISubprogram(name: "jbd2_journal_set_features", scope: !157, file: !157, line: 1556, type: !5968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5968 = !DISubroutineType(types: !5969)
!5969 = !{!87, !161, !166, !166, !166}
!5970 = !DISubprogram(name: "__find_get_block", scope: !234, file: !234, line: 228, type: !5971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{!232, !2406, !2411, !7}
!5973 = distinct !DISubprogram(name: "brelse", scope: !234, file: !234, line: 311, type: !5974, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5976)
!5974 = !DISubroutineType(types: !5975)
!5975 = !{null, !232}
!5976 = !{!5977}
!5977 = !DILocalVariable(name: "bh", arg: 1, scope: !5973, file: !234, line: 311, type: !232)
!5978 = !DILocation(line: 311, column: 47, scope: !5973)
!5979 = !DILocation(line: 313, column: 6, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5973, file: !234, line: 313, column: 6)
!5981 = !DILocation(line: 313, column: 6, scope: !5973)
!5982 = !DILocation(line: 314, column: 12, scope: !5980)
!5983 = !DILocation(line: 314, column: 3, scope: !5980)
!5984 = !DILocation(line: 315, column: 1, scope: !5973)
!5985 = distinct !DISubprogram(name: "buffer_revoked", scope: !157, file: !157, line: 323, type: !5986, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5990)
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!87, !5988}
!5988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5989, size: 64)
!5989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!5990 = !{!5991}
!5991 = !DILocalVariable(name: "bh", arg: 1, scope: !5985, file: !157, line: 323, type: !5988)
!5992 = !DILocation(line: 323, column: 1, scope: !5985)
!5993 = distinct !DISubprogram(name: "set_buffer_revoked", scope: !157, file: !157, line: 323, type: !5974, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5994)
!5994 = !{!5995}
!5995 = !DILocalVariable(name: "bh", arg: 1, scope: !5993, file: !157, line: 323, type: !232)
!5996 = !DILocation(line: 323, column: 1, scope: !5993)
!5997 = !DILocation(line: 323, column: 1, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5993, file: !157, line: 323, column: 1)
!5999 = distinct !DISubprogram(name: "set_buffer_revokevalid", scope: !157, file: !157, line: 325, type: !5974, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6000)
!6000 = !{!6001}
!6001 = !DILocalVariable(name: "bh", arg: 1, scope: !5999, file: !157, line: 325, type: !232)
!6002 = !DILocation(line: 325, column: 1, scope: !5999)
!6003 = !DILocation(line: 325, column: 1, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5999, file: !157, line: 325, column: 1)
!6005 = !DISubprogram(name: "jbd2_journal_forget", scope: !157, file: !157, line: 1536, type: !6006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6006 = !DISubroutineType(types: !6007)
!6007 = !{!87, !5771, !232}
!6008 = !DISubprogram(name: "__brelse", scope: !234, file: !234, line: 232, type: !5974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6009 = distinct !DISubprogram(name: "insert_revoke_hash", scope: !3, file: !3, line: 136, type: !6010, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6012)
!6010 = !DISubroutineType(types: !6011)
!6011 = !{!87, !161, !346, !5051}
!6012 = !{!6013, !6014, !6015, !6016, !6017, !6018}
!6013 = !DILocalVariable(name: "journal", arg: 1, scope: !6009, file: !3, line: 136, type: !161)
!6014 = !DILocalVariable(name: "blocknr", arg: 2, scope: !6009, file: !3, line: 136, type: !346)
!6015 = !DILocalVariable(name: "seq", arg: 3, scope: !6009, file: !3, line: 137, type: !5051)
!6016 = !DILocalVariable(name: "hash_list", scope: !6009, file: !3, line: 139, type: !229)
!6017 = !DILocalVariable(name: "record", scope: !6009, file: !3, line: 140, type: !5362)
!6018 = !DILocalVariable(name: "gfp_mask", scope: !6009, file: !3, line: 141, type: !1113)
!6019 = !DILocation(line: 136, column: 42, scope: !6009)
!6020 = !DILocation(line: 136, column: 70, scope: !6009)
!6021 = !DILocation(line: 137, column: 16, scope: !6009)
!6022 = !DILocation(line: 139, column: 2, scope: !6009)
!6023 = !DILocation(line: 139, column: 20, scope: !6009)
!6024 = !DILocation(line: 140, column: 2, scope: !6009)
!6025 = !DILocation(line: 140, column: 31, scope: !6009)
!6026 = !DILocation(line: 141, column: 2, scope: !6009)
!6027 = !DILocation(line: 141, column: 8, scope: !6009)
!6028 = !DILocation(line: 144, column: 12, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 143, column: 6)
!6030 = !DILocation(line: 145, column: 28, scope: !6009)
!6031 = !DILocation(line: 145, column: 54, scope: !6009)
!6032 = !DILocation(line: 145, column: 11, scope: !6009)
!6033 = !DILocation(line: 145, column: 9, scope: !6009)
!6034 = !DILocation(line: 146, column: 7, scope: !6035)
!6035 = distinct !DILexicalBlock(scope: !6036, file: !3, line: 146, column: 6)
!6036 = !DILexicalBlockFile(scope: !6009, file: !3, discriminator: 0)
!6037 = !DILocation(line: 146, column: 6, scope: !6036)
!6038 = !DILocation(line: 147, column: 3, scope: !6035)
!6039 = !DILocation(line: 149, column: 21, scope: !6036)
!6040 = !DILocation(line: 149, column: 2, scope: !6036)
!6041 = !DILocation(line: 149, column: 10, scope: !6036)
!6042 = !DILocation(line: 149, column: 19, scope: !6036)
!6043 = !DILocation(line: 150, column: 20, scope: !6036)
!6044 = !DILocation(line: 150, column: 2, scope: !6036)
!6045 = !DILocation(line: 150, column: 10, scope: !6036)
!6046 = !DILocation(line: 150, column: 18, scope: !6036)
!6047 = !DILocation(line: 151, column: 15, scope: !6036)
!6048 = !DILocation(line: 151, column: 24, scope: !6036)
!6049 = !DILocation(line: 151, column: 34, scope: !6036)
!6050 = !DILocation(line: 151, column: 50, scope: !6036)
!6051 = !DILocation(line: 151, column: 59, scope: !6036)
!6052 = !DILocation(line: 151, column: 45, scope: !6036)
!6053 = !DILocation(line: 151, column: 12, scope: !6036)
!6054 = !DILocation(line: 152, column: 13, scope: !6036)
!6055 = !DILocation(line: 152, column: 22, scope: !6036)
!6056 = !DILocation(line: 152, column: 2, scope: !6036)
!6057 = !DILocation(line: 153, column: 12, scope: !6036)
!6058 = !DILocation(line: 153, column: 20, scope: !6036)
!6059 = !DILocation(line: 153, column: 26, scope: !6036)
!6060 = !DILocation(line: 153, column: 2, scope: !6036)
!6061 = !DILocation(line: 154, column: 15, scope: !6036)
!6062 = !DILocation(line: 154, column: 24, scope: !6036)
!6063 = !DILocation(line: 154, column: 2, scope: !6036)
!6064 = !DILocation(line: 155, column: 2, scope: !6036)
!6065 = !DILocation(line: 156, column: 1, scope: !6036)
!6066 = distinct !DISubprogram(name: "jbd2_journal_cancel_revoke", scope: !3, file: !3, line: 423, type: !6067, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6069)
!6067 = !DISubroutineType(types: !6068)
!6068 = !{!87, !5771, !5225}
!6069 = !{!6070, !6071, !6072, !6073, !6074, !6075, !6076, !6077}
!6070 = !DILocalVariable(name: "handle", arg: 1, scope: !6066, file: !3, line: 423, type: !5771)
!6071 = !DILocalVariable(name: "jh", arg: 2, scope: !6066, file: !3, line: 423, type: !5225)
!6072 = !DILocalVariable(name: "record", scope: !6066, file: !3, line: 425, type: !5362)
!6073 = !DILocalVariable(name: "journal", scope: !6066, file: !3, line: 426, type: !161)
!6074 = !DILocalVariable(name: "need_cancel", scope: !6066, file: !3, line: 427, type: !87)
!6075 = !DILocalVariable(name: "did_revoke", scope: !6066, file: !3, line: 428, type: !87)
!6076 = !DILocalVariable(name: "bh", scope: !6066, file: !3, line: 429, type: !232)
!6077 = !DILocalVariable(name: "bh2", scope: !6078, file: !3, line: 468, type: !232)
!6078 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 467, column: 19)
!6079 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 467, column: 6)
!6080 = !DILocation(line: 423, column: 42, scope: !6066)
!6081 = !DILocation(line: 423, column: 71, scope: !6066)
!6082 = !DILocation(line: 425, column: 2, scope: !6066)
!6083 = !DILocation(line: 425, column: 31, scope: !6066)
!6084 = !DILocation(line: 426, column: 2, scope: !6066)
!6085 = !DILocation(line: 426, column: 13, scope: !6066)
!6086 = !DILocation(line: 426, column: 23, scope: !6066)
!6087 = !DILocation(line: 426, column: 31, scope: !6066)
!6088 = !DILocation(line: 426, column: 46, scope: !6066)
!6089 = !DILocation(line: 427, column: 2, scope: !6066)
!6090 = !DILocation(line: 427, column: 6, scope: !6066)
!6091 = !DILocation(line: 428, column: 2, scope: !6066)
!6092 = !DILocation(line: 428, column: 6, scope: !6066)
!6093 = !DILocation(line: 429, column: 2, scope: !6066)
!6094 = !DILocation(line: 429, column: 22, scope: !6066)
!6095 = !DILocation(line: 429, column: 33, scope: !6066)
!6096 = !DILocation(line: 429, column: 27, scope: !6066)
!6097 = !DILocation(line: 431, column: 2, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6099, file: !3, line: 431, column: 2)
!6099 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 431, column: 2)
!6100 = !DILocation(line: 431, column: 2, scope: !6099)
!6101 = !DILocation(line: 437, column: 34, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 437, column: 6)
!6103 = !DILocation(line: 437, column: 6, scope: !6102)
!6104 = !DILocation(line: 437, column: 6, scope: !6066)
!6105 = !DILocation(line: 438, column: 43, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 437, column: 39)
!6107 = !DILocation(line: 438, column: 17, scope: !6106)
!6108 = !DILocation(line: 438, column: 15, scope: !6106)
!6109 = !DILocation(line: 439, column: 2, scope: !6106)
!6110 = !DILocation(line: 440, column: 15, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 439, column: 9)
!6112 = !DILocation(line: 441, column: 24, scope: !6111)
!6113 = !DILocation(line: 441, column: 3, scope: !6111)
!6114 = !DILocation(line: 444, column: 6, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 444, column: 6)
!6116 = !DILocation(line: 444, column: 6, scope: !6066)
!6117 = !DILocation(line: 445, column: 31, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6115, file: !3, line: 444, column: 19)
!6119 = !DILocation(line: 445, column: 40, scope: !6118)
!6120 = !DILocation(line: 445, column: 44, scope: !6118)
!6121 = !DILocation(line: 445, column: 12, scope: !6118)
!6122 = !DILocation(line: 445, column: 10, scope: !6118)
!6123 = !DILocation(line: 446, column: 7, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 446, column: 7)
!6125 = !DILocation(line: 446, column: 7, scope: !6118)
!6126 = !DILocation(line: 447, column: 4, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6128, file: !3, line: 447, column: 4)
!6128 = distinct !DILexicalBlock(scope: !6129, file: !3, line: 447, column: 4)
!6129 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 446, column: 15)
!6130 = !DILocation(line: 447, column: 4, scope: !6128)
!6131 = !DILocation(line: 449, column: 15, scope: !6129)
!6132 = !DILocation(line: 449, column: 24, scope: !6129)
!6133 = !DILocation(line: 449, column: 4, scope: !6129)
!6134 = !DILocation(line: 450, column: 14, scope: !6129)
!6135 = !DILocation(line: 450, column: 22, scope: !6129)
!6136 = !DILocation(line: 450, column: 4, scope: !6129)
!6137 = !DILocation(line: 451, column: 17, scope: !6129)
!6138 = !DILocation(line: 451, column: 26, scope: !6129)
!6139 = !DILocation(line: 451, column: 4, scope: !6129)
!6140 = !DILocation(line: 452, column: 20, scope: !6129)
!6141 = !DILocation(line: 452, column: 46, scope: !6129)
!6142 = !DILocation(line: 452, column: 4, scope: !6129)
!6143 = !DILocation(line: 453, column: 15, scope: !6129)
!6144 = !DILocation(line: 454, column: 3, scope: !6129)
!6145 = !DILocation(line: 455, column: 2, scope: !6118)
!6146 = !DILocation(line: 467, column: 6, scope: !6079)
!6147 = !DILocation(line: 467, column: 6, scope: !6066)
!6148 = !DILocation(line: 468, column: 3, scope: !6078)
!6149 = !DILocation(line: 468, column: 23, scope: !6078)
!6150 = !DILocation(line: 469, column: 26, scope: !6078)
!6151 = !DILocation(line: 469, column: 30, scope: !6078)
!6152 = !DILocation(line: 469, column: 38, scope: !6078)
!6153 = !DILocation(line: 469, column: 42, scope: !6078)
!6154 = !DILocation(line: 469, column: 53, scope: !6078)
!6155 = !DILocation(line: 469, column: 57, scope: !6078)
!6156 = !DILocation(line: 469, column: 9, scope: !6078)
!6157 = !DILocation(line: 469, column: 7, scope: !6078)
!6158 = !DILocation(line: 470, column: 7, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6078, file: !3, line: 470, column: 7)
!6160 = !DILocation(line: 470, column: 7, scope: !6078)
!6161 = !DILocation(line: 471, column: 8, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6163, file: !3, line: 471, column: 8)
!6163 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 470, column: 12)
!6164 = !DILocation(line: 471, column: 15, scope: !6162)
!6165 = !DILocation(line: 471, column: 12, scope: !6162)
!6166 = !DILocation(line: 471, column: 8, scope: !6163)
!6167 = !DILocation(line: 472, column: 26, scope: !6162)
!6168 = !DILocation(line: 472, column: 5, scope: !6162)
!6169 = !DILocation(line: 473, column: 13, scope: !6163)
!6170 = !DILocation(line: 473, column: 4, scope: !6163)
!6171 = !DILocation(line: 474, column: 3, scope: !6163)
!6172 = !DILocation(line: 475, column: 2, scope: !6079)
!6173 = !DILocation(line: 475, column: 2, scope: !6078)
!6174 = !DILocation(line: 476, column: 9, scope: !6066)
!6175 = !DILocation(line: 477, column: 1, scope: !6066)
!6176 = !DILocation(line: 476, column: 2, scope: !6066)
!6177 = distinct !DISubprogram(name: "jh2bh", scope: !157, file: !157, line: 331, type: !6178, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6180)
!6178 = !DISubroutineType(types: !6179)
!6179 = !{!232, !5225}
!6180 = !{!6181}
!6181 = !DILocalVariable(name: "jh", arg: 1, scope: !6177, file: !157, line: 331, type: !5225)
!6182 = !DILocation(line: 331, column: 62, scope: !6177)
!6183 = !DILocation(line: 333, column: 9, scope: !6177)
!6184 = !DILocation(line: 333, column: 13, scope: !6177)
!6185 = !DILocation(line: 333, column: 2, scope: !6177)
!6186 = distinct !DISubprogram(name: "test_set_buffer_revokevalid", scope: !157, file: !157, line: 326, type: !6187, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6189)
!6187 = !DISubroutineType(types: !6188)
!6188 = !{!87, !232}
!6189 = !{!6190}
!6190 = !DILocalVariable(name: "bh", arg: 1, scope: !6186, file: !157, line: 326, type: !232)
!6191 = !DILocation(line: 326, column: 1, scope: !6186)
!6192 = distinct !DISubprogram(name: "test_clear_buffer_revoked", scope: !157, file: !157, line: 324, type: !6187, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6193)
!6193 = !{!6194}
!6194 = !DILocalVariable(name: "bh", arg: 1, scope: !6192, file: !157, line: 324, type: !232)
!6195 = !DILocation(line: 324, column: 1, scope: !6192)
!6196 = distinct !DISubprogram(name: "clear_buffer_revoked", scope: !157, file: !157, line: 323, type: !5974, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6197)
!6197 = !{!6198}
!6198 = !DILocalVariable(name: "bh", arg: 1, scope: !6196, file: !157, line: 323, type: !232)
!6199 = !DILocation(line: 323, column: 1, scope: !6196)
!6200 = distinct !DISubprogram(name: "find_revoke_record", scope: !3, file: !3, line: 160, type: !6201, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6203)
!6201 = !DISubroutineType(types: !6202)
!6202 = !{!5362, !161, !346}
!6203 = !{!6204, !6205, !6206, !6207}
!6204 = !DILocalVariable(name: "journal", arg: 1, scope: !6200, file: !3, line: 160, type: !161)
!6205 = !DILocalVariable(name: "blocknr", arg: 2, scope: !6200, file: !3, line: 161, type: !346)
!6206 = !DILocalVariable(name: "hash_list", scope: !6200, file: !3, line: 163, type: !229)
!6207 = !DILocalVariable(name: "record", scope: !6200, file: !3, line: 164, type: !5362)
!6208 = !DILocation(line: 160, column: 67, scope: !6200)
!6209 = !DILocation(line: 161, column: 32, scope: !6200)
!6210 = !DILocation(line: 163, column: 2, scope: !6200)
!6211 = !DILocation(line: 163, column: 20, scope: !6200)
!6212 = !DILocation(line: 164, column: 2, scope: !6200)
!6213 = !DILocation(line: 164, column: 31, scope: !6200)
!6214 = !DILocation(line: 166, column: 15, scope: !6200)
!6215 = !DILocation(line: 166, column: 24, scope: !6200)
!6216 = !DILocation(line: 166, column: 34, scope: !6200)
!6217 = !DILocation(line: 166, column: 50, scope: !6200)
!6218 = !DILocation(line: 166, column: 59, scope: !6200)
!6219 = !DILocation(line: 166, column: 45, scope: !6200)
!6220 = !DILocation(line: 166, column: 12, scope: !6200)
!6221 = !DILocation(line: 168, column: 13, scope: !6200)
!6222 = !DILocation(line: 168, column: 22, scope: !6200)
!6223 = !DILocation(line: 168, column: 2, scope: !6200)
!6224 = !DILocation(line: 169, column: 43, scope: !6200)
!6225 = !DILocation(line: 169, column: 54, scope: !6200)
!6226 = !DILocation(line: 169, column: 9, scope: !6200)
!6227 = !DILocation(line: 170, column: 2, scope: !6200)
!6228 = !DILocation(line: 170, column: 11, scope: !6200)
!6229 = !DILocation(line: 170, column: 19, scope: !6200)
!6230 = !DILocation(line: 170, column: 28, scope: !6200)
!6231 = !DILocation(line: 170, column: 25, scope: !6200)
!6232 = !DILocation(line: 171, column: 7, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 171, column: 7)
!6234 = distinct !DILexicalBlock(scope: !6200, file: !3, line: 170, column: 39)
!6235 = !DILocation(line: 171, column: 15, scope: !6233)
!6236 = !DILocation(line: 171, column: 26, scope: !6233)
!6237 = !DILocation(line: 171, column: 23, scope: !6233)
!6238 = !DILocation(line: 171, column: 7, scope: !6234)
!6239 = !DILocation(line: 172, column: 17, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 171, column: 35)
!6241 = !DILocation(line: 172, column: 26, scope: !6240)
!6242 = !DILocation(line: 172, column: 4, scope: !6240)
!6243 = !DILocation(line: 173, column: 11, scope: !6240)
!6244 = !DILocation(line: 173, column: 4, scope: !6240)
!6245 = !DILocation(line: 175, column: 44, scope: !6234)
!6246 = !DILocation(line: 175, column: 52, scope: !6234)
!6247 = !DILocation(line: 175, column: 57, scope: !6234)
!6248 = !DILocation(line: 175, column: 10, scope: !6234)
!6249 = distinct !{!6249, !6227, !6250, !5638, !5639}
!6250 = !DILocation(line: 176, column: 2, scope: !6200)
!6251 = !DILocation(line: 177, column: 15, scope: !6200)
!6252 = !DILocation(line: 177, column: 24, scope: !6200)
!6253 = !DILocation(line: 177, column: 2, scope: !6200)
!6254 = !DILocation(line: 178, column: 2, scope: !6200)
!6255 = !DILocation(line: 179, column: 1, scope: !6200)
!6256 = distinct !DISubprogram(name: "spin_lock", scope: !5684, file: !5684, line: 349, type: !6257, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6259)
!6257 = !DISubroutineType(types: !6258)
!6258 = !{null, !1447}
!6259 = !{!6260}
!6260 = !DILocalVariable(name: "lock", arg: 1, scope: !6256, file: !5684, line: 349, type: !1447)
!6261 = !DILocation(line: 349, column: 51, scope: !6256)
!6262 = !DILocation(line: 351, column: 2, scope: !6256)
!6263 = !DILocation(line: 352, column: 1, scope: !6256)
!6264 = distinct !DISubprogram(name: "list_del", scope: !6265, file: !6265, line: 227, type: !6266, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6268)
!6265 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6266 = !DISubroutineType(types: !6267)
!6267 = !{null, !229}
!6268 = !{!6269}
!6269 = !DILocalVariable(name: "entry", arg: 1, scope: !6264, file: !6265, line: 227, type: !229)
!6270 = !DILocation(line: 227, column: 47, scope: !6264)
!6271 = !DILocation(line: 229, column: 19, scope: !6264)
!6272 = !DILocation(line: 229, column: 2, scope: !6264)
!6273 = !DILocation(line: 230, column: 2, scope: !6264)
!6274 = !DILocation(line: 230, column: 9, scope: !6264)
!6275 = !DILocation(line: 230, column: 14, scope: !6264)
!6276 = !DILocation(line: 231, column: 2, scope: !6264)
!6277 = !DILocation(line: 231, column: 9, scope: !6264)
!6278 = !DILocation(line: 231, column: 14, scope: !6264)
!6279 = !DILocation(line: 232, column: 1, scope: !6264)
!6280 = distinct !DISubprogram(name: "spin_unlock", scope: !5684, file: !5684, line: 389, type: !6257, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6281)
!6281 = !{!6282}
!6282 = !DILocalVariable(name: "lock", arg: 1, scope: !6280, file: !5684, line: 389, type: !1447)
!6283 = !DILocation(line: 389, column: 53, scope: !6280)
!6284 = !DILocation(line: 391, column: 2, scope: !6280)
!6285 = !DILocation(line: 392, column: 1, scope: !6280)
!6286 = !DISubprogram(name: "kmem_cache_free", scope: !5297, file: !5297, line: 503, type: !6287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6287 = !DISubroutineType(types: !6288)
!6288 = !{null, !2481, !260}
!6289 = distinct !DISubprogram(name: "jbd2_clear_buffer_revoked_flags", scope: !3, file: !3, line: 484, type: !5745, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6290)
!6290 = !{!6291, !6292, !6293, !6294, !6298, !6299, !6303}
!6291 = !DILocalVariable(name: "journal", arg: 1, scope: !6289, file: !3, line: 484, type: !161)
!6292 = !DILocalVariable(name: "revoke", scope: !6289, file: !3, line: 486, type: !5064)
!6293 = !DILocalVariable(name: "i", scope: !6289, file: !3, line: 487, type: !87)
!6294 = !DILocalVariable(name: "hash_list", scope: !6295, file: !3, line: 490, type: !229)
!6295 = distinct !DILexicalBlock(scope: !6296, file: !3, line: 489, column: 42)
!6296 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 489, column: 2)
!6297 = distinct !DILexicalBlock(scope: !6289, file: !3, line: 489, column: 2)
!6298 = !DILocalVariable(name: "list_entry", scope: !6295, file: !3, line: 491, type: !229)
!6299 = !DILocalVariable(name: "record", scope: !6300, file: !3, line: 495, type: !5362)
!6300 = distinct !DILexicalBlock(scope: !6301, file: !3, line: 494, column: 40)
!6301 = distinct !DILexicalBlock(scope: !6302, file: !3, line: 494, column: 3)
!6302 = distinct !DILexicalBlock(scope: !6295, file: !3, line: 494, column: 3)
!6303 = !DILocalVariable(name: "bh", scope: !6300, file: !3, line: 496, type: !232)
!6304 = !DILocation(line: 484, column: 49, scope: !6289)
!6305 = !DILocation(line: 486, column: 2, scope: !6289)
!6306 = !DILocation(line: 486, column: 30, scope: !6289)
!6307 = !DILocation(line: 486, column: 39, scope: !6289)
!6308 = !DILocation(line: 486, column: 48, scope: !6289)
!6309 = !DILocation(line: 487, column: 2, scope: !6289)
!6310 = !DILocation(line: 487, column: 6, scope: !6289)
!6311 = !DILocation(line: 489, column: 9, scope: !6297)
!6312 = !DILocation(line: 489, column: 7, scope: !6297)
!6313 = !DILocation(line: 489, column: 14, scope: !6296)
!6314 = !DILocation(line: 489, column: 18, scope: !6296)
!6315 = !DILocation(line: 489, column: 26, scope: !6296)
!6316 = !DILocation(line: 489, column: 16, scope: !6296)
!6317 = !DILocation(line: 489, column: 2, scope: !6297)
!6318 = !DILocation(line: 490, column: 3, scope: !6295)
!6319 = !DILocation(line: 490, column: 21, scope: !6295)
!6320 = !DILocation(line: 491, column: 3, scope: !6295)
!6321 = !DILocation(line: 491, column: 21, scope: !6295)
!6322 = !DILocation(line: 492, column: 16, scope: !6295)
!6323 = !DILocation(line: 492, column: 24, scope: !6295)
!6324 = !DILocation(line: 492, column: 35, scope: !6295)
!6325 = !DILocation(line: 492, column: 13, scope: !6295)
!6326 = !DILocation(line: 494, column: 3, scope: !6302)
!6327 = !DILocation(line: 494, column: 3, scope: !6301)
!6328 = !DILocation(line: 495, column: 4, scope: !6300)
!6329 = !DILocation(line: 495, column: 33, scope: !6300)
!6330 = !DILocation(line: 496, column: 4, scope: !6300)
!6331 = !DILocation(line: 496, column: 24, scope: !6300)
!6332 = !DILocation(line: 497, column: 44, scope: !6300)
!6333 = !DILocation(line: 497, column: 11, scope: !6300)
!6334 = !DILocation(line: 498, column: 26, scope: !6300)
!6335 = !DILocation(line: 498, column: 35, scope: !6300)
!6336 = !DILocation(line: 499, column: 12, scope: !6300)
!6337 = !DILocation(line: 499, column: 20, scope: !6300)
!6338 = !DILocation(line: 500, column: 12, scope: !6300)
!6339 = !DILocation(line: 500, column: 21, scope: !6300)
!6340 = !DILocation(line: 498, column: 9, scope: !6300)
!6341 = !DILocation(line: 498, column: 7, scope: !6300)
!6342 = !DILocation(line: 501, column: 8, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6300, file: !3, line: 501, column: 8)
!6344 = !DILocation(line: 501, column: 8, scope: !6300)
!6345 = !DILocation(line: 502, column: 26, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6343, file: !3, line: 501, column: 12)
!6347 = !DILocation(line: 502, column: 5, scope: !6346)
!6348 = !DILocation(line: 503, column: 14, scope: !6346)
!6349 = !DILocation(line: 503, column: 5, scope: !6346)
!6350 = !DILocation(line: 504, column: 4, scope: !6346)
!6351 = !DILocation(line: 505, column: 3, scope: !6301)
!6352 = !DILocation(line: 505, column: 3, scope: !6300)
!6353 = distinct !{!6353, !6326, !6354, !5638, !5639}
!6354 = !DILocation(line: 505, column: 3, scope: !6302)
!6355 = !DILocation(line: 506, column: 2, scope: !6296)
!6356 = !DILocation(line: 506, column: 2, scope: !6295)
!6357 = !DILocation(line: 489, column: 38, scope: !6296)
!6358 = !DILocation(line: 489, column: 2, scope: !6296)
!6359 = distinct !{!6359, !6317, !6360, !5638, !5639}
!6360 = !DILocation(line: 506, column: 2, scope: !6297)
!6361 = !DILocation(line: 507, column: 1, scope: !6289)
!6362 = distinct !DISubprogram(name: "list_is_head", scope: !6265, file: !6265, line: 362, type: !6363, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6367)
!6363 = !DISubroutineType(types: !6364)
!6364 = !{!87, !6365, !6365}
!6365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6366, size: 64)
!6366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!6367 = !{!6368, !6369}
!6368 = !DILocalVariable(name: "list", arg: 1, scope: !6362, file: !6265, line: 362, type: !6365)
!6369 = !DILocalVariable(name: "head", arg: 2, scope: !6362, file: !6265, line: 362, type: !6365)
!6370 = !DILocation(line: 362, column: 56, scope: !6362)
!6371 = !DILocation(line: 362, column: 86, scope: !6362)
!6372 = !DILocation(line: 364, column: 9, scope: !6362)
!6373 = !DILocation(line: 364, column: 17, scope: !6362)
!6374 = !DILocation(line: 364, column: 14, scope: !6362)
!6375 = !DILocation(line: 364, column: 2, scope: !6362)
!6376 = distinct !DISubprogram(name: "jbd2_journal_switch_revoke_table", scope: !3, file: !3, line: 513, type: !5745, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6377)
!6377 = !{!6378, !6379}
!6378 = !DILocalVariable(name: "journal", arg: 1, scope: !6376, file: !3, line: 513, type: !161)
!6379 = !DILocalVariable(name: "i", scope: !6376, file: !3, line: 515, type: !87)
!6380 = !DILocation(line: 513, column: 50, scope: !6376)
!6381 = !DILocation(line: 515, column: 2, scope: !6376)
!6382 = !DILocation(line: 515, column: 6, scope: !6376)
!6383 = !DILocation(line: 517, column: 6, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6376, file: !3, line: 517, column: 6)
!6385 = !DILocation(line: 517, column: 15, scope: !6384)
!6386 = !DILocation(line: 517, column: 27, scope: !6384)
!6387 = !DILocation(line: 517, column: 36, scope: !6384)
!6388 = !DILocation(line: 517, column: 24, scope: !6384)
!6389 = !DILocation(line: 517, column: 6, scope: !6376)
!6390 = !DILocation(line: 518, column: 23, scope: !6384)
!6391 = !DILocation(line: 518, column: 32, scope: !6384)
!6392 = !DILocation(line: 518, column: 3, scope: !6384)
!6393 = !DILocation(line: 518, column: 12, scope: !6384)
!6394 = !DILocation(line: 518, column: 21, scope: !6384)
!6395 = !DILocation(line: 520, column: 23, scope: !6384)
!6396 = !DILocation(line: 520, column: 32, scope: !6384)
!6397 = !DILocation(line: 520, column: 3, scope: !6384)
!6398 = !DILocation(line: 520, column: 12, scope: !6384)
!6399 = !DILocation(line: 520, column: 21, scope: !6384)
!6400 = !DILocation(line: 522, column: 9, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6376, file: !3, line: 522, column: 2)
!6402 = !DILocation(line: 522, column: 7, scope: !6401)
!6403 = !DILocation(line: 522, column: 14, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6401, file: !3, line: 522, column: 2)
!6405 = !DILocation(line: 522, column: 18, scope: !6404)
!6406 = !DILocation(line: 522, column: 27, scope: !6404)
!6407 = !DILocation(line: 522, column: 37, scope: !6404)
!6408 = !DILocation(line: 522, column: 16, scope: !6404)
!6409 = !DILocation(line: 522, column: 2, scope: !6401)
!6410 = !DILocation(line: 523, column: 19, scope: !6404)
!6411 = !DILocation(line: 523, column: 28, scope: !6404)
!6412 = !DILocation(line: 523, column: 38, scope: !6404)
!6413 = !DILocation(line: 523, column: 49, scope: !6404)
!6414 = !DILocation(line: 523, column: 3, scope: !6404)
!6415 = !DILocation(line: 522, column: 49, scope: !6404)
!6416 = !DILocation(line: 522, column: 2, scope: !6404)
!6417 = distinct !{!6417, !6409, !6418, !5638, !5639}
!6418 = !DILocation(line: 523, column: 51, scope: !6401)
!6419 = !DILocation(line: 524, column: 1, scope: !6376)
!6420 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6265, file: !6265, line: 35, type: !6266, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6421)
!6421 = !{!6422}
!6422 = !DILocalVariable(name: "list", arg: 1, scope: !6420, file: !6265, line: 35, type: !229)
!6423 = !DILocation(line: 35, column: 53, scope: !6420)
!6424 = !DILocation(line: 37, column: 2, scope: !6420)
!6425 = !DILocation(line: 37, column: 2, scope: !6426)
!6426 = distinct !DILexicalBlock(scope: !6420, file: !6265, line: 37, column: 2)
!6427 = !DILocation(line: 37, column: 2, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6426, file: !6265, line: 37, column: 2)
!6429 = !DILocation(line: 37, column: 2, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6426, file: !6265, line: 37, column: 2)
!6431 = !DILocation(line: 38, column: 2, scope: !6420)
!6432 = !DILocation(line: 38, column: 2, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !6420, file: !6265, line: 38, column: 2)
!6434 = !DILocation(line: 38, column: 2, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6433, file: !6265, line: 38, column: 2)
!6436 = !DILocation(line: 38, column: 2, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6433, file: !6265, line: 38, column: 2)
!6438 = !DILocation(line: 39, column: 1, scope: !6420)
!6439 = distinct !DISubprogram(name: "jbd2_journal_write_revoke_records", scope: !3, file: !3, line: 530, type: !6440, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6442)
!6440 = !DISubroutineType(types: !6441)
!6441 = !{null, !5016, !229}
!6442 = !{!6443, !6444, !6445, !6446, !6447, !6448, !6449, !6450, !6451, !6452}
!6443 = !DILocalVariable(name: "transaction", arg: 1, scope: !6439, file: !3, line: 530, type: !5016)
!6444 = !DILocalVariable(name: "log_bufs", arg: 2, scope: !6439, file: !3, line: 531, type: !229)
!6445 = !DILocalVariable(name: "journal", scope: !6439, file: !3, line: 533, type: !161)
!6446 = !DILocalVariable(name: "descriptor", scope: !6439, file: !3, line: 534, type: !232)
!6447 = !DILocalVariable(name: "record", scope: !6439, file: !3, line: 535, type: !5362)
!6448 = !DILocalVariable(name: "revoke", scope: !6439, file: !3, line: 536, type: !5064)
!6449 = !DILocalVariable(name: "hash_list", scope: !6439, file: !3, line: 537, type: !229)
!6450 = !DILocalVariable(name: "i", scope: !6439, file: !3, line: 538, type: !87)
!6451 = !DILocalVariable(name: "offset", scope: !6439, file: !3, line: 538, type: !87)
!6452 = !DILocalVariable(name: "count", scope: !6439, file: !3, line: 538, type: !87)
!6453 = !DILocation(line: 530, column: 55, scope: !6439)
!6454 = !DILocation(line: 531, column: 30, scope: !6439)
!6455 = !DILocation(line: 533, column: 2, scope: !6439)
!6456 = !DILocation(line: 533, column: 13, scope: !6439)
!6457 = !DILocation(line: 533, column: 23, scope: !6439)
!6458 = !DILocation(line: 533, column: 36, scope: !6439)
!6459 = !DILocation(line: 534, column: 2, scope: !6439)
!6460 = !DILocation(line: 534, column: 22, scope: !6439)
!6461 = !DILocation(line: 535, column: 2, scope: !6439)
!6462 = !DILocation(line: 535, column: 31, scope: !6439)
!6463 = !DILocation(line: 536, column: 2, scope: !6439)
!6464 = !DILocation(line: 536, column: 30, scope: !6439)
!6465 = !DILocation(line: 537, column: 2, scope: !6439)
!6466 = !DILocation(line: 537, column: 20, scope: !6439)
!6467 = !DILocation(line: 538, column: 2, scope: !6439)
!6468 = !DILocation(line: 538, column: 6, scope: !6439)
!6469 = !DILocation(line: 538, column: 9, scope: !6439)
!6470 = !DILocation(line: 538, column: 17, scope: !6439)
!6471 = !DILocation(line: 540, column: 13, scope: !6439)
!6472 = !DILocation(line: 541, column: 9, scope: !6439)
!6473 = !DILocation(line: 542, column: 8, scope: !6439)
!6474 = !DILocation(line: 545, column: 11, scope: !6439)
!6475 = !DILocation(line: 545, column: 20, scope: !6439)
!6476 = !DILocation(line: 545, column: 32, scope: !6439)
!6477 = !DILocation(line: 545, column: 41, scope: !6439)
!6478 = !DILocation(line: 545, column: 29, scope: !6439)
!6479 = !DILocation(line: 546, column: 3, scope: !6439)
!6480 = !DILocation(line: 546, column: 12, scope: !6439)
!6481 = !DILocation(line: 546, column: 32, scope: !6439)
!6482 = !DILocation(line: 546, column: 41, scope: !6439)
!6483 = !DILocation(line: 545, column: 9, scope: !6439)
!6484 = !DILocation(line: 548, column: 9, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6439, file: !3, line: 548, column: 2)
!6486 = !DILocation(line: 548, column: 7, scope: !6485)
!6487 = !DILocation(line: 548, column: 14, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6485, file: !3, line: 548, column: 2)
!6489 = !DILocation(line: 548, column: 18, scope: !6488)
!6490 = !DILocation(line: 548, column: 26, scope: !6488)
!6491 = !DILocation(line: 548, column: 16, scope: !6488)
!6492 = !DILocation(line: 548, column: 2, scope: !6485)
!6493 = !DILocation(line: 549, column: 16, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6488, file: !3, line: 548, column: 42)
!6495 = !DILocation(line: 549, column: 24, scope: !6494)
!6496 = !DILocation(line: 549, column: 35, scope: !6494)
!6497 = !DILocation(line: 549, column: 13, scope: !6494)
!6498 = !DILocation(line: 551, column: 3, scope: !6494)
!6499 = !DILocation(line: 551, column: 22, scope: !6494)
!6500 = !DILocation(line: 551, column: 11, scope: !6494)
!6501 = !DILocation(line: 551, column: 10, scope: !6494)
!6502 = !DILocation(line: 553, column: 5, scope: !6503)
!6503 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 551, column: 34)
!6504 = !DILocation(line: 553, column: 16, scope: !6503)
!6505 = !DILocation(line: 552, column: 11, scope: !6503)
!6506 = !DILocation(line: 554, column: 28, scope: !6503)
!6507 = !DILocation(line: 554, column: 41, scope: !6503)
!6508 = !DILocation(line: 555, column: 29, scope: !6503)
!6509 = !DILocation(line: 554, column: 4, scope: !6503)
!6510 = !DILocation(line: 556, column: 9, scope: !6503)
!6511 = !DILocation(line: 557, column: 14, scope: !6503)
!6512 = !DILocation(line: 557, column: 22, scope: !6503)
!6513 = !DILocation(line: 557, column: 4, scope: !6503)
!6514 = !DILocation(line: 558, column: 20, scope: !6503)
!6515 = !DILocation(line: 558, column: 46, scope: !6503)
!6516 = !DILocation(line: 558, column: 4, scope: !6503)
!6517 = distinct !{!6517, !6498, !6518, !5638, !5639}
!6518 = !DILocation(line: 559, column: 3, scope: !6494)
!6519 = !DILocation(line: 560, column: 2, scope: !6494)
!6520 = !DILocation(line: 548, column: 38, scope: !6488)
!6521 = !DILocation(line: 548, column: 2, scope: !6488)
!6522 = distinct !{!6522, !6492, !6523, !5638, !5639}
!6523 = !DILocation(line: 560, column: 2, scope: !6485)
!6524 = !DILocation(line: 561, column: 6, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6439, file: !3, line: 561, column: 6)
!6526 = !DILocation(line: 561, column: 6, scope: !6439)
!6527 = !DILocation(line: 562, column: 20, scope: !6525)
!6528 = !DILocation(line: 562, column: 29, scope: !6525)
!6529 = !DILocation(line: 562, column: 41, scope: !6525)
!6530 = !DILocation(line: 562, column: 3, scope: !6525)
!6531 = !DILocation(line: 563, column: 2, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6533, file: !3, line: 563, column: 2)
!6533 = distinct !DILexicalBlock(scope: !6439, file: !3, line: 563, column: 2)
!6534 = !DILocation(line: 563, column: 2, scope: !6533)
!6535 = !DILocation(line: 564, column: 1, scope: !6439)
!6536 = distinct !DISubprogram(name: "list_empty", scope: !6265, file: !6265, line: 371, type: !6537, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6539)
!6537 = !DISubroutineType(types: !6538)
!6538 = !{!87, !6365}
!6539 = !{!6540}
!6540 = !DILocalVariable(name: "head", arg: 1, scope: !6536, file: !6265, line: 371, type: !6365)
!6541 = !DILocation(line: 371, column: 54, scope: !6536)
!6542 = !DILocation(line: 373, column: 9, scope: !6543)
!6543 = distinct !DILexicalBlock(scope: !6536, file: !6265, line: 373, column: 9)
!6544 = !DILocation(line: 373, column: 9, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6543, file: !6265, line: 373, column: 9)
!6546 = !DILocation(line: 373, column: 34, scope: !6536)
!6547 = !DILocation(line: 373, column: 31, scope: !6536)
!6548 = !DILocation(line: 373, column: 2, scope: !6536)
!6549 = distinct !DISubprogram(name: "write_one_revoke_record", scope: !3, file: !3, line: 571, type: !6550, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6552)
!6550 = !DISubroutineType(types: !6551)
!6551 = !{null, !5016, !229, !5073, !1904, !5362}
!6552 = !{!6553, !6554, !6555, !6556, !6557, !6558, !6559, !6560, !6561, !6562}
!6553 = !DILocalVariable(name: "transaction", arg: 1, scope: !6549, file: !3, line: 571, type: !5016)
!6554 = !DILocalVariable(name: "log_bufs", arg: 2, scope: !6549, file: !3, line: 572, type: !229)
!6555 = !DILocalVariable(name: "descriptorp", arg: 3, scope: !6549, file: !3, line: 573, type: !5073)
!6556 = !DILocalVariable(name: "offsetp", arg: 4, scope: !6549, file: !3, line: 574, type: !1904)
!6557 = !DILocalVariable(name: "record", arg: 5, scope: !6549, file: !3, line: 575, type: !5362)
!6558 = !DILocalVariable(name: "journal", scope: !6549, file: !3, line: 577, type: !161)
!6559 = !DILocalVariable(name: "csum_size", scope: !6549, file: !3, line: 578, type: !87)
!6560 = !DILocalVariable(name: "descriptor", scope: !6549, file: !3, line: 579, type: !232)
!6561 = !DILocalVariable(name: "sz", scope: !6549, file: !3, line: 580, type: !87)
!6562 = !DILocalVariable(name: "offset", scope: !6549, file: !3, line: 580, type: !87)
!6563 = !DILocation(line: 571, column: 52, scope: !6549)
!6564 = !DILocation(line: 572, column: 27, scope: !6549)
!6565 = !DILocation(line: 573, column: 30, scope: !6549)
!6566 = !DILocation(line: 574, column: 14, scope: !6549)
!6567 = !DILocation(line: 575, column: 38, scope: !6549)
!6568 = !DILocation(line: 577, column: 2, scope: !6549)
!6569 = !DILocation(line: 577, column: 13, scope: !6549)
!6570 = !DILocation(line: 577, column: 23, scope: !6549)
!6571 = !DILocation(line: 577, column: 36, scope: !6549)
!6572 = !DILocation(line: 578, column: 2, scope: !6549)
!6573 = !DILocation(line: 578, column: 6, scope: !6549)
!6574 = !DILocation(line: 579, column: 2, scope: !6549)
!6575 = !DILocation(line: 579, column: 22, scope: !6549)
!6576 = !DILocation(line: 580, column: 2, scope: !6549)
!6577 = !DILocation(line: 580, column: 6, scope: !6549)
!6578 = !DILocation(line: 580, column: 10, scope: !6549)
!6579 = !DILocation(line: 586, column: 25, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6549, file: !3, line: 586, column: 6)
!6581 = !DILocation(line: 586, column: 6, scope: !6580)
!6582 = !DILocation(line: 586, column: 6, scope: !6549)
!6583 = !DILocation(line: 587, column: 3, scope: !6580)
!6584 = !DILocation(line: 589, column: 16, scope: !6549)
!6585 = !DILocation(line: 589, column: 15, scope: !6549)
!6586 = !DILocation(line: 589, column: 13, scope: !6549)
!6587 = !DILocation(line: 590, column: 12, scope: !6549)
!6588 = !DILocation(line: 590, column: 11, scope: !6549)
!6589 = !DILocation(line: 590, column: 9, scope: !6549)
!6590 = !DILocation(line: 593, column: 34, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6549, file: !3, line: 593, column: 6)
!6592 = !DILocation(line: 593, column: 6, scope: !6591)
!6593 = !DILocation(line: 593, column: 6, scope: !6549)
!6594 = !DILocation(line: 594, column: 13, scope: !6591)
!6595 = !DILocation(line: 594, column: 3, scope: !6591)
!6596 = !DILocation(line: 596, column: 29, scope: !6597)
!6597 = distinct !DILexicalBlock(scope: !6549, file: !3, line: 596, column: 6)
!6598 = !DILocation(line: 596, column: 6, scope: !6597)
!6599 = !DILocation(line: 596, column: 6, scope: !6549)
!6600 = !DILocation(line: 597, column: 6, scope: !6597)
!6601 = !DILocation(line: 597, column: 3, scope: !6597)
!6602 = !DILocation(line: 599, column: 6, scope: !6597)
!6603 = !DILocation(line: 602, column: 6, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6549, file: !3, line: 602, column: 6)
!6605 = !DILocation(line: 602, column: 6, scope: !6549)
!6606 = !DILocation(line: 603, column: 7, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6608, file: !3, line: 603, column: 7)
!6608 = distinct !DILexicalBlock(scope: !6604, file: !3, line: 602, column: 18)
!6609 = !DILocation(line: 603, column: 16, scope: !6607)
!6610 = !DILocation(line: 603, column: 14, scope: !6607)
!6611 = !DILocation(line: 603, column: 21, scope: !6607)
!6612 = !DILocation(line: 603, column: 30, scope: !6607)
!6613 = !DILocation(line: 603, column: 44, scope: !6607)
!6614 = !DILocation(line: 603, column: 42, scope: !6607)
!6615 = !DILocation(line: 603, column: 19, scope: !6607)
!6616 = !DILocation(line: 603, column: 7, scope: !6608)
!6617 = !DILocation(line: 604, column: 21, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 603, column: 55)
!6619 = !DILocation(line: 604, column: 30, scope: !6618)
!6620 = !DILocation(line: 604, column: 42, scope: !6618)
!6621 = !DILocation(line: 604, column: 4, scope: !6618)
!6622 = !DILocation(line: 605, column: 15, scope: !6618)
!6623 = !DILocation(line: 606, column: 3, scope: !6618)
!6624 = !DILocation(line: 607, column: 2, scope: !6608)
!6625 = !DILocation(line: 609, column: 7, scope: !6626)
!6626 = distinct !DILexicalBlock(scope: !6549, file: !3, line: 609, column: 6)
!6627 = !DILocation(line: 609, column: 6, scope: !6549)
!6628 = !DILocation(line: 610, column: 51, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6626, file: !3, line: 609, column: 19)
!6630 = !DILocation(line: 610, column: 16, scope: !6629)
!6631 = !DILocation(line: 610, column: 14, scope: !6629)
!6632 = !DILocation(line: 612, column: 8, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6629, file: !3, line: 612, column: 7)
!6634 = !DILocation(line: 612, column: 7, scope: !6629)
!6635 = !DILocation(line: 613, column: 4, scope: !6633)
!6636 = !DILocation(line: 616, column: 3, scope: !6629)
!6637 = !DILocation(line: 616, column: 3, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6629, file: !3, line: 616, column: 3)
!6639 = !DILocation(line: 617, column: 20, scope: !6629)
!6640 = !DILocation(line: 617, column: 30, scope: !6629)
!6641 = !DILocation(line: 617, column: 3, scope: !6629)
!6642 = !DILocation(line: 619, column: 10, scope: !6629)
!6643 = !DILocation(line: 620, column: 18, scope: !6629)
!6644 = !DILocation(line: 620, column: 4, scope: !6629)
!6645 = !DILocation(line: 620, column: 16, scope: !6629)
!6646 = !DILocation(line: 621, column: 2, scope: !6629)
!6647 = !DILocation(line: 623, column: 29, scope: !6648)
!6648 = distinct !DILexicalBlock(scope: !6549, file: !3, line: 623, column: 6)
!6649 = !DILocation(line: 623, column: 6, scope: !6648)
!6650 = !DILocation(line: 623, column: 6, scope: !6549)
!6651 = !DILocation(line: 625, column: 4, scope: !6648)
!6652 = !DILocation(line: 624, column: 18, scope: !6648)
!6653 = !DILocation(line: 624, column: 30, scope: !6648)
!6654 = !DILocation(line: 624, column: 37, scope: !6648)
!6655 = !DILocation(line: 624, column: 47, scope: !6648)
!6656 = !DILocation(line: 624, column: 3, scope: !6648)
!6657 = !DILocation(line: 628, column: 4, scope: !6648)
!6658 = !DILocation(line: 627, column: 18, scope: !6648)
!6659 = !DILocation(line: 627, column: 30, scope: !6648)
!6660 = !DILocation(line: 627, column: 37, scope: !6648)
!6661 = !DILocation(line: 627, column: 47, scope: !6648)
!6662 = !DILocation(line: 629, column: 12, scope: !6549)
!6663 = !DILocation(line: 629, column: 9, scope: !6549)
!6664 = !DILocation(line: 631, column: 13, scope: !6549)
!6665 = !DILocation(line: 631, column: 3, scope: !6549)
!6666 = !DILocation(line: 631, column: 11, scope: !6549)
!6667 = !DILocation(line: 632, column: 1, scope: !6549)
!6668 = distinct !DISubprogram(name: "flush_descriptor", scope: !3, file: !3, line: 641, type: !6669, scopeLine: 644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6671)
!6669 = !DISubroutineType(types: !6670)
!6670 = !{null, !161, !232, !87}
!6671 = !{!6672, !6673, !6674, !6675}
!6672 = !DILocalVariable(name: "journal", arg: 1, scope: !6668, file: !3, line: 641, type: !161)
!6673 = !DILocalVariable(name: "descriptor", arg: 2, scope: !6668, file: !3, line: 642, type: !232)
!6674 = !DILocalVariable(name: "offset", arg: 3, scope: !6668, file: !3, line: 643, type: !87)
!6675 = !DILocalVariable(name: "header", scope: !6668, file: !3, line: 645, type: !5381)
!6676 = !DILocation(line: 641, column: 41, scope: !6668)
!6677 = !DILocation(line: 642, column: 29, scope: !6668)
!6678 = !DILocation(line: 643, column: 13, scope: !6668)
!6679 = !DILocation(line: 645, column: 2, scope: !6668)
!6680 = !DILocation(line: 645, column: 32, scope: !6668)
!6681 = !DILocation(line: 647, column: 25, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6668, file: !3, line: 647, column: 6)
!6683 = !DILocation(line: 647, column: 6, scope: !6682)
!6684 = !DILocation(line: 647, column: 6, scope: !6668)
!6685 = !DILocation(line: 648, column: 3, scope: !6682)
!6686 = !DILocation(line: 650, column: 43, scope: !6668)
!6687 = !DILocation(line: 650, column: 55, scope: !6668)
!6688 = !DILocation(line: 650, column: 9, scope: !6668)
!6689 = !DILocation(line: 651, column: 20, scope: !6668)
!6690 = !DILocation(line: 651, column: 2, scope: !6668)
!6691 = !DILocation(line: 651, column: 10, scope: !6668)
!6692 = !DILocation(line: 651, column: 18, scope: !6668)
!6693 = !DILocation(line: 652, column: 33, scope: !6668)
!6694 = !DILocation(line: 652, column: 42, scope: !6668)
!6695 = !DILocation(line: 652, column: 2, scope: !6668)
!6696 = !DILocation(line: 654, column: 20, scope: !6668)
!6697 = !DILocation(line: 654, column: 2, scope: !6668)
!6698 = !DILocation(line: 655, column: 2, scope: !6668)
!6699 = !DILocation(line: 655, column: 2, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6668, file: !3, line: 655, column: 2)
!6701 = !DILocation(line: 656, column: 19, scope: !6668)
!6702 = !DILocation(line: 656, column: 2, scope: !6668)
!6703 = !DILocation(line: 657, column: 21, scope: !6668)
!6704 = !DILocation(line: 657, column: 2, scope: !6668)
!6705 = !DILocation(line: 658, column: 1, scope: !6668)
!6706 = distinct !DISubprogram(name: "jbd2_journal_set_revoke", scope: !3, file: !3, line: 683, type: !6010, scopeLine: 686, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6707)
!6707 = !{!6708, !6709, !6710, !6711}
!6708 = !DILocalVariable(name: "journal", arg: 1, scope: !6706, file: !3, line: 683, type: !161)
!6709 = !DILocalVariable(name: "blocknr", arg: 2, scope: !6706, file: !3, line: 684, type: !346)
!6710 = !DILocalVariable(name: "sequence", arg: 3, scope: !6706, file: !3, line: 685, type: !5051)
!6711 = !DILocalVariable(name: "record", scope: !6706, file: !3, line: 687, type: !5362)
!6712 = !DILocation(line: 683, column: 40, scope: !6706)
!6713 = !DILocation(line: 684, column: 29, scope: !6706)
!6714 = !DILocation(line: 685, column: 16, scope: !6706)
!6715 = !DILocation(line: 687, column: 2, scope: !6706)
!6716 = !DILocation(line: 687, column: 31, scope: !6706)
!6717 = !DILocation(line: 689, column: 30, scope: !6706)
!6718 = !DILocation(line: 689, column: 39, scope: !6706)
!6719 = !DILocation(line: 689, column: 11, scope: !6706)
!6720 = !DILocation(line: 689, column: 9, scope: !6706)
!6721 = !DILocation(line: 690, column: 6, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6706, file: !3, line: 690, column: 6)
!6723 = !DILocation(line: 690, column: 6, scope: !6706)
!6724 = !DILocation(line: 693, column: 14, scope: !6725)
!6725 = distinct !DILexicalBlock(scope: !6726, file: !3, line: 693, column: 7)
!6726 = distinct !DILexicalBlock(scope: !6722, file: !3, line: 690, column: 14)
!6727 = !DILocation(line: 693, column: 24, scope: !6725)
!6728 = !DILocation(line: 693, column: 32, scope: !6725)
!6729 = !DILocation(line: 693, column: 7, scope: !6725)
!6730 = !DILocation(line: 693, column: 7, scope: !6726)
!6731 = !DILocation(line: 694, column: 23, scope: !6725)
!6732 = !DILocation(line: 694, column: 4, scope: !6725)
!6733 = !DILocation(line: 694, column: 12, scope: !6725)
!6734 = !DILocation(line: 694, column: 21, scope: !6725)
!6735 = !DILocation(line: 695, column: 3, scope: !6726)
!6736 = !DILocation(line: 697, column: 28, scope: !6706)
!6737 = !DILocation(line: 697, column: 37, scope: !6706)
!6738 = !DILocation(line: 697, column: 46, scope: !6706)
!6739 = !DILocation(line: 697, column: 9, scope: !6706)
!6740 = !DILocation(line: 697, column: 2, scope: !6706)
!6741 = !DILocation(line: 698, column: 1, scope: !6706)
!6742 = distinct !DISubprogram(name: "tid_gt", scope: !157, file: !157, line: 1708, type: !6743, scopeLine: 1709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6745)
!6743 = !DISubroutineType(types: !6744)
!6744 = !{!87, !5051, !5051}
!6745 = !{!6746, !6747, !6748}
!6746 = !DILocalVariable(name: "x", arg: 1, scope: !6742, file: !157, line: 1708, type: !5051)
!6747 = !DILocalVariable(name: "y", arg: 2, scope: !6742, file: !157, line: 1708, type: !5051)
!6748 = !DILocalVariable(name: "difference", scope: !6742, file: !157, line: 1710, type: !87)
!6749 = !DILocation(line: 1708, column: 32, scope: !6742)
!6750 = !DILocation(line: 1708, column: 41, scope: !6742)
!6751 = !DILocation(line: 1710, column: 2, scope: !6742)
!6752 = !DILocation(line: 1710, column: 6, scope: !6742)
!6753 = !DILocation(line: 1710, column: 20, scope: !6742)
!6754 = !DILocation(line: 1710, column: 24, scope: !6742)
!6755 = !DILocation(line: 1710, column: 22, scope: !6742)
!6756 = !DILocation(line: 1711, column: 10, scope: !6742)
!6757 = !DILocation(line: 1711, column: 21, scope: !6742)
!6758 = !DILocation(line: 1712, column: 1, scope: !6742)
!6759 = !DILocation(line: 1711, column: 2, scope: !6742)
!6760 = distinct !DISubprogram(name: "jbd2_journal_test_revoke", scope: !3, file: !3, line: 707, type: !6010, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6761)
!6761 = !{!6762, !6763, !6764, !6765}
!6762 = !DILocalVariable(name: "journal", arg: 1, scope: !6760, file: !3, line: 707, type: !161)
!6763 = !DILocalVariable(name: "blocknr", arg: 2, scope: !6760, file: !3, line: 708, type: !346)
!6764 = !DILocalVariable(name: "sequence", arg: 3, scope: !6760, file: !3, line: 709, type: !5051)
!6765 = !DILocalVariable(name: "record", scope: !6760, file: !3, line: 711, type: !5362)
!6766 = !DILocation(line: 707, column: 41, scope: !6760)
!6767 = !DILocation(line: 708, column: 23, scope: !6760)
!6768 = !DILocation(line: 709, column: 10, scope: !6760)
!6769 = !DILocation(line: 711, column: 2, scope: !6760)
!6770 = !DILocation(line: 711, column: 31, scope: !6760)
!6771 = !DILocation(line: 713, column: 30, scope: !6760)
!6772 = !DILocation(line: 713, column: 39, scope: !6760)
!6773 = !DILocation(line: 713, column: 11, scope: !6760)
!6774 = !DILocation(line: 713, column: 9, scope: !6760)
!6775 = !DILocation(line: 714, column: 7, scope: !6776)
!6776 = distinct !DILexicalBlock(scope: !6760, file: !3, line: 714, column: 6)
!6777 = !DILocation(line: 714, column: 6, scope: !6760)
!6778 = !DILocation(line: 715, column: 3, scope: !6776)
!6779 = !DILocation(line: 716, column: 13, scope: !6780)
!6780 = distinct !DILexicalBlock(scope: !6760, file: !3, line: 716, column: 6)
!6781 = !DILocation(line: 716, column: 23, scope: !6780)
!6782 = !DILocation(line: 716, column: 31, scope: !6780)
!6783 = !DILocation(line: 716, column: 6, scope: !6780)
!6784 = !DILocation(line: 716, column: 6, scope: !6760)
!6785 = !DILocation(line: 717, column: 3, scope: !6780)
!6786 = !DILocation(line: 718, column: 2, scope: !6760)
!6787 = !DILocation(line: 719, column: 1, scope: !6760)
!6788 = distinct !DISubprogram(name: "jbd2_journal_clear_revoke", scope: !3, file: !3, line: 726, type: !5745, scopeLine: 727, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6789)
!6789 = !{!6790, !6791, !6792, !6793, !6794}
!6790 = !DILocalVariable(name: "journal", arg: 1, scope: !6788, file: !3, line: 726, type: !161)
!6791 = !DILocalVariable(name: "i", scope: !6788, file: !3, line: 728, type: !87)
!6792 = !DILocalVariable(name: "hash_list", scope: !6788, file: !3, line: 729, type: !229)
!6793 = !DILocalVariable(name: "record", scope: !6788, file: !3, line: 730, type: !5362)
!6794 = !DILocalVariable(name: "revoke", scope: !6788, file: !3, line: 731, type: !5064)
!6795 = !DILocation(line: 726, column: 43, scope: !6788)
!6796 = !DILocation(line: 728, column: 2, scope: !6788)
!6797 = !DILocation(line: 728, column: 6, scope: !6788)
!6798 = !DILocation(line: 729, column: 2, scope: !6788)
!6799 = !DILocation(line: 729, column: 20, scope: !6788)
!6800 = !DILocation(line: 730, column: 2, scope: !6788)
!6801 = !DILocation(line: 730, column: 31, scope: !6788)
!6802 = !DILocation(line: 731, column: 2, scope: !6788)
!6803 = !DILocation(line: 731, column: 30, scope: !6788)
!6804 = !DILocation(line: 733, column: 11, scope: !6788)
!6805 = !DILocation(line: 733, column: 20, scope: !6788)
!6806 = !DILocation(line: 733, column: 9, scope: !6788)
!6807 = !DILocation(line: 735, column: 9, scope: !6808)
!6808 = distinct !DILexicalBlock(scope: !6788, file: !3, line: 735, column: 2)
!6809 = !DILocation(line: 735, column: 7, scope: !6808)
!6810 = !DILocation(line: 735, column: 14, scope: !6811)
!6811 = distinct !DILexicalBlock(scope: !6808, file: !3, line: 735, column: 2)
!6812 = !DILocation(line: 735, column: 18, scope: !6811)
!6813 = !DILocation(line: 735, column: 26, scope: !6811)
!6814 = !DILocation(line: 735, column: 16, scope: !6811)
!6815 = !DILocation(line: 735, column: 2, scope: !6808)
!6816 = !DILocation(line: 736, column: 16, scope: !6817)
!6817 = distinct !DILexicalBlock(scope: !6811, file: !3, line: 735, column: 42)
!6818 = !DILocation(line: 736, column: 24, scope: !6817)
!6819 = !DILocation(line: 736, column: 35, scope: !6817)
!6820 = !DILocation(line: 736, column: 13, scope: !6817)
!6821 = !DILocation(line: 737, column: 3, scope: !6817)
!6822 = !DILocation(line: 737, column: 22, scope: !6817)
!6823 = !DILocation(line: 737, column: 11, scope: !6817)
!6824 = !DILocation(line: 737, column: 10, scope: !6817)
!6825 = !DILocation(line: 738, column: 44, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 737, column: 34)
!6827 = !DILocation(line: 738, column: 55, scope: !6826)
!6828 = !DILocation(line: 738, column: 11, scope: !6826)
!6829 = !DILocation(line: 739, column: 14, scope: !6826)
!6830 = !DILocation(line: 739, column: 22, scope: !6826)
!6831 = !DILocation(line: 739, column: 4, scope: !6826)
!6832 = !DILocation(line: 740, column: 20, scope: !6826)
!6833 = !DILocation(line: 740, column: 46, scope: !6826)
!6834 = !DILocation(line: 740, column: 4, scope: !6826)
!6835 = distinct !{!6835, !6821, !6836, !5638, !5639}
!6836 = !DILocation(line: 741, column: 3, scope: !6817)
!6837 = !DILocation(line: 742, column: 2, scope: !6817)
!6838 = !DILocation(line: 735, column: 38, scope: !6811)
!6839 = !DILocation(line: 735, column: 2, scope: !6811)
!6840 = distinct !{!6840, !6815, !6841, !5638, !5639}
!6841 = !DILocation(line: 742, column: 2, scope: !6808)
!6842 = !DILocation(line: 743, column: 1, scope: !6788)
!6843 = !DISubprogram(name: "kmem_cache_alloc", scope: !5297, file: !5297, line: 500, type: !6844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6844 = !DISubroutineType(types: !6845)
!6845 = !{!260, !2481, !1113}
!6846 = distinct !DISubprogram(name: "kmalloc_array", scope: !5297, file: !5297, line: 629, type: !6847, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6849)
!6847 = !DISubroutineType(types: !6848)
!6848 = !{!260, !569, !569, !1113}
!6849 = !{!6850, !6851, !6852, !6853}
!6850 = !DILocalVariable(name: "n", arg: 1, scope: !6846, file: !5297, line: 629, type: !569)
!6851 = !DILocalVariable(name: "size", arg: 2, scope: !6846, file: !5297, line: 629, type: !569)
!6852 = !DILocalVariable(name: "flags", arg: 3, scope: !6846, file: !5297, line: 629, type: !1113)
!6853 = !DILocalVariable(name: "bytes", scope: !6846, file: !5297, line: 631, type: !569)
!6854 = !DILocation(line: 629, column: 61, scope: !6846)
!6855 = !DILocation(line: 629, column: 71, scope: !6846)
!6856 = !DILocation(line: 629, column: 83, scope: !6846)
!6857 = !DILocation(line: 631, column: 2, scope: !6846)
!6858 = !DILocation(line: 631, column: 9, scope: !6846)
!6859 = !DILocation(line: 633, column: 6, scope: !6860)
!6860 = distinct !DILexicalBlock(scope: !6846, file: !5297, line: 633, column: 6)
!6861 = !DILocation(line: 633, column: 6, scope: !6846)
!6862 = !DILocation(line: 634, column: 3, scope: !6860)
!6863 = !DILocation(line: 635, column: 27, scope: !6864)
!6864 = distinct !DILexicalBlock(scope: !6846, file: !5297, line: 635, column: 6)
!6865 = !DILocation(line: 635, column: 6, scope: !6864)
!6866 = !DILocation(line: 635, column: 30, scope: !6864)
!6867 = !DILocation(line: 635, column: 54, scope: !6864)
!6868 = !DILocation(line: 635, column: 33, scope: !6864)
!6869 = !DILocation(line: 635, column: 6, scope: !6846)
!6870 = !DILocation(line: 636, column: 18, scope: !6864)
!6871 = !DILocation(line: 636, column: 25, scope: !6864)
!6872 = !DILocation(line: 636, column: 10, scope: !6864)
!6873 = !DILocation(line: 636, column: 3, scope: !6864)
!6874 = !DILocation(line: 637, column: 19, scope: !6846)
!6875 = !DILocation(line: 637, column: 26, scope: !6846)
!6876 = !DILocation(line: 637, column: 9, scope: !6846)
!6877 = !DILocation(line: 637, column: 2, scope: !6846)
!6878 = !DILocation(line: 638, column: 1, scope: !6846)
!6879 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6880, file: !6880, line: 51, type: !6881, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6883)
!6880 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6881 = !DISubroutineType(types: !6882)
!6882 = !{!812, !812}
!6883 = !{!6884}
!6884 = !DILocalVariable(name: "overflow", arg: 1, scope: !6879, file: !6880, line: 51, type: !812)
!6885 = !DILocation(line: 51, column: 60, scope: !6879)
!6886 = !DILocation(line: 53, column: 9, scope: !6879)
!6887 = !{i8 0, i8 2}
!6888 = !DILocation(line: 53, column: 2, scope: !6879)
!6889 = distinct !DISubprogram(name: "kmalloc", scope: !5297, file: !5297, line: 591, type: !6890, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6892)
!6890 = !DISubroutineType(types: !6891)
!6891 = !{!260, !569, !1113}
!6892 = !{!6893, !6894, !6895}
!6893 = !DILocalVariable(name: "size", arg: 1, scope: !6889, file: !5297, line: 591, type: !569)
!6894 = !DILocalVariable(name: "flags", arg: 2, scope: !6889, file: !5297, line: 591, type: !1113)
!6895 = !DILocalVariable(name: "index", scope: !6896, file: !5297, line: 594, type: !7)
!6896 = distinct !DILexicalBlock(scope: !6897, file: !5297, line: 593, column: 42)
!6897 = distinct !DILexicalBlock(scope: !6889, file: !5297, line: 593, column: 6)
!6898 = !DILocation(line: 591, column: 61, scope: !6889)
!6899 = !DILocation(line: 591, column: 73, scope: !6889)
!6900 = !DILocation(line: 593, column: 27, scope: !6897)
!6901 = !DILocation(line: 593, column: 6, scope: !6897)
!6902 = !DILocation(line: 593, column: 33, scope: !6897)
!6903 = !DILocation(line: 593, column: 36, scope: !6897)
!6904 = !DILocation(line: 593, column: 6, scope: !6889)
!6905 = !DILocation(line: 594, column: 3, scope: !6896)
!6906 = !DILocation(line: 594, column: 16, scope: !6896)
!6907 = !DILocation(line: 596, column: 7, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6896, file: !5297, line: 596, column: 7)
!6909 = !DILocation(line: 596, column: 12, scope: !6908)
!6910 = !DILocation(line: 596, column: 7, scope: !6896)
!6911 = !DILocation(line: 597, column: 25, scope: !6908)
!6912 = !DILocation(line: 597, column: 31, scope: !6908)
!6913 = !DILocation(line: 597, column: 11, scope: !6908)
!6914 = !DILocation(line: 597, column: 4, scope: !6908)
!6915 = !DILocation(line: 599, column: 11, scope: !6896)
!6916 = !DILocation(line: 599, column: 9, scope: !6896)
!6917 = !DILocation(line: 601, column: 33, scope: !6896)
!6918 = !DILocation(line: 601, column: 40, scope: !6896)
!6919 = !DILocation(line: 601, column: 20, scope: !6896)
!6920 = !DILocation(line: 601, column: 5, scope: !6896)
!6921 = !DILocation(line: 601, column: 51, scope: !6896)
!6922 = !DILocation(line: 602, column: 5, scope: !6896)
!6923 = !DILocation(line: 602, column: 12, scope: !6896)
!6924 = !DILocation(line: 600, column: 10, scope: !6896)
!6925 = !DILocation(line: 600, column: 3, scope: !6896)
!6926 = !DILocation(line: 603, column: 2, scope: !6897)
!6927 = !DILocation(line: 604, column: 19, scope: !6889)
!6928 = !DILocation(line: 604, column: 25, scope: !6889)
!6929 = !DILocation(line: 604, column: 9, scope: !6889)
!6930 = !DILocation(line: 604, column: 2, scope: !6889)
!6931 = !DILocation(line: 605, column: 1, scope: !6889)
!6932 = !DISubprogram(name: "__kmalloc", scope: !5297, file: !5297, line: 488, type: !6890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6933 = !DISubprogram(name: "kmalloc_large", scope: !5297, file: !5297, line: 531, type: !6890, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6934 = distinct !DISubprogram(name: "__kmalloc_index", scope: !5297, file: !5297, line: 444, type: !6935, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6937)
!6935 = !DISubroutineType(types: !6936)
!6936 = !{!7, !569, !812}
!6937 = !{!6938, !6939}
!6938 = !DILocalVariable(name: "size", arg: 1, scope: !6934, file: !5297, line: 444, type: !569)
!6939 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6934, file: !5297, line: 445, type: !812)
!6940 = !DILocation(line: 444, column: 60, scope: !6934)
!6941 = !DILocation(line: 445, column: 16, scope: !6934)
!6942 = !DILocation(line: 447, column: 7, scope: !6943)
!6943 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 447, column: 6)
!6944 = !DILocation(line: 447, column: 6, scope: !6934)
!6945 = !DILocation(line: 448, column: 3, scope: !6943)
!6946 = !DILocation(line: 450, column: 6, scope: !6947)
!6947 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 450, column: 6)
!6948 = !DILocation(line: 450, column: 11, scope: !6947)
!6949 = !DILocation(line: 450, column: 6, scope: !6934)
!6950 = !DILocation(line: 451, column: 3, scope: !6947)
!6951 = !DILocation(line: 453, column: 32, scope: !6952)
!6952 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 453, column: 6)
!6953 = !DILocation(line: 453, column: 37, scope: !6952)
!6954 = !DILocation(line: 453, column: 42, scope: !6952)
!6955 = !DILocation(line: 453, column: 45, scope: !6952)
!6956 = !DILocation(line: 453, column: 50, scope: !6952)
!6957 = !DILocation(line: 453, column: 6, scope: !6934)
!6958 = !DILocation(line: 454, column: 3, scope: !6952)
!6959 = !DILocation(line: 455, column: 32, scope: !6960)
!6960 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 455, column: 6)
!6961 = !DILocation(line: 455, column: 37, scope: !6960)
!6962 = !DILocation(line: 455, column: 43, scope: !6960)
!6963 = !DILocation(line: 455, column: 46, scope: !6960)
!6964 = !DILocation(line: 455, column: 51, scope: !6960)
!6965 = !DILocation(line: 455, column: 6, scope: !6934)
!6966 = !DILocation(line: 456, column: 3, scope: !6960)
!6967 = !DILocation(line: 457, column: 6, scope: !6968)
!6968 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 457, column: 6)
!6969 = !DILocation(line: 457, column: 11, scope: !6968)
!6970 = !DILocation(line: 457, column: 6, scope: !6934)
!6971 = !DILocation(line: 457, column: 26, scope: !6968)
!6972 = !DILocation(line: 458, column: 6, scope: !6973)
!6973 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 458, column: 6)
!6974 = !DILocation(line: 458, column: 11, scope: !6973)
!6975 = !DILocation(line: 458, column: 6, scope: !6934)
!6976 = !DILocation(line: 458, column: 26, scope: !6973)
!6977 = !DILocation(line: 459, column: 6, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 459, column: 6)
!6979 = !DILocation(line: 459, column: 11, scope: !6978)
!6980 = !DILocation(line: 459, column: 6, scope: !6934)
!6981 = !DILocation(line: 459, column: 26, scope: !6978)
!6982 = !DILocation(line: 460, column: 6, scope: !6983)
!6983 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 460, column: 6)
!6984 = !DILocation(line: 460, column: 11, scope: !6983)
!6985 = !DILocation(line: 460, column: 6, scope: !6934)
!6986 = !DILocation(line: 460, column: 26, scope: !6983)
!6987 = !DILocation(line: 461, column: 6, scope: !6988)
!6988 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 461, column: 6)
!6989 = !DILocation(line: 461, column: 11, scope: !6988)
!6990 = !DILocation(line: 461, column: 6, scope: !6934)
!6991 = !DILocation(line: 461, column: 26, scope: !6988)
!6992 = !DILocation(line: 462, column: 6, scope: !6993)
!6993 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 462, column: 6)
!6994 = !DILocation(line: 462, column: 11, scope: !6993)
!6995 = !DILocation(line: 462, column: 6, scope: !6934)
!6996 = !DILocation(line: 462, column: 26, scope: !6993)
!6997 = !DILocation(line: 463, column: 6, scope: !6998)
!6998 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 463, column: 6)
!6999 = !DILocation(line: 463, column: 11, scope: !6998)
!7000 = !DILocation(line: 463, column: 6, scope: !6934)
!7001 = !DILocation(line: 463, column: 26, scope: !6998)
!7002 = !DILocation(line: 464, column: 6, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 464, column: 6)
!7004 = !DILocation(line: 464, column: 11, scope: !7003)
!7005 = !DILocation(line: 464, column: 6, scope: !6934)
!7006 = !DILocation(line: 464, column: 26, scope: !7003)
!7007 = !DILocation(line: 465, column: 6, scope: !7008)
!7008 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 465, column: 6)
!7009 = !DILocation(line: 465, column: 11, scope: !7008)
!7010 = !DILocation(line: 465, column: 6, scope: !6934)
!7011 = !DILocation(line: 465, column: 26, scope: !7008)
!7012 = !DILocation(line: 466, column: 6, scope: !7013)
!7013 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 466, column: 6)
!7014 = !DILocation(line: 466, column: 11, scope: !7013)
!7015 = !DILocation(line: 466, column: 6, scope: !6934)
!7016 = !DILocation(line: 466, column: 26, scope: !7013)
!7017 = !DILocation(line: 467, column: 6, scope: !7018)
!7018 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 467, column: 6)
!7019 = !DILocation(line: 467, column: 11, scope: !7018)
!7020 = !DILocation(line: 467, column: 6, scope: !6934)
!7021 = !DILocation(line: 467, column: 26, scope: !7018)
!7022 = !DILocation(line: 468, column: 6, scope: !7023)
!7023 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 468, column: 6)
!7024 = !DILocation(line: 468, column: 11, scope: !7023)
!7025 = !DILocation(line: 468, column: 6, scope: !6934)
!7026 = !DILocation(line: 468, column: 26, scope: !7023)
!7027 = !DILocation(line: 469, column: 6, scope: !7028)
!7028 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 469, column: 6)
!7029 = !DILocation(line: 469, column: 11, scope: !7028)
!7030 = !DILocation(line: 469, column: 6, scope: !6934)
!7031 = !DILocation(line: 469, column: 26, scope: !7028)
!7032 = !DILocation(line: 470, column: 6, scope: !7033)
!7033 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 470, column: 6)
!7034 = !DILocation(line: 470, column: 11, scope: !7033)
!7035 = !DILocation(line: 470, column: 6, scope: !6934)
!7036 = !DILocation(line: 470, column: 26, scope: !7033)
!7037 = !DILocation(line: 471, column: 6, scope: !7038)
!7038 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 471, column: 6)
!7039 = !DILocation(line: 471, column: 11, scope: !7038)
!7040 = !DILocation(line: 471, column: 6, scope: !6934)
!7041 = !DILocation(line: 471, column: 26, scope: !7038)
!7042 = !DILocation(line: 472, column: 6, scope: !7043)
!7043 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 472, column: 6)
!7044 = !DILocation(line: 472, column: 11, scope: !7043)
!7045 = !DILocation(line: 472, column: 6, scope: !6934)
!7046 = !DILocation(line: 472, column: 26, scope: !7043)
!7047 = !DILocation(line: 473, column: 6, scope: !7048)
!7048 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 473, column: 6)
!7049 = !DILocation(line: 473, column: 11, scope: !7048)
!7050 = !DILocation(line: 473, column: 6, scope: !6934)
!7051 = !DILocation(line: 473, column: 26, scope: !7048)
!7052 = !DILocation(line: 474, column: 6, scope: !7053)
!7053 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 474, column: 6)
!7054 = !DILocation(line: 474, column: 11, scope: !7053)
!7055 = !DILocation(line: 474, column: 6, scope: !6934)
!7056 = !DILocation(line: 474, column: 27, scope: !7053)
!7057 = !DILocation(line: 475, column: 6, scope: !7058)
!7058 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 475, column: 6)
!7059 = !DILocation(line: 475, column: 11, scope: !7058)
!7060 = !DILocation(line: 475, column: 6, scope: !6934)
!7061 = !DILocation(line: 475, column: 32, scope: !7058)
!7062 = !DILocation(line: 477, column: 50, scope: !7063)
!7063 = distinct !DILexicalBlock(scope: !6934, file: !5297, line: 477, column: 6)
!7064 = !DILocation(line: 477, column: 6, scope: !6934)
!7065 = !DILocation(line: 478, column: 3, scope: !7063)
!7066 = !DILocation(line: 478, column: 3, scope: !7067)
!7067 = distinct !DILexicalBlock(scope: !7068, file: !5297, line: 478, column: 3)
!7068 = distinct !DILexicalBlock(scope: !7063, file: !5297, line: 478, column: 3)
!7069 = !{i32 -2141703145}
!7070 = !DILocation(line: 478, column: 3, scope: !7068)
!7071 = !DILocation(line: 480, column: 3, scope: !7063)
!7072 = !DILocation(line: 480, column: 3, scope: !7073)
!7073 = distinct !DILexicalBlock(scope: !7063, file: !5297, line: 480, column: 3)
!7074 = !DILocation(line: 480, column: 3, scope: !7075)
!7075 = distinct !DILexicalBlock(scope: !7073, file: !5297, line: 480, column: 3)
!7076 = !DILocation(line: 480, column: 3, scope: !7077)
!7077 = distinct !DILexicalBlock(scope: !7073, file: !5297, line: 480, column: 3)
!7078 = !{i64 2153264354, i64 2153264383, i64 2153264429, i64 2153264487, i64 2153264541, i64 2153264595, i64 2153264650, i64 2153264681}
!7079 = !DILocation(line: 483, column: 2, scope: !6934)
!7080 = !DILocation(line: 484, column: 1, scope: !6934)
!7081 = !DISubprogram(name: "kmalloc_trace", scope: !5297, file: !5297, line: 525, type: !7082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7082 = !DISubroutineType(types: !7083)
!7083 = !{!260, !2481, !1113, !569}
!7084 = distinct !DISubprogram(name: "kmalloc_type", scope: !5297, file: !5297, line: 401, type: !7085, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7087)
!7085 = !DISubroutineType(types: !7086)
!7086 = !{!5296, !1113, !166}
!7087 = !{!7088, !7089}
!7088 = !DILocalVariable(name: "flags", arg: 1, scope: !7084, file: !5297, line: 401, type: !1113)
!7089 = !DILocalVariable(name: "caller", arg: 2, scope: !7084, file: !5297, line: 401, type: !166)
!7090 = !DILocation(line: 401, column: 67, scope: !7084)
!7091 = !DILocation(line: 401, column: 88, scope: !7084)
!7092 = !DILocation(line: 407, column: 6, scope: !7093)
!7093 = distinct !DILexicalBlock(scope: !7084, file: !5297, line: 407, column: 6)
!7094 = !DILocation(line: 407, column: 6, scope: !7084)
!7095 = !DILocation(line: 413, column: 3, scope: !7093)
!7096 = !DILocation(line: 423, column: 38, scope: !7097)
!7097 = distinct !DILexicalBlock(scope: !7084, file: !5297, line: 423, column: 6)
!7098 = !DILocation(line: 423, column: 44, scope: !7097)
!7099 = !DILocation(line: 423, column: 6, scope: !7084)
!7100 = !DILocation(line: 424, column: 3, scope: !7097)
!7101 = !DILocation(line: 426, column: 3, scope: !7102)
!7102 = distinct !DILexicalBlock(scope: !7084, file: !5297, line: 425, column: 6)
!7103 = !DILocation(line: 429, column: 1, scope: !7084)
!7104 = !DISubprogram(name: "__compiletime_assert_245", scope: !5297, file: !5297, line: 478, type: !2109, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7105 = !DISubprogram(name: "kfree", scope: !5297, file: !5297, line: 227, type: !7106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7106 = !DISubroutineType(types: !7107)
!7107 = !{null, !1297}
!7108 = distinct !DISubprogram(name: "const_test_bit", scope: !7109, file: !7109, line: 166, type: !7110, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7115)
!7109 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!7110 = !DISubroutineType(types: !7111)
!7111 = !{!812, !166, !7112}
!7112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7113, size: 64)
!7113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7114)
!7114 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !166)
!7115 = !{!7116, !7117, !7118, !7119, !7120}
!7116 = !DILocalVariable(name: "nr", arg: 1, scope: !7108, file: !7109, line: 166, type: !166)
!7117 = !DILocalVariable(name: "addr", arg: 2, scope: !7108, file: !7109, line: 166, type: !7112)
!7118 = !DILocalVariable(name: "p", scope: !7108, file: !7109, line: 168, type: !5369)
!7119 = !DILocalVariable(name: "mask", scope: !7108, file: !7109, line: 169, type: !166)
!7120 = !DILocalVariable(name: "val", scope: !7108, file: !7109, line: 170, type: !166)
!7121 = !DILocation(line: 166, column: 30, scope: !7108)
!7122 = !DILocation(line: 166, column: 64, scope: !7108)
!7123 = !DILocation(line: 168, column: 2, scope: !7108)
!7124 = !DILocation(line: 168, column: 23, scope: !7108)
!7125 = !DILocation(line: 168, column: 50, scope: !7108)
!7126 = !DILocation(line: 168, column: 57, scope: !7108)
!7127 = !DILocation(line: 168, column: 55, scope: !7108)
!7128 = !DILocation(line: 169, column: 2, scope: !7108)
!7129 = !DILocation(line: 169, column: 16, scope: !7108)
!7130 = !DILocation(line: 169, column: 23, scope: !7108)
!7131 = !DILocation(line: 170, column: 2, scope: !7108)
!7132 = !DILocation(line: 170, column: 16, scope: !7108)
!7133 = !DILocation(line: 170, column: 23, scope: !7108)
!7134 = !DILocation(line: 170, column: 22, scope: !7108)
!7135 = !DILocation(line: 172, column: 12, scope: !7108)
!7136 = !DILocation(line: 172, column: 18, scope: !7108)
!7137 = !DILocation(line: 172, column: 16, scope: !7108)
!7138 = !DILocation(line: 172, column: 10, scope: !7108)
!7139 = !DILocation(line: 172, column: 9, scope: !7108)
!7140 = !DILocation(line: 173, column: 1, scope: !7108)
!7141 = !DILocation(line: 172, column: 2, scope: !7108)
!7142 = distinct !DISubprogram(name: "_test_bit", scope: !7143, file: !7143, line: 139, type: !7110, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7144)
!7143 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7144 = !{!7145, !7146}
!7145 = !DILocalVariable(name: "nr", arg: 1, scope: !7142, file: !7143, line: 139, type: !166)
!7146 = !DILocalVariable(name: "addr", arg: 2, scope: !7142, file: !7143, line: 139, type: !7112)
!7147 = !DILocation(line: 139, column: 25, scope: !7142)
!7148 = !DILocation(line: 139, column: 59, scope: !7142)
!7149 = !DILocation(line: 141, column: 25, scope: !7142)
!7150 = !DILocation(line: 141, column: 32, scope: !7142)
!7151 = !DILocation(line: 141, column: 30, scope: !7142)
!7152 = !DILocation(line: 141, column: 2, scope: !7142)
!7153 = !DILocation(line: 142, column: 23, scope: !7142)
!7154 = !DILocation(line: 142, column: 27, scope: !7142)
!7155 = !DILocation(line: 142, column: 9, scope: !7142)
!7156 = !DILocation(line: 142, column: 2, scope: !7142)
!7157 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7158, file: !7158, line: 66, type: !7159, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7164)
!7158 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7159 = !DISubroutineType(types: !7160)
!7160 = !{null, !7161, !569}
!7161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7162, size: 64)
!7162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7163)
!7163 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7164 = !{!7165, !7166}
!7165 = !DILocalVariable(name: "v", arg: 1, scope: !7157, file: !7158, line: 66, type: !7161)
!7166 = !DILocalVariable(name: "size", arg: 2, scope: !7157, file: !7158, line: 66, type: !569)
!7167 = !DILocation(line: 66, column: 73, scope: !7157)
!7168 = !DILocation(line: 66, column: 83, scope: !7157)
!7169 = !DILocation(line: 68, column: 19, scope: !7157)
!7170 = !DILocation(line: 68, column: 22, scope: !7157)
!7171 = !DILocation(line: 68, column: 2, scope: !7157)
!7172 = !DILocation(line: 69, column: 2, scope: !7157)
!7173 = !DILocation(line: 70, column: 1, scope: !7157)
!7174 = distinct !DISubprogram(name: "arch_test_bit", scope: !7175, file: !7175, line: 237, type: !7110, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7176)
!7175 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7176 = !{!7177, !7178}
!7177 = !DILocalVariable(name: "nr", arg: 1, scope: !7174, file: !7175, line: 237, type: !166)
!7178 = !DILocalVariable(name: "addr", arg: 2, scope: !7174, file: !7175, line: 237, type: !7112)
!7179 = !DILocation(line: 237, column: 29, scope: !7174)
!7180 = !DILocation(line: 237, column: 63, scope: !7174)
!7181 = !DILocation(line: 239, column: 30, scope: !7174)
!7182 = !DILocation(line: 239, column: 9, scope: !7174)
!7183 = !DILocation(line: 239, column: 54, scope: !7174)
!7184 = !DILocation(line: 239, column: 58, scope: !7174)
!7185 = !DILocation(line: 239, column: 36, scope: !7174)
!7186 = !DILocation(line: 240, column: 26, scope: !7174)
!7187 = !DILocation(line: 240, column: 30, scope: !7174)
!7188 = !DILocation(line: 240, column: 8, scope: !7174)
!7189 = !DILocation(line: 239, column: 2, scope: !7174)
!7190 = distinct !DISubprogram(name: "kasan_check_read", scope: !7191, file: !7191, line: 40, type: !7192, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7194)
!7191 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7192 = !DISubroutineType(types: !7193)
!7193 = !{!812, !7161, !7}
!7194 = !{!7195, !7196}
!7195 = !DILocalVariable(name: "p", arg: 1, scope: !7190, file: !7191, line: 40, type: !7161)
!7196 = !DILocalVariable(name: "size", arg: 2, scope: !7190, file: !7191, line: 40, type: !7)
!7197 = !DILocation(line: 40, column: 58, scope: !7190)
!7198 = !DILocation(line: 40, column: 74, scope: !7190)
!7199 = !DILocation(line: 42, column: 2, scope: !7190)
!7200 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7201, file: !7201, line: 229, type: !7202, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7204)
!7201 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7202 = !DISubroutineType(types: !7203)
!7203 = !{null, !7161, !569, !87}
!7204 = !{!7205, !7206, !7207}
!7205 = !DILocalVariable(name: "ptr", arg: 1, scope: !7200, file: !7201, line: 229, type: !7161)
!7206 = !DILocalVariable(name: "size", arg: 2, scope: !7200, file: !7201, line: 229, type: !569)
!7207 = !DILocalVariable(name: "type", arg: 3, scope: !7200, file: !7201, line: 230, type: !87)
!7208 = !DILocation(line: 229, column: 60, scope: !7200)
!7209 = !DILocation(line: 229, column: 72, scope: !7200)
!7210 = !DILocation(line: 230, column: 15, scope: !7200)
!7211 = !DILocation(line: 230, column: 23, scope: !7200)
!7212 = distinct !DISubprogram(name: "constant_test_bit", scope: !7175, file: !7175, line: 204, type: !7213, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7215)
!7213 = !DISubroutineType(types: !7214)
!7214 = !{!812, !559, !7112}
!7215 = !{!7216, !7217}
!7216 = !DILocalVariable(name: "nr", arg: 1, scope: !7212, file: !7175, line: 204, type: !559)
!7217 = !DILocalVariable(name: "addr", arg: 2, scope: !7212, file: !7175, line: 204, type: !7112)
!7218 = !DILocation(line: 204, column: 52, scope: !7212)
!7219 = !DILocation(line: 204, column: 86, scope: !7212)
!7220 = !DILocation(line: 206, column: 19, scope: !7212)
!7221 = !DILocation(line: 206, column: 22, scope: !7212)
!7222 = !DILocation(line: 206, column: 15, scope: !7212)
!7223 = !DILocation(line: 207, column: 4, scope: !7212)
!7224 = !DILocation(line: 207, column: 9, scope: !7212)
!7225 = !DILocation(line: 207, column: 12, scope: !7212)
!7226 = !DILocation(line: 206, column: 44, scope: !7212)
!7227 = !DILocation(line: 207, column: 37, scope: !7212)
!7228 = !DILocation(line: 206, column: 2, scope: !7212)
!7229 = distinct !DISubprogram(name: "variable_test_bit", scope: !7175, file: !7175, line: 224, type: !7213, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7230)
!7230 = !{!7231, !7232, !7233}
!7231 = !DILocalVariable(name: "nr", arg: 1, scope: !7229, file: !7175, line: 224, type: !559)
!7232 = !DILocalVariable(name: "addr", arg: 2, scope: !7229, file: !7175, line: 224, type: !7112)
!7233 = !DILocalVariable(name: "oldbit", scope: !7229, file: !7175, line: 226, type: !812)
!7234 = !DILocation(line: 224, column: 52, scope: !7229)
!7235 = !DILocation(line: 224, column: 86, scope: !7229)
!7236 = !DILocation(line: 226, column: 2, scope: !7229)
!7237 = !DILocation(line: 226, column: 7, scope: !7229)
!7238 = !DILocation(line: 231, column: 33, scope: !7229)
!7239 = !DILocation(line: 231, column: 46, scope: !7229)
!7240 = !DILocation(line: 228, column: 2, scope: !7229)
!7241 = !{i64 2148217628, i64 2148217702}
!7242 = !DILocation(line: 233, column: 9, scope: !7229)
!7243 = !DILocation(line: 234, column: 1, scope: !7229)
!7244 = !DILocation(line: 233, column: 2, scope: !7229)
!7245 = distinct !DISubprogram(name: "set_bit", scope: !7246, file: !7246, line: 26, type: !7247, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7250)
!7246 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!7247 = !DISubroutineType(types: !7248)
!7248 = !{null, !559, !7249}
!7249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7114, size: 64)
!7250 = !{!7251, !7252}
!7251 = !DILocalVariable(name: "nr", arg: 1, scope: !7245, file: !7246, line: 26, type: !559)
!7252 = !DILocalVariable(name: "addr", arg: 2, scope: !7245, file: !7246, line: 26, type: !7249)
!7253 = !DILocation(line: 26, column: 42, scope: !7245)
!7254 = !DILocation(line: 26, column: 70, scope: !7245)
!7255 = !DILocation(line: 28, column: 26, scope: !7245)
!7256 = !DILocation(line: 28, column: 33, scope: !7245)
!7257 = !DILocation(line: 28, column: 31, scope: !7245)
!7258 = !DILocation(line: 28, column: 2, scope: !7245)
!7259 = !DILocation(line: 29, column: 15, scope: !7245)
!7260 = !DILocation(line: 29, column: 19, scope: !7245)
!7261 = !DILocation(line: 29, column: 2, scope: !7245)
!7262 = !DILocation(line: 30, column: 1, scope: !7245)
!7263 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !7158, file: !7158, line: 80, type: !7159, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7264)
!7264 = !{!7265, !7266}
!7265 = !DILocalVariable(name: "v", arg: 1, scope: !7263, file: !7158, line: 80, type: !7161)
!7266 = !DILocalVariable(name: "size", arg: 2, scope: !7263, file: !7158, line: 80, type: !569)
!7267 = !DILocation(line: 80, column: 74, scope: !7263)
!7268 = !DILocation(line: 80, column: 84, scope: !7263)
!7269 = !DILocation(line: 82, column: 20, scope: !7263)
!7270 = !DILocation(line: 82, column: 23, scope: !7263)
!7271 = !DILocation(line: 82, column: 2, scope: !7263)
!7272 = !DILocation(line: 83, column: 2, scope: !7263)
!7273 = !DILocation(line: 84, column: 1, scope: !7263)
!7274 = distinct !DISubprogram(name: "arch_set_bit", scope: !7175, file: !7175, line: 52, type: !7247, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7275)
!7275 = !{!7276, !7277}
!7276 = !DILocalVariable(name: "nr", arg: 1, scope: !7274, file: !7175, line: 52, type: !559)
!7277 = !DILocalVariable(name: "addr", arg: 2, scope: !7274, file: !7175, line: 52, type: !7249)
!7278 = !DILocation(line: 52, column: 19, scope: !7274)
!7279 = !DILocation(line: 52, column: 47, scope: !7274)
!7280 = !DILocation(line: 54, column: 27, scope: !7281)
!7281 = distinct !DILexicalBlock(scope: !7274, file: !7175, line: 54, column: 6)
!7282 = !DILocation(line: 54, column: 6, scope: !7281)
!7283 = !DILocation(line: 54, column: 6, scope: !7274)
!7284 = !DILocation(line: 56, column: 6, scope: !7285)
!7285 = distinct !DILexicalBlock(scope: !7281, file: !7175, line: 54, column: 32)
!7286 = !DILocation(line: 57, column: 12, scope: !7285)
!7287 = !DILocation(line: 55, column: 3, scope: !7285)
!7288 = !{i64 2148204016, i64 2148204055, i64 2148204076, i64 2148204113, i64 2148204136, i64 2148204006}
!7289 = !DILocation(line: 59, column: 2, scope: !7285)
!7290 = !DILocation(line: 61, column: 8, scope: !7291)
!7291 = distinct !DILexicalBlock(scope: !7281, file: !7175, line: 59, column: 9)
!7292 = !DILocation(line: 61, column: 32, scope: !7291)
!7293 = !DILocation(line: 60, column: 3, scope: !7291)
!7294 = !{i64 2148204301, i64 2148204340, i64 2148204361, i64 2148204398, i64 2148204421, i64 2148204291}
!7295 = !DILocation(line: 63, column: 1, scope: !7274)
!7296 = distinct !DISubprogram(name: "kasan_check_write", scope: !7191, file: !7191, line: 44, type: !7192, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7297)
!7297 = !{!7298, !7299}
!7298 = !DILocalVariable(name: "p", arg: 1, scope: !7296, file: !7191, line: 44, type: !7161)
!7299 = !DILocalVariable(name: "size", arg: 2, scope: !7296, file: !7191, line: 44, type: !7)
!7300 = !DILocation(line: 44, column: 59, scope: !7296)
!7301 = !DILocation(line: 44, column: 75, scope: !7296)
!7302 = !DILocation(line: 46, column: 2, scope: !7296)
!7303 = distinct !DISubprogram(name: "hash", scope: !3, file: !3, line: 131, type: !7304, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7306)
!7304 = !DISubroutineType(types: !7305)
!7305 = !{!87, !161, !346}
!7306 = !{!7307, !7308}
!7307 = !DILocalVariable(name: "journal", arg: 1, scope: !7303, file: !3, line: 131, type: !161)
!7308 = !DILocalVariable(name: "block", arg: 2, scope: !7303, file: !3, line: 131, type: !346)
!7309 = !DILocation(line: 131, column: 35, scope: !7303)
!7310 = !DILocation(line: 131, column: 63, scope: !7303)
!7311 = !DILocation(line: 133, column: 17, scope: !7303)
!7312 = !DILocation(line: 133, column: 24, scope: !7303)
!7313 = !DILocation(line: 133, column: 33, scope: !7303)
!7314 = !DILocation(line: 133, column: 43, scope: !7303)
!7315 = !DILocation(line: 133, column: 9, scope: !7303)
!7316 = !DILocation(line: 133, column: 2, scope: !7303)
!7317 = distinct !DISubprogram(name: "list_add", scope: !6265, file: !6265, line: 167, type: !7318, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7320)
!7318 = !DISubroutineType(types: !7319)
!7319 = !{null, !229, !229}
!7320 = !{!7321, !7322}
!7321 = !DILocalVariable(name: "new", arg: 1, scope: !7317, file: !6265, line: 167, type: !229)
!7322 = !DILocalVariable(name: "head", arg: 2, scope: !7317, file: !6265, line: 167, type: !229)
!7323 = !DILocation(line: 167, column: 47, scope: !7317)
!7324 = !DILocation(line: 167, column: 70, scope: !7317)
!7325 = !DILocation(line: 169, column: 13, scope: !7317)
!7326 = !DILocation(line: 169, column: 18, scope: !7317)
!7327 = !DILocation(line: 169, column: 24, scope: !7317)
!7328 = !DILocation(line: 169, column: 30, scope: !7317)
!7329 = !DILocation(line: 169, column: 2, scope: !7317)
!7330 = !DILocation(line: 170, column: 1, scope: !7317)
!7331 = distinct !DISubprogram(name: "hash_64_generic", scope: !7332, file: !7332, line: 74, type: !7333, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7335)
!7332 = !DIFile(filename: "./include/linux/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38c20be4852b6978c0a05b86a66f0046")
!7333 = !DISubroutineType(types: !7334)
!7334 = !{!340, !344, !7}
!7335 = !{!7336, !7337}
!7336 = !DILocalVariable(name: "val", arg: 1, scope: !7331, file: !7332, line: 74, type: !344)
!7337 = !DILocalVariable(name: "bits", arg: 2, scope: !7331, file: !7332, line: 74, type: !7)
!7338 = !DILocation(line: 74, column: 48, scope: !7331)
!7339 = !DILocation(line: 74, column: 66, scope: !7331)
!7340 = !DILocation(line: 78, column: 9, scope: !7331)
!7341 = !DILocation(line: 78, column: 13, scope: !7331)
!7342 = !DILocation(line: 78, column: 40, scope: !7331)
!7343 = !DILocation(line: 78, column: 38, scope: !7331)
!7344 = !DILocation(line: 78, column: 31, scope: !7331)
!7345 = !DILocation(line: 78, column: 2, scope: !7331)
!7346 = distinct !DISubprogram(name: "__list_add", scope: !6265, file: !6265, line: 146, type: !7347, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7349)
!7347 = !DISubroutineType(types: !7348)
!7348 = !{null, !229, !229, !229}
!7349 = !{!7350, !7351, !7352}
!7350 = !DILocalVariable(name: "new", arg: 1, scope: !7346, file: !6265, line: 146, type: !229)
!7351 = !DILocalVariable(name: "prev", arg: 2, scope: !7346, file: !6265, line: 147, type: !229)
!7352 = !DILocalVariable(name: "next", arg: 3, scope: !7346, file: !6265, line: 148, type: !229)
!7353 = !DILocation(line: 146, column: 49, scope: !7346)
!7354 = !DILocation(line: 147, column: 28, scope: !7346)
!7355 = !DILocation(line: 148, column: 28, scope: !7346)
!7356 = !DILocation(line: 150, column: 24, scope: !7357)
!7357 = distinct !DILexicalBlock(scope: !7346, file: !6265, line: 150, column: 6)
!7358 = !DILocation(line: 150, column: 29, scope: !7357)
!7359 = !DILocation(line: 150, column: 35, scope: !7357)
!7360 = !DILocation(line: 150, column: 7, scope: !7357)
!7361 = !DILocation(line: 150, column: 6, scope: !7346)
!7362 = !DILocation(line: 151, column: 3, scope: !7357)
!7363 = !DILocation(line: 153, column: 15, scope: !7346)
!7364 = !DILocation(line: 153, column: 2, scope: !7346)
!7365 = !DILocation(line: 153, column: 8, scope: !7346)
!7366 = !DILocation(line: 153, column: 13, scope: !7346)
!7367 = !DILocation(line: 154, column: 14, scope: !7346)
!7368 = !DILocation(line: 154, column: 2, scope: !7346)
!7369 = !DILocation(line: 154, column: 7, scope: !7346)
!7370 = !DILocation(line: 154, column: 12, scope: !7346)
!7371 = !DILocation(line: 155, column: 14, scope: !7346)
!7372 = !DILocation(line: 155, column: 2, scope: !7346)
!7373 = !DILocation(line: 155, column: 7, scope: !7346)
!7374 = !DILocation(line: 155, column: 12, scope: !7346)
!7375 = !DILocation(line: 156, column: 2, scope: !7346)
!7376 = !DILocation(line: 156, column: 2, scope: !7377)
!7377 = distinct !DILexicalBlock(scope: !7346, file: !6265, line: 156, column: 2)
!7378 = !DILocation(line: 156, column: 2, scope: !7379)
!7379 = distinct !DILexicalBlock(scope: !7377, file: !6265, line: 156, column: 2)
!7380 = !DILocation(line: 156, column: 2, scope: !7381)
!7381 = distinct !DILexicalBlock(scope: !7377, file: !6265, line: 156, column: 2)
!7382 = !DILocation(line: 157, column: 1, scope: !7346)
!7383 = distinct !DISubprogram(name: "__list_add_valid", scope: !6265, file: !6265, line: 128, type: !7384, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7386)
!7384 = !DISubroutineType(types: !7385)
!7385 = !{!812, !229, !229, !229}
!7386 = !{!7387, !7388, !7389}
!7387 = !DILocalVariable(name: "new", arg: 1, scope: !7383, file: !6265, line: 128, type: !229)
!7388 = !DILocalVariable(name: "prev", arg: 2, scope: !7383, file: !6265, line: 129, type: !229)
!7389 = !DILocalVariable(name: "next", arg: 3, scope: !7383, file: !6265, line: 130, type: !229)
!7390 = !DILocation(line: 128, column: 55, scope: !7383)
!7391 = !DILocation(line: 129, column: 23, scope: !7383)
!7392 = !DILocation(line: 130, column: 23, scope: !7383)
!7393 = !DILocation(line: 132, column: 2, scope: !7383)
!7394 = distinct !DISubprogram(name: "test_and_set_bit", scope: !7246, file: !7246, line: 68, type: !7395, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7397)
!7395 = !DISubroutineType(types: !7396)
!7396 = !{!812, !559, !7249}
!7397 = !{!7398, !7399}
!7398 = !DILocalVariable(name: "nr", arg: 1, scope: !7394, file: !7246, line: 68, type: !559)
!7399 = !DILocalVariable(name: "addr", arg: 2, scope: !7394, file: !7246, line: 68, type: !7249)
!7400 = !DILocation(line: 68, column: 51, scope: !7394)
!7401 = !DILocation(line: 68, column: 79, scope: !7394)
!7402 = !DILocation(line: 70, column: 2, scope: !7394)
!7403 = !DILocation(line: 70, column: 2, scope: !7404)
!7404 = distinct !DILexicalBlock(scope: !7394, file: !7246, line: 70, column: 2)
!7405 = !DILocation(line: 71, column: 31, scope: !7394)
!7406 = !DILocation(line: 71, column: 38, scope: !7394)
!7407 = !DILocation(line: 71, column: 36, scope: !7394)
!7408 = !DILocation(line: 71, column: 2, scope: !7394)
!7409 = !DILocation(line: 72, column: 31, scope: !7394)
!7410 = !DILocation(line: 72, column: 35, scope: !7394)
!7411 = !DILocation(line: 72, column: 9, scope: !7394)
!7412 = !DILocation(line: 72, column: 2, scope: !7394)
!7413 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7158, file: !7158, line: 94, type: !7159, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7414)
!7414 = !{!7415, !7416}
!7415 = !DILocalVariable(name: "v", arg: 1, scope: !7413, file: !7158, line: 94, type: !7161)
!7416 = !DILocalVariable(name: "size", arg: 2, scope: !7413, file: !7158, line: 94, type: !569)
!7417 = !DILocation(line: 94, column: 79, scope: !7413)
!7418 = !DILocation(line: 94, column: 89, scope: !7413)
!7419 = !DILocation(line: 96, column: 20, scope: !7413)
!7420 = !DILocation(line: 96, column: 23, scope: !7413)
!7421 = !DILocation(line: 96, column: 2, scope: !7413)
!7422 = !DILocation(line: 97, column: 2, scope: !7413)
!7423 = !DILocation(line: 98, column: 1, scope: !7413)
!7424 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !7175, file: !7175, line: 136, type: !7395, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7425)
!7425 = !{!7426, !7427, !7428}
!7426 = !DILocalVariable(name: "nr", arg: 1, scope: !7424, file: !7175, line: 136, type: !559)
!7427 = !DILocalVariable(name: "addr", arg: 2, scope: !7424, file: !7175, line: 136, type: !7249)
!7428 = !DILocalVariable(name: "c", scope: !7429, file: !7175, line: 138, type: !812)
!7429 = distinct !DILexicalBlock(scope: !7424, file: !7175, line: 138, column: 9)
!7430 = !DILocation(line: 136, column: 28, scope: !7424)
!7431 = !DILocation(line: 136, column: 56, scope: !7424)
!7432 = !DILocation(line: 138, column: 9, scope: !7429)
!7433 = !{i64 2148210467, i64 2148210506, i64 2148210527, i64 2148210564, i64 2148210587, i64 2148210596, i64 2148210699}
!7434 = !DILocation(line: 138, column: 9, scope: !7424)
!7435 = !DILocation(line: 138, column: 2, scope: !7424)
!7436 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !7246, file: !7246, line: 82, type: !7395, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7437)
!7437 = !{!7438, !7439}
!7438 = !DILocalVariable(name: "nr", arg: 1, scope: !7436, file: !7246, line: 82, type: !559)
!7439 = !DILocalVariable(name: "addr", arg: 2, scope: !7436, file: !7246, line: 82, type: !7249)
!7440 = !DILocation(line: 82, column: 53, scope: !7436)
!7441 = !DILocation(line: 82, column: 81, scope: !7436)
!7442 = !DILocation(line: 84, column: 2, scope: !7436)
!7443 = !DILocation(line: 84, column: 2, scope: !7444)
!7444 = distinct !DILexicalBlock(scope: !7436, file: !7246, line: 84, column: 2)
!7445 = !DILocation(line: 85, column: 31, scope: !7436)
!7446 = !DILocation(line: 85, column: 38, scope: !7436)
!7447 = !DILocation(line: 85, column: 36, scope: !7436)
!7448 = !DILocation(line: 85, column: 2, scope: !7436)
!7449 = !DILocation(line: 86, column: 33, scope: !7436)
!7450 = !DILocation(line: 86, column: 37, scope: !7436)
!7451 = !DILocation(line: 86, column: 9, scope: !7436)
!7452 = !DILocation(line: 86, column: 2, scope: !7436)
!7453 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !7175, file: !7175, line: 160, type: !7395, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7454)
!7454 = !{!7455, !7456, !7457}
!7455 = !DILocalVariable(name: "nr", arg: 1, scope: !7453, file: !7175, line: 160, type: !559)
!7456 = !DILocalVariable(name: "addr", arg: 2, scope: !7453, file: !7175, line: 160, type: !7249)
!7457 = !DILocalVariable(name: "c", scope: !7458, file: !7175, line: 162, type: !812)
!7458 = distinct !DILexicalBlock(scope: !7453, file: !7175, line: 162, column: 9)
!7459 = !DILocation(line: 160, column: 30, scope: !7453)
!7460 = !DILocation(line: 160, column: 58, scope: !7453)
!7461 = !DILocation(line: 162, column: 9, scope: !7458)
!7462 = !{i64 2148213369, i64 2148213408, i64 2148213429, i64 2148213466, i64 2148213489, i64 2148213498, i64 2148213601}
!7463 = !DILocation(line: 162, column: 9, scope: !7453)
!7464 = !DILocation(line: 162, column: 2, scope: !7453)
!7465 = distinct !DISubprogram(name: "clear_bit", scope: !7246, file: !7246, line: 39, type: !7247, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7466)
!7466 = !{!7467, !7468}
!7467 = !DILocalVariable(name: "nr", arg: 1, scope: !7465, file: !7246, line: 39, type: !559)
!7468 = !DILocalVariable(name: "addr", arg: 2, scope: !7465, file: !7246, line: 39, type: !7249)
!7469 = !DILocation(line: 39, column: 44, scope: !7465)
!7470 = !DILocation(line: 39, column: 72, scope: !7465)
!7471 = !DILocation(line: 41, column: 26, scope: !7465)
!7472 = !DILocation(line: 41, column: 33, scope: !7465)
!7473 = !DILocation(line: 41, column: 31, scope: !7465)
!7474 = !DILocation(line: 41, column: 2, scope: !7465)
!7475 = !DILocation(line: 42, column: 17, scope: !7465)
!7476 = !DILocation(line: 42, column: 21, scope: !7465)
!7477 = !DILocation(line: 42, column: 2, scope: !7465)
!7478 = !DILocation(line: 43, column: 1, scope: !7465)
!7479 = distinct !DISubprogram(name: "arch_clear_bit", scope: !7175, file: !7175, line: 72, type: !7247, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7480)
!7480 = !{!7481, !7482}
!7481 = !DILocalVariable(name: "nr", arg: 1, scope: !7479, file: !7175, line: 72, type: !559)
!7482 = !DILocalVariable(name: "addr", arg: 2, scope: !7479, file: !7175, line: 72, type: !7249)
!7483 = !DILocation(line: 72, column: 21, scope: !7479)
!7484 = !DILocation(line: 72, column: 49, scope: !7479)
!7485 = !DILocation(line: 74, column: 27, scope: !7486)
!7486 = distinct !DILexicalBlock(scope: !7479, file: !7175, line: 74, column: 6)
!7487 = !DILocation(line: 74, column: 6, scope: !7486)
!7488 = !DILocation(line: 74, column: 6, scope: !7479)
!7489 = !DILocation(line: 76, column: 6, scope: !7490)
!7490 = distinct !DILexicalBlock(scope: !7486, file: !7175, line: 74, column: 32)
!7491 = !DILocation(line: 77, column: 13, scope: !7490)
!7492 = !DILocation(line: 77, column: 12, scope: !7490)
!7493 = !DILocation(line: 75, column: 3, scope: !7490)
!7494 = !{i64 2148205304, i64 2148205343, i64 2148205364, i64 2148205401, i64 2148205424, i64 2148205294}
!7495 = !DILocation(line: 78, column: 2, scope: !7490)
!7496 = !DILocation(line: 80, column: 8, scope: !7497)
!7497 = distinct !DILexicalBlock(scope: !7486, file: !7175, line: 78, column: 9)
!7498 = !DILocation(line: 80, column: 32, scope: !7497)
!7499 = !DILocation(line: 79, column: 3, scope: !7497)
!7500 = !{i64 2148205589, i64 2148205628, i64 2148205649, i64 2148205686, i64 2148205709, i64 2148205579}
!7501 = !DILocation(line: 82, column: 1, scope: !7479)
!7502 = !DISubprogram(name: "_raw_spin_lock", scope: !7503, file: !7503, line: 22, type: !7504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7503 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7504 = !DISubroutineType(types: !7505)
!7505 = !{null, !5687}
!7506 = distinct !DISubprogram(name: "__list_del_entry", scope: !6265, file: !6265, line: 213, type: !6266, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7507)
!7507 = !{!7508}
!7508 = !DILocalVariable(name: "entry", arg: 1, scope: !7506, file: !6265, line: 213, type: !229)
!7509 = !DILocation(line: 213, column: 55, scope: !7506)
!7510 = !DILocation(line: 215, column: 30, scope: !7511)
!7511 = distinct !DILexicalBlock(scope: !7506, file: !6265, line: 215, column: 6)
!7512 = !DILocation(line: 215, column: 7, scope: !7511)
!7513 = !DILocation(line: 215, column: 6, scope: !7506)
!7514 = !DILocation(line: 216, column: 3, scope: !7511)
!7515 = !DILocation(line: 218, column: 13, scope: !7506)
!7516 = !DILocation(line: 218, column: 20, scope: !7506)
!7517 = !DILocation(line: 218, column: 26, scope: !7506)
!7518 = !DILocation(line: 218, column: 33, scope: !7506)
!7519 = !DILocation(line: 218, column: 2, scope: !7506)
!7520 = !DILocation(line: 219, column: 1, scope: !7506)
!7521 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6265, file: !6265, line: 134, type: !7522, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7524)
!7522 = !DISubroutineType(types: !7523)
!7523 = !{!812, !229}
!7524 = !{!7525}
!7525 = !DILocalVariable(name: "entry", arg: 1, scope: !7521, file: !6265, line: 134, type: !229)
!7526 = !DILocation(line: 134, column: 61, scope: !7521)
!7527 = !DILocation(line: 136, column: 2, scope: !7521)
!7528 = distinct !DISubprogram(name: "__list_del", scope: !6265, file: !6265, line: 193, type: !7318, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7529)
!7529 = !{!7530, !7531}
!7530 = !DILocalVariable(name: "prev", arg: 1, scope: !7528, file: !6265, line: 193, type: !229)
!7531 = !DILocalVariable(name: "next", arg: 2, scope: !7528, file: !6265, line: 193, type: !229)
!7532 = !DILocation(line: 193, column: 50, scope: !7528)
!7533 = !DILocation(line: 193, column: 75, scope: !7528)
!7534 = !DILocation(line: 195, column: 15, scope: !7528)
!7535 = !DILocation(line: 195, column: 2, scope: !7528)
!7536 = !DILocation(line: 195, column: 8, scope: !7528)
!7537 = !DILocation(line: 195, column: 13, scope: !7528)
!7538 = !DILocation(line: 196, column: 2, scope: !7528)
!7539 = !DILocation(line: 196, column: 2, scope: !7540)
!7540 = distinct !DILexicalBlock(scope: !7528, file: !6265, line: 196, column: 2)
!7541 = !DILocation(line: 196, column: 2, scope: !7542)
!7542 = distinct !DILexicalBlock(scope: !7540, file: !6265, line: 196, column: 2)
!7543 = !DILocation(line: 196, column: 2, scope: !7544)
!7544 = distinct !DILexicalBlock(scope: !7540, file: !6265, line: 196, column: 2)
!7545 = !DILocation(line: 197, column: 1, scope: !7528)
!7546 = !DISubprogram(name: "_raw_spin_unlock", scope: !7503, file: !7503, line: 39, type: !7504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7547 = distinct !DISubprogram(name: "is_journal_aborted", scope: !157, file: !157, line: 1686, type: !7548, scopeLine: 1687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7550)
!7548 = !DISubroutineType(types: !7549)
!7549 = !{!87, !161}
!7550 = !{!7551}
!7551 = !DILocalVariable(name: "journal", arg: 1, scope: !7547, file: !157, line: 1686, type: !161)
!7552 = !DILocation(line: 1686, column: 49, scope: !7547)
!7553 = !DILocation(line: 1688, column: 9, scope: !7547)
!7554 = !DILocation(line: 1688, column: 18, scope: !7547)
!7555 = !DILocation(line: 1688, column: 26, scope: !7547)
!7556 = !DILocation(line: 1688, column: 2, scope: !7547)
!7557 = distinct !DISubprogram(name: "jbd2_journal_has_csum_v2or3", scope: !157, file: !157, line: 1728, type: !7548, scopeLine: 1729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7558)
!7558 = !{!7559, !7560, !7562}
!7559 = !DILocalVariable(name: "journal", arg: 1, scope: !7557, file: !157, line: 1728, type: !161)
!7560 = !DILocalVariable(name: "__ret_warn_on", scope: !7561, file: !157, line: 1730, type: !87)
!7561 = distinct !DILexicalBlock(scope: !7557, file: !157, line: 1730, column: 2)
!7562 = !DILocalVariable(name: "__flags", scope: !7563, file: !157, line: 1730, type: !87)
!7563 = distinct !DILexicalBlock(scope: !7564, file: !157, line: 1730, column: 2)
!7564 = distinct !DILexicalBlock(scope: !7561, file: !157, line: 1730, column: 2)
!7565 = !DILocation(line: 1728, column: 58, scope: !7557)
!7566 = !DILocation(line: 1730, column: 2, scope: !7561)
!7567 = !DILocation(line: 0, scope: !7561)
!7568 = !DILocation(line: 1730, column: 2, scope: !7564)
!7569 = !DILocation(line: 1730, column: 2, scope: !7563)
!7570 = !DILocation(line: 1730, column: 2, scope: !7571)
!7571 = distinct !DILexicalBlock(scope: !7563, file: !157, line: 1730, column: 2)
!7572 = !DILocation(line: 1730, column: 2, scope: !7573)
!7573 = distinct !DILexicalBlock(scope: !7563, file: !157, line: 1730, column: 2)
!7574 = !{i64 2155545450, i64 2155545479, i64 2155545525, i64 2155545583, i64 2155545637, i64 2155545691, i64 2155545746, i64 2155545777, i64 2155546085, i64 2155546091, i64 2155546138, i64 2155546161, i64 2155546187}
!7575 = !DILocation(line: 1730, column: 2, scope: !7576)
!7576 = distinct !DILexicalBlock(scope: !7563, file: !157, line: 1730, column: 2)
!7577 = !DILocation(line: 1730, column: 2, scope: !7557)
!7578 = !DILocation(line: 1733, column: 9, scope: !7557)
!7579 = !DILocation(line: 1733, column: 18, scope: !7557)
!7580 = !DILocation(line: 1733, column: 34, scope: !7557)
!7581 = !DILocation(line: 1733, column: 2, scope: !7557)
!7582 = distinct !DISubprogram(name: "jbd2_has_feature_64bit", scope: !157, file: !157, line: 1378, type: !7583, scopeLine: 1378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7585)
!7583 = !DISubroutineType(types: !7584)
!7584 = !{!812, !161}
!7585 = !{!7586}
!7586 = !DILocalVariable(name: "j", arg: 1, scope: !7582, file: !157, line: 1378, type: !161)
!7587 = !DILocation(line: 1378, column: 1, scope: !7582)
!7588 = !DILocation(line: 0, scope: !7582)
!7589 = !DISubprogram(name: "jbd2_journal_get_descriptor_buffer", scope: !157, file: !157, line: 1436, type: !7590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7590 = !DISubroutineType(types: !7591)
!7591 = !{!232, !5016, !87}
!7592 = distinct !DISubprogram(name: "jbd2_file_log_bh", scope: !157, file: !157, line: 1426, type: !7593, scopeLine: 1427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7595)
!7593 = !DISubroutineType(types: !7594)
!7594 = !{null, !229, !232}
!7595 = !{!7596, !7597}
!7596 = !DILocalVariable(name: "head", arg: 1, scope: !7592, file: !157, line: 1426, type: !229)
!7597 = !DILocalVariable(name: "bh", arg: 2, scope: !7592, file: !157, line: 1426, type: !232)
!7598 = !DILocation(line: 1426, column: 55, scope: !7592)
!7599 = !DILocation(line: 1426, column: 81, scope: !7592)
!7600 = !DILocation(line: 1428, column: 17, scope: !7592)
!7601 = !DILocation(line: 1428, column: 21, scope: !7592)
!7602 = !DILocation(line: 1428, column: 38, scope: !7592)
!7603 = !DILocation(line: 1428, column: 2, scope: !7592)
!7604 = !DILocation(line: 1429, column: 1, scope: !7592)
!7605 = distinct !DISubprogram(name: "jbd2_journal_has_csum_v2or3_feature", scope: !157, file: !157, line: 1723, type: !7583, scopeLine: 1724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7606)
!7606 = !{!7607}
!7607 = !DILocalVariable(name: "j", arg: 1, scope: !7605, file: !157, line: 1723, type: !161)
!7608 = !DILocation(line: 1723, column: 67, scope: !7605)
!7609 = !DILocation(line: 1725, column: 32, scope: !7605)
!7610 = !DILocation(line: 1725, column: 9, scope: !7605)
!7611 = !DILocation(line: 1725, column: 35, scope: !7605)
!7612 = !DILocation(line: 1725, column: 61, scope: !7605)
!7613 = !DILocation(line: 1725, column: 38, scope: !7605)
!7614 = !DILocation(line: 1725, column: 2, scope: !7605)
!7615 = distinct !DISubprogram(name: "jbd2_has_feature_csum2", scope: !157, file: !157, line: 1380, type: !7583, scopeLine: 1380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7616)
!7616 = !{!7617}
!7617 = !DILocalVariable(name: "j", arg: 1, scope: !7615, file: !157, line: 1380, type: !161)
!7618 = !DILocation(line: 1380, column: 1, scope: !7615)
!7619 = !DILocation(line: 0, scope: !7615)
!7620 = distinct !DISubprogram(name: "jbd2_has_feature_csum3", scope: !157, file: !157, line: 1381, type: !7583, scopeLine: 1381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7621)
!7621 = !{!7622}
!7622 = !DILocalVariable(name: "j", arg: 1, scope: !7620, file: !157, line: 1381, type: !161)
!7623 = !DILocation(line: 1381, column: 1, scope: !7620)
!7624 = !DILocation(line: 0, scope: !7620)
!7625 = distinct !DISubprogram(name: "jbd2_format_support_feature", scope: !157, file: !157, line: 1314, type: !7583, scopeLine: 1315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7626)
!7626 = !{!7627}
!7627 = !DILocalVariable(name: "j", arg: 1, scope: !7625, file: !157, line: 1314, type: !161)
!7628 = !DILocation(line: 1314, column: 59, scope: !7625)
!7629 = !DILocation(line: 1316, column: 9, scope: !7625)
!7630 = !DILocation(line: 1316, column: 12, scope: !7625)
!7631 = !DILocation(line: 1316, column: 26, scope: !7625)
!7632 = !DILocation(line: 1316, column: 35, scope: !7625)
!7633 = !DILocation(line: 1316, column: 47, scope: !7625)
!7634 = !DILocation(line: 1316, column: 2, scope: !7625)
!7635 = distinct !DISubprogram(name: "list_add_tail", scope: !6265, file: !6265, line: 181, type: !7318, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7636)
!7636 = !{!7637, !7638}
!7637 = !DILocalVariable(name: "new", arg: 1, scope: !7635, file: !6265, line: 181, type: !229)
!7638 = !DILocalVariable(name: "head", arg: 2, scope: !7635, file: !6265, line: 181, type: !229)
!7639 = !DILocation(line: 181, column: 52, scope: !7635)
!7640 = !DILocation(line: 181, column: 75, scope: !7635)
!7641 = !DILocation(line: 183, column: 13, scope: !7635)
!7642 = !DILocation(line: 183, column: 18, scope: !7635)
!7643 = !DILocation(line: 183, column: 24, scope: !7635)
!7644 = !DILocation(line: 183, column: 30, scope: !7635)
!7645 = !DILocation(line: 183, column: 2, scope: !7635)
!7646 = !DILocation(line: 184, column: 1, scope: !7635)
!7647 = !DISubprogram(name: "jbd2_descriptor_block_csum_set", scope: !157, file: !157, line: 1437, type: !7648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7648 = !DISubroutineType(types: !7649)
!7649 = !{null, !161, !232}
!7650 = distinct !DISubprogram(name: "set_buffer_jwrite", scope: !157, file: !157, line: 320, type: !5974, scopeLine: 320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7651)
!7651 = !{!7652}
!7652 = !DILocalVariable(name: "bh", arg: 1, scope: !7650, file: !157, line: 320, type: !232)
!7653 = !DILocation(line: 320, column: 1, scope: !7650)
!7654 = !DILocation(line: 320, column: 1, scope: !7655)
!7655 = distinct !DILexicalBlock(scope: !7650, file: !157, line: 320, column: 1)
!7656 = distinct !DISubprogram(name: "set_buffer_dirty", scope: !234, file: !234, line: 122, type: !5974, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7657)
!7657 = !{!7658}
!7658 = !DILocalVariable(name: "bh", arg: 1, scope: !7656, file: !234, line: 122, type: !232)
!7659 = !DILocation(line: 122, column: 1, scope: !7656)
!7660 = !DILocation(line: 122, column: 1, scope: !7661)
!7661 = distinct !DILexicalBlock(scope: !7656, file: !234, line: 122, column: 1)
!7662 = !DISubprogram(name: "write_dirty_buffer", scope: !234, file: !234, line: 243, type: !7663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7663 = !DISubroutineType(types: !7664)
!7664 = !{null, !232, !2441}
