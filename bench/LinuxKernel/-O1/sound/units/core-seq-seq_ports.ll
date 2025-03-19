; ModuleID = 'sound/core/seq/seq_ports.c'
source_filename = "sound/core/seq/seq_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_seq_event_port_attach: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_seq_event_port_attach ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_seq_event_port_detach: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_seq_event_port_detach ; .previous"

%struct.lock_class_key = type {}
%struct.snd_seq_client = type { i32, i8, i32, i32, [64 x i8], i32, i32, [4 x i64], i16, %struct.atomic_t, i32, i32, %struct.list_head, %struct.rwlock_t, %struct.mutex, %struct.mutex, i32, i32, ptr, %union.anon.15, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.13, %struct.qspinlock }
%union.anon.13 = type { %struct.atomic_t }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.15 = type { %struct.snd_seq_user_client }
%struct.snd_seq_user_client = type { ptr, ptr, ptr, i32 }
%struct.snd_seq_client_port = type { %struct.snd_seq_addr, ptr, [64 x i8], %struct.list_head, %struct.atomic_t, %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.snd_seq_addr = type { i8, i8 }
%struct.snd_seq_port_subs_info = type { %struct.list_head, i32, i8, %struct.rw_semaphore, %struct.rwlock_t, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.snd_seq_port_info = type { %struct.snd_seq_addr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i8, [57 x i8] }
%struct.snd_seq_subscribers = type { %struct.snd_seq_port_subscribe, %struct.list_head, %struct.list_head, %struct.atomic_t }
%struct.snd_seq_port_subscribe = type { %struct.snd_seq_addr, %struct.snd_seq_addr, i32, i32, i8, [3 x i8], [64 x i8] }

@.str = private unnamed_addr constant [43 x i8] c"\014ALSA: seq: too many ports for client %d\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"port-%d\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [13 x i8] c"Unnamed port\00", align 1, !dbg !12
@__UNIQUE_ID___addressable_snd_seq_event_port_attach271 = internal global ptr @snd_seq_event_port_attach, section ".discard.addressable", align 8, !dbg !17
@__UNIQUE_ID___addressable_snd_seq_event_port_detach272 = internal global ptr @snd_seq_event_port_detach, section ".discard.addressable", align 8, !dbg !4090
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4092
@port_subs_info_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4097
@.str.4 = private unnamed_addr constant [17 x i8] c"&grp->list_mutex\00", align 1, !dbg !4105
@.str.5 = private unnamed_addr constant [27 x i8] c"sound/core/seq/seq_ports.c\00", align 1, !dbg !4110
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_snd_seq_event_port_attach271, ptr @__UNIQUE_ID___addressable_snd_seq_event_port_detach272], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_seq_port_use_ptr(ptr noundef %client, i32 noundef %num) #0 align 16 !dbg !4124 {
entry:
  %retval = alloca ptr, align 8
  %client.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %port = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !4626, metadata !DIExpression()), !dbg !4635
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !4627, metadata !DIExpression()), !dbg !4636
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #17, !dbg !4637
  call void @llvm.dbg.declare(metadata ptr %port, metadata !4628, metadata !DIExpression()), !dbg !4638
  %0 = load ptr, ptr %client.addr, align 8, !dbg !4639
  %cmp = icmp eq ptr %0, null, !dbg !4641
  br i1 %cmp, label %if.then, label %if.end, !dbg !4642

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4643
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4643

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %client.addr, align 8, !dbg !4644
  %ports_lock = getelementptr inbounds %struct.snd_seq_client, ptr %1, i32 0, i32 13, !dbg !4644
  call void @_raw_read_lock(ptr noundef %ports_lock) #18, !dbg !4644
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4645
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4629, metadata !DIExpression()), !dbg !4645
  %2 = load ptr, ptr %client.addr, align 8, !dbg !4645
  %ports_list_head = getelementptr inbounds %struct.snd_seq_client, ptr %2, i32 0, i32 12, !dbg !4645
  %next = getelementptr inbounds %struct.list_head, ptr %ports_list_head, i32 0, i32 0, !dbg !4645
  %3 = load ptr, ptr %next, align 8, !dbg !4645
  store ptr %3, ptr %__mptr, align 8, !dbg !4645
  %4 = load ptr, ptr %__mptr, align 8, !dbg !4645
  %add.ptr = getelementptr i8, ptr %4, i64 -80, !dbg !4645
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4645
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4646
  %5 = load ptr, ptr %tmp, align 8, !dbg !4645
  store ptr %5, ptr %port, align 8, !dbg !4646
  br label %for.cond, !dbg !4646

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %port, align 8, !dbg !4647
  %list = getelementptr inbounds %struct.snd_seq_client_port, ptr %6, i32 0, i32 3, !dbg !4647
  %7 = load ptr, ptr %client.addr, align 8, !dbg !4647
  %ports_list_head1 = getelementptr inbounds %struct.snd_seq_client, ptr %7, i32 0, i32 12, !dbg !4647
  %cmp2 = icmp eq ptr %list, %ports_list_head1, !dbg !4647
  %lnot = xor i1 %cmp2, true, !dbg !4647
  br i1 %lnot, label %for.body, label %for.end, !dbg !4646

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %port, align 8, !dbg !4648
  %addr = getelementptr inbounds %struct.snd_seq_client_port, ptr %8, i32 0, i32 0, !dbg !4651
  %port3 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr, i32 0, i32 1, !dbg !4652
  %9 = load i8, ptr %port3, align 1, !dbg !4652
  %conv = zext i8 %9 to i32, !dbg !4648
  %10 = load i32, ptr %num.addr, align 4, !dbg !4653
  %cmp4 = icmp eq i32 %conv, %10, !dbg !4654
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !4655

if.then6:                                         ; preds = %for.body
  %11 = load ptr, ptr %port, align 8, !dbg !4656
  %closing = getelementptr inbounds %struct.snd_seq_client_port, ptr %11, i32 0, i32 10, !dbg !4659
  %bf.load = load i8, ptr %closing, align 8, !dbg !4659
  %bf.clear = and i8 %bf.load, 1, !dbg !4659
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4659
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4656
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !4660

if.then7:                                         ; preds = %if.then6
  br label %for.end, !dbg !4661

if.end8:                                          ; preds = %if.then6
  %12 = load ptr, ptr %port, align 8, !dbg !4662
  %use_lock = getelementptr inbounds %struct.snd_seq_client_port, ptr %12, i32 0, i32 4, !dbg !4662
  call void @atomic_inc(ptr noundef %use_lock) #18, !dbg !4662
  %13 = load ptr, ptr %client.addr, align 8, !dbg !4663
  %ports_lock9 = getelementptr inbounds %struct.snd_seq_client, ptr %13, i32 0, i32 13, !dbg !4663
  call void @_raw_read_unlock(ptr noundef %ports_lock9) #18, !dbg !4663
  %14 = load ptr, ptr %port, align 8, !dbg !4664
  store ptr %14, ptr %retval, align 8, !dbg !4665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4665

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !4666

for.inc:                                          ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #17, !dbg !4667
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !4632, metadata !DIExpression()), !dbg !4667
  %15 = load ptr, ptr %port, align 8, !dbg !4667
  %list12 = getelementptr inbounds %struct.snd_seq_client_port, ptr %15, i32 0, i32 3, !dbg !4667
  %next13 = getelementptr inbounds %struct.list_head, ptr %list12, i32 0, i32 0, !dbg !4667
  %16 = load ptr, ptr %next13, align 8, !dbg !4667
  store ptr %16, ptr %__mptr11, align 8, !dbg !4667
  %17 = load ptr, ptr %__mptr11, align 8, !dbg !4667
  %add.ptr15 = getelementptr i8, ptr %17, i64 -80, !dbg !4667
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !4667
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #17, !dbg !4647
  %18 = load ptr, ptr %tmp14, align 8, !dbg !4667
  store ptr %18, ptr %port, align 8, !dbg !4647
  br label %for.cond, !dbg !4647, !llvm.loop !4668

for.end:                                          ; preds = %if.then7, %for.cond
  %19 = load ptr, ptr %client.addr, align 8, !dbg !4672
  %ports_lock16 = getelementptr inbounds %struct.snd_seq_client, ptr %19, i32 0, i32 13, !dbg !4672
  call void @_raw_read_unlock(ptr noundef %ports_lock16) #18, !dbg !4672
  store ptr null, ptr %retval, align 8, !dbg !4673
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4673

cleanup:                                          ; preds = %for.end, %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #17, !dbg !4674
  %20 = load ptr, ptr %retval, align 8, !dbg !4674
  ret ptr %20, !dbg !4674
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4675 dso_local void @_raw_read_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #4 align 16 !dbg !4680 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4686, metadata !DIExpression()), !dbg !4687
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4688
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !4689
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4690
  call void @raw_atomic_inc(ptr noundef %1) #18, !dbg !4691
  ret void, !dbg !4692
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4693 dso_local void @_raw_read_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_seq_port_query_nearest(ptr noundef %client, ptr noundef %pinfo) #0 align 16 !dbg !4694 {
entry:
  %client.addr = alloca ptr, align 8
  %pinfo.addr = alloca ptr, align 8
  %num = alloca i32, align 4
  %port = alloca ptr, align 8
  %found = alloca ptr, align 8
  %check_inactive = alloca i8, align 1
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr34 = alloca ptr, align 8
  %tmp37 = alloca ptr, align 8
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !4719, metadata !DIExpression()), !dbg !4731
  store ptr %pinfo, ptr %pinfo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pinfo.addr, metadata !4720, metadata !DIExpression()), !dbg !4732
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #17, !dbg !4733
  call void @llvm.dbg.declare(metadata ptr %num, metadata !4721, metadata !DIExpression()), !dbg !4734
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #17, !dbg !4735
  call void @llvm.dbg.declare(metadata ptr %port, metadata !4722, metadata !DIExpression()), !dbg !4736
  call void @llvm.lifetime.start.p0(i64 8, ptr %found) #17, !dbg !4735
  call void @llvm.dbg.declare(metadata ptr %found, metadata !4723, metadata !DIExpression()), !dbg !4737
  call void @llvm.lifetime.start.p0(i64 1, ptr %check_inactive) #17, !dbg !4738
  call void @llvm.dbg.declare(metadata ptr %check_inactive, metadata !4724, metadata !DIExpression()), !dbg !4739
  %0 = load ptr, ptr %pinfo.addr, align 8, !dbg !4740
  %capability = getelementptr inbounds %struct.snd_seq_port_info, ptr %0, i32 0, i32 2, !dbg !4741
  %1 = load i32, ptr %capability, align 4, !dbg !4741
  %and = and i32 %1, 256, !dbg !4742
  %tobool = icmp ne i32 %and, 0, !dbg !4743
  %frombool = zext i1 %tobool to i8, !dbg !4739
  store i8 %frombool, ptr %check_inactive, align 1, !dbg !4739
  %2 = load ptr, ptr %pinfo.addr, align 8, !dbg !4744
  %addr = getelementptr inbounds %struct.snd_seq_port_info, ptr %2, i32 0, i32 0, !dbg !4745
  %port1 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr, i32 0, i32 1, !dbg !4746
  %3 = load i8, ptr %port1, align 1, !dbg !4746
  %conv = zext i8 %3 to i32, !dbg !4744
  store i32 %conv, ptr %num, align 4, !dbg !4747
  store ptr null, ptr %found, align 8, !dbg !4748
  %4 = load ptr, ptr %client.addr, align 8, !dbg !4749
  %ports_lock = getelementptr inbounds %struct.snd_seq_client, ptr %4, i32 0, i32 13, !dbg !4749
  call void @_raw_read_lock(ptr noundef %ports_lock) #18, !dbg !4749
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4750
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4725, metadata !DIExpression()), !dbg !4750
  %5 = load ptr, ptr %client.addr, align 8, !dbg !4750
  %ports_list_head = getelementptr inbounds %struct.snd_seq_client, ptr %5, i32 0, i32 12, !dbg !4750
  %next = getelementptr inbounds %struct.list_head, ptr %ports_list_head, i32 0, i32 0, !dbg !4750
  %6 = load ptr, ptr %next, align 8, !dbg !4750
  store ptr %6, ptr %__mptr, align 8, !dbg !4750
  %7 = load ptr, ptr %__mptr, align 8, !dbg !4750
  %add.ptr = getelementptr i8, ptr %7, i64 -80, !dbg !4750
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4750
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4751
  %8 = load ptr, ptr %tmp, align 8, !dbg !4750
  store ptr %8, ptr %port, align 8, !dbg !4751
  br label %for.cond, !dbg !4751

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load ptr, ptr %port, align 8, !dbg !4752
  %list = getelementptr inbounds %struct.snd_seq_client_port, ptr %9, i32 0, i32 3, !dbg !4752
  %10 = load ptr, ptr %client.addr, align 8, !dbg !4752
  %ports_list_head2 = getelementptr inbounds %struct.snd_seq_client, ptr %10, i32 0, i32 12, !dbg !4752
  %cmp = icmp eq ptr %list, %ports_list_head2, !dbg !4752
  %lnot = xor i1 %cmp, true, !dbg !4752
  br i1 %lnot, label %for.body, label %for.end, !dbg !4751

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %port, align 8, !dbg !4753
  %capability4 = getelementptr inbounds %struct.snd_seq_client_port, ptr %11, i32 0, i32 12, !dbg !4756
  %12 = load i32, ptr %capability4, align 8, !dbg !4756
  %and5 = and i32 %12, 256, !dbg !4757
  %tobool6 = icmp ne i32 %and5, 0, !dbg !4757
  br i1 %tobool6, label %land.lhs.true, label %if.end, !dbg !4758

land.lhs.true:                                    ; preds = %for.body
  %13 = load i8, ptr %check_inactive, align 1, !dbg !4759, !range !4760, !noundef !549
  %tobool7 = trunc i8 %13 to i1, !dbg !4759
  br i1 %tobool7, label %if.end, label %if.then, !dbg !4761

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc, !dbg !4762

if.end:                                           ; preds = %land.lhs.true, %for.body
  %14 = load ptr, ptr %port, align 8, !dbg !4763
  %addr8 = getelementptr inbounds %struct.snd_seq_client_port, ptr %14, i32 0, i32 0, !dbg !4765
  %port9 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr8, i32 0, i32 1, !dbg !4766
  %15 = load i8, ptr %port9, align 1, !dbg !4766
  %conv10 = zext i8 %15 to i32, !dbg !4763
  %16 = load i32, ptr %num, align 4, !dbg !4767
  %cmp11 = icmp slt i32 %conv10, %16, !dbg !4768
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !4769

if.then13:                                        ; preds = %if.end
  br label %for.inc, !dbg !4770

if.end14:                                         ; preds = %if.end
  %17 = load ptr, ptr %port, align 8, !dbg !4771
  %addr15 = getelementptr inbounds %struct.snd_seq_client_port, ptr %17, i32 0, i32 0, !dbg !4773
  %port16 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr15, i32 0, i32 1, !dbg !4774
  %18 = load i8, ptr %port16, align 1, !dbg !4774
  %conv17 = zext i8 %18 to i32, !dbg !4771
  %19 = load i32, ptr %num, align 4, !dbg !4775
  %cmp18 = icmp eq i32 %conv17, %19, !dbg !4776
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !4777

if.then20:                                        ; preds = %if.end14
  %20 = load ptr, ptr %port, align 8, !dbg !4778
  store ptr %20, ptr %found, align 8, !dbg !4780
  br label %for.end, !dbg !4781

if.end21:                                         ; preds = %if.end14
  %21 = load ptr, ptr %found, align 8, !dbg !4782
  %cmp22 = icmp eq ptr %21, null, !dbg !4784
  br i1 %cmp22, label %if.then32, label %lor.lhs.false, !dbg !4785

lor.lhs.false:                                    ; preds = %if.end21
  %22 = load ptr, ptr %port, align 8, !dbg !4786
  %addr24 = getelementptr inbounds %struct.snd_seq_client_port, ptr %22, i32 0, i32 0, !dbg !4787
  %port25 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr24, i32 0, i32 1, !dbg !4788
  %23 = load i8, ptr %port25, align 1, !dbg !4788
  %conv26 = zext i8 %23 to i32, !dbg !4786
  %24 = load ptr, ptr %found, align 8, !dbg !4789
  %addr27 = getelementptr inbounds %struct.snd_seq_client_port, ptr %24, i32 0, i32 0, !dbg !4790
  %port28 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr27, i32 0, i32 1, !dbg !4791
  %25 = load i8, ptr %port28, align 1, !dbg !4791
  %conv29 = zext i8 %25 to i32, !dbg !4789
  %cmp30 = icmp slt i32 %conv26, %conv29, !dbg !4792
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !4793

if.then32:                                        ; preds = %lor.lhs.false, %if.end21
  %26 = load ptr, ptr %port, align 8, !dbg !4794
  store ptr %26, ptr %found, align 8, !dbg !4795
  br label %if.end33, !dbg !4796

if.end33:                                         ; preds = %if.then32, %lor.lhs.false
  br label %for.inc, !dbg !4797

for.inc:                                          ; preds = %if.end33, %if.then13, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr34) #17, !dbg !4798
  call void @llvm.dbg.declare(metadata ptr %__mptr34, metadata !4728, metadata !DIExpression()), !dbg !4798
  %27 = load ptr, ptr %port, align 8, !dbg !4798
  %list35 = getelementptr inbounds %struct.snd_seq_client_port, ptr %27, i32 0, i32 3, !dbg !4798
  %next36 = getelementptr inbounds %struct.list_head, ptr %list35, i32 0, i32 0, !dbg !4798
  %28 = load ptr, ptr %next36, align 8, !dbg !4798
  store ptr %28, ptr %__mptr34, align 8, !dbg !4798
  %29 = load ptr, ptr %__mptr34, align 8, !dbg !4798
  %add.ptr38 = getelementptr i8, ptr %29, i64 -80, !dbg !4798
  store ptr %add.ptr38, ptr %tmp37, align 8, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr34) #17, !dbg !4752
  %30 = load ptr, ptr %tmp37, align 8, !dbg !4798
  store ptr %30, ptr %port, align 8, !dbg !4752
  br label %for.cond, !dbg !4752, !llvm.loop !4799

for.end:                                          ; preds = %if.then20, %for.cond
  %31 = load ptr, ptr %found, align 8, !dbg !4801
  %tobool39 = icmp ne ptr %31, null, !dbg !4801
  br i1 %tobool39, label %if.then40, label %if.end44, !dbg !4803

if.then40:                                        ; preds = %for.end
  %32 = load ptr, ptr %found, align 8, !dbg !4804
  %closing = getelementptr inbounds %struct.snd_seq_client_port, ptr %32, i32 0, i32 10, !dbg !4807
  %bf.load = load i8, ptr %closing, align 8, !dbg !4807
  %bf.clear = and i8 %bf.load, 1, !dbg !4807
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4807
  %tobool41 = icmp ne i32 %bf.cast, 0, !dbg !4804
  br i1 %tobool41, label %if.then42, label %if.else, !dbg !4808

if.then42:                                        ; preds = %if.then40
  store ptr null, ptr %found, align 8, !dbg !4809
  br label %if.end43, !dbg !4810

if.else:                                          ; preds = %if.then40
  %33 = load ptr, ptr %found, align 8, !dbg !4811
  %use_lock = getelementptr inbounds %struct.snd_seq_client_port, ptr %33, i32 0, i32 4, !dbg !4811
  call void @atomic_inc(ptr noundef %use_lock) #18, !dbg !4811
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then42
  br label %if.end44, !dbg !4812

if.end44:                                         ; preds = %if.end43, %for.end
  %34 = load ptr, ptr %client.addr, align 8, !dbg !4813
  %ports_lock45 = getelementptr inbounds %struct.snd_seq_client, ptr %34, i32 0, i32 13, !dbg !4813
  call void @_raw_read_unlock(ptr noundef %ports_lock45) #18, !dbg !4813
  %35 = load ptr, ptr %found, align 8, !dbg !4814
  call void @llvm.lifetime.end.p0(i64 1, ptr %check_inactive) #17, !dbg !4815
  call void @llvm.lifetime.end.p0(i64 8, ptr %found) #17, !dbg !4815
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #17, !dbg !4815
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #17, !dbg !4815
  ret ptr %35, !dbg !4816
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_create_port(ptr noundef %client, i32 noundef %port, ptr noundef %port_ret) #0 align 16 !dbg !4817 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %port_ret.addr = alloca ptr, align 8
  %new_port = alloca ptr, align 8
  %p = alloca ptr, align 8
  %num = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %__UNIQUE_ID___x269 = alloca i32, align 4
  %__UNIQUE_ID___y270 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  %__mptr53 = alloca ptr, align 8
  %tmp56 = alloca ptr, align 8
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !4822, metadata !DIExpression()), !dbg !4841
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !4823, metadata !DIExpression()), !dbg !4842
  store ptr %port_ret, ptr %port_ret.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port_ret.addr, metadata !4824, metadata !DIExpression()), !dbg !4843
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_port) #17, !dbg !4844
  call void @llvm.dbg.declare(metadata ptr %new_port, metadata !4825, metadata !DIExpression()), !dbg !4845
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !4844
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4826, metadata !DIExpression()), !dbg !4846
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #17, !dbg !4847
  call void @llvm.dbg.declare(metadata ptr %num, metadata !4827, metadata !DIExpression()), !dbg !4848
  %0 = load ptr, ptr %port_ret.addr, align 8, !dbg !4849
  store ptr null, ptr %0, align 8, !dbg !4850
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4851
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4828, metadata !DIExpression()), !dbg !4851
  %1 = load ptr, ptr %client.addr, align 8, !dbg !4851
  %tobool = icmp ne ptr %1, null, !dbg !4851
  %lnot = xor i1 %tobool, true, !dbg !4851
  %lnot1 = xor i1 %lnot, true, !dbg !4851
  %lnot2 = xor i1 %lnot1, true, !dbg !4851
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4851
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4851
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !4851
  %tobool3 = icmp ne i32 %2, 0, !dbg !4851
  %lnot4 = xor i1 %tobool3, true, !dbg !4851
  %lnot6 = xor i1 %lnot4, true, !dbg !4851
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4851
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4851
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4851
  store i64 %expval, ptr %tmp, align 8, !dbg !4851
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !4852
  %3 = load i64, ptr %tmp, align 8, !dbg !4851
  %tobool8 = icmp ne i64 %3, 0, !dbg !4852
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4853

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4854
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4854

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %client.addr, align 8, !dbg !4855
  %num_ports = getelementptr inbounds %struct.snd_seq_client, ptr %4, i32 0, i32 11, !dbg !4857
  %5 = load i32, ptr %num_ports, align 4, !dbg !4857
  %cmp = icmp sge i32 %5, 254, !dbg !4858
  br i1 %cmp, label %if.then10, label %if.end12, !dbg !4859

if.then10:                                        ; preds = %if.end
  br label %do.body, !dbg !4860

do.body:                                          ; preds = %if.then10
  br label %do.cond, !dbg !4863

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4863

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %client.addr, align 8, !dbg !4860
  %number = getelementptr inbounds %struct.snd_seq_client, ptr %6, i32 0, i32 5, !dbg !4860
  %7 = load i32, ptr %number, align 8, !dbg !4860
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %7) #19, !dbg !4860
  store i32 %call, ptr %tmp11, align 4, !dbg !4863
  %8 = load i32, ptr %tmp11, align 4, !dbg !4860
  store i32 -22, ptr %retval, align 4, !dbg !4865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4865

if.end12:                                         ; preds = %if.end
  %call13 = call noalias ptr @kzalloc(i64 noundef 336, i32 noundef 3264) #20, !dbg !4866
  store ptr %call13, ptr %new_port, align 8, !dbg !4867
  %9 = load ptr, ptr %new_port, align 8, !dbg !4868
  %tobool14 = icmp ne ptr %9, null, !dbg !4868
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !4870

if.then15:                                        ; preds = %if.end12
  store i32 -12, ptr %retval, align 4, !dbg !4871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4871

if.end16:                                         ; preds = %if.end12
  %10 = load ptr, ptr %client.addr, align 8, !dbg !4872
  %number17 = getelementptr inbounds %struct.snd_seq_client, ptr %10, i32 0, i32 5, !dbg !4873
  %11 = load i32, ptr %number17, align 8, !dbg !4873
  %conv18 = trunc i32 %11 to i8, !dbg !4872
  %12 = load ptr, ptr %new_port, align 8, !dbg !4874
  %addr = getelementptr inbounds %struct.snd_seq_client_port, ptr %12, i32 0, i32 0, !dbg !4875
  %client19 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr, i32 0, i32 0, !dbg !4876
  store i8 %conv18, ptr %client19, align 8, !dbg !4877
  %13 = load ptr, ptr %new_port, align 8, !dbg !4878
  %addr20 = getelementptr inbounds %struct.snd_seq_client_port, ptr %13, i32 0, i32 0, !dbg !4879
  %port21 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr20, i32 0, i32 1, !dbg !4880
  store i8 -1, ptr %port21, align 1, !dbg !4881
  %14 = load ptr, ptr %new_port, align 8, !dbg !4882
  %owner = getelementptr inbounds %struct.snd_seq_client_port, ptr %14, i32 0, i32 1, !dbg !4883
  store ptr null, ptr %owner, align 8, !dbg !4884
  %15 = load ptr, ptr %new_port, align 8, !dbg !4885
  %use_lock = getelementptr inbounds %struct.snd_seq_client_port, ptr %15, i32 0, i32 4, !dbg !4885
  call void @atomic_set(ptr noundef %use_lock, i32 noundef 0) #18, !dbg !4885
  %16 = load ptr, ptr %new_port, align 8, !dbg !4886
  %c_src = getelementptr inbounds %struct.snd_seq_client_port, ptr %16, i32 0, i32 5, !dbg !4887
  call void @port_subs_info_init(ptr noundef %c_src) #18, !dbg !4888
  %17 = load ptr, ptr %new_port, align 8, !dbg !4889
  %c_dest = getelementptr inbounds %struct.snd_seq_client_port, ptr %17, i32 0, i32 6, !dbg !4890
  call void @port_subs_info_init(ptr noundef %c_dest) #18, !dbg !4891
  %18 = load ptr, ptr %new_port, align 8, !dbg !4892
  %use_lock22 = getelementptr inbounds %struct.snd_seq_client_port, ptr %18, i32 0, i32 4, !dbg !4892
  call void @atomic_inc(ptr noundef %use_lock22) #18, !dbg !4892
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x269) #17, !dbg !4893
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x269, metadata !4831, metadata !DIExpression()), !dbg !4893
  %19 = load i32, ptr %port.addr, align 4, !dbg !4893
  store i32 %19, ptr %__UNIQUE_ID___x269, align 4, !dbg !4893
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y270) #17, !dbg !4893
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y270, metadata !4833, metadata !DIExpression()), !dbg !4893
  store i32 0, ptr %__UNIQUE_ID___y270, align 4, !dbg !4893
  %20 = load i32, ptr %__UNIQUE_ID___x269, align 4, !dbg !4893
  %21 = load i32, ptr %__UNIQUE_ID___y270, align 4, !dbg !4893
  %cmp24 = icmp sgt i32 %20, %21, !dbg !4893
  br i1 %cmp24, label %cond.true, label %cond.false, !dbg !4893

cond.true:                                        ; preds = %if.end16
  %22 = load i32, ptr %__UNIQUE_ID___x269, align 4, !dbg !4893
  br label %cond.end, !dbg !4893

cond.false:                                       ; preds = %if.end16
  %23 = load i32, ptr %__UNIQUE_ID___y270, align 4, !dbg !4893
  br label %cond.end, !dbg !4893

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ], !dbg !4893
  store i32 %cond, ptr %tmp23, align 4, !dbg !4893
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y270) #17, !dbg !4894
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x269) #17, !dbg !4894
  %24 = load i32, ptr %tmp23, align 4, !dbg !4893
  store i32 %24, ptr %num, align 4, !dbg !4895
  %25 = load ptr, ptr %client.addr, align 8, !dbg !4896
  %ports_mutex = getelementptr inbounds %struct.snd_seq_client, ptr %25, i32 0, i32 14, !dbg !4897
  call void @mutex_lock(ptr noundef %ports_mutex) #18, !dbg !4898
  %26 = load ptr, ptr %client.addr, align 8, !dbg !4899
  %ports_lock = getelementptr inbounds %struct.snd_seq_client, ptr %26, i32 0, i32 13, !dbg !4899
  call void @_raw_write_lock_irq(ptr noundef %ports_lock) #18, !dbg !4899
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !4900
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4834, metadata !DIExpression()), !dbg !4900
  %27 = load ptr, ptr %client.addr, align 8, !dbg !4900
  %ports_list_head = getelementptr inbounds %struct.snd_seq_client, ptr %27, i32 0, i32 12, !dbg !4900
  %next = getelementptr inbounds %struct.list_head, ptr %ports_list_head, i32 0, i32 0, !dbg !4900
  %28 = load ptr, ptr %next, align 8, !dbg !4900
  store ptr %28, ptr %__mptr, align 8, !dbg !4900
  %29 = load ptr, ptr %__mptr, align 8, !dbg !4900
  %add.ptr = getelementptr i8, ptr %29, i64 -80, !dbg !4900
  store ptr %add.ptr, ptr %tmp26, align 8, !dbg !4900
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !4901
  %30 = load ptr, ptr %tmp26, align 8, !dbg !4900
  store ptr %30, ptr %p, align 8, !dbg !4901
  br label %for.cond, !dbg !4901

for.cond:                                         ; preds = %for.inc, %cond.end
  %31 = load ptr, ptr %p, align 8, !dbg !4902
  %list = getelementptr inbounds %struct.snd_seq_client_port, ptr %31, i32 0, i32 3, !dbg !4902
  %32 = load ptr, ptr %client.addr, align 8, !dbg !4902
  %ports_list_head27 = getelementptr inbounds %struct.snd_seq_client, ptr %32, i32 0, i32 12, !dbg !4902
  %cmp28 = icmp eq ptr %list, %ports_list_head27, !dbg !4902
  %lnot30 = xor i1 %cmp28, true, !dbg !4902
  br i1 %lnot30, label %for.body, label %for.end, !dbg !4901

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %p, align 8, !dbg !4903
  %addr32 = getelementptr inbounds %struct.snd_seq_client_port, ptr %33, i32 0, i32 0, !dbg !4906
  %port33 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr32, i32 0, i32 1, !dbg !4907
  %34 = load i8, ptr %port33, align 1, !dbg !4907
  %conv34 = zext i8 %34 to i32, !dbg !4903
  %35 = load i32, ptr %port.addr, align 4, !dbg !4908
  %cmp35 = icmp eq i32 %conv34, %35, !dbg !4909
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !4910

if.then37:                                        ; preds = %for.body
  %36 = load ptr, ptr %new_port, align 8, !dbg !4911
  call void @kfree(ptr noundef %36) #18, !dbg !4913
  store i32 -16, ptr %num, align 4, !dbg !4914
  br label %unlock, !dbg !4915

if.end38:                                         ; preds = %for.body
  %37 = load ptr, ptr %p, align 8, !dbg !4916
  %addr39 = getelementptr inbounds %struct.snd_seq_client_port, ptr %37, i32 0, i32 0, !dbg !4918
  %port40 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr39, i32 0, i32 1, !dbg !4919
  %38 = load i8, ptr %port40, align 1, !dbg !4919
  %conv41 = zext i8 %38 to i32, !dbg !4916
  %39 = load i32, ptr %num, align 4, !dbg !4920
  %cmp42 = icmp sgt i32 %conv41, %39, !dbg !4921
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !4922

if.then44:                                        ; preds = %if.end38
  br label %for.end, !dbg !4923

if.end45:                                         ; preds = %if.end38
  %40 = load i32, ptr %port.addr, align 4, !dbg !4924
  %cmp46 = icmp slt i32 %40, 0, !dbg !4926
  br i1 %cmp46, label %if.then48, label %if.end52, !dbg !4927

if.then48:                                        ; preds = %if.end45
  %41 = load ptr, ptr %p, align 8, !dbg !4928
  %addr49 = getelementptr inbounds %struct.snd_seq_client_port, ptr %41, i32 0, i32 0, !dbg !4929
  %port50 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr49, i32 0, i32 1, !dbg !4930
  %42 = load i8, ptr %port50, align 1, !dbg !4930
  %conv51 = zext i8 %42 to i32, !dbg !4928
  %add = add i32 %conv51, 1, !dbg !4931
  store i32 %add, ptr %num, align 4, !dbg !4932
  br label %if.end52, !dbg !4933

if.end52:                                         ; preds = %if.then48, %if.end45
  br label %for.inc, !dbg !4934

for.inc:                                          ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr53) #17, !dbg !4935
  call void @llvm.dbg.declare(metadata ptr %__mptr53, metadata !4837, metadata !DIExpression()), !dbg !4935
  %43 = load ptr, ptr %p, align 8, !dbg !4935
  %list54 = getelementptr inbounds %struct.snd_seq_client_port, ptr %43, i32 0, i32 3, !dbg !4935
  %next55 = getelementptr inbounds %struct.list_head, ptr %list54, i32 0, i32 0, !dbg !4935
  %44 = load ptr, ptr %next55, align 8, !dbg !4935
  store ptr %44, ptr %__mptr53, align 8, !dbg !4935
  %45 = load ptr, ptr %__mptr53, align 8, !dbg !4935
  %add.ptr57 = getelementptr i8, ptr %45, i64 -80, !dbg !4935
  store ptr %add.ptr57, ptr %tmp56, align 8, !dbg !4935
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr53) #17, !dbg !4902
  %46 = load ptr, ptr %tmp56, align 8, !dbg !4935
  store ptr %46, ptr %p, align 8, !dbg !4902
  br label %for.cond, !dbg !4902, !llvm.loop !4936

for.end:                                          ; preds = %if.then44, %for.cond
  %47 = load ptr, ptr %new_port, align 8, !dbg !4938
  %list58 = getelementptr inbounds %struct.snd_seq_client_port, ptr %47, i32 0, i32 3, !dbg !4939
  %48 = load ptr, ptr %p, align 8, !dbg !4940
  %list59 = getelementptr inbounds %struct.snd_seq_client_port, ptr %48, i32 0, i32 3, !dbg !4941
  call void @list_add_tail(ptr noundef %list58, ptr noundef %list59) #18, !dbg !4942
  %49 = load ptr, ptr %client.addr, align 8, !dbg !4943
  %num_ports60 = getelementptr inbounds %struct.snd_seq_client, ptr %49, i32 0, i32 11, !dbg !4944
  %50 = load i32, ptr %num_ports60, align 4, !dbg !4945
  %inc = add i32 %50, 1, !dbg !4945
  store i32 %inc, ptr %num_ports60, align 4, !dbg !4945
  %51 = load i32, ptr %num, align 4, !dbg !4946
  %conv61 = trunc i32 %51 to i8, !dbg !4946
  %52 = load ptr, ptr %new_port, align 8, !dbg !4947
  %addr62 = getelementptr inbounds %struct.snd_seq_client_port, ptr %52, i32 0, i32 0, !dbg !4948
  %port63 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr62, i32 0, i32 1, !dbg !4949
  store i8 %conv61, ptr %port63, align 1, !dbg !4950
  %53 = load ptr, ptr %new_port, align 8, !dbg !4951
  %name = getelementptr inbounds %struct.snd_seq_client_port, ptr %53, i32 0, i32 2, !dbg !4952
  %arraydecay = getelementptr inbounds [64 x i8], ptr %name, i64 0, i64 0, !dbg !4951
  %54 = load i32, ptr %num, align 4, !dbg !4953
  %call64 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.1, i32 noundef %54) #18, !dbg !4954
  %55 = load ptr, ptr %new_port, align 8, !dbg !4955
  %56 = load ptr, ptr %port_ret.addr, align 8, !dbg !4956
  store ptr %55, ptr %56, align 8, !dbg !4957
  br label %unlock, !dbg !4958

unlock:                                           ; preds = %for.end, %if.then37
  call void @llvm.dbg.label(metadata !4840), !dbg !4959
  %57 = load ptr, ptr %client.addr, align 8, !dbg !4960
  %ports_lock65 = getelementptr inbounds %struct.snd_seq_client, ptr %57, i32 0, i32 13, !dbg !4960
  call void @_raw_write_unlock_irq(ptr noundef %ports_lock65) #18, !dbg !4960
  %58 = load ptr, ptr %client.addr, align 8, !dbg !4961
  %ports_mutex66 = getelementptr inbounds %struct.snd_seq_client, ptr %58, i32 0, i32 14, !dbg !4962
  call void @mutex_unlock(ptr noundef %ports_mutex66) #18, !dbg !4963
  %59 = load i32, ptr %num, align 4, !dbg !4964
  store i32 %59, ptr %retval, align 4, !dbg !4965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4965

cleanup:                                          ; preds = %unlock, %if.then15, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #17, !dbg !4966
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !4966
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_port) #17, !dbg !4966
  %60 = load i32, ptr %retval, align 4, !dbg !4966
  ret i32 %60, !dbg !4966
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4967 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !4971 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4975, metadata !DIExpression()), !dbg !4977
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4976, metadata !DIExpression()), !dbg !4978
  %0 = load i64, ptr %size.addr, align 8, !dbg !4979
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4980
  %or = or i32 %1, 256, !dbg !4981
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !4982
  ret ptr %call, !dbg !4983
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !4984 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4988, metadata !DIExpression()), !dbg !4990
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4989, metadata !DIExpression()), !dbg !4991
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4992
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !4993
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4994
  %2 = load i32, ptr %i.addr, align 4, !dbg !4995
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #18, !dbg !4996
  ret void, !dbg !4997
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @port_subs_info_init(ptr noundef %grp) #0 align 16 !dbg !4099 {
entry:
  %grp.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.rwlock_t, align 4
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !4104, metadata !DIExpression()), !dbg !4998
  %0 = load ptr, ptr %grp.addr, align 8, !dbg !4999
  %list_head = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %0, i32 0, i32 0, !dbg !5000
  call void @INIT_LIST_HEAD(ptr noundef %list_head) #18, !dbg !5001
  %1 = load ptr, ptr %grp.addr, align 8, !dbg !5002
  %count = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %1, i32 0, i32 1, !dbg !5003
  store i32 0, ptr %count, align 8, !dbg !5004
  %2 = load ptr, ptr %grp.addr, align 8, !dbg !5005
  %exclusive = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %2, i32 0, i32 2, !dbg !5006
  %bf.load = load i8, ptr %exclusive, align 4, !dbg !5007
  %bf.clear = and i8 %bf.load, -2, !dbg !5007
  %bf.set = or i8 %bf.clear, 0, !dbg !5007
  store i8 %bf.set, ptr %exclusive, align 4, !dbg !5007
  br label %do.body, !dbg !5008

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %grp.addr, align 8, !dbg !5009
  %list_lock = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %3, i32 0, i32 4, !dbg !5009
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !5009
  %4 = getelementptr inbounds %struct.qrwlock, ptr %raw_lock, i32 0, i32 0, !dbg !5009
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !5009
  store i32 0, ptr %counter, align 4, !dbg !5009
  %wait_lock = getelementptr inbounds %struct.qrwlock, ptr %raw_lock, i32 0, i32 1, !dbg !5009
  %5 = getelementptr inbounds %struct.qspinlock, ptr %wait_lock, i32 0, i32 0, !dbg !5009
  %counter1 = getelementptr inbounds %struct.atomic_t, ptr %5, i32 0, i32 0, !dbg !5009
  store i32 0, ptr %counter1, align 4, !dbg !5009
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %list_lock, ptr align 4 %.compoundliteral, i64 8, i1 false), !dbg !5009
  br label %do.end, !dbg !5009

do.end:                                           ; preds = %do.body
  br label %do.body2, !dbg !5011

do.body2:                                         ; preds = %do.end
  %6 = load ptr, ptr %grp.addr, align 8, !dbg !5012
  %list_mutex = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %6, i32 0, i32 3, !dbg !5012
  call void @__init_rwsem(ptr noundef %list_mutex, ptr noundef @.str.4, ptr noundef @port_subs_info_init.__key) #18, !dbg !5012
  br label %do.end3, !dbg !5012

do.end3:                                          ; preds = %do.body2
  %7 = load ptr, ptr %grp.addr, align 8, !dbg !5014
  %open = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %7, i32 0, i32 5, !dbg !5015
  store ptr null, ptr %open, align 8, !dbg !5016
  %8 = load ptr, ptr %grp.addr, align 8, !dbg !5017
  %close = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %8, i32 0, i32 6, !dbg !5018
  store ptr null, ptr %close, align 8, !dbg !5019
  ret void, !dbg !5020
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5021 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5025 dso_local void @_raw_write_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5026 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #8 align 16 !dbg !5029 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5034, metadata !DIExpression()), !dbg !5036
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5035, metadata !DIExpression()), !dbg !5037
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5038
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5039
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5040
  %2 = load ptr, ptr %prev, align 8, !dbg !5040
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5041
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18, !dbg !5042
  ret void, !dbg !5043
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5044 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5048 dso_local void @_raw_write_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5049 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_delete_port(ptr noundef %client, i32 noundef %port) #0 align 16 !dbg !5050 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca ptr, align 8
  %port.addr = alloca i32, align 4
  %found = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5054, metadata !DIExpression()), !dbg !5064
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5055, metadata !DIExpression()), !dbg !5065
  call void @llvm.lifetime.start.p0(i64 8, ptr %found) #17, !dbg !5066
  call void @llvm.dbg.declare(metadata ptr %found, metadata !5056, metadata !DIExpression()), !dbg !5067
  store ptr null, ptr %found, align 8, !dbg !5067
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !5066
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5057, metadata !DIExpression()), !dbg !5068
  %0 = load ptr, ptr %client.addr, align 8, !dbg !5069
  %ports_mutex = getelementptr inbounds %struct.snd_seq_client, ptr %0, i32 0, i32 14, !dbg !5070
  call void @mutex_lock(ptr noundef %ports_mutex) #18, !dbg !5071
  %1 = load ptr, ptr %client.addr, align 8, !dbg !5072
  %ports_lock = getelementptr inbounds %struct.snd_seq_client, ptr %1, i32 0, i32 13, !dbg !5072
  call void @_raw_write_lock_irq(ptr noundef %ports_lock) #18, !dbg !5072
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5073
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5058, metadata !DIExpression()), !dbg !5073
  %2 = load ptr, ptr %client.addr, align 8, !dbg !5073
  %ports_list_head = getelementptr inbounds %struct.snd_seq_client, ptr %2, i32 0, i32 12, !dbg !5073
  %next = getelementptr inbounds %struct.list_head, ptr %ports_list_head, i32 0, i32 0, !dbg !5073
  %3 = load ptr, ptr %next, align 8, !dbg !5073
  store ptr %3, ptr %__mptr, align 8, !dbg !5073
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5073
  %add.ptr = getelementptr i8, ptr %4, i64 -80, !dbg !5073
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5073
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5074
  %5 = load ptr, ptr %tmp, align 8, !dbg !5073
  store ptr %5, ptr %p, align 8, !dbg !5074
  br label %for.cond, !dbg !5074

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %p, align 8, !dbg !5075
  %list = getelementptr inbounds %struct.snd_seq_client_port, ptr %6, i32 0, i32 3, !dbg !5075
  %7 = load ptr, ptr %client.addr, align 8, !dbg !5075
  %ports_list_head1 = getelementptr inbounds %struct.snd_seq_client, ptr %7, i32 0, i32 12, !dbg !5075
  %cmp = icmp eq ptr %list, %ports_list_head1, !dbg !5075
  %lnot = xor i1 %cmp, true, !dbg !5075
  br i1 %lnot, label %for.body, label %for.end, !dbg !5074

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %p, align 8, !dbg !5076
  %addr = getelementptr inbounds %struct.snd_seq_client_port, ptr %8, i32 0, i32 0, !dbg !5079
  %port2 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr, i32 0, i32 1, !dbg !5080
  %9 = load i8, ptr %port2, align 1, !dbg !5080
  %conv = zext i8 %9 to i32, !dbg !5076
  %10 = load i32, ptr %port.addr, align 4, !dbg !5081
  %cmp3 = icmp eq i32 %conv, %10, !dbg !5082
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5083

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %p, align 8, !dbg !5084
  %list5 = getelementptr inbounds %struct.snd_seq_client_port, ptr %11, i32 0, i32 3, !dbg !5086
  call void @list_del(ptr noundef %list5) #18, !dbg !5087
  %12 = load ptr, ptr %client.addr, align 8, !dbg !5088
  %num_ports = getelementptr inbounds %struct.snd_seq_client, ptr %12, i32 0, i32 11, !dbg !5089
  %13 = load i32, ptr %num_ports, align 4, !dbg !5090
  %dec = add i32 %13, -1, !dbg !5090
  store i32 %dec, ptr %num_ports, align 4, !dbg !5090
  %14 = load ptr, ptr %p, align 8, !dbg !5091
  store ptr %14, ptr %found, align 8, !dbg !5092
  br label %for.end, !dbg !5093

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5094

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #17, !dbg !5095
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !5061, metadata !DIExpression()), !dbg !5095
  %15 = load ptr, ptr %p, align 8, !dbg !5095
  %list7 = getelementptr inbounds %struct.snd_seq_client_port, ptr %15, i32 0, i32 3, !dbg !5095
  %next8 = getelementptr inbounds %struct.list_head, ptr %list7, i32 0, i32 0, !dbg !5095
  %16 = load ptr, ptr %next8, align 8, !dbg !5095
  store ptr %16, ptr %__mptr6, align 8, !dbg !5095
  %17 = load ptr, ptr %__mptr6, align 8, !dbg !5095
  %add.ptr10 = getelementptr i8, ptr %17, i64 -80, !dbg !5095
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !5095
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #17, !dbg !5075
  %18 = load ptr, ptr %tmp9, align 8, !dbg !5095
  store ptr %18, ptr %p, align 8, !dbg !5075
  br label %for.cond, !dbg !5075, !llvm.loop !5096

for.end:                                          ; preds = %if.then, %for.cond
  %19 = load ptr, ptr %client.addr, align 8, !dbg !5098
  %ports_lock11 = getelementptr inbounds %struct.snd_seq_client, ptr %19, i32 0, i32 13, !dbg !5098
  call void @_raw_write_unlock_irq(ptr noundef %ports_lock11) #18, !dbg !5098
  %20 = load ptr, ptr %client.addr, align 8, !dbg !5099
  %ports_mutex12 = getelementptr inbounds %struct.snd_seq_client, ptr %20, i32 0, i32 14, !dbg !5100
  call void @mutex_unlock(ptr noundef %ports_mutex12) #18, !dbg !5101
  %21 = load ptr, ptr %found, align 8, !dbg !5102
  %tobool = icmp ne ptr %21, null, !dbg !5102
  br i1 %tobool, label %if.then13, label %if.else, !dbg !5104

if.then13:                                        ; preds = %for.end
  %22 = load ptr, ptr %client.addr, align 8, !dbg !5105
  %23 = load ptr, ptr %found, align 8, !dbg !5106
  %call = call i32 @port_delete(ptr noundef %22, ptr noundef %23) #18, !dbg !5107
  store i32 %call, ptr %retval, align 4, !dbg !5108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5108

if.else:                                          ; preds = %for.end
  store i32 -2, ptr %retval, align 4, !dbg !5109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5109

cleanup:                                          ; preds = %if.else, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5110
  call void @llvm.lifetime.end.p0(i64 8, ptr %found) #17, !dbg !5110
  %24 = load i32, ptr %retval, align 4, !dbg !5110
  ret i32 %24, !dbg !5110
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #8 align 16 !dbg !5111 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5115, metadata !DIExpression()), !dbg !5116
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5117
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !5118
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5119
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5120
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5121
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5122
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5123
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5124
  ret void, !dbg !5125
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @port_delete(ptr noundef %client, ptr noundef %port) #0 align 16 !dbg !5126 {
entry:
  %client.addr = alloca ptr, align 8
  %port.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on9 = alloca i32, align 4
  %tmp18 = alloca i64, align 8
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5130, metadata !DIExpression()), !dbg !5136
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5131, metadata !DIExpression()), !dbg !5137
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5138
  %closing = getelementptr inbounds %struct.snd_seq_client_port, ptr %0, i32 0, i32 10, !dbg !5139
  %bf.load = load i8, ptr %closing, align 8, !dbg !5140
  %bf.clear = and i8 %bf.load, -2, !dbg !5140
  %bf.set = or i8 %bf.clear, 1, !dbg !5140
  store i8 %bf.set, ptr %closing, align 8, !dbg !5140
  %1 = load ptr, ptr %port.addr, align 8, !dbg !5141
  %use_lock = getelementptr inbounds %struct.snd_seq_client_port, ptr %1, i32 0, i32 4, !dbg !5141
  call void @snd_use_lock_sync_helper(ptr noundef %use_lock, ptr noundef @.str.5, i32 noundef 262) #18, !dbg !5141
  %2 = load ptr, ptr %client.addr, align 8, !dbg !5142
  %3 = load ptr, ptr %port.addr, align 8, !dbg !5143
  %4 = load ptr, ptr %port.addr, align 8, !dbg !5144
  %c_src = getelementptr inbounds %struct.snd_seq_client_port, ptr %4, i32 0, i32 5, !dbg !5145
  call void @clear_subscriber_list(ptr noundef %2, ptr noundef %3, ptr noundef %c_src, i32 noundef 1) #18, !dbg !5146
  %5 = load ptr, ptr %client.addr, align 8, !dbg !5147
  %6 = load ptr, ptr %port.addr, align 8, !dbg !5148
  %7 = load ptr, ptr %port.addr, align 8, !dbg !5149
  %c_dest = getelementptr inbounds %struct.snd_seq_client_port, ptr %7, i32 0, i32 6, !dbg !5150
  call void @clear_subscriber_list(ptr noundef %5, ptr noundef %6, ptr noundef %c_dest, i32 noundef 0) #18, !dbg !5151
  %8 = load ptr, ptr %port.addr, align 8, !dbg !5152
  %private_free = getelementptr inbounds %struct.snd_seq_client_port, ptr %8, i32 0, i32 8, !dbg !5154
  %9 = load ptr, ptr %private_free, align 8, !dbg !5154
  %tobool = icmp ne ptr %9, null, !dbg !5152
  br i1 %tobool, label %if.then, label %if.end, !dbg !5155

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %port.addr, align 8, !dbg !5156
  %private_free1 = getelementptr inbounds %struct.snd_seq_client_port, ptr %10, i32 0, i32 8, !dbg !5157
  %11 = load ptr, ptr %private_free1, align 8, !dbg !5157
  %12 = load ptr, ptr %port.addr, align 8, !dbg !5158
  %private_data = getelementptr inbounds %struct.snd_seq_client_port, ptr %12, i32 0, i32 9, !dbg !5159
  %13 = load ptr, ptr %private_data, align 8, !dbg !5159
  call void %11(ptr noundef %13) #18, !dbg !5156
  br label %if.end, !dbg !5156

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5160
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5132, metadata !DIExpression()), !dbg !5160
  %14 = load ptr, ptr %port.addr, align 8, !dbg !5160
  %c_src2 = getelementptr inbounds %struct.snd_seq_client_port, ptr %14, i32 0, i32 5, !dbg !5160
  %count = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %c_src2, i32 0, i32 1, !dbg !5160
  %15 = load i32, ptr %count, align 8, !dbg !5160
  %cmp = icmp ne i32 %15, 0, !dbg !5160
  %lnot = xor i1 %cmp, true, !dbg !5160
  %lnot3 = xor i1 %lnot, true, !dbg !5160
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5160
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5160
  %16 = load i32, ptr %__ret_warn_on, align 4, !dbg !5160
  %tobool4 = icmp ne i32 %16, 0, !dbg !5160
  %lnot5 = xor i1 %tobool4, true, !dbg !5160
  %lnot7 = xor i1 %lnot5, true, !dbg !5160
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5160
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5160
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5160
  store i64 %expval, ptr %tmp, align 8, !dbg !5160
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5161
  %17 = load i64, ptr %tmp, align 8, !dbg !5160
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on9) #17, !dbg !5162
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on9, metadata !5134, metadata !DIExpression()), !dbg !5162
  %18 = load ptr, ptr %port.addr, align 8, !dbg !5162
  %c_dest10 = getelementptr inbounds %struct.snd_seq_client_port, ptr %18, i32 0, i32 6, !dbg !5162
  %count11 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %c_dest10, i32 0, i32 1, !dbg !5162
  %19 = load i32, ptr %count11, align 8, !dbg !5162
  %cmp12 = icmp ne i32 %19, 0, !dbg !5162
  %lnot14 = xor i1 %cmp12, true, !dbg !5162
  %lnot16 = xor i1 %lnot14, true, !dbg !5162
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !5162
  store i32 %lnot.ext17, ptr %__ret_warn_on9, align 4, !dbg !5162
  %20 = load i32, ptr %__ret_warn_on9, align 4, !dbg !5162
  %tobool19 = icmp ne i32 %20, 0, !dbg !5162
  %lnot20 = xor i1 %tobool19, true, !dbg !5162
  %lnot22 = xor i1 %lnot20, true, !dbg !5162
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5162
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5162
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5162
  store i64 %expval25, ptr %tmp18, align 8, !dbg !5162
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on9) #17, !dbg !5163
  %21 = load i64, ptr %tmp18, align 8, !dbg !5162
  %22 = load ptr, ptr %port.addr, align 8, !dbg !5164
  call void @kfree(ptr noundef %22) #18, !dbg !5165
  ret i32 0, !dbg !5166
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_delete_all_ports(ptr noundef %client) #0 align 16 !dbg !5167 {
entry:
  %client.addr = alloca ptr, align 8
  %deleted_list = alloca %struct.list_head, align 8
  %port = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__mptr16 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5171, metadata !DIExpression()), !dbg !5183
  call void @llvm.lifetime.start.p0(i64 16, ptr %deleted_list) #17, !dbg !5184
  call void @llvm.dbg.declare(metadata ptr %deleted_list, metadata !5172, metadata !DIExpression()), !dbg !5185
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #17, !dbg !5186
  call void @llvm.dbg.declare(metadata ptr %port, metadata !5173, metadata !DIExpression()), !dbg !5187
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #17, !dbg !5186
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5174, metadata !DIExpression()), !dbg !5188
  %0 = load ptr, ptr %client.addr, align 8, !dbg !5189
  %ports_mutex = getelementptr inbounds %struct.snd_seq_client, ptr %0, i32 0, i32 14, !dbg !5190
  call void @mutex_lock(ptr noundef %ports_mutex) #18, !dbg !5191
  %1 = load ptr, ptr %client.addr, align 8, !dbg !5192
  %ports_lock = getelementptr inbounds %struct.snd_seq_client, ptr %1, i32 0, i32 13, !dbg !5192
  call void @_raw_write_lock_irq(ptr noundef %ports_lock) #18, !dbg !5192
  %2 = load ptr, ptr %client.addr, align 8, !dbg !5193
  %ports_list_head = getelementptr inbounds %struct.snd_seq_client, ptr %2, i32 0, i32 12, !dbg !5195
  %call = call i32 @list_empty(ptr noundef %ports_list_head) #18, !dbg !5196
  %tobool = icmp ne i32 %call, 0, !dbg !5196
  br i1 %tobool, label %if.else, label %if.then, !dbg !5197

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %client.addr, align 8, !dbg !5198
  %ports_list_head1 = getelementptr inbounds %struct.snd_seq_client, ptr %3, i32 0, i32 12, !dbg !5200
  call void @list_add(ptr noundef %deleted_list, ptr noundef %ports_list_head1) #18, !dbg !5201
  %4 = load ptr, ptr %client.addr, align 8, !dbg !5202
  %ports_list_head2 = getelementptr inbounds %struct.snd_seq_client, ptr %4, i32 0, i32 12, !dbg !5203
  call void @list_del_init(ptr noundef %ports_list_head2) #18, !dbg !5204
  br label %if.end, !dbg !5205

if.else:                                          ; preds = %entry
  call void @INIT_LIST_HEAD(ptr noundef %deleted_list) #18, !dbg !5206
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %client.addr, align 8, !dbg !5208
  %num_ports = getelementptr inbounds %struct.snd_seq_client, ptr %5, i32 0, i32 11, !dbg !5209
  store i32 0, ptr %num_ports, align 4, !dbg !5210
  %6 = load ptr, ptr %client.addr, align 8, !dbg !5211
  %ports_lock3 = getelementptr inbounds %struct.snd_seq_client, ptr %6, i32 0, i32 13, !dbg !5211
  call void @_raw_write_unlock_irq(ptr noundef %ports_lock3) #18, !dbg !5211
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5212
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5175, metadata !DIExpression()), !dbg !5212
  %next = getelementptr inbounds %struct.list_head, ptr %deleted_list, i32 0, i32 0, !dbg !5212
  %7 = load ptr, ptr %next, align 8, !dbg !5212
  store ptr %7, ptr %__mptr, align 8, !dbg !5212
  %8 = load ptr, ptr %__mptr, align 8, !dbg !5212
  %add.ptr = getelementptr i8, ptr %8, i64 -80, !dbg !5212
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5213
  %9 = load ptr, ptr %tmp4, align 8, !dbg !5212
  store ptr %9, ptr %port, align 8, !dbg !5213
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #17, !dbg !5214
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !5178, metadata !DIExpression()), !dbg !5214
  %10 = load ptr, ptr %port, align 8, !dbg !5214
  %list = getelementptr inbounds %struct.snd_seq_client_port, ptr %10, i32 0, i32 3, !dbg !5214
  %next6 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !5214
  %11 = load ptr, ptr %next6, align 8, !dbg !5214
  store ptr %11, ptr %__mptr5, align 8, !dbg !5214
  %12 = load ptr, ptr %__mptr5, align 8, !dbg !5214
  %add.ptr8 = getelementptr i8, ptr %12, i64 -80, !dbg !5214
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5214
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #17, !dbg !5213
  %13 = load ptr, ptr %tmp7, align 8, !dbg !5214
  store ptr %13, ptr %tmp, align 8, !dbg !5213
  br label %for.cond, !dbg !5213

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load ptr, ptr %port, align 8, !dbg !5215
  %list9 = getelementptr inbounds %struct.snd_seq_client_port, ptr %14, i32 0, i32 3, !dbg !5215
  %cmp = icmp eq ptr %list9, %deleted_list, !dbg !5215
  %lnot = xor i1 %cmp, true, !dbg !5215
  br i1 %lnot, label %for.body, label %for.end, !dbg !5213

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %port, align 8, !dbg !5216
  %list10 = getelementptr inbounds %struct.snd_seq_client_port, ptr %15, i32 0, i32 3, !dbg !5218
  call void @list_del(ptr noundef %list10) #18, !dbg !5219
  %16 = load ptr, ptr %port, align 8, !dbg !5220
  %addr = getelementptr inbounds %struct.snd_seq_client_port, ptr %16, i32 0, i32 0, !dbg !5220
  %client11 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr, i32 0, i32 0, !dbg !5220
  %17 = load i8, ptr %client11, align 8, !dbg !5220
  %conv = zext i8 %17 to i32, !dbg !5220
  %18 = load ptr, ptr %port, align 8, !dbg !5220
  %addr12 = getelementptr inbounds %struct.snd_seq_client_port, ptr %18, i32 0, i32 0, !dbg !5220
  %port13 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr12, i32 0, i32 1, !dbg !5220
  %19 = load i8, ptr %port13, align 1, !dbg !5220
  %conv14 = zext i8 %19 to i32, !dbg !5220
  call void @snd_seq_system_broadcast(i32 noundef %conv, i32 noundef %conv14, i32 noundef 64) #18, !dbg !5220
  %20 = load ptr, ptr %client.addr, align 8, !dbg !5221
  %21 = load ptr, ptr %port, align 8, !dbg !5222
  %call15 = call i32 @port_delete(ptr noundef %20, ptr noundef %21) #18, !dbg !5223
  br label %for.inc, !dbg !5224

for.inc:                                          ; preds = %for.body
  %22 = load ptr, ptr %tmp, align 8, !dbg !5215
  store ptr %22, ptr %port, align 8, !dbg !5215
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr16) #17, !dbg !5225
  call void @llvm.dbg.declare(metadata ptr %__mptr16, metadata !5180, metadata !DIExpression()), !dbg !5225
  %23 = load ptr, ptr %tmp, align 8, !dbg !5225
  %list17 = getelementptr inbounds %struct.snd_seq_client_port, ptr %23, i32 0, i32 3, !dbg !5225
  %next18 = getelementptr inbounds %struct.list_head, ptr %list17, i32 0, i32 0, !dbg !5225
  %24 = load ptr, ptr %next18, align 8, !dbg !5225
  store ptr %24, ptr %__mptr16, align 8, !dbg !5225
  %25 = load ptr, ptr %__mptr16, align 8, !dbg !5225
  %add.ptr20 = getelementptr i8, ptr %25, i64 -80, !dbg !5225
  store ptr %add.ptr20, ptr %tmp19, align 8, !dbg !5225
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr16) #17, !dbg !5215
  %26 = load ptr, ptr %tmp19, align 8, !dbg !5225
  store ptr %26, ptr %tmp, align 8, !dbg !5215
  br label %for.cond, !dbg !5215, !llvm.loop !5226

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %client.addr, align 8, !dbg !5228
  %ports_mutex21 = getelementptr inbounds %struct.snd_seq_client, ptr %27, i32 0, i32 14, !dbg !5229
  call void @mutex_unlock(ptr noundef %ports_mutex21) #18, !dbg !5230
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #17, !dbg !5231
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #17, !dbg !5231
  call void @llvm.lifetime.end.p0(i64 16, ptr %deleted_list) #17, !dbg !5231
  ret i32 0, !dbg !5232
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #8 align 16 !dbg !5233 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5239, metadata !DIExpression()), !dbg !5240
  br label %do.body, !dbg !5241

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5243

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5241
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5241
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5241
  store ptr %1, ptr %tmp, align 8, !dbg !5243
  %2 = load ptr, ptr %tmp, align 8, !dbg !5241
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5245
  %cmp = icmp eq ptr %2, %3, !dbg !5246
  %conv = zext i1 %cmp to i32, !dbg !5246
  ret i32 %conv, !dbg !5247
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #8 align 16 !dbg !5248 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5250, metadata !DIExpression()), !dbg !5252
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5251, metadata !DIExpression()), !dbg !5253
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5254
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5255
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5256
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5257
  %3 = load ptr, ptr %next, align 8, !dbg !5257
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #18, !dbg !5258
  ret void, !dbg !5259
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #8 align 16 !dbg !5260 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5264
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !5265
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5266
  call void @INIT_LIST_HEAD(ptr noundef %1) #18, !dbg !5267
  ret void, !dbg !5268
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #8 align 16 !dbg !5269 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5271, metadata !DIExpression()), !dbg !5272
  br label %do.body, !dbg !5273

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5274

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5276

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5274

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5278
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5278
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5278
  store volatile ptr %0, ptr %next, align 8, !dbg !5278
  br label %do.end3, !dbg !5278

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5274

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5280

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5281

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5283

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5281

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5285
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5285
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5285
  store volatile ptr %2, ptr %prev, align 8, !dbg !5285
  br label %do.end9, !dbg !5285

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5281

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5287
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5288 dso_local void @snd_seq_system_broadcast(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_set_port_info(ptr noundef %port, ptr noundef %info) #0 align 16 !dbg !5292 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5296, metadata !DIExpression()), !dbg !5301
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5297, metadata !DIExpression()), !dbg !5302
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5303
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5298, metadata !DIExpression()), !dbg !5303
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5303
  %tobool = icmp ne ptr %0, null, !dbg !5303
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5303

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %info.addr, align 8, !dbg !5303
  %tobool1 = icmp ne ptr %1, null, !dbg !5303
  %lnot = xor i1 %tobool1, true, !dbg !5303
  br label %lor.end, !dbg !5303

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true, !dbg !5303
  %lnot3 = xor i1 %lnot2, true, !dbg !5303
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5303
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5303
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5303
  %tobool4 = icmp ne i32 %3, 0, !dbg !5303
  %lnot5 = xor i1 %tobool4, true, !dbg !5303
  %lnot7 = xor i1 %lnot5, true, !dbg !5303
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5303
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5303
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5303
  store i64 %expval, ptr %tmp, align 8, !dbg !5303
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5304
  %4 = load i64, ptr %tmp, align 8, !dbg !5303
  %tobool9 = icmp ne i64 %4, 0, !dbg !5304
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5305

if.then:                                          ; preds = %lor.end
  store i32 -22, ptr %retval, align 4, !dbg !5306
  br label %return, !dbg !5306

if.end:                                           ; preds = %lor.end
  %5 = load ptr, ptr %info.addr, align 8, !dbg !5307
  %name = getelementptr inbounds %struct.snd_seq_port_info, ptr %5, i32 0, i32 1, !dbg !5309
  %arrayidx = getelementptr [64 x i8], ptr %name, i64 0, i64 0, !dbg !5307
  %6 = load i8, ptr %arrayidx, align 2, !dbg !5307
  %tobool10 = icmp ne i8 %6, 0, !dbg !5307
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !5310

if.then11:                                        ; preds = %if.end
  %7 = load ptr, ptr %port.addr, align 8, !dbg !5311
  %name12 = getelementptr inbounds %struct.snd_seq_client_port, ptr %7, i32 0, i32 2, !dbg !5312
  %arraydecay = getelementptr inbounds [64 x i8], ptr %name12, i64 0, i64 0, !dbg !5311
  %8 = load ptr, ptr %info.addr, align 8, !dbg !5313
  %name13 = getelementptr inbounds %struct.snd_seq_port_info, ptr %8, i32 0, i32 1, !dbg !5314
  %arraydecay14 = getelementptr inbounds [64 x i8], ptr %name13, i64 0, i64 0, !dbg !5313
  %call = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %arraydecay14, i64 noundef 64) #18, !dbg !5315
  br label %if.end15, !dbg !5315

if.end15:                                         ; preds = %if.then11, %if.end
  %9 = load ptr, ptr %info.addr, align 8, !dbg !5316
  %capability = getelementptr inbounds %struct.snd_seq_port_info, ptr %9, i32 0, i32 2, !dbg !5317
  %10 = load i32, ptr %capability, align 4, !dbg !5317
  %11 = load ptr, ptr %port.addr, align 8, !dbg !5318
  %capability16 = getelementptr inbounds %struct.snd_seq_client_port, ptr %11, i32 0, i32 12, !dbg !5319
  store i32 %10, ptr %capability16, align 8, !dbg !5320
  %12 = load ptr, ptr %info.addr, align 8, !dbg !5321
  %type = getelementptr inbounds %struct.snd_seq_port_info, ptr %12, i32 0, i32 3, !dbg !5322
  %13 = load i32, ptr %type, align 8, !dbg !5322
  %14 = load ptr, ptr %port.addr, align 8, !dbg !5323
  %type17 = getelementptr inbounds %struct.snd_seq_client_port, ptr %14, i32 0, i32 13, !dbg !5324
  store i32 %13, ptr %type17, align 4, !dbg !5325
  %15 = load ptr, ptr %info.addr, align 8, !dbg !5326
  %midi_channels = getelementptr inbounds %struct.snd_seq_port_info, ptr %15, i32 0, i32 4, !dbg !5327
  %16 = load i32, ptr %midi_channels, align 4, !dbg !5327
  %17 = load ptr, ptr %port.addr, align 8, !dbg !5328
  %midi_channels18 = getelementptr inbounds %struct.snd_seq_client_port, ptr %17, i32 0, i32 14, !dbg !5329
  store i32 %16, ptr %midi_channels18, align 8, !dbg !5330
  %18 = load ptr, ptr %info.addr, align 8, !dbg !5331
  %midi_voices = getelementptr inbounds %struct.snd_seq_port_info, ptr %18, i32 0, i32 5, !dbg !5332
  %19 = load i32, ptr %midi_voices, align 8, !dbg !5332
  %20 = load ptr, ptr %port.addr, align 8, !dbg !5333
  %midi_voices19 = getelementptr inbounds %struct.snd_seq_client_port, ptr %20, i32 0, i32 15, !dbg !5334
  store i32 %19, ptr %midi_voices19, align 4, !dbg !5335
  %21 = load ptr, ptr %info.addr, align 8, !dbg !5336
  %synth_voices = getelementptr inbounds %struct.snd_seq_port_info, ptr %21, i32 0, i32 6, !dbg !5337
  %22 = load i32, ptr %synth_voices, align 4, !dbg !5337
  %23 = load ptr, ptr %port.addr, align 8, !dbg !5338
  %synth_voices20 = getelementptr inbounds %struct.snd_seq_client_port, ptr %23, i32 0, i32 16, !dbg !5339
  store i32 %22, ptr %synth_voices20, align 8, !dbg !5340
  %24 = load ptr, ptr %info.addr, align 8, !dbg !5341
  %flags = getelementptr inbounds %struct.snd_seq_port_info, ptr %24, i32 0, i32 10, !dbg !5342
  %25 = load i32, ptr %flags, align 8, !dbg !5342
  %and = and i32 %25, 2, !dbg !5343
  %tobool21 = icmp ne i32 %and, 0, !dbg !5344
  %26 = zext i1 %tobool21 to i64, !dbg !5344
  %cond = select i1 %tobool21, i32 1, i32 0, !dbg !5344
  %27 = load ptr, ptr %port.addr, align 8, !dbg !5345
  %timestamping = getelementptr inbounds %struct.snd_seq_client_port, ptr %27, i32 0, i32 10, !dbg !5346
  %28 = trunc i32 %cond to i8, !dbg !5347
  %bf.load = load i8, ptr %timestamping, align 8, !dbg !5347
  %bf.value = and i8 %28, 1, !dbg !5347
  %bf.shl = shl i8 %bf.value, 1, !dbg !5347
  %bf.clear = and i8 %bf.load, -3, !dbg !5347
  %bf.set = or i8 %bf.clear, %bf.shl, !dbg !5347
  store i8 %bf.set, ptr %timestamping, align 8, !dbg !5347
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !5347
  %29 = load ptr, ptr %info.addr, align 8, !dbg !5348
  %flags22 = getelementptr inbounds %struct.snd_seq_port_info, ptr %29, i32 0, i32 10, !dbg !5349
  %30 = load i32, ptr %flags22, align 8, !dbg !5349
  %and23 = and i32 %30, 4, !dbg !5350
  %tobool24 = icmp ne i32 %and23, 0, !dbg !5351
  %31 = zext i1 %tobool24 to i64, !dbg !5351
  %cond25 = select i1 %tobool24, i32 1, i32 0, !dbg !5351
  %32 = load ptr, ptr %port.addr, align 8, !dbg !5352
  %time_real = getelementptr inbounds %struct.snd_seq_client_port, ptr %32, i32 0, i32 10, !dbg !5353
  %33 = trunc i32 %cond25 to i8, !dbg !5354
  %bf.load26 = load i8, ptr %time_real, align 8, !dbg !5354
  %bf.value27 = and i8 %33, 1, !dbg !5354
  %bf.shl28 = shl i8 %bf.value27, 2, !dbg !5354
  %bf.clear29 = and i8 %bf.load26, -5, !dbg !5354
  %bf.set30 = or i8 %bf.clear29, %bf.shl28, !dbg !5354
  store i8 %bf.set30, ptr %time_real, align 8, !dbg !5354
  %bf.result.cast31 = zext i8 %bf.value27 to i32, !dbg !5354
  %34 = load ptr, ptr %info.addr, align 8, !dbg !5355
  %time_queue = getelementptr inbounds %struct.snd_seq_port_info, ptr %34, i32 0, i32 11, !dbg !5356
  %35 = load i8, ptr %time_queue, align 4, !dbg !5356
  %conv32 = zext i8 %35 to i32, !dbg !5355
  %36 = load ptr, ptr %port.addr, align 8, !dbg !5357
  %time_queue33 = getelementptr inbounds %struct.snd_seq_client_port, ptr %36, i32 0, i32 11, !dbg !5358
  store i32 %conv32, ptr %time_queue33, align 4, !dbg !5359
  %37 = load ptr, ptr %info.addr, align 8, !dbg !5360
  %direction = getelementptr inbounds %struct.snd_seq_port_info, ptr %37, i32 0, i32 12, !dbg !5361
  %38 = load i8, ptr %direction, align 1, !dbg !5361
  %39 = load ptr, ptr %port.addr, align 8, !dbg !5362
  %direction34 = getelementptr inbounds %struct.snd_seq_client_port, ptr %39, i32 0, i32 17, !dbg !5363
  store i8 %38, ptr %direction34, align 4, !dbg !5364
  %40 = load ptr, ptr %info.addr, align 8, !dbg !5365
  %ump_group = getelementptr inbounds %struct.snd_seq_port_info, ptr %40, i32 0, i32 13, !dbg !5366
  %41 = load i8, ptr %ump_group, align 2, !dbg !5366
  %42 = load ptr, ptr %port.addr, align 8, !dbg !5367
  %ump_group35 = getelementptr inbounds %struct.snd_seq_client_port, ptr %42, i32 0, i32 18, !dbg !5368
  store i8 %41, ptr %ump_group35, align 1, !dbg !5369
  %43 = load ptr, ptr %port.addr, align 8, !dbg !5370
  %ump_group36 = getelementptr inbounds %struct.snd_seq_client_port, ptr %43, i32 0, i32 18, !dbg !5372
  %44 = load i8, ptr %ump_group36, align 1, !dbg !5372
  %conv37 = zext i8 %44 to i32, !dbg !5370
  %cmp = icmp sgt i32 %conv37, 16, !dbg !5373
  br i1 %cmp, label %if.then39, label %if.end41, !dbg !5374

if.then39:                                        ; preds = %if.end15
  %45 = load ptr, ptr %port.addr, align 8, !dbg !5375
  %ump_group40 = getelementptr inbounds %struct.snd_seq_client_port, ptr %45, i32 0, i32 18, !dbg !5376
  store i8 0, ptr %ump_group40, align 1, !dbg !5377
  br label %if.end41, !dbg !5375

if.end41:                                         ; preds = %if.then39, %if.end15
  %46 = load ptr, ptr %port.addr, align 8, !dbg !5378
  %direction42 = getelementptr inbounds %struct.snd_seq_client_port, ptr %46, i32 0, i32 17, !dbg !5380
  %47 = load i8, ptr %direction42, align 4, !dbg !5380
  %tobool43 = icmp ne i8 %47, 0, !dbg !5378
  br i1 %tobool43, label %if.end62, label %if.then44, !dbg !5381

if.then44:                                        ; preds = %if.end41
  %48 = load ptr, ptr %info.addr, align 8, !dbg !5382
  %capability45 = getelementptr inbounds %struct.snd_seq_port_info, ptr %48, i32 0, i32 2, !dbg !5385
  %49 = load i32, ptr %capability45, align 4, !dbg !5385
  %and46 = and i32 %49, 1, !dbg !5386
  %tobool47 = icmp ne i32 %and46, 0, !dbg !5386
  br i1 %tobool47, label %if.then48, label %if.end52, !dbg !5387

if.then48:                                        ; preds = %if.then44
  %50 = load ptr, ptr %port.addr, align 8, !dbg !5388
  %direction49 = getelementptr inbounds %struct.snd_seq_client_port, ptr %50, i32 0, i32 17, !dbg !5389
  %51 = load i8, ptr %direction49, align 4, !dbg !5390
  %conv50 = zext i8 %51 to i32, !dbg !5390
  %or = or i32 %conv50, 1, !dbg !5390
  %conv51 = trunc i32 %or to i8, !dbg !5390
  store i8 %conv51, ptr %direction49, align 4, !dbg !5390
  br label %if.end52, !dbg !5388

if.end52:                                         ; preds = %if.then48, %if.then44
  %52 = load ptr, ptr %info.addr, align 8, !dbg !5391
  %capability53 = getelementptr inbounds %struct.snd_seq_port_info, ptr %52, i32 0, i32 2, !dbg !5393
  %53 = load i32, ptr %capability53, align 4, !dbg !5393
  %and54 = and i32 %53, 2, !dbg !5394
  %tobool55 = icmp ne i32 %and54, 0, !dbg !5394
  br i1 %tobool55, label %if.then56, label %if.end61, !dbg !5395

if.then56:                                        ; preds = %if.end52
  %54 = load ptr, ptr %port.addr, align 8, !dbg !5396
  %direction57 = getelementptr inbounds %struct.snd_seq_client_port, ptr %54, i32 0, i32 17, !dbg !5397
  %55 = load i8, ptr %direction57, align 4, !dbg !5398
  %conv58 = zext i8 %55 to i32, !dbg !5398
  %or59 = or i32 %conv58, 2, !dbg !5398
  %conv60 = trunc i32 %or59 to i8, !dbg !5398
  store i8 %conv60, ptr %direction57, align 4, !dbg !5398
  br label %if.end61, !dbg !5396

if.end61:                                         ; preds = %if.then56, %if.end52
  br label %if.end62, !dbg !5399

if.end62:                                         ; preds = %if.end61, %if.end41
  store i32 0, ptr %retval, align 4, !dbg !5400
  br label %return, !dbg !5400

return:                                           ; preds = %if.end62, %if.then
  %56 = load i32, ptr %retval, align 4, !dbg !5401
  ret i32 %56, !dbg !5401
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5402 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_get_port_info(ptr noundef %port, ptr noundef %info) #0 align 16 !dbg !5406 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5408, metadata !DIExpression()), !dbg !5413
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5409, metadata !DIExpression()), !dbg !5414
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5415
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5410, metadata !DIExpression()), !dbg !5415
  %0 = load ptr, ptr %port.addr, align 8, !dbg !5415
  %tobool = icmp ne ptr %0, null, !dbg !5415
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5415

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %info.addr, align 8, !dbg !5415
  %tobool1 = icmp ne ptr %1, null, !dbg !5415
  %lnot = xor i1 %tobool1, true, !dbg !5415
  br label %lor.end, !dbg !5415

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true, !dbg !5415
  %lnot3 = xor i1 %lnot2, true, !dbg !5415
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5415
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5415
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5415
  %tobool4 = icmp ne i32 %3, 0, !dbg !5415
  %lnot5 = xor i1 %tobool4, true, !dbg !5415
  %lnot7 = xor i1 %lnot5, true, !dbg !5415
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5415
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5415
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5415
  store i64 %expval, ptr %tmp, align 8, !dbg !5415
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5416
  %4 = load i64, ptr %tmp, align 8, !dbg !5415
  %tobool9 = icmp ne i64 %4, 0, !dbg !5416
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5417

if.then:                                          ; preds = %lor.end
  store i32 -22, ptr %retval, align 4, !dbg !5418
  br label %return, !dbg !5418

if.end:                                           ; preds = %lor.end
  %5 = load ptr, ptr %info.addr, align 8, !dbg !5419
  %name = getelementptr inbounds %struct.snd_seq_port_info, ptr %5, i32 0, i32 1, !dbg !5420
  %arraydecay = getelementptr inbounds [64 x i8], ptr %name, i64 0, i64 0, !dbg !5419
  %6 = load ptr, ptr %port.addr, align 8, !dbg !5421
  %name10 = getelementptr inbounds %struct.snd_seq_client_port, ptr %6, i32 0, i32 2, !dbg !5422
  %arraydecay11 = getelementptr inbounds [64 x i8], ptr %name10, i64 0, i64 0, !dbg !5421
  %call = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %arraydecay11, i64 noundef 64) #18, !dbg !5423
  %7 = load ptr, ptr %port.addr, align 8, !dbg !5424
  %capability = getelementptr inbounds %struct.snd_seq_client_port, ptr %7, i32 0, i32 12, !dbg !5425
  %8 = load i32, ptr %capability, align 8, !dbg !5425
  %9 = load ptr, ptr %info.addr, align 8, !dbg !5426
  %capability12 = getelementptr inbounds %struct.snd_seq_port_info, ptr %9, i32 0, i32 2, !dbg !5427
  store i32 %8, ptr %capability12, align 4, !dbg !5428
  %10 = load ptr, ptr %port.addr, align 8, !dbg !5429
  %type = getelementptr inbounds %struct.snd_seq_client_port, ptr %10, i32 0, i32 13, !dbg !5430
  %11 = load i32, ptr %type, align 4, !dbg !5430
  %12 = load ptr, ptr %info.addr, align 8, !dbg !5431
  %type13 = getelementptr inbounds %struct.snd_seq_port_info, ptr %12, i32 0, i32 3, !dbg !5432
  store i32 %11, ptr %type13, align 8, !dbg !5433
  %13 = load ptr, ptr %port.addr, align 8, !dbg !5434
  %midi_channels = getelementptr inbounds %struct.snd_seq_client_port, ptr %13, i32 0, i32 14, !dbg !5435
  %14 = load i32, ptr %midi_channels, align 8, !dbg !5435
  %15 = load ptr, ptr %info.addr, align 8, !dbg !5436
  %midi_channels14 = getelementptr inbounds %struct.snd_seq_port_info, ptr %15, i32 0, i32 4, !dbg !5437
  store i32 %14, ptr %midi_channels14, align 4, !dbg !5438
  %16 = load ptr, ptr %port.addr, align 8, !dbg !5439
  %midi_voices = getelementptr inbounds %struct.snd_seq_client_port, ptr %16, i32 0, i32 15, !dbg !5440
  %17 = load i32, ptr %midi_voices, align 4, !dbg !5440
  %18 = load ptr, ptr %info.addr, align 8, !dbg !5441
  %midi_voices15 = getelementptr inbounds %struct.snd_seq_port_info, ptr %18, i32 0, i32 5, !dbg !5442
  store i32 %17, ptr %midi_voices15, align 8, !dbg !5443
  %19 = load ptr, ptr %port.addr, align 8, !dbg !5444
  %synth_voices = getelementptr inbounds %struct.snd_seq_client_port, ptr %19, i32 0, i32 16, !dbg !5445
  %20 = load i32, ptr %synth_voices, align 8, !dbg !5445
  %21 = load ptr, ptr %info.addr, align 8, !dbg !5446
  %synth_voices16 = getelementptr inbounds %struct.snd_seq_port_info, ptr %21, i32 0, i32 6, !dbg !5447
  store i32 %20, ptr %synth_voices16, align 4, !dbg !5448
  %22 = load ptr, ptr %port.addr, align 8, !dbg !5449
  %c_src = getelementptr inbounds %struct.snd_seq_client_port, ptr %22, i32 0, i32 5, !dbg !5450
  %count = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %c_src, i32 0, i32 1, !dbg !5451
  %23 = load i32, ptr %count, align 8, !dbg !5451
  %24 = load ptr, ptr %info.addr, align 8, !dbg !5452
  %read_use = getelementptr inbounds %struct.snd_seq_port_info, ptr %24, i32 0, i32 7, !dbg !5453
  store i32 %23, ptr %read_use, align 8, !dbg !5454
  %25 = load ptr, ptr %port.addr, align 8, !dbg !5455
  %c_dest = getelementptr inbounds %struct.snd_seq_client_port, ptr %25, i32 0, i32 6, !dbg !5456
  %count17 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %c_dest, i32 0, i32 1, !dbg !5457
  %26 = load i32, ptr %count17, align 8, !dbg !5457
  %27 = load ptr, ptr %info.addr, align 8, !dbg !5458
  %write_use = getelementptr inbounds %struct.snd_seq_port_info, ptr %27, i32 0, i32 8, !dbg !5459
  store i32 %26, ptr %write_use, align 4, !dbg !5460
  %28 = load ptr, ptr %info.addr, align 8, !dbg !5461
  %flags = getelementptr inbounds %struct.snd_seq_port_info, ptr %28, i32 0, i32 10, !dbg !5462
  store i32 0, ptr %flags, align 8, !dbg !5463
  %29 = load ptr, ptr %port.addr, align 8, !dbg !5464
  %timestamping = getelementptr inbounds %struct.snd_seq_client_port, ptr %29, i32 0, i32 10, !dbg !5466
  %bf.load = load i8, ptr %timestamping, align 8, !dbg !5466
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5466
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5466
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5466
  %tobool18 = icmp ne i32 %bf.cast, 0, !dbg !5464
  br i1 %tobool18, label %if.then19, label %if.end32, !dbg !5467

if.then19:                                        ; preds = %if.end
  %30 = load ptr, ptr %info.addr, align 8, !dbg !5468
  %flags20 = getelementptr inbounds %struct.snd_seq_port_info, ptr %30, i32 0, i32 10, !dbg !5470
  %31 = load i32, ptr %flags20, align 8, !dbg !5471
  %or = or i32 %31, 2, !dbg !5471
  store i32 %or, ptr %flags20, align 8, !dbg !5471
  %32 = load ptr, ptr %port.addr, align 8, !dbg !5472
  %time_real = getelementptr inbounds %struct.snd_seq_client_port, ptr %32, i32 0, i32 10, !dbg !5474
  %bf.load21 = load i8, ptr %time_real, align 8, !dbg !5474
  %bf.lshr22 = lshr i8 %bf.load21, 2, !dbg !5474
  %bf.clear23 = and i8 %bf.lshr22, 1, !dbg !5474
  %bf.cast24 = zext i8 %bf.clear23 to i32, !dbg !5474
  %tobool25 = icmp ne i32 %bf.cast24, 0, !dbg !5472
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !5475

if.then26:                                        ; preds = %if.then19
  %33 = load ptr, ptr %info.addr, align 8, !dbg !5476
  %flags27 = getelementptr inbounds %struct.snd_seq_port_info, ptr %33, i32 0, i32 10, !dbg !5477
  %34 = load i32, ptr %flags27, align 8, !dbg !5478
  %or28 = or i32 %34, 4, !dbg !5478
  store i32 %or28, ptr %flags27, align 8, !dbg !5478
  br label %if.end29, !dbg !5476

if.end29:                                         ; preds = %if.then26, %if.then19
  %35 = load ptr, ptr %port.addr, align 8, !dbg !5479
  %time_queue = getelementptr inbounds %struct.snd_seq_client_port, ptr %35, i32 0, i32 11, !dbg !5480
  %36 = load i32, ptr %time_queue, align 4, !dbg !5480
  %conv30 = trunc i32 %36 to i8, !dbg !5479
  %37 = load ptr, ptr %info.addr, align 8, !dbg !5481
  %time_queue31 = getelementptr inbounds %struct.snd_seq_port_info, ptr %37, i32 0, i32 11, !dbg !5482
  store i8 %conv30, ptr %time_queue31, align 4, !dbg !5483
  br label %if.end32, !dbg !5484

if.end32:                                         ; preds = %if.end29, %if.end
  %38 = load ptr, ptr %port.addr, align 8, !dbg !5485
  %direction = getelementptr inbounds %struct.snd_seq_client_port, ptr %38, i32 0, i32 17, !dbg !5486
  %39 = load i8, ptr %direction, align 4, !dbg !5486
  %40 = load ptr, ptr %info.addr, align 8, !dbg !5487
  %direction33 = getelementptr inbounds %struct.snd_seq_port_info, ptr %40, i32 0, i32 12, !dbg !5488
  store i8 %39, ptr %direction33, align 1, !dbg !5489
  %41 = load ptr, ptr %port.addr, align 8, !dbg !5490
  %ump_group = getelementptr inbounds %struct.snd_seq_client_port, ptr %41, i32 0, i32 18, !dbg !5491
  %42 = load i8, ptr %ump_group, align 1, !dbg !5491
  %43 = load ptr, ptr %info.addr, align 8, !dbg !5492
  %ump_group34 = getelementptr inbounds %struct.snd_seq_port_info, ptr %43, i32 0, i32 13, !dbg !5493
  store i8 %42, ptr %ump_group34, align 2, !dbg !5494
  store i32 0, ptr %retval, align 4, !dbg !5495
  br label %return, !dbg !5495

return:                                           ; preds = %if.end32, %if.then
  %44 = load i32, ptr %retval, align 4, !dbg !5496
  ret i32 %44, !dbg !5496
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_port_connect(ptr noundef %connector, ptr noundef %src_client, ptr noundef %src_port, ptr noundef %dest_client, ptr noundef %dest_port, ptr noundef %info) #0 align 16 !dbg !5497 {
entry:
  %retval = alloca i32, align 4
  %connector.addr = alloca ptr, align 8
  %src_client.addr = alloca ptr, align 8
  %src_port.addr = alloca ptr, align 8
  %dest_client.addr = alloca ptr, align 8
  %dest_port.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %subs = alloca ptr, align 8
  %exclusive = alloca i8, align 1
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %connector, ptr %connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %connector.addr, metadata !5501, metadata !DIExpression()), !dbg !5512
  store ptr %src_client, ptr %src_client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_client.addr, metadata !5502, metadata !DIExpression()), !dbg !5513
  store ptr %src_port, ptr %src_port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_port.addr, metadata !5503, metadata !DIExpression()), !dbg !5514
  store ptr %dest_client, ptr %dest_client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_client.addr, metadata !5504, metadata !DIExpression()), !dbg !5515
  store ptr %dest_port, ptr %dest_port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_port.addr, metadata !5505, metadata !DIExpression()), !dbg !5516
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5506, metadata !DIExpression()), !dbg !5517
  call void @llvm.lifetime.start.p0(i64 8, ptr %subs) #17, !dbg !5518
  call void @llvm.dbg.declare(metadata ptr %subs, metadata !5507, metadata !DIExpression()), !dbg !5519
  call void @llvm.lifetime.start.p0(i64 1, ptr %exclusive) #17, !dbg !5520
  call void @llvm.dbg.declare(metadata ptr %exclusive, metadata !5508, metadata !DIExpression()), !dbg !5521
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5509, metadata !DIExpression()), !dbg !5523
  %call = call noalias ptr @kzalloc(i64 noundef 120, i32 noundef 3264) #20, !dbg !5524
  store ptr %call, ptr %subs, align 8, !dbg !5525
  %0 = load ptr, ptr %subs, align 8, !dbg !5526
  %tobool = icmp ne ptr %0, null, !dbg !5526
  br i1 %tobool, label %if.end, label %if.then, !dbg !5528

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5529

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %subs, align 8, !dbg !5530
  %info1 = getelementptr inbounds %struct.snd_seq_subscribers, ptr %1, i32 0, i32 0, !dbg !5531
  %2 = load ptr, ptr %info.addr, align 8, !dbg !5532
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %info1, ptr align 4 %2, i64 80, i1 false), !dbg !5533
  %3 = load ptr, ptr %subs, align 8, !dbg !5534
  %ref_count = getelementptr inbounds %struct.snd_seq_subscribers, ptr %3, i32 0, i32 3, !dbg !5535
  call void @atomic_set(ptr noundef %ref_count, i32 noundef 0) #18, !dbg !5536
  %4 = load ptr, ptr %subs, align 8, !dbg !5537
  %src_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %4, i32 0, i32 1, !dbg !5538
  call void @INIT_LIST_HEAD(ptr noundef %src_list) #18, !dbg !5539
  %5 = load ptr, ptr %subs, align 8, !dbg !5540
  %dest_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %5, i32 0, i32 2, !dbg !5541
  call void @INIT_LIST_HEAD(ptr noundef %dest_list) #18, !dbg !5542
  %6 = load ptr, ptr %info.addr, align 8, !dbg !5543
  %flags = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %6, i32 0, i32 3, !dbg !5544
  %7 = load i32, ptr %flags, align 4, !dbg !5544
  %and = and i32 %7, 1, !dbg !5545
  %tobool2 = icmp ne i32 %and, 0, !dbg !5546
  %lnot = xor i1 %tobool2, true, !dbg !5546
  %lnot3 = xor i1 %lnot, true, !dbg !5547
  %frombool = zext i1 %lnot3 to i8, !dbg !5548
  store i8 %frombool, ptr %exclusive, align 1, !dbg !5548
  %8 = load ptr, ptr %src_client.addr, align 8, !dbg !5549
  %9 = load ptr, ptr %src_port.addr, align 8, !dbg !5550
  %10 = load ptr, ptr %subs, align 8, !dbg !5551
  %11 = load i8, ptr %exclusive, align 1, !dbg !5552, !range !4760, !noundef !549
  %tobool4 = trunc i8 %11 to i1, !dbg !5552
  %12 = load ptr, ptr %connector.addr, align 8, !dbg !5553
  %number = getelementptr inbounds %struct.snd_seq_client, ptr %12, i32 0, i32 5, !dbg !5554
  %13 = load i32, ptr %number, align 8, !dbg !5554
  %14 = load ptr, ptr %src_client.addr, align 8, !dbg !5555
  %number5 = getelementptr inbounds %struct.snd_seq_client, ptr %14, i32 0, i32 5, !dbg !5556
  %15 = load i32, ptr %number5, align 8, !dbg !5556
  %cmp = icmp ne i32 %13, %15, !dbg !5557
  %call6 = call i32 @check_and_subscribe_port(ptr noundef %8, ptr noundef %9, ptr noundef %10, i1 noundef zeroext true, i1 noundef zeroext %tobool4, i1 noundef zeroext %cmp) #18, !dbg !5558
  store i32 %call6, ptr %err, align 4, !dbg !5559
  %16 = load i32, ptr %err, align 4, !dbg !5560
  %cmp7 = icmp slt i32 %16, 0, !dbg !5562
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5563

if.then8:                                         ; preds = %if.end
  br label %error, !dbg !5564

if.end9:                                          ; preds = %if.end
  %17 = load ptr, ptr %dest_client.addr, align 8, !dbg !5565
  %18 = load ptr, ptr %dest_port.addr, align 8, !dbg !5566
  %19 = load ptr, ptr %subs, align 8, !dbg !5567
  %20 = load i8, ptr %exclusive, align 1, !dbg !5568, !range !4760, !noundef !549
  %tobool10 = trunc i8 %20 to i1, !dbg !5568
  %21 = load ptr, ptr %connector.addr, align 8, !dbg !5569
  %number11 = getelementptr inbounds %struct.snd_seq_client, ptr %21, i32 0, i32 5, !dbg !5570
  %22 = load i32, ptr %number11, align 8, !dbg !5570
  %23 = load ptr, ptr %dest_client.addr, align 8, !dbg !5571
  %number12 = getelementptr inbounds %struct.snd_seq_client, ptr %23, i32 0, i32 5, !dbg !5572
  %24 = load i32, ptr %number12, align 8, !dbg !5572
  %cmp13 = icmp ne i32 %22, %24, !dbg !5573
  %call14 = call i32 @check_and_subscribe_port(ptr noundef %17, ptr noundef %18, ptr noundef %19, i1 noundef zeroext false, i1 noundef zeroext %tobool10, i1 noundef zeroext %cmp13) #18, !dbg !5574
  store i32 %call14, ptr %err, align 4, !dbg !5575
  %25 = load i32, ptr %err, align 4, !dbg !5576
  %cmp15 = icmp slt i32 %25, 0, !dbg !5578
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5579

if.then16:                                        ; preds = %if.end9
  br label %error_dest, !dbg !5580

if.end17:                                         ; preds = %if.end9
  store i32 0, ptr %retval, align 4, !dbg !5581
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5581

error_dest:                                       ; preds = %if.then16
  call void @llvm.dbg.label(metadata !5510), !dbg !5582
  %26 = load ptr, ptr %src_client.addr, align 8, !dbg !5583
  %27 = load ptr, ptr %src_port.addr, align 8, !dbg !5584
  %28 = load ptr, ptr %subs, align 8, !dbg !5585
  %29 = load ptr, ptr %connector.addr, align 8, !dbg !5586
  %number18 = getelementptr inbounds %struct.snd_seq_client, ptr %29, i32 0, i32 5, !dbg !5587
  %30 = load i32, ptr %number18, align 8, !dbg !5587
  %31 = load ptr, ptr %src_client.addr, align 8, !dbg !5588
  %number19 = getelementptr inbounds %struct.snd_seq_client, ptr %31, i32 0, i32 5, !dbg !5589
  %32 = load i32, ptr %number19, align 8, !dbg !5589
  %cmp20 = icmp ne i32 %30, %32, !dbg !5590
  call void @delete_and_unsubscribe_port(ptr noundef %26, ptr noundef %27, ptr noundef %28, i1 noundef zeroext true, i1 noundef zeroext %cmp20) #18, !dbg !5591
  br label %error, !dbg !5591

error:                                            ; preds = %error_dest, %if.then8
  call void @llvm.dbg.label(metadata !5511), !dbg !5592
  %33 = load ptr, ptr %subs, align 8, !dbg !5593
  call void @kfree(ptr noundef %33) #18, !dbg !5594
  %34 = load i32, ptr %err, align 4, !dbg !5595
  store i32 %34, ptr %retval, align 4, !dbg !5596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5596

cleanup:                                          ; preds = %error, %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5597
  call void @llvm.lifetime.end.p0(i64 1, ptr %exclusive) #17, !dbg !5597
  call void @llvm.lifetime.end.p0(i64 8, ptr %subs) #17, !dbg !5597
  %35 = load i32, ptr %retval, align 4, !dbg !5597
  ret i32 %35, !dbg !5597
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_and_subscribe_port(ptr noundef %client, ptr noundef %port, ptr noundef %subs, i1 noundef zeroext %is_src, i1 noundef zeroext %exclusive, i1 noundef zeroext %ack) #0 align 16 !dbg !5598 {
entry:
  %client.addr = alloca ptr, align 8
  %port.addr = alloca ptr, align 8
  %subs.addr = alloca ptr, align 8
  %is_src.addr = alloca i8, align 1
  %exclusive.addr = alloca i8, align 1
  %ack.addr = alloca i8, align 1
  %grp = alloca ptr, align 8
  %p = alloca ptr, align 8
  %s = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5602, metadata !DIExpression()), !dbg !5613
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5603, metadata !DIExpression()), !dbg !5614
  store ptr %subs, ptr %subs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subs.addr, metadata !5604, metadata !DIExpression()), !dbg !5615
  %frombool = zext i1 %is_src to i8
  store i8 %frombool, ptr %is_src.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_src.addr, metadata !5605, metadata !DIExpression()), !dbg !5616
  %frombool1 = zext i1 %exclusive to i8
  store i8 %frombool1, ptr %exclusive.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %exclusive.addr, metadata !5606, metadata !DIExpression()), !dbg !5617
  %frombool2 = zext i1 %ack to i8
  store i8 %frombool2, ptr %ack.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ack.addr, metadata !5607, metadata !DIExpression()), !dbg !5618
  call void @llvm.lifetime.start.p0(i64 8, ptr %grp) #17, !dbg !5619
  call void @llvm.dbg.declare(metadata ptr %grp, metadata !5608, metadata !DIExpression()), !dbg !5620
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !5621
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5609, metadata !DIExpression()), !dbg !5622
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #17, !dbg !5623
  call void @llvm.dbg.declare(metadata ptr %s, metadata !5610, metadata !DIExpression()), !dbg !5624
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5625
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5611, metadata !DIExpression()), !dbg !5626
  %0 = load i8, ptr %is_src.addr, align 1, !dbg !5627, !range !4760, !noundef !549
  %tobool = trunc i8 %0 to i1, !dbg !5627
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5627

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %port.addr, align 8, !dbg !5628
  %c_src = getelementptr inbounds %struct.snd_seq_client_port, ptr %1, i32 0, i32 5, !dbg !5629
  br label %cond.end, !dbg !5627

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %port.addr, align 8, !dbg !5630
  %c_dest = getelementptr inbounds %struct.snd_seq_client_port, ptr %2, i32 0, i32 6, !dbg !5631
  br label %cond.end, !dbg !5627

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %c_src, %cond.true ], [ %c_dest, %cond.false ], !dbg !5627
  store ptr %cond, ptr %grp, align 8, !dbg !5632
  store i32 -16, ptr %err, align 4, !dbg !5633
  %3 = load ptr, ptr %grp, align 8, !dbg !5634
  %list_mutex = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %3, i32 0, i32 3, !dbg !5635
  call void @down_write(ptr noundef %list_mutex) #18, !dbg !5636
  %4 = load i8, ptr %exclusive.addr, align 1, !dbg !5637, !range !4760, !noundef !549
  %tobool3 = trunc i8 %4 to i1, !dbg !5637
  br i1 %tobool3, label %if.then, label %if.else, !dbg !5639

if.then:                                          ; preds = %cond.end
  %5 = load ptr, ptr %grp, align 8, !dbg !5640
  %list_head = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %5, i32 0, i32 0, !dbg !5643
  %call = call i32 @list_empty(ptr noundef %list_head) #18, !dbg !5644
  %tobool4 = icmp ne i32 %call, 0, !dbg !5644
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !5645

if.then5:                                         ; preds = %if.then
  br label %__error, !dbg !5646

if.end:                                           ; preds = %if.then
  br label %if.end22, !dbg !5647

if.else:                                          ; preds = %cond.end
  %6 = load ptr, ptr %grp, align 8, !dbg !5648
  %exclusive6 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %6, i32 0, i32 2, !dbg !5651
  %bf.load = load i8, ptr %exclusive6, align 4, !dbg !5651
  %bf.clear = and i8 %bf.load, 1, !dbg !5651
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5651
  %tobool7 = icmp ne i32 %bf.cast, 0, !dbg !5648
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5652

if.then8:                                         ; preds = %if.else
  br label %__error, !dbg !5653

if.end9:                                          ; preds = %if.else
  %7 = load ptr, ptr %grp, align 8, !dbg !5654
  %list_head10 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %7, i32 0, i32 0, !dbg !5654
  %next = getelementptr inbounds %struct.list_head, ptr %list_head10, i32 0, i32 0, !dbg !5654
  %8 = load ptr, ptr %next, align 8, !dbg !5654
  store ptr %8, ptr %p, align 8, !dbg !5654
  br label %for.cond, !dbg !5654

for.cond:                                         ; preds = %for.inc, %if.end9
  %9 = load ptr, ptr %p, align 8, !dbg !5656
  %10 = load ptr, ptr %grp, align 8, !dbg !5656
  %list_head11 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %10, i32 0, i32 0, !dbg !5656
  %call12 = call i32 @list_is_head(ptr noundef %9, ptr noundef %list_head11) #18, !dbg !5656
  %tobool13 = icmp ne i32 %call12, 0, !dbg !5656
  %lnot = xor i1 %tobool13, true, !dbg !5656
  br i1 %lnot, label %for.body, label %for.end, !dbg !5654

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %p, align 8, !dbg !5658
  %12 = load i8, ptr %is_src.addr, align 1, !dbg !5660, !range !4760, !noundef !549
  %tobool14 = trunc i8 %12 to i1, !dbg !5660
  %call15 = call ptr @get_subscriber(ptr noundef %11, i1 noundef zeroext %tobool14) #18, !dbg !5661
  store ptr %call15, ptr %s, align 8, !dbg !5662
  %13 = load ptr, ptr %subs.addr, align 8, !dbg !5663
  %info = getelementptr inbounds %struct.snd_seq_subscribers, ptr %13, i32 0, i32 0, !dbg !5665
  %14 = load ptr, ptr %s, align 8, !dbg !5666
  %info16 = getelementptr inbounds %struct.snd_seq_subscribers, ptr %14, i32 0, i32 0, !dbg !5667
  %call17 = call i32 @match_subs_info(ptr noundef %info, ptr noundef %info16) #18, !dbg !5668
  %tobool18 = icmp ne i32 %call17, 0, !dbg !5668
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5669

if.then19:                                        ; preds = %for.body
  br label %__error, !dbg !5670

if.end20:                                         ; preds = %for.body
  br label %for.inc, !dbg !5671

for.inc:                                          ; preds = %if.end20
  %15 = load ptr, ptr %p, align 8, !dbg !5656
  %next21 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !5656
  %16 = load ptr, ptr %next21, align 8, !dbg !5656
  store ptr %16, ptr %p, align 8, !dbg !5656
  br label %for.cond, !dbg !5656, !llvm.loop !5672

for.end:                                          ; preds = %for.cond
  br label %if.end22

if.end22:                                         ; preds = %for.end, %if.end
  %17 = load ptr, ptr %client.addr, align 8, !dbg !5674
  %18 = load ptr, ptr %port.addr, align 8, !dbg !5675
  %19 = load ptr, ptr %grp, align 8, !dbg !5676
  %20 = load ptr, ptr %subs.addr, align 8, !dbg !5677
  %info23 = getelementptr inbounds %struct.snd_seq_subscribers, ptr %20, i32 0, i32 0, !dbg !5678
  %21 = load i8, ptr %ack.addr, align 1, !dbg !5679, !range !4760, !noundef !549
  %tobool24 = trunc i8 %21 to i1, !dbg !5679
  %conv = zext i1 %tobool24 to i32, !dbg !5679
  %call25 = call i32 @subscribe_port(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %info23, i32 noundef %conv) #18, !dbg !5680
  store i32 %call25, ptr %err, align 4, !dbg !5681
  %22 = load i32, ptr %err, align 4, !dbg !5682
  %cmp = icmp slt i32 %22, 0, !dbg !5684
  br i1 %cmp, label %if.then27, label %if.end31, !dbg !5685

if.then27:                                        ; preds = %if.end22
  %23 = load ptr, ptr %grp, align 8, !dbg !5686
  %exclusive28 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %23, i32 0, i32 2, !dbg !5688
  %bf.load29 = load i8, ptr %exclusive28, align 4, !dbg !5689
  %bf.clear30 = and i8 %bf.load29, -2, !dbg !5689
  %bf.set = or i8 %bf.clear30, 0, !dbg !5689
  store i8 %bf.set, ptr %exclusive28, align 4, !dbg !5689
  br label %__error, !dbg !5690

if.end31:                                         ; preds = %if.end22
  %24 = load ptr, ptr %grp, align 8, !dbg !5691
  %list_lock = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %24, i32 0, i32 4, !dbg !5691
  call void @_raw_write_lock_irq(ptr noundef %list_lock) #18, !dbg !5691
  %25 = load i8, ptr %is_src.addr, align 1, !dbg !5692, !range !4760, !noundef !549
  %tobool32 = trunc i8 %25 to i1, !dbg !5692
  br i1 %tobool32, label %if.then33, label %if.else35, !dbg !5694

if.then33:                                        ; preds = %if.end31
  %26 = load ptr, ptr %subs.addr, align 8, !dbg !5695
  %src_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %26, i32 0, i32 1, !dbg !5696
  %27 = load ptr, ptr %grp, align 8, !dbg !5697
  %list_head34 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %27, i32 0, i32 0, !dbg !5698
  call void @list_add_tail(ptr noundef %src_list, ptr noundef %list_head34) #18, !dbg !5699
  br label %if.end37, !dbg !5699

if.else35:                                        ; preds = %if.end31
  %28 = load ptr, ptr %subs.addr, align 8, !dbg !5700
  %dest_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %28, i32 0, i32 2, !dbg !5701
  %29 = load ptr, ptr %grp, align 8, !dbg !5702
  %list_head36 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %29, i32 0, i32 0, !dbg !5703
  call void @list_add_tail(ptr noundef %dest_list, ptr noundef %list_head36) #18, !dbg !5704
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.then33
  %30 = load i8, ptr %exclusive.addr, align 1, !dbg !5705, !range !4760, !noundef !549
  %tobool38 = trunc i8 %30 to i1, !dbg !5705
  %conv39 = zext i1 %tobool38 to i32, !dbg !5705
  %31 = load ptr, ptr %grp, align 8, !dbg !5706
  %exclusive40 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %31, i32 0, i32 2, !dbg !5707
  %32 = trunc i32 %conv39 to i8, !dbg !5708
  %bf.load41 = load i8, ptr %exclusive40, align 4, !dbg !5708
  %bf.value = and i8 %32, 1, !dbg !5708
  %bf.clear42 = and i8 %bf.load41, -2, !dbg !5708
  %bf.set43 = or i8 %bf.clear42, %bf.value, !dbg !5708
  store i8 %bf.set43, ptr %exclusive40, align 4, !dbg !5708
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !5708
  %33 = load ptr, ptr %subs.addr, align 8, !dbg !5709
  %ref_count = getelementptr inbounds %struct.snd_seq_subscribers, ptr %33, i32 0, i32 3, !dbg !5710
  call void @atomic_inc(ptr noundef %ref_count) #18, !dbg !5711
  %34 = load ptr, ptr %grp, align 8, !dbg !5712
  %list_lock44 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %34, i32 0, i32 4, !dbg !5712
  call void @_raw_write_unlock_irq(ptr noundef %list_lock44) #18, !dbg !5712
  store i32 0, ptr %err, align 4, !dbg !5713
  br label %__error, !dbg !5714

__error:                                          ; preds = %if.end37, %if.then27, %if.then19, %if.then8, %if.then5
  call void @llvm.dbg.label(metadata !5612), !dbg !5715
  %35 = load ptr, ptr %grp, align 8, !dbg !5716
  %list_mutex45 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %35, i32 0, i32 3, !dbg !5717
  call void @up_write(ptr noundef %list_mutex45) #18, !dbg !5718
  %36 = load i32, ptr %err, align 4, !dbg !5719
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5720
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #17, !dbg !5720
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5720
  call void @llvm.lifetime.end.p0(i64 8, ptr %grp) #17, !dbg !5720
  ret i32 %36, !dbg !5721
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @delete_and_unsubscribe_port(ptr noundef %client, ptr noundef %port, ptr noundef %subs, i1 noundef zeroext %is_src, i1 noundef zeroext %ack) #0 align 16 !dbg !5722 {
entry:
  %client.addr = alloca ptr, align 8
  %port.addr = alloca ptr, align 8
  %subs.addr = alloca ptr, align 8
  %is_src.addr = alloca i8, align 1
  %ack.addr = alloca i8, align 1
  %grp = alloca ptr, align 8
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5726, metadata !DIExpression()), !dbg !5732
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5727, metadata !DIExpression()), !dbg !5733
  store ptr %subs, ptr %subs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subs.addr, metadata !5728, metadata !DIExpression()), !dbg !5734
  %frombool = zext i1 %is_src to i8
  store i8 %frombool, ptr %is_src.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_src.addr, metadata !5729, metadata !DIExpression()), !dbg !5735
  %frombool1 = zext i1 %ack to i8
  store i8 %frombool1, ptr %ack.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ack.addr, metadata !5730, metadata !DIExpression()), !dbg !5736
  call void @llvm.lifetime.start.p0(i64 8, ptr %grp) #17, !dbg !5737
  call void @llvm.dbg.declare(metadata ptr %grp, metadata !5731, metadata !DIExpression()), !dbg !5738
  %0 = load i8, ptr %is_src.addr, align 1, !dbg !5739, !range !4760, !noundef !549
  %tobool = trunc i8 %0 to i1, !dbg !5739
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5739

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %port.addr, align 8, !dbg !5740
  %c_src = getelementptr inbounds %struct.snd_seq_client_port, ptr %1, i32 0, i32 5, !dbg !5741
  br label %cond.end, !dbg !5739

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %port.addr, align 8, !dbg !5742
  %c_dest = getelementptr inbounds %struct.snd_seq_client_port, ptr %2, i32 0, i32 6, !dbg !5743
  br label %cond.end, !dbg !5739

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %c_src, %cond.true ], [ %c_dest, %cond.false ], !dbg !5739
  store ptr %cond, ptr %grp, align 8, !dbg !5744
  %3 = load ptr, ptr %grp, align 8, !dbg !5745
  %list_mutex = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %3, i32 0, i32 3, !dbg !5746
  call void @down_write(ptr noundef %list_mutex) #18, !dbg !5747
  %4 = load ptr, ptr %client.addr, align 8, !dbg !5748
  %5 = load ptr, ptr %port.addr, align 8, !dbg !5749
  %6 = load ptr, ptr %subs.addr, align 8, !dbg !5750
  %7 = load i8, ptr %is_src.addr, align 1, !dbg !5751, !range !4760, !noundef !549
  %tobool2 = trunc i8 %7 to i1, !dbg !5751
  %8 = load i8, ptr %ack.addr, align 1, !dbg !5752, !range !4760, !noundef !549
  %tobool3 = trunc i8 %8 to i1, !dbg !5752
  call void @__delete_and_unsubscribe_port(ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %tobool2, i1 noundef zeroext %tobool3) #18, !dbg !5753
  %9 = load ptr, ptr %grp, align 8, !dbg !5754
  %list_mutex4 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %9, i32 0, i32 3, !dbg !5755
  call void @up_write(ptr noundef %list_mutex4) #18, !dbg !5756
  call void @llvm.lifetime.end.p0(i64 8, ptr %grp) #17, !dbg !5757
  ret void, !dbg !5757
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_port_disconnect(ptr noundef %connector, ptr noundef %src_client, ptr noundef %src_port, ptr noundef %dest_client, ptr noundef %dest_port, ptr noundef %info) #0 align 16 !dbg !5758 {
entry:
  %retval = alloca i32, align 4
  %connector.addr = alloca ptr, align 8
  %src_client.addr = alloca ptr, align 8
  %src_port.addr = alloca ptr, align 8
  %dest_client.addr = alloca ptr, align 8
  %dest_port.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %subs = alloca ptr, align 8
  %err = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %connector, ptr %connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %connector.addr, metadata !5760, metadata !DIExpression()), !dbg !5775
  store ptr %src_client, ptr %src_client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_client.addr, metadata !5761, metadata !DIExpression()), !dbg !5776
  store ptr %src_port, ptr %src_port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_port.addr, metadata !5762, metadata !DIExpression()), !dbg !5777
  store ptr %dest_client, ptr %dest_client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_client.addr, metadata !5763, metadata !DIExpression()), !dbg !5778
  store ptr %dest_port, ptr %dest_port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_port.addr, metadata !5764, metadata !DIExpression()), !dbg !5779
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5765, metadata !DIExpression()), !dbg !5780
  call void @llvm.lifetime.start.p0(i64 8, ptr %dest) #17, !dbg !5781
  call void @llvm.dbg.declare(metadata ptr %dest, metadata !5766, metadata !DIExpression()), !dbg !5782
  %0 = load ptr, ptr %dest_port.addr, align 8, !dbg !5783
  %c_dest = getelementptr inbounds %struct.snd_seq_client_port, ptr %0, i32 0, i32 6, !dbg !5784
  store ptr %c_dest, ptr %dest, align 8, !dbg !5782
  call void @llvm.lifetime.start.p0(i64 8, ptr %subs) #17, !dbg !5785
  call void @llvm.dbg.declare(metadata ptr %subs, metadata !5767, metadata !DIExpression()), !dbg !5786
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5787
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5768, metadata !DIExpression()), !dbg !5788
  store i32 -2, ptr %err, align 4, !dbg !5788
  %1 = load ptr, ptr %dest, align 8, !dbg !5789
  %list_mutex = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %1, i32 0, i32 3, !dbg !5790
  call void @down_write(ptr noundef %list_mutex) #18, !dbg !5791
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5792
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5769, metadata !DIExpression()), !dbg !5792
  %2 = load ptr, ptr %dest, align 8, !dbg !5792
  %list_head = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %2, i32 0, i32 0, !dbg !5792
  %next = getelementptr inbounds %struct.list_head, ptr %list_head, i32 0, i32 0, !dbg !5792
  %3 = load ptr, ptr %next, align 8, !dbg !5792
  store ptr %3, ptr %__mptr, align 8, !dbg !5792
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5792
  %add.ptr = getelementptr i8, ptr %4, i64 -96, !dbg !5792
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5792
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5793
  %5 = load ptr, ptr %tmp, align 8, !dbg !5792
  store ptr %5, ptr %subs, align 8, !dbg !5793
  br label %for.cond, !dbg !5793

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %subs, align 8, !dbg !5794
  %dest_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %6, i32 0, i32 2, !dbg !5794
  %7 = load ptr, ptr %dest, align 8, !dbg !5794
  %list_head1 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %7, i32 0, i32 0, !dbg !5794
  %cmp = icmp eq ptr %dest_list, %list_head1, !dbg !5794
  %lnot = xor i1 %cmp, true, !dbg !5794
  br i1 %lnot, label %for.body, label %for.end, !dbg !5793

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %info.addr, align 8, !dbg !5795
  %9 = load ptr, ptr %subs, align 8, !dbg !5798
  %info2 = getelementptr inbounds %struct.snd_seq_subscribers, ptr %9, i32 0, i32 0, !dbg !5799
  %call = call i32 @match_subs_info(ptr noundef %8, ptr noundef %info2) #18, !dbg !5800
  %tobool = icmp ne i32 %call, 0, !dbg !5800
  br i1 %tobool, label %if.then, label %if.end, !dbg !5801

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %dest_client.addr, align 8, !dbg !5802
  %11 = load ptr, ptr %dest_port.addr, align 8, !dbg !5804
  %12 = load ptr, ptr %subs, align 8, !dbg !5805
  %13 = load ptr, ptr %connector.addr, align 8, !dbg !5806
  %number = getelementptr inbounds %struct.snd_seq_client, ptr %13, i32 0, i32 5, !dbg !5807
  %14 = load i32, ptr %number, align 8, !dbg !5807
  %15 = load ptr, ptr %dest_client.addr, align 8, !dbg !5808
  %number3 = getelementptr inbounds %struct.snd_seq_client, ptr %15, i32 0, i32 5, !dbg !5809
  %16 = load i32, ptr %number3, align 8, !dbg !5809
  %cmp4 = icmp ne i32 %14, %16, !dbg !5810
  call void @__delete_and_unsubscribe_port(ptr noundef %10, ptr noundef %11, ptr noundef %12, i1 noundef zeroext false, i1 noundef zeroext %cmp4) #18, !dbg !5811
  store i32 0, ptr %err, align 4, !dbg !5812
  br label %for.end, !dbg !5813

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5814

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #17, !dbg !5815
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !5772, metadata !DIExpression()), !dbg !5815
  %17 = load ptr, ptr %subs, align 8, !dbg !5815
  %dest_list6 = getelementptr inbounds %struct.snd_seq_subscribers, ptr %17, i32 0, i32 2, !dbg !5815
  %next7 = getelementptr inbounds %struct.list_head, ptr %dest_list6, i32 0, i32 0, !dbg !5815
  %18 = load ptr, ptr %next7, align 8, !dbg !5815
  store ptr %18, ptr %__mptr5, align 8, !dbg !5815
  %19 = load ptr, ptr %__mptr5, align 8, !dbg !5815
  %add.ptr9 = getelementptr i8, ptr %19, i64 -96, !dbg !5815
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !5815
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #17, !dbg !5794
  %20 = load ptr, ptr %tmp8, align 8, !dbg !5815
  store ptr %20, ptr %subs, align 8, !dbg !5794
  br label %for.cond, !dbg !5794, !llvm.loop !5816

for.end:                                          ; preds = %if.then, %for.cond
  %21 = load ptr, ptr %dest, align 8, !dbg !5818
  %list_mutex10 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %21, i32 0, i32 3, !dbg !5819
  call void @up_write(ptr noundef %list_mutex10) #18, !dbg !5820
  %22 = load i32, ptr %err, align 4, !dbg !5821
  %cmp11 = icmp slt i32 %22, 0, !dbg !5823
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5824

if.then12:                                        ; preds = %for.end
  %23 = load i32, ptr %err, align 4, !dbg !5825
  store i32 %23, ptr %retval, align 4, !dbg !5826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5826

if.end13:                                         ; preds = %for.end
  %24 = load ptr, ptr %src_client.addr, align 8, !dbg !5827
  %25 = load ptr, ptr %src_port.addr, align 8, !dbg !5828
  %26 = load ptr, ptr %subs, align 8, !dbg !5829
  %27 = load ptr, ptr %connector.addr, align 8, !dbg !5830
  %number14 = getelementptr inbounds %struct.snd_seq_client, ptr %27, i32 0, i32 5, !dbg !5831
  %28 = load i32, ptr %number14, align 8, !dbg !5831
  %29 = load ptr, ptr %src_client.addr, align 8, !dbg !5832
  %number15 = getelementptr inbounds %struct.snd_seq_client, ptr %29, i32 0, i32 5, !dbg !5833
  %30 = load i32, ptr %number15, align 8, !dbg !5833
  %cmp16 = icmp ne i32 %28, %30, !dbg !5834
  call void @delete_and_unsubscribe_port(ptr noundef %24, ptr noundef %25, ptr noundef %26, i1 noundef zeroext true, i1 noundef zeroext %cmp16) #18, !dbg !5835
  %31 = load ptr, ptr %subs, align 8, !dbg !5836
  call void @kfree(ptr noundef %31) #18, !dbg !5837
  store i32 0, ptr %retval, align 4, !dbg !5838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5838

cleanup:                                          ; preds = %if.end13, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5839
  call void @llvm.lifetime.end.p0(i64 8, ptr %subs) #17, !dbg !5839
  call void @llvm.lifetime.end.p0(i64 8, ptr %dest) #17, !dbg !5839
  %32 = load i32, ptr %retval, align 4, !dbg !5839
  ret i32 %32, !dbg !5839
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5840 dso_local void @down_write(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @match_subs_info(ptr noundef %r, ptr noundef %s) #0 align 16 !dbg !5844 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5848, metadata !DIExpression()), !dbg !5850
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5849, metadata !DIExpression()), !dbg !5851
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5852
  %sender = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %0, i32 0, i32 0, !dbg !5854
  %1 = load ptr, ptr %s.addr, align 8, !dbg !5855
  %sender1 = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %1, i32 0, i32 0, !dbg !5856
  %call = call i32 @addr_match(ptr noundef %sender, ptr noundef %sender1) #18, !dbg !5857
  %tobool = icmp ne i32 %call, 0, !dbg !5857
  br i1 %tobool, label %land.lhs.true, label %if.end18, !dbg !5858

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %r.addr, align 8, !dbg !5859
  %dest = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %2, i32 0, i32 1, !dbg !5860
  %3 = load ptr, ptr %s.addr, align 8, !dbg !5861
  %dest2 = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %3, i32 0, i32 1, !dbg !5862
  %call3 = call i32 @addr_match(ptr noundef %dest, ptr noundef %dest2) #18, !dbg !5863
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5863
  br i1 %tobool4, label %if.then, label %if.end18, !dbg !5864

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %r.addr, align 8, !dbg !5865
  %flags = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %4, i32 0, i32 3, !dbg !5868
  %5 = load i32, ptr %flags, align 4, !dbg !5868
  %tobool5 = icmp ne i32 %5, 0, !dbg !5865
  br i1 %tobool5, label %land.lhs.true6, label %if.else, !dbg !5869

land.lhs.true6:                                   ; preds = %if.then
  %6 = load ptr, ptr %r.addr, align 8, !dbg !5870
  %flags7 = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %6, i32 0, i32 3, !dbg !5871
  %7 = load i32, ptr %flags7, align 4, !dbg !5871
  %8 = load ptr, ptr %s.addr, align 8, !dbg !5872
  %flags8 = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %8, i32 0, i32 3, !dbg !5873
  %9 = load i32, ptr %flags8, align 4, !dbg !5873
  %cmp = icmp eq i32 %7, %9, !dbg !5874
  br i1 %cmp, label %if.then9, label %if.else, !dbg !5875

if.then9:                                         ; preds = %land.lhs.true6
  %10 = load ptr, ptr %r.addr, align 8, !dbg !5876
  %queue = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %10, i32 0, i32 4, !dbg !5877
  %11 = load i8, ptr %queue, align 4, !dbg !5877
  %conv = zext i8 %11 to i32, !dbg !5876
  %12 = load ptr, ptr %s.addr, align 8, !dbg !5878
  %queue10 = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %12, i32 0, i32 4, !dbg !5879
  %13 = load i8, ptr %queue10, align 4, !dbg !5879
  %conv11 = zext i8 %13 to i32, !dbg !5878
  %cmp12 = icmp eq i32 %conv, %conv11, !dbg !5880
  %conv13 = zext i1 %cmp12 to i32, !dbg !5880
  store i32 %conv13, ptr %retval, align 4, !dbg !5881
  br label %return, !dbg !5881

if.else:                                          ; preds = %land.lhs.true6, %if.then
  %14 = load ptr, ptr %r.addr, align 8, !dbg !5882
  %flags14 = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %14, i32 0, i32 3, !dbg !5884
  %15 = load i32, ptr %flags14, align 4, !dbg !5884
  %tobool15 = icmp ne i32 %15, 0, !dbg !5882
  br i1 %tobool15, label %if.end, label %if.then16, !dbg !5885

if.then16:                                        ; preds = %if.else
  store i32 1, ptr %retval, align 4, !dbg !5886
  br label %return, !dbg !5886

if.end:                                           ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end
  br label %if.end18, !dbg !5887

if.end18:                                         ; preds = %if.end17, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !5888
  br label %return, !dbg !5888

return:                                           ; preds = %if.end18, %if.then16, %if.then9
  %16 = load i32, ptr %retval, align 4, !dbg !5889
  ret i32 %16, !dbg !5889
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__delete_and_unsubscribe_port(ptr noundef %client, ptr noundef %port, ptr noundef %subs, i1 noundef zeroext %is_src, i1 noundef zeroext %ack) #0 align 16 !dbg !5890 {
entry:
  %client.addr = alloca ptr, align 8
  %port.addr = alloca ptr, align 8
  %subs.addr = alloca ptr, align 8
  %is_src.addr = alloca i8, align 1
  %ack.addr = alloca i8, align 1
  %grp = alloca ptr, align 8
  %list = alloca ptr, align 8
  %empty = alloca i8, align 1
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !5892, metadata !DIExpression()), !dbg !5900
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5893, metadata !DIExpression()), !dbg !5901
  store ptr %subs, ptr %subs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subs.addr, metadata !5894, metadata !DIExpression()), !dbg !5902
  %frombool = zext i1 %is_src to i8
  store i8 %frombool, ptr %is_src.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_src.addr, metadata !5895, metadata !DIExpression()), !dbg !5903
  %frombool1 = zext i1 %ack to i8
  store i8 %frombool1, ptr %ack.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ack.addr, metadata !5896, metadata !DIExpression()), !dbg !5904
  call void @llvm.lifetime.start.p0(i64 8, ptr %grp) #17, !dbg !5905
  call void @llvm.dbg.declare(metadata ptr %grp, metadata !5897, metadata !DIExpression()), !dbg !5906
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #17, !dbg !5907
  call void @llvm.dbg.declare(metadata ptr %list, metadata !5898, metadata !DIExpression()), !dbg !5908
  call void @llvm.lifetime.start.p0(i64 1, ptr %empty) #17, !dbg !5909
  call void @llvm.dbg.declare(metadata ptr %empty, metadata !5899, metadata !DIExpression()), !dbg !5910
  %0 = load i8, ptr %is_src.addr, align 1, !dbg !5911, !range !4760, !noundef !549
  %tobool = trunc i8 %0 to i1, !dbg !5911
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5911

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %port.addr, align 8, !dbg !5912
  %c_src = getelementptr inbounds %struct.snd_seq_client_port, ptr %1, i32 0, i32 5, !dbg !5913
  br label %cond.end, !dbg !5911

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %port.addr, align 8, !dbg !5914
  %c_dest = getelementptr inbounds %struct.snd_seq_client_port, ptr %2, i32 0, i32 6, !dbg !5915
  br label %cond.end, !dbg !5911

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %c_src, %cond.true ], [ %c_dest, %cond.false ], !dbg !5911
  store ptr %cond, ptr %grp, align 8, !dbg !5916
  %3 = load i8, ptr %is_src.addr, align 1, !dbg !5917, !range !4760, !noundef !549
  %tobool2 = trunc i8 %3 to i1, !dbg !5917
  br i1 %tobool2, label %cond.true3, label %cond.false4, !dbg !5917

cond.true3:                                       ; preds = %cond.end
  %4 = load ptr, ptr %subs.addr, align 8, !dbg !5918
  %src_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %4, i32 0, i32 1, !dbg !5919
  br label %cond.end5, !dbg !5917

cond.false4:                                      ; preds = %cond.end
  %5 = load ptr, ptr %subs.addr, align 8, !dbg !5920
  %dest_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %5, i32 0, i32 2, !dbg !5921
  br label %cond.end5, !dbg !5917

cond.end5:                                        ; preds = %cond.false4, %cond.true3
  %cond6 = phi ptr [ %src_list, %cond.true3 ], [ %dest_list, %cond.false4 ], !dbg !5917
  store ptr %cond6, ptr %list, align 8, !dbg !5922
  %6 = load ptr, ptr %grp, align 8, !dbg !5923
  %list_lock = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %6, i32 0, i32 4, !dbg !5923
  call void @_raw_write_lock_irq(ptr noundef %list_lock) #18, !dbg !5923
  %7 = load ptr, ptr %list, align 8, !dbg !5924
  %call = call i32 @list_empty(ptr noundef %7) #18, !dbg !5925
  %tobool7 = icmp ne i32 %call, 0, !dbg !5925
  %frombool8 = zext i1 %tobool7 to i8, !dbg !5926
  store i8 %frombool8, ptr %empty, align 1, !dbg !5926
  %8 = load i8, ptr %empty, align 1, !dbg !5927, !range !4760, !noundef !549
  %tobool9 = trunc i8 %8 to i1, !dbg !5927
  br i1 %tobool9, label %if.end, label %if.then, !dbg !5929

if.then:                                          ; preds = %cond.end5
  %9 = load ptr, ptr %list, align 8, !dbg !5930
  call void @list_del_init(ptr noundef %9) #18, !dbg !5931
  br label %if.end, !dbg !5931

if.end:                                           ; preds = %if.then, %cond.end5
  %10 = load ptr, ptr %grp, align 8, !dbg !5932
  %exclusive = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %10, i32 0, i32 2, !dbg !5933
  %bf.load = load i8, ptr %exclusive, align 4, !dbg !5934
  %bf.clear = and i8 %bf.load, -2, !dbg !5934
  %bf.set = or i8 %bf.clear, 0, !dbg !5934
  store i8 %bf.set, ptr %exclusive, align 4, !dbg !5934
  %11 = load ptr, ptr %grp, align 8, !dbg !5935
  %list_lock10 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %11, i32 0, i32 4, !dbg !5935
  call void @_raw_write_unlock_irq(ptr noundef %list_lock10) #18, !dbg !5935
  %12 = load i8, ptr %empty, align 1, !dbg !5936, !range !4760, !noundef !549
  %tobool11 = trunc i8 %12 to i1, !dbg !5936
  br i1 %tobool11, label %if.end15, label %if.then12, !dbg !5938

if.then12:                                        ; preds = %if.end
  %13 = load ptr, ptr %client.addr, align 8, !dbg !5939
  %14 = load ptr, ptr %port.addr, align 8, !dbg !5940
  %15 = load ptr, ptr %grp, align 8, !dbg !5941
  %16 = load ptr, ptr %subs.addr, align 8, !dbg !5942
  %info = getelementptr inbounds %struct.snd_seq_subscribers, ptr %16, i32 0, i32 0, !dbg !5943
  %17 = load i8, ptr %ack.addr, align 1, !dbg !5944, !range !4760, !noundef !549
  %tobool13 = trunc i8 %17 to i1, !dbg !5944
  %conv = zext i1 %tobool13 to i32, !dbg !5944
  %call14 = call i32 @unsubscribe_port(ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %info, i32 noundef %conv) #18, !dbg !5945
  br label %if.end15, !dbg !5945

if.end15:                                         ; preds = %if.then12, %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %empty) #17, !dbg !5946
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #17, !dbg !5946
  call void @llvm.lifetime.end.p0(i64 8, ptr %grp) #17, !dbg !5946
  ret void, !dbg !5946
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5947 dso_local void @up_write(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_port_get_subscription(ptr noundef %src_grp, ptr noundef %dest_addr, ptr noundef %subs) #0 align 16 !dbg !5948 {
entry:
  %src_grp.addr = alloca ptr, align 8
  %dest_addr.addr = alloca ptr, align 8
  %subs.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %err = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %src_grp, ptr %src_grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_grp.addr, metadata !5953, metadata !DIExpression()), !dbg !5964
  store ptr %dest_addr, ptr %dest_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_addr.addr, metadata !5954, metadata !DIExpression()), !dbg !5965
  store ptr %subs, ptr %subs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %subs.addr, metadata !5955, metadata !DIExpression()), !dbg !5966
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #17, !dbg !5967
  call void @llvm.dbg.declare(metadata ptr %s, metadata !5956, metadata !DIExpression()), !dbg !5968
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5969
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5957, metadata !DIExpression()), !dbg !5970
  store i32 -2, ptr %err, align 4, !dbg !5970
  %0 = load ptr, ptr %src_grp.addr, align 8, !dbg !5971
  %list_mutex = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %0, i32 0, i32 3, !dbg !5972
  call void @down_read(ptr noundef %list_mutex) #18, !dbg !5973
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5974
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5958, metadata !DIExpression()), !dbg !5974
  %1 = load ptr, ptr %src_grp.addr, align 8, !dbg !5974
  %list_head = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %1, i32 0, i32 0, !dbg !5974
  %next = getelementptr inbounds %struct.list_head, ptr %list_head, i32 0, i32 0, !dbg !5974
  %2 = load ptr, ptr %next, align 8, !dbg !5974
  store ptr %2, ptr %__mptr, align 8, !dbg !5974
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5974
  %add.ptr = getelementptr i8, ptr %3, i64 -80, !dbg !5974
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5974
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5975
  %4 = load ptr, ptr %tmp, align 8, !dbg !5974
  store ptr %4, ptr %s, align 8, !dbg !5975
  br label %for.cond, !dbg !5975

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %s, align 8, !dbg !5976
  %src_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %5, i32 0, i32 1, !dbg !5976
  %6 = load ptr, ptr %src_grp.addr, align 8, !dbg !5976
  %list_head1 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %6, i32 0, i32 0, !dbg !5976
  %cmp = icmp eq ptr %src_list, %list_head1, !dbg !5976
  %lnot = xor i1 %cmp, true, !dbg !5976
  br i1 %lnot, label %for.body, label %for.end, !dbg !5975

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %dest_addr.addr, align 8, !dbg !5977
  %8 = load ptr, ptr %s, align 8, !dbg !5980
  %info = getelementptr inbounds %struct.snd_seq_subscribers, ptr %8, i32 0, i32 0, !dbg !5981
  %dest = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %info, i32 0, i32 1, !dbg !5982
  %call = call i32 @addr_match(ptr noundef %7, ptr noundef %dest) #18, !dbg !5983
  %tobool = icmp ne i32 %call, 0, !dbg !5983
  br i1 %tobool, label %if.then, label %if.end, !dbg !5984

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %subs.addr, align 8, !dbg !5985
  %10 = load ptr, ptr %s, align 8, !dbg !5987
  %info2 = getelementptr inbounds %struct.snd_seq_subscribers, ptr %10, i32 0, i32 0, !dbg !5988
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 8 %info2, i64 80, i1 false), !dbg !5988
  store i32 0, ptr %err, align 4, !dbg !5989
  br label %for.end, !dbg !5990

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5991

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #17, !dbg !5992
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !5961, metadata !DIExpression()), !dbg !5992
  %11 = load ptr, ptr %s, align 8, !dbg !5992
  %src_list4 = getelementptr inbounds %struct.snd_seq_subscribers, ptr %11, i32 0, i32 1, !dbg !5992
  %next5 = getelementptr inbounds %struct.list_head, ptr %src_list4, i32 0, i32 0, !dbg !5992
  %12 = load ptr, ptr %next5, align 8, !dbg !5992
  store ptr %12, ptr %__mptr3, align 8, !dbg !5992
  %13 = load ptr, ptr %__mptr3, align 8, !dbg !5992
  %add.ptr7 = getelementptr i8, ptr %13, i64 -80, !dbg !5992
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !5992
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #17, !dbg !5976
  %14 = load ptr, ptr %tmp6, align 8, !dbg !5992
  store ptr %14, ptr %s, align 8, !dbg !5976
  br label %for.cond, !dbg !5976, !llvm.loop !5993

for.end:                                          ; preds = %if.then, %for.cond
  %15 = load ptr, ptr %src_grp.addr, align 8, !dbg !5995
  %list_mutex8 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %15, i32 0, i32 3, !dbg !5996
  call void @up_read(ptr noundef %list_mutex8) #18, !dbg !5997
  %16 = load i32, ptr %err, align 4, !dbg !5998
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5999
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #17, !dbg !5999
  ret i32 %16, !dbg !6000
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6001 dso_local void @down_read(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @addr_match(ptr noundef %r, ptr noundef %s) #8 align 16 !dbg !6002 {
entry:
  %r.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6006, metadata !DIExpression()), !dbg !6008
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6007, metadata !DIExpression()), !dbg !6009
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6010
  %client = getelementptr inbounds %struct.snd_seq_addr, ptr %0, i32 0, i32 0, !dbg !6011
  %1 = load i8, ptr %client, align 1, !dbg !6011
  %conv = zext i8 %1 to i32, !dbg !6010
  %2 = load ptr, ptr %s.addr, align 8, !dbg !6012
  %client1 = getelementptr inbounds %struct.snd_seq_addr, ptr %2, i32 0, i32 0, !dbg !6013
  %3 = load i8, ptr %client1, align 1, !dbg !6013
  %conv2 = zext i8 %3 to i32, !dbg !6012
  %cmp = icmp eq i32 %conv, %conv2, !dbg !6014
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6015

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %r.addr, align 8, !dbg !6016
  %port = getelementptr inbounds %struct.snd_seq_addr, ptr %4, i32 0, i32 1, !dbg !6017
  %5 = load i8, ptr %port, align 1, !dbg !6017
  %conv4 = zext i8 %5 to i32, !dbg !6016
  %6 = load ptr, ptr %s.addr, align 8, !dbg !6018
  %port5 = getelementptr inbounds %struct.snd_seq_addr, ptr %6, i32 0, i32 1, !dbg !6019
  %7 = load i8, ptr %port5, align 1, !dbg !6019
  %conv6 = zext i8 %7 to i32, !dbg !6018
  %cmp7 = icmp eq i32 %conv4, %conv6, !dbg !6020
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp7, %land.rhs ], !dbg !6021
  %land.ext = zext i1 %8 to i32, !dbg !6015
  ret i32 %land.ext, !dbg !6022
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6023 dso_local void @up_read(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_event_port_attach(i32 noundef %client, ptr noundef %pcbp, i32 noundef %cap, i32 noundef %type, i32 noundef %midi_channels, i32 noundef %midi_voices, ptr noundef %portname) #0 align 16 !dbg !6024 {
entry:
  %client.addr = alloca i32, align 4
  %pcbp.addr = alloca ptr, align 8
  %cap.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %midi_channels.addr = alloca i32, align 4
  %midi_voices.addr = alloca i32, align 4
  %portname.addr = alloca ptr, align 8
  %portinfo = alloca %struct.snd_seq_port_info, align 8
  %ret = alloca i32, align 4
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !6040, metadata !DIExpression()), !dbg !6049
  store ptr %pcbp, ptr %pcbp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pcbp.addr, metadata !6041, metadata !DIExpression()), !dbg !6050
  store i32 %cap, ptr %cap.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !6042, metadata !DIExpression()), !dbg !6051
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6043, metadata !DIExpression()), !dbg !6052
  store i32 %midi_channels, ptr %midi_channels.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %midi_channels.addr, metadata !6044, metadata !DIExpression()), !dbg !6053
  store i32 %midi_voices, ptr %midi_voices.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %midi_voices.addr, metadata !6045, metadata !DIExpression()), !dbg !6054
  store ptr %portname, ptr %portname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %portname.addr, metadata !6046, metadata !DIExpression()), !dbg !6055
  call void @llvm.lifetime.start.p0(i64 168, ptr %portinfo) #17, !dbg !6056
  call void @llvm.dbg.declare(metadata ptr %portinfo, metadata !6047, metadata !DIExpression()), !dbg !6057
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !6058
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6048, metadata !DIExpression()), !dbg !6059
  call void @llvm.memset.p0.i64(ptr align 8 %portinfo, i8 0, i64 168, i1 false), !dbg !6060
  %0 = load i32, ptr %client.addr, align 4, !dbg !6061
  %conv = trunc i32 %0 to i8, !dbg !6061
  %addr = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 0, !dbg !6062
  %client1 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr, i32 0, i32 0, !dbg !6063
  store i8 %conv, ptr %client1, align 8, !dbg !6064
  %name = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 1, !dbg !6065
  %arraydecay = getelementptr inbounds [64 x i8], ptr %name, i64 0, i64 0, !dbg !6066
  %1 = load ptr, ptr %portname.addr, align 8, !dbg !6067
  %tobool = icmp ne ptr %1, null, !dbg !6067
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6067

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %portname.addr, align 8, !dbg !6068
  br label %cond.end, !dbg !6067

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6067

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ @.str.2, %cond.false ], !dbg !6067
  %call = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %cond, i64 noundef 64) #18, !dbg !6069
  %3 = load i32, ptr %cap.addr, align 4, !dbg !6070
  %capability = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 2, !dbg !6071
  store i32 %3, ptr %capability, align 4, !dbg !6072
  %4 = load i32, ptr %type.addr, align 4, !dbg !6073
  %type2 = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 3, !dbg !6074
  store i32 %4, ptr %type2, align 8, !dbg !6075
  %5 = load ptr, ptr %pcbp.addr, align 8, !dbg !6076
  %kernel = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 9, !dbg !6077
  store ptr %5, ptr %kernel, align 8, !dbg !6078
  %6 = load i32, ptr %midi_channels.addr, align 4, !dbg !6079
  %midi_channels3 = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 4, !dbg !6080
  store i32 %6, ptr %midi_channels3, align 4, !dbg !6081
  %7 = load i32, ptr %midi_voices.addr, align 4, !dbg !6082
  %midi_voices4 = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 5, !dbg !6083
  store i32 %7, ptr %midi_voices4, align 8, !dbg !6084
  %8 = load i32, ptr %client.addr, align 4, !dbg !6085
  %call5 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %8, i32 noundef -1062710496, ptr noundef %portinfo) #18, !dbg !6086
  store i32 %call5, ptr %ret, align 4, !dbg !6087
  %9 = load i32, ptr %ret, align 4, !dbg !6088
  %cmp = icmp sge i32 %9, 0, !dbg !6090
  br i1 %cmp, label %if.then, label %if.end, !dbg !6091

if.then:                                          ; preds = %cond.end
  %addr7 = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 0, !dbg !6092
  %port = getelementptr inbounds %struct.snd_seq_addr, ptr %addr7, i32 0, i32 1, !dbg !6093
  %10 = load i8, ptr %port, align 1, !dbg !6093
  %conv8 = zext i8 %10 to i32, !dbg !6094
  store i32 %conv8, ptr %ret, align 4, !dbg !6095
  br label %if.end, !dbg !6096

if.end:                                           ; preds = %if.then, %cond.end
  %11 = load i32, ptr %ret, align 4, !dbg !6097
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6098
  call void @llvm.lifetime.end.p0(i64 168, ptr %portinfo) #17, !dbg !6098
  ret i32 %11, !dbg !6099
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6100 dso_local i32 @snd_seq_kernel_client_ctl(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_event_port_detach(i32 noundef %client, i32 noundef %port) #0 align 16 !dbg !6103 {
entry:
  %client.addr = alloca i32, align 4
  %port.addr = alloca i32, align 4
  %portinfo = alloca %struct.snd_seq_port_info, align 8
  %err = alloca i32, align 4
  store i32 %client, ptr %client.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !6107, metadata !DIExpression()), !dbg !6111
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6108, metadata !DIExpression()), !dbg !6112
  call void @llvm.lifetime.start.p0(i64 168, ptr %portinfo) #17, !dbg !6113
  call void @llvm.dbg.declare(metadata ptr %portinfo, metadata !6109, metadata !DIExpression()), !dbg !6114
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !6115
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6110, metadata !DIExpression()), !dbg !6116
  call void @llvm.memset.p0.i64(ptr align 8 %portinfo, i8 0, i64 168, i1 false), !dbg !6117
  %0 = load i32, ptr %client.addr, align 4, !dbg !6118
  %conv = trunc i32 %0 to i8, !dbg !6118
  %addr = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 0, !dbg !6119
  %client1 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr, i32 0, i32 0, !dbg !6120
  store i8 %conv, ptr %client1, align 8, !dbg !6121
  %1 = load i32, ptr %port.addr, align 4, !dbg !6122
  %conv2 = trunc i32 %1 to i8, !dbg !6122
  %addr3 = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 0, !dbg !6123
  %port4 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr3, i32 0, i32 1, !dbg !6124
  store i8 %conv2, ptr %port4, align 1, !dbg !6125
  %2 = load i32, ptr %client.addr, align 4, !dbg !6126
  %call = call i32 @snd_seq_kernel_client_ctl(i32 noundef %2, i32 noundef 1084773153, ptr noundef %portinfo) #18, !dbg !6127
  store i32 %call, ptr %err, align 4, !dbg !6128
  %3 = load i32, ptr %err, align 4, !dbg !6129
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !6130
  call void @llvm.lifetime.end.p0(i64 168, ptr %portinfo) #17, !dbg !6130
  ret i32 %3, !dbg !6131
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6132 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6140, metadata !DIExpression()), !dbg !6142
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6141, metadata !DIExpression()), !dbg !6143
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6144
  %1 = load i64, ptr %size.addr, align 8, !dbg !6145
  %conv = trunc i64 %1 to i32, !dbg !6145
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6146
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6147
  %3 = load i64, ptr %size.addr, align 8, !dbg !6147
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !6147
  ret void, !dbg !6148
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #4 align 16 !dbg !6149 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6152, metadata !DIExpression()), !dbg !6153
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6154
  call void @arch_atomic_inc(ptr noundef %0) #18, !dbg !6155
  ret void, !dbg !6156
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !6157 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6162, metadata !DIExpression()), !dbg !6164
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6163, metadata !DIExpression()), !dbg !6165
  ret i1 true, !dbg !6166
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #8 align 16 !dbg !6167 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6172, metadata !DIExpression()), !dbg !6175
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6173, metadata !DIExpression()), !dbg !6176
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6174, metadata !DIExpression()), !dbg !6177
  ret void, !dbg !6178
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #4 align 16 !dbg !6179 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6182, metadata !DIExpression()), !dbg !6183
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6184
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6185
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #17, !dbg !6186, !srcloc !6187
  ret void, !dbg !6188
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6189 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6191, metadata !DIExpression()), !dbg !6196
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6192, metadata !DIExpression()), !dbg !6197
  %0 = load i64, ptr %size.addr, align 8, !dbg !6198
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6199
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6200

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6201
  %tobool = icmp ne i64 %2, 0, !dbg !6201
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6202

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6203
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6193, metadata !DIExpression()), !dbg !6204
  %3 = load i64, ptr %size.addr, align 8, !dbg !6205
  %cmp = icmp ugt i64 %3, 8192, !dbg !6207
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6208

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6209
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6210
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !6211
  store ptr %call, ptr %retval, align 8, !dbg !6212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6212

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6213
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6213
  store i32 %call2, ptr %index, align 4, !dbg !6214
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6215
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6216
  %9 = ptrtoint ptr %8 to i64, !dbg !6216
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6217
  %idxprom = zext i32 %call3 to i64, !dbg !6218
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6218
  %10 = load i32, ptr %index, align 4, !dbg !6219
  %idxprom4 = zext i32 %10 to i64, !dbg !6218
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6218
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6218
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6220
  %13 = load i64, ptr %size.addr, align 8, !dbg !6221
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6222
  store ptr %call6, ptr %retval, align 8, !dbg !6223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6223

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6224
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6225
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6226
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !6227
  store ptr %call8, ptr %retval, align 8, !dbg !6228
  br label %return, !dbg !6228

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6229
  ret ptr %16, !dbg !6229
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6230 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !6231 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6235, metadata !DIExpression()), !dbg !6237
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6236, metadata !DIExpression()), !dbg !6238
  %0 = load i64, ptr %size.addr, align 8, !dbg !6239
  %tobool = icmp ne i64 %0, 0, !dbg !6239
  br i1 %tobool, label %if.end, label %if.then, !dbg !6241

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6242
  br label %return, !dbg !6242

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6243
  %cmp = icmp ule i64 %1, 8, !dbg !6245
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6246

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6247
  br label %return, !dbg !6247

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6248
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6250
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6251

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6252
  %cmp4 = icmp ule i64 %3, 96, !dbg !6253
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6254

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6255
  br label %return, !dbg !6255

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6256
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6258
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6259

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6260
  %cmp9 = icmp ule i64 %5, 192, !dbg !6261
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6262

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6263
  br label %return, !dbg !6263

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6264
  %cmp12 = icmp ule i64 %6, 8, !dbg !6266
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6267

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6268
  br label %return, !dbg !6268

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6269
  %cmp15 = icmp ule i64 %7, 16, !dbg !6271
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6272

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6273
  br label %return, !dbg !6273

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6274
  %cmp18 = icmp ule i64 %8, 32, !dbg !6276
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6277

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6278
  br label %return, !dbg !6278

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6279
  %cmp21 = icmp ule i64 %9, 64, !dbg !6281
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6282

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6283
  br label %return, !dbg !6283

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6284
  %cmp24 = icmp ule i64 %10, 128, !dbg !6286
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6287

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6288
  br label %return, !dbg !6288

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6289
  %cmp27 = icmp ule i64 %11, 256, !dbg !6291
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6292

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6293
  br label %return, !dbg !6293

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6294
  %cmp30 = icmp ule i64 %12, 512, !dbg !6296
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6297

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6298
  br label %return, !dbg !6298

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6299
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6301
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6302

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6303
  br label %return, !dbg !6303

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6304
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6306
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6307

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6308
  br label %return, !dbg !6308

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6309
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6311
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6312

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6313
  br label %return, !dbg !6313

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6314
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6316
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6317

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6318
  br label %return, !dbg !6318

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6319
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6321
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6322

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6323
  br label %return, !dbg !6323

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6324
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6326
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6327

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6328
  br label %return, !dbg !6328

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6329
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6331
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6332

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6333
  br label %return, !dbg !6333

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6334
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6336
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6337

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6338
  br label %return, !dbg !6338

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6339
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6341
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6342

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6343
  br label %return, !dbg !6343

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6344
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6346
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6347

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6348
  br label %return, !dbg !6348

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6349
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6351
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6352

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6353
  br label %return, !dbg !6353

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6354
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6356
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6357

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6358
  br label %return, !dbg !6358

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6359, !range !4760, !noundef !549
  %tobool69 = trunc i8 %25 to i1, !dbg !6359
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6361

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6362

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #22, !dbg !6363, !srcloc !6366
  unreachable, !dbg !6363

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6367

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6368

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6369

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6371

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6369

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #17, !dbg !6373, !srcloc !6375
  br label %do.end75, !dbg !6373

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6369

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6376
  br label %return, !dbg !6376

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6377
  ret i32 %26, !dbg !6377
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6378 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6384 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6388, metadata !DIExpression()), !dbg !6390
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6389, metadata !DIExpression()), !dbg !6391
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6392
  %and = and i32 %0, 17, !dbg !6392
  %cmp = icmp eq i32 %and, 0, !dbg !6392
  %lnot = xor i1 %cmp, true, !dbg !6392
  %lnot1 = xor i1 %lnot, true, !dbg !6392
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6392
  %conv = sext i32 %lnot.ext to i64, !dbg !6392
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6392
  %tobool = icmp ne i64 %expval, 0, !dbg !6392
  br i1 %tobool, label %if.then, label %if.end, !dbg !6394

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6395
  br label %return, !dbg !6395

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6396
  %and2 = and i32 %1, 1, !dbg !6398
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6398
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6399

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6400
  br label %return, !dbg !6400

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6401
  br label %return, !dbg !6401

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6403
  ret i32 %2, !dbg !6403
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6404 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6405 dso_local void @__compiletime_assert_206() #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6406 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6408, metadata !DIExpression()), !dbg !6410
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6409, metadata !DIExpression()), !dbg !6411
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6412
  %1 = load i64, ptr %size.addr, align 8, !dbg !6413
  %conv = trunc i64 %1 to i32, !dbg !6413
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6414
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6415
  %3 = load i64, ptr %size.addr, align 8, !dbg !6415
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !6415
  ret void, !dbg !6416
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6417 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6419, metadata !DIExpression()), !dbg !6421
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6420, metadata !DIExpression()), !dbg !6422
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6423
  %1 = load i32, ptr %i.addr, align 4, !dbg !6424
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #18, !dbg !6425
  ret void, !dbg !6426
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6427 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6429, metadata !DIExpression()), !dbg !6431
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6430, metadata !DIExpression()), !dbg !6432
  br label %do.body, !dbg !6433

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6434
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6434
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6434
  store volatile i32 %0, ptr %counter, align 4, !dbg !6434
  br label %do.end, !dbg !6434

do.end:                                           ; preds = %do.body
  ret void, !dbg !6436
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6437 dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #8 align 16 !dbg !6441 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6445, metadata !DIExpression()), !dbg !6448
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6446, metadata !DIExpression()), !dbg !6449
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6447, metadata !DIExpression()), !dbg !6450
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6451
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6453
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6454
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !6455
  br i1 %call, label %if.end, label %if.then, !dbg !6456

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6457

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6458
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6459
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6460
  store ptr %3, ptr %prev1, align 8, !dbg !6461
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6462
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6463
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6464
  store ptr %5, ptr %next2, align 8, !dbg !6465
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6466
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6467
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6468
  store ptr %7, ptr %prev3, align 8, !dbg !6469
  br label %do.body, !dbg !6470

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6471

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6473

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6471

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6475
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6475
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6475
  store volatile ptr %9, ptr %next6, align 8, !dbg !6475
  br label %do.end7, !dbg !6475

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6471

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6477
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #8 align 16 !dbg !6478 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6482, metadata !DIExpression()), !dbg !6485
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6483, metadata !DIExpression()), !dbg !6486
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6484, metadata !DIExpression()), !dbg !6487
  ret i1 true, !dbg !6488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #8 align 16 !dbg !6489 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6491, metadata !DIExpression()), !dbg !6492
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6493
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !6495
  br i1 %call, label %if.end, label %if.then, !dbg !6496

if.then:                                          ; preds = %entry
  br label %return, !dbg !6497

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6498
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6499
  %2 = load ptr, ptr %prev, align 8, !dbg !6499
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6500
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6501
  %4 = load ptr, ptr %next, align 8, !dbg !6501
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !6502
  br label %return, !dbg !6503

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6503
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #8 align 16 !dbg !6504 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6508, metadata !DIExpression()), !dbg !6509
  ret i1 true, !dbg !6510
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #8 align 16 !dbg !6511 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6513, metadata !DIExpression()), !dbg !6515
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6514, metadata !DIExpression()), !dbg !6516
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6517
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6518
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6519
  store ptr %0, ptr %prev1, align 8, !dbg !6520
  br label %do.body, !dbg !6521

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6522

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6524

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6522

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6526
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6526
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6526
  store volatile ptr %2, ptr %next4, align 8, !dbg !6526
  br label %do.end5, !dbg !6526

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6522

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6528
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6529 dso_local void @snd_use_lock_sync_helper(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_subscriber_list(ptr noundef %client, ptr noundef %port, ptr noundef %grp, i32 noundef %is_src) #0 align 16 !dbg !6533 {
entry:
  %client.addr = alloca ptr, align 8
  %port.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %is_src.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %n = alloca ptr, align 8
  %subs = alloca ptr, align 8
  %c = alloca ptr, align 8
  %aport = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !6537, metadata !DIExpression()), !dbg !6549
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6538, metadata !DIExpression()), !dbg !6550
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !6539, metadata !DIExpression()), !dbg !6551
  store i32 %is_src, ptr %is_src.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %is_src.addr, metadata !6540, metadata !DIExpression()), !dbg !6552
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !6553
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6541, metadata !DIExpression()), !dbg !6554
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #17, !dbg !6553
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6542, metadata !DIExpression()), !dbg !6555
  %0 = load ptr, ptr %grp.addr, align 8, !dbg !6556
  %list_head = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %0, i32 0, i32 0, !dbg !6556
  %next = getelementptr inbounds %struct.list_head, ptr %list_head, i32 0, i32 0, !dbg !6556
  %1 = load ptr, ptr %next, align 8, !dbg !6556
  store ptr %1, ptr %p, align 8, !dbg !6556
  %2 = load ptr, ptr %p, align 8, !dbg !6556
  %next1 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6556
  %3 = load ptr, ptr %next1, align 8, !dbg !6556
  store ptr %3, ptr %n, align 8, !dbg !6556
  br label %for.cond, !dbg !6556

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %p, align 8, !dbg !6557
  %5 = load ptr, ptr %grp.addr, align 8, !dbg !6557
  %list_head2 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %5, i32 0, i32 0, !dbg !6557
  %call = call i32 @list_is_head(ptr noundef %4, ptr noundef %list_head2) #18, !dbg !6557
  %tobool = icmp ne i32 %call, 0, !dbg !6557
  %lnot = xor i1 %tobool, true, !dbg !6557
  br i1 %lnot, label %for.body, label %for.end, !dbg !6556

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %subs) #17, !dbg !6558
  call void @llvm.dbg.declare(metadata ptr %subs, metadata !6543, metadata !DIExpression()), !dbg !6559
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #17, !dbg !6560
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6547, metadata !DIExpression()), !dbg !6561
  call void @llvm.lifetime.start.p0(i64 8, ptr %aport) #17, !dbg !6562
  call void @llvm.dbg.declare(metadata ptr %aport, metadata !6548, metadata !DIExpression()), !dbg !6563
  %6 = load ptr, ptr %p, align 8, !dbg !6564
  %7 = load i32, ptr %is_src.addr, align 4, !dbg !6565
  %tobool3 = icmp ne i32 %7, 0, !dbg !6565
  %call4 = call ptr @get_subscriber(ptr noundef %6, i1 noundef zeroext %tobool3) #18, !dbg !6566
  store ptr %call4, ptr %subs, align 8, !dbg !6567
  %8 = load i32, ptr %is_src.addr, align 4, !dbg !6568
  %tobool5 = icmp ne i32 %8, 0, !dbg !6568
  br i1 %tobool5, label %if.then, label %if.else, !dbg !6570

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %subs, align 8, !dbg !6571
  %info = getelementptr inbounds %struct.snd_seq_subscribers, ptr %9, i32 0, i32 0, !dbg !6572
  %dest = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %info, i32 0, i32 1, !dbg !6573
  %call6 = call ptr @get_client_port(ptr noundef %dest, ptr noundef %c) #18, !dbg !6574
  store ptr %call6, ptr %aport, align 8, !dbg !6575
  br label %if.end, !dbg !6576

if.else:                                          ; preds = %for.body
  %10 = load ptr, ptr %subs, align 8, !dbg !6577
  %info7 = getelementptr inbounds %struct.snd_seq_subscribers, ptr %10, i32 0, i32 0, !dbg !6578
  %sender = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %info7, i32 0, i32 0, !dbg !6579
  %call8 = call ptr @get_client_port(ptr noundef %sender, ptr noundef %c) #18, !dbg !6580
  store ptr %call8, ptr %aport, align 8, !dbg !6581
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %client.addr, align 8, !dbg !6582
  %12 = load ptr, ptr %port.addr, align 8, !dbg !6583
  %13 = load ptr, ptr %subs, align 8, !dbg !6584
  %14 = load i32, ptr %is_src.addr, align 4, !dbg !6585
  %tobool9 = icmp ne i32 %14, 0, !dbg !6585
  call void @delete_and_unsubscribe_port(ptr noundef %11, ptr noundef %12, ptr noundef %13, i1 noundef zeroext %tobool9, i1 noundef zeroext false) #18, !dbg !6586
  %15 = load ptr, ptr %aport, align 8, !dbg !6587
  %tobool10 = icmp ne ptr %15, null, !dbg !6587
  br i1 %tobool10, label %if.end15, label %if.then11, !dbg !6589

if.then11:                                        ; preds = %if.end
  %16 = load ptr, ptr %subs, align 8, !dbg !6590
  %ref_count = getelementptr inbounds %struct.snd_seq_subscribers, ptr %16, i32 0, i32 3, !dbg !6593
  %call12 = call zeroext i1 @atomic_dec_and_test(ptr noundef %ref_count) #18, !dbg !6594
  br i1 %call12, label %if.then13, label %if.end14, !dbg !6595

if.then13:                                        ; preds = %if.then11
  %17 = load ptr, ptr %subs, align 8, !dbg !6596
  call void @kfree(ptr noundef %17) #18, !dbg !6597
  br label %if.end14, !dbg !6597

if.end14:                                         ; preds = %if.then13, %if.then11
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6598

if.end15:                                         ; preds = %if.end
  %18 = load ptr, ptr %c, align 8, !dbg !6599
  %19 = load ptr, ptr %aport, align 8, !dbg !6600
  %20 = load ptr, ptr %subs, align 8, !dbg !6601
  %21 = load i32, ptr %is_src.addr, align 4, !dbg !6602
  %tobool16 = icmp ne i32 %21, 0, !dbg !6603
  %lnot17 = xor i1 %tobool16, true, !dbg !6603
  call void @delete_and_unsubscribe_port(ptr noundef %18, ptr noundef %19, ptr noundef %20, i1 noundef zeroext %lnot17, i1 noundef zeroext true) #18, !dbg !6604
  %22 = load ptr, ptr %subs, align 8, !dbg !6605
  call void @kfree(ptr noundef %22) #18, !dbg !6606
  %23 = load ptr, ptr %aport, align 8, !dbg !6607
  %use_lock = getelementptr inbounds %struct.snd_seq_client_port, ptr %23, i32 0, i32 4, !dbg !6607
  call void @atomic_dec(ptr noundef %use_lock) #18, !dbg !6607
  %24 = load ptr, ptr %c, align 8, !dbg !6608
  %use_lock18 = getelementptr inbounds %struct.snd_seq_client, ptr %24, i32 0, i32 9, !dbg !6608
  call void @atomic_dec(ptr noundef %use_lock18) #18, !dbg !6608
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6609
  br label %cleanup, !dbg !6609

cleanup:                                          ; preds = %if.end15, %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %aport) #17, !dbg !6609
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #17, !dbg !6609
  call void @llvm.lifetime.end.p0(i64 8, ptr %subs) #17, !dbg !6609
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6610

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %25 = load ptr, ptr %n, align 8, !dbg !6557
  store ptr %25, ptr %p, align 8, !dbg !6557
  %26 = load ptr, ptr %p, align 8, !dbg !6557
  %next21 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 0, !dbg !6557
  %27 = load ptr, ptr %next21, align 8, !dbg !6557
  store ptr %27, ptr %n, align 8, !dbg !6557
  br label %for.cond, !dbg !6557, !llvm.loop !6611

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #17, !dbg !6613
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !6613
  ret void, !dbg !6613

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_head(ptr noundef %list, ptr noundef %head) #8 align 16 !dbg !6614 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6618, metadata !DIExpression()), !dbg !6620
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6619, metadata !DIExpression()), !dbg !6621
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6622
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6623
  %cmp = icmp eq ptr %0, %1, !dbg !6624
  %conv = zext i1 %cmp to i32, !dbg !6624
  ret i32 %conv, !dbg !6625
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_subscriber(ptr noundef %p, i1 noundef zeroext %is_src) #8 align 16 !dbg !6626 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %is_src.addr = alloca i8, align 1
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6630, metadata !DIExpression()), !dbg !6637
  %frombool = zext i1 %is_src to i8
  store i8 %frombool, ptr %is_src.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_src.addr, metadata !6631, metadata !DIExpression()), !dbg !6638
  %0 = load i8, ptr %is_src.addr, align 1, !dbg !6639, !range !4760, !noundef !549
  %tobool = trunc i8 %0 to i1, !dbg !6639
  br i1 %tobool, label %if.then, label %if.else, !dbg !6640

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6641
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6632, metadata !DIExpression()), !dbg !6641
  %1 = load ptr, ptr %p.addr, align 8, !dbg !6641
  store ptr %1, ptr %__mptr, align 8, !dbg !6641
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6641
  %add.ptr = getelementptr i8, ptr %2, i64 -80, !dbg !6641
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6641
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6642
  %3 = load ptr, ptr %tmp, align 8, !dbg !6641
  store ptr %3, ptr %retval, align 8, !dbg !6643
  br label %return, !dbg !6643

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #17, !dbg !6644
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6635, metadata !DIExpression()), !dbg !6644
  %4 = load ptr, ptr %p.addr, align 8, !dbg !6644
  store ptr %4, ptr %__mptr1, align 8, !dbg !6644
  %5 = load ptr, ptr %__mptr1, align 8, !dbg !6644
  %add.ptr3 = getelementptr i8, ptr %5, i64 -96, !dbg !6644
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6644
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #17, !dbg !6645
  %6 = load ptr, ptr %tmp2, align 8, !dbg !6644
  store ptr %6, ptr %retval, align 8, !dbg !6646
  br label %return, !dbg !6646

return:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %retval, align 8, !dbg !6647
  ret ptr %7, !dbg !6647
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_client_port(ptr noundef %addr, ptr noundef %cp) #0 align 16 !dbg !6648 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6653, metadata !DIExpression()), !dbg !6656
  store ptr %cp, ptr %cp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cp.addr, metadata !6654, metadata !DIExpression()), !dbg !6657
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !6658
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6655, metadata !DIExpression()), !dbg !6659
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6660
  %client = getelementptr inbounds %struct.snd_seq_addr, ptr %0, i32 0, i32 0, !dbg !6661
  %1 = load i8, ptr %client, align 1, !dbg !6661
  %conv = zext i8 %1 to i32, !dbg !6660
  %call = call ptr @snd_seq_client_use_ptr(i32 noundef %conv) #18, !dbg !6662
  %2 = load ptr, ptr %cp.addr, align 8, !dbg !6663
  store ptr %call, ptr %2, align 8, !dbg !6664
  %3 = load ptr, ptr %cp.addr, align 8, !dbg !6665
  %4 = load ptr, ptr %3, align 8, !dbg !6667
  %tobool = icmp ne ptr %4, null, !dbg !6667
  br i1 %tobool, label %if.then, label %if.end5, !dbg !6668

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %cp.addr, align 8, !dbg !6669
  %6 = load ptr, ptr %5, align 8, !dbg !6671
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !6672
  %port = getelementptr inbounds %struct.snd_seq_addr, ptr %7, i32 0, i32 1, !dbg !6673
  %8 = load i8, ptr %port, align 1, !dbg !6673
  %conv1 = zext i8 %8 to i32, !dbg !6672
  %call2 = call ptr @snd_seq_port_use_ptr(ptr noundef %6, i32 noundef %conv1) #18, !dbg !6674
  store ptr %call2, ptr %p, align 8, !dbg !6675
  %9 = load ptr, ptr %p, align 8, !dbg !6676
  %tobool3 = icmp ne ptr %9, null, !dbg !6676
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !6678

if.then4:                                         ; preds = %if.then
  %10 = load ptr, ptr %cp.addr, align 8, !dbg !6679
  %11 = load ptr, ptr %10, align 8, !dbg !6679
  %use_lock = getelementptr inbounds %struct.snd_seq_client, ptr %11, i32 0, i32 9, !dbg !6679
  call void @atomic_dec(ptr noundef %use_lock) #18, !dbg !6679
  %12 = load ptr, ptr %cp.addr, align 8, !dbg !6681
  store ptr null, ptr %12, align 8, !dbg !6682
  br label %if.end, !dbg !6683

if.end:                                           ; preds = %if.then4, %if.then
  %13 = load ptr, ptr %p, align 8, !dbg !6684
  store ptr %13, ptr %retval, align 8, !dbg !6685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6685

if.end5:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6686

cleanup:                                          ; preds = %if.end5, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !6687
  %14 = load ptr, ptr %retval, align 8, !dbg !6687
  ret ptr %14, !dbg !6687
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #4 align 16 !dbg !6688 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6692, metadata !DIExpression()), !dbg !6693
  br label %do.body, !dbg !6694

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6695

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6697
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !6698
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6699
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #18, !dbg !6700
  ret i1 %call, !dbg !6701
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #4 align 16 !dbg !6702 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6704, metadata !DIExpression()), !dbg !6705
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6706
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !6707
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6708
  call void @raw_atomic_dec(ptr noundef %1) #18, !dbg !6709
  ret void, !dbg !6710
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6711 dso_local ptr @snd_seq_client_use_ptr(i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #4 align 16 !dbg !6714 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6716, metadata !DIExpression()), !dbg !6717
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6718
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #18, !dbg !6719
  ret i1 %call, !dbg !6720
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #4 align 16 !dbg !6721 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6723, metadata !DIExpression()), !dbg !6726
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !6727
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6724, metadata !DIExpression()), !dbg !6727
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6727
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6727
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #17, !dbg !6727, !srcloc !6728
  %2 = icmp ult i8 %1, 2, !dbg !6727
  call void @llvm.assume(i1 %2), !dbg !6727
  store i8 %1, ptr %c, align 1, !dbg !6727
  %3 = load i8, ptr %c, align 1, !dbg !6727, !range !4760, !noundef !549
  %tobool = trunc i8 %3 to i1, !dbg !6727
  %frombool = zext i1 %tobool to i8, !dbg !6727
  store i8 %frombool, ptr %tmp, align 1, !dbg !6727
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !6729
  %4 = load i8, ptr %tmp, align 1, !dbg !6727, !range !4760, !noundef !549
  %tobool1 = trunc i8 %4 to i1, !dbg !6727
  ret i1 %tobool1, !dbg !6730
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #4 align 16 !dbg !6731 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6733, metadata !DIExpression()), !dbg !6734
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6735
  call void @arch_atomic_dec(ptr noundef %0) #18, !dbg !6736
  ret void, !dbg !6737
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #4 align 16 !dbg !6738 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6740, metadata !DIExpression()), !dbg !6741
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6742
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6743
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #17, !dbg !6744, !srcloc !6745
  ret void, !dbg !6746
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @subscribe_port(ptr noundef %client, ptr noundef %port, ptr noundef %grp, ptr noundef %info, i32 noundef %send_ack) #0 align 16 !dbg !6747 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca ptr, align 8
  %port.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %send_ack.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !6751, metadata !DIExpression()), !dbg !6757
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6752, metadata !DIExpression()), !dbg !6758
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !6753, metadata !DIExpression()), !dbg !6759
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6754, metadata !DIExpression()), !dbg !6760
  store i32 %send_ack, ptr %send_ack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %send_ack.addr, metadata !6755, metadata !DIExpression()), !dbg !6761
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !6762
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6756, metadata !DIExpression()), !dbg !6763
  store i32 0, ptr %err, align 4, !dbg !6763
  %0 = load ptr, ptr %port.addr, align 8, !dbg !6764
  %owner = getelementptr inbounds %struct.snd_seq_client_port, ptr %0, i32 0, i32 1, !dbg !6766
  %1 = load ptr, ptr %owner, align 8, !dbg !6766
  %call = call zeroext i1 @try_module_get(ptr noundef %1) #18, !dbg !6767
  br i1 %call, label %if.end, label %if.then, !dbg !6768

if.then:                                          ; preds = %entry
  store i32 -14, ptr %retval, align 4, !dbg !6769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6769

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %grp.addr, align 8, !dbg !6770
  %count = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %2, i32 0, i32 1, !dbg !6771
  %3 = load i32, ptr %count, align 8, !dbg !6772
  %inc = add i32 %3, 1, !dbg !6772
  store i32 %inc, ptr %count, align 8, !dbg !6772
  %4 = load ptr, ptr %grp.addr, align 8, !dbg !6773
  %open = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %4, i32 0, i32 5, !dbg !6775
  %5 = load ptr, ptr %open, align 8, !dbg !6775
  %tobool = icmp ne ptr %5, null, !dbg !6773
  br i1 %tobool, label %land.lhs.true, label %if.end10, !dbg !6776

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %grp.addr, align 8, !dbg !6777
  %count1 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %6, i32 0, i32 1, !dbg !6778
  %7 = load i32, ptr %count1, align 8, !dbg !6778
  %cmp = icmp eq i32 %7, 1, !dbg !6779
  br i1 %cmp, label %if.then2, label %if.end10, !dbg !6780

if.then2:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %grp.addr, align 8, !dbg !6781
  %open3 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %8, i32 0, i32 5, !dbg !6783
  %9 = load ptr, ptr %open3, align 8, !dbg !6783
  %10 = load ptr, ptr %port.addr, align 8, !dbg !6784
  %private_data = getelementptr inbounds %struct.snd_seq_client_port, ptr %10, i32 0, i32 9, !dbg !6785
  %11 = load ptr, ptr %private_data, align 8, !dbg !6785
  %12 = load ptr, ptr %info.addr, align 8, !dbg !6786
  %call4 = call i32 %9(ptr noundef %11, ptr noundef %12) #18, !dbg !6781
  store i32 %call4, ptr %err, align 4, !dbg !6787
  %13 = load i32, ptr %err, align 4, !dbg !6788
  %cmp5 = icmp slt i32 %13, 0, !dbg !6790
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !6791

if.then6:                                         ; preds = %if.then2
  %14 = load ptr, ptr %port.addr, align 8, !dbg !6792
  %owner7 = getelementptr inbounds %struct.snd_seq_client_port, ptr %14, i32 0, i32 1, !dbg !6794
  %15 = load ptr, ptr %owner7, align 8, !dbg !6794
  call void @module_put(ptr noundef %15) #18, !dbg !6795
  %16 = load ptr, ptr %grp.addr, align 8, !dbg !6796
  %count8 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %16, i32 0, i32 1, !dbg !6797
  %17 = load i32, ptr %count8, align 8, !dbg !6798
  %dec = add i32 %17, -1, !dbg !6798
  store i32 %dec, ptr %count8, align 8, !dbg !6798
  br label %if.end9, !dbg !6799

if.end9:                                          ; preds = %if.then6, %if.then2
  br label %if.end10, !dbg !6800

if.end10:                                         ; preds = %if.end9, %land.lhs.true, %if.end
  %18 = load i32, ptr %err, align 4, !dbg !6801
  %cmp11 = icmp sge i32 %18, 0, !dbg !6803
  br i1 %cmp11, label %land.lhs.true12, label %if.end22, !dbg !6804

land.lhs.true12:                                  ; preds = %if.end10
  %19 = load i32, ptr %send_ack.addr, align 4, !dbg !6805
  %tobool13 = icmp ne i32 %19, 0, !dbg !6805
  br i1 %tobool13, label %land.lhs.true14, label %if.end22, !dbg !6806

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %20 = load ptr, ptr %client.addr, align 8, !dbg !6807
  %type = getelementptr inbounds %struct.snd_seq_client, ptr %20, i32 0, i32 0, !dbg !6808
  %21 = load i32, ptr %type, align 8, !dbg !6808
  %cmp15 = icmp eq i32 %21, 1, !dbg !6809
  br i1 %cmp15, label %if.then16, label %if.end22, !dbg !6810

if.then16:                                        ; preds = %land.lhs.true14
  %22 = load ptr, ptr %port.addr, align 8, !dbg !6811
  %addr = getelementptr inbounds %struct.snd_seq_client_port, ptr %22, i32 0, i32 0, !dbg !6812
  %client17 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr, i32 0, i32 0, !dbg !6813
  %23 = load i8, ptr %client17, align 8, !dbg !6813
  %conv = zext i8 %23 to i32, !dbg !6811
  %24 = load ptr, ptr %port.addr, align 8, !dbg !6814
  %addr18 = getelementptr inbounds %struct.snd_seq_client_port, ptr %24, i32 0, i32 0, !dbg !6815
  %port19 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr18, i32 0, i32 1, !dbg !6816
  %25 = load i8, ptr %port19, align 1, !dbg !6816
  %conv20 = zext i8 %25 to i32, !dbg !6814
  %26 = load ptr, ptr %info.addr, align 8, !dbg !6817
  %call21 = call i32 @snd_seq_client_notify_subscription(i32 noundef %conv, i32 noundef %conv20, ptr noundef %26, i32 noundef 66) #18, !dbg !6818
  br label %if.end22, !dbg !6818

if.end22:                                         ; preds = %if.then16, %land.lhs.true14, %land.lhs.true12, %if.end10
  %27 = load i32, ptr %err, align 4, !dbg !6819
  store i32 %27, ptr %retval, align 4, !dbg !6820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6820

cleanup:                                          ; preds = %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !6821
  %28 = load i32, ptr %retval, align 4, !dbg !6821
  ret i32 %28, !dbg !6821
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6822 dso_local zeroext i1 @try_module_get(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6825 dso_local void @module_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6826 dso_local i32 @snd_seq_client_notify_subscription(i32 noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @unsubscribe_port(ptr noundef %client, ptr noundef %port, ptr noundef %grp, ptr noundef %info, i32 noundef %send_ack) #0 align 16 !dbg !6829 {
entry:
  %retval = alloca i32, align 4
  %client.addr = alloca ptr, align 8
  %port.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %send_ack.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %client, ptr %client.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %client.addr, metadata !6831, metadata !DIExpression()), !dbg !6837
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !6832, metadata !DIExpression()), !dbg !6838
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !6833, metadata !DIExpression()), !dbg !6839
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6834, metadata !DIExpression()), !dbg !6840
  store i32 %send_ack, ptr %send_ack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %send_ack.addr, metadata !6835, metadata !DIExpression()), !dbg !6841
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !6842
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6836, metadata !DIExpression()), !dbg !6843
  store i32 0, ptr %err, align 4, !dbg !6843
  %0 = load ptr, ptr %grp.addr, align 8, !dbg !6844
  %count = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %0, i32 0, i32 1, !dbg !6846
  %1 = load i32, ptr %count, align 8, !dbg !6846
  %tobool = icmp ne i32 %1, 0, !dbg !6844
  br i1 %tobool, label %if.end, label %if.then, !dbg !6847

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6848

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %grp.addr, align 8, !dbg !6849
  %count1 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %2, i32 0, i32 1, !dbg !6850
  %3 = load i32, ptr %count1, align 8, !dbg !6851
  %dec = add i32 %3, -1, !dbg !6851
  store i32 %dec, ptr %count1, align 8, !dbg !6851
  %4 = load ptr, ptr %grp.addr, align 8, !dbg !6852
  %close = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %4, i32 0, i32 6, !dbg !6854
  %5 = load ptr, ptr %close, align 8, !dbg !6854
  %tobool2 = icmp ne ptr %5, null, !dbg !6852
  br i1 %tobool2, label %land.lhs.true, label %if.end6, !dbg !6855

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %grp.addr, align 8, !dbg !6856
  %count3 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %6, i32 0, i32 1, !dbg !6857
  %7 = load i32, ptr %count3, align 8, !dbg !6857
  %cmp = icmp eq i32 %7, 0, !dbg !6858
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !6859

if.then4:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %grp.addr, align 8, !dbg !6860
  %close5 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %8, i32 0, i32 6, !dbg !6861
  %9 = load ptr, ptr %close5, align 8, !dbg !6861
  %10 = load ptr, ptr %port.addr, align 8, !dbg !6862
  %private_data = getelementptr inbounds %struct.snd_seq_client_port, ptr %10, i32 0, i32 9, !dbg !6863
  %11 = load ptr, ptr %private_data, align 8, !dbg !6863
  %12 = load ptr, ptr %info.addr, align 8, !dbg !6864
  %call = call i32 %9(ptr noundef %11, ptr noundef %12) #18, !dbg !6860
  store i32 %call, ptr %err, align 4, !dbg !6865
  br label %if.end6, !dbg !6866

if.end6:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %13 = load i32, ptr %send_ack.addr, align 4, !dbg !6867
  %tobool7 = icmp ne i32 %13, 0, !dbg !6867
  br i1 %tobool7, label %land.lhs.true8, label %if.end16, !dbg !6869

land.lhs.true8:                                   ; preds = %if.end6
  %14 = load ptr, ptr %client.addr, align 8, !dbg !6870
  %type = getelementptr inbounds %struct.snd_seq_client, ptr %14, i32 0, i32 0, !dbg !6871
  %15 = load i32, ptr %type, align 8, !dbg !6871
  %cmp9 = icmp eq i32 %15, 1, !dbg !6872
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !6873

if.then10:                                        ; preds = %land.lhs.true8
  %16 = load ptr, ptr %port.addr, align 8, !dbg !6874
  %addr = getelementptr inbounds %struct.snd_seq_client_port, ptr %16, i32 0, i32 0, !dbg !6875
  %client11 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr, i32 0, i32 0, !dbg !6876
  %17 = load i8, ptr %client11, align 8, !dbg !6876
  %conv = zext i8 %17 to i32, !dbg !6874
  %18 = load ptr, ptr %port.addr, align 8, !dbg !6877
  %addr12 = getelementptr inbounds %struct.snd_seq_client_port, ptr %18, i32 0, i32 0, !dbg !6878
  %port13 = getelementptr inbounds %struct.snd_seq_addr, ptr %addr12, i32 0, i32 1, !dbg !6879
  %19 = load i8, ptr %port13, align 1, !dbg !6879
  %conv14 = zext i8 %19 to i32, !dbg !6877
  %20 = load ptr, ptr %info.addr, align 8, !dbg !6880
  %call15 = call i32 @snd_seq_client_notify_subscription(i32 noundef %conv, i32 noundef %conv14, ptr noundef %20, i32 noundef 67) #18, !dbg !6881
  br label %if.end16, !dbg !6881

if.end16:                                         ; preds = %if.then10, %land.lhs.true8, %if.end6
  %21 = load ptr, ptr %port.addr, align 8, !dbg !6882
  %owner = getelementptr inbounds %struct.snd_seq_client_port, ptr %21, i32 0, i32 1, !dbg !6883
  %22 = load ptr, ptr %owner, align 8, !dbg !6883
  call void @module_put(ptr noundef %22) #18, !dbg !6884
  %23 = load i32, ptr %err, align 4, !dbg !6885
  store i32 %23, ptr %retval, align 4, !dbg !6886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6886

cleanup:                                          ; preds = %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !6887
  %24 = load i32, ptr %retval, align 4, !dbg !6887
  ret i32 %24, !dbg !6887
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122}
!llvm.ident = !{!4123}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "sound/core/seq/seq_ports.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fdad40fe6034b5ed211747e415dddc87")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 43)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 702, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 13)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_seq_event_port_attach271", scope: !19, file: !2, line: 721, type: !149, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/seq/.seq_ports.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/seq/snd-seq\22 -D KBUILD_BASENAME=\22seq_ports\22 -D KBUILD_MODNAME=\22snd_seq\22 -D __KBUILD_MODNAME=kmod_snd_seq -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/seq/seq_ports.ll sound/core/seq/seq_ports.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !148, globals: !4089, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21, !29, !34, !40, !45, !53, !59, !66, !73, !79, !85, !92, !100, !108, !117, !122, !127, !133, !138}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !22, line: 312, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!26 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!27 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!28 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !30, line: 2052, baseType: !23, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!33 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !35, line: 54, baseType: !23, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "USRQUOTA", value: 0)
!38 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!39 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !41, line: 65, baseType: !23, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!42 = !{!43, !44}
!43 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!44 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !46, line: 9, baseType: !23, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!49 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!50 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!51 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!52 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !54, line: 16, baseType: !23, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "TT_NONE", value: 0)
!57 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!58 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !60, line: 51, baseType: !23, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!63 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!64 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!65 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !67, line: 15, baseType: !23, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!70 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!71 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!72 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !74, line: 26, baseType: !23, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!77 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!78 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !80, line: 45, baseType: !23, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!83 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!84 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !86, line: 487, baseType: !23, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!89 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!90 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!91 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !93, line: 620, baseType: !23, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!94 = !{!95, !96, !97, !98, !99}
!95 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!96 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!97 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!98 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!99 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !93, line: 597, baseType: !101, size: 32, elements: !102)
!101 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!104 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!105 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!106 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!107 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !86, line: 547, baseType: !23, size: 32, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !116}
!110 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!111 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!112 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!113 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!114 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!115 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!116 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !86, line: 564, baseType: !23, size: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!120 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!121 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !86, line: 577, baseType: !23, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!125 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!126 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !86, line: 503, baseType: !23, size: 32, elements: !128)
!128 = !{!129, !130, !131, !132}
!129 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!130 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!131 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!132 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !134, line: 10, baseType: !23, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!135 = !{!136, !137}
!136 = !DIEnumerator(name: "false", value: 0)
!137 = !DIEnumerator(name: "true", value: 1)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !139, line: 364, baseType: !23, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!140 = !{!141, !142, !143, !144, !145, !146, !147}
!141 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!142 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!143 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!144 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!145 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!146 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!147 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!148 = !{!149, !150, !710, !162, !4075, !315, !4082, !4084, !4086, !4088}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_client_port", file: !152, line: 46, size: 2688, elements: !153)
!152 = !DIFile(filename: "sound/core/seq/seq_ports.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "353016fc9f4ddc284bf546e4733faa59")
!153 = !{!154, !161, !3934, !3936, !3937, !3940, !3964, !3965, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !151, file: !152, line: 48, baseType: !155, size: 16)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_addr", file: !156, line: 142, size: 16, elements: !157)
!156 = !DIFile(filename: "./include/uapi/sound/asequencer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a270bda5db28a911babca63673f52743")
!157 = !{!158, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !155, file: !156, line: 143, baseType: !159, size: 8)
!159 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !155, file: !156, line: 144, baseType: !159, size: 8, offset: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !151, file: !152, line: 49, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !22, line: 402, size: 9216, align: 512, elements: !164)
!164 = !{!165, !166, !173, !177, !3610, !3636, !3637, !3638, !3639, !3643, !3646, !3647, !3648, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3715, !3719, !3737, !3754, !3755, !3756, !3757, !3766, !3789, !3790, !3793, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3807, !3808, !3894, !3902, !3903, !3904, !3906, !3910, !3911, !3915, !3916, !3917, !3918, !3920, !3921, !3922, !3929, !3930, !3931, !3933}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !163, file: !22, line: 403, baseType: !21, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !163, file: !22, line: 406, baseType: !167, size: 128, offset: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !168, line: 190, size: 128, elements: !169)
!168 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!169 = !{!170, !172}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !168, line: 191, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !167, file: !168, line: 191, baseType: !171, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !22, line: 409, baseType: !174, size: 448, offset: 192)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 56)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !163, file: !22, line: 417, baseType: !178, size: 768, offset: 640)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !22, line: 45, size: 768, elements: !179)
!179 = !{!180, !3604, !3605, !3606, !3609}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !178, file: !22, line: 46, baseType: !181, size: 512)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !182, line: 64, size: 512, elements: !183)
!182 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!183 = !{!184, !187, !188, !190, !278, !3491, !3594, !3599, !3600, !3601, !3602, !3603}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !182, line: 65, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !181, file: !182, line: 66, baseType: !167, size: 128, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !181, file: !182, line: 67, baseType: !189, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !181, file: !182, line: 68, baseType: !191, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !182, line: 168, size: 768, elements: !193)
!193 = !{!194, !195, !237, !238}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !192, file: !182, line: 169, baseType: !167, size: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !192, file: !182, line: 170, baseType: !196, size: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !197, line: 29, baseType: !198)
!197 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !197, line: 17, size: 32, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !197, line: 18, baseType: !201, size: 32)
!201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !197, line: 18, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !201, file: !197, line: 19, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !205, line: 14, size: 32, elements: !206)
!205 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !204, file: !205, line: 15, baseType: !208, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !209, line: 44, baseType: !210)
!209 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !209, line: 14, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !209, line: 15, baseType: !213, size: 32)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !209, line: 15, size: 32, elements: !214)
!214 = !{!215, !220, !229}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !213, file: !209, line: 16, baseType: !216, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !168, line: 174, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 172, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !217, file: !168, line: 173, baseType: !101, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !209, line: 24, baseType: !221, size: 16)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !209, line: 24, size: 16, elements: !222)
!222 = !{!223, !228}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !221, file: !209, line: 25, baseType: !224, size: 8)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !225, line: 17, baseType: !226)
!225 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !227, line: 21, baseType: !159)
!227 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !221, file: !209, line: 26, baseType: !224, size: 8, offset: 8)
!229 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !209, line: 28, baseType: !230, size: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !209, line: 28, size: 32, elements: !231)
!231 = !{!232, !236}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !230, file: !209, line: 29, baseType: !233, size: 16)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !225, line: 19, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !227, line: 24, baseType: !235)
!235 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !230, file: !209, line: 30, baseType: !233, size: 16, offset: 16)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !192, file: !182, line: 171, baseType: !181, size: 512, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !192, file: !182, line: 172, baseType: !239, size: 64, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !182, line: 133, size: 192, elements: !242)
!242 = !{!243, !250, !255}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !241, file: !182, line: 134, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!101, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !182, line: 135, baseType: !251, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!185, !248}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !241, file: !182, line: 136, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!101, !248, !260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !182, line: 125, size: 20736, elements: !262)
!262 = !{!263, !268, !272, !273, !277}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !261, file: !182, line: 126, baseType: !264, size: 192)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 192, elements: !266)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!266 = !{!267}
!267 = !DISubrange(count: 3)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !261, file: !182, line: 127, baseType: !269, size: 4096, offset: 192)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 4096, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !261, file: !182, line: 128, baseType: !101, size: 32, offset: 4288)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !261, file: !182, line: 129, baseType: !274, size: 16384, offset: 4320)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 2048)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !261, file: !182, line: 130, baseType: !101, size: 32, offset: 20704)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !181, file: !182, line: 69, baseType: !279, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !182, line: 116, size: 384, elements: !282)
!282 = !{!283, !287, !316, !3453, !3481, !3485}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !281, file: !182, line: 117, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !189}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !281, file: !182, line: 118, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !291, line: 254, size: 128, elements: !292)
!291 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!292 = !{!293, !308}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !290, file: !291, line: 255, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !189, !302, !265}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !168, line: 66, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !299, line: 73, baseType: !300)
!299 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !299, line: 15, baseType: !301)
!301 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !291, line: 30, size: 128, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !291, line: 31, baseType: !185, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !303, file: !291, line: 32, baseType: !307, size: 16, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !168, line: 24, baseType: !235)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !290, file: !291, line: 256, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!297, !189, !302, !185, !312}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !168, line: 61, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !299, line: 72, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !299, line: 16, baseType: !315)
!315 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !281, file: !182, line: 119, baseType: !317, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !291, line: 84, size: 320, elements: !321)
!321 = !{!322, !323, !327, !3449, !3451}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !291, line: 85, baseType: !185, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !320, file: !291, line: 86, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!307, !189, !302, !101}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !320, file: !291, line: 88, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!307, !189, !331, !101}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !291, line: 175, size: 512, elements: !333)
!333 = !{!334, !335, !336, !337, !3440, !3444, !3445}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !332, file: !291, line: 176, baseType: !303, size: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !332, file: !291, line: 177, baseType: !312, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !332, file: !291, line: 178, baseType: !149, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !332, file: !291, line: 179, baseType: !338, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !30, line: 472, size: 1536, align: 64, elements: !343)
!343 = !{!344, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3434, !3435, !3436, !3437, !3438, !3439}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !342, file: !30, line: 473, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !30, line: 641, size: 4800, elements: !347)
!347 = !{!348, !349, !350, !358, !359, !366, !367, !370, !371, !3212, !3213, !3214, !3215, !3216, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3256, !3259, !3260, !3261, !3270, !3271, !3272, !3273}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !346, file: !30, line: 642, baseType: !307, size: 16)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !346, file: !30, line: 643, baseType: !235, size: 16, offset: 16)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !346, file: !30, line: 644, baseType: !351, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !352, line: 23, baseType: !353)
!352 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 21, size: 32, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !353, file: !352, line: 22, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !168, line: 37, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !299, line: 49, baseType: !23)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !346, file: !30, line: 645, baseType: !167, size: 128, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !346, file: !30, line: 646, baseType: !360, size: 32, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !352, line: 28, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 26, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !361, file: !352, line: 27, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !168, line: 38, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !299, line: 50, baseType: !23)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !346, file: !30, line: 647, baseType: !23, size: 32, offset: 224)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !346, file: !30, line: 650, baseType: !368, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !30, line: 607, flags: DIFlagFwdDecl)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !346, file: !30, line: 651, baseType: !368, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !346, file: !30, line: 654, baseType: !372, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !30, line: 1966, size: 2048, align: 512, elements: !375)
!375 = !{!376, !3037, !3050, !3054, !3058, !3062, !3066, !3070, !3074, !3078, !3082, !3083, !3087, !3091, !3128, !3157, !3161, !3167, !3171, !3175, !3179, !3183, !3187, !3193, !3197}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !374, file: !30, line: 1967, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!380, !345, !380, !23}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !382, line: 82, size: 1536, elements: !383)
!382 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!383 = !{!384, !385, !395, !403, !404, !424, !425, !429, !442, !3021, !3022, !3023, !3024, !3029, !3030, !3031}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !381, file: !382, line: 84, baseType: !23, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !381, file: !382, line: 85, baseType: !386, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !387, line: 275, baseType: !388)
!387 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !387, line: 275, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !388, file: !387, line: 275, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !387, line: 69, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !387, line: 64, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !392, file: !387, line: 65, baseType: !23, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !381, file: !382, line: 86, baseType: !396, size: 128, offset: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !397, line: 38, size: 128, elements: !398)
!397 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!398 = !{!399, !401}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !397, line: 39, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !396, file: !397, line: 39, baseType: !402, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !381, file: !382, line: 87, baseType: !380, size: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !381, file: !382, line: 88, baseType: !405, size: 128, offset: 256)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !382, line: 49, size: 128, elements: !406)
!406 = !{!407, !421}
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !382, line: 50, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !382, line: 50, size: 64, elements: !409)
!409 = !{!410, !417}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !382, line: 51, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !382, line: 51, size: 64, elements: !412)
!412 = !{!413, !416}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !411, file: !382, line: 52, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !225, line: 21, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !227, line: 27, baseType: !23)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !411, file: !382, line: 52, baseType: !414, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !408, file: !382, line: 54, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !225, line: 23, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !227, line: 31, baseType: !420)
!420 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !382, line: 56, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !381, file: !382, line: 89, baseType: !345, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !381, file: !382, line: 91, baseType: !426, size: 256, offset: 448)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !381, file: !382, line: 94, baseType: !430, size: 64, offset: 704)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !431, line: 25, size: 64, elements: !432)
!431 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !431, line: 26, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !431, line: 26, size: 64, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !434, file: !431, line: 28, baseType: !419, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !431, line: 30, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !434, file: !431, line: 30, size: 64, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !438, file: !431, line: 31, baseType: !196, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !438, file: !431, line: 32, baseType: !101, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !381, file: !382, line: 95, baseType: !443, size: 64, offset: 768)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !382, line: 128, size: 1024, align: 512, elements: !446)
!446 = !{!447, !451, !452, !459, !465, !469, !473, !477, !478, !482, !486, !3011, !3015}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !445, file: !382, line: 129, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!101, !380, !23}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !445, file: !382, line: 130, baseType: !448, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !445, file: !382, line: 131, baseType: !453, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!101, !456, !458}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !445, file: !382, line: 132, baseType: !460, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!101, !456, !23, !185, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !445, file: !382, line: 134, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!101, !456}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !445, file: !382, line: 135, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!101, !380}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !445, file: !382, line: 136, baseType: !474, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !380}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !445, file: !382, line: 137, baseType: !474, size: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !445, file: !382, line: 138, baseType: !479, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !380, !345}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !445, file: !382, line: 139, baseType: !483, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!265, !380, !265, !101}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !445, file: !382, line: 140, baseType: !487, size: 64, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !3010}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !492, line: 70, size: 256, elements: !493)
!492 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!493 = !{!494, !495, !3006, !3007}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !491, file: !492, line: 71, baseType: !380, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !491, file: !492, line: 72, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !30, line: 1190, size: 10752, elements: !498)
!498 = !{!499, !500, !503, !504, !505, !509, !558, !720, !760, !850, !854, !855, !856, !857, !858, !867, !868, !869, !870, !875, !879, !880, !883, !886, !889, !892, !893, !894, !935, !2937, !2938, !2939, !2940, !2941, !2942, !2945, !2947, !2954, !2955, !2956, !2957, !2958, !2973, !2974, !2975, !2976, !2977, !2980, !2981, !2982, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !497, file: !30, line: 1191, baseType: !167, size: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !497, file: !30, line: 1192, baseType: !501, size: 32, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !168, line: 21, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !168, line: 18, baseType: !414)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !497, file: !30, line: 1193, baseType: !159, size: 8, offset: 160)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !497, file: !30, line: 1194, baseType: !315, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !497, file: !30, line: 1195, baseType: !506, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !168, line: 52, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !299, line: 88, baseType: !508)
!508 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !497, file: !30, line: 1196, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !30, line: 2366, size: 576, elements: !512)
!512 = !{!513, !514, !515, !522, !526, !530, !534, !535, !536, !546, !550, !551, !552, !554, !555, !556, !557}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !511, file: !30, line: 2367, baseType: !185, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !511, file: !30, line: 2368, baseType: !101, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !511, file: !30, line: 2376, baseType: !516, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!101, !519}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !521, line: 32, flags: DIFlagFwdDecl)
!521 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!522 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !511, file: !30, line: 2377, baseType: !523, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !30, line: 75, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !511, file: !30, line: 2378, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!380, !510, !101, !185, !149}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !511, file: !30, line: 2380, baseType: !531, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !496}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !511, file: !30, line: 2381, baseType: !162, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !511, file: !30, line: 2382, baseType: !510, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !511, file: !30, line: 2383, baseType: !537, size: 64, offset: 512)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !168, line: 194, size: 64, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !537, file: !168, line: 195, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !168, line: 198, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !168, line: 199, baseType: !540, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !541, file: !168, line: 199, baseType: !545, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !511, file: !30, line: 2385, baseType: !547, offset: 576)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !548, line: 206, elements: !549)
!548 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!549 = !{}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !511, file: !30, line: 2386, baseType: !547, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !511, file: !30, line: 2387, baseType: !547, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !511, file: !30, line: 2388, baseType: !553, offset: 576)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, elements: !266)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !511, file: !30, line: 2390, baseType: !547, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !511, file: !30, line: 2391, baseType: !547, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !511, file: !30, line: 2392, baseType: !547, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !511, file: !30, line: 2393, baseType: !547, offset: 576)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !497, file: !30, line: 1197, baseType: !559, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !30, line: 2057, size: 1664, elements: !562)
!562 = !{!563, !567, !571, !572, !576, !582, !586, !587, !588, !592, !596, !600, !601, !602, !608, !613, !614, !621, !622, !623, !624, !628, !632, !701, !718, !719}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !561, file: !30, line: 2058, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!345, !496}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !561, file: !30, line: 2059, baseType: !568, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !345}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !561, file: !30, line: 2060, baseType: !568, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !561, file: !30, line: 2062, baseType: !573, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !345, !101}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !561, file: !30, line: 2063, baseType: !577, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!101, !345, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !30, line: 309, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !561, file: !30, line: 2064, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!101, !345}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !561, file: !30, line: 2065, baseType: !568, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !561, file: !30, line: 2066, baseType: !531, size: 64, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !561, file: !30, line: 2067, baseType: !589, size: 64, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!101, !496, !101}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !561, file: !30, line: 2068, baseType: !593, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!101, !496, !29}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !561, file: !30, line: 2069, baseType: !597, size: 64, offset: 640)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!101, !496}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !561, file: !30, line: 2070, baseType: !593, size: 64, offset: 704)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !561, file: !30, line: 2071, baseType: !597, size: 64, offset: 768)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !561, file: !30, line: 2072, baseType: !603, size: 64, offset: 832)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!101, !380, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !30, line: 62, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !561, file: !30, line: 2073, baseType: !609, size: 64, offset: 896)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!101, !496, !612, !265}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !561, file: !30, line: 2074, baseType: !531, size: 64, offset: 960)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !561, file: !30, line: 2076, baseType: !615, size: 64, offset: 1024)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!101, !618, !380}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !620, line: 66, flags: DIFlagFwdDecl)
!620 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!621 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !561, file: !30, line: 2077, baseType: !615, size: 64, offset: 1088)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !561, file: !30, line: 2078, baseType: !615, size: 64, offset: 1152)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !561, file: !30, line: 2079, baseType: !615, size: 64, offset: 1216)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !561, file: !30, line: 2081, baseType: !625, size: 64, offset: 1280)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!297, !496, !101, !265, !312, !506}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !561, file: !30, line: 2082, baseType: !629, size: 64, offset: 1344)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!297, !496, !101, !185, !312, !506}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !561, file: !30, line: 2083, baseType: !633, size: 64, offset: 1408)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!636, !345}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !35, line: 296, size: 1664, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !665, !666, !667, !668, !684, !685, !686}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !638, file: !35, line: 297, baseType: !541, size: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !638, file: !35, line: 298, baseType: !167, size: 128, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !638, file: !35, line: 299, baseType: !167, size: 128, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !638, file: !35, line: 300, baseType: !167, size: 128, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !638, file: !35, line: 301, baseType: !645, size: 256, offset: 512)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !646, line: 66, size: 256, elements: !647)
!646 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!647 = !{!648, !657, !659, !664}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !645, file: !646, line: 67, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !650, line: 13, baseType: !651)
!650 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !168, line: 181, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 179, size: 64, elements: !653)
!653 = !{!654}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !652, file: !168, line: 180, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !225, line: 22, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !227, line: 30, baseType: !508)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !645, file: !646, line: 68, baseType: !658, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !205, line: 23, baseType: !204)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !645, file: !646, line: 70, baseType: !660, size: 32, offset: 96)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !661, line: 15, size: 32, elements: !662)
!661 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !660, file: !661, line: 20, baseType: !216, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !645, file: !646, line: 72, baseType: !167, size: 128, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !638, file: !35, line: 302, baseType: !196, size: 32, offset: 768)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !638, file: !35, line: 303, baseType: !216, size: 32, offset: 800)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !638, file: !35, line: 304, baseType: !496, size: 64, offset: 832)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !638, file: !35, line: 305, baseType: !669, size: 64, offset: 896)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !35, line: 68, size: 64, elements: !670)
!670 = !{!671, !683}
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !35, line: 69, baseType: !672, size: 32)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !35, line: 69, size: 32, elements: !673)
!673 = !{!674, !675, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !672, file: !35, line: 70, baseType: !351, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !672, file: !35, line: 71, baseType: !360, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !672, file: !35, line: 72, baseType: !677, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !678, line: 24, baseType: !679)
!678 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !678, line: 22, size: 32, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !679, file: !678, line: 23, baseType: !682, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !678, line: 20, baseType: !357)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !669, file: !35, line: 74, baseType: !34, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !638, file: !35, line: 306, baseType: !506, size: 64, offset: 960)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !638, file: !35, line: 307, baseType: !315, size: 64, offset: 1024)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !638, file: !35, line: 308, baseType: !687, size: 576, offset: 1088)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !35, line: 205, size: 576, elements: !688)
!688 = !{!689, !691, !692, !693, !694, !695, !696, !697, !700}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !687, file: !35, line: 206, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !35, line: 66, baseType: !508)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !687, file: !35, line: 207, baseType: !690, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !687, file: !35, line: 208, baseType: !690, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !687, file: !35, line: 209, baseType: !690, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !687, file: !35, line: 210, baseType: !690, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !687, file: !35, line: 211, baseType: !690, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !687, file: !35, line: 212, baseType: !690, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !687, file: !35, line: 213, baseType: !698, size: 64, offset: 448)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !699, line: 8, baseType: !656)
!699 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !687, file: !35, line: 214, baseType: !698, size: 64, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !561, file: !30, line: 2085, baseType: !702, size: 64, offset: 1472)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!301, !496, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !707, line: 15, size: 256, elements: !708)
!707 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!708 = !{!709, !711, !712, !713, !714}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !706, file: !707, line: 16, baseType: !710, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !168, line: 154, baseType: !23)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !706, file: !707, line: 19, baseType: !101, size: 32, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !706, file: !707, line: 26, baseType: !315, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !706, file: !707, line: 33, baseType: !315, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !706, file: !707, line: 36, baseType: !715, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !717, line: 33, flags: DIFlagFwdDecl)
!717 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!718 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !561, file: !30, line: 2087, baseType: !702, size: 64, offset: 1536)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !561, file: !30, line: 2089, baseType: !531, size: 64, offset: 1600)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !497, file: !30, line: 1198, baseType: !721, size: 64, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !35, line: 324, size: 704, elements: !724)
!724 = !{!725, !729, !733, !737, !738, !739, !740, !741, !746, !751, !755}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !723, file: !35, line: 325, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!101, !637}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !723, file: !35, line: 326, baseType: !730, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!637, !496, !101}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !723, file: !35, line: 327, baseType: !734, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !637}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !723, file: !35, line: 328, baseType: !726, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !723, file: !35, line: 329, baseType: !726, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !723, file: !35, line: 330, baseType: !726, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !723, file: !35, line: 331, baseType: !589, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !723, file: !35, line: 334, baseType: !742, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!745, !345}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !723, file: !35, line: 335, baseType: !747, size: 64, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!101, !345, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !723, file: !35, line: 337, baseType: !752, size: 64, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!101, !345, !745}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !723, file: !35, line: 339, baseType: !756, size: 64, offset: 640)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!101, !496, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !497, file: !30, line: 1199, baseType: !761, size: 64, offset: 512)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !35, line: 430, size: 704, elements: !764)
!764 = !{!765, !776, !777, !781, !782, !783, !798, !821, !825, !826, !849}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !763, file: !35, line: 431, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!101, !496, !101, !101, !769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !772, line: 8, size: 128, elements: !773)
!772 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !771, file: !772, line: 9, baseType: !490, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !771, file: !772, line: 10, baseType: !380, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !763, file: !35, line: 432, baseType: !589, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !763, file: !35, line: 433, baseType: !778, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!101, !496, !23}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !763, file: !35, line: 434, baseType: !778, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !763, file: !35, line: 435, baseType: !589, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !763, file: !35, line: 436, baseType: !784, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!101, !496, !101, !787}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !35, line: 417, size: 256, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !788, file: !35, line: 418, baseType: !101, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !788, file: !35, line: 419, baseType: !23, size: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !788, file: !35, line: 420, baseType: !23, size: 32, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !788, file: !35, line: 422, baseType: !23, size: 32, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !788, file: !35, line: 423, baseType: !23, size: 32, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !788, file: !35, line: 424, baseType: !23, size: 32, offset: 160)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !788, file: !35, line: 425, baseType: !23, size: 32, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !788, file: !35, line: 426, baseType: !23, size: 32, offset: 224)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !763, file: !35, line: 437, baseType: !799, size: 64, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!101, !496, !669, !802}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !35, line: 345, size: 960, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !803, file: !35, line: 346, baseType: !101, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !803, file: !35, line: 347, baseType: !418, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !803, file: !35, line: 348, baseType: !418, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !803, file: !35, line: 349, baseType: !418, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !803, file: !35, line: 350, baseType: !418, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !803, file: !35, line: 351, baseType: !418, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !803, file: !35, line: 352, baseType: !418, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !803, file: !35, line: 353, baseType: !655, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !803, file: !35, line: 355, baseType: !655, size: 64, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !803, file: !35, line: 356, baseType: !101, size: 32, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !803, file: !35, line: 357, baseType: !101, size: 32, offset: 608)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !803, file: !35, line: 358, baseType: !418, size: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !803, file: !35, line: 359, baseType: !418, size: 64, offset: 704)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !803, file: !35, line: 360, baseType: !418, size: 64, offset: 768)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !803, file: !35, line: 361, baseType: !655, size: 64, offset: 832)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !803, file: !35, line: 362, baseType: !101, size: 32, offset: 896)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !763, file: !35, line: 438, baseType: !822, size: 64, offset: 448)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!101, !496, !759, !802}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !763, file: !35, line: 440, baseType: !799, size: 64, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !763, file: !35, line: 441, baseType: !827, size: 64, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!101, !496, !830}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !35, line: 411, size: 1408, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !831, file: !35, line: 412, baseType: !23, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !831, file: !35, line: 413, baseType: !835, size: 1344, offset: 64)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 1344, elements: !266)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !35, line: 397, size: 448, elements: !837)
!837 = !{!838, !839, !840, !841, !842, !843, !844, !845, !846, !848}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !836, file: !35, line: 398, baseType: !23, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !836, file: !35, line: 399, baseType: !23, size: 32, offset: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !836, file: !35, line: 401, baseType: !23, size: 32, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !836, file: !35, line: 402, baseType: !23, size: 32, offset: 96)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !836, file: !35, line: 403, baseType: !23, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !836, file: !35, line: 404, baseType: !23, size: 32, offset: 160)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !836, file: !35, line: 405, baseType: !23, size: 32, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !836, file: !35, line: 406, baseType: !420, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !836, file: !35, line: 407, baseType: !847, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !168, line: 132, baseType: !418)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !836, file: !35, line: 408, baseType: !847, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !763, file: !35, line: 442, baseType: !778, size: 64, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !497, file: !30, line: 1200, baseType: !851, size: 64, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !30, line: 54, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !497, file: !30, line: 1201, baseType: !315, size: 64, offset: 640)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !497, file: !30, line: 1202, baseType: !315, size: 64, offset: 704)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !497, file: !30, line: 1203, baseType: !315, size: 64, offset: 768)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !497, file: !30, line: 1204, baseType: !380, size: 64, offset: 832)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !497, file: !30, line: 1205, baseType: !859, size: 320, offset: 896)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !860, line: 48, size: 320, elements: !861)
!860 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!861 = !{!862, !863, !864, !865, !866}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !859, file: !860, line: 49, baseType: !649, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !859, file: !860, line: 55, baseType: !649, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !859, file: !860, line: 57, baseType: !660, size: 32, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !859, file: !860, line: 59, baseType: !658, size: 32, offset: 160)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !859, file: !860, line: 60, baseType: !167, size: 128, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !497, file: !30, line: 1206, baseType: !101, size: 32, offset: 1216)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !497, file: !30, line: 1207, baseType: !216, size: 32, offset: 1248)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !497, file: !30, line: 1209, baseType: !149, size: 64, offset: 1280)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !497, file: !30, line: 1211, baseType: !871, size: 64, offset: 1344)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !30, line: 1211, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !497, file: !30, line: 1223, baseType: !876, size: 64, offset: 1408)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !397, line: 34, size: 64, elements: !877)
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !876, file: !397, line: 35, baseType: !400, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !497, file: !30, line: 1224, baseType: !167, size: 128, offset: 1472)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !497, file: !30, line: 1225, baseType: !881, size: 64, offset: 1600)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !30, line: 1225, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !497, file: !30, line: 1226, baseType: !884, size: 64, offset: 1664)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !30, line: 1226, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !497, file: !30, line: 1227, baseType: !887, size: 64, offset: 1728)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !30, line: 50, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !497, file: !30, line: 1228, baseType: !890, size: 64, offset: 1792)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !30, line: 1228, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !497, file: !30, line: 1229, baseType: !541, size: 128, offset: 1856)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !497, file: !30, line: 1230, baseType: !23, size: 32, offset: 1984)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !497, file: !30, line: 1231, baseType: !895, size: 2496, offset: 2048)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !35, line: 521, size: 2496, elements: !896)
!896 = !{!897, !898, !899, !901, !933}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !895, file: !35, line: 522, baseType: !23, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !895, file: !35, line: 523, baseType: !859, size: 320, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !895, file: !35, line: 524, baseType: !900, size: 192, offset: 384)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 192, elements: !266)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !895, file: !35, line: 525, baseType: !902, size: 1728, offset: 576)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, size: 1728, elements: !266)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !35, line: 222, size: 576, elements: !904)
!904 = !{!905, !925, !926, !927, !928, !929, !930, !931, !932}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !903, file: !35, line: 223, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !35, line: 445, size: 256, elements: !908)
!908 = !{!909, !910, !923, !924}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !907, file: !35, line: 446, baseType: !101, size: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !907, file: !35, line: 447, baseType: !911, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !35, line: 312, size: 512, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !920, !921, !922}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !913, file: !35, line: 313, baseType: !589, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !913, file: !35, line: 314, baseType: !589, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !913, file: !35, line: 315, baseType: !589, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !913, file: !35, line: 316, baseType: !589, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !913, file: !35, line: 317, baseType: !726, size: 64, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !913, file: !35, line: 318, baseType: !726, size: 64, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !913, file: !35, line: 319, baseType: !726, size: 64, offset: 384)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !913, file: !35, line: 320, baseType: !756, size: 64, offset: 448)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !907, file: !35, line: 448, baseType: !162, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !907, file: !35, line: 449, baseType: !906, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !903, file: !35, line: 224, baseType: !101, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !903, file: !35, line: 226, baseType: !167, size: 128, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !903, file: !35, line: 227, baseType: !315, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !903, file: !35, line: 228, baseType: !23, size: 32, offset: 320)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !903, file: !35, line: 229, baseType: !23, size: 32, offset: 352)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !903, file: !35, line: 230, baseType: !690, size: 64, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !903, file: !35, line: 231, baseType: !690, size: 64, offset: 448)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !903, file: !35, line: 232, baseType: !149, size: 64, offset: 512)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !895, file: !35, line: 526, baseType: !934, size: 192, offset: 2304)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !911, size: 192, elements: !266)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !497, file: !30, line: 1233, baseType: !936, size: 2368, offset: 4544)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !30, line: 1184, size: 2368, elements: !937)
!937 = !{!938, !939, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !936, file: !30, line: 1185, baseType: !235, size: 16)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !936, file: !30, line: 1186, baseType: !235, size: 16, offset: 16)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !936, file: !30, line: 1187, baseType: !941, size: 2304, offset: 64)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !942, size: 2304, elements: !266)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !943, line: 12, size: 768, elements: !944)
!943 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!944 = !{!945, !967, !969, !2935, !2936}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !942, file: !943, line: 13, baseType: !946, size: 384)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !947, line: 17, size: 384, elements: !948)
!947 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!948 = !{!949, !950, !951, !958}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !946, file: !947, line: 18, baseType: !101, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !946, file: !947, line: 19, baseType: !101, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !946, file: !947, line: 20, baseType: !952, size: 192, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !953, line: 41, baseType: !954)
!953 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !953, line: 37, size: 192, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !954, file: !953, line: 38, baseType: !196, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !954, file: !953, line: 39, baseType: !167, size: 128, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !946, file: !947, line: 22, baseType: !959, size: 128, align: 64, offset: 256)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !168, line: 232, size: 128, align: 64, elements: !960)
!960 = !{!961, !963}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !959, file: !168, line: 233, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !959, file: !168, line: 234, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !962}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !942, file: !943, line: 14, baseType: !968, size: 64, offset: 384)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !942, file: !943, line: 15, baseType: !970, size: 64, offset: 448)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !971, line: 16, size: 64, elements: !972)
!971 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!972 = !{!973}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !970, file: !971, line: 17, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !620, line: 746, size: 58368, elements: !976)
!976 = !{!977, !985, !986, !987, !993, !994, !995, !996, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1074, !1085, !1178, !1182, !1185, !1216, !1217, !1218, !1219, !1230, !1232, !1233, !1234, !1235, !1236, !1237, !1248, !1249, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1266, !1267, !1274, !1275, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !2037, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2052, !2053, !2054, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2096, !2102, !2103, !2104, !2105, !2106, !2110, !2113, !2120, !2125, !2128, !2131, !2134, !2137, !2277, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2317, !2318, !2319, !2328, !2336, !2337, !2338, !2339, !2340, !2345, !2346, !2347, !2350, !2351, !2354, !2357, !2360, !2368, !2371, !2372, !2457, !2458, !2459, !2460, !2461, !2467, !2468, !2469, !2470, !2473, !2474, !2477, !2480, !2481, !2484, !2485, !2486, !2489, !2490, !2491, !2492, !2493, !2494, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2526, !2527, !2593, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2605, !2677, !2679, !2680, !2681, !2682, !2683, !2695, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2712, !2713, !2714}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !975, file: !620, line: 752, baseType: !978, size: 192)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !979, line: 56, size: 192, elements: !980)
!979 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!980 = !{!981, !982, !983, !984}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !978, file: !979, line: 57, baseType: !315, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !978, file: !979, line: 58, baseType: !315, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !978, file: !979, line: 59, baseType: !414, size: 32, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !978, file: !979, line: 61, baseType: !414, size: 32, offset: 160)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !975, file: !620, line: 754, baseType: !23, size: 32, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !975, file: !620, line: 767, baseType: !149, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !975, file: !620, line: 768, baseType: !988, size: 32, offset: 320)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !989, line: 113, baseType: !990)
!989 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !989, line: 111, size: 32, elements: !991)
!991 = !{!992}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !990, file: !989, line: 112, baseType: !216, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !975, file: !620, line: 770, baseType: !23, size: 32, offset: 352)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !975, file: !620, line: 771, baseType: !23, size: 32, offset: 384)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !975, file: !620, line: 774, baseType: !101, size: 32, offset: 416)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !975, file: !620, line: 775, baseType: !997, size: 128, offset: 448)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !998, line: 58, size: 128, elements: !999)
!998 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!999 = !{!1000, !1006, !1011, !1012}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !997, file: !998, line: 59, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1002, line: 60, size: 64, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1001, file: !1002, line: 61, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !998, line: 60, baseType: !1007, size: 32, offset: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !997, file: !998, line: 60, size: 32, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1007, file: !998, line: 61, baseType: !23, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1007, file: !998, line: 62, baseType: !216, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !997, file: !998, line: 65, baseType: !233, size: 16, offset: 96)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !997, file: !998, line: 65, baseType: !233, size: 16, offset: 112)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !975, file: !620, line: 776, baseType: !23, size: 32, offset: 576)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !975, file: !620, line: 777, baseType: !315, size: 64, offset: 640)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !975, file: !620, line: 778, baseType: !974, size: 64, offset: 704)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !975, file: !620, line: 787, baseType: !101, size: 32, offset: 768)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !975, file: !620, line: 788, baseType: !101, size: 32, offset: 800)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !975, file: !620, line: 790, baseType: !101, size: 32, offset: 832)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !975, file: !620, line: 792, baseType: !101, size: 32, offset: 864)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !975, file: !620, line: 793, baseType: !101, size: 32, offset: 896)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !975, file: !620, line: 794, baseType: !101, size: 32, offset: 928)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !975, file: !620, line: 795, baseType: !23, size: 32, offset: 960)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !975, file: !620, line: 797, baseType: !1024, size: 2048, offset: 1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !620, line: 551, size: 2048, elements: !1025)
!1025 = !{!1026, !1031, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1053, !1056, !1057, !1058}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1024, file: !620, line: 553, baseType: !1027, size: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !620, line: 411, size: 128, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1027, file: !620, line: 412, baseType: !315, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1027, file: !620, line: 413, baseType: !414, size: 32, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1024, file: !620, line: 554, baseType: !1032, size: 192, align: 64, offset: 128)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1033, line: 5, size: 192, align: 64, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1034 = !{!1035, !1036, !1038}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1032, file: !1033, line: 6, baseType: !315, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1032, file: !1033, line: 7, baseType: !1037, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1032, file: !1033, line: 8, baseType: !1037, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1024, file: !620, line: 555, baseType: !418, size: 64, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1024, file: !620, line: 556, baseType: !418, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1024, file: !620, line: 558, baseType: !167, size: 128, offset: 448)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1024, file: !620, line: 559, baseType: !23, size: 32, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1024, file: !620, line: 561, baseType: !418, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1024, file: !620, line: 562, baseType: !418, size: 64, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1024, file: !620, line: 563, baseType: !418, size: 64, offset: 768)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1024, file: !620, line: 564, baseType: !418, size: 64, offset: 832)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1024, file: !620, line: 565, baseType: !655, size: 64, offset: 896)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1024, file: !620, line: 566, baseType: !418, size: 64, offset: 960)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1024, file: !620, line: 568, baseType: !418, size: 64, offset: 1024)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1024, file: !620, line: 571, baseType: !101, size: 32, offset: 1088)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1024, file: !620, line: 572, baseType: !1052, size: 64, offset: 1152)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1024, file: !620, line: 574, baseType: !1054, size: 64, offset: 1216)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !620, line: 49, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1024, file: !620, line: 576, baseType: !1054, size: 64, offset: 1280)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1024, file: !620, line: 578, baseType: !315, size: 64, offset: 1344)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1024, file: !620, line: 588, baseType: !1059, size: 512, align: 512, offset: 1536)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !620, line: 497, size: 512, align: 512, elements: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1059, file: !620, line: 498, baseType: !418, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1059, file: !620, line: 499, baseType: !418, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1059, file: !620, line: 500, baseType: !418, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1059, file: !620, line: 501, baseType: !414, size: 32, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1059, file: !620, line: 502, baseType: !414, size: 32, offset: 224)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1059, file: !620, line: 503, baseType: !315, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1059, file: !620, line: 504, baseType: !315, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1059, file: !620, line: 505, baseType: !315, size: 64, offset: 384)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1059, file: !620, line: 506, baseType: !1070, size: 64, align: 64, offset: 448)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !620, line: 445, size: 64, align: 64, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1070, file: !620, line: 446, baseType: !23, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1070, file: !620, line: 447, baseType: !23, size: 32, offset: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !975, file: !620, line: 798, baseType: !1075, size: 384, offset: 3072)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !620, line: 592, size: 384, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082, !1083}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1075, file: !620, line: 593, baseType: !167, size: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1075, file: !620, line: 594, baseType: !315, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1075, file: !620, line: 595, baseType: !315, size: 64, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1075, file: !620, line: 596, baseType: !23, size: 32, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1075, file: !620, line: 597, baseType: !235, size: 16, offset: 288)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1075, file: !620, line: 598, baseType: !235, size: 16, offset: 304)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1075, file: !620, line: 600, baseType: !1084, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !975, file: !620, line: 799, baseType: !1086, size: 1792, offset: 3456)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !620, line: 610, size: 1792, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1175, !1176}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1086, file: !620, line: 611, baseType: !1032, size: 192, align: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1086, file: !620, line: 618, baseType: !418, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1086, file: !620, line: 619, baseType: !418, size: 64, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1086, file: !620, line: 620, baseType: !418, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1086, file: !620, line: 621, baseType: !418, size: 64, offset: 384)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1086, file: !620, line: 622, baseType: !418, size: 64, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1086, file: !620, line: 629, baseType: !655, size: 64, offset: 512)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1086, file: !620, line: 630, baseType: !418, size: 64, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1086, file: !620, line: 631, baseType: !23, size: 32, offset: 640)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1086, file: !620, line: 653, baseType: !23, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1086, file: !620, line: 654, baseType: !23, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1086, file: !620, line: 655, baseType: !23, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1086, file: !620, line: 656, baseType: !23, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1086, file: !620, line: 662, baseType: !1102, size: 512, offset: 704)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !41, line: 118, size: 512, elements: !1103)
!1103 = !{!1104, !1112, !1113, !1118, !1171, !1172, !1173, !1174}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1102, file: !41, line: 119, baseType: !1105, size: 256)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1106, line: 9, size: 256, elements: !1107)
!1106 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1105, file: !1106, line: 10, baseType: !1032, size: 192, align: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1105, file: !1106, line: 11, baseType: !1110, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1111, line: 29, baseType: !655)
!1111 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1102, file: !41, line: 120, baseType: !1110, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1102, file: !41, line: 121, baseType: !1114, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!40, !1117}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1102, file: !41, line: 122, baseType: !1119, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !41, line: 159, size: 512, align: 512, elements: !1121)
!1121 = !{!1122, !1145, !1146, !1149, !1154, !1155, !1166, !1170}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1120, file: !41, line: 160, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !41, line: 215, size: 4608, align: 512, elements: !1125)
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1124, file: !41, line: 216, baseType: !658, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1124, file: !41, line: 217, baseType: !23, size: 32, offset: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1124, file: !41, line: 218, baseType: !23, size: 32, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1124, file: !41, line: 219, baseType: !23, size: 32, offset: 96)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1124, file: !41, line: 220, baseType: !23, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1124, file: !41, line: 221, baseType: !23, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1124, file: !41, line: 222, baseType: !23, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1124, file: !41, line: 223, baseType: !23, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1124, file: !41, line: 224, baseType: !23, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1124, file: !41, line: 226, baseType: !23, size: 32, offset: 160)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1124, file: !41, line: 227, baseType: !235, size: 16, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1124, file: !41, line: 228, baseType: !235, size: 16, offset: 208)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1124, file: !41, line: 229, baseType: !23, size: 32, offset: 224)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1124, file: !41, line: 235, baseType: !1110, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1124, file: !41, line: 236, baseType: !1117, size: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1124, file: !41, line: 237, baseType: !1110, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1124, file: !41, line: 238, baseType: !1117, size: 64, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1124, file: !41, line: 239, baseType: !1144, size: 4096, align: 512, offset: 512)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1120, size: 4096, align: 512, elements: !10)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1120, file: !41, line: 161, baseType: !23, size: 32, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1120, file: !41, line: 162, baseType: !1147, size: 32, offset: 96)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !168, line: 32, baseType: !1148)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !299, line: 96, baseType: !101)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1120, file: !41, line: 163, baseType: !1150, size: 32, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !387, line: 274, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !387, line: 274, size: 32, elements: !1152)
!1152 = !{!1153}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1151, file: !387, line: 274, baseType: !391, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1120, file: !41, line: 164, baseType: !1117, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1120, file: !41, line: 165, baseType: !1156, size: 128, offset: 256)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1106, line: 14, size: 128, elements: !1157)
!1157 = !{!1158}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1156, file: !1106, line: 15, baseType: !1159, size: 128)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1033, line: 26, size: 128, elements: !1160)
!1160 = !{!1161, !1165}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1159, file: !1033, line: 27, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1033, line: 12, size: 64, elements: !1163)
!1163 = !{!1164}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1162, file: !1033, line: 13, baseType: !1037, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1159, file: !1033, line: 28, baseType: !1037, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1120, file: !41, line: 166, baseType: !1167, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!1110}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1120, file: !41, line: 167, baseType: !1110, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1102, file: !41, line: 123, baseType: !224, size: 8, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1102, file: !41, line: 124, baseType: !224, size: 8, offset: 456)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1102, file: !41, line: 125, baseType: !224, size: 8, offset: 464)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1102, file: !41, line: 126, baseType: !224, size: 8, offset: 472)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1086, file: !620, line: 671, baseType: !1102, size: 512, offset: 1216)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1086, file: !620, line: 679, baseType: !1177, size: 64, offset: 1728)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !975, file: !620, line: 800, baseType: !1179, size: 64, offset: 5248)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !620, line: 800, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !975, file: !620, line: 809, baseType: !1183, size: 64, offset: 5312)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !620, line: 70, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !975, file: !620, line: 825, baseType: !1186, size: 2048, align: 512, offset: 5632)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !620, line: 509, size: 2048, align: 512, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1186, file: !620, line: 511, baseType: !418, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1186, file: !620, line: 512, baseType: !418, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1186, file: !620, line: 513, baseType: !418, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1186, file: !620, line: 514, baseType: !418, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1186, file: !620, line: 515, baseType: !418, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1186, file: !620, line: 516, baseType: !418, size: 64, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1186, file: !620, line: 518, baseType: !418, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1186, file: !620, line: 519, baseType: !418, size: 64, offset: 448)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1186, file: !620, line: 520, baseType: !655, size: 64, offset: 512)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1186, file: !620, line: 522, baseType: !418, size: 64, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1186, file: !620, line: 523, baseType: !418, size: 64, offset: 640)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1186, file: !620, line: 524, baseType: !655, size: 64, offset: 704)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1186, file: !620, line: 526, baseType: !655, size: 64, offset: 768)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1186, file: !620, line: 527, baseType: !418, size: 64, offset: 832)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1186, file: !620, line: 529, baseType: !418, size: 64, offset: 896)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1186, file: !620, line: 530, baseType: !418, size: 64, offset: 960)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1186, file: !620, line: 531, baseType: !418, size: 64, offset: 1024)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1186, file: !620, line: 532, baseType: !418, size: 64, offset: 1088)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1186, file: !620, line: 533, baseType: !418, size: 64, offset: 1152)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1186, file: !620, line: 535, baseType: !418, size: 64, offset: 1216)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1186, file: !620, line: 536, baseType: !418, size: 64, offset: 1280)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1186, file: !620, line: 537, baseType: !418, size: 64, offset: 1344)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1186, file: !620, line: 538, baseType: !418, size: 64, offset: 1408)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1186, file: !620, line: 539, baseType: !418, size: 64, offset: 1472)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1186, file: !620, line: 540, baseType: !418, size: 64, offset: 1536)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1186, file: !620, line: 541, baseType: !418, size: 64, offset: 1600)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1186, file: !620, line: 542, baseType: !418, size: 64, offset: 1664)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1186, file: !620, line: 543, baseType: !418, size: 64, offset: 1728)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !975, file: !620, line: 833, baseType: !23, size: 32, offset: 7680)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !975, file: !620, line: 836, baseType: !23, size: 32, offset: 7712)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !975, file: !620, line: 837, baseType: !101, size: 32, offset: 7744)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !975, file: !620, line: 838, baseType: !1220, size: 64, offset: 7808)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1222)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1223, line: 19, baseType: !1224)
!1223 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1223, line: 19, size: 64, elements: !1225)
!1225 = !{!1226}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1224, file: !1223, line: 19, baseType: !1227, size: 64)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 64, elements: !1228)
!1228 = !{!1229}
!1229 = !DISubrange(count: 1)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !975, file: !620, line: 839, baseType: !1231, size: 64, offset: 7872)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !975, file: !620, line: 840, baseType: !1222, size: 64, offset: 7936)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !975, file: !620, line: 841, baseType: !149, size: 64, offset: 8000)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !975, file: !620, line: 843, baseType: !235, size: 16, offset: 8064)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !975, file: !620, line: 845, baseType: !235, size: 16, offset: 8080)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !975, file: !620, line: 848, baseType: !101, size: 32, offset: 8096)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !975, file: !620, line: 849, baseType: !1238, size: 32, offset: 8128)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !620, line: 718, size: 32, elements: !1239)
!1239 = !{!1240, !1247}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1238, file: !620, line: 724, baseType: !1241, size: 32)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1238, file: !620, line: 719, size: 32, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1241, file: !620, line: 720, baseType: !224, size: 8)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1241, file: !620, line: 721, baseType: !224, size: 8, offset: 8)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1241, file: !620, line: 722, baseType: !224, size: 8, offset: 16)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1241, file: !620, line: 723, baseType: !224, size: 8, offset: 24)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1238, file: !620, line: 725, baseType: !414, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !975, file: !620, line: 850, baseType: !167, size: 128, offset: 8192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !975, file: !620, line: 851, baseType: !1250, size: 64, offset: 8320)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !620, line: 60, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !975, file: !620, line: 855, baseType: !315, size: 64, offset: 8384)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !975, file: !620, line: 856, baseType: !224, size: 8, offset: 8448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !975, file: !620, line: 857, baseType: !224, size: 8, offset: 8456)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !975, file: !620, line: 858, baseType: !101, size: 32, offset: 8480)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !975, file: !620, line: 859, baseType: !167, size: 128, offset: 8512)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !975, file: !620, line: 860, baseType: !101, size: 32, offset: 8640)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !975, file: !620, line: 861, baseType: !167, size: 128, offset: 8704)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !975, file: !620, line: 873, baseType: !1260, size: 256, offset: 8832)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !620, line: 376, size: 256, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1260, file: !620, line: 381, baseType: !315, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1260, file: !620, line: 384, baseType: !420, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1260, file: !620, line: 389, baseType: !420, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1260, file: !620, line: 392, baseType: !420, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !975, file: !620, line: 875, baseType: !167, size: 128, offset: 9088)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !975, file: !620, line: 877, baseType: !1268, size: 320, offset: 9216)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1269, line: 86, size: 320, elements: !1270)
!1269 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1270 = !{!1271, !1272, !1273}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1268, file: !1269, line: 87, baseType: !101, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1268, file: !1269, line: 88, baseType: !167, size: 128, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1268, file: !1269, line: 89, baseType: !167, size: 128, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !975, file: !620, line: 878, baseType: !1032, size: 192, align: 64, offset: 9536)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !975, file: !620, line: 881, baseType: !1276, size: 64, offset: 9728)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !717, line: 733, size: 10240, elements: !1278)
!1278 = !{!1279, !1951}
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1277, file: !717, line: 734, baseType: !1280, size: 10240)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1277, file: !717, line: 734, size: 10240, elements: !1281)
!1281 = !{!1282, !1286, !1299, !1815, !1816, !1817, !1818, !1819, !1820, !1827, !1828, !1829, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1868, !1870, !1873, !1920, !1921, !1922, !1925, !1926, !1927, !1930, !1931, !1932, !1938, !1939}
!1282 = !DIDerivedType(tag: DW_TAG_member, scope: !1280, file: !717, line: 739, baseType: !1283, size: 512, align: 512)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1280, file: !717, line: 739, size: 512, align: 512, elements: !1284)
!1284 = !{!1285}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1283, file: !717, line: 747, baseType: !216, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1280, file: !717, line: 750, baseType: !1287, size: 128, offset: 512)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1288, line: 218, size: 128, elements: !1289)
!1288 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1289 = !{!1290, !1297, !1298}
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !1288, line: 219, baseType: !1291, size: 32)
!1291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !1288, line: 219, size: 32, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1291, file: !1288, line: 220, baseType: !196, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1291, file: !1288, line: 221, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1288, line: 197, baseType: !1296)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1288, line: 197, elements: !549)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1287, file: !1288, line: 223, baseType: !23, size: 32, offset: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1287, file: !1288, line: 224, baseType: !149, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1280, file: !717, line: 752, baseType: !1300, size: 64, offset: 640)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!315, !1303, !315, !315, !315, !315}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !30, line: 994, size: 1856, align: 64, elements: !1305)
!1305 = !{!1306, !1312, !1313, !1315, !1316, !1317, !1318, !1319, !1371, !1566, !1575, !1576, !1577, !1805, !1806, !1807, !1808, !1810, !1811, !1814}
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !30, line: 995, baseType: !1307, size: 128)
!1307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !30, line: 995, size: 128, elements: !1308)
!1308 = !{!1309, !1310, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1307, file: !30, line: 996, baseType: !1001, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1307, file: !30, line: 997, baseType: !959, size: 128, align: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1307, file: !30, line: 998, baseType: !23, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1304, file: !30, line: 1005, baseType: !196, size: 32, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1304, file: !30, line: 1006, baseType: !1314, size: 32, offset: 160)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !168, line: 156, baseType: !23)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1304, file: !30, line: 1007, baseType: !649, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1304, file: !30, line: 1008, baseType: !645, size: 256, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1304, file: !30, line: 1009, baseType: !506, size: 64, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1304, file: !30, line: 1010, baseType: !23, size: 32, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1304, file: !30, line: 1011, baseType: !1320, size: 256, offset: 640)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !30, line: 948, size: 256, elements: !1321)
!1321 = !{!1322, !1343, !1367, !1368, !1369, !1370}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1320, file: !30, line: 949, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1324, line: 34, baseType: !1325)
!1324 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1324, line: 25, size: 64, elements: !1326)
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1325, file: !1324, line: 26, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1329, line: 27, baseType: !1330)
!1329 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1329, line: 13, size: 64, elements: !1331)
!1331 = !{!1332, !1342}
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1330, file: !1329, line: 14, baseType: !1333, size: 32)
!1333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1330, file: !1329, line: 14, size: 32, elements: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1333, file: !1329, line: 15, baseType: !216, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1329, line: 16, baseType: !1337, size: 32)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1333, file: !1329, line: 16, size: 32, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1337, file: !1329, line: 18, baseType: !224, size: 8)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1337, file: !1329, line: 19, baseType: !1341, size: 24, offset: 8)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 24, elements: !266)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1330, file: !1329, line: 26, baseType: !208, size: 32, offset: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1320, file: !30, line: 950, baseType: !1344, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1354, !1355, !1356, !1357}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1345, file: !46, line: 61, baseType: !988, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1345, file: !46, line: 62, baseType: !23, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1345, file: !46, line: 63, baseType: !196, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1345, file: !46, line: 65, baseType: !1351, size: 256, offset: 128)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 256, elements: !1352)
!1352 = !{!1353}
!1353 = !DISubrange(count: 4)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1345, file: !46, line: 66, baseType: !537, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1345, file: !46, line: 68, baseType: !952, size: 192, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1345, file: !46, line: 69, baseType: !959, size: 128, align: 64, offset: 640)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1345, file: !46, line: 70, baseType: !1358, offset: 768)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, elements: !1365)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1359, file: !46, line: 55, baseType: !101, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1359, file: !46, line: 56, baseType: !1363, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !46, line: 56, flags: DIFlagFwdDecl)
!1365 = !{!1366}
!1366 = !DISubrange(count: -1)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1320, file: !30, line: 951, baseType: !45, size: 32, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1320, file: !30, line: 952, baseType: !351, size: 32, offset: 160)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1320, file: !30, line: 952, baseType: !351, size: 32, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1320, file: !30, line: 953, baseType: !101, size: 32, offset: 224)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1304, file: !30, line: 1012, baseType: !1372, size: 64, offset: 896)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1375, line: 110, size: 1472, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1393, !1394, !1395, !1396, !1397, !1398, !1511, !1512, !1513, !1514, !1515, !1546, !1549, !1553, !1561}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1374, file: !1375, line: 111, baseType: !649, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1374, file: !1375, line: 112, baseType: !351, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1374, file: !1375, line: 113, baseType: !360, size: 32, offset: 96)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1374, file: !1375, line: 114, baseType: !351, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1374, file: !1375, line: 115, baseType: !360, size: 32, offset: 160)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1374, file: !1375, line: 116, baseType: !351, size: 32, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1374, file: !1375, line: 117, baseType: !360, size: 32, offset: 224)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1374, file: !1375, line: 118, baseType: !351, size: 32, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1374, file: !1375, line: 119, baseType: !360, size: 32, offset: 288)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1374, file: !1375, line: 120, baseType: !23, size: 32, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1374, file: !1375, line: 121, baseType: !1388, size: 64, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1389, line: 24, baseType: !1390)
!1389 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1389, line: 24, size: 64, elements: !1391)
!1391 = !{!1392}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1390, file: !1389, line: 24, baseType: !418, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1374, file: !1375, line: 122, baseType: !1388, size: 64, offset: 448)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1374, file: !1375, line: 123, baseType: !1388, size: 64, offset: 512)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1374, file: !1375, line: 124, baseType: !1388, size: 64, offset: 576)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1374, file: !1375, line: 125, baseType: !1388, size: 64, offset: 640)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1374, file: !1375, line: 127, baseType: !159, size: 8, offset: 704)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1374, file: !1375, line: 129, baseType: !1399, size: 64, offset: 768)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1401, line: 195, size: 1728, elements: !1402)
!1401 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1402 = !{!1403, !1404, !1409, !1414, !1415, !1418, !1419, !1424, !1425, !1426, !1427, !1430, !1431, !1432, !1434, !1435, !1475, !1496}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1400, file: !1401, line: 196, baseType: !988, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1400, file: !1401, line: 197, baseType: !1405, size: 32, offset: 32)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1401, line: 28, baseType: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !168, line: 104, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !225, line: 20, baseType: !1408)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !227, line: 26, baseType: !101)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !1401, line: 198, baseType: !1410, size: 192, offset: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !1401, line: 198, size: 192, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1410, file: !1401, line: 199, baseType: !167, size: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1410, file: !1401, line: 200, baseType: !1032, size: 192, align: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1400, file: !1401, line: 205, baseType: !859, size: 320, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1400, file: !1401, line: 206, baseType: !1416, size: 64, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1401, line: 206, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1400, file: !1401, line: 207, baseType: !149, size: 64, offset: 640)
!1419 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !1401, line: 208, baseType: !1420, size: 64, offset: 704)
!1420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !1401, line: 208, size: 64, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1420, file: !1401, line: 209, baseType: !698, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1420, file: !1401, line: 210, baseType: !698, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1400, file: !1401, line: 212, baseType: !698, size: 64, offset: 768)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1400, file: !1401, line: 213, baseType: !351, size: 32, offset: 832)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1400, file: !1401, line: 214, baseType: !360, size: 32, offset: 864)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1400, file: !1401, line: 215, baseType: !1428, size: 32, offset: 896)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1401, line: 31, baseType: !1429)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !168, line: 110, baseType: !414)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1400, file: !1401, line: 216, baseType: !235, size: 16, offset: 928)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1400, file: !1401, line: 217, baseType: !235, size: 16, offset: 944)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1400, file: !1401, line: 221, baseType: !1433, size: 16, offset: 960)
!1433 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1400, file: !1401, line: 228, baseType: !315, size: 64, offset: 1024)
!1435 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !1401, line: 245, baseType: !1436, size: 320, offset: 1088)
!1436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !1401, line: 245, size: 320, elements: !1437)
!1437 = !{!1438, !1467}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1436, file: !1401, line: 246, baseType: !1439, size: 320)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1401, line: 114, size: 320, elements: !1440)
!1440 = !{!1441, !1442, !1454, !1457, !1466}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1439, file: !1401, line: 116, baseType: !315, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1439, file: !1401, line: 117, baseType: !1443, size: 64, offset: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1439, file: !1401, line: 117, size: 64, elements: !1444)
!1444 = !{!1445, !1453}
!1445 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1401, line: 118, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1443, file: !1401, line: 118, size: 64, elements: !1447)
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1446, file: !1401, line: 120, baseType: !233, size: 16)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1446, file: !1401, line: 121, baseType: !1450, size: 48, offset: 16)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1451)
!1451 = !{!1452}
!1452 = !DISubrange(count: 6)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1443, file: !1401, line: 127, baseType: !315, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1439, file: !1401, line: 129, baseType: !1455, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1401, line: 102, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1439, file: !1401, line: 130, baseType: !1458, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1401, line: 108, size: 192, elements: !1460)
!1460 = !{!1461, !1462, !1463}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1459, file: !1401, line: 109, baseType: !959, size: 128, align: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1459, file: !1401, line: 110, baseType: !988, size: 32, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1459, file: !1401, line: 111, baseType: !1464, size: 8, offset: 160)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !168, line: 35, baseType: !1465)
!1465 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1439, file: !1401, line: 131, baseType: !185, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, scope: !1436, file: !1401, line: 247, baseType: !1468, size: 320)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1436, file: !1401, line: 247, size: 320, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1468, file: !1401, line: 248, baseType: !315, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1468, file: !1401, line: 249, baseType: !315, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1468, file: !1401, line: 250, baseType: !1455, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1468, file: !1401, line: 251, baseType: !1458, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1468, file: !1401, line: 252, baseType: !265, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !1401, line: 260, baseType: !1476, size: 256, offset: 1408)
!1476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !1401, line: 260, size: 256, elements: !1477)
!1477 = !{!1478, !1484}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1476, file: !1401, line: 261, baseType: !1479, size: 256)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1401, line: 134, size: 256, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1479, file: !1401, line: 135, baseType: !149, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1479, file: !1401, line: 136, baseType: !1483, size: 256)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !1352)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1401, line: 262, baseType: !1485, size: 256)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1476, file: !1401, line: 262, size: 256, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1485, file: !1401, line: 264, baseType: !167, size: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1485, file: !1401, line: 265, baseType: !1489, size: 128, offset: 128)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1490, line: 22, size: 128, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1491 = !{!1492, !1495}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1489, file: !1490, line: 23, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1490, line: 23, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1489, file: !1490, line: 24, baseType: !315, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1400, file: !1401, line: 280, baseType: !1497, size: 64, offset: 1664)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1401, line: 176, size: 192, elements: !1499)
!1499 = !{!1500, !1509, !1510}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1498, file: !1401, line: 177, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1401, line: 171, baseType: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!101, !1399, !1505, !1507, !1399}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1456)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1479)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1498, file: !1401, line: 178, baseType: !1399, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1498, file: !1401, line: 179, baseType: !1455, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1374, file: !1375, line: 130, baseType: !1399, size: 64, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1374, file: !1375, line: 131, baseType: !1399, size: 64, offset: 896)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1374, file: !1375, line: 132, baseType: !1399, size: 64, offset: 960)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1374, file: !1375, line: 135, baseType: !149, size: 64, offset: 1024)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1374, file: !1375, line: 137, baseType: !1516, size: 64, offset: 1088)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1518, line: 14, size: 1088, elements: !1519)
!1518 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1519 = !{!1520, !1521, !1530, !1531, !1532, !1533, !1534, !1535}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1517, file: !1518, line: 15, baseType: !988, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1517, file: !1518, line: 17, baseType: !1522, size: 320, offset: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1523, line: 22, size: 320, elements: !1524)
!1523 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1524 = !{!1525, !1526, !1527, !1528}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1522, file: !1523, line: 23, baseType: !658, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1522, file: !1523, line: 24, baseType: !655, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1522, file: !1523, line: 26, baseType: !167, size: 128, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1522, file: !1523, line: 28, baseType: !1529, size: 64, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1517, file: !1518, line: 19, baseType: !315, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1517, file: !1518, line: 20, baseType: !649, size: 64, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1517, file: !1518, line: 23, baseType: !541, size: 128, offset: 512)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1517, file: !1518, line: 24, baseType: !351, size: 32, offset: 640)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1517, file: !1518, line: 29, baseType: !649, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1517, file: !1518, line: 36, baseType: !1536, size: 320, offset: 768)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1537, line: 15, size: 320, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1536, file: !1537, line: 16, baseType: !658, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1536, file: !1537, line: 18, baseType: !101, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1536, file: !1537, line: 19, baseType: !101, size: 32, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1536, file: !1537, line: 20, baseType: !101, size: 32, offset: 96)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1536, file: !1537, line: 21, baseType: !101, size: 32, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1536, file: !1537, line: 22, baseType: !315, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1536, file: !1537, line: 23, baseType: !315, size: 64, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1374, file: !1375, line: 138, baseType: !1547, size: 64, offset: 1152)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !352, line: 18, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1374, file: !1375, line: 139, baseType: !1550, size: 64, offset: 1216)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1552, line: 16, flags: DIFlagFwdDecl)
!1552 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1374, file: !1375, line: 140, baseType: !1554, size: 64, offset: 1280)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1375, line: 25, size: 64, elements: !1556)
!1556 = !{!1557, !1558, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1555, file: !1375, line: 26, baseType: !216, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1555, file: !1375, line: 27, baseType: !101, size: 32, offset: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1555, file: !1375, line: 28, baseType: !1560, offset: 64)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, elements: !1365)
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !1375, line: 142, baseType: !1562, size: 128, offset: 1344)
!1562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !1375, line: 142, size: 128, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1562, file: !1375, line: 143, baseType: !101, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1562, file: !1375, line: 144, baseType: !959, size: 128, align: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1304, file: !30, line: 1013, baseType: !1567, size: 256, offset: 960)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !30, line: 970, size: 256, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1567, file: !30, line: 971, baseType: !315, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1567, file: !30, line: 972, baseType: !23, size: 32, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1567, file: !30, line: 973, baseType: !23, size: 32, offset: 96)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1567, file: !30, line: 974, baseType: !23, size: 32, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1567, file: !30, line: 975, baseType: !23, size: 32, offset: 160)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1567, file: !30, line: 976, baseType: !506, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1304, file: !30, line: 1014, baseType: !771, size: 128, offset: 1216)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1304, file: !30, line: 1015, baseType: !345, size: 64, offset: 1344)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1304, file: !30, line: 1016, baseType: !1578, size: 64, offset: 1408)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1580)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !30, line: 1914, size: 2112, elements: !1581)
!1581 = !{!1582, !1583, !1587, !1592, !1596, !1624, !1625, !1631, !1644, !1661, !1665, !1666, !1727, !1728, !1732, !1737, !1738, !1742, !1746, !1752, !1753, !1757, !1758, !1764, !1768, !1772, !1778, !1782, !1786, !1790, !1794, !1795, !1801}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1580, file: !30, line: 1915, baseType: !162, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1580, file: !30, line: 1916, baseType: !1584, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!506, !1303, !506, !101}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1580, file: !30, line: 1917, baseType: !1588, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!297, !1303, !265, !312, !1591}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1580, file: !30, line: 1918, baseType: !1593, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!297, !1303, !185, !312, !1591}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1580, file: !30, line: 1919, baseType: !1597, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!297, !1600, !1622}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !30, line: 373, size: 384, elements: !1602)
!1602 = !{!1603, !1604, !1605, !1609, !1610, !1611, !1612}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1601, file: !30, line: 374, baseType: !1303, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1601, file: !30, line: 375, baseType: !506, size: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1601, file: !30, line: 376, baseType: !1606, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !1600, !301}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1601, file: !30, line: 377, baseType: !149, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1601, file: !30, line: 378, baseType: !101, size: 32, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1601, file: !30, line: 379, baseType: !233, size: 16, offset: 288)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !30, line: 380, baseType: !1613, size: 64, offset: 320)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !30, line: 380, size: 64, elements: !1614)
!1614 = !{!1615, !1618}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1613, file: !30, line: 386, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !30, line: 386, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1613, file: !30, line: 395, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!297, !149}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !30, line: 69, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1580, file: !30, line: 1920, baseType: !1597, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1580, file: !30, line: 1921, baseType: !1626, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!101, !1600, !1629, !23}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !30, line: 53, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1580, file: !30, line: 1923, baseType: !1632, size: 64, offset: 448)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!101, !1303, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !30, line: 1858, size: 128, elements: !1637)
!1637 = !{!1638, !1643}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1636, file: !30, line: 1859, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !30, line: 1855, baseType: !1640)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1464, !1635, !185, !101, !506, !418, !23}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1636, file: !30, line: 1860, baseType: !506, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1580, file: !30, line: 1924, baseType: !1645, size: 64, offset: 512)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1648, !1303, !1650}
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1649, line: 59, baseType: !23)
!1649 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1652, line: 37, size: 128, elements: !1653)
!1652 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1653 = !{!1654, !1660}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1651, file: !1652, line: 38, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1652, line: 31, baseType: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !1303, !1659, !1650}
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1651, file: !1652, line: 39, baseType: !1648, size: 32, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1580, file: !30, line: 1925, baseType: !1662, size: 64, offset: 576)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!301, !1303, !23, !315}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1580, file: !30, line: 1926, baseType: !1662, size: 64, offset: 640)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1580, file: !30, line: 1927, baseType: !1667, size: 64, offset: 704)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!101, !1303, !1670}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !717, line: 625, size: 1344, elements: !1672)
!1672 = !{!1673, !1682, !1683, !1691, !1698, !1699, !1704, !1705, !1710, !1711, !1714, !1718, !1719, !1720, !1721, !1722, !1725}
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !717, line: 628, baseType: !1674, size: 128)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !717, line: 628, size: 128, elements: !1675)
!1675 = !{!1676, !1681}
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !717, line: 629, baseType: !1677, size: 128)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !717, line: 629, size: 128, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1677, file: !717, line: 631, baseType: !315, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1677, file: !717, line: 632, baseType: !315, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1674, file: !717, line: 635, baseType: !959, size: 128, align: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1671, file: !717, line: 639, baseType: !1276, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1671, file: !717, line: 640, baseType: !1684, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1685, line: 297, baseType: !1686)
!1685 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1685, line: 297, size: 64, elements: !1687)
!1687 = !{!1688}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1686, file: !1685, line: 297, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1690, line: 19, baseType: !315)
!1690 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1671, file: !717, line: 646, baseType: !1692, size: 64, offset: 256)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1671, file: !717, line: 646, size: 64, elements: !1693)
!1693 = !{!1694, !1697}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1692, file: !717, line: 647, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1696)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !717, line: 542, baseType: !315)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1692, file: !717, line: 648, baseType: !1696, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1671, file: !717, line: 666, baseType: !101, size: 32, offset: 320)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1671, file: !717, line: 667, baseType: !1700, size: 64, offset: 384)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !717, line: 579, size: 320, elements: !1702)
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1701, file: !717, line: 580, baseType: !859, size: 320)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1671, file: !717, line: 670, baseType: !1464, size: 8, offset: 448)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1671, file: !717, line: 681, baseType: !1706, size: 256, offset: 512)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1671, file: !717, line: 678, size: 256, elements: !1707)
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1706, file: !717, line: 679, baseType: !1032, size: 192, align: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1706, file: !717, line: 680, baseType: !315, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1671, file: !717, line: 689, baseType: !167, size: 128, offset: 768)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1671, file: !717, line: 691, baseType: !1712, size: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !717, line: 691, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1671, file: !717, line: 694, baseType: !1715, size: 64, offset: 960)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !717, line: 694, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1671, file: !717, line: 697, baseType: !315, size: 64, offset: 1024)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1671, file: !717, line: 699, baseType: !1303, size: 64, offset: 1088)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1671, file: !717, line: 700, baseType: !149, size: 64, offset: 1152)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1671, file: !717, line: 711, baseType: !649, size: 64, offset: 1216)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1671, file: !717, line: 717, baseType: !1723, size: 64, offset: 1280)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !620, line: 54, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1671, file: !717, line: 722, baseType: !1726, offset: 1344)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !717, line: 570, elements: !549)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1580, file: !30, line: 1928, baseType: !315, size: 64, offset: 768)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1580, file: !30, line: 1929, baseType: !1729, size: 64, offset: 832)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!101, !345, !1303}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1580, file: !30, line: 1930, baseType: !1733, size: 64, offset: 896)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!101, !1303, !1736}
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !30, line: 1061, baseType: !149)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1580, file: !30, line: 1931, baseType: !1729, size: 64, offset: 960)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1580, file: !30, line: 1932, baseType: !1739, size: 64, offset: 1024)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!101, !1303, !506, !506, !101}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1580, file: !30, line: 1933, baseType: !1743, size: 64, offset: 1088)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!101, !101, !1303, !101}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1580, file: !30, line: 1934, baseType: !1747, size: 64, offset: 1152)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!101, !1303, !101, !1750}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !30, line: 1063, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1580, file: !30, line: 1935, baseType: !1300, size: 64, offset: 1216)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1580, file: !30, line: 1936, baseType: !1754, size: 64, offset: 1280)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!101, !101}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1580, file: !30, line: 1937, baseType: !1747, size: 64, offset: 1344)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1580, file: !30, line: 1938, baseType: !1759, size: 64, offset: 1408)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!297, !1762, !1303, !1591, !312, !23}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !620, line: 59, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1580, file: !30, line: 1939, baseType: !1765, size: 64, offset: 1472)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!297, !1303, !1591, !1762, !312, !23}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1580, file: !30, line: 1940, baseType: !1769, size: 64, offset: 1536)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !1303}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1580, file: !30, line: 1941, baseType: !1773, size: 64, offset: 1600)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!101, !1303, !101, !1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1580, file: !30, line: 1942, baseType: !1779, size: 64, offset: 1664)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!301, !1303, !101, !506, !506}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1580, file: !30, line: 1944, baseType: !1783, size: 64, offset: 1728)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !618, !1303}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1580, file: !30, line: 1948, baseType: !1787, size: 64, offset: 1792)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!297, !1303, !506, !1303, !506, !312, !23}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1580, file: !30, line: 1950, baseType: !1791, size: 64, offset: 1856)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!506, !1303, !506, !1303, !506, !506, !23}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1580, file: !30, line: 1953, baseType: !1739, size: 64, offset: 1920)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1580, file: !30, line: 1954, baseType: !1796, size: 64, offset: 1984)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!101, !1799, !23}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !30, line: 1911, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1580, file: !30, line: 1955, baseType: !1802, size: 64, offset: 2048)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!101, !1799, !1629, !23}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1304, file: !30, line: 1018, baseType: !418, size: 64, offset: 1472)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1304, file: !30, line: 1020, baseType: !149, size: 64, offset: 1536)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1304, file: !30, line: 1023, baseType: !149, size: 64, offset: 1600)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1304, file: !30, line: 1027, baseType: !1809, size: 64, offset: 1664)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1304, file: !30, line: 1029, baseType: !341, size: 64, offset: 1728)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1304, file: !30, line: 1030, baseType: !1812, size: 32, offset: 1792)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1813, line: 8, baseType: !414)
!1813 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1304, file: !30, line: 1031, baseType: !1812, size: 32, offset: 1824)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1280, file: !717, line: 756, baseType: !315, size: 64, offset: 704)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1280, file: !717, line: 757, baseType: !315, size: 64, offset: 768)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1280, file: !717, line: 760, baseType: !315, size: 64, offset: 832)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1280, file: !717, line: 761, baseType: !315, size: 64, offset: 896)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1280, file: !717, line: 763, baseType: !315, size: 64, offset: 960)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1280, file: !717, line: 764, baseType: !1821, size: 64, offset: 1024)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1685, line: 299, baseType: !1823)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1685, line: 299, size: 64, elements: !1824)
!1824 = !{!1825}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1823, file: !1685, line: 299, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1690, line: 18, baseType: !315)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1280, file: !717, line: 773, baseType: !216, size: 32, offset: 1088)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1280, file: !717, line: 785, baseType: !216, size: 32, offset: 1120)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1280, file: !717, line: 795, baseType: !1830, size: 64, offset: 1152)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !717, line: 726, size: 128, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1831, file: !717, line: 727, baseType: !418, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1831, file: !717, line: 728, baseType: !101, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1280, file: !717, line: 801, baseType: !315, size: 64, offset: 1216)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1280, file: !717, line: 804, baseType: !649, size: 64, offset: 1280)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1280, file: !717, line: 806, baseType: !101, size: 32, offset: 1344)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1280, file: !717, line: 808, baseType: !196, size: 32, offset: 1376)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1280, file: !717, line: 823, baseType: !859, size: 320, offset: 1408)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1280, file: !717, line: 825, baseType: !167, size: 128, offset: 1728)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1280, file: !717, line: 845, baseType: !101, size: 32, offset: 1856)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1280, file: !717, line: 849, baseType: !315, size: 64, offset: 1920)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1280, file: !717, line: 850, baseType: !315, size: 64, offset: 1984)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1280, file: !717, line: 852, baseType: !315, size: 64, offset: 2048)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1280, file: !717, line: 853, baseType: !315, size: 64, offset: 2112)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1280, file: !717, line: 854, baseType: !651, size: 64, offset: 2176)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1280, file: !717, line: 855, baseType: !315, size: 64, offset: 2240)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1280, file: !717, line: 856, baseType: !315, size: 64, offset: 2304)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1280, file: !717, line: 857, baseType: !315, size: 64, offset: 2368)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1280, file: !717, line: 858, baseType: !315, size: 64, offset: 2432)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1280, file: !717, line: 865, baseType: !391, size: 32, offset: 2496)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1280, file: !717, line: 867, baseType: !196, size: 32, offset: 2528)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1280, file: !717, line: 869, baseType: !315, size: 64, offset: 2560)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1280, file: !717, line: 869, baseType: !315, size: 64, offset: 2624)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1280, file: !717, line: 869, baseType: !315, size: 64, offset: 2688)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1280, file: !717, line: 869, baseType: !315, size: 64, offset: 2752)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1280, file: !717, line: 870, baseType: !315, size: 64, offset: 2816)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1280, file: !717, line: 870, baseType: !315, size: 64, offset: 2880)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1280, file: !717, line: 870, baseType: !315, size: 64, offset: 2944)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1280, file: !717, line: 871, baseType: !315, size: 64, offset: 3008)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1280, file: !717, line: 871, baseType: !315, size: 64, offset: 3072)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1280, file: !717, line: 871, baseType: !315, size: 64, offset: 3136)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1280, file: !717, line: 871, baseType: !315, size: 64, offset: 3200)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1280, file: !717, line: 873, baseType: !1865, size: 3328, offset: 3264)
!1865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 3328, elements: !1866)
!1866 = !{!1867}
!1867 = !DISubrange(count: 52)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1280, file: !717, line: 875, baseType: !1869, size: 1280, offset: 6592)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1522, size: 1280, elements: !1352)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1280, file: !717, line: 877, baseType: !1871, size: 64, offset: 7872)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !717, line: 877, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1280, file: !717, line: 880, baseType: !1874, size: 1088, offset: 7936)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1875, line: 72, baseType: !1876)
!1875 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1875, line: 23, size: 1088, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1882, !1885, !1886, !1887, !1888, !1915, !1916, !1917}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1876, file: !1875, line: 28, baseType: !418, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1876, file: !1875, line: 38, baseType: !651, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1876, file: !1875, line: 40, baseType: !315, size: 64, offset: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1876, file: !1875, line: 43, baseType: !859, size: 320, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1876, file: !1875, line: 44, baseType: !1883, size: 64, offset: 512)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1875, line: 44, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1876, file: !1875, line: 48, baseType: !315, size: 64, offset: 576)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1876, file: !1875, line: 59, baseType: !645, size: 256, offset: 640)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1876, file: !1875, line: 60, baseType: !149, size: 64, offset: 896)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1876, file: !1875, line: 61, baseType: !1889, size: 64, offset: 960)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1891)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1892, line: 13, size: 1216, elements: !1893)
!1892 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1899, !1900, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1891, file: !1892, line: 14, baseType: !149, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1891, file: !1892, line: 15, baseType: !315, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1891, file: !1892, line: 17, baseType: !315, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1891, file: !1892, line: 17, baseType: !315, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1891, file: !1892, line: 18, baseType: !315, size: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1891, file: !1892, line: 18, baseType: !315, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1891, file: !1892, line: 19, baseType: !1901, size: 64, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1891, file: !1892, line: 21, baseType: !301, size: 64, offset: 448)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1891, file: !1892, line: 23, baseType: !301, size: 64, offset: 512)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1891, file: !1892, line: 24, baseType: !301, size: 64, offset: 576)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1891, file: !1892, line: 25, baseType: !301, size: 64, offset: 640)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1891, file: !1892, line: 26, baseType: !301, size: 64, offset: 704)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1891, file: !1892, line: 27, baseType: !301, size: 64, offset: 768)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1891, file: !1892, line: 28, baseType: !301, size: 64, offset: 832)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1891, file: !1892, line: 29, baseType: !301, size: 64, offset: 896)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1891, file: !1892, line: 30, baseType: !301, size: 64, offset: 960)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1891, file: !1892, line: 31, baseType: !301, size: 64, offset: 1024)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1891, file: !1892, line: 32, baseType: !301, size: 64, offset: 1088)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1891, file: !1892, line: 33, baseType: !301, size: 64, offset: 1152)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1876, file: !1875, line: 63, baseType: !216, size: 32, offset: 1024)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1876, file: !1875, line: 69, baseType: !233, size: 16, offset: 1056)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1876, file: !1875, line: 70, baseType: !1918, size: 16, offset: 1072)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !225, line: 18, baseType: !1919)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !227, line: 23, baseType: !1433)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1280, file: !717, line: 882, baseType: !315, size: 64, offset: 9024)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1280, file: !717, line: 885, baseType: !196, size: 32, offset: 9088)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1280, file: !717, line: 886, baseType: !1923, size: 64, offset: 9152)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !717, line: 732, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1280, file: !717, line: 901, baseType: !1547, size: 64, offset: 9216)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1280, file: !717, line: 904, baseType: !1303, size: 64, offset: 9280)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1280, file: !717, line: 906, baseType: !1928, size: 64, offset: 9344)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !717, line: 906, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1280, file: !717, line: 930, baseType: !216, size: 32, offset: 9408)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1280, file: !717, line: 933, baseType: !216, size: 32, offset: 9440)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1280, file: !717, line: 935, baseType: !1933, size: 64, offset: 9472)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !60, line: 103, size: 64, elements: !1934)
!1934 = !{!1935}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1933, file: !60, line: 104, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !60, line: 101, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1280, file: !717, line: 940, baseType: !649, size: 64, offset: 9536)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1280, file: !717, line: 942, baseType: !1940, size: 256, offset: 9600)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1941, line: 98, size: 256, elements: !1942)
!1941 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1942 = !{!1943, !1944, !1945}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1940, file: !1941, line: 99, baseType: !649, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1940, file: !1941, line: 100, baseType: !167, size: 128, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1940, file: !1941, line: 101, baseType: !1946, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1941, line: 21, baseType: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1277, file: !717, line: 986, baseType: !1952, offset: 10240)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, elements: !1365)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !975, file: !620, line: 882, baseType: !1276, size: 64, offset: 9792)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !975, file: !620, line: 884, baseType: !101, size: 32, offset: 9856)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !975, file: !620, line: 885, baseType: !101, size: 32, offset: 9888)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !975, file: !620, line: 886, baseType: !101, size: 32, offset: 9920)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !975, file: !620, line: 888, baseType: !101, size: 32, offset: 9952)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !975, file: !620, line: 890, baseType: !315, size: 64, offset: 9984)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !975, file: !620, line: 893, baseType: !23, size: 32, offset: 10048)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !975, file: !620, line: 896, baseType: !23, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !975, file: !620, line: 897, baseType: !23, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !975, file: !620, line: 898, baseType: !23, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !975, file: !620, line: 899, baseType: !23, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !975, file: !620, line: 919, baseType: !23, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !975, file: !620, line: 922, baseType: !23, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !975, file: !620, line: 923, baseType: !23, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !975, file: !620, line: 925, baseType: !23, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !975, file: !620, line: 939, baseType: !23, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !975, file: !620, line: 941, baseType: !23, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !975, file: !620, line: 944, baseType: !23, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !975, file: !620, line: 956, baseType: !23, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !975, file: !620, line: 962, baseType: !23, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !975, file: !620, line: 966, baseType: !23, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !975, file: !620, line: 969, baseType: !315, size: 64, offset: 10176)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !975, file: !620, line: 971, baseType: !1976, size: 448, offset: 10240)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !54, line: 25, size: 448, elements: !1977)
!1977 = !{!1978, !1979, !1984}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1976, file: !54, line: 26, baseType: !315, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1976, file: !54, line: 27, baseType: !1980, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!301, !1983}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, scope: !1976, file: !54, line: 28, baseType: !1985, size: 320, offset: 128)
!1985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1976, file: !54, line: 28, size: 320, elements: !1986)
!1986 = !{!1987, !1997, !2022}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1985, file: !54, line: 37, baseType: !1988, size: 320)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1985, file: !54, line: 30, size: 320, elements: !1989)
!1989 = !{!1990, !1992, !1993, !1994, !1995, !1996}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1988, file: !54, line: 31, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1988, file: !54, line: 32, baseType: !414, size: 32, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1988, file: !54, line: 33, baseType: !414, size: 32, offset: 96)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1988, file: !54, line: 34, baseType: !414, size: 32, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1988, file: !54, line: 35, baseType: !418, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1988, file: !54, line: 36, baseType: !1991, size: 64, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1985, file: !54, line: 47, baseType: !1998, size: 192)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1985, file: !54, line: 39, size: 192, elements: !1999)
!1999 = !{!2000, !2001, !2002, !2021}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1998, file: !54, line: 40, baseType: !1147, size: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1998, file: !54, line: 41, baseType: !53, size: 32, offset: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !1998, file: !54, line: 42, baseType: !2003, size: 64, offset: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1998, file: !54, line: 42, size: 64, elements: !2004)
!2004 = !{!2005, !2013}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2003, file: !54, line: 43, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2008, line: 7, size: 128, elements: !2009)
!2008 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2009 = !{!2010, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2007, file: !2008, line: 8, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !299, line: 93, baseType: !508)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2007, file: !2008, line: 9, baseType: !508, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2003, file: !54, line: 44, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2016, line: 7, size: 64, elements: !2017)
!2016 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2017 = !{!2018, !2020}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2015, file: !2016, line: 8, baseType: !2019, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2016, line: 5, baseType: !1407)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2015, file: !2016, line: 9, baseType: !1407, size: 32, offset: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1998, file: !54, line: 46, baseType: !418, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1985, file: !54, line: 55, baseType: !2023, size: 256)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1985, file: !54, line: 49, size: 256, elements: !2024)
!2024 = !{!2025, !2033, !2034, !2035, !2036}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2023, file: !54, line: 50, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2028, line: 36, size: 64, elements: !2029)
!2028 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2029 = !{!2030, !2031, !2032}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2027, file: !2028, line: 37, baseType: !101, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2027, file: !2028, line: 38, baseType: !1433, size: 16, offset: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2027, file: !2028, line: 39, baseType: !1433, size: 16, offset: 48)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2023, file: !54, line: 51, baseType: !101, size: 32, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2023, file: !54, line: 52, baseType: !101, size: 32, offset: 96)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2023, file: !54, line: 53, baseType: !315, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2023, file: !54, line: 54, baseType: !315, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !975, file: !620, line: 973, baseType: !2038, size: 32, offset: 10688)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !168, line: 27, baseType: !2039)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !299, line: 28, baseType: !101)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !975, file: !620, line: 974, baseType: !2038, size: 32, offset: 10720)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !975, file: !620, line: 978, baseType: !315, size: 64, offset: 10752)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !975, file: !620, line: 987, baseType: !974, size: 64, offset: 10816)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !975, file: !620, line: 990, baseType: !974, size: 64, offset: 10880)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !975, file: !620, line: 995, baseType: !167, size: 128, offset: 10944)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !975, file: !620, line: 996, baseType: !167, size: 128, offset: 11072)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !975, file: !620, line: 997, baseType: !974, size: 64, offset: 11200)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !975, file: !620, line: 1005, baseType: !167, size: 128, offset: 11264)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !975, file: !620, line: 1006, baseType: !167, size: 128, offset: 11392)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !975, file: !620, line: 1009, baseType: !1344, size: 64, offset: 11520)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !975, file: !620, line: 1010, baseType: !2051, size: 512, offset: 11584)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 512, elements: !1352)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !975, file: !620, line: 1011, baseType: !167, size: 128, offset: 12096)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !975, file: !620, line: 1012, baseType: !167, size: 128, offset: 12224)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !975, file: !620, line: 1014, baseType: !2055, size: 64, offset: 12352)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2057, line: 26, size: 256, elements: !2058)
!2057 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2058 = !{!2059, !2060}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2056, file: !2057, line: 27, baseType: !23, size: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2056, file: !2057, line: 28, baseType: !2061, size: 192, offset: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2062, line: 43, size: 192, elements: !2063)
!2062 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2061, file: !2062, line: 44, baseType: !658, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2061, file: !2062, line: 45, baseType: !167, size: 128, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !975, file: !620, line: 1017, baseType: !612, size: 64, offset: 12416)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !975, file: !620, line: 1020, baseType: !612, size: 64, offset: 12480)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !975, file: !620, line: 1023, baseType: !149, size: 64, offset: 12544)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !975, file: !620, line: 1025, baseType: !418, size: 64, offset: 12608)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !975, file: !620, line: 1026, baseType: !418, size: 64, offset: 12672)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !975, file: !620, line: 1031, baseType: !418, size: 64, offset: 12736)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !975, file: !620, line: 1032, baseType: !2073, size: 192, offset: 12800)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !620, line: 324, size: 192, elements: !2074)
!2074 = !{!2075, !2076, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2073, file: !620, line: 326, baseType: !418, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2073, file: !620, line: 327, baseType: !418, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2073, file: !620, line: 328, baseType: !658, size: 32, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !975, file: !620, line: 1041, baseType: !315, size: 64, offset: 12992)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !975, file: !620, line: 1042, baseType: !315, size: 64, offset: 13056)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !975, file: !620, line: 1045, baseType: !418, size: 64, offset: 13120)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !975, file: !620, line: 1048, baseType: !418, size: 64, offset: 13184)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !975, file: !620, line: 1051, baseType: !315, size: 64, offset: 13248)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !975, file: !620, line: 1052, baseType: !315, size: 64, offset: 13312)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !975, file: !620, line: 1055, baseType: !2085, size: 640, offset: 13376)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2086, line: 132, size: 640, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2087 = !{!2088, !2094, !2095}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2085, file: !2086, line: 133, baseType: !2089, size: 576)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2090, size: 576, elements: !266)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2086, line: 117, size: 192, elements: !2091)
!2091 = !{!2092, !2093}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2090, file: !2086, line: 118, baseType: !418, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2090, file: !2086, line: 119, baseType: !1156, size: 128, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2085, file: !2086, line: 134, baseType: !23, size: 32, offset: 576)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2085, file: !2086, line: 135, baseType: !23, size: 32, offset: 608)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !975, file: !620, line: 1058, baseType: !2097, size: 448, offset: 14016)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2086, line: 144, size: 448, elements: !2098)
!2098 = !{!2099, !2100, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2097, file: !2086, line: 145, baseType: !959, size: 128, align: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2097, file: !2086, line: 146, baseType: !645, size: 256, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2097, file: !2086, line: 147, baseType: !23, size: 32, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !975, file: !620, line: 1064, baseType: !1372, size: 64, offset: 14464)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !975, file: !620, line: 1067, baseType: !1372, size: 64, offset: 14528)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !975, file: !620, line: 1070, baseType: !1372, size: 64, offset: 14592)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !975, file: !620, line: 1074, baseType: !1399, size: 64, offset: 14656)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !975, file: !620, line: 1084, baseType: !2107, size: 128, offset: 14720)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2108)
!2108 = !{!2109}
!2109 = !DISubrange(count: 16)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !975, file: !620, line: 1086, baseType: !2111, size: 64, offset: 14848)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !620, line: 55, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !975, file: !620, line: 1089, baseType: !2114, size: 64, offset: 14912)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2115, line: 12, size: 64, elements: !2116)
!2115 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2116 = !{!2117}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2114, file: !2115, line: 13, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2115, line: 8, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !975, file: !620, line: 1090, baseType: !2121, size: 128, offset: 14976)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2122, line: 13, size: 128, elements: !2123)
!2122 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2123 = !{!2124}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2121, file: !2122, line: 14, baseType: !167, size: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !975, file: !620, line: 1097, baseType: !2126, size: 64, offset: 15104)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !620, line: 50, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !975, file: !620, line: 1100, baseType: !2129, size: 64, offset: 15168)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !620, line: 1100, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !975, file: !620, line: 1103, baseType: !2132, size: 64, offset: 15232)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !620, line: 53, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !975, file: !620, line: 1107, baseType: !2135, size: 64, offset: 15296)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !620, line: 56, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !975, file: !620, line: 1110, baseType: !2138, size: 64, offset: 15360)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2140, line: 93, size: 8768, elements: !2141)
!2140 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2191, !2200, !2201, !2203, !2204, !2205, !2208, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2246, !2247, !2254, !2264, !2267, !2268, !2271, !2272, !2273, !2274, !2275, !2276}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2139, file: !2140, line: 94, baseType: !988, size: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2139, file: !2140, line: 95, baseType: !216, size: 32, offset: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2139, file: !2140, line: 96, baseType: !101, size: 32, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2139, file: !2140, line: 97, baseType: !101, size: 32, offset: 96)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2139, file: !2140, line: 98, baseType: !167, size: 128, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2139, file: !2140, line: 100, baseType: !952, size: 192, offset: 256)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2139, file: !2140, line: 103, baseType: !974, size: 64, offset: 448)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2139, file: !2140, line: 106, baseType: !2150, size: 192, offset: 512)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1552, line: 32, size: 192, elements: !2151)
!2151 = !{!2152, !2153}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2150, file: !1552, line: 33, baseType: !167, size: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2150, file: !1552, line: 34, baseType: !2154, size: 64, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2155, line: 25, baseType: !2156)
!2155 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2155, line: 23, size: 64, elements: !2157)
!2157 = !{!2158}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2156, file: !2155, line: 24, baseType: !1227, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2139, file: !2140, line: 109, baseType: !537, size: 64, offset: 704)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2139, file: !2140, line: 112, baseType: !101, size: 32, offset: 768)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2139, file: !2140, line: 114, baseType: !101, size: 32, offset: 800)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2139, file: !2140, line: 115, baseType: !974, size: 64, offset: 832)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2139, file: !2140, line: 118, baseType: !101, size: 32, offset: 896)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2139, file: !2140, line: 119, baseType: !23, size: 32, offset: 928)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2139, file: !2140, line: 121, baseType: !2166, size: 64, offset: 960)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2140, line: 80, size: 448, elements: !2168)
!2168 = !{!2169, !2170, !2176}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2167, file: !2140, line: 81, baseType: !216, size: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2167, file: !2140, line: 82, baseType: !2171, size: 128, offset: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2140, line: 75, size: 128, elements: !2172)
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2171, file: !2140, line: 76, baseType: !974, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2171, file: !2140, line: 77, baseType: !2175, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2167, file: !2140, line: 83, baseType: !2056, size: 256, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2139, file: !2140, line: 132, baseType: !23, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2139, file: !2140, line: 133, baseType: !23, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2139, file: !2140, line: 138, baseType: !23, size: 32, offset: 1056)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2139, file: !2140, line: 139, baseType: !167, size: 128, offset: 1088)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2139, file: !2140, line: 142, baseType: !1102, size: 512, offset: 1216)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2139, file: !2140, line: 143, baseType: !1110, size: 64, offset: 1728)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2139, file: !2140, line: 150, baseType: !2184, size: 256, offset: 1792)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2185, size: 256, elements: !2189)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2140, line: 38, size: 128, elements: !2186)
!2186 = !{!2187, !2188}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2185, file: !2140, line: 39, baseType: !418, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2185, file: !2140, line: 40, baseType: !418, size: 64, offset: 64)
!2189 = !{!2190}
!2190 = !DISubrange(count: 2)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2139, file: !2140, line: 156, baseType: !2192, size: 192, offset: 2048)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2140, line: 66, size: 192, elements: !2193)
!2193 = !{!2194}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2192, file: !2140, line: 67, baseType: !2195, size: 192)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2140, line: 47, size: 192, elements: !2196)
!2196 = !{!2197, !2198, !2199}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2195, file: !2140, line: 48, baseType: !651, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2195, file: !2140, line: 49, baseType: !651, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2195, file: !2140, line: 50, baseType: !651, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2139, file: !2140, line: 160, baseType: !2085, size: 640, offset: 2240)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2139, file: !2140, line: 163, baseType: !2202, size: 256, offset: 2880)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1344, size: 256, elements: !1352)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2139, file: !2140, line: 169, baseType: !1344, size: 64, offset: 3136)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2139, file: !2140, line: 172, baseType: !101, size: 32, offset: 3200)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2139, file: !2140, line: 174, baseType: !2206, size: 64, offset: 3264)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2140, line: 174, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2139, file: !2140, line: 185, baseType: !2209, size: 64, offset: 3328)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !387, line: 860, baseType: !2210)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 853, size: 64, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2210, file: !387, line: 858, baseType: !386, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2210, file: !387, line: 859, baseType: !196, size: 32, offset: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2139, file: !2140, line: 186, baseType: !418, size: 64, offset: 3392)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2139, file: !2140, line: 186, baseType: !418, size: 64, offset: 3456)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2139, file: !2140, line: 186, baseType: !418, size: 64, offset: 3520)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2139, file: !2140, line: 186, baseType: !418, size: 64, offset: 3584)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2139, file: !2140, line: 187, baseType: !418, size: 64, offset: 3648)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2139, file: !2140, line: 188, baseType: !418, size: 64, offset: 3712)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2139, file: !2140, line: 189, baseType: !2073, size: 192, offset: 3776)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2139, file: !2140, line: 190, baseType: !315, size: 64, offset: 3968)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2139, file: !2140, line: 190, baseType: !315, size: 64, offset: 4032)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2139, file: !2140, line: 190, baseType: !315, size: 64, offset: 4096)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2139, file: !2140, line: 190, baseType: !315, size: 64, offset: 4160)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2139, file: !2140, line: 191, baseType: !315, size: 64, offset: 4224)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2139, file: !2140, line: 191, baseType: !315, size: 64, offset: 4288)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2139, file: !2140, line: 191, baseType: !315, size: 64, offset: 4352)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2139, file: !2140, line: 191, baseType: !315, size: 64, offset: 4416)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2139, file: !2140, line: 192, baseType: !315, size: 64, offset: 4480)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2139, file: !2140, line: 192, baseType: !315, size: 64, offset: 4544)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2139, file: !2140, line: 192, baseType: !315, size: 64, offset: 4608)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2139, file: !2140, line: 192, baseType: !315, size: 64, offset: 4672)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2139, file: !2140, line: 193, baseType: !315, size: 64, offset: 4736)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2139, file: !2140, line: 193, baseType: !315, size: 64, offset: 4800)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2139, file: !2140, line: 194, baseType: !2236, size: 448, offset: 4864)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2237, line: 12, size: 448, elements: !2238)
!2237 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2238 = !{!2239, !2240, !2241, !2242, !2243, !2244, !2245}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2236, file: !2237, line: 15, baseType: !418, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2236, file: !2237, line: 17, baseType: !418, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2236, file: !2237, line: 19, baseType: !418, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2236, file: !2237, line: 21, baseType: !418, size: 64, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2236, file: !2237, line: 29, baseType: !418, size: 64, offset: 256)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2236, file: !2237, line: 35, baseType: !418, size: 64, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2236, file: !2237, line: 44, baseType: !418, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2139, file: !2140, line: 202, baseType: !420, size: 64, offset: 5312)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2139, file: !2140, line: 213, baseType: !2248, size: 2048, offset: 5376)
!2248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2249, size: 2048, elements: !2108)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2250, line: 43, size: 128, elements: !2251)
!2250 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2251 = !{!2252, !2253}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2249, file: !2250, line: 44, baseType: !314, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2249, file: !2250, line: 45, baseType: !314, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2139, file: !2140, line: 216, baseType: !2255, size: 448, offset: 7424)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2140, line: 30, size: 448, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2260, !2261, !2262, !2263}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2255, file: !2140, line: 31, baseType: !101, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2255, file: !2140, line: 32, baseType: !301, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2255, file: !2140, line: 33, baseType: !315, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2255, file: !2140, line: 34, baseType: !418, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2255, file: !2140, line: 34, baseType: !418, size: 64, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2255, file: !2140, line: 35, baseType: !315, size: 64, offset: 320)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2255, file: !2140, line: 35, baseType: !315, size: 64, offset: 384)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2139, file: !2140, line: 219, baseType: !2265, size: 64, offset: 7872)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2140, line: 219, flags: DIFlagFwdDecl)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2139, file: !2140, line: 222, baseType: !23, size: 32, offset: 7936)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2139, file: !2140, line: 223, baseType: !2269, size: 64, offset: 8000)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2140, line: 223, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2139, file: !2140, line: 230, baseType: !1464, size: 8, offset: 8064)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2139, file: !2140, line: 231, baseType: !1433, size: 16, offset: 8080)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2139, file: !2140, line: 232, baseType: !1433, size: 16, offset: 8096)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2139, file: !2140, line: 234, baseType: !1276, size: 64, offset: 8128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2139, file: !2140, line: 237, baseType: !645, size: 256, offset: 8192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2139, file: !2140, line: 243, baseType: !859, size: 320, offset: 8448)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !975, file: !620, line: 1111, baseType: !2278, size: 64, offset: 15424)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2140, line: 20, size: 16640, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2284}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2279, file: !2140, line: 21, baseType: !196, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2279, file: !2140, line: 22, baseType: !988, size: 32, offset: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2279, file: !2140, line: 23, baseType: !952, size: 192, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2279, file: !2140, line: 24, baseType: !2285, size: 16384, offset: 256)
!2285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2286, size: 16384, elements: !270)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1552, line: 51, size: 256, elements: !2287)
!2287 = !{!2288}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2286, file: !1552, line: 52, baseType: !2289, size: 256)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1552, line: 37, size: 256, elements: !2290)
!2290 = !{!2291, !2298, !2299, !2305}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2289, file: !1552, line: 39, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2293, line: 83, baseType: !2294)
!2293 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2293, line: 82, baseType: !2296)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null, !101}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2289, file: !1552, line: 40, baseType: !315, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2289, file: !1552, line: 46, baseType: !2300, size: 64, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2293, line: 86, baseType: !2301)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2293, line: 85, baseType: !2303)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2289, file: !1552, line: 48, baseType: !2154, size: 64, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !975, file: !620, line: 1112, baseType: !2154, size: 64, offset: 15488)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !975, file: !620, line: 1113, baseType: !2154, size: 64, offset: 15552)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !975, file: !620, line: 1115, baseType: !2154, size: 64, offset: 15616)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !975, file: !620, line: 1116, baseType: !2150, size: 192, offset: 15680)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !975, file: !620, line: 1117, baseType: !315, size: 64, offset: 15872)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !975, file: !620, line: 1118, baseType: !312, size: 64, offset: 15936)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !975, file: !620, line: 1119, baseType: !23, size: 32, offset: 16000)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !975, file: !620, line: 1121, baseType: !962, size: 64, offset: 16064)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !975, file: !620, line: 1125, baseType: !2315, size: 64, offset: 16128)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !620, line: 43, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !975, file: !620, line: 1127, baseType: !351, size: 32, offset: 16192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !975, file: !620, line: 1128, baseType: !23, size: 32, offset: 16224)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !975, file: !620, line: 1130, baseType: !2320, size: 128, offset: 16256)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2321, line: 37, size: 128, elements: !2322)
!2321 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2322 = !{!2323, !2324, !2325}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2320, file: !2321, line: 38, baseType: !101, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2320, file: !2321, line: 39, baseType: !216, size: 32, offset: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2320, file: !2321, line: 40, baseType: !2326, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2321, line: 24, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !975, file: !620, line: 1131, baseType: !2329, size: 256, offset: 16384)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2330, line: 12, size: 256, elements: !2331)
!2330 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2331 = !{!2332, !2333, !2334, !2335}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2329, file: !2330, line: 13, baseType: !265, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2329, file: !2330, line: 14, baseType: !315, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2329, file: !2330, line: 15, baseType: !315, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2329, file: !2330, line: 16, baseType: !1464, size: 8, offset: 192)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !975, file: !620, line: 1134, baseType: !418, size: 64, offset: 16640)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !975, file: !620, line: 1135, baseType: !418, size: 64, offset: 16704)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !975, file: !620, line: 1138, baseType: !196, size: 32, offset: 16768)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !975, file: !620, line: 1141, baseType: !658, size: 32, offset: 16800)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !975, file: !620, line: 1143, baseType: !2341, size: 64, offset: 16832)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !620, line: 735, size: 64, elements: !2342)
!2342 = !{!2343}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2341, file: !620, line: 736, baseType: !2344, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !975, file: !620, line: 1147, baseType: !1159, size: 128, offset: 16896)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !975, file: !620, line: 1149, baseType: !974, size: 64, offset: 17024)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !975, file: !620, line: 1151, baseType: !2348, size: 64, offset: 17088)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !620, line: 1151, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !975, file: !620, line: 1188, baseType: !149, size: 64, offset: 17152)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !975, file: !620, line: 1191, baseType: !2352, size: 64, offset: 17216)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !620, line: 44, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !975, file: !620, line: 1194, baseType: !2355, size: 64, offset: 17280)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !620, line: 45, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !975, file: !620, line: 1197, baseType: !2358, size: 64, offset: 17344)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !620, line: 61, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !975, file: !620, line: 1199, baseType: !2361, size: 64, offset: 17408)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2363, line: 99, size: 128, elements: !2364)
!2363 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2364 = !{!2365, !2366, !2367}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2362, file: !2363, line: 100, baseType: !649, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2362, file: !2363, line: 101, baseType: !216, size: 32, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2362, file: !2363, line: 103, baseType: !235, size: 16, offset: 96)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !975, file: !620, line: 1202, baseType: !2369, size: 64, offset: 17472)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !620, line: 48, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !975, file: !620, line: 1205, baseType: !315, size: 64, offset: 17536)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !975, file: !620, line: 1206, baseType: !2373, size: 64, offset: 17600)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1552, line: 14, baseType: !2375)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1552, line: 12, size: 384, elements: !2376)
!2376 = !{!2377}
!2377 = !DIDerivedType(tag: DW_TAG_member, scope: !2375, file: !1552, line: 13, baseType: !2378, size: 384)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2375, file: !1552, line: 13, size: 384, elements: !2379)
!2379 = !{!2380, !2381, !2382, !2383}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2378, file: !1552, line: 13, baseType: !101, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2378, file: !1552, line: 13, baseType: !101, size: 32, offset: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2378, file: !1552, line: 13, baseType: !101, size: 32, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2378, file: !1552, line: 13, baseType: !2384, size: 256, offset: 128)
!2384 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2385, line: 37, size: 256, elements: !2386)
!2385 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2386 = !{!2387, !2392, !2405, !2411, !2420, !2446, !2451}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2384, file: !2385, line: 42, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2384, file: !2385, line: 39, size: 64, elements: !2389)
!2389 = !{!2390, !2391}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2388, file: !2385, line: 40, baseType: !2039, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2388, file: !2385, line: 41, baseType: !357, size: 32, offset: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2384, file: !2385, line: 50, baseType: !2393, size: 192)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2384, file: !2385, line: 45, size: 192, elements: !2394)
!2394 = !{!2395, !2397, !2398, !2404}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2393, file: !2385, line: 46, baseType: !2396, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !299, line: 95, baseType: !101)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2393, file: !2385, line: 47, baseType: !101, size: 32, offset: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2393, file: !2385, line: 48, baseType: !2399, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2385, line: 11, baseType: !2400)
!2400 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2385, line: 8, size: 64, elements: !2401)
!2401 = !{!2402, !2403}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2400, file: !2385, line: 9, baseType: !101, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2400, file: !2385, line: 10, baseType: !149, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2393, file: !2385, line: 49, baseType: !101, size: 32, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2384, file: !2385, line: 57, baseType: !2406, size: 128)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2384, file: !2385, line: 53, size: 128, elements: !2407)
!2407 = !{!2408, !2409, !2410}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2406, file: !2385, line: 54, baseType: !2039, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2406, file: !2385, line: 55, baseType: !357, size: 32, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2406, file: !2385, line: 56, baseType: !2399, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2384, file: !2385, line: 66, baseType: !2412, size: 256)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2384, file: !2385, line: 60, size: 256, elements: !2413)
!2413 = !{!2414, !2415, !2416, !2417, !2419}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2412, file: !2385, line: 61, baseType: !2039, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2412, file: !2385, line: 62, baseType: !357, size: 32, offset: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2412, file: !2385, line: 63, baseType: !101, size: 32, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2412, file: !2385, line: 64, baseType: !2418, size: 64, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !299, line: 94, baseType: !300)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2412, file: !2385, line: 65, baseType: !2418, size: 64, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2384, file: !2385, line: 105, baseType: !2421, size: 256)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2384, file: !2385, line: 69, size: 256, elements: !2422)
!2422 = !{!2423, !2424}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2421, file: !2385, line: 70, baseType: !149, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, scope: !2421, file: !2385, line: 79, baseType: !2425, size: 192, offset: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2421, file: !2385, line: 79, size: 192, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2435, !2440}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2425, file: !2385, line: 81, baseType: !101, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2425, file: !2385, line: 86, baseType: !1433, size: 16)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2425, file: !2385, line: 92, baseType: !2430, size: 192)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2425, file: !2385, line: 88, size: 192, elements: !2431)
!2431 = !{!2432, !2433, !2434}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2430, file: !2385, line: 89, baseType: !9, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2430, file: !2385, line: 90, baseType: !149, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2430, file: !2385, line: 91, baseType: !149, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2425, file: !2385, line: 97, baseType: !2436, size: 96)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2425, file: !2385, line: 94, size: 96, elements: !2437)
!2437 = !{!2438, !2439}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2436, file: !2385, line: 95, baseType: !9, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2436, file: !2385, line: 96, baseType: !415, size: 32, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2425, file: !2385, line: 103, baseType: !2441, size: 128)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2425, file: !2385, line: 99, size: 128, elements: !2442)
!2442 = !{!2443, !2444, !2445}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2441, file: !2385, line: 100, baseType: !315, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2441, file: !2385, line: 101, baseType: !415, size: 32, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2441, file: !2385, line: 102, baseType: !415, size: 32, offset: 96)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2384, file: !2385, line: 111, baseType: !2447, size: 128)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2384, file: !2385, line: 108, size: 128, elements: !2448)
!2448 = !{!2449, !2450}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2447, file: !2385, line: 109, baseType: !301, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2447, file: !2385, line: 110, baseType: !101, size: 32, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2384, file: !2385, line: 118, baseType: !2452, size: 128)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2384, file: !2385, line: 114, size: 128, elements: !2453)
!2453 = !{!2454, !2455, !2456}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2452, file: !2385, line: 115, baseType: !149, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2452, file: !2385, line: 116, baseType: !101, size: 32, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2452, file: !2385, line: 117, baseType: !23, size: 32, offset: 96)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !975, file: !620, line: 1208, baseType: !2236, size: 448, offset: 17664)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !975, file: !620, line: 1215, baseType: !418, size: 64, offset: 18112)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !975, file: !620, line: 1217, baseType: !418, size: 64, offset: 18176)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !975, file: !620, line: 1219, baseType: !418, size: 64, offset: 18240)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !975, file: !620, line: 1223, baseType: !2462, size: 64, offset: 18304)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2463, line: 99, baseType: !2464)
!2463 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2463, line: 99, size: 64, elements: !2465)
!2465 = !{!2466}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2464, file: !2463, line: 99, baseType: !1227, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !975, file: !620, line: 1225, baseType: !386, size: 32, offset: 18368)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !975, file: !620, line: 1226, baseType: !101, size: 32, offset: 18400)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !975, file: !620, line: 1227, baseType: !101, size: 32, offset: 18432)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !975, file: !620, line: 1231, baseType: !2471, size: 64, offset: 18496)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !620, line: 1231, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !975, file: !620, line: 1233, baseType: !167, size: 128, offset: 18560)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !975, file: !620, line: 1240, baseType: !2475, size: 64, offset: 18688)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !620, line: 62, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !975, file: !620, line: 1242, baseType: !2478, size: 64, offset: 18752)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !620, line: 1242, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !975, file: !620, line: 1244, baseType: !167, size: 128, offset: 18816)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !975, file: !620, line: 1245, baseType: !2482, size: 64, offset: 18944)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !620, line: 51, flags: DIFlagFwdDecl)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !975, file: !620, line: 1246, baseType: !645, size: 256, offset: 19008)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !975, file: !620, line: 1247, baseType: !23, size: 32, offset: 19264)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !975, file: !620, line: 1250, baseType: !2487, size: 64, offset: 19328)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !620, line: 57, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !975, file: !620, line: 1251, baseType: !645, size: 256, offset: 19392)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !975, file: !620, line: 1252, baseType: !167, size: 128, offset: 19648)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !975, file: !620, line: 1259, baseType: !1723, size: 64, offset: 19776)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !975, file: !620, line: 1260, baseType: !1433, size: 16, offset: 19840)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !975, file: !620, line: 1261, baseType: !1433, size: 16, offset: 19856)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !975, file: !620, line: 1314, baseType: !2495, size: 64, offset: 19904)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2497, line: 62, size: 256, align: 256, elements: !2498)
!2497 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2496, file: !2497, line: 75, baseType: !415, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2496, file: !2497, line: 90, baseType: !415, size: 32, offset: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2496, file: !2497, line: 112, baseType: !419, size: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2496, file: !2497, line: 132, baseType: !415, size: 32, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2496, file: !2497, line: 140, baseType: !415, size: 32, offset: 160)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2496, file: !2497, line: 149, baseType: !415, size: 32, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2496, file: !2497, line: 154, baseType: !2506, offset: 224)
!2506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1365)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !975, file: !620, line: 1315, baseType: !414, size: 32, offset: 19968)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !975, file: !620, line: 1316, baseType: !414, size: 32, offset: 20000)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !975, file: !620, line: 1321, baseType: !315, size: 64, offset: 20032)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !975, file: !620, line: 1325, baseType: !101, size: 32, offset: 20096)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !975, file: !620, line: 1326, baseType: !101, size: 32, offset: 20128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !975, file: !620, line: 1327, baseType: !101, size: 32, offset: 20160)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !975, file: !620, line: 1328, baseType: !101, size: 32, offset: 20192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !975, file: !620, line: 1329, baseType: !959, size: 128, align: 64, offset: 20224)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !975, file: !620, line: 1332, baseType: !2516, size: 128, offset: 20352)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2517, line: 51, size: 128, elements: !2518)
!2517 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2518 = !{!2519, !2524, !2525}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2516, file: !2517, line: 60, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2521, line: 7, size: 64, elements: !2522)
!2521 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2522 = !{!2523}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2520, file: !2521, line: 12, baseType: !1224, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2516, file: !2517, line: 63, baseType: !1464, size: 8, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2516, file: !2517, line: 70, baseType: !1464, size: 8, offset: 72)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !975, file: !620, line: 1335, baseType: !1762, size: 64, offset: 20480)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !975, file: !620, line: 1337, baseType: !2528, size: 128, offset: 20544)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2517, line: 39, size: 128, elements: !2529)
!2529 = !{!2530, !2591, !2592}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2528, file: !2517, line: 40, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !717, line: 74, size: 512, align: 128, elements: !2533)
!2533 = !{!2534, !2535, !2585, !2590}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2532, file: !717, line: 75, baseType: !315, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, scope: !2532, file: !717, line: 83, baseType: !2536, size: 320, offset: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2532, file: !717, line: 83, size: 320, elements: !2537)
!2537 = !{!2538, !2559, !2573, !2577, !2584}
!2538 = !DIDerivedType(tag: DW_TAG_member, scope: !2536, file: !717, line: 84, baseType: !2539, size: 320)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2536, file: !717, line: 84, size: 320, elements: !2540)
!2540 = !{!2541, !2552, !2553, !2558}
!2541 = !DIDerivedType(tag: DW_TAG_member, scope: !2539, file: !717, line: 90, baseType: !2542, size: 128)
!2542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2539, file: !717, line: 90, size: 128, elements: !2543)
!2543 = !{!2544, !2545, !2550, !2551}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2542, file: !717, line: 91, baseType: !167, size: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, scope: !2542, file: !717, line: 94, baseType: !2546, size: 128)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2542, file: !717, line: 94, size: 128, elements: !2547)
!2547 = !{!2548, !2549}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2546, file: !717, line: 96, baseType: !149, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2546, file: !717, line: 98, baseType: !23, size: 32, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2542, file: !717, line: 102, baseType: !167, size: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2542, file: !717, line: 103, baseType: !167, size: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2539, file: !717, line: 106, baseType: !341, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, scope: !2539, file: !717, line: 107, baseType: !2554, size: 64, offset: 192)
!2554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2539, file: !717, line: 107, size: 64, elements: !2555)
!2555 = !{!2556, !2557}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2554, file: !717, line: 108, baseType: !315, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2554, file: !717, line: 109, baseType: !315, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2539, file: !717, line: 117, baseType: !315, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, scope: !2536, file: !717, line: 119, baseType: !2560, size: 320)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2536, file: !717, line: 119, size: 320, elements: !2561)
!2561 = !{!2562, !2563, !2566, !2567, !2568}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2560, file: !717, line: 124, baseType: !315, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2560, file: !717, line: 125, baseType: !2564, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !717, line: 125, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2560, file: !717, line: 126, baseType: !315, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2560, file: !717, line: 127, baseType: !315, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, scope: !2560, file: !717, line: 128, baseType: !2569, size: 64, offset: 256)
!2569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2560, file: !717, line: 128, size: 64, elements: !2570)
!2570 = !{!2571, !2572}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2569, file: !717, line: 133, baseType: !315, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2569, file: !717, line: 138, baseType: !649, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, scope: !2536, file: !717, line: 141, baseType: !2574, size: 64)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2536, file: !717, line: 141, size: 64, elements: !2575)
!2575 = !{!2576}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2574, file: !717, line: 142, baseType: !315, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, scope: !2536, file: !717, line: 144, baseType: !2578, size: 128)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2536, file: !717, line: 144, size: 128, elements: !2579)
!2579 = !{!2580, !2583}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2578, file: !717, line: 146, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !717, line: 146, flags: DIFlagFwdDecl)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2578, file: !717, line: 147, baseType: !149, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2536, file: !717, line: 161, baseType: !959, size: 128, align: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2532, file: !717, line: 164, baseType: !2586, size: 32, offset: 384)
!2586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2532, file: !717, line: 164, size: 32, elements: !2587)
!2587 = !{!2588, !2589}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2586, file: !717, line: 169, baseType: !216, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2586, file: !717, line: 177, baseType: !23, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2532, file: !717, line: 181, baseType: !216, size: 32, offset: 416)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2528, file: !2517, line: 42, baseType: !415, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2528, file: !2517, line: 43, baseType: !415, size: 32, offset: 96)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !975, file: !620, line: 1340, baseType: !2594, size: 64, offset: 20672)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !620, line: 69, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !975, file: !620, line: 1351, baseType: !101, size: 32, offset: 20736)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !975, file: !620, line: 1352, baseType: !101, size: 32, offset: 20768)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !975, file: !620, line: 1354, baseType: !315, size: 64, offset: 20800)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !975, file: !620, line: 1364, baseType: !418, size: 64, offset: 20864)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !975, file: !620, line: 1365, baseType: !418, size: 64, offset: 20928)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !975, file: !620, line: 1412, baseType: !315, size: 64, offset: 20992)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !975, file: !620, line: 1453, baseType: !2603, size: 64, offset: 21056)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !620, line: 1453, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !975, file: !620, line: 1457, baseType: !2606, size: 64, offset: 21120)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !60, line: 61, size: 576, elements: !2608)
!2608 = !{!2609, !2610, !2629, !2632, !2633, !2666, !2676}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2607, file: !60, line: 62, baseType: !59, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, scope: !2607, file: !60, line: 64, baseType: !2611, size: 192, offset: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2607, file: !60, line: 64, size: 192, elements: !2612)
!2612 = !{!2613, !2624}
!2613 = !DIDerivedType(tag: DW_TAG_member, scope: !2611, file: !60, line: 65, baseType: !2614, size: 192)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !60, line: 65, size: 192, elements: !2615)
!2615 = !{!2616, !2623}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2614, file: !60, line: 66, baseType: !2617, size: 128)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2618, line: 50, size: 128, elements: !2619)
!2618 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2619 = !{!2620, !2621, !2622}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2617, file: !2618, line: 52, baseType: !315, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2617, file: !2618, line: 54, baseType: !23, size: 32, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2617, file: !2618, line: 55, baseType: !23, size: 32, offset: 96)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2614, file: !60, line: 67, baseType: !315, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, scope: !2611, file: !60, line: 70, baseType: !2625, size: 192)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2611, file: !60, line: 70, size: 192, elements: !2626)
!2626 = !{!2627, !2628}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2625, file: !60, line: 71, baseType: !959, size: 128, align: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2625, file: !60, line: 72, baseType: !315, size: 64, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2607, file: !60, line: 76, baseType: !2630, size: 64, offset: 256)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !60, line: 76, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2607, file: !60, line: 77, baseType: !315, size: 64, offset: 320)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2607, file: !60, line: 79, baseType: !2634, size: 64, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2618, line: 25, size: 256, elements: !2636)
!2636 = !{!2637, !2643, !2647}
!2637 = !DIDerivedType(tag: DW_TAG_member, scope: !2635, file: !2618, line: 26, baseType: !2638, size: 128)
!2638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2635, file: !2618, line: 26, size: 128, elements: !2639)
!2639 = !{!2640, !2642}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2638, file: !2618, line: 27, baseType: !2641, size: 128)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 128, elements: !2108)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2638, file: !2618, line: 28, baseType: !2641, size: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2635, file: !2618, line: 31, baseType: !2644, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2646)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2618, line: 23, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, scope: !2635, file: !2618, line: 33, baseType: !2648, size: 64, offset: 192)
!2648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2635, file: !2618, line: 33, size: 64, elements: !2649)
!2649 = !{!2650, !2656, !2661}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2648, file: !2618, line: 38, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2648, file: !2618, line: 34, size: 64, elements: !2652)
!2652 = !{!2653, !2654, !2655}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2651, file: !2618, line: 35, baseType: !1407, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2651, file: !2618, line: 36, baseType: !224, size: 8, offset: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2651, file: !2618, line: 37, baseType: !224, size: 8, offset: 40)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2648, file: !2618, line: 42, baseType: !2657, size: 16)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2648, file: !2618, line: 39, size: 16, elements: !2658)
!2658 = !{!2659, !2660}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2657, file: !2618, line: 40, baseType: !224, size: 8)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2657, file: !2618, line: 41, baseType: !224, size: 8, offset: 8)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2648, file: !2618, line: 46, baseType: !2662, size: 16)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2648, file: !2618, line: 43, size: 16, elements: !2663)
!2663 = !{!2664, !2665}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2662, file: !2618, line: 44, baseType: !224, size: 8)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2662, file: !2618, line: 45, baseType: !224, size: 8, offset: 8)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2607, file: !60, line: 81, baseType: !2667, size: 64, offset: 448)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !60, line: 85, size: 384, elements: !2669)
!2669 = !{!2670, !2671, !2672, !2673, !2674, !2675}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2668, file: !60, line: 86, baseType: !2630, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2668, file: !60, line: 87, baseType: !315, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2668, file: !60, line: 88, baseType: !315, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2668, file: !60, line: 89, baseType: !315, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2668, file: !60, line: 90, baseType: !1464, size: 8, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2668, file: !60, line: 92, baseType: !2667, size: 64, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2607, file: !60, line: 82, baseType: !23, size: 32, offset: 512)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !975, file: !620, line: 1463, baseType: !2678, offset: 21184)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !620, line: 739, elements: !549)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !975, file: !620, line: 1470, baseType: !959, size: 128, align: 64, offset: 21184)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !975, file: !620, line: 1471, baseType: !988, size: 32, offset: 21312)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !975, file: !620, line: 1472, baseType: !101, size: 32, offset: 21344)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !975, file: !620, line: 1474, baseType: !974, size: 64, offset: 21376)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !975, file: !620, line: 1475, baseType: !2684, size: 320, offset: 21440)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2685, line: 11, size: 320, elements: !2686)
!2685 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2686 = !{!2687, !2688, !2689, !2694}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2684, file: !2685, line: 16, baseType: !541, size: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2684, file: !2685, line: 17, baseType: !315, size: 64, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2684, file: !2685, line: 18, baseType: !2690, size: 64, offset: 192)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{null, !2693}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2684, file: !2685, line: 19, baseType: !414, size: 32, offset: 256)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !975, file: !620, line: 1478, baseType: !2696, size: 64, offset: 21760)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !620, line: 1478, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !975, file: !620, line: 1482, baseType: !988, size: 32, offset: 21824)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !975, file: !620, line: 1489, baseType: !149, size: 64, offset: 21888)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !975, file: !620, line: 1504, baseType: !149, size: 64, offset: 21952)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !975, file: !620, line: 1505, baseType: !419, size: 64, offset: 22016)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !975, file: !620, line: 1506, baseType: !418, size: 64, offset: 22080)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !975, file: !620, line: 1507, baseType: !419, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !975, file: !620, line: 1508, baseType: !419, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !975, file: !620, line: 1509, baseType: !419, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !975, file: !620, line: 1510, baseType: !959, size: 128, align: 64, offset: 22208)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !975, file: !620, line: 1511, baseType: !101, size: 32, offset: 22336)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !975, file: !620, line: 1515, baseType: !2709, size: 64, offset: 22400)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1002, line: 56, size: 64, elements: !2710)
!2710 = !{!2711}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2709, file: !1002, line: 57, baseType: !1005, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !975, file: !620, line: 1518, baseType: !2709, size: 64, offset: 22464)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !975, file: !620, line: 1528, baseType: !959, size: 128, align: 64, offset: 22528)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !975, file: !620, line: 1552, baseType: !2715, size: 35328, offset: 23040)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2716, line: 430, size: 35328, elements: !2717)
!2716 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2717 = !{!2718, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2747, !2748, !2749, !2750, !2751, !2752, !2755, !2756, !2757, !2758}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2715, file: !2716, line: 432, baseType: !2719, size: 192)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2720, size: 192, elements: !266)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2721, line: 16, size: 64, elements: !2722)
!2721 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2722 = !{!2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2720, file: !2721, line: 17, baseType: !233, size: 16)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2720, file: !2721, line: 18, baseType: !233, size: 16, offset: 16)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2720, file: !2721, line: 19, baseType: !233, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2720, file: !2721, line: 19, baseType: !233, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2720, file: !2721, line: 19, baseType: !233, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2720, file: !2721, line: 19, baseType: !233, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2720, file: !2721, line: 19, baseType: !233, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2720, file: !2721, line: 20, baseType: !233, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2720, file: !2721, line: 20, baseType: !233, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2720, file: !2721, line: 20, baseType: !233, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2720, file: !2721, line: 20, baseType: !233, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2720, file: !2721, line: 20, baseType: !233, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2720, file: !2721, line: 20, baseType: !233, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2715, file: !2716, line: 436, baseType: !315, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2715, file: !2716, line: 440, baseType: !235, size: 16, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2715, file: !2716, line: 441, baseType: !235, size: 16, offset: 272)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2715, file: !2716, line: 442, baseType: !235, size: 16, offset: 288)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2715, file: !2716, line: 443, baseType: !235, size: 16, offset: 304)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2715, file: !2716, line: 447, baseType: !315, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2715, file: !2716, line: 448, baseType: !315, size: 64, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2715, file: !2716, line: 459, baseType: !2744, size: 256, offset: 448)
!2744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2745, size: 256, elements: !1352)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2716, line: 428, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2715, file: !2716, line: 461, baseType: !315, size: 64, offset: 704)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2715, file: !2716, line: 463, baseType: !315, size: 64, offset: 768)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2715, file: !2716, line: 465, baseType: !315, size: 64, offset: 832)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2715, file: !2716, line: 466, baseType: !315, size: 64, offset: 896)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2715, file: !2716, line: 467, baseType: !315, size: 64, offset: 960)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2715, file: !2716, line: 473, baseType: !2753, size: 64, offset: 1024)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2716, line: 10, flags: DIFlagFwdDecl)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2715, file: !2716, line: 480, baseType: !315, size: 64, offset: 1088)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2715, file: !2716, line: 482, baseType: !23, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2715, file: !2716, line: 491, baseType: !414, size: 32, offset: 1184)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2715, file: !2716, line: 501, baseType: !2759, size: 33792, offset: 1536)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2760, line: 448, size: 33792, elements: !2761)
!2760 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2761 = !{!2762, !2763, !2764, !2926, !2927, !2933, !2934}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2759, file: !2760, line: 461, baseType: !23, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2759, file: !2760, line: 468, baseType: !315, size: 64, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2759, file: !2760, line: 476, baseType: !2765, size: 64, offset: 128)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2760, line: 356, size: 33280, align: 512, elements: !2767)
!2767 = !{!2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2766, file: !2760, line: 358, baseType: !23, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2766, file: !2760, line: 361, baseType: !23, size: 32, offset: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2766, file: !2760, line: 364, baseType: !418, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2766, file: !2760, line: 367, baseType: !418, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2766, file: !2760, line: 370, baseType: !418, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2766, file: !2760, line: 373, baseType: !23, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2766, file: !2760, line: 376, baseType: !23, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2766, file: !2760, line: 391, baseType: !23, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2766, file: !2760, line: 394, baseType: !23, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2766, file: !2760, line: 397, baseType: !2778, size: 32768, offset: 512)
!2778 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2760, line: 348, size: 32768, elements: !2779)
!2779 = !{!2780, !2795, !2832, !2909, !2922}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2778, file: !2760, line: 349, baseType: !2781, size: 896)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2760, line: 12, size: 896, elements: !2782)
!2782 = !{!2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2794}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2781, file: !2760, line: 13, baseType: !414, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2781, file: !2760, line: 14, baseType: !414, size: 32, offset: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2781, file: !2760, line: 15, baseType: !414, size: 32, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2781, file: !2760, line: 16, baseType: !414, size: 32, offset: 96)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2781, file: !2760, line: 17, baseType: !414, size: 32, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2781, file: !2760, line: 18, baseType: !414, size: 32, offset: 160)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2781, file: !2760, line: 19, baseType: !414, size: 32, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2781, file: !2760, line: 22, baseType: !2791, size: 640, offset: 224)
!2791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 640, elements: !2792)
!2792 = !{!2793}
!2793 = !DISubrange(count: 20)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2781, file: !2760, line: 25, baseType: !414, size: 32, offset: 864)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2778, file: !2760, line: 350, baseType: !2796, size: 4096, align: 128)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2760, line: 34, size: 4096, align: 128, elements: !2797)
!2797 = !{!2798, !2799, !2800, !2801, !2802, !2817, !2818, !2819, !2821, !2823, !2827}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2796, file: !2760, line: 35, baseType: !233, size: 16)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2796, file: !2760, line: 36, baseType: !233, size: 16, offset: 16)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2796, file: !2760, line: 37, baseType: !233, size: 16, offset: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2796, file: !2760, line: 38, baseType: !233, size: 16, offset: 48)
!2802 = !DIDerivedType(tag: DW_TAG_member, scope: !2796, file: !2760, line: 39, baseType: !2803, size: 128, offset: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2796, file: !2760, line: 39, size: 128, elements: !2804)
!2804 = !{!2805, !2810}
!2805 = !DIDerivedType(tag: DW_TAG_member, scope: !2803, file: !2760, line: 40, baseType: !2806, size: 128)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2803, file: !2760, line: 40, size: 128, elements: !2807)
!2807 = !{!2808, !2809}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2806, file: !2760, line: 41, baseType: !418, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2806, file: !2760, line: 42, baseType: !418, size: 64, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, scope: !2803, file: !2760, line: 44, baseType: !2811, size: 128)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2803, file: !2760, line: 44, size: 128, elements: !2812)
!2812 = !{!2813, !2814, !2815, !2816}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2811, file: !2760, line: 45, baseType: !414, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2811, file: !2760, line: 46, baseType: !414, size: 32, offset: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2811, file: !2760, line: 47, baseType: !414, size: 32, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2811, file: !2760, line: 48, baseType: !414, size: 32, offset: 96)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2796, file: !2760, line: 51, baseType: !414, size: 32, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2796, file: !2760, line: 52, baseType: !414, size: 32, offset: 224)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2796, file: !2760, line: 55, baseType: !2820, size: 1024, offset: 256)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 1024, elements: !427)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2796, file: !2760, line: 58, baseType: !2822, size: 2048, offset: 1280)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 2048, elements: !270)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2796, file: !2760, line: 60, baseType: !2824, size: 384, offset: 3328)
!2824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 384, elements: !2825)
!2825 = !{!2826}
!2826 = !DISubrange(count: 12)
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !2796, file: !2760, line: 62, baseType: !2828, size: 384, offset: 3712)
!2828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2796, file: !2760, line: 62, size: 384, elements: !2829)
!2829 = !{!2830, !2831}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2828, file: !2760, line: 63, baseType: !2824, size: 384)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2828, file: !2760, line: 64, baseType: !2824, size: 384)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2778, file: !2760, line: 351, baseType: !2833, size: 1088)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2760, line: 79, size: 1088, elements: !2834)
!2834 = !{!2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2908}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2833, file: !2760, line: 80, baseType: !414, size: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2833, file: !2760, line: 81, baseType: !414, size: 32, offset: 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2833, file: !2760, line: 82, baseType: !414, size: 32, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2833, file: !2760, line: 83, baseType: !414, size: 32, offset: 96)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2833, file: !2760, line: 84, baseType: !414, size: 32, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2833, file: !2760, line: 85, baseType: !414, size: 32, offset: 160)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2833, file: !2760, line: 86, baseType: !414, size: 32, offset: 192)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2833, file: !2760, line: 88, baseType: !2791, size: 640, offset: 224)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2833, file: !2760, line: 89, baseType: !224, size: 8, offset: 864)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2833, file: !2760, line: 90, baseType: !224, size: 8, offset: 872)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2833, file: !2760, line: 91, baseType: !224, size: 8, offset: 880)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2833, file: !2760, line: 92, baseType: !224, size: 8, offset: 888)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2833, file: !2760, line: 93, baseType: !224, size: 8, offset: 896)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2833, file: !2760, line: 94, baseType: !224, size: 8, offset: 904)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2833, file: !2760, line: 95, baseType: !2850, size: 64, offset: 960)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2852, line: 11, size: 128, elements: !2853)
!2852 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2851, file: !2852, line: 12, baseType: !301, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2851, file: !2852, line: 13, baseType: !2856, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2858, line: 103, size: 1344, elements: !2859)
!2858 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2859 = !{!2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2888, !2889, !2890}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2857, file: !2858, line: 109, baseType: !315, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2857, file: !2858, line: 110, baseType: !315, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2857, file: !2858, line: 111, baseType: !315, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2857, file: !2858, line: 112, baseType: !315, size: 64, offset: 192)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2857, file: !2858, line: 113, baseType: !315, size: 64, offset: 256)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2857, file: !2858, line: 114, baseType: !315, size: 64, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2857, file: !2858, line: 117, baseType: !315, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2857, file: !2858, line: 118, baseType: !315, size: 64, offset: 448)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2857, file: !2858, line: 119, baseType: !315, size: 64, offset: 512)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2857, file: !2858, line: 120, baseType: !315, size: 64, offset: 576)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2857, file: !2858, line: 121, baseType: !315, size: 64, offset: 640)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2857, file: !2858, line: 122, baseType: !315, size: 64, offset: 704)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2857, file: !2858, line: 123, baseType: !315, size: 64, offset: 768)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2857, file: !2858, line: 124, baseType: !315, size: 64, offset: 832)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2857, file: !2858, line: 125, baseType: !315, size: 64, offset: 896)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2857, file: !2858, line: 139, baseType: !315, size: 64, offset: 960)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2857, file: !2858, line: 142, baseType: !315, size: 64, offset: 1024)
!2877 = !DIDerivedType(tag: DW_TAG_member, scope: !2857, file: !2858, line: 144, baseType: !2878, size: 64, offset: 1088)
!2878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2857, file: !2858, line: 144, size: 64, elements: !2879)
!2879 = !{!2880, !2881, !2882}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2878, file: !2858, line: 146, baseType: !233, size: 16)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2878, file: !2858, line: 148, baseType: !418, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2878, file: !2858, line: 150, baseType: !2883, size: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2858, line: 59, size: 64, elements: !2884)
!2884 = !{!2885, !2886, !2887}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2883, file: !2858, line: 61, baseType: !418, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2883, file: !2858, line: 63, baseType: !418, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2883, file: !2858, line: 65, baseType: !418, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2857, file: !2858, line: 153, baseType: !315, size: 64, offset: 1152)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2857, file: !2858, line: 154, baseType: !315, size: 64, offset: 1216)
!2890 = !DIDerivedType(tag: DW_TAG_member, scope: !2857, file: !2858, line: 156, baseType: !2891, size: 64, offset: 1280)
!2891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2857, file: !2858, line: 156, size: 64, elements: !2892)
!2892 = !{!2893, !2894, !2895}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2891, file: !2858, line: 158, baseType: !233, size: 16)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2891, file: !2858, line: 160, baseType: !418, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2891, file: !2858, line: 162, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2858, line: 69, size: 64, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2896, file: !2858, line: 71, baseType: !418, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2896, file: !2858, line: 73, baseType: !418, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2896, file: !2858, line: 75, baseType: !418, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2896, file: !2858, line: 77, baseType: !418, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2896, file: !2858, line: 80, baseType: !418, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2896, file: !2858, line: 83, baseType: !418, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2896, file: !2858, line: 86, baseType: !418, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2896, file: !2858, line: 88, baseType: !418, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2896, file: !2858, line: 93, baseType: !418, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2896, file: !2858, line: 100, baseType: !418, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2833, file: !2760, line: 96, baseType: !414, size: 32, offset: 1024)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2778, file: !2760, line: 352, baseType: !2910, size: 4608, align: 512)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2760, line: 333, size: 4608, align: 512, elements: !2911)
!2911 = !{!2912, !2913, !2920}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2910, file: !2760, line: 334, baseType: !2796, size: 4096, align: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2910, file: !2760, line: 335, baseType: !2914, size: 512, offset: 4096)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2760, line: 312, size: 512, elements: !2915)
!2915 = !{!2916, !2917, !2918}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2914, file: !2760, line: 313, baseType: !418, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2914, file: !2760, line: 314, baseType: !418, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2914, file: !2760, line: 315, baseType: !2919, size: 384, offset: 128)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !1451)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2910, file: !2760, line: 336, baseType: !2921, offset: 4608)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, elements: !1365)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2778, file: !2760, line: 353, baseType: !2923, size: 32768)
!2923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 32768, elements: !2924)
!2924 = !{!2925}
!2925 = !DISubrange(count: 4096)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2759, file: !2760, line: 484, baseType: !2765, size: 64, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2759, file: !2760, line: 491, baseType: !2928, size: 128, offset: 256)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2760, line: 404, size: 128, elements: !2929)
!2929 = !{!2930, !2931, !2932}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2928, file: !2760, line: 424, baseType: !418, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2928, file: !2760, line: 432, baseType: !23, size: 32, offset: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2928, file: !2760, line: 440, baseType: !23, size: 32, offset: 96)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2759, file: !2760, line: 498, baseType: !2928, size: 128, offset: 384)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2759, file: !2760, line: 508, baseType: !2766, size: 33280, align: 512, offset: 512)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !942, file: !943, line: 16, baseType: !952, size: 192, offset: 512)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !942, file: !943, line: 17, baseType: !216, size: 32, offset: 704)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !497, file: !30, line: 1240, baseType: !149, size: 64, offset: 6912)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !497, file: !30, line: 1243, baseType: !414, size: 32, offset: 6976)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !497, file: !30, line: 1245, baseType: !698, size: 64, offset: 7040)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !497, file: !30, line: 1246, baseType: !698, size: 64, offset: 7104)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !497, file: !30, line: 1248, baseType: !415, size: 32, offset: 7168)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !497, file: !30, line: 1249, baseType: !2943, size: 64, offset: 7232)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !30, line: 634, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !497, file: !30, line: 1252, baseType: !2946, size: 256, offset: 7296)
!2946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !427)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !497, file: !30, line: 1253, baseType: !2948, size: 128, offset: 7552)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2949, line: 21, baseType: !2950)
!2949 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2949, line: 19, size: 128, elements: !2951)
!2951 = !{!2952}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2950, file: !2949, line: 20, baseType: !2953, size: 128)
!2953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 128, elements: !2108)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !497, file: !30, line: 1255, baseType: !23, size: 32, offset: 7680)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !497, file: !30, line: 1261, baseType: !645, size: 256, offset: 7744)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !497, file: !30, line: 1267, baseType: !185, size: 64, offset: 8000)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !497, file: !30, line: 1269, baseType: !443, size: 64, offset: 8064)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !497, file: !30, line: 1271, baseType: !2959, size: 448, offset: 8128)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !707, line: 63, size: 448, elements: !2960)
!2960 = !{!2961, !2966, !2967, !2968, !2969, !2970, !2971}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2959, file: !707, line: 64, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!315, !2965, !705}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2959, file: !707, line: 66, baseType: !2962, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2959, file: !707, line: 69, baseType: !301, size: 64, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2959, file: !707, line: 70, baseType: !101, size: 32, offset: 192)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2959, file: !707, line: 71, baseType: !23, size: 32, offset: 224)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2959, file: !707, line: 74, baseType: !167, size: 128, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2959, file: !707, line: 85, baseType: !2972, size: 64, offset: 384)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !497, file: !30, line: 1274, baseType: !649, size: 64, offset: 8576)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !497, file: !30, line: 1280, baseType: !649, size: 64, offset: 8640)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !497, file: !30, line: 1283, baseType: !101, size: 32, offset: 8704)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !497, file: !30, line: 1286, baseType: !1812, size: 32, offset: 8736)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !497, file: !30, line: 1289, baseType: !2978, size: 64, offset: 8768)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1941, line: 18, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !497, file: !30, line: 1290, baseType: !537, size: 64, offset: 8832)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !497, file: !30, line: 1297, baseType: !1547, size: 64, offset: 8896)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !497, file: !30, line: 1304, baseType: !2983, size: 64, offset: 8960)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2984, line: 49, size: 64, elements: !2985)
!2984 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2985 = !{!2986}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2983, file: !2984, line: 50, baseType: !2987, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2984, line: 41, size: 512, align: 512, elements: !2989)
!2989 = !{!2990, !2991, !2996}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2988, file: !2984, line: 43, baseType: !196, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2988, file: !2984, line: 45, baseType: !2992, size: 192, offset: 64)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2984, line: 29, size: 192, elements: !2993)
!2993 = !{!2994, !2995}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2992, file: !2984, line: 30, baseType: !167, size: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2992, file: !2984, line: 32, baseType: !301, size: 64, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2988, file: !2984, line: 46, baseType: !301, size: 64, offset: 256)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !497, file: !30, line: 1305, baseType: !2983, size: 64, offset: 9024)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !497, file: !30, line: 1306, baseType: !959, size: 128, align: 64, offset: 9088)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !497, file: !30, line: 1307, baseType: !1940, size: 256, offset: 9216)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !497, file: !30, line: 1309, baseType: !645, size: 256, offset: 9472)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !497, file: !30, line: 1314, baseType: !101, size: 32, offset: 9728)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !497, file: !30, line: 1317, baseType: !196, size: 32, align: 512, offset: 10240)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !497, file: !30, line: 1318, baseType: !167, size: 128, offset: 10304)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !497, file: !30, line: 1320, baseType: !196, size: 32, offset: 10432)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !497, file: !30, line: 1321, baseType: !167, size: 128, offset: 10496)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !491, file: !492, line: 73, baseType: !101, size: 32, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !491, file: !492, line: 74, baseType: !3008, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1389, line: 42, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !445, file: !382, line: 141, baseType: !3012, size: 64, offset: 704)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!101, !769, !1464}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !445, file: !382, line: 142, baseType: !3016, size: 64, offset: 768)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!380, !380, !3019}
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !381, file: !382, line: 96, baseType: !496, size: 64, offset: 832)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !381, file: !382, line: 97, baseType: !315, size: 64, offset: 896)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !381, file: !382, line: 98, baseType: !149, size: 64, offset: 960)
!3024 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !382, line: 100, baseType: !3025, size: 128, offset: 1024)
!3025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !382, line: 100, size: 128, elements: !3026)
!3026 = !{!3027, !3028}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3025, file: !382, line: 101, baseType: !167, size: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3025, file: !382, line: 102, baseType: !1659, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !381, file: !382, line: 104, baseType: !167, size: 128, offset: 1152)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !381, file: !382, line: 105, baseType: !167, size: 128, offset: 1280)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !381, file: !382, line: 113, baseType: !3032, size: 128, offset: 1408)
!3032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !382, line: 109, size: 128, elements: !3033)
!3033 = !{!3034, !3035, !3036}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3032, file: !382, line: 110, baseType: !541, size: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3032, file: !382, line: 111, baseType: !396, size: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3032, file: !382, line: 112, baseType: !959, size: 128, align: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !374, file: !30, line: 1968, baseType: !3038, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!185, !380, !345, !3041}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3043, line: 10, size: 128, elements: !3044)
!3043 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3044 = !{!3045, !3049}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3042, file: !3043, line: 11, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{null, !149}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3042, file: !3043, line: 12, baseType: !149, size: 64, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !374, file: !30, line: 1969, baseType: !3051, size: 64, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!101, !3008, !345, !101}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !374, file: !30, line: 1970, baseType: !3055, size: 64, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!368, !345, !101, !1464}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !374, file: !30, line: 1972, baseType: !3059, size: 64, offset: 256)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!101, !380, !265, !101}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !374, file: !30, line: 1974, baseType: !3063, size: 64, offset: 320)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!101, !3008, !345, !380, !307, !1464}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !374, file: !30, line: 1976, baseType: !3067, size: 64, offset: 384)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!101, !380, !345, !380}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !374, file: !30, line: 1977, baseType: !3071, size: 64, offset: 448)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!101, !345, !380}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !374, file: !30, line: 1978, baseType: !3075, size: 64, offset: 512)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!101, !3008, !345, !380, !185}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !374, file: !30, line: 1980, baseType: !3079, size: 64, offset: 576)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!101, !3008, !345, !380, !307}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !374, file: !30, line: 1982, baseType: !3071, size: 64, offset: 640)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !374, file: !30, line: 1983, baseType: !3084, size: 64, offset: 704)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!101, !3008, !345, !380, !307, !501}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !374, file: !30, line: 1985, baseType: !3088, size: 64, offset: 768)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!101, !3008, !345, !380, !345, !380, !23}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !374, file: !30, line: 1987, baseType: !3092, size: 64, offset: 832)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!101, !3008, !380, !3095}
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !30, line: 226, size: 640, elements: !3097)
!3097 = !{!3098, !3099, !3100, !3110, !3119, !3120, !3125, !3126, !3127}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3096, file: !30, line: 227, baseType: !23, size: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3096, file: !30, line: 228, baseType: !307, size: 16, offset: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, scope: !3096, file: !30, line: 241, baseType: !3101, size: 32, offset: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3096, file: !30, line: 241, size: 32, elements: !3102)
!3102 = !{!3103, !3104}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3101, file: !30, line: 242, baseType: !351, size: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3101, file: !30, line: 243, baseType: !3105, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3106, line: 16, baseType: !3107)
!3106 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3106, line: 14, size: 32, elements: !3108)
!3108 = !{!3109}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3107, file: !3106, line: 15, baseType: !356, size: 32)
!3110 = !DIDerivedType(tag: DW_TAG_member, scope: !3096, file: !30, line: 245, baseType: !3111, size: 32, offset: 96)
!3111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3096, file: !30, line: 245, size: 32, elements: !3112)
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3111, file: !30, line: 246, baseType: !360, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3111, file: !30, line: 247, baseType: !3115, size: 32)
!3115 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3106, line: 20, baseType: !3116)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3106, line: 18, size: 32, elements: !3117)
!3117 = !{!3118}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3116, file: !3106, line: 19, baseType: !364, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3096, file: !30, line: 249, baseType: !506, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3096, file: !30, line: 250, baseType: !3121, size: 128, offset: 192)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !699, line: 13, size: 128, elements: !3122)
!3122 = !{!3123, !3124}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3121, file: !699, line: 14, baseType: !698, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3121, file: !699, line: 15, baseType: !301, size: 64, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3096, file: !30, line: 251, baseType: !3121, size: 128, offset: 320)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3096, file: !30, line: 252, baseType: !3121, size: 128, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3096, file: !30, line: 259, baseType: !1303, size: 64, offset: 576)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !374, file: !30, line: 1988, baseType: !3129, size: 64, offset: 896)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!101, !3008, !769, !3132, !414, !23}
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3134, line: 22, size: 1280, elements: !3135)
!3134 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3135 = !{!3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3133, file: !3134, line: 23, baseType: !414, size: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3133, file: !3134, line: 24, baseType: !307, size: 16, offset: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3133, file: !3134, line: 25, baseType: !23, size: 32, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3133, file: !3134, line: 26, baseType: !1429, size: 32, offset: 96)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3133, file: !3134, line: 27, baseType: !418, size: 64, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3133, file: !3134, line: 28, baseType: !418, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3133, file: !3134, line: 41, baseType: !418, size: 64, offset: 256)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3133, file: !3134, line: 42, baseType: !501, size: 32, offset: 320)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3133, file: !3134, line: 43, baseType: !501, size: 32, offset: 352)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3133, file: !3134, line: 44, baseType: !351, size: 32, offset: 384)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3133, file: !3134, line: 45, baseType: !360, size: 32, offset: 416)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3133, file: !3134, line: 46, baseType: !506, size: 64, offset: 448)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3133, file: !3134, line: 47, baseType: !3121, size: 128, offset: 512)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3133, file: !3134, line: 48, baseType: !3121, size: 128, offset: 640)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3133, file: !3134, line: 49, baseType: !3121, size: 128, offset: 768)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3133, file: !3134, line: 50, baseType: !3121, size: 128, offset: 896)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3133, file: !3134, line: 51, baseType: !418, size: 64, offset: 1024)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3133, file: !3134, line: 52, baseType: !418, size: 64, offset: 1088)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3133, file: !3134, line: 53, baseType: !414, size: 32, offset: 1152)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3133, file: !3134, line: 54, baseType: !414, size: 32, offset: 1184)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3133, file: !3134, line: 55, baseType: !418, size: 64, offset: 1216)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !374, file: !30, line: 1990, baseType: !3158, size: 64, offset: 960)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!297, !380, !265, !312}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !374, file: !30, line: 1991, baseType: !3162, size: 64, offset: 1024)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!101, !345, !3165, !418, !418}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !30, line: 55, flags: DIFlagFwdDecl)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !374, file: !30, line: 1993, baseType: !3168, size: 64, offset: 1088)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!101, !345, !101}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !374, file: !30, line: 1994, baseType: !3172, size: 64, offset: 1152)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!101, !345, !380, !1303, !23, !307}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !374, file: !30, line: 1997, baseType: !3176, size: 64, offset: 1216)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!101, !3008, !345, !1303, !307}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !374, file: !30, line: 1999, baseType: !3180, size: 64, offset: 1280)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!368, !3008, !380, !101}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !374, file: !30, line: 2001, baseType: !3184, size: 64, offset: 1344)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!101, !3008, !380, !368, !101}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !374, file: !30, line: 2003, baseType: !3188, size: 64, offset: 1408)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!101, !3008, !380, !3191}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !30, line: 76, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !374, file: !30, line: 2005, baseType: !3194, size: 64, offset: 1472)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!101, !380, !3191}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !374, file: !30, line: 2006, baseType: !3198, size: 64, offset: 1536)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!3201, !345}
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !30, line: 3192, size: 192, elements: !3203)
!3203 = !{!3204, !3211}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3202, file: !30, line: 3193, baseType: !3205, size: 128)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3206, line: 296, size: 128, elements: !3207)
!3206 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3207 = !{!3208, !3209, !3210}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3205, file: !3206, line: 297, baseType: !196, size: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3205, file: !3206, line: 299, baseType: !710, size: 32, offset: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3205, file: !3206, line: 300, baseType: !149, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3202, file: !30, line: 3194, baseType: !414, size: 32, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !346, file: !30, line: 655, baseType: !496, size: 64, offset: 448)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !346, file: !30, line: 656, baseType: !341, size: 64, offset: 512)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !346, file: !30, line: 659, baseType: !149, size: 64, offset: 576)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !346, file: !30, line: 663, baseType: !315, size: 64, offset: 640)
!3216 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !30, line: 671, baseType: !3217, size: 32, offset: 704)
!3217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !30, line: 671, size: 32, elements: !3218)
!3218 = !{!3219, !3221}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3217, file: !30, line: 672, baseType: !3220, size: 32)
!3220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3217, file: !30, line: 673, baseType: !23, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !346, file: !30, line: 675, baseType: !501, size: 32, offset: 736)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !346, file: !30, line: 676, baseType: !506, size: 64, offset: 768)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !346, file: !30, line: 677, baseType: !3121, size: 128, offset: 832)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !346, file: !30, line: 678, baseType: !3121, size: 128, offset: 960)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !346, file: !30, line: 679, baseType: !3121, size: 128, offset: 1088)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !346, file: !30, line: 680, baseType: !196, size: 32, offset: 1216)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !346, file: !30, line: 681, baseType: !235, size: 16, offset: 1248)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !346, file: !30, line: 682, baseType: !224, size: 8, offset: 1264)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !346, file: !30, line: 683, baseType: !224, size: 8, offset: 1272)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !346, file: !30, line: 684, baseType: !847, size: 64, offset: 1280)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !346, file: !30, line: 691, baseType: !315, size: 64, offset: 1344)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !346, file: !30, line: 692, baseType: !859, size: 320, offset: 1408)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !346, file: !30, line: 694, baseType: !315, size: 64, offset: 1728)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !346, file: !30, line: 695, baseType: !315, size: 64, offset: 1792)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !346, file: !30, line: 697, baseType: !541, size: 128, offset: 1856)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !346, file: !30, line: 698, baseType: !167, size: 128, offset: 1984)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !346, file: !30, line: 707, baseType: !167, size: 128, offset: 2112)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !346, file: !30, line: 708, baseType: !167, size: 128, offset: 2240)
!3240 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !30, line: 709, baseType: !3241, size: 128, offset: 2368)
!3241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !30, line: 709, size: 128, elements: !3242)
!3242 = !{!3243, !3244}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3241, file: !30, line: 710, baseType: !537, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3241, file: !30, line: 711, baseType: !959, size: 128, align: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !346, file: !30, line: 713, baseType: !651, size: 64, offset: 2496)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !346, file: !30, line: 714, baseType: !651, size: 64, offset: 2560)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !346, file: !30, line: 715, baseType: !216, size: 32, offset: 2624)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !346, file: !30, line: 716, baseType: !216, size: 32, offset: 2656)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !346, file: !30, line: 717, baseType: !216, size: 32, offset: 2688)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !346, file: !30, line: 719, baseType: !216, size: 32, offset: 2720)
!3251 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !30, line: 721, baseType: !3252, size: 64, offset: 2752)
!3252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !30, line: 721, size: 64, elements: !3253)
!3253 = !{!3254, !3255}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3252, file: !30, line: 722, baseType: !1578, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3252, file: !30, line: 723, baseType: !568, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !346, file: !30, line: 725, baseType: !3257, size: 64, offset: 2816)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !30, line: 725, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !346, file: !30, line: 726, baseType: !342, size: 1536, align: 64, offset: 2880)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !346, file: !30, line: 727, baseType: !167, size: 128, offset: 4416)
!3261 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !30, line: 728, baseType: !3262, size: 64, offset: 4544)
!3262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !30, line: 728, size: 64, elements: !3263)
!3263 = !{!3264, !3265, !3268, !3269}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3262, file: !30, line: 729, baseType: !1762, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3262, file: !30, line: 730, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !30, line: 730, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3262, file: !30, line: 731, baseType: !265, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3262, file: !30, line: 732, baseType: !23, size: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !346, file: !30, line: 735, baseType: !415, size: 32, offset: 4608)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !346, file: !30, line: 738, baseType: !415, size: 32, offset: 4640)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !346, file: !30, line: 739, baseType: !2943, size: 64, offset: 4672)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !346, file: !30, line: 750, baseType: !149, size: 64, offset: 4736)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !342, file: !30, line: 474, baseType: !3205, size: 128, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !342, file: !30, line: 475, baseType: !859, size: 320, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !342, file: !30, line: 476, baseType: !710, size: 32, offset: 512)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !342, file: !30, line: 477, baseType: !216, size: 32, offset: 544)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !342, file: !30, line: 482, baseType: !1159, size: 128, offset: 576)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !342, file: !30, line: 483, baseType: !315, size: 64, offset: 704)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !342, file: !30, line: 484, baseType: !315, size: 64, offset: 768)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !342, file: !30, line: 485, baseType: !3282, size: 64, offset: 832)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3284)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !30, line: 404, size: 1280, elements: !3285)
!3285 = !{!3286, !3290, !3360, !3364, !3368, !3374, !3379, !3383, !3388, !3392, !3396, !3400, !3401, !3405, !3409, !3413, !3418, !3422, !3429, !3430}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3284, file: !30, line: 405, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!101, !2531, !580}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3284, file: !30, line: 406, baseType: !3291, size: 64, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!101, !1303, !3294}
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !717, line: 293, size: 1536, elements: !3296)
!3296 = !{!3297, !3327, !3341}
!3297 = !DIDerivedType(tag: DW_TAG_member, scope: !3295, file: !717, line: 295, baseType: !3298, size: 512)
!3298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3295, file: !717, line: 295, size: 512, elements: !3299)
!3299 = !{!3300, !3326}
!3300 = !DIDerivedType(tag: DW_TAG_member, scope: !3298, file: !717, line: 296, baseType: !3301, size: 448)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3298, file: !717, line: 296, size: 448, elements: !3302)
!3302 = !{!3303, !3304, !3313, !3314, !3315, !3324, !3325}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3301, file: !717, line: 298, baseType: !315, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, scope: !3301, file: !717, line: 299, baseType: !3305, size: 128, offset: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3301, file: !717, line: 299, size: 128, elements: !3306)
!3306 = !{!3307, !3308}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3305, file: !717, line: 300, baseType: !167, size: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, scope: !3305, file: !717, line: 302, baseType: !3309, size: 128)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3305, file: !717, line: 302, size: 128, elements: !3310)
!3310 = !{!3311, !3312}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3309, file: !717, line: 303, baseType: !149, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3309, file: !717, line: 305, baseType: !23, size: 32, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3301, file: !717, line: 310, baseType: !341, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3301, file: !717, line: 311, baseType: !315, size: 64, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_member, scope: !3301, file: !717, line: 312, baseType: !3316, size: 64, offset: 320)
!3316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3301, file: !717, line: 312, size: 64, elements: !3317)
!3317 = !{!3318, !3319}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3316, file: !717, line: 313, baseType: !149, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3316, file: !717, line: 314, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !717, line: 257, baseType: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !717, line: 255, size: 64, elements: !3322)
!3322 = !{!3323}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3321, file: !717, line: 256, baseType: !315, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3301, file: !717, line: 316, baseType: !216, size: 32, offset: 384)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3301, file: !717, line: 317, baseType: !216, size: 32, offset: 416)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3298, file: !717, line: 323, baseType: !2532, size: 512, align: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, scope: !3295, file: !717, line: 325, baseType: !3328, size: 512, offset: 512)
!3328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3295, file: !717, line: 325, size: 512, elements: !3329)
!3329 = !{!3330, !3340}
!3330 = !DIDerivedType(tag: DW_TAG_member, scope: !3328, file: !717, line: 326, baseType: !3331, size: 320)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3328, file: !717, line: 326, size: 320, elements: !3332)
!3332 = !{!3333, !3334, !3335, !3336, !3337, !3338, !3339}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3331, file: !717, line: 327, baseType: !315, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3331, file: !717, line: 328, baseType: !315, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3331, file: !717, line: 329, baseType: !315, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3331, file: !717, line: 331, baseType: !216, size: 32, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3331, file: !717, line: 332, baseType: !216, size: 32, offset: 224)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3331, file: !717, line: 333, baseType: !216, size: 32, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3331, file: !717, line: 335, baseType: !23, size: 32, offset: 288)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3328, file: !717, line: 339, baseType: !2532, size: 512, align: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, scope: !3295, file: !717, line: 341, baseType: !3342, size: 512, offset: 1024)
!3342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3295, file: !717, line: 341, size: 512, elements: !3343)
!3343 = !{!3344, !3353, !3359}
!3344 = !DIDerivedType(tag: DW_TAG_member, scope: !3342, file: !717, line: 342, baseType: !3345, size: 384)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3342, file: !717, line: 342, size: 384, elements: !3346)
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3345, file: !717, line: 343, baseType: !315, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3345, file: !717, line: 344, baseType: !315, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3345, file: !717, line: 346, baseType: !149, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3345, file: !717, line: 347, baseType: !149, size: 64, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3345, file: !717, line: 348, baseType: !149, size: 64, offset: 256)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3345, file: !717, line: 349, baseType: !149, size: 64, offset: 320)
!3353 = !DIDerivedType(tag: DW_TAG_member, scope: !3342, file: !717, line: 352, baseType: !3354, size: 256)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3342, file: !717, line: 352, size: 256, elements: !3355)
!3355 = !{!3356, !3357, !3358}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3354, file: !717, line: 353, baseType: !315, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3354, file: !717, line: 354, baseType: !315, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3354, file: !717, line: 356, baseType: !167, size: 128, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3342, file: !717, line: 359, baseType: !2532, size: 512, align: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3284, file: !30, line: 409, baseType: !3361, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!101, !341, !580}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3284, file: !30, line: 412, baseType: !3365, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!1464, !341, !3294}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3284, file: !30, line: 414, baseType: !3369, size: 64, offset: 256)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{null, !3372}
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !30, line: 310, flags: DIFlagFwdDecl)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3284, file: !30, line: 416, baseType: !3375, size: 64, offset: 320)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!101, !1303, !341, !506, !23, !3378, !1777}
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3284, file: !30, line: 419, baseType: !3380, size: 64, offset: 384)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!101, !1303, !341, !506, !23, !23, !2531, !149}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3284, file: !30, line: 424, baseType: !3384, size: 64, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!3387, !341, !3387}
!3387 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !168, line: 131, baseType: !418)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3284, file: !30, line: 425, baseType: !3389, size: 64, offset: 512)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{null, !3294, !312, !312}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3284, file: !30, line: 426, baseType: !3393, size: 64, offset: 576)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!1464, !3294, !710}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3284, file: !30, line: 427, baseType: !3397, size: 64, offset: 640)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !3294}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3284, file: !30, line: 428, baseType: !1597, size: 64, offset: 704)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3284, file: !30, line: 433, baseType: !3402, size: 64, offset: 768)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!101, !341, !3294, !3294, !66}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3284, file: !30, line: 435, baseType: !3406, size: 64, offset: 832)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!101, !3294}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3284, file: !30, line: 436, baseType: !3410, size: 64, offset: 896)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!1464, !3294, !312, !312}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3284, file: !30, line: 438, baseType: !3414, size: 64, offset: 960)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{null, !3294, !3417, !3417}
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3284, file: !30, line: 439, baseType: !3419, size: 64, offset: 1024)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!101, !341, !2531}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3284, file: !30, line: 442, baseType: !3423, size: 64, offset: 1088)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!101, !3426, !1303, !3428}
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !30, line: 66, flags: DIFlagFwdDecl)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3284, file: !30, line: 444, baseType: !1769, size: 64, offset: 1152)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3284, file: !30, line: 445, baseType: !3431, size: 64, offset: 1216)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!101, !1600, !1622}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !30, line: 486, baseType: !315, size: 64, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !342, file: !30, line: 487, baseType: !859, size: 320, offset: 960)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !342, file: !30, line: 488, baseType: !1812, size: 32, offset: 1280)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !342, file: !30, line: 489, baseType: !196, size: 32, offset: 1312)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !342, file: !30, line: 490, baseType: !167, size: 128, offset: 1344)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !342, file: !30, line: 491, baseType: !149, size: 64, offset: 1472)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !332, file: !291, line: 180, baseType: !3441, size: 64, offset: 320)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!297, !1303, !189, !331, !265, !506, !312}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !332, file: !291, line: 182, baseType: !3441, size: 64, offset: 384)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !332, file: !291, line: 184, baseType: !3446, size: 64, offset: 448)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!101, !1303, !189, !331, !1670}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !320, file: !291, line: 90, baseType: !3450, size: 64, offset: 192)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !320, file: !291, line: 91, baseType: !3452, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !281, file: !182, line: 120, baseType: !3454, size: 64, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!3457, !248}
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3459)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !74, line: 39, size: 384, elements: !3460)
!3460 = !{!3461, !3462, !3466, !3470, !3476, !3480}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3459, file: !74, line: 40, baseType: !73, size: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3459, file: !74, line: 41, baseType: !3463, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!1464}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3459, file: !74, line: 42, baseType: !3467, size: 64, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!149}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3459, file: !74, line: 43, baseType: !3471, size: 64, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!1901, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !74, line: 19, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3459, file: !74, line: 44, baseType: !3477, size: 64, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!1901}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3459, file: !74, line: 45, baseType: !3046, size: 64, offset: 320)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !281, file: !182, line: 121, baseType: !3482, size: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!1901, !248}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !281, file: !182, line: 122, baseType: !3486, size: 64, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{null, !248, !3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !181, file: !182, line: 70, baseType: !3492, size: 64, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !521, line: 190, size: 1152, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3586, !3587, !3588, !3589, !3590, !3593}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3493, file: !521, line: 191, baseType: !216, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3493, file: !521, line: 192, baseType: !216, size: 32, offset: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3493, file: !521, line: 202, baseType: !3492, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3493, file: !521, line: 203, baseType: !185, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3493, file: !521, line: 205, baseType: !1032, size: 192, align: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3493, file: !521, line: 207, baseType: !1901, size: 64, offset: 384)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3493, file: !521, line: 208, baseType: !23, size: 32, offset: 448)
!3502 = !DIDerivedType(tag: DW_TAG_member, scope: !3493, file: !521, line: 209, baseType: !3503, size: 256, offset: 512)
!3503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3493, file: !521, line: 209, size: 256, elements: !3504)
!3504 = !{!3505, !3514, !3518}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3503, file: !521, line: 210, baseType: !3506, size: 256)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !521, line: 153, size: 256, elements: !3507)
!3507 = !{!3508, !3509, !3510, !3513}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3506, file: !521, line: 154, baseType: !315, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3506, file: !521, line: 156, baseType: !1162, size: 64, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3506, file: !521, line: 162, baseType: !3511, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !521, line: 162, flags: DIFlagFwdDecl)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3506, file: !521, line: 167, baseType: !315, size: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3503, file: !521, line: 211, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !521, line: 170, size: 64, elements: !3516)
!3516 = !{!3517}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3515, file: !521, line: 171, baseType: !3492, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3503, file: !521, line: 212, baseType: !3519, size: 256)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !521, line: 174, size: 256, elements: !3520)
!3520 = !{!3521, !3581, !3584, !3585}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3519, file: !521, line: 175, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3524)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !521, line: 271, size: 768, elements: !3525)
!3525 = !{!3526, !3546, !3550, !3554, !3558, !3562, !3566, !3570, !3571, !3572, !3573, !3577}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3524, file: !521, line: 276, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!101, !3530}
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !521, line: 251, size: 1216, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3531, file: !521, line: 253, baseType: !3492, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3531, file: !521, line: 254, baseType: !1303, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3531, file: !521, line: 255, baseType: !618, size: 64, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3531, file: !521, line: 256, baseType: !149, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3531, file: !521, line: 259, baseType: !645, size: 256, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3531, file: !521, line: 260, baseType: !645, size: 256, offset: 512)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3531, file: !521, line: 261, baseType: !101, size: 32, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3531, file: !521, line: 262, baseType: !167, size: 128, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3531, file: !521, line: 263, baseType: !265, size: 64, offset: 960)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3531, file: !521, line: 265, baseType: !312, size: 64, offset: 1024)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3531, file: !521, line: 266, baseType: !1464, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3531, file: !521, line: 267, baseType: !1464, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3531, file: !521, line: 268, baseType: !1715, size: 64, offset: 1152)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3524, file: !521, line: 277, baseType: !3547, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{null, !3530}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3524, file: !521, line: 290, baseType: !3551, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!101, !618, !149}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3524, file: !521, line: 292, baseType: !3555, size: 64, offset: 192)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!149, !618, !1591}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3524, file: !521, line: 293, baseType: !3559, size: 64, offset: 256)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!149, !618, !149, !1591}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3524, file: !521, line: 294, baseType: !3563, size: 64, offset: 320)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !618, !149}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3524, file: !521, line: 296, baseType: !3567, size: 64, offset: 384)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!297, !3530, !265, !312, !506}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3524, file: !521, line: 306, baseType: !312, size: 64, offset: 448)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3524, file: !521, line: 313, baseType: !1464, size: 8, offset: 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3524, file: !521, line: 314, baseType: !3567, size: 64, offset: 576)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3524, file: !521, line: 317, baseType: !3574, size: 64, offset: 640)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!1648, !3530, !1650}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3524, file: !521, line: 320, baseType: !3578, size: 64, offset: 704)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!101, !3530, !1670}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3519, file: !521, line: 176, baseType: !3582, size: 64, offset: 64)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !521, line: 35, flags: DIFlagFwdDecl)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3519, file: !521, line: 177, baseType: !506, size: 64, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3519, file: !521, line: 178, baseType: !3492, size: 64, offset: 192)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3493, file: !521, line: 215, baseType: !149, size: 64, offset: 768)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3493, file: !521, line: 221, baseType: !418, size: 64, offset: 832)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3493, file: !521, line: 223, baseType: !235, size: 16, offset: 896)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3493, file: !521, line: 224, baseType: !307, size: 16, offset: 912)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3493, file: !521, line: 225, baseType: !3591, size: 64, offset: 960)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !521, line: 36, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3493, file: !521, line: 227, baseType: !959, size: 128, align: 64, offset: 1024)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !181, file: !182, line: 71, baseType: !3595, size: 32, offset: 448)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3596, line: 19, size: 32, elements: !3597)
!3596 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3597 = !{!3598}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3595, file: !3596, line: 20, baseType: !988, size: 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !181, file: !182, line: 73, baseType: !23, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !181, file: !182, line: 74, baseType: !23, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !181, file: !182, line: 75, baseType: !23, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !181, file: !182, line: 76, baseType: !23, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !181, file: !182, line: 77, baseType: !23, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !178, file: !22, line: 47, baseType: !162, size: 64, offset: 512)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !178, file: !22, line: 48, baseType: !189, size: 64, offset: 576)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !178, file: !22, line: 49, baseType: !3607, size: 64, offset: 640)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !22, line: 49, flags: DIFlagFwdDecl)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !178, file: !22, line: 50, baseType: !2055, size: 64, offset: 704)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !163, file: !22, line: 418, baseType: !3611, size: 64, offset: 1408)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !22, line: 53, size: 448, elements: !3613)
!3613 = !{!3614, !3615, !3620, !3624, !3628, !3632}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3612, file: !22, line: 54, baseType: !303, size: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3612, file: !22, line: 55, baseType: !3616, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!297, !3611, !3619, !265}
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3612, file: !22, line: 57, baseType: !3621, size: 64, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!297, !3611, !3619, !185, !312}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3612, file: !22, line: 59, baseType: !3625, size: 64, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{null, !162, !185}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3612, file: !22, line: 60, baseType: !3629, size: 64, offset: 320)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!101, !162}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3612, file: !22, line: 61, baseType: !3633, size: 64, offset: 384)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{null, !162}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !163, file: !22, line: 419, baseType: !185, size: 64, offset: 1472)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !163, file: !22, line: 420, baseType: !185, size: 64, offset: 1536)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !163, file: !22, line: 421, baseType: !189, size: 64, offset: 1600)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !163, file: !22, line: 424, baseType: !3640, size: 64, offset: 1664)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3642)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !22, line: 424, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !163, file: !22, line: 425, baseType: !3644, size: 64, offset: 1728)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !163, file: !22, line: 426, baseType: !23, size: 32, offset: 1792)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !163, file: !22, line: 435, baseType: !645, size: 256, offset: 1856)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !163, file: !22, line: 437, baseType: !3649, size: 64, offset: 2112)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3651, line: 69, size: 320, elements: !3652)
!3651 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3652 = !{!3653, !3654, !3655, !3672, !3674, !3678, !3679}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3650, file: !3651, line: 70, baseType: !185, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3650, file: !3651, line: 71, baseType: !162, size: 64, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3650, file: !3651, line: 72, baseType: !3656, size: 64, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3658)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3651, line: 47, size: 256, elements: !3659)
!3659 = !{!3660, !3661, !3667, !3671}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3658, file: !3651, line: 49, baseType: !23, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3658, file: !3651, line: 51, baseType: !3662, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!101, !185, !3665}
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3650)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3658, file: !3651, line: 53, baseType: !3668, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!101, !265, !3665}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3658, file: !3651, line: 55, baseType: !3046, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3650, file: !3651, line: 73, baseType: !3673, size: 16, offset: 192)
!3673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3650, file: !3651, line: 74, baseType: !3675, size: 8, offset: 208)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !225, line: 16, baseType: !3676)
!3676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !227, line: 20, baseType: !3677)
!3677 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3650, file: !3651, line: 75, baseType: !224, size: 8, offset: 216)
!3679 = !DIDerivedType(tag: DW_TAG_member, scope: !3650, file: !3651, line: 76, baseType: !3680, size: 64, offset: 256)
!3680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3650, file: !3651, line: 76, size: 64, elements: !3681)
!3681 = !{!3682, !3683, !3690}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3680, file: !3651, line: 77, baseType: !149, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3680, file: !3651, line: 78, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3686)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3651, line: 86, size: 128, elements: !3687)
!3687 = !{!3688, !3689}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3686, file: !3651, line: 87, baseType: !23, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3686, file: !3651, line: 88, baseType: !265, size: 64, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3680, file: !3651, line: 79, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3693)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3651, line: 92, size: 256, elements: !3694)
!3694 = !{!3695, !3696, !3697, !3698, !3699}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3693, file: !3651, line: 94, baseType: !23, size: 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3693, file: !3651, line: 95, baseType: !23, size: 32, offset: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3693, file: !3651, line: 96, baseType: !968, size: 64, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3693, file: !3651, line: 97, baseType: !3656, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3693, file: !3651, line: 98, baseType: !149, size: 64, offset: 192)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !163, file: !22, line: 438, baseType: !23, size: 32, offset: 2176)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !163, file: !22, line: 441, baseType: !23, size: 32, offset: 2208)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !163, file: !22, line: 442, baseType: !3640, size: 64, offset: 2240)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !163, file: !22, line: 443, baseType: !3644, size: 64, offset: 2304)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !163, file: !22, line: 444, baseType: !1464, size: 8, offset: 2368)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !163, file: !22, line: 451, baseType: !1464, size: 8, offset: 2376)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !163, file: !22, line: 454, baseType: !23, size: 32, offset: 2400)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !163, file: !22, line: 455, baseType: !3708, size: 64, offset: 2432)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3710, line: 23, size: 96, elements: !3711)
!3710 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3711 = !{!3712, !3713, !3714}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3709, file: !3710, line: 24, baseType: !101, size: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3709, file: !3710, line: 24, baseType: !101, size: 32, offset: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3709, file: !3710, line: 24, baseType: !101, size: 32, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !163, file: !22, line: 458, baseType: !3716, size: 64, offset: 2496)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!101}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !163, file: !22, line: 460, baseType: !3720, size: 4032, align: 512, offset: 2560)
!3720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3721, size: 4032, elements: !3735)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !22, line: 362, size: 576, elements: !3722)
!3722 = !{!3723, !3724, !3725}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3721, file: !22, line: 363, baseType: !149, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3721, file: !22, line: 364, baseType: !23, size: 32, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3721, file: !22, line: 367, baseType: !3726, size: 448, offset: 128)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !22, line: 319, size: 448, elements: !3727)
!3727 = !{!3728, !3729}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3726, file: !22, line: 320, baseType: !162, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3726, file: !22, line: 321, baseType: !3730, size: 384, offset: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3731, line: 40, size: 384, elements: !3732)
!3731 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3732 = !{!3733}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3730, file: !3731, line: 41, baseType: !3734, size: 384, align: 64)
!3734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 384, align: 64, elements: !2189)
!3735 = !{!3736}
!3736 = !DISubrange(count: 7)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !163, file: !22, line: 463, baseType: !3738, size: 192, offset: 6592)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3739, line: 8, size: 192, elements: !3740)
!3739 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3740 = !{!3741, !3742, !3743}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3738, file: !3739, line: 10, baseType: !23, size: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3738, file: !3739, line: 11, baseType: !612, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3738, file: !3739, line: 12, baseType: !3744, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3746, line: 59, size: 48, elements: !3747)
!3746 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3747 = !{!3748, !3749, !3750, !3751, !3752, !3753}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3745, file: !3746, line: 60, baseType: !1918, size: 16)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3745, file: !3746, line: 61, baseType: !1918, size: 16, offset: 16)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3745, file: !3746, line: 63, baseType: !23, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3745, file: !3746, line: 64, baseType: !23, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3745, file: !3746, line: 65, baseType: !23, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3745, file: !3746, line: 66, baseType: !23, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !163, file: !22, line: 465, baseType: !315, size: 64, offset: 6784)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !163, file: !22, line: 469, baseType: !23, size: 32, offset: 6848)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !163, file: !22, line: 470, baseType: !167, size: 128, offset: 6912)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !163, file: !22, line: 471, baseType: !3758, size: 64, offset: 7040)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3760, line: 33, size: 96, elements: !3761)
!3760 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3761 = !{!3762, !3763, !3764, !3765}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3759, file: !3760, line: 37, baseType: !101, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3759, file: !3760, line: 43, baseType: !101, size: 32, offset: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3759, file: !3760, line: 45, baseType: !235, size: 16, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3759, file: !3760, line: 47, baseType: !235, size: 16, offset: 80)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !163, file: !22, line: 476, baseType: !3767, size: 64, offset: 7104)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !22, line: 378, size: 256, elements: !3769)
!3769 = !{!3770, !3786, !3787, !3788}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3768, file: !22, line: 379, baseType: !3771, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3773, line: 204, baseType: !3774)
!3773 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3773, line: 197, size: 192, elements: !3775)
!3775 = !{!3776, !3778, !3779, !3780, !3782, !3784}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3774, file: !3773, line: 198, baseType: !3777, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3773, line: 21, baseType: !415)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3774, file: !3773, line: 199, baseType: !159, size: 8, offset: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3774, file: !3773, line: 200, baseType: !159, size: 8, offset: 40)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3774, file: !3773, line: 201, baseType: !3781, size: 16, offset: 48)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3773, line: 17, baseType: !234)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3774, file: !3773, line: 202, baseType: !3783, size: 64, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3773, line: 16, baseType: !419)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3774, file: !3773, line: 203, baseType: !3785, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3773, line: 22, baseType: !419)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3768, file: !22, line: 380, baseType: !23, size: 32, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3768, file: !22, line: 381, baseType: !265, size: 64, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3768, file: !22, line: 382, baseType: !265, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !163, file: !22, line: 477, baseType: !3768, size: 256, offset: 7168)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !163, file: !22, line: 480, baseType: !3791, size: 64, offset: 7424)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !22, line: 480, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !163, file: !22, line: 483, baseType: !3794, size: 64, offset: 7488)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !22, line: 483, flags: DIFlagFwdDecl)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !163, file: !22, line: 488, baseType: !265, size: 64, offset: 7552)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !163, file: !22, line: 492, baseType: !149, size: 64, offset: 7616)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !163, file: !22, line: 493, baseType: !23, size: 32, offset: 7680)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !163, file: !22, line: 495, baseType: !149, size: 64, offset: 7744)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !163, file: !22, line: 496, baseType: !23, size: 32, offset: 7808)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !163, file: !22, line: 499, baseType: !23, size: 32, offset: 7840)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !163, file: !22, line: 500, baseType: !3803, size: 64, offset: 7872)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3805, line: 45, baseType: !3806)
!3805 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !163, file: !22, line: 503, baseType: !23, size: 32, offset: 7936)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !163, file: !22, line: 504, baseType: !3809, size: 64, offset: 8000)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3812, line: 96, size: 192, elements: !3813)
!3812 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3813 = !{!3814, !3815, !3858, !3860}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3811, file: !3812, line: 97, baseType: !23, size: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3811, file: !3812, line: 98, baseType: !3816, size: 64, offset: 64)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3812, line: 24, size: 3072, elements: !3818)
!3818 = !{!3819, !3821, !3822, !3823, !3824, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3855, !3856, !3857}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3817, file: !3812, line: 26, baseType: !3820, size: 128)
!3820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 128, elements: !2189)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3817, file: !3812, line: 27, baseType: !3820, size: 128, offset: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3817, file: !3812, line: 28, baseType: !101, size: 32, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3817, file: !3812, line: 31, baseType: !196, size: 32, align: 512, offset: 512)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3817, file: !3812, line: 32, baseType: !3825, size: 960, offset: 576)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3826, line: 206, size: 960, elements: !3827)
!3826 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3827 = !{!3828, !3829, !3832, !3834, !3835, !3837}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3825, file: !3826, line: 207, baseType: !962, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3825, file: !3826, line: 208, baseType: !3830, size: 256, offset: 64)
!3830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3831, size: 256, elements: !1352)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3825, file: !3826, line: 209, baseType: !3833, size: 256, offset: 320)
!3833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 256, elements: !1352)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3825, file: !3826, line: 213, baseType: !301, size: 64, offset: 576)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3825, file: !3826, line: 215, baseType: !3836, size: 256, offset: 640)
!3836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 256, elements: !1352)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3825, file: !3826, line: 216, baseType: !224, size: 8, offset: 896)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3817, file: !3812, line: 33, baseType: !315, size: 64, offset: 1536)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3817, file: !3812, line: 34, baseType: !315, size: 64, offset: 1600)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3817, file: !3812, line: 35, baseType: !1464, size: 8, offset: 1664)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3817, file: !3812, line: 36, baseType: !2684, size: 320, offset: 1728)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3817, file: !3812, line: 37, baseType: !1940, size: 256, offset: 2048)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3817, file: !3812, line: 38, baseType: !959, size: 128, align: 64, offset: 2304)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3817, file: !3812, line: 39, baseType: !3845, size: 64, offset: 2432)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3812, line: 49, size: 768, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853, !3854}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3846, file: !3812, line: 50, baseType: !196, size: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3846, file: !3812, line: 51, baseType: !3833, size: 256, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3846, file: !3812, line: 53, baseType: !3833, size: 256, offset: 320)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3846, file: !3812, line: 54, baseType: !315, size: 64, offset: 576)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3846, file: !3812, line: 55, baseType: !3845, size: 64, offset: 640)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3846, file: !3812, line: 56, baseType: !101, size: 32, offset: 704)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3846, file: !3812, line: 57, baseType: !101, size: 32, offset: 736)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3817, file: !3812, line: 40, baseType: !315, size: 64, offset: 2496)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3817, file: !3812, line: 42, baseType: !101, size: 32, offset: 2560)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3817, file: !3812, line: 43, baseType: !3810, size: 64, offset: 2624)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3811, file: !3812, line: 99, baseType: !3859, offset: 128)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !548, line: 211, elements: !549)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3811, file: !3812, line: 100, baseType: !3861, size: 64, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3812, line: 63, size: 3008, elements: !3863)
!3863 = !{!3864, !3865, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3893}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3862, file: !3812, line: 64, baseType: !3845, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3862, file: !3812, line: 65, baseType: !3866, size: 192, offset: 64)
!3866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3845, size: 192, elements: !266)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3862, file: !3812, line: 67, baseType: !101, size: 32, offset: 256)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3862, file: !3812, line: 68, baseType: !645, size: 256, offset: 320)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3862, file: !3812, line: 69, baseType: !196, size: 32, offset: 576)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3862, file: !3812, line: 70, baseType: !645, size: 256, offset: 640)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3862, file: !3812, line: 71, baseType: !315, size: 64, offset: 896)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3862, file: !3812, line: 72, baseType: !315, size: 64, offset: 960)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3862, file: !3812, line: 73, baseType: !315, size: 64, offset: 1024)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3862, file: !3812, line: 74, baseType: !315, size: 64, offset: 1088)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3862, file: !3812, line: 75, baseType: !315, size: 64, offset: 1152)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3862, file: !3812, line: 76, baseType: !315, size: 64, offset: 1216)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3862, file: !3812, line: 77, baseType: !315, size: 64, offset: 1280)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3862, file: !3812, line: 78, baseType: !315, size: 64, offset: 1344)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3862, file: !3812, line: 79, baseType: !1464, size: 8, offset: 1408)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3862, file: !3812, line: 80, baseType: !315, size: 64, offset: 1472)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3862, file: !3812, line: 81, baseType: !645, size: 256, offset: 1536)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3862, file: !3812, line: 82, baseType: !2056, size: 256, offset: 1792)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3862, file: !3812, line: 84, baseType: !216, size: 32, offset: 2048)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3862, file: !3812, line: 87, baseType: !315, size: 64, offset: 2112)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3862, file: !3812, line: 88, baseType: !315, size: 64, offset: 2176)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3862, file: !3812, line: 89, baseType: !3887, size: 704, offset: 2240)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1941, line: 111, size: 704, elements: !3888)
!3888 = !{!3889, !3890, !3891, !3892}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3887, file: !1941, line: 112, baseType: !1940, size: 256)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3887, file: !1941, line: 113, baseType: !2684, size: 320, offset: 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3887, file: !1941, line: 116, baseType: !2978, size: 64, offset: 576)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3887, file: !1941, line: 117, baseType: !101, size: 32, offset: 640)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3862, file: !3812, line: 90, baseType: !3810, size: 64, offset: 2944)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !163, file: !22, line: 515, baseType: !3895, size: 64, offset: 8064)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3897, line: 117, size: 128, elements: !3898)
!3897 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3898 = !{!3899, !3900, !3901}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3896, file: !3897, line: 118, baseType: !1407, size: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3896, file: !3897, line: 119, baseType: !1407, size: 32, offset: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3896, file: !3897, line: 120, baseType: !301, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !163, file: !22, line: 516, baseType: !23, size: 32, offset: 8128)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !163, file: !22, line: 519, baseType: !23, size: 32, offset: 8160)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !163, file: !22, line: 520, baseType: !3905, size: 64, offset: 8192)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !163, file: !22, line: 523, baseType: !3907, size: 64, offset: 8256)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !22, line: 523, flags: DIFlagFwdDecl)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !163, file: !22, line: 524, baseType: !23, size: 32, offset: 8320)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !163, file: !22, line: 525, baseType: !3912, size: 64, offset: 8384)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !22, line: 525, flags: DIFlagFwdDecl)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !163, file: !22, line: 526, baseType: !23, size: 32, offset: 8448)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !163, file: !22, line: 533, baseType: !149, size: 64, offset: 8512)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !163, file: !22, line: 534, baseType: !23, size: 32, offset: 8576)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !163, file: !22, line: 535, baseType: !3919, size: 64, offset: 8640)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !163, file: !22, line: 536, baseType: !23, size: 32, offset: 8704)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !163, file: !22, line: 539, baseType: !101, size: 32, offset: 8736)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !163, file: !22, line: 540, baseType: !3923, size: 64, offset: 8768)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3925, line: 32, size: 64, elements: !3926)
!3925 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3926 = !{!3927, !3928}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3924, file: !3925, line: 33, baseType: !1407, size: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3924, file: !3925, line: 34, baseType: !1407, size: 32, offset: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !163, file: !22, line: 563, baseType: !167, size: 128, offset: 8832)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !163, file: !22, line: 565, baseType: !167, size: 128, offset: 8960)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !163, file: !22, line: 568, baseType: !3932, size: 64, offset: 9088)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !163, file: !22, line: 570, baseType: !216, size: 32, offset: 9152)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !152, line: 50, baseType: !3935, size: 512, offset: 128)
!3935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !270)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !151, file: !152, line: 51, baseType: !167, size: 128, offset: 640)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "use_lock", scope: !151, file: !152, line: 52, baseType: !3938, size: 32, offset: 768)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_use_lock_t", file: !3939, line: 7, baseType: !216)
!3939 = !DIFile(filename: "sound/core/seq/seq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "87f5d997a3ce18199b25dc23b768dfb6")
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "c_src", scope: !151, file: !152, line: 55, baseType: !3941, size: 704, offset: 832)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_port_subs_info", file: !152, line: 36, size: 704, elements: !3942)
!3942 = !{!3943, !3944, !3945, !3946, !3947, !3948, !3963}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !3941, file: !152, line: 37, baseType: !167, size: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3941, file: !152, line: 38, baseType: !23, size: 32, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3941, file: !152, line: 39, baseType: !23, size: 1, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "list_mutex", scope: !3941, file: !152, line: 40, baseType: !859, size: 320, offset: 192)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3941, file: !152, line: 41, baseType: !1323, size: 64, offset: 512)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3941, file: !152, line: 42, baseType: !3949, size: 64, offset: 576)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!101, !149, !3952}
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_port_subscribe", file: !156, line: 567, size: 640, elements: !3954)
!3954 = !{!3955, !3956, !3957, !3958, !3959, !3960, !3962}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "sender", scope: !3953, file: !156, line: 568, baseType: !155, size: 16)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !3953, file: !156, line: 569, baseType: !155, size: 16, offset: 16)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "voices", scope: !3953, file: !156, line: 570, baseType: !23, size: 32, offset: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3953, file: !156, line: 571, baseType: !23, size: 32, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3953, file: !156, line: 572, baseType: !159, size: 8, offset: 96)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3953, file: !156, line: 573, baseType: !3961, size: 24, offset: 104)
!3961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 24, elements: !266)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3953, file: !156, line: 574, baseType: !3935, size: 512, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3941, file: !152, line: 43, baseType: !3949, size: 64, offset: 640)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "c_dest", scope: !151, file: !152, line: 56, baseType: !3941, size: 704, offset: 1536)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "event_input", scope: !151, file: !152, line: 58, baseType: !3966, size: 64, offset: 2240)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!101, !3969, !101, !149, !101, !101}
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_event", file: !156, line: 271, size: 224, elements: !3971)
!3971 = !{!3972, !3974, !3975, !3976, !3977, !3987, !3988, !3989}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3970, file: !156, line: 272, baseType: !3973, size: 8)
!3973 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_event_type_t", file: !156, line: 139, baseType: !159)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3970, file: !156, line: 273, baseType: !159, size: 8, offset: 8)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !3970, file: !156, line: 274, baseType: !4, size: 8, offset: 16)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3970, file: !156, line: 276, baseType: !159, size: 8, offset: 24)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3970, file: !156, line: 277, baseType: !3978, size: 64, offset: 32)
!3978 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_seq_timestamp", file: !156, line: 225, size: 64, elements: !3979)
!3979 = !{!3980, !3982}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !3978, file: !156, line: 226, baseType: !3981, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_tick_time_t", file: !156, line: 223, baseType: !23)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3978, file: !156, line: 227, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_real_time", file: !156, line: 218, size: 64, elements: !3984)
!3984 = !{!3985, !3986}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3983, file: !156, line: 219, baseType: !23, size: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3983, file: !156, line: 220, baseType: !23, size: 32, offset: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !3970, file: !156, line: 279, baseType: !155, size: 16, offset: 96)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !3970, file: !156, line: 280, baseType: !155, size: 16, offset: 112)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3970, file: !156, line: 282, baseType: !3990, size: 96, offset: 128)
!3990 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_seq_event_data", file: !156, line: 256, size: 96, elements: !3991)
!3991 = !{!3992, !4000, !4009, !4014, !4019, !4024, !4044, !4045, !4046, !4051, !4056}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !3990, file: !156, line: 257, baseType: !3993, size: 64)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_note", file: !156, line: 180, size: 64, elements: !3994)
!3994 = !{!3995, !3996, !3997, !3998, !3999}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !3993, file: !156, line: 181, baseType: !159, size: 8)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !3993, file: !156, line: 182, baseType: !159, size: 8, offset: 8)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "velocity", scope: !3993, file: !156, line: 183, baseType: !159, size: 8, offset: 16)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "off_velocity", scope: !3993, file: !156, line: 184, baseType: !159, size: 8, offset: 24)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !3993, file: !156, line: 185, baseType: !23, size: 32, offset: 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !3990, file: !156, line: 258, baseType: !4001, size: 96)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_ctrl", file: !156, line: 189, size: 96, elements: !4002)
!4002 = !{!4003, !4004, !4005, !4006, !4007, !4008}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !4001, file: !156, line: 190, baseType: !159, size: 8)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "unused1", scope: !4001, file: !156, line: 191, baseType: !159, size: 8, offset: 8)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !4001, file: !156, line: 191, baseType: !159, size: 8, offset: 16)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !4001, file: !156, line: 191, baseType: !159, size: 8, offset: 24)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4001, file: !156, line: 192, baseType: !23, size: 32, offset: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4001, file: !156, line: 193, baseType: !101, size: 32, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "raw8", scope: !3990, file: !156, line: 259, baseType: !4010, size: 96)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_raw8", file: !156, line: 197, size: 96, elements: !4011)
!4011 = !{!4012}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4010, file: !156, line: 198, baseType: !4013, size: 96)
!4013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 96, elements: !2825)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "raw32", scope: !3990, file: !156, line: 260, baseType: !4015, size: 96)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_raw32", file: !156, line: 202, size: 96, elements: !4016)
!4016 = !{!4017}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4015, file: !156, line: 203, baseType: !4018, size: 96)
!4018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 96, elements: !266)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !3990, file: !156, line: 261, baseType: !4020, size: 96)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_ext", file: !156, line: 207, size: 96, elements: !4021)
!4021 = !{!4022, !4023}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4020, file: !156, line: 208, baseType: !23, size: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4020, file: !156, line: 209, baseType: !149, size: 64, offset: 32)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3990, file: !156, line: 262, baseType: !4025, size: 96)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_queue_control", file: !156, line: 236, size: 96, elements: !4026)
!4026 = !{!4027, !4028, !4029}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4025, file: !156, line: 237, baseType: !159, size: 8)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4025, file: !156, line: 238, baseType: !3961, size: 24, offset: 8)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4025, file: !156, line: 246, baseType: !4030, size: 64, offset: 32)
!4030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4025, file: !156, line: 239, size: 64, elements: !4031)
!4031 = !{!4032, !4033, !4034, !4035, !4040, !4042}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4030, file: !156, line: 240, baseType: !101, size: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4030, file: !156, line: 241, baseType: !3978, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !4030, file: !156, line: 242, baseType: !23, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "skew", scope: !4030, file: !156, line: 243, baseType: !4036, size: 64)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_queue_skew", file: !156, line: 230, size: 64, elements: !4037)
!4037 = !{!4038, !4039}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4036, file: !156, line: 231, baseType: !23, size: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4036, file: !156, line: 232, baseType: !23, size: 32, offset: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "d32", scope: !4030, file: !156, line: 244, baseType: !4041, size: 64)
!4041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !2189)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "d8", scope: !4030, file: !156, line: 245, baseType: !4043, size: 64)
!4043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 64, elements: !10)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3990, file: !156, line: 263, baseType: !3978, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3990, file: !156, line: 264, baseType: !155, size: 16)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3990, file: !156, line: 265, baseType: !4047, size: 32)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_connect", file: !156, line: 148, size: 32, elements: !4048)
!4048 = !{!4049, !4050}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "sender", scope: !4047, file: !156, line: 149, baseType: !155, size: 16)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !4047, file: !156, line: 150, baseType: !155, size: 16, offset: 16)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !3990, file: !156, line: 266, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_result", file: !156, line: 212, size: 64, elements: !4053)
!4053 = !{!4054, !4055}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4052, file: !156, line: 213, baseType: !101, size: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !4052, file: !156, line: 214, baseType: !101, size: 32, offset: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "quote", scope: !3990, file: !156, line: 267, baseType: !4057, size: 96)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_quote", file: !156, line: 250, size: 96, elements: !4058)
!4058 = !{!4059, !4060, !4061}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !4057, file: !156, line: 251, baseType: !155, size: 16)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4057, file: !156, line: 252, baseType: !235, size: 16, offset: 16)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4057, file: !156, line: 253, baseType: !3969, size: 64, offset: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !151, file: !152, line: 60, baseType: !3046, size: 64, offset: 2304)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !151, file: !152, line: 61, baseType: !149, size: 64, offset: 2368)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !151, file: !152, line: 62, baseType: !23, size: 1, offset: 2432, flags: DIFlagBitField, extraData: i64 2432)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "timestamping", scope: !151, file: !152, line: 63, baseType: !23, size: 1, offset: 2433, flags: DIFlagBitField, extraData: i64 2432)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "time_real", scope: !151, file: !152, line: 64, baseType: !23, size: 1, offset: 2434, flags: DIFlagBitField, extraData: i64 2432)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "time_queue", scope: !151, file: !152, line: 65, baseType: !101, size: 32, offset: 2464)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !151, file: !152, line: 68, baseType: !23, size: 32, offset: 2496)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !152, line: 69, baseType: !23, size: 32, offset: 2528)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "midi_channels", scope: !151, file: !152, line: 72, baseType: !101, size: 32, offset: 2560)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "midi_voices", scope: !151, file: !152, line: 73, baseType: !101, size: 32, offset: 2592)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "synth_voices", scope: !151, file: !152, line: 74, baseType: !101, size: 32, offset: 2624)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !151, file: !152, line: 77, baseType: !159, size: 8, offset: 2656)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "ump_group", scope: !151, file: !152, line: 78, baseType: !159, size: 8, offset: 2664)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_subscribers", file: !152, line: 29, size: 960, elements: !4077)
!4077 = !{!4078, !4079, !4080, !4081}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4076, file: !152, line: 30, baseType: !3953, size: 640)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "src_list", scope: !4076, file: !152, line: 31, baseType: !167, size: 128, offset: 640)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "dest_list", scope: !4076, file: !152, line: 32, baseType: !167, size: 128, offset: 768)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !4076, file: !152, line: 33, baseType: !216, size: 32, offset: 896)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !101)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !171)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4085)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_client_type_t", file: !156, line: 341, baseType: !101)
!4089 = !{!0, !7, !12, !17, !4090, !4092, !4097, !4105, !4110}
!4090 = !DIGlobalVariableExpression(var: !4091, expr: !DIExpression())
!4091 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_seq_event_port_detach272", scope: !19, file: !2, line: 741, type: !149, isLocal: true, isDefinition: true)
!4092 = !DIGlobalVariableExpression(var: !4093, expr: !DIExpression())
!4093 = distinct !DIGlobalVariable(scope: null, file: !139, line: 480, type: !4094, isLocal: true, isDefinition: true)
!4094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4095)
!4095 = !{!4096}
!4096 = !DISubrange(count: 21)
!4097 = !DIGlobalVariableExpression(var: !4098, expr: !DIExpression())
!4098 = distinct !DIGlobalVariable(name: "__key", scope: !4099, file: !2, line: 108, type: !547, isLocal: true, isDefinition: true)
!4099 = distinct !DISubprogram(name: "port_subs_info_init", scope: !2, file: !2, line: 102, type: !4100, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4103)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{null, !4102}
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!4103 = !{!4104}
!4104 = !DILocalVariable(name: "grp", arg: 1, scope: !4099, file: !2, line: 102, type: !4102)
!4105 = !DIGlobalVariableExpression(var: !4106, expr: !DIExpression())
!4106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !4107, isLocal: true, isDefinition: true)
!4107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !4108)
!4108 = !{!4109}
!4109 = !DISubrange(count: 17)
!4110 = !DIGlobalVariableExpression(var: !4111, expr: !DIExpression())
!4111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !4112, isLocal: true, isDefinition: true)
!4112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !4113)
!4113 = !{!4114}
!4114 = !DISubrange(count: 27)
!4115 = !{i32 7, !"Dwarf Version", i32 5}
!4116 = !{i32 2, !"Debug Info Version", i32 3}
!4117 = !{i32 1, !"wchar_size", i32 2}
!4118 = !{i32 8, !"cf-protection-branch", i32 1}
!4119 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4120 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4121 = !{i32 1, !"Code Model", i32 2}
!4122 = !{i32 1, !"override-stack-alignment", i32 8}
!4123 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4124 = distinct !DISubprogram(name: "snd_seq_port_use_ptr", scope: !2, file: !2, line: 44, type: !4125, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4625)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!150, !4127, !101}
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_client", file: !4129, line: 33, size: 2240, elements: !4130)
!4129 = !DIFile(filename: "sound/core/seq/seq_clientmgr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c506f6e67a2e93cc3dd551e76dd710da")
!4130 = !{!4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4185, !4624}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4128, file: !4129, line: 34, baseType: !4088, size: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "accept_input", scope: !4128, file: !4129, line: 35, baseType: !23, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "accept_output", scope: !4128, file: !4129, line: 36, baseType: !23, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "midi_version", scope: !4128, file: !4129, line: 37, baseType: !23, size: 32, offset: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "user_pversion", scope: !4128, file: !4129, line: 38, baseType: !23, size: 32, offset: 96)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4128, file: !4129, line: 39, baseType: !3935, size: 512, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4128, file: !4129, line: 40, baseType: !101, size: 32, offset: 640)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4128, file: !4129, line: 41, baseType: !23, size: 32, offset: 672)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "event_filter", scope: !4128, file: !4129, line: 42, baseType: !3833, size: 256, offset: 704)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "group_filter", scope: !4128, file: !4129, line: 43, baseType: !235, size: 16, offset: 960)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "use_lock", scope: !4128, file: !4129, line: 44, baseType: !3938, size: 32, offset: 992)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "event_lost", scope: !4128, file: !4129, line: 45, baseType: !101, size: 32, offset: 1024)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "num_ports", scope: !4128, file: !4129, line: 47, baseType: !101, size: 32, offset: 1056)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "ports_list_head", scope: !4128, file: !4129, line: 48, baseType: !167, size: 128, offset: 1088)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "ports_lock", scope: !4128, file: !4129, line: 49, baseType: !1323, size: 64, offset: 1216)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "ports_mutex", scope: !4128, file: !4129, line: 50, baseType: !645, size: 256, offset: 1280)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl_mutex", scope: !4128, file: !4129, line: 51, baseType: !645, size: 256, offset: 1536)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "convert32", scope: !4128, file: !4129, line: 52, baseType: !101, size: 32, offset: 1792)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "ump_endpoint_port", scope: !4128, file: !4129, line: 53, baseType: !101, size: 32, offset: 1824)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !4128, file: !4129, line: 56, baseType: !4151, size: 64, offset: 1856)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_pool", file: !4153, line: 43, size: 704, elements: !4154)
!4153 = !DIFile(filename: "sound/core/seq/seq_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "00d141c657921506643a42c8b258f674")
!4154 = !{!4155, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4152, file: !4153, line: 44, baseType: !4156, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_event_cell", file: !4153, line: 29, size: 384, elements: !4158)
!4158 = !{!4159, !4171, !4172}
!4159 = !DIDerivedType(tag: DW_TAG_member, scope: !4157, file: !4153, line: 30, baseType: !4160, size: 224)
!4160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4157, file: !4153, line: 30, size: 224, elements: !4161)
!4161 = !{!4162, !4163}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4160, file: !4153, line: 31, baseType: !3970, size: 224)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "ump", scope: !4160, file: !4153, line: 32, baseType: !4164, size: 224)
!4164 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__snd_seq_event", file: !4153, line: 15, size: 224, elements: !4165)
!4165 = !{!4166, !4167}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !4164, file: !4153, line: 16, baseType: !3970, size: 224)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4164, file: !4153, line: 25, baseType: !4168, size: 224)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4164, file: !4153, line: 20, size: 224, elements: !4169)
!4169 = !{!4170}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4168, file: !4153, line: 21, baseType: !3970, size: 224)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !4157, file: !4153, line: 34, baseType: !4151, size: 64, offset: 256)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4157, file: !4153, line: 35, baseType: !4156, size: 64, offset: 320)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4152, file: !4153, line: 45, baseType: !4156, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "total_elements", scope: !4152, file: !4153, line: 47, baseType: !101, size: 32, offset: 128)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !4152, file: !4153, line: 48, baseType: !216, size: 32, offset: 160)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4152, file: !4153, line: 50, baseType: !101, size: 32, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "room", scope: !4152, file: !4153, line: 51, baseType: !101, size: 32, offset: 224)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !4152, file: !4153, line: 53, baseType: !101, size: 32, offset: 256)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "max_used", scope: !4152, file: !4153, line: 56, baseType: !101, size: 32, offset: 288)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_nopool", scope: !4152, file: !4153, line: 57, baseType: !101, size: 32, offset: 320)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_failures", scope: !4152, file: !4153, line: 58, baseType: !101, size: 32, offset: 352)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_success", scope: !4152, file: !4153, line: 59, baseType: !101, size: 32, offset: 384)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "output_sleep", scope: !4152, file: !4153, line: 62, baseType: !952, size: 192, offset: 448)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4152, file: !4153, line: 65, baseType: !196, size: 32, offset: 640)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4128, file: !4129, line: 61, baseType: !4186, size: 256, offset: 1920)
!4186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4128, file: !4129, line: 58, size: 256, elements: !4187)
!4187 = !{!4188, !4207}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !4186, file: !4129, line: 59, baseType: !4189, size: 256)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_user_client", file: !4129, line: 17, size: 256, elements: !4190)
!4190 = !{!4191, !4192, !4193, !4206}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4189, file: !4129, line: 18, baseType: !1303, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4189, file: !4129, line: 20, baseType: !1344, size: 64, offset: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "fifo", scope: !4189, file: !4129, line: 23, baseType: !4194, size: 64, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_fifo", file: !4196, line: 15, size: 576, elements: !4197)
!4196 = !DIFile(filename: "sound/core/seq/seq_fifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f9a6a9d1550e1802b6f3ad57d2f25ac")
!4197 = !{!4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !4195, file: !4196, line: 16, baseType: !4151, size: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4195, file: !4196, line: 17, baseType: !4156, size: 64, offset: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !4195, file: !4196, line: 18, baseType: !4156, size: 64, offset: 128)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "cells", scope: !4195, file: !4196, line: 19, baseType: !101, size: 32, offset: 192)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4195, file: !4196, line: 20, baseType: !196, size: 32, offset: 224)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "use_lock", scope: !4195, file: !4196, line: 21, baseType: !3938, size: 32, offset: 256)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "input_sleep", scope: !4195, file: !4196, line: 22, baseType: !952, size: 192, offset: 320)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !4195, file: !4196, line: 23, baseType: !216, size: 32, offset: 512)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_pool_size", scope: !4189, file: !4129, line: 24, baseType: !101, size: 32, offset: 192)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "kernel", scope: !4186, file: !4129, line: 60, baseType: !4208, size: 64)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_kernel_client", file: !4129, line: 27, size: 64, elements: !4209)
!4209 = !{!4210}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4208, file: !4129, line: 29, baseType: !4211, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !4213, line: 80, size: 12288, elements: !4214)
!4213 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!4214 = !{!4215, !4216, !4217, !4218, !4219, !4223, !4224, !4225, !4229, !4230, !4231, !4235, !4236, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4599, !4602, !4603, !4606, !4607, !4608, !4609, !4610, !4611, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4212, file: !4213, line: 81, baseType: !101, size: 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4212, file: !4213, line: 84, baseType: !2107, size: 128, offset: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4212, file: !4213, line: 85, baseType: !2107, size: 128, offset: 160)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !4212, file: !4213, line: 86, baseType: !2946, size: 256, offset: 288)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !4212, file: !4213, line: 87, baseType: !4220, size: 640, offset: 544)
!4220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !4221)
!4221 = !{!4222}
!4222 = !DISubrange(count: 80)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !4212, file: !4213, line: 88, baseType: !2946, size: 256, offset: 1184)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !4212, file: !4213, line: 89, baseType: !4220, size: 640, offset: 1440)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !4212, file: !4213, line: 90, baseType: !4226, size: 1024, offset: 2080)
!4226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4227)
!4227 = !{!4228}
!4228 = !DISubrange(count: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4212, file: !4213, line: 92, baseType: !162, size: 64, offset: 3136)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4212, file: !4213, line: 94, baseType: !149, size: 64, offset: 3200)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4212, file: !4213, line: 95, baseType: !4232, size: 64, offset: 3264)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{null, !4211}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4212, file: !4213, line: 97, baseType: !167, size: 128, offset: 3328)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !4212, file: !4213, line: 99, baseType: !4237, size: 64, offset: 3456)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !86, line: 705, size: 5824, elements: !4239)
!4239 = !{!4240, !4241, !4242, !4245, !4246, !4299, !4369, !4370, !4371, !4372, !4373, !4380, !4472, !4485, !4495, !4499, !4501, !4502, !4503, !4507, !4514, !4515, !4518, !4521, !4525, !4528, !4529, !4530, !4531, !4532, !4533, !4563, !4564, !4565, !4568, !4571, !4580, !4581, !4582, !4583, !4584, !4585}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4238, file: !86, line: 706, baseType: !181, size: 512)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4238, file: !86, line: 707, baseType: !4237, size: 64, offset: 512)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4238, file: !86, line: 709, baseType: !4243, size: 64, offset: 576)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !86, line: 37, flags: DIFlagFwdDecl)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4238, file: !86, line: 711, baseType: !185, size: 64, offset: 640)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4238, file: !86, line: 712, baseType: !4247, size: 64, offset: 704)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4249)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !86, line: 89, size: 384, elements: !4250)
!4250 = !{!4251, !4252, !4253, !4259, !4264, !4268}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4249, file: !86, line: 90, baseType: !185, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4249, file: !86, line: 91, baseType: !317, size: 64, offset: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4249, file: !86, line: 92, baseType: !4254, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!101, !4257, !260}
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4238)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4249, file: !86, line: 93, baseType: !4260, size: 64, offset: 192)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!265, !4257, !4263, !3489, !3490}
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4249, file: !86, line: 95, baseType: !4265, size: 64, offset: 256)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{null, !4237}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4249, file: !86, line: 97, baseType: !4269, size: 64, offset: 320)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4271)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !93, line: 286, size: 1472, elements: !4272)
!4272 = !{!4273, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4271, file: !93, line: 287, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!101, !4237}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4271, file: !93, line: 288, baseType: !4265, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4271, file: !93, line: 289, baseType: !4274, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4271, file: !93, line: 290, baseType: !4274, size: 64, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4271, file: !93, line: 291, baseType: !4274, size: 64, offset: 256)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4271, file: !93, line: 292, baseType: !4274, size: 64, offset: 320)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4271, file: !93, line: 293, baseType: !4274, size: 64, offset: 384)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4271, file: !93, line: 294, baseType: !4274, size: 64, offset: 448)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4271, file: !93, line: 295, baseType: !4274, size: 64, offset: 512)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4271, file: !93, line: 296, baseType: !4274, size: 64, offset: 576)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4271, file: !93, line: 297, baseType: !4274, size: 64, offset: 640)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4271, file: !93, line: 298, baseType: !4274, size: 64, offset: 704)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4271, file: !93, line: 299, baseType: !4274, size: 64, offset: 768)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4271, file: !93, line: 300, baseType: !4274, size: 64, offset: 832)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4271, file: !93, line: 301, baseType: !4274, size: 64, offset: 896)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4271, file: !93, line: 302, baseType: !4274, size: 64, offset: 960)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4271, file: !93, line: 303, baseType: !4274, size: 64, offset: 1024)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4271, file: !93, line: 304, baseType: !4274, size: 64, offset: 1088)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4271, file: !93, line: 305, baseType: !4274, size: 64, offset: 1152)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4271, file: !93, line: 306, baseType: !4274, size: 64, offset: 1216)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4271, file: !93, line: 307, baseType: !4274, size: 64, offset: 1280)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4271, file: !93, line: 308, baseType: !4274, size: 64, offset: 1344)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4271, file: !93, line: 309, baseType: !4274, size: 64, offset: 1408)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4238, file: !86, line: 714, baseType: !4300, size: 64, offset: 768)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4302)
!4302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4303, line: 80, size: 1344, elements: !4304)
!4303 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4304 = !{!4305, !4306, !4307, !4308, !4309, !4310, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4368}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4302, file: !4303, line: 81, baseType: !185, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4302, file: !4303, line: 82, baseType: !185, size: 64, offset: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4302, file: !4303, line: 83, baseType: !317, size: 64, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4302, file: !4303, line: 84, baseType: !317, size: 64, offset: 192)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4302, file: !4303, line: 85, baseType: !317, size: 64, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4302, file: !4303, line: 87, baseType: !4311, size: 64, offset: 320)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!101, !4237, !4314}
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !80, line: 96, size: 1152, elements: !4316)
!4316 = !{!4317, !4318, !4319, !4320, !4321, !4322, !4323, !4327, !4331, !4332, !4333, !4334, !4335, !4343, !4344, !4345, !4346, !4347, !4348}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4315, file: !80, line: 97, baseType: !185, size: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4315, file: !80, line: 98, baseType: !4300, size: 64, offset: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4315, file: !80, line: 100, baseType: !162, size: 64, offset: 128)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4315, file: !80, line: 101, baseType: !185, size: 64, offset: 192)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4315, file: !80, line: 103, baseType: !1464, size: 8, offset: 256)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4315, file: !80, line: 104, baseType: !79, size: 32, offset: 288)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4315, file: !80, line: 106, baseType: !4324, size: 64, offset: 320)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4326)
!4326 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !80, line: 106, flags: DIFlagFwdDecl)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4315, file: !80, line: 107, baseType: !4328, size: 64, offset: 384)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4330)
!4330 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !80, line: 107, flags: DIFlagFwdDecl)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4315, file: !80, line: 109, baseType: !4274, size: 64, offset: 448)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4315, file: !80, line: 110, baseType: !4265, size: 64, offset: 512)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4315, file: !80, line: 111, baseType: !4274, size: 64, offset: 576)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4315, file: !80, line: 112, baseType: !4265, size: 64, offset: 640)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4315, file: !80, line: 113, baseType: !4336, size: 64, offset: 704)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!101, !4237, !4339}
!4339 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !93, line: 60, baseType: !4340)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !93, line: 58, size: 32, elements: !4341)
!4341 = !{!4342}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4340, file: !93, line: 59, baseType: !101, size: 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4315, file: !80, line: 114, baseType: !4274, size: 64, offset: 768)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4315, file: !80, line: 115, baseType: !317, size: 64, offset: 832)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4315, file: !80, line: 116, baseType: !317, size: 64, offset: 896)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4315, file: !80, line: 118, baseType: !4269, size: 64, offset: 960)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4315, file: !80, line: 119, baseType: !4265, size: 64, offset: 1024)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4315, file: !80, line: 121, baseType: !4349, size: 64, offset: 1088)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !80, line: 121, flags: DIFlagFwdDecl)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4302, file: !4303, line: 88, baseType: !4254, size: 64, offset: 384)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4302, file: !4303, line: 89, baseType: !4274, size: 64, offset: 448)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4302, file: !4303, line: 90, baseType: !4265, size: 64, offset: 512)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4302, file: !4303, line: 91, baseType: !4265, size: 64, offset: 576)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4302, file: !4303, line: 92, baseType: !4265, size: 64, offset: 640)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4302, file: !4303, line: 94, baseType: !4274, size: 64, offset: 704)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4302, file: !4303, line: 95, baseType: !4274, size: 64, offset: 768)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4302, file: !4303, line: 97, baseType: !4336, size: 64, offset: 832)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4302, file: !4303, line: 98, baseType: !4274, size: 64, offset: 896)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4302, file: !4303, line: 100, baseType: !4274, size: 64, offset: 960)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4302, file: !4303, line: 102, baseType: !4274, size: 64, offset: 1024)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4302, file: !4303, line: 103, baseType: !4265, size: 64, offset: 1088)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4302, file: !4303, line: 105, baseType: !4269, size: 64, offset: 1152)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4302, file: !4303, line: 107, baseType: !4365, size: 64, offset: 1216)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4367)
!4367 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4303, line: 107, flags: DIFlagFwdDecl)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4302, file: !4303, line: 109, baseType: !1464, size: 8, offset: 1280)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4238, file: !86, line: 715, baseType: !4314, size: 64, offset: 832)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4238, file: !86, line: 717, baseType: !149, size: 64, offset: 896)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4238, file: !86, line: 719, baseType: !149, size: 64, offset: 960)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4238, file: !86, line: 721, baseType: !645, size: 256, offset: 1024)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4238, file: !86, line: 725, baseType: !4374, size: 448, offset: 1280)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !86, line: 517, size: 448, elements: !4375)
!4375 = !{!4376, !4377, !4378, !4379}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4374, file: !86, line: 518, baseType: !167, size: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4374, file: !86, line: 519, baseType: !167, size: 128, offset: 128)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4374, file: !86, line: 520, baseType: !167, size: 128, offset: 256)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4374, file: !86, line: 521, baseType: !85, size: 32, offset: 384)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4238, file: !86, line: 726, baseType: !4381, size: 2496, offset: 1728)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !93, line: 663, size: 2496, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4465, !4469}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4381, file: !93, line: 664, baseType: !4339, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4381, file: !93, line: 665, baseType: !23, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4381, file: !93, line: 666, baseType: !23, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4381, file: !93, line: 667, baseType: !1464, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4381, file: !93, line: 668, baseType: !1464, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4381, file: !93, line: 669, baseType: !1464, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4381, file: !93, line: 670, baseType: !1464, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4381, file: !93, line: 671, baseType: !1464, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4381, file: !93, line: 672, baseType: !1464, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4381, file: !93, line: 673, baseType: !1464, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4381, file: !93, line: 674, baseType: !1464, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4381, file: !93, line: 675, baseType: !414, size: 32, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4381, file: !93, line: 676, baseType: !196, size: 32, offset: 96)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4381, file: !93, line: 678, baseType: !167, size: 128, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4381, file: !93, line: 679, baseType: !2056, size: 256, offset: 256)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4381, file: !93, line: 680, baseType: !4399, size: 64, offset: 512)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4401, line: 43, size: 1536, elements: !4402)
!4401 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4402 = !{!4403, !4404, !4405, !4406, !4407, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4400, file: !4401, line: 44, baseType: !185, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4400, file: !4401, line: 45, baseType: !101, size: 32, offset: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4400, file: !4401, line: 46, baseType: !167, size: 128, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4400, file: !4401, line: 47, baseType: !196, size: 32, offset: 256)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4400, file: !4401, line: 48, baseType: !4408, size: 64, offset: 320)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !93, line: 629, flags: DIFlagFwdDecl)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4400, file: !4401, line: 49, baseType: !2684, size: 320, offset: 384)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4400, file: !4401, line: 50, baseType: !315, size: 64, offset: 704)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4400, file: !4401, line: 51, baseType: !1110, size: 64, offset: 768)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4400, file: !4401, line: 52, baseType: !1110, size: 64, offset: 832)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4400, file: !4401, line: 53, baseType: !1110, size: 64, offset: 896)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4400, file: !4401, line: 54, baseType: !1110, size: 64, offset: 960)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4400, file: !4401, line: 55, baseType: !1110, size: 64, offset: 1024)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4400, file: !4401, line: 56, baseType: !315, size: 64, offset: 1088)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4400, file: !4401, line: 57, baseType: !315, size: 64, offset: 1152)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4400, file: !4401, line: 58, baseType: !315, size: 64, offset: 1216)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4400, file: !4401, line: 59, baseType: !315, size: 64, offset: 1280)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4400, file: !4401, line: 60, baseType: !315, size: 64, offset: 1344)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4400, file: !4401, line: 61, baseType: !4237, size: 64, offset: 1408)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4400, file: !4401, line: 62, baseType: !1464, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4400, file: !4401, line: 63, baseType: !1464, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4381, file: !93, line: 681, baseType: !1464, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4381, file: !93, line: 682, baseType: !1464, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4381, file: !93, line: 683, baseType: !1464, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4381, file: !93, line: 684, baseType: !23, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4381, file: !93, line: 685, baseType: !23, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4381, file: !93, line: 690, baseType: !1102, size: 512, offset: 640)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4381, file: !93, line: 691, baseType: !418, size: 64, offset: 1152)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4381, file: !93, line: 692, baseType: !1940, size: 256, offset: 1216)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4381, file: !93, line: 693, baseType: !952, size: 192, offset: 1472)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4381, file: !93, line: 694, baseType: !4408, size: 64, offset: 1664)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4381, file: !93, line: 695, baseType: !216, size: 32, offset: 1728)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4381, file: !93, line: 696, baseType: !216, size: 32, offset: 1760)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4381, file: !93, line: 697, baseType: !23, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4381, file: !93, line: 698, baseType: !23, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4381, file: !93, line: 699, baseType: !23, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4381, file: !93, line: 700, baseType: !23, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4381, file: !93, line: 701, baseType: !23, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4381, file: !93, line: 702, baseType: !23, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4381, file: !93, line: 703, baseType: !1464, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4381, file: !93, line: 704, baseType: !23, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4381, file: !93, line: 705, baseType: !23, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4381, file: !93, line: 706, baseType: !23, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4381, file: !93, line: 707, baseType: !23, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4381, file: !93, line: 708, baseType: !23, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4381, file: !93, line: 709, baseType: !23, size: 32, offset: 1824)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4381, file: !93, line: 710, baseType: !92, size: 32, offset: 1856)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4381, file: !93, line: 711, baseType: !100, size: 32, offset: 1888)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4381, file: !93, line: 712, baseType: !100, size: 32, offset: 1920)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4381, file: !93, line: 713, baseType: !101, size: 32, offset: 1952)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4381, file: !93, line: 714, baseType: !101, size: 32, offset: 1984)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4381, file: !93, line: 715, baseType: !418, size: 64, offset: 2048)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4381, file: !93, line: 716, baseType: !418, size: 64, offset: 2112)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4381, file: !93, line: 717, baseType: !418, size: 64, offset: 2176)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4381, file: !93, line: 718, baseType: !418, size: 64, offset: 2240)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4381, file: !93, line: 720, baseType: !4460, size: 64, offset: 2304)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !93, line: 632, size: 64, elements: !4462)
!4462 = !{!4463, !4464}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4461, file: !93, line: 633, baseType: !196, size: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4461, file: !93, line: 634, baseType: !23, size: 32, offset: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4381, file: !93, line: 721, baseType: !4466, size: 64, offset: 2368)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{null, !4237, !1407}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4381, file: !93, line: 722, baseType: !4470, size: 64, offset: 2432)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !93, line: 722, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4238, file: !86, line: 727, baseType: !4473, size: 64, offset: 4224)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !93, line: 742, size: 1792, elements: !4475)
!4475 = !{!4476, !4477, !4478, !4482, !4483, !4484}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4474, file: !93, line: 743, baseType: !4271, size: 1472)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4474, file: !93, line: 744, baseType: !4274, size: 64, offset: 1472)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4474, file: !93, line: 745, baseType: !4479, size: 64, offset: 1536)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{null, !4237, !1464}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4474, file: !93, line: 746, baseType: !4274, size: 64, offset: 1600)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4474, file: !93, line: 747, baseType: !4265, size: 64, offset: 1664)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4474, file: !93, line: 748, baseType: !4265, size: 64, offset: 1728)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4238, file: !86, line: 736, baseType: !4486, size: 128, offset: 4288)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !86, line: 529, size: 128, elements: !4487)
!4487 = !{!4488, !4492}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4486, file: !86, line: 531, baseType: !4489, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4491, line: 13, flags: DIFlagFwdDecl)
!4491 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4486, file: !86, line: 532, baseType: !4493, size: 64, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !86, line: 49, flags: DIFlagFwdDecl)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4238, file: !86, line: 738, baseType: !4496, size: 64, offset: 4416)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4498)
!4498 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !86, line: 738, flags: DIFlagFwdDecl)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4238, file: !86, line: 740, baseType: !4500, size: 64, offset: 4480)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4238, file: !86, line: 741, baseType: !418, size: 64, offset: 4544)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4238, file: !86, line: 746, baseType: !418, size: 64, offset: 4608)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4238, file: !86, line: 747, baseType: !4504, size: 64, offset: 4672)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4506)
!4506 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !86, line: 747, flags: DIFlagFwdDecl)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4238, file: !86, line: 749, baseType: !4508, size: 64, offset: 4736)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !86, line: 428, size: 128, elements: !4510)
!4510 = !{!4511, !4512, !4513}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4509, file: !86, line: 433, baseType: !23, size: 32)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4509, file: !86, line: 434, baseType: !23, size: 32, offset: 32)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4509, file: !86, line: 435, baseType: !315, size: 64, offset: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4238, file: !86, line: 751, baseType: !167, size: 128, offset: 4800)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4238, file: !86, line: 762, baseType: !4516, size: 64, offset: 4928)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !86, line: 762, flags: DIFlagFwdDecl)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4238, file: !86, line: 770, baseType: !4519, offset: 4992)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4520, line: 5, elements: !549)
!4520 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4238, file: !86, line: 772, baseType: !4522, size: 64, offset: 4992)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4524, line: 18, flags: DIFlagFwdDecl)
!4524 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4238, file: !86, line: 773, baseType: !4526, size: 64, offset: 5056)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4303, line: 22, flags: DIFlagFwdDecl)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4238, file: !86, line: 776, baseType: !101, size: 32, offset: 5120)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4238, file: !86, line: 778, baseType: !501, size: 32, offset: 5152)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4238, file: !86, line: 779, baseType: !414, size: 32, offset: 5184)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4238, file: !86, line: 781, baseType: !196, size: 32, offset: 5216)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4238, file: !86, line: 782, baseType: !167, size: 128, offset: 5248)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4238, file: !86, line: 784, baseType: !4534, size: 64, offset: 5376)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4536)
!4536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4537, line: 52, size: 768, elements: !4538)
!4537 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4538 = !{!4539, !4540, !4541, !4542, !4543, !4547, !4551, !4552, !4553, !4554, !4558, !4562}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4536, file: !4537, line: 53, baseType: !185, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4536, file: !4537, line: 55, baseType: !317, size: 64, offset: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4536, file: !4537, line: 56, baseType: !317, size: 64, offset: 128)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4536, file: !4537, line: 58, baseType: !4254, size: 64, offset: 192)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4536, file: !4537, line: 59, baseType: !4544, size: 64, offset: 256)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!265, !4257, !4263}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4536, file: !4537, line: 61, baseType: !4548, size: 64, offset: 320)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{null, !4534}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4536, file: !4537, line: 62, baseType: !4265, size: 64, offset: 384)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4536, file: !4537, line: 64, baseType: !4274, size: 64, offset: 448)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4536, file: !4537, line: 66, baseType: !3457, size: 64, offset: 512)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4536, file: !4537, line: 67, baseType: !4555, size: 64, offset: 576)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!1901, !4257}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4536, file: !4537, line: 69, baseType: !4559, size: 64, offset: 640)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{null, !4257, !3489, !3490}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4536, file: !4537, line: 71, baseType: !4269, size: 64, offset: 704)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4238, file: !86, line: 785, baseType: !317, size: 64, offset: 5440)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4238, file: !86, line: 787, baseType: !4265, size: 64, offset: 5504)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4238, file: !86, line: 788, baseType: !4566, size: 64, offset: 5568)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !86, line: 46, flags: DIFlagFwdDecl)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4238, file: !86, line: 789, baseType: !4569, size: 64, offset: 5632)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !86, line: 48, flags: DIFlagFwdDecl)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4238, file: !86, line: 791, baseType: !4572, size: 64, offset: 5696)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !86, line: 597, size: 128, elements: !4574)
!4574 = !{!4575, !4576, !4577, !4578, !4579}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4573, file: !86, line: 598, baseType: !108, size: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4573, file: !86, line: 599, baseType: !117, size: 32, offset: 32)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4573, file: !86, line: 600, baseType: !122, size: 32, offset: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4573, file: !86, line: 601, baseType: !1464, size: 8, offset: 96)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4573, file: !86, line: 602, baseType: !1464, size: 8, offset: 104)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4238, file: !86, line: 793, baseType: !127, size: 32, offset: 5760)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4238, file: !86, line: 795, baseType: !1464, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4238, file: !86, line: 796, baseType: !1464, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4238, file: !86, line: 797, baseType: !1464, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4238, file: !86, line: 798, baseType: !1464, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4238, file: !86, line: 799, baseType: !1464, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !4212, file: !4213, line: 100, baseType: !23, size: 32, offset: 3520)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !4212, file: !4213, line: 101, baseType: !859, size: 320, offset: 3584)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !4212, file: !4213, line: 102, baseType: !1323, size: 64, offset: 3904)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !4212, file: !4213, line: 103, baseType: !101, size: 32, offset: 3968)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !4212, file: !4213, line: 104, baseType: !312, size: 64, offset: 4032)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !4212, file: !4213, line: 105, baseType: !167, size: 128, offset: 4096)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !4212, file: !4213, line: 106, baseType: !167, size: 128, offset: 4224)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !4212, file: !4213, line: 108, baseType: !3205, size: 128, offset: 4352)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !4212, file: !4213, line: 109, baseType: !3205, size: 128, offset: 4480)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !4212, file: !4213, line: 110, baseType: !1464, size: 8, offset: 4608)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !4212, file: !4213, line: 113, baseType: !4597, size: 64, offset: 4672)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !4213, line: 113, flags: DIFlagFwdDecl)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !4212, file: !4213, line: 114, baseType: !4600, size: 64, offset: 4736)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4213, line: 114, flags: DIFlagFwdDecl)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !4212, file: !4213, line: 116, baseType: !167, size: 128, offset: 4800)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !4212, file: !4213, line: 117, baseType: !4604, size: 64, offset: 4928)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !4213, line: 117, flags: DIFlagFwdDecl)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !4212, file: !4213, line: 119, baseType: !196, size: 32, offset: 4992)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4212, file: !4213, line: 120, baseType: !101, size: 32, offset: 5024)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !4212, file: !4213, line: 121, baseType: !2055, size: 64, offset: 5056)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4212, file: !4213, line: 122, baseType: !4237, size: 64, offset: 5120)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !4212, file: !4213, line: 123, baseType: !4238, size: 5824, offset: 5184)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4212, file: !4213, line: 124, baseType: !4612, size: 256, offset: 11008)
!4612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 256, elements: !1352)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4212, file: !4213, line: 125, baseType: !1464, size: 8, offset: 11264)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4212, file: !4213, line: 126, baseType: !1464, size: 8, offset: 11272)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !4212, file: !4213, line: 127, baseType: !1464, size: 8, offset: 11280)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !4212, file: !4213, line: 128, baseType: !101, size: 32, offset: 11296)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !4212, file: !4213, line: 129, baseType: !952, size: 192, offset: 11328)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !4212, file: !4213, line: 131, baseType: !312, size: 64, offset: 11520)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !4212, file: !4213, line: 132, baseType: !645, size: 256, offset: 11584)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4212, file: !4213, line: 138, baseType: !23, size: 32, offset: 11840)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !4212, file: !4213, line: 139, baseType: !216, size: 32, offset: 11872)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !4212, file: !4213, line: 140, baseType: !952, size: 192, offset: 11904)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !4212, file: !4213, line: 141, baseType: !952, size: 192, offset: 12096)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "ump_info", scope: !4128, file: !4129, line: 64, baseType: !1777, size: 64, offset: 2176)
!4625 = !{!4626, !4627, !4628, !4629, !4632}
!4626 = !DILocalVariable(name: "client", arg: 1, scope: !4124, file: !2, line: 44, type: !4127)
!4627 = !DILocalVariable(name: "num", arg: 2, scope: !4124, file: !2, line: 45, type: !101)
!4628 = !DILocalVariable(name: "port", scope: !4124, file: !2, line: 47, type: !150)
!4629 = !DILocalVariable(name: "__mptr", scope: !4630, file: !2, line: 52, type: !149)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !2, line: 52, column: 2)
!4631 = distinct !DILexicalBlock(scope: !4124, file: !2, line: 52, column: 2)
!4632 = !DILocalVariable(name: "__mptr", scope: !4633, file: !2, line: 52, type: !149)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !2, line: 52, column: 2)
!4634 = distinct !DILexicalBlock(scope: !4631, file: !2, line: 52, column: 2)
!4635 = !DILocation(line: 44, column: 73, scope: !4124)
!4636 = !DILocation(line: 45, column: 12, scope: !4124)
!4637 = !DILocation(line: 47, column: 2, scope: !4124)
!4638 = !DILocation(line: 47, column: 30, scope: !4124)
!4639 = !DILocation(line: 49, column: 6, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4124, file: !2, line: 49, column: 6)
!4641 = !DILocation(line: 49, column: 13, scope: !4640)
!4642 = !DILocation(line: 49, column: 6, scope: !4124)
!4643 = !DILocation(line: 50, column: 3, scope: !4640)
!4644 = !DILocation(line: 51, column: 2, scope: !4124)
!4645 = !DILocation(line: 52, column: 2, scope: !4630)
!4646 = !DILocation(line: 52, column: 2, scope: !4631)
!4647 = !DILocation(line: 52, column: 2, scope: !4634)
!4648 = !DILocation(line: 53, column: 7, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4650, file: !2, line: 53, column: 7)
!4650 = distinct !DILexicalBlock(scope: !4634, file: !2, line: 52, column: 60)
!4651 = !DILocation(line: 53, column: 13, scope: !4649)
!4652 = !DILocation(line: 53, column: 18, scope: !4649)
!4653 = !DILocation(line: 53, column: 26, scope: !4649)
!4654 = !DILocation(line: 53, column: 23, scope: !4649)
!4655 = !DILocation(line: 53, column: 7, scope: !4650)
!4656 = !DILocation(line: 54, column: 8, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4658, file: !2, line: 54, column: 8)
!4658 = distinct !DILexicalBlock(scope: !4649, file: !2, line: 53, column: 31)
!4659 = !DILocation(line: 54, column: 14, scope: !4657)
!4660 = !DILocation(line: 54, column: 8, scope: !4658)
!4661 = !DILocation(line: 55, column: 5, scope: !4657)
!4662 = !DILocation(line: 56, column: 4, scope: !4658)
!4663 = !DILocation(line: 57, column: 4, scope: !4658)
!4664 = !DILocation(line: 58, column: 11, scope: !4658)
!4665 = !DILocation(line: 58, column: 4, scope: !4658)
!4666 = !DILocation(line: 60, column: 2, scope: !4650)
!4667 = !DILocation(line: 52, column: 2, scope: !4633)
!4668 = distinct !{!4668, !4646, !4669, !4670, !4671}
!4669 = !DILocation(line: 60, column: 2, scope: !4631)
!4670 = !{!"llvm.loop.mustprogress"}
!4671 = !{!"llvm.loop.unroll.disable"}
!4672 = !DILocation(line: 61, column: 2, scope: !4124)
!4673 = !DILocation(line: 62, column: 2, scope: !4124)
!4674 = !DILocation(line: 63, column: 1, scope: !4124)
!4675 = !DISubprogram(name: "_raw_read_lock", scope: !4676, file: !4676, line: 18, type: !4677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4676 = !DIFile(filename: "./include/linux/rwlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "752e3ce6205f1debb08c34677b6a0cdd")
!4677 = !DISubroutineType(types: !4678)
!4678 = !{null, !4679}
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!4680 = distinct !DISubprogram(name: "atomic_inc", scope: !4681, file: !4681, line: 433, type: !4682, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4685)
!4681 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4682 = !DISubroutineType(types: !4683)
!4683 = !{null, !4684}
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!4685 = !{!4686}
!4686 = !DILocalVariable(name: "v", arg: 1, scope: !4680, file: !4681, line: 433, type: !4684)
!4687 = !DILocation(line: 433, column: 22, scope: !4680)
!4688 = !DILocation(line: 435, column: 31, scope: !4680)
!4689 = !DILocation(line: 435, column: 2, scope: !4680)
!4690 = !DILocation(line: 436, column: 17, scope: !4680)
!4691 = !DILocation(line: 436, column: 2, scope: !4680)
!4692 = !DILocation(line: 437, column: 1, scope: !4680)
!4693 = !DISubprogram(name: "_raw_read_unlock", scope: !4676, file: !4676, line: 31, type: !4677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4694 = distinct !DISubprogram(name: "snd_seq_port_query_nearest", scope: !2, file: !2, line: 67, type: !4695, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4718)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!150, !4127, !4697}
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_port_info", file: !156, line: 470, size: 1344, elements: !4699)
!4699 = !{!4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4698, file: !156, line: 471, baseType: !155, size: 16)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4698, file: !156, line: 472, baseType: !3935, size: 512, offset: 16)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !4698, file: !156, line: 474, baseType: !23, size: 32, offset: 544)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4698, file: !156, line: 475, baseType: !23, size: 32, offset: 576)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "midi_channels", scope: !4698, file: !156, line: 476, baseType: !101, size: 32, offset: 608)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "midi_voices", scope: !4698, file: !156, line: 477, baseType: !101, size: 32, offset: 640)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "synth_voices", scope: !4698, file: !156, line: 478, baseType: !101, size: 32, offset: 672)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "read_use", scope: !4698, file: !156, line: 480, baseType: !101, size: 32, offset: 704)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "write_use", scope: !4698, file: !156, line: 481, baseType: !101, size: 32, offset: 736)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "kernel", scope: !4698, file: !156, line: 483, baseType: !149, size: 64, offset: 768)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4698, file: !156, line: 484, baseType: !23, size: 32, offset: 832)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "time_queue", scope: !4698, file: !156, line: 485, baseType: !159, size: 8, offset: 864)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4698, file: !156, line: 486, baseType: !159, size: 8, offset: 872)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "ump_group", scope: !4698, file: !156, line: 487, baseType: !159, size: 8, offset: 880)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4698, file: !156, line: 488, baseType: !4715, size: 456, offset: 888)
!4715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !4716)
!4716 = !{!4717}
!4717 = !DISubrange(count: 57)
!4718 = !{!4719, !4720, !4721, !4722, !4723, !4724, !4725, !4728}
!4719 = !DILocalVariable(name: "client", arg: 1, scope: !4694, file: !2, line: 67, type: !4127)
!4720 = !DILocalVariable(name: "pinfo", arg: 2, scope: !4694, file: !2, line: 68, type: !4697)
!4721 = !DILocalVariable(name: "num", scope: !4694, file: !2, line: 70, type: !101)
!4722 = !DILocalVariable(name: "port", scope: !4694, file: !2, line: 71, type: !150)
!4723 = !DILocalVariable(name: "found", scope: !4694, file: !2, line: 71, type: !150)
!4724 = !DILocalVariable(name: "check_inactive", scope: !4694, file: !2, line: 72, type: !1464)
!4725 = !DILocalVariable(name: "__mptr", scope: !4726, file: !2, line: 77, type: !149)
!4726 = distinct !DILexicalBlock(scope: !4727, file: !2, line: 77, column: 2)
!4727 = distinct !DILexicalBlock(scope: !4694, file: !2, line: 77, column: 2)
!4728 = !DILocalVariable(name: "__mptr", scope: !4729, file: !2, line: 77, type: !149)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !2, line: 77, column: 2)
!4730 = distinct !DILexicalBlock(scope: !4727, file: !2, line: 77, column: 2)
!4731 = !DILocation(line: 67, column: 79, scope: !4694)
!4732 = !DILocation(line: 68, column: 40, scope: !4694)
!4733 = !DILocation(line: 70, column: 2, scope: !4694)
!4734 = !DILocation(line: 70, column: 6, scope: !4694)
!4735 = !DILocation(line: 71, column: 2, scope: !4694)
!4736 = !DILocation(line: 71, column: 30, scope: !4694)
!4737 = !DILocation(line: 71, column: 37, scope: !4694)
!4738 = !DILocation(line: 72, column: 2, scope: !4694)
!4739 = !DILocation(line: 72, column: 7, scope: !4694)
!4740 = !DILocation(line: 72, column: 25, scope: !4694)
!4741 = !DILocation(line: 72, column: 32, scope: !4694)
!4742 = !DILocation(line: 72, column: 43, scope: !4694)
!4743 = !DILocation(line: 72, column: 24, scope: !4694)
!4744 = !DILocation(line: 74, column: 8, scope: !4694)
!4745 = !DILocation(line: 74, column: 15, scope: !4694)
!4746 = !DILocation(line: 74, column: 20, scope: !4694)
!4747 = !DILocation(line: 74, column: 6, scope: !4694)
!4748 = !DILocation(line: 75, column: 8, scope: !4694)
!4749 = !DILocation(line: 76, column: 2, scope: !4694)
!4750 = !DILocation(line: 77, column: 2, scope: !4726)
!4751 = !DILocation(line: 77, column: 2, scope: !4727)
!4752 = !DILocation(line: 77, column: 2, scope: !4730)
!4753 = !DILocation(line: 78, column: 8, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4755, file: !2, line: 78, column: 7)
!4755 = distinct !DILexicalBlock(scope: !4730, file: !2, line: 77, column: 60)
!4756 = !DILocation(line: 78, column: 14, scope: !4754)
!4757 = !DILocation(line: 78, column: 25, scope: !4754)
!4758 = !DILocation(line: 78, column: 56, scope: !4754)
!4759 = !DILocation(line: 79, column: 8, scope: !4754)
!4760 = !{i8 0, i8 2}
!4761 = !DILocation(line: 78, column: 7, scope: !4755)
!4762 = !DILocation(line: 80, column: 4, scope: !4754)
!4763 = !DILocation(line: 81, column: 7, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4755, file: !2, line: 81, column: 7)
!4765 = !DILocation(line: 81, column: 13, scope: !4764)
!4766 = !DILocation(line: 81, column: 18, scope: !4764)
!4767 = !DILocation(line: 81, column: 25, scope: !4764)
!4768 = !DILocation(line: 81, column: 23, scope: !4764)
!4769 = !DILocation(line: 81, column: 7, scope: !4755)
!4770 = !DILocation(line: 82, column: 4, scope: !4764)
!4771 = !DILocation(line: 83, column: 7, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4755, file: !2, line: 83, column: 7)
!4773 = !DILocation(line: 83, column: 13, scope: !4772)
!4774 = !DILocation(line: 83, column: 18, scope: !4772)
!4775 = !DILocation(line: 83, column: 26, scope: !4772)
!4776 = !DILocation(line: 83, column: 23, scope: !4772)
!4777 = !DILocation(line: 83, column: 7, scope: !4755)
!4778 = !DILocation(line: 84, column: 12, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4772, file: !2, line: 83, column: 31)
!4780 = !DILocation(line: 84, column: 10, scope: !4779)
!4781 = !DILocation(line: 85, column: 4, scope: !4779)
!4782 = !DILocation(line: 87, column: 7, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4755, file: !2, line: 87, column: 7)
!4784 = !DILocation(line: 87, column: 13, scope: !4783)
!4785 = !DILocation(line: 87, column: 21, scope: !4783)
!4786 = !DILocation(line: 87, column: 24, scope: !4783)
!4787 = !DILocation(line: 87, column: 30, scope: !4783)
!4788 = !DILocation(line: 87, column: 35, scope: !4783)
!4789 = !DILocation(line: 87, column: 42, scope: !4783)
!4790 = !DILocation(line: 87, column: 49, scope: !4783)
!4791 = !DILocation(line: 87, column: 54, scope: !4783)
!4792 = !DILocation(line: 87, column: 40, scope: !4783)
!4793 = !DILocation(line: 87, column: 7, scope: !4755)
!4794 = !DILocation(line: 88, column: 12, scope: !4783)
!4795 = !DILocation(line: 88, column: 10, scope: !4783)
!4796 = !DILocation(line: 88, column: 4, scope: !4783)
!4797 = !DILocation(line: 89, column: 2, scope: !4755)
!4798 = !DILocation(line: 77, column: 2, scope: !4729)
!4799 = distinct !{!4799, !4751, !4800, !4670, !4671}
!4800 = !DILocation(line: 89, column: 2, scope: !4727)
!4801 = !DILocation(line: 90, column: 6, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4694, file: !2, line: 90, column: 6)
!4803 = !DILocation(line: 90, column: 6, scope: !4694)
!4804 = !DILocation(line: 91, column: 7, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4806, file: !2, line: 91, column: 7)
!4806 = distinct !DILexicalBlock(scope: !4802, file: !2, line: 90, column: 13)
!4807 = !DILocation(line: 91, column: 14, scope: !4805)
!4808 = !DILocation(line: 91, column: 7, scope: !4806)
!4809 = !DILocation(line: 92, column: 10, scope: !4805)
!4810 = !DILocation(line: 92, column: 4, scope: !4805)
!4811 = !DILocation(line: 94, column: 4, scope: !4805)
!4812 = !DILocation(line: 95, column: 2, scope: !4806)
!4813 = !DILocation(line: 96, column: 2, scope: !4694)
!4814 = !DILocation(line: 97, column: 9, scope: !4694)
!4815 = !DILocation(line: 98, column: 1, scope: !4694)
!4816 = !DILocation(line: 97, column: 2, scope: !4694)
!4817 = distinct !DISubprogram(name: "snd_seq_create_port", scope: !2, file: !2, line: 117, type: !4818, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4821)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!101, !4127, !101, !4820}
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!4821 = !{!4822, !4823, !4824, !4825, !4826, !4827, !4828, !4831, !4833, !4834, !4837, !4840}
!4822 = !DILocalVariable(name: "client", arg: 1, scope: !4817, file: !2, line: 117, type: !4127)
!4823 = !DILocalVariable(name: "port", arg: 2, scope: !4817, file: !2, line: 117, type: !101)
!4824 = !DILocalVariable(name: "port_ret", arg: 3, scope: !4817, file: !2, line: 118, type: !4820)
!4825 = !DILocalVariable(name: "new_port", scope: !4817, file: !2, line: 120, type: !150)
!4826 = !DILocalVariable(name: "p", scope: !4817, file: !2, line: 120, type: !150)
!4827 = !DILocalVariable(name: "num", scope: !4817, file: !2, line: 121, type: !101)
!4828 = !DILocalVariable(name: "__ret_warn_on", scope: !4829, file: !2, line: 126, type: !101)
!4829 = distinct !DILexicalBlock(scope: !4830, file: !2, line: 126, column: 6)
!4830 = distinct !DILexicalBlock(scope: !4817, file: !2, line: 126, column: 6)
!4831 = !DILocalVariable(name: "__UNIQUE_ID___x269", scope: !4832, file: !2, line: 147, type: !101)
!4832 = distinct !DILexicalBlock(scope: !4817, file: !2, line: 147, column: 8)
!4833 = !DILocalVariable(name: "__UNIQUE_ID___y270", scope: !4832, file: !2, line: 147, type: !101)
!4834 = !DILocalVariable(name: "__mptr", scope: !4835, file: !2, line: 150, type: !149)
!4835 = distinct !DILexicalBlock(scope: !4836, file: !2, line: 150, column: 2)
!4836 = distinct !DILexicalBlock(scope: !4817, file: !2, line: 150, column: 2)
!4837 = !DILocalVariable(name: "__mptr", scope: !4838, file: !2, line: 150, type: !149)
!4838 = distinct !DILexicalBlock(scope: !4839, file: !2, line: 150, column: 2)
!4839 = distinct !DILexicalBlock(scope: !4836, file: !2, line: 150, column: 2)
!4840 = !DILabel(scope: !4817, name: "unlock", file: !2, line: 167)
!4841 = !DILocation(line: 117, column: 48, scope: !4817)
!4842 = !DILocation(line: 117, column: 60, scope: !4817)
!4843 = !DILocation(line: 118, column: 33, scope: !4817)
!4844 = !DILocation(line: 120, column: 2, scope: !4817)
!4845 = !DILocation(line: 120, column: 30, scope: !4817)
!4846 = !DILocation(line: 120, column: 41, scope: !4817)
!4847 = !DILocation(line: 121, column: 2, scope: !4817)
!4848 = !DILocation(line: 121, column: 6, scope: !4817)
!4849 = !DILocation(line: 123, column: 3, scope: !4817)
!4850 = !DILocation(line: 123, column: 12, scope: !4817)
!4851 = !DILocation(line: 126, column: 6, scope: !4829)
!4852 = !DILocation(line: 126, column: 6, scope: !4830)
!4853 = !DILocation(line: 126, column: 6, scope: !4817)
!4854 = !DILocation(line: 127, column: 3, scope: !4830)
!4855 = !DILocation(line: 129, column: 6, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4817, file: !2, line: 129, column: 6)
!4857 = !DILocation(line: 129, column: 14, scope: !4856)
!4858 = !DILocation(line: 129, column: 24, scope: !4856)
!4859 = !DILocation(line: 129, column: 6, scope: !4817)
!4860 = !DILocation(line: 130, column: 3, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4862, file: !2, line: 130, column: 3)
!4862 = distinct !DILexicalBlock(scope: !4856, file: !2, line: 129, column: 48)
!4863 = !DILocation(line: 130, column: 3, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4861, file: !2, line: 130, column: 3)
!4865 = !DILocation(line: 131, column: 3, scope: !4862)
!4866 = !DILocation(line: 135, column: 13, scope: !4817)
!4867 = !DILocation(line: 135, column: 11, scope: !4817)
!4868 = !DILocation(line: 136, column: 7, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4817, file: !2, line: 136, column: 6)
!4870 = !DILocation(line: 136, column: 6, scope: !4817)
!4871 = !DILocation(line: 137, column: 3, scope: !4869)
!4872 = !DILocation(line: 139, column: 26, scope: !4817)
!4873 = !DILocation(line: 139, column: 34, scope: !4817)
!4874 = !DILocation(line: 139, column: 2, scope: !4817)
!4875 = !DILocation(line: 139, column: 12, scope: !4817)
!4876 = !DILocation(line: 139, column: 17, scope: !4817)
!4877 = !DILocation(line: 139, column: 24, scope: !4817)
!4878 = !DILocation(line: 140, column: 2, scope: !4817)
!4879 = !DILocation(line: 140, column: 12, scope: !4817)
!4880 = !DILocation(line: 140, column: 17, scope: !4817)
!4881 = !DILocation(line: 140, column: 22, scope: !4817)
!4882 = !DILocation(line: 141, column: 2, scope: !4817)
!4883 = !DILocation(line: 141, column: 12, scope: !4817)
!4884 = !DILocation(line: 141, column: 18, scope: !4817)
!4885 = !DILocation(line: 142, column: 2, scope: !4817)
!4886 = !DILocation(line: 143, column: 23, scope: !4817)
!4887 = !DILocation(line: 143, column: 33, scope: !4817)
!4888 = !DILocation(line: 143, column: 2, scope: !4817)
!4889 = !DILocation(line: 144, column: 23, scope: !4817)
!4890 = !DILocation(line: 144, column: 33, scope: !4817)
!4891 = !DILocation(line: 144, column: 2, scope: !4817)
!4892 = !DILocation(line: 145, column: 2, scope: !4817)
!4893 = !DILocation(line: 147, column: 8, scope: !4832)
!4894 = !DILocation(line: 147, column: 8, scope: !4817)
!4895 = !DILocation(line: 147, column: 6, scope: !4817)
!4896 = !DILocation(line: 148, column: 14, scope: !4817)
!4897 = !DILocation(line: 148, column: 22, scope: !4817)
!4898 = !DILocation(line: 148, column: 2, scope: !4817)
!4899 = !DILocation(line: 149, column: 2, scope: !4817)
!4900 = !DILocation(line: 150, column: 2, scope: !4835)
!4901 = !DILocation(line: 150, column: 2, scope: !4836)
!4902 = !DILocation(line: 150, column: 2, scope: !4839)
!4903 = !DILocation(line: 151, column: 7, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !2, line: 151, column: 7)
!4905 = distinct !DILexicalBlock(scope: !4839, file: !2, line: 150, column: 57)
!4906 = !DILocation(line: 151, column: 10, scope: !4904)
!4907 = !DILocation(line: 151, column: 15, scope: !4904)
!4908 = !DILocation(line: 151, column: 23, scope: !4904)
!4909 = !DILocation(line: 151, column: 20, scope: !4904)
!4910 = !DILocation(line: 151, column: 7, scope: !4905)
!4911 = !DILocation(line: 152, column: 10, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4904, file: !2, line: 151, column: 29)
!4913 = !DILocation(line: 152, column: 4, scope: !4912)
!4914 = !DILocation(line: 153, column: 8, scope: !4912)
!4915 = !DILocation(line: 154, column: 4, scope: !4912)
!4916 = !DILocation(line: 156, column: 7, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4905, file: !2, line: 156, column: 7)
!4918 = !DILocation(line: 156, column: 10, scope: !4917)
!4919 = !DILocation(line: 156, column: 15, scope: !4917)
!4920 = !DILocation(line: 156, column: 22, scope: !4917)
!4921 = !DILocation(line: 156, column: 20, scope: !4917)
!4922 = !DILocation(line: 156, column: 7, scope: !4905)
!4923 = !DILocation(line: 157, column: 4, scope: !4917)
!4924 = !DILocation(line: 158, column: 7, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4905, file: !2, line: 158, column: 7)
!4926 = !DILocation(line: 158, column: 12, scope: !4925)
!4927 = !DILocation(line: 158, column: 7, scope: !4905)
!4928 = !DILocation(line: 159, column: 10, scope: !4925)
!4929 = !DILocation(line: 159, column: 13, scope: !4925)
!4930 = !DILocation(line: 159, column: 18, scope: !4925)
!4931 = !DILocation(line: 159, column: 23, scope: !4925)
!4932 = !DILocation(line: 159, column: 8, scope: !4925)
!4933 = !DILocation(line: 159, column: 4, scope: !4925)
!4934 = !DILocation(line: 160, column: 2, scope: !4905)
!4935 = !DILocation(line: 150, column: 2, scope: !4838)
!4936 = distinct !{!4936, !4901, !4937, !4670, !4671}
!4937 = !DILocation(line: 160, column: 2, scope: !4836)
!4938 = !DILocation(line: 162, column: 17, scope: !4817)
!4939 = !DILocation(line: 162, column: 27, scope: !4817)
!4940 = !DILocation(line: 162, column: 34, scope: !4817)
!4941 = !DILocation(line: 162, column: 37, scope: !4817)
!4942 = !DILocation(line: 162, column: 2, scope: !4817)
!4943 = !DILocation(line: 163, column: 2, scope: !4817)
!4944 = !DILocation(line: 163, column: 10, scope: !4817)
!4945 = !DILocation(line: 163, column: 19, scope: !4817)
!4946 = !DILocation(line: 164, column: 24, scope: !4817)
!4947 = !DILocation(line: 164, column: 2, scope: !4817)
!4948 = !DILocation(line: 164, column: 12, scope: !4817)
!4949 = !DILocation(line: 164, column: 17, scope: !4817)
!4950 = !DILocation(line: 164, column: 22, scope: !4817)
!4951 = !DILocation(line: 165, column: 10, scope: !4817)
!4952 = !DILocation(line: 165, column: 20, scope: !4817)
!4953 = !DILocation(line: 165, column: 37, scope: !4817)
!4954 = !DILocation(line: 165, column: 2, scope: !4817)
!4955 = !DILocation(line: 166, column: 14, scope: !4817)
!4956 = !DILocation(line: 166, column: 3, scope: !4817)
!4957 = !DILocation(line: 166, column: 12, scope: !4817)
!4958 = !DILocation(line: 166, column: 2, scope: !4817)
!4959 = !DILocation(line: 167, column: 2, scope: !4817)
!4960 = !DILocation(line: 168, column: 2, scope: !4817)
!4961 = !DILocation(line: 169, column: 16, scope: !4817)
!4962 = !DILocation(line: 169, column: 24, scope: !4817)
!4963 = !DILocation(line: 169, column: 2, scope: !4817)
!4964 = !DILocation(line: 171, column: 9, scope: !4817)
!4965 = !DILocation(line: 171, column: 2, scope: !4817)
!4966 = !DILocation(line: 172, column: 1, scope: !4817)
!4967 = !DISubprogram(name: "_printk", scope: !4968, file: !4968, line: 153, type: !4969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4968 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!101, !185, null}
!4971 = distinct !DISubprogram(name: "kzalloc", scope: !139, file: !139, line: 719, type: !4972, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4974)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!149, !312, !710}
!4974 = !{!4975, !4976}
!4975 = !DILocalVariable(name: "size", arg: 1, scope: !4971, file: !139, line: 719, type: !312)
!4976 = !DILocalVariable(name: "flags", arg: 2, scope: !4971, file: !139, line: 719, type: !710)
!4977 = !DILocation(line: 719, column: 52, scope: !4971)
!4978 = !DILocation(line: 719, column: 64, scope: !4971)
!4979 = !DILocation(line: 721, column: 17, scope: !4971)
!4980 = !DILocation(line: 721, column: 23, scope: !4971)
!4981 = !DILocation(line: 721, column: 29, scope: !4971)
!4982 = !DILocation(line: 721, column: 9, scope: !4971)
!4983 = !DILocation(line: 721, column: 2, scope: !4971)
!4984 = distinct !DISubprogram(name: "atomic_set", scope: !4681, file: !4681, line: 65, type: !4985, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4987)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{null, !4684, !101}
!4987 = !{!4988, !4989}
!4988 = !DILocalVariable(name: "v", arg: 1, scope: !4984, file: !4681, line: 65, type: !4684)
!4989 = !DILocalVariable(name: "i", arg: 2, scope: !4984, file: !4681, line: 65, type: !101)
!4990 = !DILocation(line: 65, column: 22, scope: !4984)
!4991 = !DILocation(line: 65, column: 29, scope: !4984)
!4992 = !DILocation(line: 67, column: 26, scope: !4984)
!4993 = !DILocation(line: 67, column: 2, scope: !4984)
!4994 = !DILocation(line: 68, column: 17, scope: !4984)
!4995 = !DILocation(line: 68, column: 20, scope: !4984)
!4996 = !DILocation(line: 68, column: 2, scope: !4984)
!4997 = !DILocation(line: 69, column: 1, scope: !4984)
!4998 = !DILocation(line: 102, column: 64, scope: !4099)
!4999 = !DILocation(line: 104, column: 18, scope: !4099)
!5000 = !DILocation(line: 104, column: 23, scope: !4099)
!5001 = !DILocation(line: 104, column: 2, scope: !4099)
!5002 = !DILocation(line: 105, column: 2, scope: !4099)
!5003 = !DILocation(line: 105, column: 7, scope: !4099)
!5004 = !DILocation(line: 105, column: 13, scope: !4099)
!5005 = !DILocation(line: 106, column: 2, scope: !4099)
!5006 = !DILocation(line: 106, column: 7, scope: !4099)
!5007 = !DILocation(line: 106, column: 17, scope: !4099)
!5008 = !DILocation(line: 107, column: 2, scope: !4099)
!5009 = !DILocation(line: 107, column: 2, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4099, file: !2, line: 107, column: 2)
!5011 = !DILocation(line: 108, column: 2, scope: !4099)
!5012 = !DILocation(line: 108, column: 2, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4099, file: !2, line: 108, column: 2)
!5014 = !DILocation(line: 109, column: 2, scope: !4099)
!5015 = !DILocation(line: 109, column: 7, scope: !4099)
!5016 = !DILocation(line: 109, column: 12, scope: !4099)
!5017 = !DILocation(line: 110, column: 2, scope: !4099)
!5018 = !DILocation(line: 110, column: 7, scope: !4099)
!5019 = !DILocation(line: 110, column: 13, scope: !4099)
!5020 = !DILocation(line: 111, column: 1, scope: !4099)
!5021 = !DISubprogram(name: "mutex_lock", scope: !646, file: !646, line: 227, type: !5022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{null, !5024}
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!5025 = !DISubprogram(name: "_raw_write_lock_irq", scope: !4676, file: !4676, line: 24, type: !4677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5026 = !DISubprogram(name: "kfree", scope: !139, file: !139, line: 227, type: !5027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{null, !1901}
!5029 = distinct !DISubprogram(name: "list_add_tail", scope: !5030, file: !5030, line: 181, type: !5031, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5033)
!5030 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5031 = !DISubroutineType(types: !5032)
!5032 = !{null, !171, !171}
!5033 = !{!5034, !5035}
!5034 = !DILocalVariable(name: "new", arg: 1, scope: !5029, file: !5030, line: 181, type: !171)
!5035 = !DILocalVariable(name: "head", arg: 2, scope: !5029, file: !5030, line: 181, type: !171)
!5036 = !DILocation(line: 181, column: 52, scope: !5029)
!5037 = !DILocation(line: 181, column: 75, scope: !5029)
!5038 = !DILocation(line: 183, column: 13, scope: !5029)
!5039 = !DILocation(line: 183, column: 18, scope: !5029)
!5040 = !DILocation(line: 183, column: 24, scope: !5029)
!5041 = !DILocation(line: 183, column: 30, scope: !5029)
!5042 = !DILocation(line: 183, column: 2, scope: !5029)
!5043 = !DILocation(line: 184, column: 1, scope: !5029)
!5044 = !DISubprogram(name: "sprintf", scope: !5045, file: !5045, line: 10, type: !5046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5045 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!101, !265, !185, null}
!5048 = !DISubprogram(name: "_raw_write_unlock_irq", scope: !4676, file: !4676, line: 36, type: !4677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5049 = !DISubprogram(name: "mutex_unlock", scope: !646, file: !646, line: 246, type: !5022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5050 = distinct !DISubprogram(name: "snd_seq_delete_port", scope: !2, file: !2, line: 280, type: !5051, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5053)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!101, !4127, !101}
!5053 = !{!5054, !5055, !5056, !5057, !5058, !5061}
!5054 = !DILocalVariable(name: "client", arg: 1, scope: !5050, file: !2, line: 280, type: !4127)
!5055 = !DILocalVariable(name: "port", arg: 2, scope: !5050, file: !2, line: 280, type: !101)
!5056 = !DILocalVariable(name: "found", scope: !5050, file: !2, line: 282, type: !150)
!5057 = !DILocalVariable(name: "p", scope: !5050, file: !2, line: 282, type: !150)
!5058 = !DILocalVariable(name: "__mptr", scope: !5059, file: !2, line: 286, type: !149)
!5059 = distinct !DILexicalBlock(scope: !5060, file: !2, line: 286, column: 2)
!5060 = distinct !DILexicalBlock(scope: !5050, file: !2, line: 286, column: 2)
!5061 = !DILocalVariable(name: "__mptr", scope: !5062, file: !2, line: 286, type: !149)
!5062 = distinct !DILexicalBlock(scope: !5063, file: !2, line: 286, column: 2)
!5063 = distinct !DILexicalBlock(scope: !5060, file: !2, line: 286, column: 2)
!5064 = !DILocation(line: 280, column: 48, scope: !5050)
!5065 = !DILocation(line: 280, column: 60, scope: !5050)
!5066 = !DILocation(line: 282, column: 2, scope: !5050)
!5067 = !DILocation(line: 282, column: 30, scope: !5050)
!5068 = !DILocation(line: 282, column: 45, scope: !5050)
!5069 = !DILocation(line: 284, column: 14, scope: !5050)
!5070 = !DILocation(line: 284, column: 22, scope: !5050)
!5071 = !DILocation(line: 284, column: 2, scope: !5050)
!5072 = !DILocation(line: 285, column: 2, scope: !5050)
!5073 = !DILocation(line: 286, column: 2, scope: !5059)
!5074 = !DILocation(line: 286, column: 2, scope: !5060)
!5075 = !DILocation(line: 286, column: 2, scope: !5063)
!5076 = !DILocation(line: 287, column: 7, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5078, file: !2, line: 287, column: 7)
!5078 = distinct !DILexicalBlock(scope: !5063, file: !2, line: 286, column: 57)
!5079 = !DILocation(line: 287, column: 10, scope: !5077)
!5080 = !DILocation(line: 287, column: 15, scope: !5077)
!5081 = !DILocation(line: 287, column: 23, scope: !5077)
!5082 = !DILocation(line: 287, column: 20, scope: !5077)
!5083 = !DILocation(line: 287, column: 7, scope: !5078)
!5084 = !DILocation(line: 289, column: 14, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5077, file: !2, line: 287, column: 29)
!5086 = !DILocation(line: 289, column: 17, scope: !5085)
!5087 = !DILocation(line: 289, column: 4, scope: !5085)
!5088 = !DILocation(line: 290, column: 4, scope: !5085)
!5089 = !DILocation(line: 290, column: 12, scope: !5085)
!5090 = !DILocation(line: 290, column: 21, scope: !5085)
!5091 = !DILocation(line: 291, column: 12, scope: !5085)
!5092 = !DILocation(line: 291, column: 10, scope: !5085)
!5093 = !DILocation(line: 292, column: 4, scope: !5085)
!5094 = !DILocation(line: 294, column: 2, scope: !5078)
!5095 = !DILocation(line: 286, column: 2, scope: !5062)
!5096 = distinct !{!5096, !5074, !5097, !4670, !4671}
!5097 = !DILocation(line: 294, column: 2, scope: !5060)
!5098 = !DILocation(line: 295, column: 2, scope: !5050)
!5099 = !DILocation(line: 296, column: 16, scope: !5050)
!5100 = !DILocation(line: 296, column: 24, scope: !5050)
!5101 = !DILocation(line: 296, column: 2, scope: !5050)
!5102 = !DILocation(line: 297, column: 6, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5050, file: !2, line: 297, column: 6)
!5104 = !DILocation(line: 297, column: 6, scope: !5050)
!5105 = !DILocation(line: 298, column: 22, scope: !5103)
!5106 = !DILocation(line: 298, column: 30, scope: !5103)
!5107 = !DILocation(line: 298, column: 10, scope: !5103)
!5108 = !DILocation(line: 298, column: 3, scope: !5103)
!5109 = !DILocation(line: 300, column: 3, scope: !5103)
!5110 = !DILocation(line: 301, column: 1, scope: !5050)
!5111 = distinct !DISubprogram(name: "list_del", scope: !5030, file: !5030, line: 227, type: !5112, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5114)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{null, !171}
!5114 = !{!5115}
!5115 = !DILocalVariable(name: "entry", arg: 1, scope: !5111, file: !5030, line: 227, type: !171)
!5116 = !DILocation(line: 227, column: 47, scope: !5111)
!5117 = !DILocation(line: 229, column: 19, scope: !5111)
!5118 = !DILocation(line: 229, column: 2, scope: !5111)
!5119 = !DILocation(line: 230, column: 2, scope: !5111)
!5120 = !DILocation(line: 230, column: 9, scope: !5111)
!5121 = !DILocation(line: 230, column: 14, scope: !5111)
!5122 = !DILocation(line: 231, column: 2, scope: !5111)
!5123 = !DILocation(line: 231, column: 9, scope: !5111)
!5124 = !DILocation(line: 231, column: 14, scope: !5111)
!5125 = !DILocation(line: 232, column: 1, scope: !5111)
!5126 = distinct !DISubprogram(name: "port_delete", scope: !2, file: !2, line: 257, type: !5127, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5129)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!101, !4127, !150}
!5129 = !{!5130, !5131, !5132, !5134}
!5130 = !DILocalVariable(name: "client", arg: 1, scope: !5126, file: !2, line: 257, type: !4127)
!5131 = !DILocalVariable(name: "port", arg: 2, scope: !5126, file: !2, line: 258, type: !150)
!5132 = !DILocalVariable(name: "__ret_warn_on", scope: !5133, file: !2, line: 271, type: !101)
!5133 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 271, column: 2)
!5134 = !DILocalVariable(name: "__ret_warn_on", scope: !5135, file: !2, line: 272, type: !101)
!5135 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 272, column: 2)
!5136 = !DILocation(line: 257, column: 47, scope: !5126)
!5137 = !DILocation(line: 258, column: 38, scope: !5126)
!5138 = !DILocation(line: 261, column: 2, scope: !5126)
!5139 = !DILocation(line: 261, column: 8, scope: !5126)
!5140 = !DILocation(line: 261, column: 16, scope: !5126)
!5141 = !DILocation(line: 262, column: 2, scope: !5126)
!5142 = !DILocation(line: 265, column: 24, scope: !5126)
!5143 = !DILocation(line: 265, column: 32, scope: !5126)
!5144 = !DILocation(line: 265, column: 39, scope: !5126)
!5145 = !DILocation(line: 265, column: 45, scope: !5126)
!5146 = !DILocation(line: 265, column: 2, scope: !5126)
!5147 = !DILocation(line: 266, column: 24, scope: !5126)
!5148 = !DILocation(line: 266, column: 32, scope: !5126)
!5149 = !DILocation(line: 266, column: 39, scope: !5126)
!5150 = !DILocation(line: 266, column: 45, scope: !5126)
!5151 = !DILocation(line: 266, column: 2, scope: !5126)
!5152 = !DILocation(line: 268, column: 6, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 268, column: 6)
!5154 = !DILocation(line: 268, column: 12, scope: !5153)
!5155 = !DILocation(line: 268, column: 6, scope: !5126)
!5156 = !DILocation(line: 269, column: 3, scope: !5153)
!5157 = !DILocation(line: 269, column: 9, scope: !5153)
!5158 = !DILocation(line: 269, column: 22, scope: !5153)
!5159 = !DILocation(line: 269, column: 28, scope: !5153)
!5160 = !DILocation(line: 271, column: 2, scope: !5133)
!5161 = !DILocation(line: 271, column: 2, scope: !5126)
!5162 = !DILocation(line: 272, column: 2, scope: !5135)
!5163 = !DILocation(line: 272, column: 2, scope: !5126)
!5164 = !DILocation(line: 274, column: 8, scope: !5126)
!5165 = !DILocation(line: 274, column: 2, scope: !5126)
!5166 = !DILocation(line: 275, column: 2, scope: !5126)
!5167 = distinct !DISubprogram(name: "snd_seq_delete_all_ports", scope: !2, file: !2, line: 304, type: !5168, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5170)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!101, !4127}
!5170 = !{!5171, !5172, !5173, !5174, !5175, !5178, !5180}
!5171 = !DILocalVariable(name: "client", arg: 1, scope: !5167, file: !2, line: 304, type: !4127)
!5172 = !DILocalVariable(name: "deleted_list", scope: !5167, file: !2, line: 306, type: !167)
!5173 = !DILocalVariable(name: "port", scope: !5167, file: !2, line: 307, type: !150)
!5174 = !DILocalVariable(name: "tmp", scope: !5167, file: !2, line: 307, type: !150)
!5175 = !DILocalVariable(name: "__mptr", scope: !5176, file: !2, line: 324, type: !149)
!5176 = distinct !DILexicalBlock(scope: !5177, file: !2, line: 324, column: 2)
!5177 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 324, column: 2)
!5178 = !DILocalVariable(name: "__mptr", scope: !5179, file: !2, line: 324, type: !149)
!5179 = distinct !DILexicalBlock(scope: !5177, file: !2, line: 324, column: 2)
!5180 = !DILocalVariable(name: "__mptr", scope: !5181, file: !2, line: 324, type: !149)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !2, line: 324, column: 2)
!5182 = distinct !DILexicalBlock(scope: !5177, file: !2, line: 324, column: 2)
!5183 = !DILocation(line: 304, column: 53, scope: !5167)
!5184 = !DILocation(line: 306, column: 2, scope: !5167)
!5185 = !DILocation(line: 306, column: 19, scope: !5167)
!5186 = !DILocation(line: 307, column: 2, scope: !5167)
!5187 = !DILocation(line: 307, column: 30, scope: !5167)
!5188 = !DILocation(line: 307, column: 37, scope: !5167)
!5189 = !DILocation(line: 312, column: 14, scope: !5167)
!5190 = !DILocation(line: 312, column: 22, scope: !5167)
!5191 = !DILocation(line: 312, column: 2, scope: !5167)
!5192 = !DILocation(line: 313, column: 2, scope: !5167)
!5193 = !DILocation(line: 314, column: 20, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 314, column: 6)
!5195 = !DILocation(line: 314, column: 28, scope: !5194)
!5196 = !DILocation(line: 314, column: 8, scope: !5194)
!5197 = !DILocation(line: 314, column: 6, scope: !5167)
!5198 = !DILocation(line: 315, column: 28, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5194, file: !2, line: 314, column: 46)
!5200 = !DILocation(line: 315, column: 36, scope: !5199)
!5201 = !DILocation(line: 315, column: 3, scope: !5199)
!5202 = !DILocation(line: 316, column: 18, scope: !5199)
!5203 = !DILocation(line: 316, column: 26, scope: !5199)
!5204 = !DILocation(line: 316, column: 3, scope: !5199)
!5205 = !DILocation(line: 317, column: 2, scope: !5199)
!5206 = !DILocation(line: 318, column: 3, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5194, file: !2, line: 317, column: 9)
!5208 = !DILocation(line: 320, column: 2, scope: !5167)
!5209 = !DILocation(line: 320, column: 10, scope: !5167)
!5210 = !DILocation(line: 320, column: 20, scope: !5167)
!5211 = !DILocation(line: 321, column: 2, scope: !5167)
!5212 = !DILocation(line: 324, column: 2, scope: !5176)
!5213 = !DILocation(line: 324, column: 2, scope: !5177)
!5214 = !DILocation(line: 324, column: 2, scope: !5179)
!5215 = !DILocation(line: 324, column: 2, scope: !5182)
!5216 = !DILocation(line: 325, column: 13, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5182, file: !2, line: 324, column: 59)
!5218 = !DILocation(line: 325, column: 19, scope: !5217)
!5219 = !DILocation(line: 325, column: 3, scope: !5217)
!5220 = !DILocation(line: 326, column: 3, scope: !5217)
!5221 = !DILocation(line: 327, column: 15, scope: !5217)
!5222 = !DILocation(line: 327, column: 23, scope: !5217)
!5223 = !DILocation(line: 327, column: 3, scope: !5217)
!5224 = !DILocation(line: 328, column: 2, scope: !5217)
!5225 = !DILocation(line: 324, column: 2, scope: !5181)
!5226 = distinct !{!5226, !5213, !5227, !4670, !4671}
!5227 = !DILocation(line: 328, column: 2, scope: !5177)
!5228 = !DILocation(line: 329, column: 16, scope: !5167)
!5229 = !DILocation(line: 329, column: 24, scope: !5167)
!5230 = !DILocation(line: 329, column: 2, scope: !5167)
!5231 = !DILocation(line: 331, column: 1, scope: !5167)
!5232 = !DILocation(line: 330, column: 2, scope: !5167)
!5233 = distinct !DISubprogram(name: "list_empty", scope: !5030, file: !5030, line: 371, type: !5234, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5238)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{!101, !5236}
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5237, size: 64)
!5237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!5238 = !{!5239}
!5239 = !DILocalVariable(name: "head", arg: 1, scope: !5233, file: !5030, line: 371, type: !5236)
!5240 = !DILocation(line: 371, column: 54, scope: !5233)
!5241 = !DILocation(line: 373, column: 9, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5233, file: !5030, line: 373, column: 9)
!5243 = !DILocation(line: 373, column: 9, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5242, file: !5030, line: 373, column: 9)
!5245 = !DILocation(line: 373, column: 34, scope: !5233)
!5246 = !DILocation(line: 373, column: 31, scope: !5233)
!5247 = !DILocation(line: 373, column: 2, scope: !5233)
!5248 = distinct !DISubprogram(name: "list_add", scope: !5030, file: !5030, line: 167, type: !5031, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5249)
!5249 = !{!5250, !5251}
!5250 = !DILocalVariable(name: "new", arg: 1, scope: !5248, file: !5030, line: 167, type: !171)
!5251 = !DILocalVariable(name: "head", arg: 2, scope: !5248, file: !5030, line: 167, type: !171)
!5252 = !DILocation(line: 167, column: 47, scope: !5248)
!5253 = !DILocation(line: 167, column: 70, scope: !5248)
!5254 = !DILocation(line: 169, column: 13, scope: !5248)
!5255 = !DILocation(line: 169, column: 18, scope: !5248)
!5256 = !DILocation(line: 169, column: 24, scope: !5248)
!5257 = !DILocation(line: 169, column: 30, scope: !5248)
!5258 = !DILocation(line: 169, column: 2, scope: !5248)
!5259 = !DILocation(line: 170, column: 1, scope: !5248)
!5260 = distinct !DISubprogram(name: "list_del_init", scope: !5030, file: !5030, line: 285, type: !5112, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5261)
!5261 = !{!5262}
!5262 = !DILocalVariable(name: "entry", arg: 1, scope: !5260, file: !5030, line: 285, type: !171)
!5263 = !DILocation(line: 285, column: 52, scope: !5260)
!5264 = !DILocation(line: 287, column: 19, scope: !5260)
!5265 = !DILocation(line: 287, column: 2, scope: !5260)
!5266 = !DILocation(line: 288, column: 17, scope: !5260)
!5267 = !DILocation(line: 288, column: 2, scope: !5260)
!5268 = !DILocation(line: 289, column: 1, scope: !5260)
!5269 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5030, file: !5030, line: 35, type: !5112, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5270)
!5270 = !{!5271}
!5271 = !DILocalVariable(name: "list", arg: 1, scope: !5269, file: !5030, line: 35, type: !171)
!5272 = !DILocation(line: 35, column: 53, scope: !5269)
!5273 = !DILocation(line: 37, column: 2, scope: !5269)
!5274 = !DILocation(line: 37, column: 2, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5269, file: !5030, line: 37, column: 2)
!5276 = !DILocation(line: 37, column: 2, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5275, file: !5030, line: 37, column: 2)
!5278 = !DILocation(line: 37, column: 2, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5275, file: !5030, line: 37, column: 2)
!5280 = !DILocation(line: 38, column: 2, scope: !5269)
!5281 = !DILocation(line: 38, column: 2, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5269, file: !5030, line: 38, column: 2)
!5283 = !DILocation(line: 38, column: 2, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5282, file: !5030, line: 38, column: 2)
!5285 = !DILocation(line: 38, column: 2, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5282, file: !5030, line: 38, column: 2)
!5287 = !DILocation(line: 39, column: 1, scope: !5269)
!5288 = !DISubprogram(name: "snd_seq_system_broadcast", scope: !5289, file: !5289, line: 13, type: !5290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5289 = !DIFile(filename: "sound/core/seq/seq_system.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a09c546c5010be6f39b9367b74da9b")
!5290 = !DISubroutineType(types: !5291)
!5291 = !{null, !101, !101, !101}
!5292 = distinct !DISubprogram(name: "snd_seq_set_port_info", scope: !2, file: !2, line: 334, type: !5293, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5295)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!101, !150, !4697}
!5295 = !{!5296, !5297, !5298}
!5296 = !DILocalVariable(name: "port", arg: 1, scope: !5292, file: !2, line: 334, type: !150)
!5297 = !DILocalVariable(name: "info", arg: 2, scope: !5292, file: !2, line: 335, type: !4697)
!5298 = !DILocalVariable(name: "__ret_warn_on", scope: !5299, file: !2, line: 337, type: !101)
!5299 = distinct !DILexicalBlock(scope: !5300, file: !2, line: 337, column: 6)
!5300 = distinct !DILexicalBlock(scope: !5292, file: !2, line: 337, column: 6)
!5301 = !DILocation(line: 334, column: 56, scope: !5292)
!5302 = !DILocation(line: 335, column: 33, scope: !5292)
!5303 = !DILocation(line: 337, column: 6, scope: !5299)
!5304 = !DILocation(line: 337, column: 6, scope: !5300)
!5305 = !DILocation(line: 337, column: 6, scope: !5292)
!5306 = !DILocation(line: 338, column: 3, scope: !5300)
!5307 = !DILocation(line: 341, column: 6, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5292, file: !2, line: 341, column: 6)
!5309 = !DILocation(line: 341, column: 12, scope: !5308)
!5310 = !DILocation(line: 341, column: 6, scope: !5292)
!5311 = !DILocation(line: 342, column: 11, scope: !5308)
!5312 = !DILocation(line: 342, column: 17, scope: !5308)
!5313 = !DILocation(line: 342, column: 23, scope: !5308)
!5314 = !DILocation(line: 342, column: 29, scope: !5308)
!5315 = !DILocation(line: 342, column: 3, scope: !5308)
!5316 = !DILocation(line: 345, column: 21, scope: !5292)
!5317 = !DILocation(line: 345, column: 27, scope: !5292)
!5318 = !DILocation(line: 345, column: 2, scope: !5292)
!5319 = !DILocation(line: 345, column: 8, scope: !5292)
!5320 = !DILocation(line: 345, column: 19, scope: !5292)
!5321 = !DILocation(line: 348, column: 15, scope: !5292)
!5322 = !DILocation(line: 348, column: 21, scope: !5292)
!5323 = !DILocation(line: 348, column: 2, scope: !5292)
!5324 = !DILocation(line: 348, column: 8, scope: !5292)
!5325 = !DILocation(line: 348, column: 13, scope: !5292)
!5326 = !DILocation(line: 351, column: 24, scope: !5292)
!5327 = !DILocation(line: 351, column: 30, scope: !5292)
!5328 = !DILocation(line: 351, column: 2, scope: !5292)
!5329 = !DILocation(line: 351, column: 8, scope: !5292)
!5330 = !DILocation(line: 351, column: 22, scope: !5292)
!5331 = !DILocation(line: 352, column: 22, scope: !5292)
!5332 = !DILocation(line: 352, column: 28, scope: !5292)
!5333 = !DILocation(line: 352, column: 2, scope: !5292)
!5334 = !DILocation(line: 352, column: 8, scope: !5292)
!5335 = !DILocation(line: 352, column: 20, scope: !5292)
!5336 = !DILocation(line: 353, column: 23, scope: !5292)
!5337 = !DILocation(line: 353, column: 29, scope: !5292)
!5338 = !DILocation(line: 353, column: 2, scope: !5292)
!5339 = !DILocation(line: 353, column: 8, scope: !5292)
!5340 = !DILocation(line: 353, column: 21, scope: !5292)
!5341 = !DILocation(line: 356, column: 24, scope: !5292)
!5342 = !DILocation(line: 356, column: 30, scope: !5292)
!5343 = !DILocation(line: 356, column: 36, scope: !5292)
!5344 = !DILocation(line: 356, column: 23, scope: !5292)
!5345 = !DILocation(line: 356, column: 2, scope: !5292)
!5346 = !DILocation(line: 356, column: 8, scope: !5292)
!5347 = !DILocation(line: 356, column: 21, scope: !5292)
!5348 = !DILocation(line: 357, column: 21, scope: !5292)
!5349 = !DILocation(line: 357, column: 27, scope: !5292)
!5350 = !DILocation(line: 357, column: 33, scope: !5292)
!5351 = !DILocation(line: 357, column: 20, scope: !5292)
!5352 = !DILocation(line: 357, column: 2, scope: !5292)
!5353 = !DILocation(line: 357, column: 8, scope: !5292)
!5354 = !DILocation(line: 357, column: 18, scope: !5292)
!5355 = !DILocation(line: 358, column: 21, scope: !5292)
!5356 = !DILocation(line: 358, column: 27, scope: !5292)
!5357 = !DILocation(line: 358, column: 2, scope: !5292)
!5358 = !DILocation(line: 358, column: 8, scope: !5292)
!5359 = !DILocation(line: 358, column: 19, scope: !5292)
!5360 = !DILocation(line: 361, column: 20, scope: !5292)
!5361 = !DILocation(line: 361, column: 26, scope: !5292)
!5362 = !DILocation(line: 361, column: 2, scope: !5292)
!5363 = !DILocation(line: 361, column: 8, scope: !5292)
!5364 = !DILocation(line: 361, column: 18, scope: !5292)
!5365 = !DILocation(line: 362, column: 20, scope: !5292)
!5366 = !DILocation(line: 362, column: 26, scope: !5292)
!5367 = !DILocation(line: 362, column: 2, scope: !5292)
!5368 = !DILocation(line: 362, column: 8, scope: !5292)
!5369 = !DILocation(line: 362, column: 18, scope: !5292)
!5370 = !DILocation(line: 363, column: 6, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5292, file: !2, line: 363, column: 6)
!5372 = !DILocation(line: 363, column: 12, scope: !5371)
!5373 = !DILocation(line: 363, column: 22, scope: !5371)
!5374 = !DILocation(line: 363, column: 6, scope: !5292)
!5375 = !DILocation(line: 364, column: 3, scope: !5371)
!5376 = !DILocation(line: 364, column: 9, scope: !5371)
!5377 = !DILocation(line: 364, column: 19, scope: !5371)
!5378 = !DILocation(line: 367, column: 7, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5292, file: !2, line: 367, column: 6)
!5380 = !DILocation(line: 367, column: 13, scope: !5379)
!5381 = !DILocation(line: 367, column: 6, scope: !5292)
!5382 = !DILocation(line: 368, column: 7, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5384, file: !2, line: 368, column: 7)
!5384 = distinct !DILexicalBlock(scope: !5379, file: !2, line: 367, column: 24)
!5385 = !DILocation(line: 368, column: 13, scope: !5383)
!5386 = !DILocation(line: 368, column: 24, scope: !5383)
!5387 = !DILocation(line: 368, column: 7, scope: !5384)
!5388 = !DILocation(line: 369, column: 4, scope: !5383)
!5389 = !DILocation(line: 369, column: 10, scope: !5383)
!5390 = !DILocation(line: 369, column: 20, scope: !5383)
!5391 = !DILocation(line: 370, column: 7, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5384, file: !2, line: 370, column: 7)
!5393 = !DILocation(line: 370, column: 13, scope: !5392)
!5394 = !DILocation(line: 370, column: 24, scope: !5392)
!5395 = !DILocation(line: 370, column: 7, scope: !5384)
!5396 = !DILocation(line: 371, column: 4, scope: !5392)
!5397 = !DILocation(line: 371, column: 10, scope: !5392)
!5398 = !DILocation(line: 371, column: 20, scope: !5392)
!5399 = !DILocation(line: 372, column: 2, scope: !5384)
!5400 = !DILocation(line: 374, column: 2, scope: !5292)
!5401 = !DILocation(line: 375, column: 1, scope: !5292)
!5402 = !DISubprogram(name: "strscpy", scope: !5403, file: !5403, line: 72, type: !5404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5403 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!297, !265, !185, !312}
!5406 = distinct !DISubprogram(name: "snd_seq_get_port_info", scope: !2, file: !2, line: 378, type: !5293, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5407)
!5407 = !{!5408, !5409, !5410}
!5408 = !DILocalVariable(name: "port", arg: 1, scope: !5406, file: !2, line: 378, type: !150)
!5409 = !DILocalVariable(name: "info", arg: 2, scope: !5406, file: !2, line: 379, type: !4697)
!5410 = !DILocalVariable(name: "__ret_warn_on", scope: !5411, file: !2, line: 381, type: !101)
!5411 = distinct !DILexicalBlock(scope: !5412, file: !2, line: 381, column: 6)
!5412 = distinct !DILexicalBlock(scope: !5406, file: !2, line: 381, column: 6)
!5413 = !DILocation(line: 378, column: 56, scope: !5406)
!5414 = !DILocation(line: 379, column: 33, scope: !5406)
!5415 = !DILocation(line: 381, column: 6, scope: !5411)
!5416 = !DILocation(line: 381, column: 6, scope: !5412)
!5417 = !DILocation(line: 381, column: 6, scope: !5406)
!5418 = !DILocation(line: 382, column: 3, scope: !5412)
!5419 = !DILocation(line: 385, column: 10, scope: !5406)
!5420 = !DILocation(line: 385, column: 16, scope: !5406)
!5421 = !DILocation(line: 385, column: 22, scope: !5406)
!5422 = !DILocation(line: 385, column: 28, scope: !5406)
!5423 = !DILocation(line: 385, column: 2, scope: !5406)
!5424 = !DILocation(line: 388, column: 21, scope: !5406)
!5425 = !DILocation(line: 388, column: 27, scope: !5406)
!5426 = !DILocation(line: 388, column: 2, scope: !5406)
!5427 = !DILocation(line: 388, column: 8, scope: !5406)
!5428 = !DILocation(line: 388, column: 19, scope: !5406)
!5429 = !DILocation(line: 391, column: 15, scope: !5406)
!5430 = !DILocation(line: 391, column: 21, scope: !5406)
!5431 = !DILocation(line: 391, column: 2, scope: !5406)
!5432 = !DILocation(line: 391, column: 8, scope: !5406)
!5433 = !DILocation(line: 391, column: 13, scope: !5406)
!5434 = !DILocation(line: 394, column: 24, scope: !5406)
!5435 = !DILocation(line: 394, column: 30, scope: !5406)
!5436 = !DILocation(line: 394, column: 2, scope: !5406)
!5437 = !DILocation(line: 394, column: 8, scope: !5406)
!5438 = !DILocation(line: 394, column: 22, scope: !5406)
!5439 = !DILocation(line: 395, column: 22, scope: !5406)
!5440 = !DILocation(line: 395, column: 28, scope: !5406)
!5441 = !DILocation(line: 395, column: 2, scope: !5406)
!5442 = !DILocation(line: 395, column: 8, scope: !5406)
!5443 = !DILocation(line: 395, column: 20, scope: !5406)
!5444 = !DILocation(line: 396, column: 23, scope: !5406)
!5445 = !DILocation(line: 396, column: 29, scope: !5406)
!5446 = !DILocation(line: 396, column: 2, scope: !5406)
!5447 = !DILocation(line: 396, column: 8, scope: !5406)
!5448 = !DILocation(line: 396, column: 21, scope: !5406)
!5449 = !DILocation(line: 399, column: 19, scope: !5406)
!5450 = !DILocation(line: 399, column: 25, scope: !5406)
!5451 = !DILocation(line: 399, column: 31, scope: !5406)
!5452 = !DILocation(line: 399, column: 2, scope: !5406)
!5453 = !DILocation(line: 399, column: 8, scope: !5406)
!5454 = !DILocation(line: 399, column: 17, scope: !5406)
!5455 = !DILocation(line: 400, column: 20, scope: !5406)
!5456 = !DILocation(line: 400, column: 26, scope: !5406)
!5457 = !DILocation(line: 400, column: 33, scope: !5406)
!5458 = !DILocation(line: 400, column: 2, scope: !5406)
!5459 = !DILocation(line: 400, column: 8, scope: !5406)
!5460 = !DILocation(line: 400, column: 18, scope: !5406)
!5461 = !DILocation(line: 403, column: 2, scope: !5406)
!5462 = !DILocation(line: 403, column: 8, scope: !5406)
!5463 = !DILocation(line: 403, column: 14, scope: !5406)
!5464 = !DILocation(line: 404, column: 6, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5406, file: !2, line: 404, column: 6)
!5466 = !DILocation(line: 404, column: 12, scope: !5465)
!5467 = !DILocation(line: 404, column: 6, scope: !5406)
!5468 = !DILocation(line: 405, column: 3, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5465, file: !2, line: 404, column: 26)
!5470 = !DILocation(line: 405, column: 9, scope: !5469)
!5471 = !DILocation(line: 405, column: 15, scope: !5469)
!5472 = !DILocation(line: 406, column: 7, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5469, file: !2, line: 406, column: 7)
!5474 = !DILocation(line: 406, column: 13, scope: !5473)
!5475 = !DILocation(line: 406, column: 7, scope: !5469)
!5476 = !DILocation(line: 407, column: 4, scope: !5473)
!5477 = !DILocation(line: 407, column: 10, scope: !5473)
!5478 = !DILocation(line: 407, column: 16, scope: !5473)
!5479 = !DILocation(line: 408, column: 22, scope: !5469)
!5480 = !DILocation(line: 408, column: 28, scope: !5469)
!5481 = !DILocation(line: 408, column: 3, scope: !5469)
!5482 = !DILocation(line: 408, column: 9, scope: !5469)
!5483 = !DILocation(line: 408, column: 20, scope: !5469)
!5484 = !DILocation(line: 409, column: 2, scope: !5469)
!5485 = !DILocation(line: 412, column: 20, scope: !5406)
!5486 = !DILocation(line: 412, column: 26, scope: !5406)
!5487 = !DILocation(line: 412, column: 2, scope: !5406)
!5488 = !DILocation(line: 412, column: 8, scope: !5406)
!5489 = !DILocation(line: 412, column: 18, scope: !5406)
!5490 = !DILocation(line: 413, column: 20, scope: !5406)
!5491 = !DILocation(line: 413, column: 26, scope: !5406)
!5492 = !DILocation(line: 413, column: 2, scope: !5406)
!5493 = !DILocation(line: 413, column: 8, scope: !5406)
!5494 = !DILocation(line: 413, column: 18, scope: !5406)
!5495 = !DILocation(line: 415, column: 2, scope: !5406)
!5496 = !DILocation(line: 416, column: 1, scope: !5406)
!5497 = distinct !DISubprogram(name: "snd_seq_port_connect", scope: !2, file: !2, line: 584, type: !5498, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5500)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{!101, !4127, !4127, !150, !4127, !150, !3952}
!5500 = !{!5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510, !5511}
!5501 = !DILocalVariable(name: "connector", arg: 1, scope: !5497, file: !2, line: 584, type: !4127)
!5502 = !DILocalVariable(name: "src_client", arg: 2, scope: !5497, file: !2, line: 585, type: !4127)
!5503 = !DILocalVariable(name: "src_port", arg: 3, scope: !5497, file: !2, line: 586, type: !150)
!5504 = !DILocalVariable(name: "dest_client", arg: 4, scope: !5497, file: !2, line: 587, type: !4127)
!5505 = !DILocalVariable(name: "dest_port", arg: 5, scope: !5497, file: !2, line: 588, type: !150)
!5506 = !DILocalVariable(name: "info", arg: 6, scope: !5497, file: !2, line: 589, type: !3952)
!5507 = !DILocalVariable(name: "subs", scope: !5497, file: !2, line: 591, type: !4075)
!5508 = !DILocalVariable(name: "exclusive", scope: !5497, file: !2, line: 592, type: !1464)
!5509 = !DILocalVariable(name: "err", scope: !5497, file: !2, line: 593, type: !101)
!5510 = !DILabel(scope: !5497, name: "error_dest", file: !2, line: 619)
!5511 = !DILabel(scope: !5497, name: "error", file: !2, line: 622)
!5512 = !DILocation(line: 584, column: 49, scope: !5497)
!5513 = !DILocation(line: 585, column: 28, scope: !5497)
!5514 = !DILocation(line: 586, column: 33, scope: !5497)
!5515 = !DILocation(line: 587, column: 28, scope: !5497)
!5516 = !DILocation(line: 588, column: 33, scope: !5497)
!5517 = !DILocation(line: 589, column: 36, scope: !5497)
!5518 = !DILocation(line: 591, column: 2, scope: !5497)
!5519 = !DILocation(line: 591, column: 30, scope: !5497)
!5520 = !DILocation(line: 592, column: 2, scope: !5497)
!5521 = !DILocation(line: 592, column: 7, scope: !5497)
!5522 = !DILocation(line: 593, column: 2, scope: !5497)
!5523 = !DILocation(line: 593, column: 6, scope: !5497)
!5524 = !DILocation(line: 595, column: 9, scope: !5497)
!5525 = !DILocation(line: 595, column: 7, scope: !5497)
!5526 = !DILocation(line: 596, column: 7, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5497, file: !2, line: 596, column: 6)
!5528 = !DILocation(line: 596, column: 6, scope: !5497)
!5529 = !DILocation(line: 597, column: 3, scope: !5527)
!5530 = !DILocation(line: 599, column: 2, scope: !5497)
!5531 = !DILocation(line: 599, column: 8, scope: !5497)
!5532 = !DILocation(line: 599, column: 16, scope: !5497)
!5533 = !DILocation(line: 599, column: 15, scope: !5497)
!5534 = !DILocation(line: 600, column: 14, scope: !5497)
!5535 = !DILocation(line: 600, column: 20, scope: !5497)
!5536 = !DILocation(line: 600, column: 2, scope: !5497)
!5537 = !DILocation(line: 601, column: 18, scope: !5497)
!5538 = !DILocation(line: 601, column: 24, scope: !5497)
!5539 = !DILocation(line: 601, column: 2, scope: !5497)
!5540 = !DILocation(line: 602, column: 18, scope: !5497)
!5541 = !DILocation(line: 602, column: 24, scope: !5497)
!5542 = !DILocation(line: 602, column: 2, scope: !5497)
!5543 = !DILocation(line: 604, column: 17, scope: !5497)
!5544 = !DILocation(line: 604, column: 23, scope: !5497)
!5545 = !DILocation(line: 604, column: 29, scope: !5497)
!5546 = !DILocation(line: 604, column: 15, scope: !5497)
!5547 = !DILocation(line: 604, column: 14, scope: !5497)
!5548 = !DILocation(line: 604, column: 12, scope: !5497)
!5549 = !DILocation(line: 606, column: 33, scope: !5497)
!5550 = !DILocation(line: 606, column: 45, scope: !5497)
!5551 = !DILocation(line: 606, column: 55, scope: !5497)
!5552 = !DILocation(line: 607, column: 12, scope: !5497)
!5553 = !DILocation(line: 608, column: 12, scope: !5497)
!5554 = !DILocation(line: 608, column: 23, scope: !5497)
!5555 = !DILocation(line: 608, column: 33, scope: !5497)
!5556 = !DILocation(line: 608, column: 45, scope: !5497)
!5557 = !DILocation(line: 608, column: 30, scope: !5497)
!5558 = !DILocation(line: 606, column: 8, scope: !5497)
!5559 = !DILocation(line: 606, column: 6, scope: !5497)
!5560 = !DILocation(line: 609, column: 6, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5497, file: !2, line: 609, column: 6)
!5562 = !DILocation(line: 609, column: 10, scope: !5561)
!5563 = !DILocation(line: 609, column: 6, scope: !5497)
!5564 = !DILocation(line: 610, column: 3, scope: !5561)
!5565 = !DILocation(line: 611, column: 33, scope: !5497)
!5566 = !DILocation(line: 611, column: 46, scope: !5497)
!5567 = !DILocation(line: 611, column: 57, scope: !5497)
!5568 = !DILocation(line: 612, column: 12, scope: !5497)
!5569 = !DILocation(line: 613, column: 12, scope: !5497)
!5570 = !DILocation(line: 613, column: 23, scope: !5497)
!5571 = !DILocation(line: 613, column: 33, scope: !5497)
!5572 = !DILocation(line: 613, column: 46, scope: !5497)
!5573 = !DILocation(line: 613, column: 30, scope: !5497)
!5574 = !DILocation(line: 611, column: 8, scope: !5497)
!5575 = !DILocation(line: 611, column: 6, scope: !5497)
!5576 = !DILocation(line: 614, column: 6, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5497, file: !2, line: 614, column: 6)
!5578 = !DILocation(line: 614, column: 10, scope: !5577)
!5579 = !DILocation(line: 614, column: 6, scope: !5497)
!5580 = !DILocation(line: 615, column: 3, scope: !5577)
!5581 = !DILocation(line: 617, column: 2, scope: !5497)
!5582 = !DILocation(line: 619, column: 2, scope: !5497)
!5583 = !DILocation(line: 620, column: 30, scope: !5497)
!5584 = !DILocation(line: 620, column: 42, scope: !5497)
!5585 = !DILocation(line: 620, column: 52, scope: !5497)
!5586 = !DILocation(line: 621, column: 9, scope: !5497)
!5587 = !DILocation(line: 621, column: 20, scope: !5497)
!5588 = !DILocation(line: 621, column: 30, scope: !5497)
!5589 = !DILocation(line: 621, column: 42, scope: !5497)
!5590 = !DILocation(line: 621, column: 27, scope: !5497)
!5591 = !DILocation(line: 620, column: 2, scope: !5497)
!5592 = !DILocation(line: 622, column: 2, scope: !5497)
!5593 = !DILocation(line: 623, column: 8, scope: !5497)
!5594 = !DILocation(line: 623, column: 2, scope: !5497)
!5595 = !DILocation(line: 624, column: 9, scope: !5497)
!5596 = !DILocation(line: 624, column: 2, scope: !5497)
!5597 = !DILocation(line: 625, column: 1, scope: !5497)
!5598 = distinct !DISubprogram(name: "check_and_subscribe_port", scope: !2, file: !2, line: 498, type: !5599, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5601)
!5599 = !DISubroutineType(types: !5600)
!5600 = !{!101, !4127, !150, !4075, !1464, !1464, !1464}
!5601 = !{!5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612}
!5602 = !DILocalVariable(name: "client", arg: 1, scope: !5598, file: !2, line: 498, type: !4127)
!5603 = !DILocalVariable(name: "port", arg: 2, scope: !5598, file: !2, line: 499, type: !150)
!5604 = !DILocalVariable(name: "subs", arg: 3, scope: !5598, file: !2, line: 500, type: !4075)
!5605 = !DILocalVariable(name: "is_src", arg: 4, scope: !5598, file: !2, line: 501, type: !1464)
!5606 = !DILocalVariable(name: "exclusive", arg: 5, scope: !5598, file: !2, line: 501, type: !1464)
!5607 = !DILocalVariable(name: "ack", arg: 6, scope: !5598, file: !2, line: 501, type: !1464)
!5608 = !DILocalVariable(name: "grp", scope: !5598, file: !2, line: 503, type: !4102)
!5609 = !DILocalVariable(name: "p", scope: !5598, file: !2, line: 504, type: !171)
!5610 = !DILocalVariable(name: "s", scope: !5598, file: !2, line: 505, type: !4075)
!5611 = !DILocalVariable(name: "err", scope: !5598, file: !2, line: 506, type: !101)
!5612 = !DILabel(scope: !5598, name: "__error", file: !2, line: 542)
!5613 = !DILocation(line: 498, column: 60, scope: !5598)
!5614 = !DILocation(line: 499, column: 37, scope: !5598)
!5615 = !DILocation(line: 500, column: 37, scope: !5598)
!5616 = !DILocation(line: 501, column: 14, scope: !5598)
!5617 = !DILocation(line: 501, column: 27, scope: !5598)
!5618 = !DILocation(line: 501, column: 43, scope: !5598)
!5619 = !DILocation(line: 503, column: 2, scope: !5598)
!5620 = !DILocation(line: 503, column: 33, scope: !5598)
!5621 = !DILocation(line: 504, column: 2, scope: !5598)
!5622 = !DILocation(line: 504, column: 20, scope: !5598)
!5623 = !DILocation(line: 505, column: 2, scope: !5598)
!5624 = !DILocation(line: 505, column: 30, scope: !5598)
!5625 = !DILocation(line: 506, column: 2, scope: !5598)
!5626 = !DILocation(line: 506, column: 6, scope: !5598)
!5627 = !DILocation(line: 508, column: 8, scope: !5598)
!5628 = !DILocation(line: 508, column: 18, scope: !5598)
!5629 = !DILocation(line: 508, column: 24, scope: !5598)
!5630 = !DILocation(line: 508, column: 33, scope: !5598)
!5631 = !DILocation(line: 508, column: 39, scope: !5598)
!5632 = !DILocation(line: 508, column: 6, scope: !5598)
!5633 = !DILocation(line: 509, column: 6, scope: !5598)
!5634 = !DILocation(line: 510, column: 14, scope: !5598)
!5635 = !DILocation(line: 510, column: 19, scope: !5598)
!5636 = !DILocation(line: 510, column: 2, scope: !5598)
!5637 = !DILocation(line: 511, column: 6, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5598, file: !2, line: 511, column: 6)
!5639 = !DILocation(line: 511, column: 6, scope: !5598)
!5640 = !DILocation(line: 512, column: 20, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5642, file: !2, line: 512, column: 7)
!5642 = distinct !DILexicalBlock(scope: !5638, file: !2, line: 511, column: 17)
!5643 = !DILocation(line: 512, column: 25, scope: !5641)
!5644 = !DILocation(line: 512, column: 8, scope: !5641)
!5645 = !DILocation(line: 512, column: 7, scope: !5642)
!5646 = !DILocation(line: 513, column: 4, scope: !5641)
!5647 = !DILocation(line: 514, column: 2, scope: !5642)
!5648 = !DILocation(line: 515, column: 7, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5650, file: !2, line: 515, column: 7)
!5650 = distinct !DILexicalBlock(scope: !5638, file: !2, line: 514, column: 9)
!5651 = !DILocation(line: 515, column: 12, scope: !5649)
!5652 = !DILocation(line: 515, column: 7, scope: !5650)
!5653 = !DILocation(line: 516, column: 4, scope: !5649)
!5654 = !DILocation(line: 518, column: 3, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5650, file: !2, line: 518, column: 3)
!5656 = !DILocation(line: 518, column: 3, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5655, file: !2, line: 518, column: 3)
!5658 = !DILocation(line: 519, column: 23, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5657, file: !2, line: 518, column: 37)
!5660 = !DILocation(line: 519, column: 26, scope: !5659)
!5661 = !DILocation(line: 519, column: 8, scope: !5659)
!5662 = !DILocation(line: 519, column: 6, scope: !5659)
!5663 = !DILocation(line: 520, column: 25, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5659, file: !2, line: 520, column: 8)
!5665 = !DILocation(line: 520, column: 31, scope: !5664)
!5666 = !DILocation(line: 520, column: 38, scope: !5664)
!5667 = !DILocation(line: 520, column: 41, scope: !5664)
!5668 = !DILocation(line: 520, column: 8, scope: !5664)
!5669 = !DILocation(line: 520, column: 8, scope: !5659)
!5670 = !DILocation(line: 521, column: 5, scope: !5664)
!5671 = !DILocation(line: 522, column: 3, scope: !5659)
!5672 = distinct !{!5672, !5654, !5673, !4670, !4671}
!5673 = !DILocation(line: 522, column: 3, scope: !5655)
!5674 = !DILocation(line: 525, column: 23, scope: !5598)
!5675 = !DILocation(line: 525, column: 31, scope: !5598)
!5676 = !DILocation(line: 525, column: 37, scope: !5598)
!5677 = !DILocation(line: 525, column: 43, scope: !5598)
!5678 = !DILocation(line: 525, column: 49, scope: !5598)
!5679 = !DILocation(line: 525, column: 55, scope: !5598)
!5680 = !DILocation(line: 525, column: 8, scope: !5598)
!5681 = !DILocation(line: 525, column: 6, scope: !5598)
!5682 = !DILocation(line: 526, column: 6, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5598, file: !2, line: 526, column: 6)
!5684 = !DILocation(line: 526, column: 10, scope: !5683)
!5685 = !DILocation(line: 526, column: 6, scope: !5598)
!5686 = !DILocation(line: 527, column: 3, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5683, file: !2, line: 526, column: 15)
!5688 = !DILocation(line: 527, column: 8, scope: !5687)
!5689 = !DILocation(line: 527, column: 18, scope: !5687)
!5690 = !DILocation(line: 528, column: 3, scope: !5687)
!5691 = !DILocation(line: 532, column: 2, scope: !5598)
!5692 = !DILocation(line: 533, column: 6, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5598, file: !2, line: 533, column: 6)
!5694 = !DILocation(line: 533, column: 6, scope: !5598)
!5695 = !DILocation(line: 534, column: 18, scope: !5693)
!5696 = !DILocation(line: 534, column: 24, scope: !5693)
!5697 = !DILocation(line: 534, column: 35, scope: !5693)
!5698 = !DILocation(line: 534, column: 40, scope: !5693)
!5699 = !DILocation(line: 534, column: 3, scope: !5693)
!5700 = !DILocation(line: 536, column: 18, scope: !5693)
!5701 = !DILocation(line: 536, column: 24, scope: !5693)
!5702 = !DILocation(line: 536, column: 36, scope: !5693)
!5703 = !DILocation(line: 536, column: 41, scope: !5693)
!5704 = !DILocation(line: 536, column: 3, scope: !5693)
!5705 = !DILocation(line: 537, column: 19, scope: !5598)
!5706 = !DILocation(line: 537, column: 2, scope: !5598)
!5707 = !DILocation(line: 537, column: 7, scope: !5598)
!5708 = !DILocation(line: 537, column: 17, scope: !5598)
!5709 = !DILocation(line: 538, column: 14, scope: !5598)
!5710 = !DILocation(line: 538, column: 20, scope: !5598)
!5711 = !DILocation(line: 538, column: 2, scope: !5598)
!5712 = !DILocation(line: 539, column: 2, scope: !5598)
!5713 = !DILocation(line: 540, column: 6, scope: !5598)
!5714 = !DILocation(line: 540, column: 2, scope: !5598)
!5715 = !DILocation(line: 542, column: 2, scope: !5598)
!5716 = !DILocation(line: 543, column: 12, scope: !5598)
!5717 = !DILocation(line: 543, column: 17, scope: !5598)
!5718 = !DILocation(line: 543, column: 2, scope: !5598)
!5719 = !DILocation(line: 544, column: 9, scope: !5598)
!5720 = !DILocation(line: 545, column: 1, scope: !5598)
!5721 = !DILocation(line: 544, column: 2, scope: !5598)
!5722 = distinct !DISubprogram(name: "delete_and_unsubscribe_port", scope: !2, file: !2, line: 570, type: !5723, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5725)
!5723 = !DISubroutineType(types: !5724)
!5724 = !{null, !4127, !150, !4075, !1464, !1464}
!5725 = !{!5726, !5727, !5728, !5729, !5730, !5731}
!5726 = !DILocalVariable(name: "client", arg: 1, scope: !5722, file: !2, line: 570, type: !4127)
!5727 = !DILocalVariable(name: "port", arg: 2, scope: !5722, file: !2, line: 571, type: !150)
!5728 = !DILocalVariable(name: "subs", arg: 3, scope: !5722, file: !2, line: 572, type: !4075)
!5729 = !DILocalVariable(name: "is_src", arg: 4, scope: !5722, file: !2, line: 573, type: !1464)
!5730 = !DILocalVariable(name: "ack", arg: 5, scope: !5722, file: !2, line: 573, type: !1464)
!5731 = !DILocalVariable(name: "grp", scope: !5722, file: !2, line: 575, type: !4102)
!5732 = !DILocation(line: 570, column: 64, scope: !5722)
!5733 = !DILocation(line: 571, column: 34, scope: !5722)
!5734 = !DILocation(line: 572, column: 34, scope: !5722)
!5735 = !DILocation(line: 573, column: 11, scope: !5722)
!5736 = !DILocation(line: 573, column: 24, scope: !5722)
!5737 = !DILocation(line: 575, column: 2, scope: !5722)
!5738 = !DILocation(line: 575, column: 33, scope: !5722)
!5739 = !DILocation(line: 577, column: 8, scope: !5722)
!5740 = !DILocation(line: 577, column: 18, scope: !5722)
!5741 = !DILocation(line: 577, column: 24, scope: !5722)
!5742 = !DILocation(line: 577, column: 33, scope: !5722)
!5743 = !DILocation(line: 577, column: 39, scope: !5722)
!5744 = !DILocation(line: 577, column: 6, scope: !5722)
!5745 = !DILocation(line: 578, column: 14, scope: !5722)
!5746 = !DILocation(line: 578, column: 19, scope: !5722)
!5747 = !DILocation(line: 578, column: 2, scope: !5722)
!5748 = !DILocation(line: 579, column: 32, scope: !5722)
!5749 = !DILocation(line: 579, column: 40, scope: !5722)
!5750 = !DILocation(line: 579, column: 46, scope: !5722)
!5751 = !DILocation(line: 579, column: 52, scope: !5722)
!5752 = !DILocation(line: 579, column: 60, scope: !5722)
!5753 = !DILocation(line: 579, column: 2, scope: !5722)
!5754 = !DILocation(line: 580, column: 12, scope: !5722)
!5755 = !DILocation(line: 580, column: 17, scope: !5722)
!5756 = !DILocation(line: 580, column: 2, scope: !5722)
!5757 = !DILocation(line: 581, column: 1, scope: !5722)
!5758 = distinct !DISubprogram(name: "snd_seq_port_disconnect", scope: !2, file: !2, line: 628, type: !5498, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5759)
!5759 = !{!5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767, !5768, !5769, !5772}
!5760 = !DILocalVariable(name: "connector", arg: 1, scope: !5758, file: !2, line: 628, type: !4127)
!5761 = !DILocalVariable(name: "src_client", arg: 2, scope: !5758, file: !2, line: 629, type: !4127)
!5762 = !DILocalVariable(name: "src_port", arg: 3, scope: !5758, file: !2, line: 630, type: !150)
!5763 = !DILocalVariable(name: "dest_client", arg: 4, scope: !5758, file: !2, line: 631, type: !4127)
!5764 = !DILocalVariable(name: "dest_port", arg: 5, scope: !5758, file: !2, line: 632, type: !150)
!5765 = !DILocalVariable(name: "info", arg: 6, scope: !5758, file: !2, line: 633, type: !3952)
!5766 = !DILocalVariable(name: "dest", scope: !5758, file: !2, line: 635, type: !4102)
!5767 = !DILocalVariable(name: "subs", scope: !5758, file: !2, line: 636, type: !4075)
!5768 = !DILocalVariable(name: "err", scope: !5758, file: !2, line: 637, type: !101)
!5769 = !DILocalVariable(name: "__mptr", scope: !5770, file: !2, line: 644, type: !149)
!5770 = distinct !DILexicalBlock(scope: !5771, file: !2, line: 644, column: 2)
!5771 = distinct !DILexicalBlock(scope: !5758, file: !2, line: 644, column: 2)
!5772 = !DILocalVariable(name: "__mptr", scope: !5773, file: !2, line: 644, type: !149)
!5773 = distinct !DILexicalBlock(scope: !5774, file: !2, line: 644, column: 2)
!5774 = distinct !DILexicalBlock(scope: !5771, file: !2, line: 644, column: 2)
!5775 = !DILocation(line: 628, column: 52, scope: !5758)
!5776 = !DILocation(line: 629, column: 31, scope: !5758)
!5777 = !DILocation(line: 630, column: 36, scope: !5758)
!5778 = !DILocation(line: 631, column: 31, scope: !5758)
!5779 = !DILocation(line: 632, column: 36, scope: !5758)
!5780 = !DILocation(line: 633, column: 39, scope: !5758)
!5781 = !DILocation(line: 635, column: 2, scope: !5758)
!5782 = !DILocation(line: 635, column: 33, scope: !5758)
!5783 = !DILocation(line: 635, column: 41, scope: !5758)
!5784 = !DILocation(line: 635, column: 52, scope: !5758)
!5785 = !DILocation(line: 636, column: 2, scope: !5758)
!5786 = !DILocation(line: 636, column: 30, scope: !5758)
!5787 = !DILocation(line: 637, column: 2, scope: !5758)
!5788 = !DILocation(line: 637, column: 6, scope: !5758)
!5789 = !DILocation(line: 642, column: 14, scope: !5758)
!5790 = !DILocation(line: 642, column: 20, scope: !5758)
!5791 = !DILocation(line: 642, column: 2, scope: !5758)
!5792 = !DILocation(line: 644, column: 2, scope: !5770)
!5793 = !DILocation(line: 644, column: 2, scope: !5771)
!5794 = !DILocation(line: 644, column: 2, scope: !5774)
!5795 = !DILocation(line: 645, column: 23, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5797, file: !2, line: 645, column: 7)
!5797 = distinct !DILexicalBlock(scope: !5774, file: !2, line: 644, column: 57)
!5798 = !DILocation(line: 645, column: 30, scope: !5796)
!5799 = !DILocation(line: 645, column: 36, scope: !5796)
!5800 = !DILocation(line: 645, column: 7, scope: !5796)
!5801 = !DILocation(line: 645, column: 7, scope: !5797)
!5802 = !DILocation(line: 646, column: 34, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5796, file: !2, line: 645, column: 43)
!5804 = !DILocation(line: 646, column: 47, scope: !5803)
!5805 = !DILocation(line: 647, column: 13, scope: !5803)
!5806 = !DILocation(line: 648, column: 13, scope: !5803)
!5807 = !DILocation(line: 648, column: 24, scope: !5803)
!5808 = !DILocation(line: 648, column: 34, scope: !5803)
!5809 = !DILocation(line: 648, column: 47, scope: !5803)
!5810 = !DILocation(line: 648, column: 31, scope: !5803)
!5811 = !DILocation(line: 646, column: 4, scope: !5803)
!5812 = !DILocation(line: 649, column: 8, scope: !5803)
!5813 = !DILocation(line: 650, column: 4, scope: !5803)
!5814 = !DILocation(line: 652, column: 2, scope: !5797)
!5815 = !DILocation(line: 644, column: 2, scope: !5773)
!5816 = distinct !{!5816, !5793, !5817, !4670, !4671}
!5817 = !DILocation(line: 652, column: 2, scope: !5771)
!5818 = !DILocation(line: 653, column: 12, scope: !5758)
!5819 = !DILocation(line: 653, column: 18, scope: !5758)
!5820 = !DILocation(line: 653, column: 2, scope: !5758)
!5821 = !DILocation(line: 654, column: 6, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5758, file: !2, line: 654, column: 6)
!5823 = !DILocation(line: 654, column: 10, scope: !5822)
!5824 = !DILocation(line: 654, column: 6, scope: !5758)
!5825 = !DILocation(line: 655, column: 10, scope: !5822)
!5826 = !DILocation(line: 655, column: 3, scope: !5822)
!5827 = !DILocation(line: 657, column: 30, scope: !5758)
!5828 = !DILocation(line: 657, column: 42, scope: !5758)
!5829 = !DILocation(line: 657, column: 52, scope: !5758)
!5830 = !DILocation(line: 658, column: 9, scope: !5758)
!5831 = !DILocation(line: 658, column: 20, scope: !5758)
!5832 = !DILocation(line: 658, column: 30, scope: !5758)
!5833 = !DILocation(line: 658, column: 42, scope: !5758)
!5834 = !DILocation(line: 658, column: 27, scope: !5758)
!5835 = !DILocation(line: 657, column: 2, scope: !5758)
!5836 = !DILocation(line: 659, column: 8, scope: !5758)
!5837 = !DILocation(line: 659, column: 2, scope: !5758)
!5838 = !DILocation(line: 660, column: 2, scope: !5758)
!5839 = !DILocation(line: 661, column: 1, scope: !5758)
!5840 = !DISubprogram(name: "down_write", scope: !860, file: !860, line: 187, type: !5841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5841 = !DISubroutineType(types: !5842)
!5842 = !{null, !5843}
!5843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!5844 = distinct !DISubprogram(name: "match_subs_info", scope: !2, file: !2, line: 485, type: !5845, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5847)
!5845 = !DISubroutineType(types: !5846)
!5846 = !{!101, !3952, !3952}
!5847 = !{!5848, !5849}
!5848 = !DILocalVariable(name: "r", arg: 1, scope: !5844, file: !2, line: 485, type: !3952)
!5849 = !DILocalVariable(name: "s", arg: 2, scope: !5844, file: !2, line: 486, type: !3952)
!5850 = !DILocation(line: 485, column: 59, scope: !5844)
!5851 = !DILocation(line: 486, column: 38, scope: !5844)
!5852 = !DILocation(line: 488, column: 18, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5844, file: !2, line: 488, column: 6)
!5854 = !DILocation(line: 488, column: 21, scope: !5853)
!5855 = !DILocation(line: 488, column: 30, scope: !5853)
!5856 = !DILocation(line: 488, column: 33, scope: !5853)
!5857 = !DILocation(line: 488, column: 6, scope: !5853)
!5858 = !DILocation(line: 488, column: 41, scope: !5853)
!5859 = !DILocation(line: 489, column: 18, scope: !5853)
!5860 = !DILocation(line: 489, column: 21, scope: !5853)
!5861 = !DILocation(line: 489, column: 28, scope: !5853)
!5862 = !DILocation(line: 489, column: 31, scope: !5853)
!5863 = !DILocation(line: 489, column: 6, scope: !5853)
!5864 = !DILocation(line: 488, column: 6, scope: !5844)
!5865 = !DILocation(line: 490, column: 7, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5867, file: !2, line: 490, column: 7)
!5867 = distinct !DILexicalBlock(scope: !5853, file: !2, line: 489, column: 38)
!5868 = !DILocation(line: 490, column: 10, scope: !5866)
!5869 = !DILocation(line: 490, column: 16, scope: !5866)
!5870 = !DILocation(line: 490, column: 19, scope: !5866)
!5871 = !DILocation(line: 490, column: 22, scope: !5866)
!5872 = !DILocation(line: 490, column: 31, scope: !5866)
!5873 = !DILocation(line: 490, column: 34, scope: !5866)
!5874 = !DILocation(line: 490, column: 28, scope: !5866)
!5875 = !DILocation(line: 490, column: 7, scope: !5867)
!5876 = !DILocation(line: 491, column: 11, scope: !5866)
!5877 = !DILocation(line: 491, column: 14, scope: !5866)
!5878 = !DILocation(line: 491, column: 23, scope: !5866)
!5879 = !DILocation(line: 491, column: 26, scope: !5866)
!5880 = !DILocation(line: 491, column: 20, scope: !5866)
!5881 = !DILocation(line: 491, column: 4, scope: !5866)
!5882 = !DILocation(line: 492, column: 14, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5866, file: !2, line: 492, column: 12)
!5884 = !DILocation(line: 492, column: 17, scope: !5883)
!5885 = !DILocation(line: 492, column: 12, scope: !5866)
!5886 = !DILocation(line: 493, column: 4, scope: !5883)
!5887 = !DILocation(line: 494, column: 2, scope: !5867)
!5888 = !DILocation(line: 495, column: 2, scope: !5844)
!5889 = !DILocation(line: 496, column: 1, scope: !5844)
!5890 = distinct !DISubprogram(name: "__delete_and_unsubscribe_port", scope: !2, file: !2, line: 548, type: !5723, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5891)
!5891 = !{!5892, !5893, !5894, !5895, !5896, !5897, !5898, !5899}
!5892 = !DILocalVariable(name: "client", arg: 1, scope: !5890, file: !2, line: 548, type: !4127)
!5893 = !DILocalVariable(name: "port", arg: 2, scope: !5890, file: !2, line: 549, type: !150)
!5894 = !DILocalVariable(name: "subs", arg: 3, scope: !5890, file: !2, line: 550, type: !4075)
!5895 = !DILocalVariable(name: "is_src", arg: 4, scope: !5890, file: !2, line: 551, type: !1464)
!5896 = !DILocalVariable(name: "ack", arg: 5, scope: !5890, file: !2, line: 551, type: !1464)
!5897 = !DILocalVariable(name: "grp", scope: !5890, file: !2, line: 553, type: !4102)
!5898 = !DILocalVariable(name: "list", scope: !5890, file: !2, line: 554, type: !171)
!5899 = !DILocalVariable(name: "empty", scope: !5890, file: !2, line: 555, type: !1464)
!5900 = !DILocation(line: 548, column: 66, scope: !5890)
!5901 = !DILocation(line: 549, column: 36, scope: !5890)
!5902 = !DILocation(line: 550, column: 36, scope: !5890)
!5903 = !DILocation(line: 551, column: 13, scope: !5890)
!5904 = !DILocation(line: 551, column: 26, scope: !5890)
!5905 = !DILocation(line: 553, column: 2, scope: !5890)
!5906 = !DILocation(line: 553, column: 33, scope: !5890)
!5907 = !DILocation(line: 554, column: 2, scope: !5890)
!5908 = !DILocation(line: 554, column: 20, scope: !5890)
!5909 = !DILocation(line: 555, column: 2, scope: !5890)
!5910 = !DILocation(line: 555, column: 7, scope: !5890)
!5911 = !DILocation(line: 557, column: 8, scope: !5890)
!5912 = !DILocation(line: 557, column: 18, scope: !5890)
!5913 = !DILocation(line: 557, column: 24, scope: !5890)
!5914 = !DILocation(line: 557, column: 33, scope: !5890)
!5915 = !DILocation(line: 557, column: 39, scope: !5890)
!5916 = !DILocation(line: 557, column: 6, scope: !5890)
!5917 = !DILocation(line: 558, column: 9, scope: !5890)
!5918 = !DILocation(line: 558, column: 19, scope: !5890)
!5919 = !DILocation(line: 558, column: 25, scope: !5890)
!5920 = !DILocation(line: 558, column: 37, scope: !5890)
!5921 = !DILocation(line: 558, column: 43, scope: !5890)
!5922 = !DILocation(line: 558, column: 7, scope: !5890)
!5923 = !DILocation(line: 559, column: 2, scope: !5890)
!5924 = !DILocation(line: 560, column: 21, scope: !5890)
!5925 = !DILocation(line: 560, column: 10, scope: !5890)
!5926 = !DILocation(line: 560, column: 8, scope: !5890)
!5927 = !DILocation(line: 561, column: 7, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5890, file: !2, line: 561, column: 6)
!5929 = !DILocation(line: 561, column: 6, scope: !5890)
!5930 = !DILocation(line: 562, column: 17, scope: !5928)
!5931 = !DILocation(line: 562, column: 3, scope: !5928)
!5932 = !DILocation(line: 563, column: 2, scope: !5890)
!5933 = !DILocation(line: 563, column: 7, scope: !5890)
!5934 = !DILocation(line: 563, column: 17, scope: !5890)
!5935 = !DILocation(line: 564, column: 2, scope: !5890)
!5936 = !DILocation(line: 566, column: 7, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5890, file: !2, line: 566, column: 6)
!5938 = !DILocation(line: 566, column: 6, scope: !5890)
!5939 = !DILocation(line: 567, column: 20, scope: !5937)
!5940 = !DILocation(line: 567, column: 28, scope: !5937)
!5941 = !DILocation(line: 567, column: 34, scope: !5937)
!5942 = !DILocation(line: 567, column: 40, scope: !5937)
!5943 = !DILocation(line: 567, column: 46, scope: !5937)
!5944 = !DILocation(line: 567, column: 52, scope: !5937)
!5945 = !DILocation(line: 567, column: 3, scope: !5937)
!5946 = !DILocation(line: 568, column: 1, scope: !5890)
!5947 = !DISubprogram(name: "up_write", scope: !860, file: !860, line: 203, type: !5841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5948 = distinct !DISubprogram(name: "snd_seq_port_get_subscription", scope: !2, file: !2, line: 665, type: !5949, scopeLine: 668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5952)
!5949 = !DISubroutineType(types: !5950)
!5950 = !{!101, !4102, !5951, !3952}
!5951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!5952 = !{!5953, !5954, !5955, !5956, !5957, !5958, !5961}
!5953 = !DILocalVariable(name: "src_grp", arg: 1, scope: !5948, file: !2, line: 665, type: !4102)
!5954 = !DILocalVariable(name: "dest_addr", arg: 2, scope: !5948, file: !2, line: 666, type: !5951)
!5955 = !DILocalVariable(name: "subs", arg: 3, scope: !5948, file: !2, line: 667, type: !3952)
!5956 = !DILocalVariable(name: "s", scope: !5948, file: !2, line: 669, type: !4075)
!5957 = !DILocalVariable(name: "err", scope: !5948, file: !2, line: 670, type: !101)
!5958 = !DILocalVariable(name: "__mptr", scope: !5959, file: !2, line: 673, type: !149)
!5959 = distinct !DILexicalBlock(scope: !5960, file: !2, line: 673, column: 2)
!5960 = distinct !DILexicalBlock(scope: !5948, file: !2, line: 673, column: 2)
!5961 = !DILocalVariable(name: "__mptr", scope: !5962, file: !2, line: 673, type: !149)
!5962 = distinct !DILexicalBlock(scope: !5963, file: !2, line: 673, column: 2)
!5963 = distinct !DILexicalBlock(scope: !5960, file: !2, line: 673, column: 2)
!5964 = !DILocation(line: 665, column: 66, scope: !5948)
!5965 = !DILocation(line: 666, column: 28, scope: !5948)
!5966 = !DILocation(line: 667, column: 38, scope: !5948)
!5967 = !DILocation(line: 669, column: 2, scope: !5948)
!5968 = !DILocation(line: 669, column: 30, scope: !5948)
!5969 = !DILocation(line: 670, column: 2, scope: !5948)
!5970 = !DILocation(line: 670, column: 6, scope: !5948)
!5971 = !DILocation(line: 672, column: 13, scope: !5948)
!5972 = !DILocation(line: 672, column: 22, scope: !5948)
!5973 = !DILocation(line: 672, column: 2, scope: !5948)
!5974 = !DILocation(line: 673, column: 2, scope: !5959)
!5975 = !DILocation(line: 673, column: 2, scope: !5960)
!5976 = !DILocation(line: 673, column: 2, scope: !5963)
!5977 = !DILocation(line: 674, column: 18, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5979, file: !2, line: 674, column: 7)
!5979 = distinct !DILexicalBlock(scope: !5963, file: !2, line: 673, column: 56)
!5980 = !DILocation(line: 674, column: 30, scope: !5978)
!5981 = !DILocation(line: 674, column: 33, scope: !5978)
!5982 = !DILocation(line: 674, column: 38, scope: !5978)
!5983 = !DILocation(line: 674, column: 7, scope: !5978)
!5984 = !DILocation(line: 674, column: 7, scope: !5979)
!5985 = !DILocation(line: 675, column: 5, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5978, file: !2, line: 674, column: 45)
!5987 = !DILocation(line: 675, column: 12, scope: !5986)
!5988 = !DILocation(line: 675, column: 15, scope: !5986)
!5989 = !DILocation(line: 676, column: 8, scope: !5986)
!5990 = !DILocation(line: 677, column: 4, scope: !5986)
!5991 = !DILocation(line: 679, column: 2, scope: !5979)
!5992 = !DILocation(line: 673, column: 2, scope: !5962)
!5993 = distinct !{!5993, !5975, !5994, !4670, !4671}
!5994 = !DILocation(line: 679, column: 2, scope: !5960)
!5995 = !DILocation(line: 680, column: 11, scope: !5948)
!5996 = !DILocation(line: 680, column: 20, scope: !5948)
!5997 = !DILocation(line: 680, column: 2, scope: !5948)
!5998 = !DILocation(line: 681, column: 9, scope: !5948)
!5999 = !DILocation(line: 682, column: 1, scope: !5948)
!6000 = !DILocation(line: 681, column: 2, scope: !5948)
!6001 = !DISubprogram(name: "down_read", scope: !860, file: !860, line: 175, type: !5841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6002 = distinct !DISubprogram(name: "addr_match", scope: !2, file: !2, line: 478, type: !6003, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6005)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{!101, !5951, !5951}
!6005 = !{!6006, !6007}
!6006 = !DILocalVariable(name: "r", arg: 1, scope: !6002, file: !2, line: 478, type: !5951)
!6007 = !DILocalVariable(name: "s", arg: 2, scope: !6002, file: !2, line: 478, type: !5951)
!6008 = !DILocation(line: 478, column: 51, scope: !6002)
!6009 = !DILocation(line: 478, column: 75, scope: !6002)
!6010 = !DILocation(line: 480, column: 10, scope: !6002)
!6011 = !DILocation(line: 480, column: 13, scope: !6002)
!6012 = !DILocation(line: 480, column: 23, scope: !6002)
!6013 = !DILocation(line: 480, column: 26, scope: !6002)
!6014 = !DILocation(line: 480, column: 20, scope: !6002)
!6015 = !DILocation(line: 480, column: 34, scope: !6002)
!6016 = !DILocation(line: 480, column: 38, scope: !6002)
!6017 = !DILocation(line: 480, column: 41, scope: !6002)
!6018 = !DILocation(line: 480, column: 49, scope: !6002)
!6019 = !DILocation(line: 480, column: 52, scope: !6002)
!6020 = !DILocation(line: 480, column: 46, scope: !6002)
!6021 = !DILocation(line: 0, scope: !6002)
!6022 = !DILocation(line: 480, column: 2, scope: !6002)
!6023 = !DISubprogram(name: "up_read", scope: !860, file: !860, line: 198, type: !5841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6024 = distinct !DISubprogram(name: "snd_seq_event_port_attach", scope: !2, file: !2, line: 691, type: !6025, scopeLine: 695, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6039)
!6025 = !DISubroutineType(types: !6026)
!6026 = !{!101, !101, !6027, !101, !101, !101, !101, !265}
!6027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6028, size: 64)
!6028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_port_callback", file: !6029, line: 44, size: 512, elements: !6030)
!6029 = !DIFile(filename: "./include/sound/seq_kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "583a8c45ab6a5155295b27a2a548f2e3")
!6030 = !{!6031, !6032, !6033, !6034, !6035, !6036, !6037, !6038}
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !6028, file: !6029, line: 45, baseType: !162, size: 64)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !6028, file: !6029, line: 46, baseType: !149, size: 64, offset: 64)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "subscribe", scope: !6028, file: !6029, line: 47, baseType: !3949, size: 64, offset: 128)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "unsubscribe", scope: !6028, file: !6029, line: 48, baseType: !3949, size: 64, offset: 192)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !6028, file: !6029, line: 49, baseType: !3949, size: 64, offset: 256)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !6028, file: !6029, line: 50, baseType: !3949, size: 64, offset: 320)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "event_input", scope: !6028, file: !6029, line: 51, baseType: !3966, size: 64, offset: 384)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !6028, file: !6029, line: 52, baseType: !3046, size: 64, offset: 448)
!6039 = !{!6040, !6041, !6042, !6043, !6044, !6045, !6046, !6047, !6048}
!6040 = !DILocalVariable(name: "client", arg: 1, scope: !6024, file: !2, line: 691, type: !101)
!6041 = !DILocalVariable(name: "pcbp", arg: 2, scope: !6024, file: !2, line: 692, type: !6027)
!6042 = !DILocalVariable(name: "cap", arg: 3, scope: !6024, file: !2, line: 693, type: !101)
!6043 = !DILocalVariable(name: "type", arg: 4, scope: !6024, file: !2, line: 693, type: !101)
!6044 = !DILocalVariable(name: "midi_channels", arg: 5, scope: !6024, file: !2, line: 693, type: !101)
!6045 = !DILocalVariable(name: "midi_voices", arg: 6, scope: !6024, file: !2, line: 694, type: !101)
!6046 = !DILocalVariable(name: "portname", arg: 7, scope: !6024, file: !2, line: 694, type: !265)
!6047 = !DILocalVariable(name: "portinfo", scope: !6024, file: !2, line: 696, type: !4698)
!6048 = !DILocalVariable(name: "ret", scope: !6024, file: !2, line: 697, type: !101)
!6049 = !DILocation(line: 691, column: 35, scope: !6024)
!6050 = !DILocation(line: 692, column: 40, scope: !6024)
!6051 = !DILocation(line: 693, column: 14, scope: !6024)
!6052 = !DILocation(line: 693, column: 23, scope: !6024)
!6053 = !DILocation(line: 693, column: 33, scope: !6024)
!6054 = !DILocation(line: 694, column: 14, scope: !6024)
!6055 = !DILocation(line: 694, column: 33, scope: !6024)
!6056 = !DILocation(line: 696, column: 2, scope: !6024)
!6057 = !DILocation(line: 696, column: 27, scope: !6024)
!6058 = !DILocation(line: 697, column: 2, scope: !6024)
!6059 = !DILocation(line: 697, column: 7, scope: !6024)
!6060 = !DILocation(line: 700, column: 2, scope: !6024)
!6061 = !DILocation(line: 701, column: 25, scope: !6024)
!6062 = !DILocation(line: 701, column: 11, scope: !6024)
!6063 = !DILocation(line: 701, column: 16, scope: !6024)
!6064 = !DILocation(line: 701, column: 23, scope: !6024)
!6065 = !DILocation(line: 702, column: 19, scope: !6024)
!6066 = !DILocation(line: 702, column: 10, scope: !6024)
!6067 = !DILocation(line: 702, column: 25, scope: !6024)
!6068 = !DILocation(line: 702, column: 36, scope: !6024)
!6069 = !DILocation(line: 702, column: 2, scope: !6024)
!6070 = !DILocation(line: 705, column: 24, scope: !6024)
!6071 = !DILocation(line: 705, column: 11, scope: !6024)
!6072 = !DILocation(line: 705, column: 22, scope: !6024)
!6073 = !DILocation(line: 706, column: 18, scope: !6024)
!6074 = !DILocation(line: 706, column: 11, scope: !6024)
!6075 = !DILocation(line: 706, column: 16, scope: !6024)
!6076 = !DILocation(line: 707, column: 20, scope: !6024)
!6077 = !DILocation(line: 707, column: 11, scope: !6024)
!6078 = !DILocation(line: 707, column: 18, scope: !6024)
!6079 = !DILocation(line: 708, column: 27, scope: !6024)
!6080 = !DILocation(line: 708, column: 11, scope: !6024)
!6081 = !DILocation(line: 708, column: 25, scope: !6024)
!6082 = !DILocation(line: 709, column: 25, scope: !6024)
!6083 = !DILocation(line: 709, column: 11, scope: !6024)
!6084 = !DILocation(line: 709, column: 23, scope: !6024)
!6085 = !DILocation(line: 712, column: 34, scope: !6024)
!6086 = !DILocation(line: 712, column: 8, scope: !6024)
!6087 = !DILocation(line: 712, column: 6, scope: !6024)
!6088 = !DILocation(line: 716, column: 6, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6024, file: !2, line: 716, column: 6)
!6090 = !DILocation(line: 716, column: 10, scope: !6089)
!6091 = !DILocation(line: 716, column: 6, scope: !6024)
!6092 = !DILocation(line: 717, column: 18, scope: !6089)
!6093 = !DILocation(line: 717, column: 23, scope: !6089)
!6094 = !DILocation(line: 717, column: 9, scope: !6089)
!6095 = !DILocation(line: 717, column: 7, scope: !6089)
!6096 = !DILocation(line: 717, column: 3, scope: !6089)
!6097 = !DILocation(line: 719, column: 9, scope: !6024)
!6098 = !DILocation(line: 720, column: 1, scope: !6024)
!6099 = !DILocation(line: 719, column: 2, scope: !6024)
!6100 = !DISubprogram(name: "snd_seq_kernel_client_ctl", scope: !6029, file: !6029, line: 64, type: !6101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{!101, !101, !23, !149}
!6103 = distinct !DISubprogram(name: "snd_seq_event_port_detach", scope: !2, file: !2, line: 727, type: !6104, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6106)
!6104 = !DISubroutineType(types: !6105)
!6105 = !{!101, !101, !101}
!6106 = !{!6107, !6108, !6109, !6110}
!6107 = !DILocalVariable(name: "client", arg: 1, scope: !6103, file: !2, line: 727, type: !101)
!6108 = !DILocalVariable(name: "port", arg: 2, scope: !6103, file: !2, line: 727, type: !101)
!6109 = !DILocalVariable(name: "portinfo", scope: !6103, file: !2, line: 729, type: !4698)
!6110 = !DILocalVariable(name: "err", scope: !6103, file: !2, line: 730, type: !101)
!6111 = !DILocation(line: 727, column: 35, scope: !6103)
!6112 = !DILocation(line: 727, column: 47, scope: !6103)
!6113 = !DILocation(line: 729, column: 2, scope: !6103)
!6114 = !DILocation(line: 729, column: 27, scope: !6103)
!6115 = !DILocation(line: 730, column: 2, scope: !6103)
!6116 = !DILocation(line: 730, column: 7, scope: !6103)
!6117 = !DILocation(line: 732, column: 2, scope: !6103)
!6118 = !DILocation(line: 733, column: 25, scope: !6103)
!6119 = !DILocation(line: 733, column: 11, scope: !6103)
!6120 = !DILocation(line: 733, column: 16, scope: !6103)
!6121 = !DILocation(line: 733, column: 23, scope: !6103)
!6122 = !DILocation(line: 734, column: 25, scope: !6103)
!6123 = !DILocation(line: 734, column: 11, scope: !6103)
!6124 = !DILocation(line: 734, column: 16, scope: !6103)
!6125 = !DILocation(line: 734, column: 23, scope: !6103)
!6126 = !DILocation(line: 735, column: 34, scope: !6103)
!6127 = !DILocation(line: 735, column: 8, scope: !6103)
!6128 = !DILocation(line: 735, column: 6, scope: !6103)
!6129 = !DILocation(line: 739, column: 9, scope: !6103)
!6130 = !DILocation(line: 740, column: 1, scope: !6103)
!6131 = !DILocation(line: 739, column: 2, scope: !6103)
!6132 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6133, file: !6133, line: 94, type: !6134, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6139)
!6133 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6134 = !DISubroutineType(types: !6135)
!6135 = !{null, !6136, !312}
!6136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6137, size: 64)
!6137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6138)
!6138 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6139 = !{!6140, !6141}
!6140 = !DILocalVariable(name: "v", arg: 1, scope: !6132, file: !6133, line: 94, type: !6136)
!6141 = !DILocalVariable(name: "size", arg: 2, scope: !6132, file: !6133, line: 94, type: !312)
!6142 = !DILocation(line: 94, column: 79, scope: !6132)
!6143 = !DILocation(line: 94, column: 89, scope: !6132)
!6144 = !DILocation(line: 96, column: 20, scope: !6132)
!6145 = !DILocation(line: 96, column: 23, scope: !6132)
!6146 = !DILocation(line: 96, column: 2, scope: !6132)
!6147 = !DILocation(line: 97, column: 2, scope: !6132)
!6148 = !DILocation(line: 98, column: 1, scope: !6132)
!6149 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !6150, file: !6150, line: 976, type: !4682, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6151)
!6150 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6151 = !{!6152}
!6152 = !DILocalVariable(name: "v", arg: 1, scope: !6149, file: !6150, line: 976, type: !4684)
!6153 = !DILocation(line: 976, column: 26, scope: !6149)
!6154 = !DILocation(line: 979, column: 18, scope: !6149)
!6155 = !DILocation(line: 979, column: 2, scope: !6149)
!6156 = !DILocation(line: 983, column: 1, scope: !6149)
!6157 = distinct !DISubprogram(name: "kasan_check_write", scope: !6158, file: !6158, line: 44, type: !6159, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6161)
!6158 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6159 = !DISubroutineType(types: !6160)
!6160 = !{!1464, !6136, !23}
!6161 = !{!6162, !6163}
!6162 = !DILocalVariable(name: "p", arg: 1, scope: !6157, file: !6158, line: 44, type: !6136)
!6163 = !DILocalVariable(name: "size", arg: 2, scope: !6157, file: !6158, line: 44, type: !23)
!6164 = !DILocation(line: 44, column: 59, scope: !6157)
!6165 = !DILocation(line: 44, column: 75, scope: !6157)
!6166 = !DILocation(line: 46, column: 2, scope: !6157)
!6167 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6168, file: !6168, line: 229, type: !6169, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6171)
!6168 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6169 = !DISubroutineType(types: !6170)
!6170 = !{null, !6136, !312, !101}
!6171 = !{!6172, !6173, !6174}
!6172 = !DILocalVariable(name: "ptr", arg: 1, scope: !6167, file: !6168, line: 229, type: !6136)
!6173 = !DILocalVariable(name: "size", arg: 2, scope: !6167, file: !6168, line: 229, type: !312)
!6174 = !DILocalVariable(name: "type", arg: 3, scope: !6167, file: !6168, line: 230, type: !101)
!6175 = !DILocation(line: 229, column: 60, scope: !6167)
!6176 = !DILocation(line: 229, column: 72, scope: !6167)
!6177 = !DILocation(line: 230, column: 15, scope: !6167)
!6178 = !DILocation(line: 230, column: 23, scope: !6167)
!6179 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !6180, file: !6180, line: 51, type: !4682, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6181)
!6180 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6181 = !{!6182}
!6182 = !DILocalVariable(name: "v", arg: 1, scope: !6179, file: !6180, line: 51, type: !4684)
!6183 = !DILocation(line: 51, column: 55, scope: !6179)
!6184 = !DILocation(line: 54, column: 16, scope: !6179)
!6185 = !DILocation(line: 54, column: 19, scope: !6179)
!6186 = !DILocation(line: 53, column: 2, scope: !6179)
!6187 = !{i64 2148485840, i64 2148485879, i64 2148485900, i64 2148485937, i64 2148485960, i64 2148485830}
!6188 = !DILocation(line: 55, column: 1, scope: !6179)
!6189 = distinct !DISubprogram(name: "kmalloc", scope: !139, file: !139, line: 591, type: !4972, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6190)
!6190 = !{!6191, !6192, !6193}
!6191 = !DILocalVariable(name: "size", arg: 1, scope: !6189, file: !139, line: 591, type: !312)
!6192 = !DILocalVariable(name: "flags", arg: 2, scope: !6189, file: !139, line: 591, type: !710)
!6193 = !DILocalVariable(name: "index", scope: !6194, file: !139, line: 594, type: !23)
!6194 = distinct !DILexicalBlock(scope: !6195, file: !139, line: 593, column: 42)
!6195 = distinct !DILexicalBlock(scope: !6189, file: !139, line: 593, column: 6)
!6196 = !DILocation(line: 591, column: 61, scope: !6189)
!6197 = !DILocation(line: 591, column: 73, scope: !6189)
!6198 = !DILocation(line: 593, column: 27, scope: !6195)
!6199 = !DILocation(line: 593, column: 6, scope: !6195)
!6200 = !DILocation(line: 593, column: 33, scope: !6195)
!6201 = !DILocation(line: 593, column: 36, scope: !6195)
!6202 = !DILocation(line: 593, column: 6, scope: !6189)
!6203 = !DILocation(line: 594, column: 3, scope: !6194)
!6204 = !DILocation(line: 594, column: 16, scope: !6194)
!6205 = !DILocation(line: 596, column: 7, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6194, file: !139, line: 596, column: 7)
!6207 = !DILocation(line: 596, column: 12, scope: !6206)
!6208 = !DILocation(line: 596, column: 7, scope: !6194)
!6209 = !DILocation(line: 597, column: 25, scope: !6206)
!6210 = !DILocation(line: 597, column: 31, scope: !6206)
!6211 = !DILocation(line: 597, column: 11, scope: !6206)
!6212 = !DILocation(line: 597, column: 4, scope: !6206)
!6213 = !DILocation(line: 599, column: 11, scope: !6194)
!6214 = !DILocation(line: 599, column: 9, scope: !6194)
!6215 = !DILocation(line: 601, column: 33, scope: !6194)
!6216 = !DILocation(line: 601, column: 40, scope: !6194)
!6217 = !DILocation(line: 601, column: 20, scope: !6194)
!6218 = !DILocation(line: 601, column: 5, scope: !6194)
!6219 = !DILocation(line: 601, column: 51, scope: !6194)
!6220 = !DILocation(line: 602, column: 5, scope: !6194)
!6221 = !DILocation(line: 602, column: 12, scope: !6194)
!6222 = !DILocation(line: 600, column: 10, scope: !6194)
!6223 = !DILocation(line: 600, column: 3, scope: !6194)
!6224 = !DILocation(line: 603, column: 2, scope: !6195)
!6225 = !DILocation(line: 604, column: 19, scope: !6189)
!6226 = !DILocation(line: 604, column: 25, scope: !6189)
!6227 = !DILocation(line: 604, column: 9, scope: !6189)
!6228 = !DILocation(line: 604, column: 2, scope: !6189)
!6229 = !DILocation(line: 605, column: 1, scope: !6189)
!6230 = !DISubprogram(name: "kmalloc_large", scope: !139, file: !139, line: 531, type: !4972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6231 = distinct !DISubprogram(name: "__kmalloc_index", scope: !139, file: !139, line: 444, type: !6232, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6234)
!6232 = !DISubroutineType(types: !6233)
!6233 = !{!23, !312, !1464}
!6234 = !{!6235, !6236}
!6235 = !DILocalVariable(name: "size", arg: 1, scope: !6231, file: !139, line: 444, type: !312)
!6236 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6231, file: !139, line: 445, type: !1464)
!6237 = !DILocation(line: 444, column: 60, scope: !6231)
!6238 = !DILocation(line: 445, column: 16, scope: !6231)
!6239 = !DILocation(line: 447, column: 7, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 447, column: 6)
!6241 = !DILocation(line: 447, column: 6, scope: !6231)
!6242 = !DILocation(line: 448, column: 3, scope: !6240)
!6243 = !DILocation(line: 450, column: 6, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 450, column: 6)
!6245 = !DILocation(line: 450, column: 11, scope: !6244)
!6246 = !DILocation(line: 450, column: 6, scope: !6231)
!6247 = !DILocation(line: 451, column: 3, scope: !6244)
!6248 = !DILocation(line: 453, column: 32, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 453, column: 6)
!6250 = !DILocation(line: 453, column: 37, scope: !6249)
!6251 = !DILocation(line: 453, column: 42, scope: !6249)
!6252 = !DILocation(line: 453, column: 45, scope: !6249)
!6253 = !DILocation(line: 453, column: 50, scope: !6249)
!6254 = !DILocation(line: 453, column: 6, scope: !6231)
!6255 = !DILocation(line: 454, column: 3, scope: !6249)
!6256 = !DILocation(line: 455, column: 32, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 455, column: 6)
!6258 = !DILocation(line: 455, column: 37, scope: !6257)
!6259 = !DILocation(line: 455, column: 43, scope: !6257)
!6260 = !DILocation(line: 455, column: 46, scope: !6257)
!6261 = !DILocation(line: 455, column: 51, scope: !6257)
!6262 = !DILocation(line: 455, column: 6, scope: !6231)
!6263 = !DILocation(line: 456, column: 3, scope: !6257)
!6264 = !DILocation(line: 457, column: 6, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 457, column: 6)
!6266 = !DILocation(line: 457, column: 11, scope: !6265)
!6267 = !DILocation(line: 457, column: 6, scope: !6231)
!6268 = !DILocation(line: 457, column: 26, scope: !6265)
!6269 = !DILocation(line: 458, column: 6, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 458, column: 6)
!6271 = !DILocation(line: 458, column: 11, scope: !6270)
!6272 = !DILocation(line: 458, column: 6, scope: !6231)
!6273 = !DILocation(line: 458, column: 26, scope: !6270)
!6274 = !DILocation(line: 459, column: 6, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 459, column: 6)
!6276 = !DILocation(line: 459, column: 11, scope: !6275)
!6277 = !DILocation(line: 459, column: 6, scope: !6231)
!6278 = !DILocation(line: 459, column: 26, scope: !6275)
!6279 = !DILocation(line: 460, column: 6, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 460, column: 6)
!6281 = !DILocation(line: 460, column: 11, scope: !6280)
!6282 = !DILocation(line: 460, column: 6, scope: !6231)
!6283 = !DILocation(line: 460, column: 26, scope: !6280)
!6284 = !DILocation(line: 461, column: 6, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 461, column: 6)
!6286 = !DILocation(line: 461, column: 11, scope: !6285)
!6287 = !DILocation(line: 461, column: 6, scope: !6231)
!6288 = !DILocation(line: 461, column: 26, scope: !6285)
!6289 = !DILocation(line: 462, column: 6, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 462, column: 6)
!6291 = !DILocation(line: 462, column: 11, scope: !6290)
!6292 = !DILocation(line: 462, column: 6, scope: !6231)
!6293 = !DILocation(line: 462, column: 26, scope: !6290)
!6294 = !DILocation(line: 463, column: 6, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 463, column: 6)
!6296 = !DILocation(line: 463, column: 11, scope: !6295)
!6297 = !DILocation(line: 463, column: 6, scope: !6231)
!6298 = !DILocation(line: 463, column: 26, scope: !6295)
!6299 = !DILocation(line: 464, column: 6, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 464, column: 6)
!6301 = !DILocation(line: 464, column: 11, scope: !6300)
!6302 = !DILocation(line: 464, column: 6, scope: !6231)
!6303 = !DILocation(line: 464, column: 26, scope: !6300)
!6304 = !DILocation(line: 465, column: 6, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 465, column: 6)
!6306 = !DILocation(line: 465, column: 11, scope: !6305)
!6307 = !DILocation(line: 465, column: 6, scope: !6231)
!6308 = !DILocation(line: 465, column: 26, scope: !6305)
!6309 = !DILocation(line: 466, column: 6, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 466, column: 6)
!6311 = !DILocation(line: 466, column: 11, scope: !6310)
!6312 = !DILocation(line: 466, column: 6, scope: !6231)
!6313 = !DILocation(line: 466, column: 26, scope: !6310)
!6314 = !DILocation(line: 467, column: 6, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 467, column: 6)
!6316 = !DILocation(line: 467, column: 11, scope: !6315)
!6317 = !DILocation(line: 467, column: 6, scope: !6231)
!6318 = !DILocation(line: 467, column: 26, scope: !6315)
!6319 = !DILocation(line: 468, column: 6, scope: !6320)
!6320 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 468, column: 6)
!6321 = !DILocation(line: 468, column: 11, scope: !6320)
!6322 = !DILocation(line: 468, column: 6, scope: !6231)
!6323 = !DILocation(line: 468, column: 26, scope: !6320)
!6324 = !DILocation(line: 469, column: 6, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 469, column: 6)
!6326 = !DILocation(line: 469, column: 11, scope: !6325)
!6327 = !DILocation(line: 469, column: 6, scope: !6231)
!6328 = !DILocation(line: 469, column: 26, scope: !6325)
!6329 = !DILocation(line: 470, column: 6, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 470, column: 6)
!6331 = !DILocation(line: 470, column: 11, scope: !6330)
!6332 = !DILocation(line: 470, column: 6, scope: !6231)
!6333 = !DILocation(line: 470, column: 26, scope: !6330)
!6334 = !DILocation(line: 471, column: 6, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 471, column: 6)
!6336 = !DILocation(line: 471, column: 11, scope: !6335)
!6337 = !DILocation(line: 471, column: 6, scope: !6231)
!6338 = !DILocation(line: 471, column: 26, scope: !6335)
!6339 = !DILocation(line: 472, column: 6, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 472, column: 6)
!6341 = !DILocation(line: 472, column: 11, scope: !6340)
!6342 = !DILocation(line: 472, column: 6, scope: !6231)
!6343 = !DILocation(line: 472, column: 26, scope: !6340)
!6344 = !DILocation(line: 473, column: 6, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 473, column: 6)
!6346 = !DILocation(line: 473, column: 11, scope: !6345)
!6347 = !DILocation(line: 473, column: 6, scope: !6231)
!6348 = !DILocation(line: 473, column: 26, scope: !6345)
!6349 = !DILocation(line: 474, column: 6, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 474, column: 6)
!6351 = !DILocation(line: 474, column: 11, scope: !6350)
!6352 = !DILocation(line: 474, column: 6, scope: !6231)
!6353 = !DILocation(line: 474, column: 27, scope: !6350)
!6354 = !DILocation(line: 475, column: 6, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 475, column: 6)
!6356 = !DILocation(line: 475, column: 11, scope: !6355)
!6357 = !DILocation(line: 475, column: 6, scope: !6231)
!6358 = !DILocation(line: 475, column: 32, scope: !6355)
!6359 = !DILocation(line: 477, column: 50, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6231, file: !139, line: 477, column: 6)
!6361 = !DILocation(line: 477, column: 6, scope: !6231)
!6362 = !DILocation(line: 478, column: 3, scope: !6360)
!6363 = !DILocation(line: 478, column: 3, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6365, file: !139, line: 478, column: 3)
!6365 = distinct !DILexicalBlock(scope: !6360, file: !139, line: 478, column: 3)
!6366 = !{i32 -2142279828}
!6367 = !DILocation(line: 478, column: 3, scope: !6365)
!6368 = !DILocation(line: 480, column: 3, scope: !6360)
!6369 = !DILocation(line: 480, column: 3, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6360, file: !139, line: 480, column: 3)
!6371 = !DILocation(line: 480, column: 3, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6370, file: !139, line: 480, column: 3)
!6373 = !DILocation(line: 480, column: 3, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6370, file: !139, line: 480, column: 3)
!6375 = !{i64 2152687671, i64 2152687700, i64 2152687746, i64 2152687804, i64 2152687858, i64 2152687912, i64 2152687967, i64 2152687998}
!6376 = !DILocation(line: 483, column: 2, scope: !6231)
!6377 = !DILocation(line: 484, column: 1, scope: !6231)
!6378 = !DISubprogram(name: "kmalloc_trace", scope: !139, file: !139, line: 525, type: !6379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6379 = !DISubroutineType(types: !6380)
!6380 = !{!149, !6381, !710, !312}
!6381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6382, size: 64)
!6382 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6383, line: 11, flags: DIFlagFwdDecl)
!6383 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6384 = distinct !DISubprogram(name: "kmalloc_type", scope: !139, file: !139, line: 401, type: !6385, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6387)
!6385 = !DISubroutineType(types: !6386)
!6386 = !{!138, !710, !315}
!6387 = !{!6388, !6389}
!6388 = !DILocalVariable(name: "flags", arg: 1, scope: !6384, file: !139, line: 401, type: !710)
!6389 = !DILocalVariable(name: "caller", arg: 2, scope: !6384, file: !139, line: 401, type: !315)
!6390 = !DILocation(line: 401, column: 67, scope: !6384)
!6391 = !DILocation(line: 401, column: 88, scope: !6384)
!6392 = !DILocation(line: 407, column: 6, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6384, file: !139, line: 407, column: 6)
!6394 = !DILocation(line: 407, column: 6, scope: !6384)
!6395 = !DILocation(line: 413, column: 3, scope: !6393)
!6396 = !DILocation(line: 423, column: 38, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6384, file: !139, line: 423, column: 6)
!6398 = !DILocation(line: 423, column: 44, scope: !6397)
!6399 = !DILocation(line: 423, column: 6, scope: !6384)
!6400 = !DILocation(line: 424, column: 3, scope: !6397)
!6401 = !DILocation(line: 426, column: 3, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6384, file: !139, line: 425, column: 6)
!6403 = !DILocation(line: 429, column: 1, scope: !6384)
!6404 = !DISubprogram(name: "__kmalloc", scope: !139, file: !139, line: 488, type: !4972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6405 = !DISubprogram(name: "__compiletime_assert_206", scope: !139, file: !139, line: 478, type: !2303, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6406 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6133, file: !6133, line: 80, type: !6134, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6407)
!6407 = !{!6408, !6409}
!6408 = !DILocalVariable(name: "v", arg: 1, scope: !6406, file: !6133, line: 80, type: !6136)
!6409 = !DILocalVariable(name: "size", arg: 2, scope: !6406, file: !6133, line: 80, type: !312)
!6410 = !DILocation(line: 80, column: 74, scope: !6406)
!6411 = !DILocation(line: 80, column: 84, scope: !6406)
!6412 = !DILocation(line: 82, column: 20, scope: !6406)
!6413 = !DILocation(line: 82, column: 23, scope: !6406)
!6414 = !DILocation(line: 82, column: 2, scope: !6406)
!6415 = !DILocation(line: 83, column: 2, scope: !6406)
!6416 = !DILocation(line: 84, column: 1, scope: !6406)
!6417 = distinct !DISubprogram(name: "raw_atomic_set", scope: !6150, file: !6150, line: 488, type: !4985, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6418)
!6418 = !{!6419, !6420}
!6419 = !DILocalVariable(name: "v", arg: 1, scope: !6417, file: !6150, line: 488, type: !4684)
!6420 = !DILocalVariable(name: "i", arg: 2, scope: !6417, file: !6150, line: 488, type: !101)
!6421 = !DILocation(line: 488, column: 26, scope: !6417)
!6422 = !DILocation(line: 488, column: 33, scope: !6417)
!6423 = !DILocation(line: 490, column: 18, scope: !6417)
!6424 = !DILocation(line: 490, column: 21, scope: !6417)
!6425 = !DILocation(line: 490, column: 2, scope: !6417)
!6426 = !DILocation(line: 491, column: 1, scope: !6417)
!6427 = distinct !DISubprogram(name: "arch_atomic_set", scope: !6180, file: !6180, line: 26, type: !4985, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6428)
!6428 = !{!6429, !6430}
!6429 = !DILocalVariable(name: "v", arg: 1, scope: !6427, file: !6180, line: 26, type: !4684)
!6430 = !DILocalVariable(name: "i", arg: 2, scope: !6427, file: !6180, line: 26, type: !101)
!6431 = !DILocation(line: 26, column: 55, scope: !6427)
!6432 = !DILocation(line: 26, column: 62, scope: !6427)
!6433 = !DILocation(line: 28, column: 2, scope: !6427)
!6434 = !DILocation(line: 28, column: 2, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6427, file: !6180, line: 28, column: 2)
!6436 = !DILocation(line: 29, column: 1, scope: !6427)
!6437 = !DISubprogram(name: "__init_rwsem", scope: !860, file: !860, line: 104, type: !6438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6438 = !DISubroutineType(types: !6439)
!6439 = !{null, !5843, !185, !6440}
!6440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!6441 = distinct !DISubprogram(name: "__list_add", scope: !5030, file: !5030, line: 146, type: !6442, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6444)
!6442 = !DISubroutineType(types: !6443)
!6443 = !{null, !171, !171, !171}
!6444 = !{!6445, !6446, !6447}
!6445 = !DILocalVariable(name: "new", arg: 1, scope: !6441, file: !5030, line: 146, type: !171)
!6446 = !DILocalVariable(name: "prev", arg: 2, scope: !6441, file: !5030, line: 147, type: !171)
!6447 = !DILocalVariable(name: "next", arg: 3, scope: !6441, file: !5030, line: 148, type: !171)
!6448 = !DILocation(line: 146, column: 49, scope: !6441)
!6449 = !DILocation(line: 147, column: 28, scope: !6441)
!6450 = !DILocation(line: 148, column: 28, scope: !6441)
!6451 = !DILocation(line: 150, column: 24, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6441, file: !5030, line: 150, column: 6)
!6453 = !DILocation(line: 150, column: 29, scope: !6452)
!6454 = !DILocation(line: 150, column: 35, scope: !6452)
!6455 = !DILocation(line: 150, column: 7, scope: !6452)
!6456 = !DILocation(line: 150, column: 6, scope: !6441)
!6457 = !DILocation(line: 151, column: 3, scope: !6452)
!6458 = !DILocation(line: 153, column: 15, scope: !6441)
!6459 = !DILocation(line: 153, column: 2, scope: !6441)
!6460 = !DILocation(line: 153, column: 8, scope: !6441)
!6461 = !DILocation(line: 153, column: 13, scope: !6441)
!6462 = !DILocation(line: 154, column: 14, scope: !6441)
!6463 = !DILocation(line: 154, column: 2, scope: !6441)
!6464 = !DILocation(line: 154, column: 7, scope: !6441)
!6465 = !DILocation(line: 154, column: 12, scope: !6441)
!6466 = !DILocation(line: 155, column: 14, scope: !6441)
!6467 = !DILocation(line: 155, column: 2, scope: !6441)
!6468 = !DILocation(line: 155, column: 7, scope: !6441)
!6469 = !DILocation(line: 155, column: 12, scope: !6441)
!6470 = !DILocation(line: 156, column: 2, scope: !6441)
!6471 = !DILocation(line: 156, column: 2, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6441, file: !5030, line: 156, column: 2)
!6473 = !DILocation(line: 156, column: 2, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6472, file: !5030, line: 156, column: 2)
!6475 = !DILocation(line: 156, column: 2, scope: !6476)
!6476 = distinct !DILexicalBlock(scope: !6472, file: !5030, line: 156, column: 2)
!6477 = !DILocation(line: 157, column: 1, scope: !6441)
!6478 = distinct !DISubprogram(name: "__list_add_valid", scope: !5030, file: !5030, line: 128, type: !6479, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6481)
!6479 = !DISubroutineType(types: !6480)
!6480 = !{!1464, !171, !171, !171}
!6481 = !{!6482, !6483, !6484}
!6482 = !DILocalVariable(name: "new", arg: 1, scope: !6478, file: !5030, line: 128, type: !171)
!6483 = !DILocalVariable(name: "prev", arg: 2, scope: !6478, file: !5030, line: 129, type: !171)
!6484 = !DILocalVariable(name: "next", arg: 3, scope: !6478, file: !5030, line: 130, type: !171)
!6485 = !DILocation(line: 128, column: 55, scope: !6478)
!6486 = !DILocation(line: 129, column: 23, scope: !6478)
!6487 = !DILocation(line: 130, column: 23, scope: !6478)
!6488 = !DILocation(line: 132, column: 2, scope: !6478)
!6489 = distinct !DISubprogram(name: "__list_del_entry", scope: !5030, file: !5030, line: 213, type: !5112, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6490)
!6490 = !{!6491}
!6491 = !DILocalVariable(name: "entry", arg: 1, scope: !6489, file: !5030, line: 213, type: !171)
!6492 = !DILocation(line: 213, column: 55, scope: !6489)
!6493 = !DILocation(line: 215, column: 30, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6489, file: !5030, line: 215, column: 6)
!6495 = !DILocation(line: 215, column: 7, scope: !6494)
!6496 = !DILocation(line: 215, column: 6, scope: !6489)
!6497 = !DILocation(line: 216, column: 3, scope: !6494)
!6498 = !DILocation(line: 218, column: 13, scope: !6489)
!6499 = !DILocation(line: 218, column: 20, scope: !6489)
!6500 = !DILocation(line: 218, column: 26, scope: !6489)
!6501 = !DILocation(line: 218, column: 33, scope: !6489)
!6502 = !DILocation(line: 218, column: 2, scope: !6489)
!6503 = !DILocation(line: 219, column: 1, scope: !6489)
!6504 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5030, file: !5030, line: 134, type: !6505, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6507)
!6505 = !DISubroutineType(types: !6506)
!6506 = !{!1464, !171}
!6507 = !{!6508}
!6508 = !DILocalVariable(name: "entry", arg: 1, scope: !6504, file: !5030, line: 134, type: !171)
!6509 = !DILocation(line: 134, column: 61, scope: !6504)
!6510 = !DILocation(line: 136, column: 2, scope: !6504)
!6511 = distinct !DISubprogram(name: "__list_del", scope: !5030, file: !5030, line: 193, type: !5031, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6512)
!6512 = !{!6513, !6514}
!6513 = !DILocalVariable(name: "prev", arg: 1, scope: !6511, file: !5030, line: 193, type: !171)
!6514 = !DILocalVariable(name: "next", arg: 2, scope: !6511, file: !5030, line: 193, type: !171)
!6515 = !DILocation(line: 193, column: 50, scope: !6511)
!6516 = !DILocation(line: 193, column: 75, scope: !6511)
!6517 = !DILocation(line: 195, column: 15, scope: !6511)
!6518 = !DILocation(line: 195, column: 2, scope: !6511)
!6519 = !DILocation(line: 195, column: 8, scope: !6511)
!6520 = !DILocation(line: 195, column: 13, scope: !6511)
!6521 = !DILocation(line: 196, column: 2, scope: !6511)
!6522 = !DILocation(line: 196, column: 2, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6511, file: !5030, line: 196, column: 2)
!6524 = !DILocation(line: 196, column: 2, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6523, file: !5030, line: 196, column: 2)
!6526 = !DILocation(line: 196, column: 2, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6523, file: !5030, line: 196, column: 2)
!6528 = !DILocation(line: 197, column: 1, scope: !6511)
!6529 = !DISubprogram(name: "snd_use_lock_sync_helper", scope: !3939, file: !3939, line: 19, type: !6530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6530 = !DISubroutineType(types: !6531)
!6531 = !{null, !6532, !185, !101}
!6532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!6533 = distinct !DISubprogram(name: "clear_subscriber_list", scope: !2, file: !2, line: 219, type: !6534, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6536)
!6534 = !DISubroutineType(types: !6535)
!6535 = !{null, !4127, !150, !4102, !101}
!6536 = !{!6537, !6538, !6539, !6540, !6541, !6542, !6543, !6547, !6548}
!6537 = !DILocalVariable(name: "client", arg: 1, scope: !6533, file: !2, line: 219, type: !4127)
!6538 = !DILocalVariable(name: "port", arg: 2, scope: !6533, file: !2, line: 220, type: !150)
!6539 = !DILocalVariable(name: "grp", arg: 3, scope: !6533, file: !2, line: 221, type: !4102)
!6540 = !DILocalVariable(name: "is_src", arg: 4, scope: !6533, file: !2, line: 222, type: !101)
!6541 = !DILocalVariable(name: "p", scope: !6533, file: !2, line: 224, type: !171)
!6542 = !DILocalVariable(name: "n", scope: !6533, file: !2, line: 224, type: !171)
!6543 = !DILocalVariable(name: "subs", scope: !6544, file: !2, line: 227, type: !4075)
!6544 = distinct !DILexicalBlock(scope: !6545, file: !2, line: 226, column: 44)
!6545 = distinct !DILexicalBlock(scope: !6546, file: !2, line: 226, column: 2)
!6546 = distinct !DILexicalBlock(scope: !6533, file: !2, line: 226, column: 2)
!6547 = !DILocalVariable(name: "c", scope: !6544, file: !2, line: 228, type: !4127)
!6548 = !DILocalVariable(name: "aport", scope: !6544, file: !2, line: 229, type: !150)
!6549 = !DILocation(line: 219, column: 58, scope: !6533)
!6550 = !DILocation(line: 220, column: 35, scope: !6533)
!6551 = !DILocation(line: 221, column: 38, scope: !6533)
!6552 = !DILocation(line: 222, column: 11, scope: !6533)
!6553 = !DILocation(line: 224, column: 2, scope: !6533)
!6554 = !DILocation(line: 224, column: 20, scope: !6533)
!6555 = !DILocation(line: 224, column: 24, scope: !6533)
!6556 = !DILocation(line: 226, column: 2, scope: !6546)
!6557 = !DILocation(line: 226, column: 2, scope: !6545)
!6558 = !DILocation(line: 227, column: 3, scope: !6544)
!6559 = !DILocation(line: 227, column: 31, scope: !6544)
!6560 = !DILocation(line: 228, column: 3, scope: !6544)
!6561 = !DILocation(line: 228, column: 26, scope: !6544)
!6562 = !DILocation(line: 229, column: 3, scope: !6544)
!6563 = !DILocation(line: 229, column: 31, scope: !6544)
!6564 = !DILocation(line: 231, column: 25, scope: !6544)
!6565 = !DILocation(line: 231, column: 28, scope: !6544)
!6566 = !DILocation(line: 231, column: 10, scope: !6544)
!6567 = !DILocation(line: 231, column: 8, scope: !6544)
!6568 = !DILocation(line: 232, column: 7, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6544, file: !2, line: 232, column: 7)
!6570 = !DILocation(line: 232, column: 7, scope: !6544)
!6571 = !DILocation(line: 233, column: 29, scope: !6569)
!6572 = !DILocation(line: 233, column: 35, scope: !6569)
!6573 = !DILocation(line: 233, column: 40, scope: !6569)
!6574 = !DILocation(line: 233, column: 12, scope: !6569)
!6575 = !DILocation(line: 233, column: 10, scope: !6569)
!6576 = !DILocation(line: 233, column: 4, scope: !6569)
!6577 = !DILocation(line: 235, column: 29, scope: !6569)
!6578 = !DILocation(line: 235, column: 35, scope: !6569)
!6579 = !DILocation(line: 235, column: 40, scope: !6569)
!6580 = !DILocation(line: 235, column: 12, scope: !6569)
!6581 = !DILocation(line: 235, column: 10, scope: !6569)
!6582 = !DILocation(line: 236, column: 31, scope: !6544)
!6583 = !DILocation(line: 236, column: 39, scope: !6544)
!6584 = !DILocation(line: 236, column: 45, scope: !6544)
!6585 = !DILocation(line: 236, column: 51, scope: !6544)
!6586 = !DILocation(line: 236, column: 3, scope: !6544)
!6587 = !DILocation(line: 238, column: 8, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6544, file: !2, line: 238, column: 7)
!6589 = !DILocation(line: 238, column: 7, scope: !6544)
!6590 = !DILocation(line: 243, column: 29, scope: !6591)
!6591 = distinct !DILexicalBlock(scope: !6592, file: !2, line: 243, column: 8)
!6592 = distinct !DILexicalBlock(scope: !6588, file: !2, line: 238, column: 15)
!6593 = !DILocation(line: 243, column: 35, scope: !6591)
!6594 = !DILocation(line: 243, column: 8, scope: !6591)
!6595 = !DILocation(line: 243, column: 8, scope: !6592)
!6596 = !DILocation(line: 244, column: 11, scope: !6591)
!6597 = !DILocation(line: 244, column: 5, scope: !6591)
!6598 = !DILocation(line: 245, column: 4, scope: !6592)
!6599 = !DILocation(line: 249, column: 31, scope: !6544)
!6600 = !DILocation(line: 249, column: 34, scope: !6544)
!6601 = !DILocation(line: 249, column: 41, scope: !6544)
!6602 = !DILocation(line: 249, column: 48, scope: !6544)
!6603 = !DILocation(line: 249, column: 47, scope: !6544)
!6604 = !DILocation(line: 249, column: 3, scope: !6544)
!6605 = !DILocation(line: 250, column: 9, scope: !6544)
!6606 = !DILocation(line: 250, column: 3, scope: !6544)
!6607 = !DILocation(line: 251, column: 3, scope: !6544)
!6608 = !DILocation(line: 252, column: 3, scope: !6544)
!6609 = !DILocation(line: 253, column: 2, scope: !6545)
!6610 = !DILocation(line: 253, column: 2, scope: !6544)
!6611 = distinct !{!6611, !6556, !6612, !4670, !4671}
!6612 = !DILocation(line: 253, column: 2, scope: !6546)
!6613 = !DILocation(line: 254, column: 1, scope: !6533)
!6614 = distinct !DISubprogram(name: "list_is_head", scope: !5030, file: !5030, line: 362, type: !6615, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6617)
!6615 = !DISubroutineType(types: !6616)
!6616 = !{!101, !5236, !5236}
!6617 = !{!6618, !6619}
!6618 = !DILocalVariable(name: "list", arg: 1, scope: !6614, file: !5030, line: 362, type: !5236)
!6619 = !DILocalVariable(name: "head", arg: 2, scope: !6614, file: !5030, line: 362, type: !5236)
!6620 = !DILocation(line: 362, column: 56, scope: !6614)
!6621 = !DILocation(line: 362, column: 86, scope: !6614)
!6622 = !DILocation(line: 364, column: 9, scope: !6614)
!6623 = !DILocation(line: 364, column: 17, scope: !6614)
!6624 = !DILocation(line: 364, column: 14, scope: !6614)
!6625 = !DILocation(line: 364, column: 2, scope: !6614)
!6626 = distinct !DISubprogram(name: "get_subscriber", scope: !2, file: !2, line: 207, type: !6627, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6629)
!6627 = !DISubroutineType(types: !6628)
!6628 = !{!4075, !171, !1464}
!6629 = !{!6630, !6631, !6632, !6635}
!6630 = !DILocalVariable(name: "p", arg: 1, scope: !6626, file: !2, line: 207, type: !171)
!6631 = !DILocalVariable(name: "is_src", arg: 2, scope: !6626, file: !2, line: 207, type: !1464)
!6632 = !DILocalVariable(name: "__mptr", scope: !6633, file: !2, line: 210, type: !149)
!6633 = distinct !DILexicalBlock(scope: !6634, file: !2, line: 210, column: 10)
!6634 = distinct !DILexicalBlock(scope: !6626, file: !2, line: 209, column: 6)
!6635 = !DILocalVariable(name: "__mptr", scope: !6636, file: !2, line: 212, type: !149)
!6636 = distinct !DILexicalBlock(scope: !6634, file: !2, line: 212, column: 10)
!6637 = !DILocation(line: 207, column: 34, scope: !6626)
!6638 = !DILocation(line: 207, column: 42, scope: !6626)
!6639 = !DILocation(line: 209, column: 6, scope: !6634)
!6640 = !DILocation(line: 209, column: 6, scope: !6626)
!6641 = !DILocation(line: 210, column: 10, scope: !6633)
!6642 = !DILocation(line: 210, column: 10, scope: !6634)
!6643 = !DILocation(line: 210, column: 3, scope: !6634)
!6644 = !DILocation(line: 212, column: 10, scope: !6636)
!6645 = !DILocation(line: 212, column: 10, scope: !6634)
!6646 = !DILocation(line: 212, column: 3, scope: !6634)
!6647 = !DILocation(line: 213, column: 1, scope: !6626)
!6648 = distinct !DISubprogram(name: "get_client_port", scope: !2, file: !2, line: 185, type: !6649, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6652)
!6649 = !DISubroutineType(types: !6650)
!6650 = !{!150, !5951, !6651}
!6651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!6652 = !{!6653, !6654, !6655}
!6653 = !DILocalVariable(name: "addr", arg: 1, scope: !6648, file: !2, line: 185, type: !5951)
!6654 = !DILocalVariable(name: "cp", arg: 2, scope: !6648, file: !2, line: 186, type: !6651)
!6655 = !DILocalVariable(name: "p", scope: !6648, file: !2, line: 188, type: !150)
!6656 = !DILocation(line: 185, column: 73, scope: !6648)
!6657 = !DILocation(line: 186, column: 34, scope: !6648)
!6658 = !DILocation(line: 188, column: 2, scope: !6648)
!6659 = !DILocation(line: 188, column: 30, scope: !6648)
!6660 = !DILocation(line: 189, column: 31, scope: !6648)
!6661 = !DILocation(line: 189, column: 37, scope: !6648)
!6662 = !DILocation(line: 189, column: 8, scope: !6648)
!6663 = !DILocation(line: 189, column: 3, scope: !6648)
!6664 = !DILocation(line: 189, column: 6, scope: !6648)
!6665 = !DILocation(line: 190, column: 7, scope: !6666)
!6666 = distinct !DILexicalBlock(scope: !6648, file: !2, line: 190, column: 6)
!6667 = !DILocation(line: 190, column: 6, scope: !6666)
!6668 = !DILocation(line: 190, column: 6, scope: !6648)
!6669 = !DILocation(line: 191, column: 29, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !6666, file: !2, line: 190, column: 11)
!6671 = !DILocation(line: 191, column: 28, scope: !6670)
!6672 = !DILocation(line: 191, column: 33, scope: !6670)
!6673 = !DILocation(line: 191, column: 39, scope: !6670)
!6674 = !DILocation(line: 191, column: 7, scope: !6670)
!6675 = !DILocation(line: 191, column: 5, scope: !6670)
!6676 = !DILocation(line: 192, column: 9, scope: !6677)
!6677 = distinct !DILexicalBlock(scope: !6670, file: !2, line: 192, column: 7)
!6678 = !DILocation(line: 192, column: 7, scope: !6670)
!6679 = !DILocation(line: 193, column: 4, scope: !6680)
!6680 = distinct !DILexicalBlock(scope: !6677, file: !2, line: 192, column: 12)
!6681 = !DILocation(line: 194, column: 5, scope: !6680)
!6682 = !DILocation(line: 194, column: 8, scope: !6680)
!6683 = !DILocation(line: 195, column: 3, scope: !6680)
!6684 = !DILocation(line: 196, column: 10, scope: !6670)
!6685 = !DILocation(line: 196, column: 3, scope: !6670)
!6686 = !DILocation(line: 198, column: 2, scope: !6648)
!6687 = !DILocation(line: 199, column: 1, scope: !6648)
!6688 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !4681, file: !4681, line: 1372, type: !6689, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6691)
!6689 = !DISubroutineType(types: !6690)
!6690 = !{!1464, !4684}
!6691 = !{!6692}
!6692 = !DILocalVariable(name: "v", arg: 1, scope: !6688, file: !4681, line: 1372, type: !4684)
!6693 = !DILocation(line: 1372, column: 31, scope: !6688)
!6694 = !DILocation(line: 1374, column: 2, scope: !6688)
!6695 = !DILocation(line: 1374, column: 2, scope: !6696)
!6696 = distinct !DILexicalBlock(scope: !6688, file: !4681, line: 1374, column: 2)
!6697 = !DILocation(line: 1375, column: 31, scope: !6688)
!6698 = !DILocation(line: 1375, column: 2, scope: !6688)
!6699 = !DILocation(line: 1376, column: 33, scope: !6688)
!6700 = !DILocation(line: 1376, column: 9, scope: !6688)
!6701 = !DILocation(line: 1376, column: 2, scope: !6688)
!6702 = distinct !DISubprogram(name: "atomic_dec", scope: !4681, file: !4681, line: 590, type: !4682, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6703)
!6703 = !{!6704}
!6704 = !DILocalVariable(name: "v", arg: 1, scope: !6702, file: !4681, line: 590, type: !4684)
!6705 = !DILocation(line: 590, column: 22, scope: !6702)
!6706 = !DILocation(line: 592, column: 31, scope: !6702)
!6707 = !DILocation(line: 592, column: 2, scope: !6702)
!6708 = !DILocation(line: 593, column: 17, scope: !6702)
!6709 = !DILocation(line: 593, column: 2, scope: !6702)
!6710 = !DILocation(line: 594, column: 1, scope: !6702)
!6711 = !DISubprogram(name: "snd_seq_client_use_ptr", scope: !4129, file: !4129, line: 79, type: !6712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6712 = !DISubroutineType(types: !6713)
!6713 = !{!4127, !101}
!6714 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !6150, file: !6150, line: 2254, type: !6689, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6715)
!6715 = !{!6716}
!6716 = !DILocalVariable(name: "v", arg: 1, scope: !6714, file: !6150, line: 2254, type: !4684)
!6717 = !DILocation(line: 2254, column: 35, scope: !6714)
!6718 = !DILocation(line: 2257, column: 34, scope: !6714)
!6719 = !DILocation(line: 2257, column: 9, scope: !6714)
!6720 = !DILocation(line: 2257, column: 2, scope: !6714)
!6721 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !6180, file: !6180, line: 65, type: !6689, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6722)
!6722 = !{!6723, !6724}
!6723 = !DILocalVariable(name: "v", arg: 1, scope: !6721, file: !6180, line: 65, type: !4684)
!6724 = !DILocalVariable(name: "c", scope: !6725, file: !6180, line: 67, type: !1464)
!6725 = distinct !DILexicalBlock(scope: !6721, file: !6180, line: 67, column: 9)
!6726 = !DILocation(line: 65, column: 64, scope: !6721)
!6727 = !DILocation(line: 67, column: 9, scope: !6725)
!6728 = !{i64 2148487952, i64 2148487991, i64 2148488012, i64 2148488049, i64 2148488072, i64 2148488081, i64 2148488155}
!6729 = !DILocation(line: 67, column: 9, scope: !6721)
!6730 = !DILocation(line: 67, column: 2, scope: !6721)
!6731 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !6150, file: !6150, line: 1194, type: !4682, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6732)
!6732 = !{!6733}
!6733 = !DILocalVariable(name: "v", arg: 1, scope: !6731, file: !6150, line: 1194, type: !4684)
!6734 = !DILocation(line: 1194, column: 26, scope: !6731)
!6735 = !DILocation(line: 1197, column: 18, scope: !6731)
!6736 = !DILocation(line: 1197, column: 2, scope: !6731)
!6737 = !DILocation(line: 1201, column: 1, scope: !6731)
!6738 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !6180, file: !6180, line: 58, type: !4682, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6739)
!6739 = !{!6740}
!6740 = !DILocalVariable(name: "v", arg: 1, scope: !6738, file: !6180, line: 58, type: !4684)
!6741 = !DILocation(line: 58, column: 55, scope: !6738)
!6742 = !DILocation(line: 61, column: 16, scope: !6738)
!6743 = !DILocation(line: 61, column: 19, scope: !6738)
!6744 = !DILocation(line: 60, column: 2, scope: !6738)
!6745 = !{i64 2148486203, i64 2148486242, i64 2148486263, i64 2148486300, i64 2148486323, i64 2148486193}
!6746 = !DILocation(line: 62, column: 1, scope: !6738)
!6747 = distinct !DISubprogram(name: "subscribe_port", scope: !2, file: !2, line: 430, type: !6748, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6750)
!6748 = !DISubroutineType(types: !6749)
!6749 = !{!101, !4127, !150, !4102, !3952, !101}
!6750 = !{!6751, !6752, !6753, !6754, !6755, !6756}
!6751 = !DILocalVariable(name: "client", arg: 1, scope: !6747, file: !2, line: 430, type: !4127)
!6752 = !DILocalVariable(name: "port", arg: 2, scope: !6747, file: !2, line: 431, type: !150)
!6753 = !DILocalVariable(name: "grp", arg: 3, scope: !6747, file: !2, line: 432, type: !4102)
!6754 = !DILocalVariable(name: "info", arg: 4, scope: !6747, file: !2, line: 433, type: !3952)
!6755 = !DILocalVariable(name: "send_ack", arg: 5, scope: !6747, file: !2, line: 434, type: !101)
!6756 = !DILocalVariable(name: "err", scope: !6747, file: !2, line: 436, type: !101)
!6757 = !DILocation(line: 430, column: 50, scope: !6747)
!6758 = !DILocation(line: 431, column: 34, scope: !6747)
!6759 = !DILocation(line: 432, column: 37, scope: !6747)
!6760 = !DILocation(line: 433, column: 37, scope: !6747)
!6761 = !DILocation(line: 434, column: 10, scope: !6747)
!6762 = !DILocation(line: 436, column: 2, scope: !6747)
!6763 = !DILocation(line: 436, column: 6, scope: !6747)
!6764 = !DILocation(line: 438, column: 22, scope: !6765)
!6765 = distinct !DILexicalBlock(scope: !6747, file: !2, line: 438, column: 6)
!6766 = !DILocation(line: 438, column: 28, scope: !6765)
!6767 = !DILocation(line: 438, column: 7, scope: !6765)
!6768 = !DILocation(line: 438, column: 6, scope: !6747)
!6769 = !DILocation(line: 439, column: 3, scope: !6765)
!6770 = !DILocation(line: 440, column: 2, scope: !6747)
!6771 = !DILocation(line: 440, column: 7, scope: !6747)
!6772 = !DILocation(line: 440, column: 12, scope: !6747)
!6773 = !DILocation(line: 441, column: 6, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6747, file: !2, line: 441, column: 6)
!6775 = !DILocation(line: 441, column: 11, scope: !6774)
!6776 = !DILocation(line: 441, column: 16, scope: !6774)
!6777 = !DILocation(line: 441, column: 19, scope: !6774)
!6778 = !DILocation(line: 441, column: 24, scope: !6774)
!6779 = !DILocation(line: 441, column: 30, scope: !6774)
!6780 = !DILocation(line: 441, column: 6, scope: !6747)
!6781 = !DILocation(line: 442, column: 9, scope: !6782)
!6782 = distinct !DILexicalBlock(scope: !6774, file: !2, line: 441, column: 36)
!6783 = !DILocation(line: 442, column: 14, scope: !6782)
!6784 = !DILocation(line: 442, column: 19, scope: !6782)
!6785 = !DILocation(line: 442, column: 25, scope: !6782)
!6786 = !DILocation(line: 442, column: 39, scope: !6782)
!6787 = !DILocation(line: 442, column: 7, scope: !6782)
!6788 = !DILocation(line: 443, column: 7, scope: !6789)
!6789 = distinct !DILexicalBlock(scope: !6782, file: !2, line: 443, column: 7)
!6790 = !DILocation(line: 443, column: 11, scope: !6789)
!6791 = !DILocation(line: 443, column: 7, scope: !6782)
!6792 = !DILocation(line: 444, column: 15, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !6789, file: !2, line: 443, column: 16)
!6794 = !DILocation(line: 444, column: 21, scope: !6793)
!6795 = !DILocation(line: 444, column: 4, scope: !6793)
!6796 = !DILocation(line: 445, column: 4, scope: !6793)
!6797 = !DILocation(line: 445, column: 9, scope: !6793)
!6798 = !DILocation(line: 445, column: 14, scope: !6793)
!6799 = !DILocation(line: 446, column: 3, scope: !6793)
!6800 = !DILocation(line: 447, column: 2, scope: !6782)
!6801 = !DILocation(line: 448, column: 6, scope: !6802)
!6802 = distinct !DILexicalBlock(scope: !6747, file: !2, line: 448, column: 6)
!6803 = !DILocation(line: 448, column: 10, scope: !6802)
!6804 = !DILocation(line: 448, column: 15, scope: !6802)
!6805 = !DILocation(line: 448, column: 18, scope: !6802)
!6806 = !DILocation(line: 448, column: 27, scope: !6802)
!6807 = !DILocation(line: 448, column: 30, scope: !6802)
!6808 = !DILocation(line: 448, column: 38, scope: !6802)
!6809 = !DILocation(line: 448, column: 43, scope: !6802)
!6810 = !DILocation(line: 448, column: 6, scope: !6747)
!6811 = !DILocation(line: 449, column: 38, scope: !6802)
!6812 = !DILocation(line: 449, column: 44, scope: !6802)
!6813 = !DILocation(line: 449, column: 49, scope: !6802)
!6814 = !DILocation(line: 449, column: 57, scope: !6802)
!6815 = !DILocation(line: 449, column: 63, scope: !6802)
!6816 = !DILocation(line: 449, column: 68, scope: !6802)
!6817 = !DILocation(line: 450, column: 10, scope: !6802)
!6818 = !DILocation(line: 449, column: 3, scope: !6802)
!6819 = !DILocation(line: 452, column: 9, scope: !6747)
!6820 = !DILocation(line: 452, column: 2, scope: !6747)
!6821 = !DILocation(line: 453, column: 1, scope: !6747)
!6822 = !DISubprogram(name: "try_module_get", scope: !22, file: !22, line: 696, type: !6823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6823 = !DISubroutineType(types: !6824)
!6824 = !{!1464, !162}
!6825 = !DISubprogram(name: "module_put", scope: !22, file: !22, line: 706, type: !3634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6826 = !DISubprogram(name: "snd_seq_client_notify_subscription", scope: !4129, file: !4129, line: 88, type: !6827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6827 = !DISubroutineType(types: !6828)
!6828 = !{!101, !101, !101, !3952, !101}
!6829 = distinct !DISubprogram(name: "unsubscribe_port", scope: !2, file: !2, line: 455, type: !6748, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6830)
!6830 = !{!6831, !6832, !6833, !6834, !6835, !6836}
!6831 = !DILocalVariable(name: "client", arg: 1, scope: !6829, file: !2, line: 455, type: !4127)
!6832 = !DILocalVariable(name: "port", arg: 2, scope: !6829, file: !2, line: 456, type: !150)
!6833 = !DILocalVariable(name: "grp", arg: 3, scope: !6829, file: !2, line: 457, type: !4102)
!6834 = !DILocalVariable(name: "info", arg: 4, scope: !6829, file: !2, line: 458, type: !3952)
!6835 = !DILocalVariable(name: "send_ack", arg: 5, scope: !6829, file: !2, line: 459, type: !101)
!6836 = !DILocalVariable(name: "err", scope: !6829, file: !2, line: 461, type: !101)
!6837 = !DILocation(line: 455, column: 52, scope: !6829)
!6838 = !DILocation(line: 456, column: 36, scope: !6829)
!6839 = !DILocation(line: 457, column: 39, scope: !6829)
!6840 = !DILocation(line: 458, column: 39, scope: !6829)
!6841 = !DILocation(line: 459, column: 12, scope: !6829)
!6842 = !DILocation(line: 461, column: 2, scope: !6829)
!6843 = !DILocation(line: 461, column: 6, scope: !6829)
!6844 = !DILocation(line: 463, column: 8, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6829, file: !2, line: 463, column: 6)
!6846 = !DILocation(line: 463, column: 13, scope: !6845)
!6847 = !DILocation(line: 463, column: 6, scope: !6829)
!6848 = !DILocation(line: 464, column: 3, scope: !6845)
!6849 = !DILocation(line: 465, column: 2, scope: !6829)
!6850 = !DILocation(line: 465, column: 7, scope: !6829)
!6851 = !DILocation(line: 465, column: 12, scope: !6829)
!6852 = !DILocation(line: 466, column: 6, scope: !6853)
!6853 = distinct !DILexicalBlock(scope: !6829, file: !2, line: 466, column: 6)
!6854 = !DILocation(line: 466, column: 11, scope: !6853)
!6855 = !DILocation(line: 466, column: 17, scope: !6853)
!6856 = !DILocation(line: 466, column: 20, scope: !6853)
!6857 = !DILocation(line: 466, column: 25, scope: !6853)
!6858 = !DILocation(line: 466, column: 31, scope: !6853)
!6859 = !DILocation(line: 466, column: 6, scope: !6829)
!6860 = !DILocation(line: 467, column: 9, scope: !6853)
!6861 = !DILocation(line: 467, column: 14, scope: !6853)
!6862 = !DILocation(line: 467, column: 20, scope: !6853)
!6863 = !DILocation(line: 467, column: 26, scope: !6853)
!6864 = !DILocation(line: 467, column: 40, scope: !6853)
!6865 = !DILocation(line: 467, column: 7, scope: !6853)
!6866 = !DILocation(line: 467, column: 3, scope: !6853)
!6867 = !DILocation(line: 468, column: 6, scope: !6868)
!6868 = distinct !DILexicalBlock(scope: !6829, file: !2, line: 468, column: 6)
!6869 = !DILocation(line: 468, column: 15, scope: !6868)
!6870 = !DILocation(line: 468, column: 18, scope: !6868)
!6871 = !DILocation(line: 468, column: 26, scope: !6868)
!6872 = !DILocation(line: 468, column: 31, scope: !6868)
!6873 = !DILocation(line: 468, column: 6, scope: !6829)
!6874 = !DILocation(line: 469, column: 38, scope: !6868)
!6875 = !DILocation(line: 469, column: 44, scope: !6868)
!6876 = !DILocation(line: 469, column: 49, scope: !6868)
!6877 = !DILocation(line: 469, column: 57, scope: !6868)
!6878 = !DILocation(line: 469, column: 63, scope: !6868)
!6879 = !DILocation(line: 469, column: 68, scope: !6868)
!6880 = !DILocation(line: 470, column: 10, scope: !6868)
!6881 = !DILocation(line: 469, column: 3, scope: !6868)
!6882 = !DILocation(line: 471, column: 13, scope: !6829)
!6883 = !DILocation(line: 471, column: 19, scope: !6829)
!6884 = !DILocation(line: 471, column: 2, scope: !6829)
!6885 = !DILocation(line: 472, column: 9, scope: !6829)
!6886 = !DILocation(line: 472, column: 2, scope: !6829)
!6887 = !DILocation(line: 473, column: 1, scope: !6829)
