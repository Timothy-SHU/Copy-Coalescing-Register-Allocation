; ModuleID = 'sound/core/seq/seq_timer.c'
source_filename = "sound/core/seq/seq_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_seq_timer = type { i8, i32, i32, %struct.snd_seq_real_time, %struct.snd_seq_timer_tick, i32, i32, %struct.snd_timer_id, ptr, i32, i64, i32, i32, %struct.timespec64, %struct.spinlock }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_timer_tick = type { i32, i64, i64 }
%struct.snd_timer_id = type { i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i64 }
%struct.snd_seq_queue = type { i32, [64 x i8], ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, %struct.spinlock, %struct.spinlock, [3 x i64], i32, %struct.mutex, %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.snd_timer_instance = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.snd_info_buffer = type { ptr, i32, i32, i32, i32, i32 }
%struct.snd_timer = type { i32, ptr, ptr, i32, i32, [64 x i8], [80 x i8], i32, i32, i64, ptr, ptr, %struct.snd_timer_hardware, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32 }
%struct.snd_timer_hardware = type { i32, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }

@seq_default_timer_class = external dso_local global i32, align 4
@seq_default_timer_sclass = external dso_local global i32, align 4
@seq_default_timer_card = external dso_local global i32, align 4
@seq_default_timer_device = external dso_local global i32, align 4
@seq_default_timer_subdevice = external dso_local global i32, align 4
@seq_default_timer_resolution = external dso_local global i32, align 4
@.str = private unnamed_addr constant [19 x i8] c"sequencer queue %i\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [51 x i8] c"\013ALSA: seq fatal error: cannot create timer (%i)\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [25 x i8] c"Timer for queue %i : %s\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [27 x i8] c"  Period time : %lu.%09lu\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [18 x i8] c"  Skew : %u / %u\0A\00", align 1, !dbg !22
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !27

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_seq_timer_new() #0 align 16 !dbg !3989 {
entry:
  %retval = alloca ptr, align 8
  %tmr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmr) #16, !dbg !4614
  call void @llvm.dbg.declare(metadata ptr %tmr, metadata !4613, metadata !DIExpression()), !dbg !4615
  %call = call noalias ptr @kzalloc(i64 noundef 136, i32 noundef 3264) #17, !dbg !4616
  store ptr %call, ptr %tmr, align 8, !dbg !4617
  %0 = load ptr, ptr %tmr, align 8, !dbg !4618
  %tobool = icmp ne ptr %0, null, !dbg !4618
  br i1 %tobool, label %if.end, label %if.then, !dbg !4620

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4621

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4622

do.body:                                          ; preds = %if.end
  %1 = load ptr, ptr %tmr, align 8, !dbg !4623
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 14, !dbg !4623
  %call1 = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !4623
  %2 = load ptr, ptr %tmr, align 8, !dbg !4623
  %lock2 = getelementptr inbounds %struct.snd_seq_timer, ptr %2, i32 0, i32 14, !dbg !4623
  %3 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !4623
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 0, !dbg !4623
  %4 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !4623
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !4623
  store i32 0, ptr %counter, align 4, !dbg !4623
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !4623
  br label %do.cond, !dbg !4623

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4623

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %tmr, align 8, !dbg !4625
  call void @snd_seq_timer_defaults(ptr noundef %5) #18, !dbg !4626
  %6 = load ptr, ptr %tmr, align 8, !dbg !4627
  call void @snd_seq_timer_reset(ptr noundef %6) #18, !dbg !4628
  %7 = load ptr, ptr %tmr, align 8, !dbg !4629
  store ptr %7, ptr %retval, align 8, !dbg !4630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4630

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmr) #16, !dbg !4631
  %8 = load ptr, ptr %retval, align 8, !dbg !4631
  ret ptr %8, !dbg !4631
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !4632 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4636, metadata !DIExpression()), !dbg !4638
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4637, metadata !DIExpression()), !dbg !4639
  %0 = load i64, ptr %size.addr, align 8, !dbg !4640
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4641
  %or = or i32 %1, 256, !dbg !4642
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !4643
  ret ptr %call, !dbg !4644
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !4645 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4652, metadata !DIExpression()), !dbg !4653
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4654
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4655
  ret ptr %1, !dbg !4656
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_timer_defaults(ptr noundef %tmr) #0 align 16 !dbg !4657 {
entry:
  %tmr.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !4661, metadata !DIExpression()), !dbg !4668
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4669
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4662, metadata !DIExpression()), !dbg !4670
  br label %do.body, !dbg !4671

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4672

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4673
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4663, metadata !DIExpression()), !dbg !4673
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4673
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4667, metadata !DIExpression()), !dbg !4673
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4673
  %conv = zext i1 %cmp to i32, !dbg !4673
  store i32 1, ptr %tmp, align 4, !dbg !4673
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4674
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4674
  %0 = load i32, ptr %tmp, align 4, !dbg !4673
  %1 = load ptr, ptr %tmr.addr, align 8, !dbg !4674
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 14, !dbg !4674
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !4674
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !4674
  store i64 %call2, ptr %flags, align 8, !dbg !4674
  br label %do.cond, !dbg !4674

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4674

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !4672

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4672

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %tmr.addr, align 8, !dbg !4675
  %ppq = getelementptr inbounds %struct.snd_seq_timer, ptr %2, i32 0, i32 2, !dbg !4676
  store i32 96, ptr %ppq, align 8, !dbg !4677
  %3 = load ptr, ptr %tmr.addr, align 8, !dbg !4678
  %tempo = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 1, !dbg !4679
  store i32 500000, ptr %tempo, align 4, !dbg !4680
  %4 = load ptr, ptr %tmr.addr, align 8, !dbg !4681
  call void @snd_seq_timer_set_tick_resolution(ptr noundef %4) #18, !dbg !4682
  %5 = load ptr, ptr %tmr.addr, align 8, !dbg !4683
  %bf.load = load i8, ptr %5, align 8, !dbg !4684
  %bf.clear = and i8 %bf.load, -2, !dbg !4684
  %bf.set = or i8 %bf.clear, 0, !dbg !4684
  store i8 %bf.set, ptr %5, align 8, !dbg !4684
  %6 = load ptr, ptr %tmr.addr, align 8, !dbg !4685
  %type = getelementptr inbounds %struct.snd_seq_timer, ptr %6, i32 0, i32 6, !dbg !4686
  store i32 0, ptr %type, align 4, !dbg !4687
  %7 = load i32, ptr @seq_default_timer_class, align 4, !dbg !4688
  %8 = load ptr, ptr %tmr.addr, align 8, !dbg !4689
  %alsa_id = getelementptr inbounds %struct.snd_seq_timer, ptr %8, i32 0, i32 7, !dbg !4690
  %dev_class = getelementptr inbounds %struct.snd_timer_id, ptr %alsa_id, i32 0, i32 0, !dbg !4691
  store i32 %7, ptr %dev_class, align 8, !dbg !4692
  %9 = load i32, ptr @seq_default_timer_sclass, align 4, !dbg !4693
  %10 = load ptr, ptr %tmr.addr, align 8, !dbg !4694
  %alsa_id5 = getelementptr inbounds %struct.snd_seq_timer, ptr %10, i32 0, i32 7, !dbg !4695
  %dev_sclass = getelementptr inbounds %struct.snd_timer_id, ptr %alsa_id5, i32 0, i32 1, !dbg !4696
  store i32 %9, ptr %dev_sclass, align 4, !dbg !4697
  %11 = load i32, ptr @seq_default_timer_card, align 4, !dbg !4698
  %12 = load ptr, ptr %tmr.addr, align 8, !dbg !4699
  %alsa_id6 = getelementptr inbounds %struct.snd_seq_timer, ptr %12, i32 0, i32 7, !dbg !4700
  %card = getelementptr inbounds %struct.snd_timer_id, ptr %alsa_id6, i32 0, i32 2, !dbg !4701
  store i32 %11, ptr %card, align 8, !dbg !4702
  %13 = load i32, ptr @seq_default_timer_device, align 4, !dbg !4703
  %14 = load ptr, ptr %tmr.addr, align 8, !dbg !4704
  %alsa_id7 = getelementptr inbounds %struct.snd_seq_timer, ptr %14, i32 0, i32 7, !dbg !4705
  %device = getelementptr inbounds %struct.snd_timer_id, ptr %alsa_id7, i32 0, i32 3, !dbg !4706
  store i32 %13, ptr %device, align 4, !dbg !4707
  %15 = load i32, ptr @seq_default_timer_subdevice, align 4, !dbg !4708
  %16 = load ptr, ptr %tmr.addr, align 8, !dbg !4709
  %alsa_id8 = getelementptr inbounds %struct.snd_seq_timer, ptr %16, i32 0, i32 7, !dbg !4710
  %subdevice = getelementptr inbounds %struct.snd_timer_id, ptr %alsa_id8, i32 0, i32 4, !dbg !4711
  store i32 %15, ptr %subdevice, align 8, !dbg !4712
  %17 = load i32, ptr @seq_default_timer_resolution, align 4, !dbg !4713
  %conv9 = sext i32 %17 to i64, !dbg !4713
  %18 = load ptr, ptr %tmr.addr, align 8, !dbg !4714
  %preferred_resolution = getelementptr inbounds %struct.snd_seq_timer, ptr %18, i32 0, i32 10, !dbg !4715
  store i64 %conv9, ptr %preferred_resolution, align 8, !dbg !4716
  %19 = load ptr, ptr %tmr.addr, align 8, !dbg !4717
  %skew_base = getelementptr inbounds %struct.snd_seq_timer, ptr %19, i32 0, i32 12, !dbg !4718
  store i32 65536, ptr %skew_base, align 4, !dbg !4719
  %20 = load ptr, ptr %tmr.addr, align 8, !dbg !4720
  %skew = getelementptr inbounds %struct.snd_seq_timer, ptr %20, i32 0, i32 11, !dbg !4721
  store i32 65536, ptr %skew, align 8, !dbg !4722
  %21 = load ptr, ptr %tmr.addr, align 8, !dbg !4723
  %lock10 = getelementptr inbounds %struct.snd_seq_timer, ptr %21, i32 0, i32 14, !dbg !4724
  %22 = load i64, ptr %flags, align 8, !dbg !4725
  call void @spin_unlock_irqrestore(ptr noundef %lock10, i64 noundef %22) #18, !dbg !4726
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4727
  ret void, !dbg !4727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_timer_reset(ptr noundef %tmr) #0 align 16 !dbg !4728 {
entry:
  %tmr.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !4730, metadata !DIExpression()), !dbg !4737
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4738
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4731, metadata !DIExpression()), !dbg !4739
  br label %do.body, !dbg !4740

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4741

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4742
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4732, metadata !DIExpression()), !dbg !4742
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4742
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4736, metadata !DIExpression()), !dbg !4742
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4742
  %conv = zext i1 %cmp to i32, !dbg !4742
  store i32 1, ptr %tmp, align 4, !dbg !4742
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4743
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4743
  %0 = load i32, ptr %tmp, align 4, !dbg !4742
  %1 = load ptr, ptr %tmr.addr, align 8, !dbg !4743
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 14, !dbg !4743
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !4743
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !4743
  store i64 %call2, ptr %flags, align 8, !dbg !4743
  br label %do.cond, !dbg !4743

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4743

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !4741

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4741

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %tmr.addr, align 8, !dbg !4744
  call void @seq_timer_reset(ptr noundef %2) #18, !dbg !4745
  %3 = load ptr, ptr %tmr.addr, align 8, !dbg !4746
  %lock5 = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 14, !dbg !4747
  %4 = load i64, ptr %flags, align 8, !dbg !4748
  call void @spin_unlock_irqrestore(ptr noundef %lock5, i64 noundef %4) #18, !dbg !4749
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4750
  ret void, !dbg !4750
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_timer_delete(ptr noundef %tmr) #0 align 16 !dbg !4751 {
entry:
  %tmr.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !4756, metadata !DIExpression()), !dbg !4758
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #16, !dbg !4759
  call void @llvm.dbg.declare(metadata ptr %t, metadata !4757, metadata !DIExpression()), !dbg !4760
  %0 = load ptr, ptr %tmr.addr, align 8, !dbg !4761
  %1 = load ptr, ptr %0, align 8, !dbg !4762
  store ptr %1, ptr %t, align 8, !dbg !4760
  %2 = load ptr, ptr %tmr.addr, align 8, !dbg !4763
  store ptr null, ptr %2, align 8, !dbg !4764
  %3 = load ptr, ptr %t, align 8, !dbg !4765
  %cmp = icmp eq ptr %3, null, !dbg !4767
  br i1 %cmp, label %if.then, label %if.end, !dbg !4768

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !4769
  %4 = load i32, ptr %tmp, align 4, !dbg !4773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4774

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %t, align 8, !dbg !4775
  %bf.load = load i8, ptr %5, align 8, !dbg !4776
  %bf.clear = and i8 %bf.load, -2, !dbg !4776
  %bf.set = or i8 %bf.clear, 0, !dbg !4776
  store i8 %bf.set, ptr %5, align 8, !dbg !4776
  %6 = load ptr, ptr %t, align 8, !dbg !4777
  %call = call i32 @snd_seq_timer_stop(ptr noundef %6) #18, !dbg !4778
  %7 = load ptr, ptr %t, align 8, !dbg !4779
  call void @snd_seq_timer_reset(ptr noundef %7) #18, !dbg !4780
  %8 = load ptr, ptr %t, align 8, !dbg !4781
  call void @kfree(ptr noundef %8) #18, !dbg !4782
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4783
  br label %cleanup, !dbg !4783

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #16, !dbg !4783
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4783

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_timer_stop(ptr noundef %tmr) #0 align 16 !dbg !4784 {
entry:
  %tmr.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %err = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !4788, metadata !DIExpression()), !dbg !4796
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4797
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4789, metadata !DIExpression()), !dbg !4798
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !4799
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4790, metadata !DIExpression()), !dbg !4800
  br label %do.body, !dbg !4801

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4802

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4803
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4791, metadata !DIExpression()), !dbg !4803
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4803
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4795, metadata !DIExpression()), !dbg !4803
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4803
  %conv = zext i1 %cmp to i32, !dbg !4803
  store i32 1, ptr %tmp, align 4, !dbg !4803
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4804
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4804
  %0 = load i32, ptr %tmp, align 4, !dbg !4803
  %1 = load ptr, ptr %tmr.addr, align 8, !dbg !4804
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 14, !dbg !4804
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !4804
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !4804
  store i64 %call2, ptr %flags, align 8, !dbg !4804
  br label %do.cond, !dbg !4804

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4804

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !4802

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4802

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %tmr.addr, align 8, !dbg !4805
  %call5 = call i32 @seq_timer_stop(ptr noundef %2) #18, !dbg !4806
  store i32 %call5, ptr %err, align 4, !dbg !4807
  %3 = load ptr, ptr %tmr.addr, align 8, !dbg !4808
  %lock6 = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 14, !dbg !4809
  %4 = load i64, ptr %flags, align 8, !dbg !4810
  call void @spin_unlock_irqrestore(ptr noundef %lock6, i64 noundef %4) #18, !dbg !4811
  %5 = load i32, ptr %err, align 4, !dbg !4812
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !4813
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4813
  ret i32 %5, !dbg !4814
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4815 dso_local void @kfree(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4818 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_seq_timer_set_tick_resolution(ptr noundef %tmr) #0 align 16 !dbg !4822 {
entry:
  %tmr.addr = alloca ptr, align 8
  %s = alloca i32, align 4
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !4824, metadata !DIExpression()), !dbg !4828
  %0 = load ptr, ptr %tmr.addr, align 8, !dbg !4829
  %tempo = getelementptr inbounds %struct.snd_seq_timer, ptr %0, i32 0, i32 1, !dbg !4830
  %1 = load i32, ptr %tempo, align 4, !dbg !4830
  %cmp = icmp ult i32 %1, 1000000, !dbg !4831
  br i1 %cmp, label %if.then, label %if.else, !dbg !4832

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tmr.addr, align 8, !dbg !4833
  %tempo1 = getelementptr inbounds %struct.snd_seq_timer, ptr %2, i32 0, i32 1, !dbg !4834
  %3 = load i32, ptr %tempo1, align 4, !dbg !4834
  %mul = mul i32 %3, 1000, !dbg !4835
  %4 = load ptr, ptr %tmr.addr, align 8, !dbg !4836
  %ppq = getelementptr inbounds %struct.snd_seq_timer, ptr %4, i32 0, i32 2, !dbg !4837
  %5 = load i32, ptr %ppq, align 8, !dbg !4837
  %div = udiv i32 %mul, %5, !dbg !4838
  %conv = zext i32 %div to i64, !dbg !4839
  %6 = load ptr, ptr %tmr.addr, align 8, !dbg !4840
  %tick = getelementptr inbounds %struct.snd_seq_timer, ptr %6, i32 0, i32 4, !dbg !4841
  %resolution = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %tick, i32 0, i32 1, !dbg !4842
  store i64 %conv, ptr %resolution, align 8, !dbg !4843
  br label %if.end, !dbg !4840

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #16, !dbg !4844
  call void @llvm.dbg.declare(metadata ptr %s, metadata !4825, metadata !DIExpression()), !dbg !4845
  %7 = load ptr, ptr %tmr.addr, align 8, !dbg !4846
  %tempo2 = getelementptr inbounds %struct.snd_seq_timer, ptr %7, i32 0, i32 1, !dbg !4847
  %8 = load i32, ptr %tempo2, align 4, !dbg !4847
  %9 = load ptr, ptr %tmr.addr, align 8, !dbg !4848
  %ppq3 = getelementptr inbounds %struct.snd_seq_timer, ptr %9, i32 0, i32 2, !dbg !4849
  %10 = load i32, ptr %ppq3, align 8, !dbg !4849
  %rem = urem i32 %8, %10, !dbg !4850
  store i32 %rem, ptr %s, align 4, !dbg !4851
  %11 = load i32, ptr %s, align 4, !dbg !4852
  %mul4 = mul i32 %11, 1000, !dbg !4853
  %12 = load ptr, ptr %tmr.addr, align 8, !dbg !4854
  %ppq5 = getelementptr inbounds %struct.snd_seq_timer, ptr %12, i32 0, i32 2, !dbg !4855
  %13 = load i32, ptr %ppq5, align 8, !dbg !4855
  %div6 = udiv i32 %mul4, %13, !dbg !4856
  store i32 %div6, ptr %s, align 4, !dbg !4857
  %14 = load ptr, ptr %tmr.addr, align 8, !dbg !4858
  %tempo7 = getelementptr inbounds %struct.snd_seq_timer, ptr %14, i32 0, i32 1, !dbg !4859
  %15 = load i32, ptr %tempo7, align 4, !dbg !4859
  %16 = load ptr, ptr %tmr.addr, align 8, !dbg !4860
  %ppq8 = getelementptr inbounds %struct.snd_seq_timer, ptr %16, i32 0, i32 2, !dbg !4861
  %17 = load i32, ptr %ppq8, align 8, !dbg !4861
  %div9 = udiv i32 %15, %17, !dbg !4862
  %mul10 = mul i32 %div9, 1000, !dbg !4863
  %conv11 = zext i32 %mul10 to i64, !dbg !4864
  %18 = load ptr, ptr %tmr.addr, align 8, !dbg !4865
  %tick12 = getelementptr inbounds %struct.snd_seq_timer, ptr %18, i32 0, i32 4, !dbg !4866
  %resolution13 = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %tick12, i32 0, i32 1, !dbg !4867
  store i64 %conv11, ptr %resolution13, align 8, !dbg !4868
  %19 = load i32, ptr %s, align 4, !dbg !4869
  %conv14 = zext i32 %19 to i64, !dbg !4869
  %20 = load ptr, ptr %tmr.addr, align 8, !dbg !4870
  %tick15 = getelementptr inbounds %struct.snd_seq_timer, ptr %20, i32 0, i32 4, !dbg !4871
  %resolution16 = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %tick15, i32 0, i32 1, !dbg !4872
  %21 = load i64, ptr %resolution16, align 8, !dbg !4873
  %add = add i64 %21, %conv14, !dbg !4873
  store i64 %add, ptr %resolution16, align 8, !dbg !4873
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #16, !dbg !4874
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load ptr, ptr %tmr.addr, align 8, !dbg !4875
  %tick17 = getelementptr inbounds %struct.snd_seq_timer, ptr %22, i32 0, i32 4, !dbg !4877
  %resolution18 = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %tick17, i32 0, i32 1, !dbg !4878
  %23 = load i64, ptr %resolution18, align 8, !dbg !4878
  %cmp19 = icmp ule i64 %23, 0, !dbg !4879
  br i1 %cmp19, label %if.then21, label %if.end24, !dbg !4880

if.then21:                                        ; preds = %if.end
  %24 = load ptr, ptr %tmr.addr, align 8, !dbg !4881
  %tick22 = getelementptr inbounds %struct.snd_seq_timer, ptr %24, i32 0, i32 4, !dbg !4882
  %resolution23 = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %tick22, i32 0, i32 1, !dbg !4883
  store i64 1, ptr %resolution23, align 8, !dbg !4884
  br label %if.end24, !dbg !4881

if.end24:                                         ; preds = %if.then21, %if.end
  %25 = load ptr, ptr %tmr.addr, align 8, !dbg !4885
  %tick25 = getelementptr inbounds %struct.snd_seq_timer, ptr %25, i32 0, i32 4, !dbg !4886
  call void @snd_seq_timer_update_tick(ptr noundef %tick25, i64 noundef 0) #18, !dbg !4887
  ret void, !dbg !4888
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !4889 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4893, metadata !DIExpression()), !dbg !4899
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4894, metadata !DIExpression()), !dbg !4900
  br label %do.body, !dbg !4901

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4902
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4895, metadata !DIExpression()), !dbg !4902
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4902
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4898, metadata !DIExpression()), !dbg !4902
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4902
  %conv = zext i1 %cmp to i32, !dbg !4902
  store i32 1, ptr %tmp, align 4, !dbg !4902
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4903
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4903
  %0 = load i32, ptr %tmp, align 4, !dbg !4902
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !4903
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !4903
  %3 = load i64, ptr %flags.addr, align 8, !dbg !4903
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #18, !dbg !4903
  br label %do.end, !dbg !4903

do.end:                                           ; preds = %do.body
  ret void, !dbg !4904
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_timer_reset(ptr noundef %tmr) #0 align 16 !dbg !4905 {
entry:
  %tmr.addr = alloca ptr, align 8
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !4907, metadata !DIExpression()), !dbg !4908
  %0 = load ptr, ptr %tmr.addr, align 8, !dbg !4909
  %cur_time = getelementptr inbounds %struct.snd_seq_timer, ptr %0, i32 0, i32 3, !dbg !4910
  %tv_sec = getelementptr inbounds %struct.snd_seq_real_time, ptr %cur_time, i32 0, i32 0, !dbg !4911
  store i32 0, ptr %tv_sec, align 4, !dbg !4912
  %1 = load ptr, ptr %tmr.addr, align 8, !dbg !4913
  %cur_time1 = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 3, !dbg !4914
  %tv_nsec = getelementptr inbounds %struct.snd_seq_real_time, ptr %cur_time1, i32 0, i32 1, !dbg !4915
  store i32 0, ptr %tv_nsec, align 4, !dbg !4916
  %2 = load ptr, ptr %tmr.addr, align 8, !dbg !4917
  %tick = getelementptr inbounds %struct.snd_seq_timer, ptr %2, i32 0, i32 4, !dbg !4918
  %cur_tick = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %tick, i32 0, i32 0, !dbg !4919
  store i32 0, ptr %cur_tick, align 8, !dbg !4920
  %3 = load ptr, ptr %tmr.addr, align 8, !dbg !4921
  %tick2 = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 4, !dbg !4922
  %fraction = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %tick2, i32 0, i32 2, !dbg !4923
  store i64 0, ptr %fraction, align 8, !dbg !4924
  ret void, !dbg !4925
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_timer_set_tempo(ptr noundef %tmr, i32 noundef %tempo) #0 align 16 !dbg !4926 {
entry:
  %retval = alloca i32, align 4
  %tmr.addr = alloca ptr, align 8
  %tempo.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp15 = alloca i32, align 4
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !4930, metadata !DIExpression()), !dbg !4941
  store i32 %tempo, ptr %tempo.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tempo.addr, metadata !4931, metadata !DIExpression()), !dbg !4942
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4943
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4932, metadata !DIExpression()), !dbg !4944
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4945
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4933, metadata !DIExpression()), !dbg !4945
  %0 = load ptr, ptr %tmr.addr, align 8, !dbg !4945
  %tobool = icmp ne ptr %0, null, !dbg !4945
  %lnot = xor i1 %tobool, true, !dbg !4945
  %lnot1 = xor i1 %lnot, true, !dbg !4945
  %lnot2 = xor i1 %lnot1, true, !dbg !4945
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4945
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4945
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4945
  %tobool3 = icmp ne i32 %1, 0, !dbg !4945
  %lnot4 = xor i1 %tobool3, true, !dbg !4945
  %lnot6 = xor i1 %lnot4, true, !dbg !4945
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4945
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4945
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4945
  store i64 %expval, ptr %tmp, align 8, !dbg !4945
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !4946
  %2 = load i64, ptr %tmp, align 8, !dbg !4945
  %tobool8 = icmp ne i64 %2, 0, !dbg !4946
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4947

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4948

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %tempo.addr, align 4, !dbg !4949
  %cmp = icmp sle i32 %3, 0, !dbg !4951
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !4952

if.then10:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4953

if.end11:                                         ; preds = %if.end
  br label %do.body, !dbg !4954

do.body:                                          ; preds = %if.end11
  br label %do.body12, !dbg !4955

do.body12:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4956
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4936, metadata !DIExpression()), !dbg !4956
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4956
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4940, metadata !DIExpression()), !dbg !4956
  %cmp13 = icmp eq ptr %__dummy, %__dummy2, !dbg !4956
  %conv14 = zext i1 %cmp13 to i32, !dbg !4956
  store i32 1, ptr %tmp15, align 4, !dbg !4956
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4957
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4957
  %4 = load i32, ptr %tmp15, align 4, !dbg !4956
  %5 = load ptr, ptr %tmr.addr, align 8, !dbg !4957
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %5, i32 0, i32 14, !dbg !4957
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !4957
  %call16 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !4957
  store i64 %call16, ptr %flags, align 8, !dbg !4957
  br label %do.cond, !dbg !4957

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !4957

do.end:                                           ; preds = %do.cond
  br label %do.cond17, !dbg !4955

do.cond17:                                        ; preds = %do.end
  br label %do.end18, !dbg !4955

do.end18:                                         ; preds = %do.cond17
  %6 = load i32, ptr %tempo.addr, align 4, !dbg !4958
  %7 = load ptr, ptr %tmr.addr, align 8, !dbg !4960
  %tempo19 = getelementptr inbounds %struct.snd_seq_timer, ptr %7, i32 0, i32 1, !dbg !4961
  %8 = load i32, ptr %tempo19, align 4, !dbg !4961
  %cmp20 = icmp ne i32 %6, %8, !dbg !4962
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !4963

if.then22:                                        ; preds = %do.end18
  %9 = load i32, ptr %tempo.addr, align 4, !dbg !4964
  %10 = load ptr, ptr %tmr.addr, align 8, !dbg !4966
  %tempo23 = getelementptr inbounds %struct.snd_seq_timer, ptr %10, i32 0, i32 1, !dbg !4967
  store i32 %9, ptr %tempo23, align 4, !dbg !4968
  %11 = load ptr, ptr %tmr.addr, align 8, !dbg !4969
  call void @snd_seq_timer_set_tick_resolution(ptr noundef %11) #18, !dbg !4970
  br label %if.end24, !dbg !4971

if.end24:                                         ; preds = %if.then22, %do.end18
  %12 = load ptr, ptr %tmr.addr, align 8, !dbg !4972
  %lock25 = getelementptr inbounds %struct.snd_seq_timer, ptr %12, i32 0, i32 14, !dbg !4973
  %13 = load i64, ptr %flags, align 8, !dbg !4974
  call void @spin_unlock_irqrestore(ptr noundef %lock25, i64 noundef %13) #18, !dbg !4975
  store i32 0, ptr %retval, align 4, !dbg !4976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4976

cleanup:                                          ; preds = %if.end24, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4977
  %14 = load i32, ptr %retval, align 4, !dbg !4977
  ret i32 %14, !dbg !4977
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_timer_set_tempo_ppq(ptr noundef %tmr, i32 noundef %tempo, i32 noundef %ppq) #0 align 16 !dbg !4978 {
entry:
  %retval = alloca i32, align 4
  %tmr.addr = alloca ptr, align 8
  %tempo.addr = alloca i32, align 4
  %ppq.addr = alloca i32, align 4
  %changed = alloca i32, align 4
  %flags = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !4982, metadata !DIExpression()), !dbg !4995
  store i32 %tempo, ptr %tempo.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tempo.addr, metadata !4983, metadata !DIExpression()), !dbg !4996
  store i32 %ppq, ptr %ppq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ppq.addr, metadata !4984, metadata !DIExpression()), !dbg !4997
  call void @llvm.lifetime.start.p0(i64 4, ptr %changed) #16, !dbg !4998
  call void @llvm.dbg.declare(metadata ptr %changed, metadata !4985, metadata !DIExpression()), !dbg !4999
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5000
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4986, metadata !DIExpression()), !dbg !5001
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5002
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4987, metadata !DIExpression()), !dbg !5002
  %0 = load ptr, ptr %tmr.addr, align 8, !dbg !5002
  %tobool = icmp ne ptr %0, null, !dbg !5002
  %lnot = xor i1 %tobool, true, !dbg !5002
  %lnot1 = xor i1 %lnot, true, !dbg !5002
  %lnot2 = xor i1 %lnot1, true, !dbg !5002
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5002
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5002
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5002
  %tobool3 = icmp ne i32 %1, 0, !dbg !5002
  %lnot4 = xor i1 %tobool3, true, !dbg !5002
  %lnot6 = xor i1 %lnot4, true, !dbg !5002
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5002
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5002
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5002
  store i64 %expval, ptr %tmp, align 8, !dbg !5002
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5003
  %2 = load i64, ptr %tmp, align 8, !dbg !5002
  %tobool8 = icmp ne i64 %2, 0, !dbg !5003
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5004

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5005
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5005

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %tempo.addr, align 4, !dbg !5006
  %cmp = icmp sle i32 %3, 0, !dbg !5008
  br i1 %cmp, label %if.then12, label %lor.lhs.false, !dbg !5009

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %ppq.addr, align 4, !dbg !5010
  %cmp10 = icmp sle i32 %4, 0, !dbg !5011
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5012

if.then12:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5013

if.end13:                                         ; preds = %lor.lhs.false
  br label %do.body, !dbg !5014

do.body:                                          ; preds = %if.end13
  br label %do.body14, !dbg !5015

do.body14:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5016
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4990, metadata !DIExpression()), !dbg !5016
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5016
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4994, metadata !DIExpression()), !dbg !5016
  %cmp15 = icmp eq ptr %__dummy, %__dummy2, !dbg !5016
  %conv16 = zext i1 %cmp15 to i32, !dbg !5016
  store i32 1, ptr %tmp17, align 4, !dbg !5016
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5017
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5017
  %5 = load i32, ptr %tmp17, align 4, !dbg !5016
  %6 = load ptr, ptr %tmr.addr, align 8, !dbg !5017
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %6, i32 0, i32 14, !dbg !5017
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5017
  %call18 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !5017
  store i64 %call18, ptr %flags, align 8, !dbg !5017
  br label %do.cond, !dbg !5017

do.cond:                                          ; preds = %do.body14
  br label %do.end, !dbg !5017

do.end:                                           ; preds = %do.cond
  br label %do.cond19, !dbg !5015

do.cond19:                                        ; preds = %do.end
  br label %do.end20, !dbg !5015

do.end20:                                         ; preds = %do.cond19
  %7 = load ptr, ptr %tmr.addr, align 8, !dbg !5018
  %bf.load = load i8, ptr %7, align 8, !dbg !5020
  %bf.clear = and i8 %bf.load, 1, !dbg !5020
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5020
  %tobool21 = icmp ne i32 %bf.cast, 0, !dbg !5018
  br i1 %tobool21, label %land.lhs.true, label %if.end28, !dbg !5021

land.lhs.true:                                    ; preds = %do.end20
  %8 = load i32, ptr %ppq.addr, align 4, !dbg !5022
  %9 = load ptr, ptr %tmr.addr, align 8, !dbg !5023
  %ppq22 = getelementptr inbounds %struct.snd_seq_timer, ptr %9, i32 0, i32 2, !dbg !5024
  %10 = load i32, ptr %ppq22, align 8, !dbg !5024
  %cmp23 = icmp ne i32 %8, %10, !dbg !5025
  br i1 %cmp23, label %if.then25, label %if.end28, !dbg !5026

if.then25:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %tmr.addr, align 8, !dbg !5027
  %lock26 = getelementptr inbounds %struct.snd_seq_timer, ptr %11, i32 0, i32 14, !dbg !5029
  %12 = load i64, ptr %flags, align 8, !dbg !5030
  call void @spin_unlock_irqrestore(ptr noundef %lock26, i64 noundef %12) #18, !dbg !5031
  store i32 0, ptr %tmp27, align 4, !dbg !5032
  %13 = load i32, ptr %tmp27, align 4, !dbg !5035
  store i32 -16, ptr %retval, align 4, !dbg !5036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5036

if.end28:                                         ; preds = %land.lhs.true, %do.end20
  %14 = load i32, ptr %tempo.addr, align 4, !dbg !5037
  %15 = load ptr, ptr %tmr.addr, align 8, !dbg !5038
  %tempo29 = getelementptr inbounds %struct.snd_seq_timer, ptr %15, i32 0, i32 1, !dbg !5039
  %16 = load i32, ptr %tempo29, align 4, !dbg !5039
  %cmp30 = icmp ne i32 %14, %16, !dbg !5040
  br i1 %cmp30, label %lor.end, label %lor.rhs, !dbg !5041

lor.rhs:                                          ; preds = %if.end28
  %17 = load i32, ptr %ppq.addr, align 4, !dbg !5042
  %18 = load ptr, ptr %tmr.addr, align 8, !dbg !5043
  %ppq32 = getelementptr inbounds %struct.snd_seq_timer, ptr %18, i32 0, i32 2, !dbg !5044
  %19 = load i32, ptr %ppq32, align 8, !dbg !5044
  %cmp33 = icmp ne i32 %17, %19, !dbg !5045
  br label %lor.end, !dbg !5041

lor.end:                                          ; preds = %lor.rhs, %if.end28
  %20 = phi i1 [ true, %if.end28 ], [ %cmp33, %lor.rhs ]
  %lor.ext = zext i1 %20 to i32, !dbg !5041
  store i32 %lor.ext, ptr %changed, align 4, !dbg !5046
  %21 = load i32, ptr %tempo.addr, align 4, !dbg !5047
  %22 = load ptr, ptr %tmr.addr, align 8, !dbg !5048
  %tempo35 = getelementptr inbounds %struct.snd_seq_timer, ptr %22, i32 0, i32 1, !dbg !5049
  store i32 %21, ptr %tempo35, align 4, !dbg !5050
  %23 = load i32, ptr %ppq.addr, align 4, !dbg !5051
  %24 = load ptr, ptr %tmr.addr, align 8, !dbg !5052
  %ppq36 = getelementptr inbounds %struct.snd_seq_timer, ptr %24, i32 0, i32 2, !dbg !5053
  store i32 %23, ptr %ppq36, align 8, !dbg !5054
  %25 = load i32, ptr %changed, align 4, !dbg !5055
  %tobool37 = icmp ne i32 %25, 0, !dbg !5055
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !5057

if.then38:                                        ; preds = %lor.end
  %26 = load ptr, ptr %tmr.addr, align 8, !dbg !5058
  call void @snd_seq_timer_set_tick_resolution(ptr noundef %26) #18, !dbg !5059
  br label %if.end39, !dbg !5059

if.end39:                                         ; preds = %if.then38, %lor.end
  %27 = load ptr, ptr %tmr.addr, align 8, !dbg !5060
  %lock40 = getelementptr inbounds %struct.snd_seq_timer, ptr %27, i32 0, i32 14, !dbg !5061
  %28 = load i64, ptr %flags, align 8, !dbg !5062
  call void @spin_unlock_irqrestore(ptr noundef %lock40, i64 noundef %28) #18, !dbg !5063
  store i32 0, ptr %retval, align 4, !dbg !5064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5064

cleanup:                                          ; preds = %if.end39, %if.then25, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5065
  call void @llvm.lifetime.end.p0(i64 4, ptr %changed) #16, !dbg !5065
  %29 = load i32, ptr %retval, align 4, !dbg !5065
  ret i32 %29, !dbg !5065
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_timer_set_position_tick(ptr noundef %tmr, i32 noundef %position) #0 align 16 !dbg !5066 {
entry:
  %retval = alloca i32, align 4
  %tmr.addr = alloca ptr, align 8
  %position.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !5070, metadata !DIExpression()), !dbg !5081
  store i32 %position, ptr %position.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %position.addr, metadata !5071, metadata !DIExpression()), !dbg !5082
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5083
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5072, metadata !DIExpression()), !dbg !5084
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5085
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5073, metadata !DIExpression()), !dbg !5085
  %0 = load ptr, ptr %tmr.addr, align 8, !dbg !5085
  %tobool = icmp ne ptr %0, null, !dbg !5085
  %lnot = xor i1 %tobool, true, !dbg !5085
  %lnot1 = xor i1 %lnot, true, !dbg !5085
  %lnot2 = xor i1 %lnot1, true, !dbg !5085
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5085
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5085
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5085
  %tobool3 = icmp ne i32 %1, 0, !dbg !5085
  %lnot4 = xor i1 %tobool3, true, !dbg !5085
  %lnot6 = xor i1 %lnot4, true, !dbg !5085
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5085
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5085
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5085
  store i64 %expval, ptr %tmp, align 8, !dbg !5085
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5086
  %2 = load i64, ptr %tmp, align 8, !dbg !5085
  %tobool8 = icmp ne i64 %2, 0, !dbg !5086
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5087

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5088

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5089

do.body:                                          ; preds = %if.end
  br label %do.body9, !dbg !5090

do.body9:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5091
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5076, metadata !DIExpression()), !dbg !5091
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5091
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5080, metadata !DIExpression()), !dbg !5091
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5091
  %conv10 = zext i1 %cmp to i32, !dbg !5091
  store i32 1, ptr %tmp11, align 4, !dbg !5091
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5092
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5092
  %3 = load i32, ptr %tmp11, align 4, !dbg !5091
  %4 = load ptr, ptr %tmr.addr, align 8, !dbg !5092
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %4, i32 0, i32 14, !dbg !5092
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5092
  %call12 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !5092
  store i64 %call12, ptr %flags, align 8, !dbg !5092
  br label %do.cond, !dbg !5092

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5092

do.end:                                           ; preds = %do.cond
  br label %do.cond13, !dbg !5090

do.cond13:                                        ; preds = %do.end
  br label %do.end14, !dbg !5090

do.end14:                                         ; preds = %do.cond13
  %5 = load i32, ptr %position.addr, align 4, !dbg !5093
  %6 = load ptr, ptr %tmr.addr, align 8, !dbg !5094
  %tick = getelementptr inbounds %struct.snd_seq_timer, ptr %6, i32 0, i32 4, !dbg !5095
  %cur_tick = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %tick, i32 0, i32 0, !dbg !5096
  store i32 %5, ptr %cur_tick, align 8, !dbg !5097
  %7 = load ptr, ptr %tmr.addr, align 8, !dbg !5098
  %tick15 = getelementptr inbounds %struct.snd_seq_timer, ptr %7, i32 0, i32 4, !dbg !5099
  %fraction = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %tick15, i32 0, i32 2, !dbg !5100
  store i64 0, ptr %fraction, align 8, !dbg !5101
  %8 = load ptr, ptr %tmr.addr, align 8, !dbg !5102
  %lock16 = getelementptr inbounds %struct.snd_seq_timer, ptr %8, i32 0, i32 14, !dbg !5103
  %9 = load i64, ptr %flags, align 8, !dbg !5104
  call void @spin_unlock_irqrestore(ptr noundef %lock16, i64 noundef %9) #18, !dbg !5105
  store i32 0, ptr %retval, align 4, !dbg !5106
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5106

cleanup:                                          ; preds = %do.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5107
  %10 = load i32, ptr %retval, align 4, !dbg !5107
  ret i32 %10, !dbg !5107
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_timer_set_position_time(ptr noundef %tmr, i64 %position.coerce) #0 align 16 !dbg !5108 {
entry:
  %retval = alloca i32, align 4
  %position = alloca %struct.snd_seq_real_time, align 4
  %tmr.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store i64 %position.coerce, ptr %position, align 4
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !5112, metadata !DIExpression()), !dbg !5123
  call void @llvm.dbg.declare(metadata ptr %position, metadata !5113, metadata !DIExpression()), !dbg !5124
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5125
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5114, metadata !DIExpression()), !dbg !5126
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5127
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5115, metadata !DIExpression()), !dbg !5127
  %0 = load ptr, ptr %tmr.addr, align 8, !dbg !5127
  %tobool = icmp ne ptr %0, null, !dbg !5127
  %lnot = xor i1 %tobool, true, !dbg !5127
  %lnot1 = xor i1 %lnot, true, !dbg !5127
  %lnot2 = xor i1 %lnot1, true, !dbg !5127
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5127
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5127
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5127
  %tobool3 = icmp ne i32 %1, 0, !dbg !5127
  %lnot4 = xor i1 %tobool3, true, !dbg !5127
  %lnot6 = xor i1 %lnot4, true, !dbg !5127
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5127
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5127
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5127
  store i64 %expval, ptr %tmp, align 8, !dbg !5127
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5128
  %2 = load i64, ptr %tmp, align 8, !dbg !5127
  %tobool8 = icmp ne i64 %2, 0, !dbg !5128
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5129

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5130

if.end:                                           ; preds = %entry
  call void @snd_seq_sanity_real_time(ptr noundef %position) #18, !dbg !5131
  br label %do.body, !dbg !5132

do.body:                                          ; preds = %if.end
  br label %do.body9, !dbg !5133

do.body9:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5134
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5118, metadata !DIExpression()), !dbg !5134
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5134
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5122, metadata !DIExpression()), !dbg !5134
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5134
  %conv10 = zext i1 %cmp to i32, !dbg !5134
  store i32 1, ptr %tmp11, align 4, !dbg !5134
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5135
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5135
  %3 = load i32, ptr %tmp11, align 4, !dbg !5134
  %4 = load ptr, ptr %tmr.addr, align 8, !dbg !5135
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %4, i32 0, i32 14, !dbg !5135
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5135
  %call12 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !5135
  store i64 %call12, ptr %flags, align 8, !dbg !5135
  br label %do.cond, !dbg !5135

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5135

do.end:                                           ; preds = %do.cond
  br label %do.cond13, !dbg !5133

do.cond13:                                        ; preds = %do.end
  br label %do.end14, !dbg !5133

do.end14:                                         ; preds = %do.cond13
  %5 = load ptr, ptr %tmr.addr, align 8, !dbg !5136
  %cur_time = getelementptr inbounds %struct.snd_seq_timer, ptr %5, i32 0, i32 3, !dbg !5137
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %cur_time, ptr align 4 %position, i64 8, i1 false), !dbg !5138
  %6 = load ptr, ptr %tmr.addr, align 8, !dbg !5139
  %lock15 = getelementptr inbounds %struct.snd_seq_timer, ptr %6, i32 0, i32 14, !dbg !5140
  %7 = load i64, ptr %flags, align 8, !dbg !5141
  call void @spin_unlock_irqrestore(ptr noundef %lock15, i64 noundef %7) #18, !dbg !5142
  store i32 0, ptr %retval, align 4, !dbg !5143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5143

cleanup:                                          ; preds = %do.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5144
  %8 = load i32, ptr %retval, align 4, !dbg !5144
  ret i32 %8, !dbg !5144
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_seq_sanity_real_time(ptr noundef %tm) #8 align 16 !dbg !5145 {
entry:
  %tm.addr = alloca ptr, align 8
  store ptr %tm, ptr %tm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tm.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  br label %while.cond, !dbg !5152

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %tm.addr, align 8, !dbg !5153
  %tv_nsec = getelementptr inbounds %struct.snd_seq_real_time, ptr %0, i32 0, i32 1, !dbg !5154
  %1 = load i32, ptr %tv_nsec, align 4, !dbg !5154
  %cmp = icmp uge i32 %1, 1000000000, !dbg !5155
  br i1 %cmp, label %while.body, label %while.end, !dbg !5152

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %tm.addr, align 8, !dbg !5156
  %tv_nsec1 = getelementptr inbounds %struct.snd_seq_real_time, ptr %2, i32 0, i32 1, !dbg !5158
  %3 = load i32, ptr %tv_nsec1, align 4, !dbg !5159
  %sub = sub i32 %3, 1000000000, !dbg !5159
  store i32 %sub, ptr %tv_nsec1, align 4, !dbg !5159
  %4 = load ptr, ptr %tm.addr, align 8, !dbg !5160
  %tv_sec = getelementptr inbounds %struct.snd_seq_real_time, ptr %4, i32 0, i32 0, !dbg !5161
  %5 = load i32, ptr %tv_sec, align 4, !dbg !5162
  %inc = add i32 %5, 1, !dbg !5162
  store i32 %inc, ptr %tv_sec, align 4, !dbg !5162
  br label %while.cond, !dbg !5152, !llvm.loop !5163

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_timer_set_skew(ptr noundef %tmr, i32 noundef %skew, i32 noundef %base) #0 align 16 !dbg !5168 {
entry:
  %retval = alloca i32, align 4
  %tmr.addr = alloca ptr, align 8
  %skew.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp16 = alloca i32, align 4
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !5172, metadata !DIExpression()), !dbg !5184
  store i32 %skew, ptr %skew.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %skew.addr, metadata !5173, metadata !DIExpression()), !dbg !5185
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5174, metadata !DIExpression()), !dbg !5186
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5187
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5175, metadata !DIExpression()), !dbg !5188
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5189
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5176, metadata !DIExpression()), !dbg !5189
  %0 = load ptr, ptr %tmr.addr, align 8, !dbg !5189
  %tobool = icmp ne ptr %0, null, !dbg !5189
  %lnot = xor i1 %tobool, true, !dbg !5189
  %lnot1 = xor i1 %lnot, true, !dbg !5189
  %lnot2 = xor i1 %lnot1, true, !dbg !5189
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5189
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5189
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5189
  %tobool3 = icmp ne i32 %1, 0, !dbg !5189
  %lnot4 = xor i1 %tobool3, true, !dbg !5189
  %lnot6 = xor i1 %lnot4, true, !dbg !5189
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5189
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5189
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5189
  store i64 %expval, ptr %tmp, align 8, !dbg !5189
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5190
  %2 = load i64, ptr %tmp, align 8, !dbg !5189
  %tobool8 = icmp ne i64 %2, 0, !dbg !5190
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5191

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5192

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %base.addr, align 4, !dbg !5193
  %cmp = icmp ne i32 %3, 65536, !dbg !5195
  br i1 %cmp, label %if.then10, label %if.end12, !dbg !5196

if.then10:                                        ; preds = %if.end
  store i32 0, ptr %tmp11, align 4, !dbg !5197
  %4 = load i32, ptr %tmp11, align 4, !dbg !5201
  store i32 -22, ptr %retval, align 4, !dbg !5202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5202

if.end12:                                         ; preds = %if.end
  br label %do.body, !dbg !5203

do.body:                                          ; preds = %if.end12
  br label %do.body13, !dbg !5204

do.body13:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5205
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5179, metadata !DIExpression()), !dbg !5205
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5205
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5183, metadata !DIExpression()), !dbg !5205
  %cmp14 = icmp eq ptr %__dummy, %__dummy2, !dbg !5205
  %conv15 = zext i1 %cmp14 to i32, !dbg !5205
  store i32 1, ptr %tmp16, align 4, !dbg !5205
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5206
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5206
  %5 = load i32, ptr %tmp16, align 4, !dbg !5205
  %6 = load ptr, ptr %tmr.addr, align 8, !dbg !5206
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %6, i32 0, i32 14, !dbg !5206
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5206
  %call17 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !5206
  store i64 %call17, ptr %flags, align 8, !dbg !5206
  br label %do.cond, !dbg !5206

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !5206

do.end:                                           ; preds = %do.cond
  br label %do.cond18, !dbg !5204

do.cond18:                                        ; preds = %do.end
  br label %do.end19, !dbg !5204

do.end19:                                         ; preds = %do.cond18
  %7 = load i32, ptr %skew.addr, align 4, !dbg !5207
  %8 = load ptr, ptr %tmr.addr, align 8, !dbg !5208
  %skew20 = getelementptr inbounds %struct.snd_seq_timer, ptr %8, i32 0, i32 11, !dbg !5209
  store i32 %7, ptr %skew20, align 8, !dbg !5210
  %9 = load ptr, ptr %tmr.addr, align 8, !dbg !5211
  %lock21 = getelementptr inbounds %struct.snd_seq_timer, ptr %9, i32 0, i32 14, !dbg !5212
  %10 = load i64, ptr %flags, align 8, !dbg !5213
  call void @spin_unlock_irqrestore(ptr noundef %lock21, i64 noundef %10) #18, !dbg !5214
  store i32 0, ptr %retval, align 4, !dbg !5215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5215

cleanup:                                          ; preds = %do.end19, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5216
  %11 = load i32, ptr %retval, align 4, !dbg !5216
  ret i32 %11, !dbg !5216
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_timer_open(ptr noundef %q) #0 align 16 !dbg !5217 {
entry:
  %retval = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %tmr = alloca ptr, align 8
  %str = alloca [32 x i8], align 16
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tid = alloca %struct.snd_timer_id, align 4
  %tmp53 = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !5381, metadata !DIExpression()), !dbg !5394
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #16, !dbg !5395
  call void @llvm.dbg.declare(metadata ptr %t, metadata !5382, metadata !DIExpression()), !dbg !5396
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmr) #16, !dbg !5397
  call void @llvm.dbg.declare(metadata ptr %tmr, metadata !5383, metadata !DIExpression()), !dbg !5398
  call void @llvm.lifetime.start.p0(i64 32, ptr %str) #16, !dbg !5399
  call void @llvm.dbg.declare(metadata ptr %str, metadata !5384, metadata !DIExpression()), !dbg !5400
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5385, metadata !DIExpression()), !dbg !5402
  %0 = load ptr, ptr %q.addr, align 8, !dbg !5403
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %0, i32 0, i32 4, !dbg !5404
  %1 = load ptr, ptr %timer, align 8, !dbg !5404
  store ptr %1, ptr %tmr, align 8, !dbg !5405
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5406
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5386, metadata !DIExpression()), !dbg !5406
  %2 = load ptr, ptr %tmr, align 8, !dbg !5406
  %tobool = icmp ne ptr %2, null, !dbg !5406
  %lnot = xor i1 %tobool, true, !dbg !5406
  %lnot1 = xor i1 %lnot, true, !dbg !5406
  %lnot2 = xor i1 %lnot1, true, !dbg !5406
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5406
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5406
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5406
  %tobool3 = icmp ne i32 %3, 0, !dbg !5406
  %lnot4 = xor i1 %tobool3, true, !dbg !5406
  %lnot6 = xor i1 %lnot4, true, !dbg !5406
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5406
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5406
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5406
  store i64 %expval, ptr %tmp, align 8, !dbg !5406
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5407
  %4 = load i64, ptr %tmp, align 8, !dbg !5406
  %tobool8 = icmp ne i64 %4, 0, !dbg !5407
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5408

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5409

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tmr, align 8, !dbg !5410
  %timeri = getelementptr inbounds %struct.snd_seq_timer, ptr %5, i32 0, i32 8, !dbg !5412
  %6 = load ptr, ptr %timeri, align 8, !dbg !5412
  %tobool9 = icmp ne ptr %6, null, !dbg !5410
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5413

if.then10:                                        ; preds = %if.end
  store i32 -16, ptr %retval, align 4, !dbg !5414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5414

if.end11:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [32 x i8], ptr %str, i64 0, i64 0, !dbg !5415
  %7 = load ptr, ptr %q.addr, align 8, !dbg !5416
  %queue = getelementptr inbounds %struct.snd_seq_queue, ptr %7, i32 0, i32 0, !dbg !5417
  %8 = load i32, ptr %queue, align 8, !dbg !5417
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str, i32 noundef %8) #18, !dbg !5418
  %9 = load ptr, ptr %tmr, align 8, !dbg !5419
  %type = getelementptr inbounds %struct.snd_seq_timer, ptr %9, i32 0, i32 6, !dbg !5421
  %10 = load i32, ptr %type, align 4, !dbg !5421
  %cmp = icmp ne i32 %10, 0, !dbg !5422
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !5423

if.then13:                                        ; preds = %if.end11
  store i32 -22, ptr %retval, align 4, !dbg !5424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5424

if.end14:                                         ; preds = %if.end11
  %11 = load ptr, ptr %tmr, align 8, !dbg !5425
  %alsa_id = getelementptr inbounds %struct.snd_seq_timer, ptr %11, i32 0, i32 7, !dbg !5427
  %dev_class = getelementptr inbounds %struct.snd_timer_id, ptr %alsa_id, i32 0, i32 0, !dbg !5428
  %12 = load i32, ptr %dev_class, align 8, !dbg !5428
  %cmp15 = icmp ne i32 %12, 0, !dbg !5429
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !5430

if.then17:                                        ; preds = %if.end14
  %13 = load ptr, ptr %tmr, align 8, !dbg !5431
  %alsa_id18 = getelementptr inbounds %struct.snd_seq_timer, ptr %13, i32 0, i32 7, !dbg !5432
  %dev_sclass = getelementptr inbounds %struct.snd_timer_id, ptr %alsa_id18, i32 0, i32 1, !dbg !5433
  store i32 2, ptr %dev_sclass, align 4, !dbg !5434
  br label %if.end19, !dbg !5431

if.end19:                                         ; preds = %if.then17, %if.end14
  %arraydecay20 = getelementptr inbounds [32 x i8], ptr %str, i64 0, i64 0, !dbg !5435
  %call21 = call ptr @snd_timer_instance_new(ptr noundef %arraydecay20) #18, !dbg !5436
  store ptr %call21, ptr %t, align 8, !dbg !5437
  %14 = load ptr, ptr %t, align 8, !dbg !5438
  %tobool22 = icmp ne ptr %14, null, !dbg !5438
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !5440

if.then23:                                        ; preds = %if.end19
  store i32 -12, ptr %retval, align 4, !dbg !5441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5441

if.end24:                                         ; preds = %if.end19
  %15 = load ptr, ptr %t, align 8, !dbg !5442
  %callback = getelementptr inbounds %struct.snd_timer_instance, ptr %15, i32 0, i32 5, !dbg !5443
  store ptr @snd_seq_timer_interrupt, ptr %callback, align 8, !dbg !5444
  %16 = load ptr, ptr %q.addr, align 8, !dbg !5445
  %17 = load ptr, ptr %t, align 8, !dbg !5446
  %callback_data = getelementptr inbounds %struct.snd_timer_instance, ptr %17, i32 0, i32 8, !dbg !5447
  store ptr %16, ptr %callback_data, align 8, !dbg !5448
  %18 = load ptr, ptr %t, align 8, !dbg !5449
  %flags = getelementptr inbounds %struct.snd_timer_instance, ptr %18, i32 0, i32 2, !dbg !5450
  %19 = load i32, ptr %flags, align 8, !dbg !5451
  %or = or i32 %19, 8, !dbg !5451
  store i32 %or, ptr %flags, align 8, !dbg !5451
  %20 = load ptr, ptr %t, align 8, !dbg !5452
  %21 = load ptr, ptr %tmr, align 8, !dbg !5453
  %alsa_id25 = getelementptr inbounds %struct.snd_seq_timer, ptr %21, i32 0, i32 7, !dbg !5454
  %22 = load ptr, ptr %q.addr, align 8, !dbg !5455
  %queue26 = getelementptr inbounds %struct.snd_seq_queue, ptr %22, i32 0, i32 0, !dbg !5456
  %23 = load i32, ptr %queue26, align 8, !dbg !5456
  %call27 = call i32 @snd_timer_open(ptr noundef %20, ptr noundef %alsa_id25, i32 noundef %23) #18, !dbg !5457
  store i32 %call27, ptr %err, align 4, !dbg !5458
  %24 = load i32, ptr %err, align 4, !dbg !5459
  %cmp28 = icmp slt i32 %24, 0, !dbg !5460
  br i1 %cmp28, label %land.lhs.true, label %if.end49, !dbg !5461

land.lhs.true:                                    ; preds = %if.end24
  %25 = load ptr, ptr %tmr, align 8, !dbg !5462
  %alsa_id30 = getelementptr inbounds %struct.snd_seq_timer, ptr %25, i32 0, i32 7, !dbg !5463
  %dev_class31 = getelementptr inbounds %struct.snd_timer_id, ptr %alsa_id30, i32 0, i32 0, !dbg !5464
  %26 = load i32, ptr %dev_class31, align 8, !dbg !5464
  %cmp32 = icmp ne i32 %26, 0, !dbg !5465
  br i1 %cmp32, label %if.then34, label %if.end49, !dbg !5466

if.then34:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %tmr, align 8, !dbg !5467
  %alsa_id35 = getelementptr inbounds %struct.snd_seq_timer, ptr %27, i32 0, i32 7, !dbg !5468
  %dev_class36 = getelementptr inbounds %struct.snd_timer_id, ptr %alsa_id35, i32 0, i32 0, !dbg !5469
  %28 = load i32, ptr %dev_class36, align 8, !dbg !5469
  %cmp37 = icmp ne i32 %28, 1, !dbg !5470
  br i1 %cmp37, label %if.then42, label %lor.lhs.false, !dbg !5471

lor.lhs.false:                                    ; preds = %if.then34
  %29 = load ptr, ptr %tmr, align 8, !dbg !5472
  %alsa_id39 = getelementptr inbounds %struct.snd_seq_timer, ptr %29, i32 0, i32 7, !dbg !5473
  %device = getelementptr inbounds %struct.snd_timer_id, ptr %alsa_id39, i32 0, i32 3, !dbg !5474
  %30 = load i32, ptr %device, align 4, !dbg !5474
  %cmp40 = icmp ne i32 %30, 0, !dbg !5475
  br i1 %cmp40, label %if.then42, label %if.end48, !dbg !5476

if.then42:                                        ; preds = %lor.lhs.false, %if.then34
  call void @llvm.lifetime.start.p0(i64 20, ptr %tid) #16, !dbg !5477
  call void @llvm.dbg.declare(metadata ptr %tid, metadata !5389, metadata !DIExpression()), !dbg !5478
  call void @llvm.memset.p0.i64(ptr align 4 %tid, i8 0, i64 20, i1 false), !dbg !5479
  %dev_class43 = getelementptr inbounds %struct.snd_timer_id, ptr %tid, i32 0, i32 0, !dbg !5480
  store i32 1, ptr %dev_class43, align 4, !dbg !5481
  %dev_sclass44 = getelementptr inbounds %struct.snd_timer_id, ptr %tid, i32 0, i32 1, !dbg !5482
  store i32 2, ptr %dev_sclass44, align 4, !dbg !5483
  %card = getelementptr inbounds %struct.snd_timer_id, ptr %tid, i32 0, i32 2, !dbg !5484
  store i32 -1, ptr %card, align 4, !dbg !5485
  %device45 = getelementptr inbounds %struct.snd_timer_id, ptr %tid, i32 0, i32 3, !dbg !5486
  store i32 0, ptr %device45, align 4, !dbg !5487
  %31 = load ptr, ptr %t, align 8, !dbg !5488
  %32 = load ptr, ptr %q.addr, align 8, !dbg !5489
  %queue46 = getelementptr inbounds %struct.snd_seq_queue, ptr %32, i32 0, i32 0, !dbg !5490
  %33 = load i32, ptr %queue46, align 8, !dbg !5490
  %call47 = call i32 @snd_timer_open(ptr noundef %31, ptr noundef %tid, i32 noundef %33) #18, !dbg !5491
  store i32 %call47, ptr %err, align 4, !dbg !5492
  call void @llvm.lifetime.end.p0(i64 20, ptr %tid) #16, !dbg !5493
  br label %if.end48, !dbg !5494

if.end48:                                         ; preds = %if.then42, %lor.lhs.false
  br label %if.end49, !dbg !5495

if.end49:                                         ; preds = %if.end48, %land.lhs.true, %if.end24
  %34 = load i32, ptr %err, align 4, !dbg !5496
  %cmp50 = icmp slt i32 %34, 0, !dbg !5498
  br i1 %cmp50, label %if.then52, label %if.end55, !dbg !5499

if.then52:                                        ; preds = %if.end49
  br label %do.body, !dbg !5500

do.body:                                          ; preds = %if.then52
  br label %do.cond, !dbg !5503

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5503

do.end:                                           ; preds = %do.cond
  %35 = load i32, ptr %err, align 4, !dbg !5500
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %35) #19, !dbg !5500
  store i32 %call54, ptr %tmp53, align 4, !dbg !5503
  %36 = load i32, ptr %tmp53, align 4, !dbg !5500
  %37 = load ptr, ptr %t, align 8, !dbg !5505
  call void @snd_timer_instance_free(ptr noundef %37) #18, !dbg !5506
  %38 = load i32, ptr %err, align 4, !dbg !5507
  store i32 %38, ptr %retval, align 4, !dbg !5508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5508

if.end55:                                         ; preds = %if.end49
  %39 = load ptr, ptr %tmr, align 8, !dbg !5509
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %39, i32 0, i32 14, !dbg !5510
  call void @spin_lock_irq(ptr noundef %lock) #18, !dbg !5511
  %40 = load ptr, ptr %tmr, align 8, !dbg !5512
  %timeri56 = getelementptr inbounds %struct.snd_seq_timer, ptr %40, i32 0, i32 8, !dbg !5514
  %41 = load ptr, ptr %timeri56, align 8, !dbg !5514
  %tobool57 = icmp ne ptr %41, null, !dbg !5512
  br i1 %tobool57, label %if.then58, label %if.else, !dbg !5515

if.then58:                                        ; preds = %if.end55
  store i32 -16, ptr %err, align 4, !dbg !5516
  br label %if.end60, !dbg !5517

if.else:                                          ; preds = %if.end55
  %42 = load ptr, ptr %t, align 8, !dbg !5518
  %43 = load ptr, ptr %tmr, align 8, !dbg !5519
  %timeri59 = getelementptr inbounds %struct.snd_seq_timer, ptr %43, i32 0, i32 8, !dbg !5520
  store ptr %42, ptr %timeri59, align 8, !dbg !5521
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then58
  %44 = load ptr, ptr %tmr, align 8, !dbg !5522
  %lock61 = getelementptr inbounds %struct.snd_seq_timer, ptr %44, i32 0, i32 14, !dbg !5523
  call void @spin_unlock_irq(ptr noundef %lock61) #18, !dbg !5524
  %45 = load i32, ptr %err, align 4, !dbg !5525
  %cmp62 = icmp slt i32 %45, 0, !dbg !5527
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !5528

if.then64:                                        ; preds = %if.end60
  %46 = load ptr, ptr %t, align 8, !dbg !5529
  call void @snd_timer_close(ptr noundef %46) #18, !dbg !5531
  %47 = load ptr, ptr %t, align 8, !dbg !5532
  call void @snd_timer_instance_free(ptr noundef %47) #18, !dbg !5533
  %48 = load i32, ptr %err, align 4, !dbg !5534
  store i32 %48, ptr %retval, align 4, !dbg !5535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5535

if.end65:                                         ; preds = %if.end60
  store i32 0, ptr %retval, align 4, !dbg !5536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5536

cleanup:                                          ; preds = %if.end65, %if.then64, %do.end, %if.then23, %if.then13, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5537
  call void @llvm.lifetime.end.p0(i64 32, ptr %str) #16, !dbg !5537
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmr) #16, !dbg !5537
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #16, !dbg !5537
  %49 = load i32, ptr %retval, align 4, !dbg !5537
  ret i32 %49, !dbg !5537
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5538 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5542 dso_local ptr @snd_timer_instance_new(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_seq_timer_interrupt(ptr noundef %timeri, i64 noundef %resolution, i64 noundef %ticks) #0 align 16 !dbg !5545 {
entry:
  %timeri.addr = alloca ptr, align 8
  %resolution.addr = alloca i64, align 8
  %ticks.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  %q = alloca ptr, align 8
  %tmr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %timeri, ptr %timeri.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeri.addr, metadata !5547, metadata !DIExpression()), !dbg !5558
  store i64 %resolution, ptr %resolution.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resolution.addr, metadata !5548, metadata !DIExpression()), !dbg !5559
  store i64 %ticks, ptr %ticks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ticks.addr, metadata !5549, metadata !DIExpression()), !dbg !5560
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5561
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5550, metadata !DIExpression()), !dbg !5562
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #16, !dbg !5563
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5551, metadata !DIExpression()), !dbg !5564
  %0 = load ptr, ptr %timeri.addr, align 8, !dbg !5565
  %callback_data = getelementptr inbounds %struct.snd_timer_instance, ptr %0, i32 0, i32 8, !dbg !5566
  %1 = load ptr, ptr %callback_data, align 8, !dbg !5566
  store ptr %1, ptr %q, align 8, !dbg !5564
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmr) #16, !dbg !5567
  call void @llvm.dbg.declare(metadata ptr %tmr, metadata !5552, metadata !DIExpression()), !dbg !5568
  %2 = load ptr, ptr %q, align 8, !dbg !5569
  %cmp = icmp eq ptr %2, null, !dbg !5571
  br i1 %cmp, label %if.then, label %if.end, !dbg !5572

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5573

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %q, align 8, !dbg !5574
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %3, i32 0, i32 4, !dbg !5575
  %4 = load ptr, ptr %timer, align 8, !dbg !5575
  store ptr %4, ptr %tmr, align 8, !dbg !5576
  %5 = load ptr, ptr %tmr, align 8, !dbg !5577
  %cmp1 = icmp eq ptr %5, null, !dbg !5579
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5580

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5581

if.end3:                                          ; preds = %if.end
  br label %do.body, !dbg !5582

do.body:                                          ; preds = %if.end3
  br label %do.body4, !dbg !5583

do.body4:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5584
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5553, metadata !DIExpression()), !dbg !5584
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5584
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5557, metadata !DIExpression()), !dbg !5584
  %cmp5 = icmp eq ptr %__dummy, %__dummy2, !dbg !5584
  %conv = zext i1 %cmp5 to i32, !dbg !5584
  store i32 1, ptr %tmp, align 4, !dbg !5584
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5585
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5585
  %6 = load i32, ptr %tmp, align 4, !dbg !5584
  %7 = load ptr, ptr %tmr, align 8, !dbg !5585
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %7, i32 0, i32 14, !dbg !5585
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5585
  %call6 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !5585
  store i64 %call6, ptr %flags, align 8, !dbg !5585
  br label %do.cond, !dbg !5585

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !5585

do.end:                                           ; preds = %do.cond
  br label %do.cond7, !dbg !5583

do.cond7:                                         ; preds = %do.end
  br label %do.end8, !dbg !5583

do.end8:                                          ; preds = %do.cond7
  %8 = load ptr, ptr %tmr, align 8, !dbg !5586
  %bf.load = load i8, ptr %8, align 8, !dbg !5588
  %bf.clear = and i8 %bf.load, 1, !dbg !5588
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5588
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5586
  br i1 %tobool, label %if.end11, label %if.then9, !dbg !5589

if.then9:                                         ; preds = %do.end8
  %9 = load ptr, ptr %tmr, align 8, !dbg !5590
  %lock10 = getelementptr inbounds %struct.snd_seq_timer, ptr %9, i32 0, i32 14, !dbg !5592
  %10 = load i64, ptr %flags, align 8, !dbg !5593
  call void @spin_unlock_irqrestore(ptr noundef %lock10, i64 noundef %10) #18, !dbg !5594
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5595

if.end11:                                         ; preds = %do.end8
  %11 = load i64, ptr %ticks.addr, align 8, !dbg !5596
  %12 = load i64, ptr %resolution.addr, align 8, !dbg !5597
  %mul = mul i64 %12, %11, !dbg !5597
  store i64 %mul, ptr %resolution.addr, align 8, !dbg !5597
  %13 = load ptr, ptr %tmr, align 8, !dbg !5598
  %skew = getelementptr inbounds %struct.snd_seq_timer, ptr %13, i32 0, i32 11, !dbg !5600
  %14 = load i32, ptr %skew, align 8, !dbg !5600
  %15 = load ptr, ptr %tmr, align 8, !dbg !5601
  %skew_base = getelementptr inbounds %struct.snd_seq_timer, ptr %15, i32 0, i32 12, !dbg !5602
  %16 = load i32, ptr %skew_base, align 4, !dbg !5602
  %cmp12 = icmp ne i32 %14, %16, !dbg !5603
  br i1 %cmp12, label %if.then14, label %if.end22, !dbg !5604

if.then14:                                        ; preds = %if.end11
  %17 = load i64, ptr %resolution.addr, align 8, !dbg !5605
  %shr = lshr i64 %17, 16, !dbg !5607
  %18 = load ptr, ptr %tmr, align 8, !dbg !5608
  %skew15 = getelementptr inbounds %struct.snd_seq_timer, ptr %18, i32 0, i32 11, !dbg !5609
  %19 = load i32, ptr %skew15, align 8, !dbg !5609
  %conv16 = zext i32 %19 to i64, !dbg !5608
  %mul17 = mul i64 %shr, %conv16, !dbg !5610
  %20 = load i64, ptr %resolution.addr, align 8, !dbg !5611
  %and = and i64 %20, 65535, !dbg !5612
  %21 = load ptr, ptr %tmr, align 8, !dbg !5613
  %skew18 = getelementptr inbounds %struct.snd_seq_timer, ptr %21, i32 0, i32 11, !dbg !5614
  %22 = load i32, ptr %skew18, align 8, !dbg !5614
  %conv19 = zext i32 %22 to i64, !dbg !5613
  %mul20 = mul i64 %and, %conv19, !dbg !5615
  %shr21 = lshr i64 %mul20, 16, !dbg !5616
  %add = add i64 %mul17, %shr21, !dbg !5617
  store i64 %add, ptr %resolution.addr, align 8, !dbg !5618
  br label %if.end22, !dbg !5619

if.end22:                                         ; preds = %if.then14, %if.end11
  %23 = load ptr, ptr %tmr, align 8, !dbg !5620
  %cur_time = getelementptr inbounds %struct.snd_seq_timer, ptr %23, i32 0, i32 3, !dbg !5621
  %24 = load i64, ptr %resolution.addr, align 8, !dbg !5622
  call void @snd_seq_inc_time_nsec(ptr noundef %cur_time, i64 noundef %24) #18, !dbg !5623
  %25 = load ptr, ptr %tmr, align 8, !dbg !5624
  %tick = getelementptr inbounds %struct.snd_seq_timer, ptr %25, i32 0, i32 4, !dbg !5625
  %26 = load i64, ptr %resolution.addr, align 8, !dbg !5626
  call void @snd_seq_timer_update_tick(ptr noundef %tick, i64 noundef %26) #18, !dbg !5627
  %27 = load ptr, ptr %tmr, align 8, !dbg !5628
  %last_update = getelementptr inbounds %struct.snd_seq_timer, ptr %27, i32 0, i32 13, !dbg !5629
  call void @ktime_get_ts64(ptr noundef %last_update) #18, !dbg !5630
  %28 = load ptr, ptr %tmr, align 8, !dbg !5631
  %lock23 = getelementptr inbounds %struct.snd_seq_timer, ptr %28, i32 0, i32 14, !dbg !5632
  %29 = load i64, ptr %flags, align 8, !dbg !5633
  call void @spin_unlock_irqrestore(ptr noundef %lock23, i64 noundef %29) #18, !dbg !5634
  %30 = load ptr, ptr %q, align 8, !dbg !5635
  call void @snd_seq_check_queue(ptr noundef %30, i32 noundef 1, i32 noundef 0) #18, !dbg !5636
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5637
  br label %cleanup, !dbg !5637

cleanup:                                          ; preds = %if.end22, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmr) #16, !dbg !5637
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #16, !dbg !5637
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5637
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5637

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5638 dso_local i32 @snd_timer_open(ptr noundef, ptr noundef, i32 noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5642 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5646 dso_local void @snd_timer_instance_free(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #4 align 16 !dbg !5647 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5651, metadata !DIExpression()), !dbg !5652
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5653
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5653
  call void @_raw_spin_lock_irq(ptr noundef %1) #18, !dbg !5653
  ret void, !dbg !5654
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #4 align 16 !dbg !5655 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5657, metadata !DIExpression()), !dbg !5658
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5659
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5659
  call void @_raw_spin_unlock_irq(ptr noundef %1) #18, !dbg !5659
  ret void, !dbg !5660
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5661 dso_local void @snd_timer_close(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_timer_close(ptr noundef %q) #0 align 16 !dbg !5662 {
entry:
  %retval = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  %tmr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !5664, metadata !DIExpression()), !dbg !5670
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmr) #16, !dbg !5671
  call void @llvm.dbg.declare(metadata ptr %tmr, metadata !5665, metadata !DIExpression()), !dbg !5672
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #16, !dbg !5673
  call void @llvm.dbg.declare(metadata ptr %t, metadata !5666, metadata !DIExpression()), !dbg !5674
  %0 = load ptr, ptr %q.addr, align 8, !dbg !5675
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %0, i32 0, i32 4, !dbg !5676
  %1 = load ptr, ptr %timer, align 8, !dbg !5676
  store ptr %1, ptr %tmr, align 8, !dbg !5677
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5678
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5667, metadata !DIExpression()), !dbg !5678
  %2 = load ptr, ptr %tmr, align 8, !dbg !5678
  %tobool = icmp ne ptr %2, null, !dbg !5678
  %lnot = xor i1 %tobool, true, !dbg !5678
  %lnot1 = xor i1 %lnot, true, !dbg !5678
  %lnot2 = xor i1 %lnot1, true, !dbg !5678
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5678
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5678
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5678
  %tobool3 = icmp ne i32 %3, 0, !dbg !5678
  %lnot4 = xor i1 %tobool3, true, !dbg !5678
  %lnot6 = xor i1 %lnot4, true, !dbg !5678
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5678
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5678
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5678
  store i64 %expval, ptr %tmp, align 8, !dbg !5678
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5679
  %4 = load i64, ptr %tmp, align 8, !dbg !5678
  %tobool8 = icmp ne i64 %4, 0, !dbg !5679
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5680

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5681
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5681

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tmr, align 8, !dbg !5682
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %5, i32 0, i32 14, !dbg !5683
  call void @spin_lock_irq(ptr noundef %lock) #18, !dbg !5684
  %6 = load ptr, ptr %tmr, align 8, !dbg !5685
  %timeri = getelementptr inbounds %struct.snd_seq_timer, ptr %6, i32 0, i32 8, !dbg !5686
  %7 = load ptr, ptr %timeri, align 8, !dbg !5686
  store ptr %7, ptr %t, align 8, !dbg !5687
  %8 = load ptr, ptr %tmr, align 8, !dbg !5688
  %timeri9 = getelementptr inbounds %struct.snd_seq_timer, ptr %8, i32 0, i32 8, !dbg !5689
  store ptr null, ptr %timeri9, align 8, !dbg !5690
  %9 = load ptr, ptr %tmr, align 8, !dbg !5691
  %lock10 = getelementptr inbounds %struct.snd_seq_timer, ptr %9, i32 0, i32 14, !dbg !5692
  call void @spin_unlock_irq(ptr noundef %lock10) #18, !dbg !5693
  %10 = load ptr, ptr %t, align 8, !dbg !5694
  %tobool11 = icmp ne ptr %10, null, !dbg !5694
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5696

if.then12:                                        ; preds = %if.end
  %11 = load ptr, ptr %t, align 8, !dbg !5697
  call void @snd_timer_close(ptr noundef %11) #18, !dbg !5699
  %12 = load ptr, ptr %t, align 8, !dbg !5700
  call void @snd_timer_instance_free(ptr noundef %12) #18, !dbg !5701
  br label %if.end13, !dbg !5702

if.end13:                                         ; preds = %if.then12, %if.end
  store i32 0, ptr %retval, align 4, !dbg !5703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5703

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #16, !dbg !5704
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmr) #16, !dbg !5704
  %13 = load i32, ptr %retval, align 4, !dbg !5704
  ret i32 %13, !dbg !5704
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_timer_stop(ptr noundef %tmr) #0 align 16 !dbg !5705 {
entry:
  %retval = alloca i32, align 4
  %tmr.addr = alloca ptr, align 8
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !5707, metadata !DIExpression()), !dbg !5708
  %0 = load ptr, ptr %tmr.addr, align 8, !dbg !5709
  %timeri = getelementptr inbounds %struct.snd_seq_timer, ptr %0, i32 0, i32 8, !dbg !5711
  %1 = load ptr, ptr %timeri, align 8, !dbg !5711
  %tobool = icmp ne ptr %1, null, !dbg !5709
  br i1 %tobool, label %if.end, label %if.then, !dbg !5712

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5713
  br label %return, !dbg !5713

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tmr.addr, align 8, !dbg !5714
  %bf.load = load i8, ptr %2, align 8, !dbg !5716
  %bf.clear = and i8 %bf.load, 1, !dbg !5716
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5716
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !5714
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5717

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5718
  br label %return, !dbg !5718

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %tmr.addr, align 8, !dbg !5719
  %bf.load4 = load i8, ptr %3, align 8, !dbg !5720
  %bf.clear5 = and i8 %bf.load4, -2, !dbg !5720
  %bf.set = or i8 %bf.clear5, 0, !dbg !5720
  store i8 %bf.set, ptr %3, align 8, !dbg !5720
  %4 = load ptr, ptr %tmr.addr, align 8, !dbg !5721
  %timeri6 = getelementptr inbounds %struct.snd_seq_timer, ptr %4, i32 0, i32 8, !dbg !5722
  %5 = load ptr, ptr %timeri6, align 8, !dbg !5722
  %call = call i32 @snd_timer_pause(ptr noundef %5) #18, !dbg !5723
  store i32 0, ptr %retval, align 4, !dbg !5724
  br label %return, !dbg !5724

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !5725
  ret i32 %6, !dbg !5725
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_timer_start(ptr noundef %tmr) #0 align 16 !dbg !5726 {
entry:
  %tmr.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %err = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !5728, metadata !DIExpression()), !dbg !5736
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5737
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5729, metadata !DIExpression()), !dbg !5738
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5739
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5730, metadata !DIExpression()), !dbg !5740
  br label %do.body, !dbg !5741

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5742

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5743
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5731, metadata !DIExpression()), !dbg !5743
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5743
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5735, metadata !DIExpression()), !dbg !5743
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5743
  %conv = zext i1 %cmp to i32, !dbg !5743
  store i32 1, ptr %tmp, align 4, !dbg !5743
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5744
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5744
  %0 = load i32, ptr %tmp, align 4, !dbg !5743
  %1 = load ptr, ptr %tmr.addr, align 8, !dbg !5744
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 14, !dbg !5744
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5744
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !5744
  store i64 %call2, ptr %flags, align 8, !dbg !5744
  br label %do.cond, !dbg !5744

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5744

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5742

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5742

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %tmr.addr, align 8, !dbg !5745
  %call5 = call i32 @seq_timer_start(ptr noundef %2) #18, !dbg !5746
  store i32 %call5, ptr %err, align 4, !dbg !5747
  %3 = load ptr, ptr %tmr.addr, align 8, !dbg !5748
  %lock6 = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 14, !dbg !5749
  %4 = load i64, ptr %flags, align 8, !dbg !5750
  call void @spin_unlock_irqrestore(ptr noundef %lock6, i64 noundef %4) #18, !dbg !5751
  %5 = load i32, ptr %err, align 4, !dbg !5752
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5753
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5753
  ret i32 %5, !dbg !5754
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_timer_start(ptr noundef %tmr) #0 align 16 !dbg !5755 {
entry:
  %retval = alloca i32, align 4
  %tmr.addr = alloca ptr, align 8
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !5757, metadata !DIExpression()), !dbg !5758
  %0 = load ptr, ptr %tmr.addr, align 8, !dbg !5759
  %timeri = getelementptr inbounds %struct.snd_seq_timer, ptr %0, i32 0, i32 8, !dbg !5761
  %1 = load ptr, ptr %timeri, align 8, !dbg !5761
  %tobool = icmp ne ptr %1, null, !dbg !5759
  br i1 %tobool, label %if.end, label %if.then, !dbg !5762

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5763
  br label %return, !dbg !5763

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tmr.addr, align 8, !dbg !5764
  %bf.load = load i8, ptr %2, align 8, !dbg !5766
  %bf.clear = and i8 %bf.load, 1, !dbg !5766
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5766
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !5764
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5767

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %tmr.addr, align 8, !dbg !5768
  %call = call i32 @seq_timer_stop(ptr noundef %3) #18, !dbg !5769
  br label %if.end3, !dbg !5769

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %tmr.addr, align 8, !dbg !5770
  call void @seq_timer_reset(ptr noundef %4) #18, !dbg !5771
  %5 = load ptr, ptr %tmr.addr, align 8, !dbg !5772
  %call4 = call i32 @initialize_timer(ptr noundef %5) #18, !dbg !5774
  %cmp = icmp slt i32 %call4, 0, !dbg !5775
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5776

if.then5:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !5777
  br label %return, !dbg !5777

if.end6:                                          ; preds = %if.end3
  %6 = load ptr, ptr %tmr.addr, align 8, !dbg !5778
  %timeri7 = getelementptr inbounds %struct.snd_seq_timer, ptr %6, i32 0, i32 8, !dbg !5779
  %7 = load ptr, ptr %timeri7, align 8, !dbg !5779
  %8 = load ptr, ptr %tmr.addr, align 8, !dbg !5780
  %ticks = getelementptr inbounds %struct.snd_seq_timer, ptr %8, i32 0, i32 9, !dbg !5781
  %9 = load i32, ptr %ticks, align 8, !dbg !5781
  %call8 = call i32 @snd_timer_start(ptr noundef %7, i32 noundef %9) #18, !dbg !5782
  %10 = load ptr, ptr %tmr.addr, align 8, !dbg !5783
  %bf.load9 = load i8, ptr %10, align 8, !dbg !5784
  %bf.clear10 = and i8 %bf.load9, -2, !dbg !5784
  %bf.set = or i8 %bf.clear10, 1, !dbg !5784
  store i8 %bf.set, ptr %10, align 8, !dbg !5784
  %11 = load ptr, ptr %tmr.addr, align 8, !dbg !5785
  %last_update = getelementptr inbounds %struct.snd_seq_timer, ptr %11, i32 0, i32 13, !dbg !5786
  call void @ktime_get_ts64(ptr noundef %last_update) #18, !dbg !5787
  store i32 0, ptr %retval, align 4, !dbg !5788
  br label %return, !dbg !5788

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !5789
  ret i32 %12, !dbg !5789
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_timer_continue(ptr noundef %tmr) #0 align 16 !dbg !5790 {
entry:
  %tmr.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %err = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !5792, metadata !DIExpression()), !dbg !5800
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5801
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5793, metadata !DIExpression()), !dbg !5802
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5803
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5794, metadata !DIExpression()), !dbg !5804
  br label %do.body, !dbg !5805

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5806

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5807
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5795, metadata !DIExpression()), !dbg !5807
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5807
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5799, metadata !DIExpression()), !dbg !5807
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5807
  %conv = zext i1 %cmp to i32, !dbg !5807
  store i32 1, ptr %tmp, align 4, !dbg !5807
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5808
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5808
  %0 = load i32, ptr %tmp, align 4, !dbg !5807
  %1 = load ptr, ptr %tmr.addr, align 8, !dbg !5808
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 14, !dbg !5808
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5808
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !5808
  store i64 %call2, ptr %flags, align 8, !dbg !5808
  br label %do.cond, !dbg !5808

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5808

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5806

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5806

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %tmr.addr, align 8, !dbg !5809
  %call5 = call i32 @seq_timer_continue(ptr noundef %2) #18, !dbg !5810
  store i32 %call5, ptr %err, align 4, !dbg !5811
  %3 = load ptr, ptr %tmr.addr, align 8, !dbg !5812
  %lock6 = getelementptr inbounds %struct.snd_seq_timer, ptr %3, i32 0, i32 14, !dbg !5813
  %4 = load i64, ptr %flags, align 8, !dbg !5814
  call void @spin_unlock_irqrestore(ptr noundef %lock6, i64 noundef %4) #18, !dbg !5815
  %5 = load i32, ptr %err, align 4, !dbg !5816
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5817
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5817
  ret i32 %5, !dbg !5818
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_timer_continue(ptr noundef %tmr) #0 align 16 !dbg !5819 {
entry:
  %retval = alloca i32, align 4
  %tmr.addr = alloca ptr, align 8
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !5821, metadata !DIExpression()), !dbg !5822
  %0 = load ptr, ptr %tmr.addr, align 8, !dbg !5823
  %timeri = getelementptr inbounds %struct.snd_seq_timer, ptr %0, i32 0, i32 8, !dbg !5825
  %1 = load ptr, ptr %timeri, align 8, !dbg !5825
  %tobool = icmp ne ptr %1, null, !dbg !5823
  br i1 %tobool, label %if.end, label %if.then, !dbg !5826

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5827
  br label %return, !dbg !5827

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tmr.addr, align 8, !dbg !5828
  %bf.load = load i8, ptr %2, align 8, !dbg !5830
  %bf.clear = and i8 %bf.load, 1, !dbg !5830
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5830
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !5828
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5831

if.then2:                                         ; preds = %if.end
  store i32 -16, ptr %retval, align 4, !dbg !5832
  br label %return, !dbg !5832

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %tmr.addr, align 8, !dbg !5833
  %bf.load4 = load i8, ptr %3, align 8, !dbg !5835
  %bf.lshr = lshr i8 %bf.load4, 1, !dbg !5835
  %bf.clear5 = and i8 %bf.lshr, 1, !dbg !5835
  %bf.cast6 = zext i8 %bf.clear5 to i32, !dbg !5835
  %tobool7 = icmp ne i32 %bf.cast6, 0, !dbg !5833
  br i1 %tobool7, label %if.end11, label %if.then8, !dbg !5836

if.then8:                                         ; preds = %if.end3
  %4 = load ptr, ptr %tmr.addr, align 8, !dbg !5837
  call void @seq_timer_reset(ptr noundef %4) #18, !dbg !5839
  %5 = load ptr, ptr %tmr.addr, align 8, !dbg !5840
  %call = call i32 @initialize_timer(ptr noundef %5) #18, !dbg !5842
  %cmp = icmp slt i32 %call, 0, !dbg !5843
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !5844

if.then9:                                         ; preds = %if.then8
  store i32 -22, ptr %retval, align 4, !dbg !5845
  br label %return, !dbg !5845

if.end10:                                         ; preds = %if.then8
  br label %if.end11, !dbg !5846

if.end11:                                         ; preds = %if.end10, %if.end3
  %6 = load ptr, ptr %tmr.addr, align 8, !dbg !5847
  %timeri12 = getelementptr inbounds %struct.snd_seq_timer, ptr %6, i32 0, i32 8, !dbg !5848
  %7 = load ptr, ptr %timeri12, align 8, !dbg !5848
  %8 = load ptr, ptr %tmr.addr, align 8, !dbg !5849
  %ticks = getelementptr inbounds %struct.snd_seq_timer, ptr %8, i32 0, i32 9, !dbg !5850
  %9 = load i32, ptr %ticks, align 8, !dbg !5850
  %call13 = call i32 @snd_timer_start(ptr noundef %7, i32 noundef %9) #18, !dbg !5851
  %10 = load ptr, ptr %tmr.addr, align 8, !dbg !5852
  %bf.load14 = load i8, ptr %10, align 8, !dbg !5853
  %bf.clear15 = and i8 %bf.load14, -2, !dbg !5853
  %bf.set = or i8 %bf.clear15, 1, !dbg !5853
  store i8 %bf.set, ptr %10, align 8, !dbg !5853
  %11 = load ptr, ptr %tmr.addr, align 8, !dbg !5854
  %last_update = getelementptr inbounds %struct.snd_seq_timer, ptr %11, i32 0, i32 13, !dbg !5855
  call void @ktime_get_ts64(ptr noundef %last_update) #18, !dbg !5856
  store i32 0, ptr %retval, align 4, !dbg !5857
  br label %return, !dbg !5857

return:                                           ; preds = %if.end11, %if.then9, %if.then2, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !5858
  ret i32 %12, !dbg !5858
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @snd_seq_timer_get_cur_time(ptr noundef %tmr, i1 noundef zeroext %adjust_ktime) #0 align 16 !dbg !5859 {
entry:
  %retval = alloca %struct.snd_seq_real_time, align 4
  %tmr.addr = alloca ptr, align 8
  %adjust_ktime.addr = alloca i8, align 1
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tm = alloca %struct.timespec64, align 8
  %tmp7 = alloca %struct.timespec64, align 8
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !5863, metadata !DIExpression()), !dbg !5875
  %frombool = zext i1 %adjust_ktime to i8
  store i8 %frombool, ptr %adjust_ktime.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %adjust_ktime.addr, metadata !5864, metadata !DIExpression()), !dbg !5876
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !5865, metadata !DIExpression()), !dbg !5877
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5878
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5866, metadata !DIExpression()), !dbg !5879
  br label %do.body, !dbg !5880

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5881

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5882
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5867, metadata !DIExpression()), !dbg !5882
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5882
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5871, metadata !DIExpression()), !dbg !5882
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5882
  %conv = zext i1 %cmp to i32, !dbg !5882
  store i32 1, ptr %tmp, align 4, !dbg !5882
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5883
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5883
  %0 = load i32, ptr %tmp, align 4, !dbg !5882
  %1 = load ptr, ptr %tmr.addr, align 8, !dbg !5883
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 14, !dbg !5883
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5883
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !5883
  store i64 %call2, ptr %flags, align 8, !dbg !5883
  br label %do.cond, !dbg !5883

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5883

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5881

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5881

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %tmr.addr, align 8, !dbg !5884
  %cur_time = getelementptr inbounds %struct.snd_seq_timer, ptr %2, i32 0, i32 3, !dbg !5885
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %retval, ptr align 4 %cur_time, i64 8, i1 false), !dbg !5885
  %3 = load i8, ptr %adjust_ktime.addr, align 1, !dbg !5886, !range !5887, !noundef !1365
  %tobool = trunc i8 %3 to i1, !dbg !5886
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5888

land.lhs.true:                                    ; preds = %do.end4
  %4 = load ptr, ptr %tmr.addr, align 8, !dbg !5889
  %bf.load = load i8, ptr %4, align 8, !dbg !5890
  %bf.clear = and i8 %bf.load, 1, !dbg !5890
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5890
  %tobool6 = icmp ne i32 %bf.cast, 0, !dbg !5889
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5891

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr %tm) #16, !dbg !5892
  call void @llvm.dbg.declare(metadata ptr %tm, metadata !5872, metadata !DIExpression()), !dbg !5893
  call void @ktime_get_ts64(ptr noundef %tm) #18, !dbg !5894
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp7) #16, !dbg !5895
  %5 = load ptr, ptr %tmr.addr, align 8, !dbg !5896
  %last_update = getelementptr inbounds %struct.snd_seq_timer, ptr %5, i32 0, i32 13, !dbg !5897
  %6 = getelementptr inbounds { i64, i64 }, ptr %tm, i32 0, i32 0, !dbg !5895
  %7 = load i64, ptr %6, align 8, !dbg !5895
  %8 = getelementptr inbounds { i64, i64 }, ptr %tm, i32 0, i32 1, !dbg !5895
  %9 = load i64, ptr %8, align 8, !dbg !5895
  %10 = getelementptr inbounds { i64, i64 }, ptr %last_update, i32 0, i32 0, !dbg !5895
  %11 = load i64, ptr %10, align 8, !dbg !5895
  %12 = getelementptr inbounds { i64, i64 }, ptr %last_update, i32 0, i32 1, !dbg !5895
  %13 = load i64, ptr %12, align 8, !dbg !5895
  %call8 = call { i64, i64 } @timespec64_sub(i64 %7, i64 %9, i64 %11, i64 %13) #18, !dbg !5895
  %14 = getelementptr inbounds { i64, i64 }, ptr %tmp7, i32 0, i32 0, !dbg !5895
  %15 = extractvalue { i64, i64 } %call8, 0, !dbg !5895
  store i64 %15, ptr %14, align 8, !dbg !5895
  %16 = getelementptr inbounds { i64, i64 }, ptr %tmp7, i32 0, i32 1, !dbg !5895
  %17 = extractvalue { i64, i64 } %call8, 1, !dbg !5895
  store i64 %17, ptr %16, align 8, !dbg !5895
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tm, ptr align 8 %tmp7, i64 16, i1 false), !dbg !5895
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp7) #16, !dbg !5895
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %tm, i32 0, i32 1, !dbg !5898
  %18 = load i64, ptr %tv_nsec, align 8, !dbg !5898
  %tv_nsec9 = getelementptr inbounds %struct.snd_seq_real_time, ptr %retval, i32 0, i32 1, !dbg !5899
  %19 = load i32, ptr %tv_nsec9, align 4, !dbg !5900
  %conv10 = zext i32 %19 to i64, !dbg !5900
  %add = add i64 %conv10, %18, !dbg !5900
  %conv11 = trunc i64 %add to i32, !dbg !5900
  store i32 %conv11, ptr %tv_nsec9, align 4, !dbg !5900
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %tm, i32 0, i32 0, !dbg !5901
  %20 = load i64, ptr %tv_sec, align 8, !dbg !5901
  %tv_sec12 = getelementptr inbounds %struct.snd_seq_real_time, ptr %retval, i32 0, i32 0, !dbg !5902
  %21 = load i32, ptr %tv_sec12, align 4, !dbg !5903
  %conv13 = zext i32 %21 to i64, !dbg !5903
  %add14 = add i64 %conv13, %20, !dbg !5903
  %conv15 = trunc i64 %add14 to i32, !dbg !5903
  store i32 %conv15, ptr %tv_sec12, align 4, !dbg !5903
  call void @snd_seq_sanity_real_time(ptr noundef %retval) #18, !dbg !5904
  call void @llvm.lifetime.end.p0(i64 16, ptr %tm) #16, !dbg !5905
  br label %if.end, !dbg !5906

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end4
  %22 = load ptr, ptr %tmr.addr, align 8, !dbg !5907
  %lock16 = getelementptr inbounds %struct.snd_seq_timer, ptr %22, i32 0, i32 14, !dbg !5908
  %23 = load i64, ptr %flags, align 8, !dbg !5909
  call void @spin_unlock_irqrestore(ptr noundef %lock16, i64 noundef %23) #18, !dbg !5910
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5911
  %24 = load i64, ptr %retval, align 4, !dbg !5911
  ret i64 %24, !dbg !5911
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5912 dso_local void @ktime_get_ts64(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @timespec64_sub(i64 %lhs.coerce0, i64 %lhs.coerce1, i64 %rhs.coerce0, i64 %rhs.coerce1) #8 align 16 !dbg !5916 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %lhs = alloca %struct.timespec64, align 8
  %rhs = alloca %struct.timespec64, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %lhs, i32 0, i32 0
  store i64 %lhs.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %lhs, i32 0, i32 1
  store i64 %lhs.coerce1, ptr %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, ptr %rhs, i32 0, i32 0
  store i64 %rhs.coerce0, ptr %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %rhs, i32 0, i32 1
  store i64 %rhs.coerce1, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %lhs, metadata !5920, metadata !DIExpression()), !dbg !5923
  call void @llvm.dbg.declare(metadata ptr %rhs, metadata !5921, metadata !DIExpression()), !dbg !5924
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !5922, metadata !DIExpression()), !dbg !5925
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %lhs, i32 0, i32 0, !dbg !5926
  %4 = load i64, ptr %tv_sec, align 8, !dbg !5926
  %tv_sec1 = getelementptr inbounds %struct.timespec64, ptr %rhs, i32 0, i32 0, !dbg !5927
  %5 = load i64, ptr %tv_sec1, align 8, !dbg !5927
  %sub = sub i64 %4, %5, !dbg !5928
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %lhs, i32 0, i32 1, !dbg !5929
  %6 = load i64, ptr %tv_nsec, align 8, !dbg !5929
  %tv_nsec2 = getelementptr inbounds %struct.timespec64, ptr %rhs, i32 0, i32 1, !dbg !5930
  %7 = load i64, ptr %tv_nsec2, align 8, !dbg !5930
  %sub3 = sub i64 %6, %7, !dbg !5931
  call void @set_normalized_timespec64(ptr noundef %retval, i64 noundef %sub, i64 noundef %sub3) #18, !dbg !5932
  %8 = load { i64, i64 }, ptr %retval, align 8, !dbg !5933
  ret { i64, i64 } %8, !dbg !5933
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_timer_get_cur_tick(ptr noundef %tmr) #0 align 16 !dbg !5934 {
entry:
  %tmr.addr = alloca ptr, align 8
  %cur_tick = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !5938, metadata !DIExpression()), !dbg !5946
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_tick) #16, !dbg !5947
  call void @llvm.dbg.declare(metadata ptr %cur_tick, metadata !5939, metadata !DIExpression()), !dbg !5948
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5940, metadata !DIExpression()), !dbg !5950
  br label %do.body, !dbg !5951

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5952

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5953
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5941, metadata !DIExpression()), !dbg !5953
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5953
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5945, metadata !DIExpression()), !dbg !5953
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5953
  %conv = zext i1 %cmp to i32, !dbg !5953
  store i32 1, ptr %tmp, align 4, !dbg !5953
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5954
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5954
  %0 = load i32, ptr %tmp, align 4, !dbg !5953
  %1 = load ptr, ptr %tmr.addr, align 8, !dbg !5954
  %lock = getelementptr inbounds %struct.snd_seq_timer, ptr %1, i32 0, i32 14, !dbg !5954
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !5954
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !5954
  store i64 %call2, ptr %flags, align 8, !dbg !5954
  br label %do.cond, !dbg !5954

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5954

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5952

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5952

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %tmr.addr, align 8, !dbg !5955
  %tick = getelementptr inbounds %struct.snd_seq_timer, ptr %2, i32 0, i32 4, !dbg !5956
  %cur_tick5 = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %tick, i32 0, i32 0, !dbg !5957
  %3 = load i32, ptr %cur_tick5, align 8, !dbg !5957
  store i32 %3, ptr %cur_tick, align 4, !dbg !5958
  %4 = load ptr, ptr %tmr.addr, align 8, !dbg !5959
  %lock6 = getelementptr inbounds %struct.snd_seq_timer, ptr %4, i32 0, i32 14, !dbg !5960
  %5 = load i64, ptr %flags, align 8, !dbg !5961
  call void @spin_unlock_irqrestore(ptr noundef %lock6, i64 noundef %5) #18, !dbg !5962
  %6 = load i32, ptr %cur_tick, align 4, !dbg !5963
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5964
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_tick) #16, !dbg !5964
  ret i32 %6, !dbg !5965
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_info_timer_read(ptr noundef %entry1, ptr noundef %buffer) #0 align 16 !dbg !5966 {
entry:
  %entry.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %idx = alloca i32, align 4
  %q = alloca ptr, align 8
  %tmr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %resolution = alloca i64, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5968, metadata !DIExpression()), !dbg !5979
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5969, metadata !DIExpression()), !dbg !5980
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #16, !dbg !5981
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !5970, metadata !DIExpression()), !dbg !5982
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #16, !dbg !5983
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5971, metadata !DIExpression()), !dbg !5984
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmr) #16, !dbg !5985
  call void @llvm.dbg.declare(metadata ptr %tmr, metadata !5972, metadata !DIExpression()), !dbg !5986
  call void @llvm.lifetime.start.p0(i64 8, ptr %ti) #16, !dbg !5987
  call void @llvm.dbg.declare(metadata ptr %ti, metadata !5973, metadata !DIExpression()), !dbg !5988
  call void @llvm.lifetime.start.p0(i64 8, ptr %resolution) #16, !dbg !5989
  call void @llvm.dbg.declare(metadata ptr %resolution, metadata !5974, metadata !DIExpression()), !dbg !5990
  store i32 0, ptr %idx, align 4, !dbg !5991
  br label %for.cond, !dbg !5992

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %idx, align 4, !dbg !5993
  %cmp = icmp slt i32 %0, 32, !dbg !5994
  br i1 %cmp, label %for.body, label %for.end, !dbg !5995

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %idx, align 4, !dbg !5996
  %call = call ptr @queueptr(i32 noundef %1) #18, !dbg !5997
  store ptr %call, ptr %q, align 8, !dbg !5998
  %2 = load ptr, ptr %q, align 8, !dbg !5999
  %cmp2 = icmp eq ptr %2, null, !dbg !6001
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6002

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !6003

if.end:                                           ; preds = %for.body
  %3 = load ptr, ptr %q, align 8, !dbg !6004
  %timer_mutex = getelementptr inbounds %struct.snd_seq_queue, ptr %3, i32 0, i32 16, !dbg !6005
  call void @mutex_lock(ptr noundef %timer_mutex) #18, !dbg !6006
  %4 = load ptr, ptr %q, align 8, !dbg !6007
  %timer = getelementptr inbounds %struct.snd_seq_queue, ptr %4, i32 0, i32 4, !dbg !6008
  %5 = load ptr, ptr %timer, align 8, !dbg !6008
  store ptr %5, ptr %tmr, align 8, !dbg !6009
  %6 = load ptr, ptr %tmr, align 8, !dbg !6010
  %tobool = icmp ne ptr %6, null, !dbg !6010
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !6012

if.then3:                                         ; preds = %if.end
  br label %unlock, !dbg !6013

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %tmr, align 8, !dbg !6014
  %timeri = getelementptr inbounds %struct.snd_seq_timer, ptr %7, i32 0, i32 8, !dbg !6015
  %8 = load ptr, ptr %timeri, align 8, !dbg !6015
  store ptr %8, ptr %ti, align 8, !dbg !6016
  %9 = load ptr, ptr %ti, align 8, !dbg !6017
  %tobool5 = icmp ne ptr %9, null, !dbg !6017
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6019

if.then6:                                         ; preds = %if.end4
  br label %unlock, !dbg !6020

if.end7:                                          ; preds = %if.end4
  %10 = load ptr, ptr %buffer.addr, align 8, !dbg !6021
  %buffer8 = getelementptr inbounds %struct.snd_info_buffer, ptr %10, i32 0, i32 0, !dbg !6021
  %11 = load ptr, ptr %buffer8, align 8, !dbg !6021
  %12 = load ptr, ptr %q, align 8, !dbg !6021
  %queue = getelementptr inbounds %struct.snd_seq_queue, ptr %12, i32 0, i32 0, !dbg !6021
  %13 = load i32, ptr %queue, align 8, !dbg !6021
  %14 = load ptr, ptr %ti, align 8, !dbg !6021
  %timer9 = getelementptr inbounds %struct.snd_timer_instance, ptr %14, i32 0, i32 0, !dbg !6021
  %15 = load ptr, ptr %timer9, align 8, !dbg !6021
  %name = getelementptr inbounds %struct.snd_timer, ptr %15, i32 0, i32 6, !dbg !6021
  %arraydecay = getelementptr inbounds [80 x i8], ptr %name, i64 0, i64 0, !dbg !6021
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef @.str.2, i32 noundef %13, ptr noundef %arraydecay) #18, !dbg !6021
  %16 = load ptr, ptr %ti, align 8, !dbg !6022
  %call10 = call i64 @snd_timer_resolution(ptr noundef %16) #18, !dbg !6023
  %17 = load ptr, ptr %tmr, align 8, !dbg !6024
  %ticks = getelementptr inbounds %struct.snd_seq_timer, ptr %17, i32 0, i32 9, !dbg !6025
  %18 = load i32, ptr %ticks, align 8, !dbg !6025
  %conv = zext i32 %18 to i64, !dbg !6024
  %mul = mul i64 %call10, %conv, !dbg !6026
  store i64 %mul, ptr %resolution, align 8, !dbg !6027
  %19 = load ptr, ptr %buffer.addr, align 8, !dbg !6028
  %buffer11 = getelementptr inbounds %struct.snd_info_buffer, ptr %19, i32 0, i32 0, !dbg !6028
  %20 = load ptr, ptr %buffer11, align 8, !dbg !6028
  %21 = load i64, ptr %resolution, align 8, !dbg !6028
  %div = udiv i64 %21, 1000000000, !dbg !6028
  %22 = load i64, ptr %resolution, align 8, !dbg !6028
  %rem = urem i64 %22, 1000000000, !dbg !6028
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef @.str.3, i64 noundef %div, i64 noundef %rem) #18, !dbg !6028
  %23 = load ptr, ptr %buffer.addr, align 8, !dbg !6029
  %buffer12 = getelementptr inbounds %struct.snd_info_buffer, ptr %23, i32 0, i32 0, !dbg !6029
  %24 = load ptr, ptr %buffer12, align 8, !dbg !6029
  %25 = load ptr, ptr %tmr, align 8, !dbg !6029
  %skew = getelementptr inbounds %struct.snd_seq_timer, ptr %25, i32 0, i32 11, !dbg !6029
  %26 = load i32, ptr %skew, align 8, !dbg !6029
  %27 = load ptr, ptr %tmr, align 8, !dbg !6029
  %skew_base = getelementptr inbounds %struct.snd_seq_timer, ptr %27, i32 0, i32 12, !dbg !6029
  %28 = load i32, ptr %skew_base, align 4, !dbg !6029
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef @.str.4, i32 noundef %26, i32 noundef %28) #18, !dbg !6029
  br label %unlock, !dbg !6029

unlock:                                           ; preds = %if.end7, %if.then6, %if.then3
  call void @llvm.dbg.label(metadata !5975), !dbg !6030
  %29 = load ptr, ptr %q, align 8, !dbg !6031
  %timer_mutex13 = getelementptr inbounds %struct.snd_seq_queue, ptr %29, i32 0, i32 16, !dbg !6032
  call void @mutex_unlock(ptr noundef %timer_mutex13) #18, !dbg !6033
  %30 = load ptr, ptr %q, align 8, !dbg !6034
  %use_lock = getelementptr inbounds %struct.snd_seq_queue, ptr %30, i32 0, i32 17, !dbg !6034
  call void @atomic_dec(ptr noundef %use_lock) #18, !dbg !6034
  br label %for.inc, !dbg !6035

for.inc:                                          ; preds = %unlock, %if.then
  %31 = load i32, ptr %idx, align 4, !dbg !6036
  %inc = add i32 %31, 1, !dbg !6036
  store i32 %inc, ptr %idx, align 4, !dbg !6036
  br label %for.cond, !dbg !6037, !llvm.loop !6038

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %resolution) #16, !dbg !6040
  call void @llvm.lifetime.end.p0(i64 8, ptr %ti) #16, !dbg !6040
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmr) #16, !dbg !6040
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #16, !dbg !6040
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #16, !dbg !6040
  ret void, !dbg !6040
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6041 dso_local ptr @queueptr(i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6044 dso_local void @mutex_lock(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6048 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6051 dso_local i64 @snd_timer_resolution(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6054 dso_local void @mutex_unlock(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #4 align 16 !dbg !6055 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6061, metadata !DIExpression()), !dbg !6062
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6063
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !6064
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6065
  call void @raw_atomic_dec(ptr noundef %1) #18, !dbg !6066
  ret void, !dbg !6067
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6068 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6070, metadata !DIExpression()), !dbg !6075
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6071, metadata !DIExpression()), !dbg !6076
  %0 = load i64, ptr %size.addr, align 8, !dbg !6077
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6078
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6079

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6080
  %tobool = icmp ne i64 %2, 0, !dbg !6080
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6081

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6082
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6072, metadata !DIExpression()), !dbg !6083
  %3 = load i64, ptr %size.addr, align 8, !dbg !6084
  %cmp = icmp ugt i64 %3, 8192, !dbg !6086
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6087

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6088
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6089
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !6090
  store ptr %call, ptr %retval, align 8, !dbg !6091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6091

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6092
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6092
  store i32 %call2, ptr %index, align 4, !dbg !6093
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6094
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6095
  %9 = ptrtoint ptr %8 to i64, !dbg !6095
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6096
  %idxprom = zext i32 %call3 to i64, !dbg !6097
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6097
  %10 = load i32, ptr %index, align 4, !dbg !6098
  %idxprom4 = zext i32 %10 to i64, !dbg !6097
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6097
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6097
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6099
  %13 = load i64, ptr %size.addr, align 8, !dbg !6100
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6101
  store ptr %call6, ptr %retval, align 8, !dbg !6102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6102

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6103
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6104
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6105
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !6106
  store ptr %call8, ptr %retval, align 8, !dbg !6107
  br label %return, !dbg !6107

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6108
  ret ptr %16, !dbg !6108
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6109 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !6110 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6114, metadata !DIExpression()), !dbg !6116
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6115, metadata !DIExpression()), !dbg !6117
  %0 = load i64, ptr %size.addr, align 8, !dbg !6118
  %tobool = icmp ne i64 %0, 0, !dbg !6118
  br i1 %tobool, label %if.end, label %if.then, !dbg !6120

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6121
  br label %return, !dbg !6121

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6122
  %cmp = icmp ule i64 %1, 8, !dbg !6124
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6125

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6126
  br label %return, !dbg !6126

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6127
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6129
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6130

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6131
  %cmp4 = icmp ule i64 %3, 96, !dbg !6132
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6133

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6134
  br label %return, !dbg !6134

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6135
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6137
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6138

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6139
  %cmp9 = icmp ule i64 %5, 192, !dbg !6140
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6141

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6142
  br label %return, !dbg !6142

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6143
  %cmp12 = icmp ule i64 %6, 8, !dbg !6145
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6146

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6147
  br label %return, !dbg !6147

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6148
  %cmp15 = icmp ule i64 %7, 16, !dbg !6150
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6151

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6152
  br label %return, !dbg !6152

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6153
  %cmp18 = icmp ule i64 %8, 32, !dbg !6155
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6156

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6157
  br label %return, !dbg !6157

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6158
  %cmp21 = icmp ule i64 %9, 64, !dbg !6160
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6161

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6162
  br label %return, !dbg !6162

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6163
  %cmp24 = icmp ule i64 %10, 128, !dbg !6165
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6166

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6167
  br label %return, !dbg !6167

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6168
  %cmp27 = icmp ule i64 %11, 256, !dbg !6170
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6171

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6172
  br label %return, !dbg !6172

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6173
  %cmp30 = icmp ule i64 %12, 512, !dbg !6175
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6176

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6177
  br label %return, !dbg !6177

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6178
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6180
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6181

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6182
  br label %return, !dbg !6182

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6183
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6185
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6186

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6187
  br label %return, !dbg !6187

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6188
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6190
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6191

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6192
  br label %return, !dbg !6192

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6193
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6195
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6196

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6197
  br label %return, !dbg !6197

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6198
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6200
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6201

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6202
  br label %return, !dbg !6202

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6203
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6205
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6206

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6207
  br label %return, !dbg !6207

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6208
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6210
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6211

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6212
  br label %return, !dbg !6212

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6213
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6215
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6216

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6217
  br label %return, !dbg !6217

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6218
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6220
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6221

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6222
  br label %return, !dbg !6222

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6223
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6225
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6226

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6227
  br label %return, !dbg !6227

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6228
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6230
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6231

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6232
  br label %return, !dbg !6232

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6233
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6235
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6236

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6237
  br label %return, !dbg !6237

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6238, !range !5887, !noundef !1365
  %tobool69 = trunc i8 %25 to i1, !dbg !6238
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6240

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6241

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #21, !dbg !6242, !srcloc !6245
  unreachable, !dbg !6242

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6246

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6247

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6248

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6250

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6248

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #16, !dbg !6252, !srcloc !6254
  br label %do.end75, !dbg !6252

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6248

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6255
  br label %return, !dbg !6255

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6256
  ret i32 %26, !dbg !6256
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6257 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6263 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6267, metadata !DIExpression()), !dbg !6269
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6268, metadata !DIExpression()), !dbg !6270
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6271
  %and = and i32 %0, 17, !dbg !6271
  %cmp = icmp eq i32 %and, 0, !dbg !6271
  %lnot = xor i1 %cmp, true, !dbg !6271
  %lnot1 = xor i1 %lnot, true, !dbg !6271
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6271
  %conv = sext i32 %lnot.ext to i64, !dbg !6271
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6271
  %tobool = icmp ne i64 %expval, 0, !dbg !6271
  br i1 %tobool, label %if.then, label %if.end, !dbg !6273

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6274
  br label %return, !dbg !6274

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6275
  %and2 = and i32 %1, 1, !dbg !6277
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6277
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6278

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6279
  br label %return, !dbg !6279

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6280
  br label %return, !dbg !6280

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6282
  ret i32 %2, !dbg !6282
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6283 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6284 dso_local void @__compiletime_assert_206() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_seq_timer_update_tick(ptr noundef %tick, i64 noundef %resolution) #8 align 16 !dbg !6285 {
entry:
  %tick.addr = alloca ptr, align 8
  %resolution.addr = alloca i64, align 8
  store ptr %tick, ptr %tick.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tick.addr, metadata !6290, metadata !DIExpression()), !dbg !6292
  store i64 %resolution, ptr %resolution.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resolution.addr, metadata !6291, metadata !DIExpression()), !dbg !6293
  %0 = load ptr, ptr %tick.addr, align 8, !dbg !6294
  %resolution1 = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %0, i32 0, i32 1, !dbg !6296
  %1 = load i64, ptr %resolution1, align 8, !dbg !6296
  %cmp = icmp ugt i64 %1, 0, !dbg !6297
  br i1 %cmp, label %if.then, label %if.end, !dbg !6298

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %resolution.addr, align 8, !dbg !6299
  %3 = load ptr, ptr %tick.addr, align 8, !dbg !6301
  %fraction = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %3, i32 0, i32 2, !dbg !6302
  %4 = load i64, ptr %fraction, align 8, !dbg !6303
  %add = add i64 %4, %2, !dbg !6303
  store i64 %add, ptr %fraction, align 8, !dbg !6303
  %5 = load ptr, ptr %tick.addr, align 8, !dbg !6304
  %fraction2 = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %5, i32 0, i32 2, !dbg !6305
  %6 = load i64, ptr %fraction2, align 8, !dbg !6305
  %7 = load ptr, ptr %tick.addr, align 8, !dbg !6306
  %resolution3 = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %7, i32 0, i32 1, !dbg !6307
  %8 = load i64, ptr %resolution3, align 8, !dbg !6307
  %div = udiv i64 %6, %8, !dbg !6308
  %conv = trunc i64 %div to i32, !dbg !6309
  %9 = load ptr, ptr %tick.addr, align 8, !dbg !6310
  %cur_tick = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %9, i32 0, i32 0, !dbg !6311
  %10 = load i32, ptr %cur_tick, align 8, !dbg !6312
  %add4 = add i32 %10, %conv, !dbg !6312
  store i32 %add4, ptr %cur_tick, align 8, !dbg !6312
  %11 = load ptr, ptr %tick.addr, align 8, !dbg !6313
  %resolution5 = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %11, i32 0, i32 1, !dbg !6314
  %12 = load i64, ptr %resolution5, align 8, !dbg !6314
  %13 = load ptr, ptr %tick.addr, align 8, !dbg !6315
  %fraction6 = getelementptr inbounds %struct.snd_seq_timer_tick, ptr %13, i32 0, i32 2, !dbg !6316
  %14 = load i64, ptr %fraction6, align 8, !dbg !6317
  %rem = urem i64 %14, %12, !dbg !6317
  store i64 %rem, ptr %fraction6, align 8, !dbg !6317
  br label %if.end, !dbg !6318

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6319
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6320 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_seq_inc_time_nsec(ptr noundef %tm, i64 noundef %nsec) #8 align 16 !dbg !6323 {
entry:
  %tm.addr = alloca ptr, align 8
  %nsec.addr = alloca i64, align 8
  store ptr %tm, ptr %tm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tm.addr, metadata !6327, metadata !DIExpression()), !dbg !6329
  store i64 %nsec, ptr %nsec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsec.addr, metadata !6328, metadata !DIExpression()), !dbg !6330
  %0 = load i64, ptr %nsec.addr, align 8, !dbg !6331
  %1 = load ptr, ptr %tm.addr, align 8, !dbg !6332
  %tv_nsec = getelementptr inbounds %struct.snd_seq_real_time, ptr %1, i32 0, i32 1, !dbg !6333
  %2 = load i32, ptr %tv_nsec, align 4, !dbg !6334
  %conv = zext i32 %2 to i64, !dbg !6334
  %add = add i64 %conv, %0, !dbg !6334
  %conv1 = trunc i64 %add to i32, !dbg !6334
  store i32 %conv1, ptr %tv_nsec, align 4, !dbg !6334
  %3 = load ptr, ptr %tm.addr, align 8, !dbg !6335
  call void @snd_seq_sanity_real_time(ptr noundef %3) #18, !dbg !6336
  ret void, !dbg !6337
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6338 dso_local void @snd_seq_check_queue(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6341 dso_local void @_raw_spin_lock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6344 dso_local void @_raw_spin_unlock_irq(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6345 dso_local i32 @snd_timer_pause(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @initialize_timer(ptr noundef %tmr) #0 align 16 !dbg !6348 {
entry:
  %retval = alloca i32, align 4
  %tmr.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %freq = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca i64, align 8
  store ptr %tmr, ptr %tmr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tmr.addr, metadata !6350, metadata !DIExpression()), !dbg !6356
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #16, !dbg !6357
  call void @llvm.dbg.declare(metadata ptr %t, metadata !6351, metadata !DIExpression()), !dbg !6358
  call void @llvm.lifetime.start.p0(i64 8, ptr %freq) #16, !dbg !6359
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !6352, metadata !DIExpression()), !dbg !6360
  %0 = load ptr, ptr %tmr.addr, align 8, !dbg !6361
  %timeri = getelementptr inbounds %struct.snd_seq_timer, ptr %0, i32 0, i32 8, !dbg !6362
  %1 = load ptr, ptr %timeri, align 8, !dbg !6362
  %timer = getelementptr inbounds %struct.snd_timer_instance, ptr %1, i32 0, i32 0, !dbg !6363
  %2 = load ptr, ptr %timer, align 8, !dbg !6363
  store ptr %2, ptr %t, align 8, !dbg !6364
  %3 = load ptr, ptr %t, align 8, !dbg !6365
  %tobool = icmp ne ptr %3, null, !dbg !6365
  br i1 %tobool, label %if.end, label %if.then, !dbg !6367

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6368

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %tmr.addr, align 8, !dbg !6369
  %preferred_resolution = getelementptr inbounds %struct.snd_seq_timer, ptr %4, i32 0, i32 10, !dbg !6370
  %5 = load i64, ptr %preferred_resolution, align 8, !dbg !6370
  store i64 %5, ptr %freq, align 8, !dbg !6371
  %6 = load i64, ptr %freq, align 8, !dbg !6372
  %tobool1 = icmp ne i64 %6, 0, !dbg !6372
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !6374

if.then2:                                         ; preds = %if.end
  store i64 1000, ptr %freq, align 8, !dbg !6375
  br label %if.end9, !dbg !6376

if.else:                                          ; preds = %if.end
  %7 = load i64, ptr %freq, align 8, !dbg !6377
  %cmp = icmp ult i64 %7, 10, !dbg !6379
  br i1 %cmp, label %if.then3, label %if.else4, !dbg !6380

if.then3:                                         ; preds = %if.else
  store i64 10, ptr %freq, align 8, !dbg !6381
  br label %if.end8, !dbg !6382

if.else4:                                         ; preds = %if.else
  %8 = load i64, ptr %freq, align 8, !dbg !6383
  %cmp5 = icmp ugt i64 %8, 6250, !dbg !6385
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !6386

if.then6:                                         ; preds = %if.else4
  store i64 6250, ptr %freq, align 8, !dbg !6387
  br label %if.end7, !dbg !6388

if.end7:                                          ; preds = %if.then6, %if.else4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then2
  %9 = load ptr, ptr %tmr.addr, align 8, !dbg !6389
  %ticks = getelementptr inbounds %struct.snd_seq_timer, ptr %9, i32 0, i32 9, !dbg !6390
  store i32 1, ptr %ticks, align 8, !dbg !6391
  %10 = load ptr, ptr %t, align 8, !dbg !6392
  %hw = getelementptr inbounds %struct.snd_timer, ptr %10, i32 0, i32 12, !dbg !6393
  %flags = getelementptr inbounds %struct.snd_timer_hardware, ptr %hw, i32 0, i32 0, !dbg !6394
  %11 = load i32, ptr %flags, align 8, !dbg !6394
  %and = and i32 %11, 4, !dbg !6395
  %tobool10 = icmp ne i32 %and, 0, !dbg !6395
  br i1 %tobool10, label %if.end22, label %if.then11, !dbg !6396

if.then11:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #16, !dbg !6397
  call void @llvm.dbg.declare(metadata ptr %r, metadata !6353, metadata !DIExpression()), !dbg !6398
  %12 = load ptr, ptr %tmr.addr, align 8, !dbg !6399
  %timeri12 = getelementptr inbounds %struct.snd_seq_timer, ptr %12, i32 0, i32 8, !dbg !6400
  %13 = load ptr, ptr %timeri12, align 8, !dbg !6400
  %call = call i64 @snd_timer_resolution(ptr noundef %13) #18, !dbg !6401
  store i64 %call, ptr %r, align 8, !dbg !6398
  %14 = load i64, ptr %r, align 8, !dbg !6402
  %tobool13 = icmp ne i64 %14, 0, !dbg !6402
  br i1 %tobool13, label %if.then14, label %if.end21, !dbg !6404

if.then14:                                        ; preds = %if.then11
  %15 = load i64, ptr %r, align 8, !dbg !6405
  %16 = load i64, ptr %freq, align 8, !dbg !6407
  %mul = mul i64 %15, %16, !dbg !6408
  %div = udiv i64 1000000000, %mul, !dbg !6409
  %conv = trunc i64 %div to i32, !dbg !6410
  %17 = load ptr, ptr %tmr.addr, align 8, !dbg !6411
  %ticks15 = getelementptr inbounds %struct.snd_seq_timer, ptr %17, i32 0, i32 9, !dbg !6412
  store i32 %conv, ptr %ticks15, align 8, !dbg !6413
  %18 = load ptr, ptr %tmr.addr, align 8, !dbg !6414
  %ticks16 = getelementptr inbounds %struct.snd_seq_timer, ptr %18, i32 0, i32 9, !dbg !6416
  %19 = load i32, ptr %ticks16, align 8, !dbg !6416
  %tobool17 = icmp ne i32 %19, 0, !dbg !6414
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !6417

if.then18:                                        ; preds = %if.then14
  %20 = load ptr, ptr %tmr.addr, align 8, !dbg !6418
  %ticks19 = getelementptr inbounds %struct.snd_seq_timer, ptr %20, i32 0, i32 9, !dbg !6419
  store i32 1, ptr %ticks19, align 8, !dbg !6420
  br label %if.end20, !dbg !6418

if.end20:                                         ; preds = %if.then18, %if.then14
  br label %if.end21, !dbg !6421

if.end21:                                         ; preds = %if.end20, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #16, !dbg !6422
  br label %if.end22, !dbg !6423

if.end22:                                         ; preds = %if.end21, %if.end9
  %21 = load ptr, ptr %tmr.addr, align 8, !dbg !6424
  %bf.load = load i8, ptr %21, align 8, !dbg !6425
  %bf.clear = and i8 %bf.load, -3, !dbg !6425
  %bf.set = or i8 %bf.clear, 2, !dbg !6425
  store i8 %bf.set, ptr %21, align 8, !dbg !6425
  store i32 0, ptr %retval, align 4, !dbg !6426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6426

cleanup:                                          ; preds = %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %freq) #16, !dbg !6427
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #16, !dbg !6427
  %22 = load i32, ptr %retval, align 4, !dbg !6427
  ret i32 %22, !dbg !6427
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6428 dso_local i32 @snd_timer_start(ptr noundef, i32 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6431 dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6434 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6442, metadata !DIExpression()), !dbg !6444
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6443, metadata !DIExpression()), !dbg !6445
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6446
  %1 = load i64, ptr %size.addr, align 8, !dbg !6447
  %conv = trunc i64 %1 to i32, !dbg !6447
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6448
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6449
  %3 = load i64, ptr %size.addr, align 8, !dbg !6449
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !6449
  ret void, !dbg !6450
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #4 align 16 !dbg !6451 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6454, metadata !DIExpression()), !dbg !6455
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6456
  call void @arch_atomic_dec(ptr noundef %0) #18, !dbg !6457
  ret void, !dbg !6458
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !6459 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6464, metadata !DIExpression()), !dbg !6466
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6465, metadata !DIExpression()), !dbg !6467
  ret i1 true, !dbg !6468
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #8 align 16 !dbg !6469 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6474, metadata !DIExpression()), !dbg !6477
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6475, metadata !DIExpression()), !dbg !6478
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6476, metadata !DIExpression()), !dbg !6479
  ret void, !dbg !6480
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #4 align 16 !dbg !6481 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6484, metadata !DIExpression()), !dbg !6485
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6486
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6487
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #16, !dbg !6488, !srcloc !6489
  ret void, !dbg !6490
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!33}
!llvm.module.flags = !{!3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987}
!llvm.ident = !{!3988}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "sound/core/seq/seq_timer.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1a6df4fc908f2394ace37576536ea96e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 19)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 51)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 496, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 25)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 27)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 499, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 18)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !29, line: 480, type: !30, isLocal: true, isDefinition: true)
!29 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 21)
!33 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/seq/.seq_timer.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/seq/snd-seq\22 -D KBUILD_BASENAME=\22seq_timer\22 -D KBUILD_MODNAME=\22snd_seq\22 -D __KBUILD_MODNAME=kmod_snd_seq -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/seq/seq_timer.ll sound/core/seq/seq_timer.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !34, retainedTypes: !177, globals: !3979, splitDebugInlining: false, nameTableKind: None)
!34 = !{!35, !43, !48, !56, !62, !67, !73, !80, !87, !93, !99, !106, !114, !122, !131, !136, !141, !147, !156, !163, !168}
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !36, line: 312, baseType: !37, size: 32, elements: !38)
!36 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!40 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!41 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!42 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !44, line: 2052, baseType: !37, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!47 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !49, line: 9, baseType: !37, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!50 = !{!51, !52, !53, !54, !55}
!51 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!52 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!53 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!54 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!55 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !57, line: 54, baseType: !37, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "USRQUOTA", value: 0)
!60 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!61 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !63, line: 65, baseType: !37, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!66 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !68, line: 16, baseType: !37, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "TT_NONE", value: 0)
!71 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!72 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !74, line: 51, baseType: !37, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!77 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!78 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!79 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !81, line: 15, baseType: !37, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!84 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!85 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!86 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !88, line: 26, baseType: !37, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !94, line: 45, baseType: !37, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!97 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!98 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !100, line: 487, baseType: !37, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!103 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!104 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!105 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !107, line: 620, baseType: !37, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!110 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!111 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!112 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!113 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !107, line: 597, baseType: !115, size: 32, elements: !116)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!118 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!119 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!120 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!121 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !100, line: 547, baseType: !37, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!126 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!127 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!128 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!130 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !100, line: 564, baseType: !37, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !100, line: 577, baseType: !37, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !100, line: 503, baseType: !37, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!145 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 870, baseType: !115, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/uapi/sound/asound.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6c7c1b6718812fde08ec0a715510ddd")
!149 = !{!150, !151, !152, !153, !154, !155}
!150 = !DIEnumerator(name: "SNDRV_TIMER_CLASS_NONE", value: -1)
!151 = !DIEnumerator(name: "SNDRV_TIMER_CLASS_SLAVE", value: 0)
!152 = !DIEnumerator(name: "SNDRV_TIMER_CLASS_GLOBAL", value: 1)
!153 = !DIEnumerator(name: "SNDRV_TIMER_CLASS_CARD", value: 2)
!154 = !DIEnumerator(name: "SNDRV_TIMER_CLASS_PCM", value: 3)
!155 = !DIEnumerator(name: "SNDRV_TIMER_CLASS_LAST", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 880, baseType: !37, size: 32, elements: !157)
!157 = !{!158, !159, !160, !161, !162}
!158 = !DIEnumerator(name: "SNDRV_TIMER_SCLASS_NONE", value: 0)
!159 = !DIEnumerator(name: "SNDRV_TIMER_SCLASS_APPLICATION", value: 1)
!160 = !DIEnumerator(name: "SNDRV_TIMER_SCLASS_SEQUENCER", value: 2)
!161 = !DIEnumerator(name: "SNDRV_TIMER_SCLASS_OSS_SEQUENCER", value: 3)
!162 = !DIEnumerator(name: "SNDRV_TIMER_SCLASS_LAST", value: 3)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !164, line: 10, baseType: !37, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!165 = !{!166, !167}
!166 = !DIEnumerator(name: "false", value: 0)
!167 = !DIEnumerator(name: "true", value: 1)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !29, line: 364, baseType: !37, size: 32, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176}
!170 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!171 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!172 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!173 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!174 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!175 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!176 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!177 = !{!178, !180, !37, !181, !192}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !179, line: 154, baseType: !37)
!179 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !183, line: 17, size: 960, elements: !184)
!183 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!184 = !{!185, !187, !193, !194, !195, !196, !200, !201, !261, !283, !284, !3978}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !182, file: !183, line: 18, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !182, file: !183, line: 19, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !179, line: 61, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !190, line: 72, baseType: !191)
!190 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !190, line: 16, baseType: !192)
!192 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !182, file: !183, line: 20, baseType: !188, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !182, file: !183, line: 21, baseType: !188, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !182, file: !183, line: 22, baseType: !188, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !182, file: !183, line: 23, baseType: !197, size: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !179, line: 52, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !190, line: 88, baseType: !199)
!199 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !182, file: !183, line: 24, baseType: !197, size: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !182, file: !183, line: 25, baseType: !202, size: 256, offset: 448)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !203, line: 66, size: 256, elements: !204)
!203 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!204 = !{!205, !216, !250, !255}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !202, file: !203, line: 67, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !207, line: 13, baseType: !208)
!207 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !179, line: 181, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 179, size: 64, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !209, file: !179, line: 180, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !213, line: 22, baseType: !214)
!213 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !215, line: 30, baseType: !199)
!215 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!216 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !202, file: !203, line: 68, baseType: !217, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !218, line: 23, baseType: !219)
!218 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !218, line: 14, size: 32, elements: !220)
!220 = !{!221}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !219, file: !218, line: 15, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !223, line: 44, baseType: !224)
!223 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !223, line: 14, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !223, line: 15, baseType: !227, size: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !223, line: 15, size: 32, elements: !228)
!228 = !{!229, !234, !242}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !227, file: !223, line: 16, baseType: !230, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !179, line: 174, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 172, size: 32, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !231, file: !179, line: 173, baseType: !115, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !227, file: !223, line: 24, baseType: !235, size: 16)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !227, file: !223, line: 24, size: 16, elements: !236)
!236 = !{!237, !241}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !235, file: !223, line: 25, baseType: !238, size: 8)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !213, line: 17, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !215, line: 21, baseType: !240)
!240 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !235, file: !223, line: 26, baseType: !238, size: 8, offset: 8)
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !227, file: !223, line: 28, baseType: !243, size: 32)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !227, file: !223, line: 28, size: 32, elements: !244)
!244 = !{!245, !249}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !243, file: !223, line: 29, baseType: !246, size: 16)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !213, line: 19, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !215, line: 24, baseType: !248)
!248 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !243, file: !223, line: 30, baseType: !246, size: 16, offset: 16)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !202, file: !203, line: 70, baseType: !251, size: 32, offset: 96)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !252, line: 15, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !251, file: !252, line: 20, baseType: !230, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !202, file: !203, line: 72, baseType: !256, size: 128, offset: 128)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !179, line: 190, size: 128, elements: !257)
!257 = !{!258, !260}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !179, line: 191, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !256, file: !179, line: 191, baseType: !259, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !182, file: !183, line: 26, baseType: !262, size: 64, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !183, line: 32, size: 256, elements: !265)
!265 = !{!266, !271, !275, !279}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !264, file: !183, line: 33, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!180, !181, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !264, file: !183, line: 34, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !181, !180}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !183, line: 35, baseType: !276, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!180, !181, !180, !270}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !264, file: !183, line: 36, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!115, !181, !180}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !182, file: !183, line: 27, baseType: !115, size: 32, offset: 768)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !182, file: !183, line: 28, baseType: !285, size: 64, offset: 832)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 994, size: 1856, align: 64, elements: !288)
!288 = !{!289, !308, !317, !319, !320, !321, !322, !323, !404, !629, !638, !3968, !3969, !3970, !3971, !3972, !3973, !3975, !3976, !3977}
!289 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !44, line: 995, baseType: !290, size: 128)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !44, line: 995, size: 128, elements: !291)
!291 = !{!292, !298, !307}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !290, file: !44, line: 996, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !294, line: 60, size: 64, elements: !295)
!294 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !293, file: !294, line: 61, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !290, file: !44, line: 997, baseType: !299, size: 128, align: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !179, line: 232, size: 128, align: 64, elements: !300)
!300 = !{!301, !303}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !179, line: 233, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !299, file: !179, line: 234, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !302}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !290, file: !44, line: 998, baseType: !37, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !287, file: !44, line: 1005, baseType: !309, size: 32, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !310, line: 29, baseType: !311)
!310 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !310, line: 17, size: 32, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !310, line: 18, baseType: !314, size: 32)
!314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !310, line: 18, size: 32, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !314, file: !310, line: 19, baseType: !219, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !287, file: !44, line: 1006, baseType: !318, size: 32, offset: 160)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !179, line: 156, baseType: !37)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !287, file: !44, line: 1007, baseType: !206, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !287, file: !44, line: 1008, baseType: !202, size: 256, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !287, file: !44, line: 1009, baseType: !197, size: 64, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !287, file: !44, line: 1010, baseType: !37, size: 32, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !287, file: !44, line: 1011, baseType: !324, size: 256, offset: 640)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 948, size: 256, elements: !325)
!325 = !{!326, !349, !393, !394, !402, !403}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !324, file: !44, line: 949, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !328, line: 34, baseType: !329)
!328 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 25, size: 64, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !329, file: !328, line: 26, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !333, line: 27, baseType: !334)
!333 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !333, line: 13, size: 64, elements: !335)
!335 = !{!336, !348}
!336 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !333, line: 14, baseType: !337, size: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !333, line: 14, size: 32, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !337, file: !333, line: 15, baseType: !230, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !333, line: 16, baseType: !341, size: 32)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !337, file: !333, line: 16, size: 32, elements: !342)
!342 = !{!343, !344}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !341, file: !333, line: 18, baseType: !238, size: 8)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !341, file: !333, line: 19, baseType: !345, size: 24, offset: 8)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 24, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 3)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !334, file: !333, line: 26, baseType: !222, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !324, file: !44, line: 950, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !49, line: 59, size: 768, elements: !352)
!352 = !{!353, !359, !360, !361, !374, !375, !382, !383}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !351, file: !49, line: 61, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !355, line: 113, baseType: !356)
!355 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !355, line: 111, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !356, file: !355, line: 112, baseType: !230, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !351, file: !49, line: 62, baseType: !37, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !351, file: !49, line: 63, baseType: !309, size: 32, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !351, file: !49, line: 65, baseType: !362, size: 256, offset: 128)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 256, elements: !372)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !179, line: 194, size: 64, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !363, file: !179, line: 195, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !179, line: 198, size: 128, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !179, line: 199, baseType: !366, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !367, file: !179, line: 199, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!372 = !{!373}
!373 = !DISubrange(count: 4)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !351, file: !49, line: 66, baseType: !363, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !351, file: !49, line: 68, baseType: !376, size: 192, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !377, line: 41, baseType: !378)
!377 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !377, line: 37, size: 192, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !378, file: !377, line: 38, baseType: !309, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !378, file: !377, line: 39, baseType: !256, size: 128, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !351, file: !49, line: 69, baseType: !299, size: 128, align: 64, offset: 640)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !351, file: !49, line: 70, baseType: !384, offset: 768)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, elements: !391)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !49, line: 54, size: 128, elements: !386)
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !385, file: !49, line: 55, baseType: !115, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !385, file: !49, line: 56, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !49, line: 56, flags: DIFlagFwdDecl)
!391 = !{!392}
!392 = !DISubrange(count: -1)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !324, file: !44, line: 951, baseType: !48, size: 32, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !324, file: !44, line: 952, baseType: !395, size: 32, offset: 160)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !396, line: 23, baseType: !397)
!396 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 21, size: 32, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !397, file: !396, line: 22, baseType: !400, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !179, line: 37, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !190, line: 49, baseType: !37)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !324, file: !44, line: 952, baseType: !395, size: 32, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !324, file: !44, line: 953, baseType: !115, size: 32, offset: 224)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !287, file: !44, line: 1012, baseType: !405, size: 64, offset: 896)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !408, line: 110, size: 1472, elements: !409)
!408 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!409 = !{!410, !411, !412, !419, !420, !421, !422, !423, !424, !425, !426, !435, !436, !437, !438, !439, !440, !574, !575, !576, !577, !578, !609, !612, !616, !624}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !407, file: !408, line: 111, baseType: !206, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !407, file: !408, line: 112, baseType: !395, size: 32, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !407, file: !408, line: 113, baseType: !413, size: 32, offset: 96)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !396, line: 28, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 26, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !414, file: !396, line: 27, baseType: !417, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !179, line: 38, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !190, line: 50, baseType: !37)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !407, file: !408, line: 114, baseType: !395, size: 32, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !407, file: !408, line: 115, baseType: !413, size: 32, offset: 160)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !407, file: !408, line: 116, baseType: !395, size: 32, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !407, file: !408, line: 117, baseType: !413, size: 32, offset: 224)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !407, file: !408, line: 118, baseType: !395, size: 32, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !407, file: !408, line: 119, baseType: !413, size: 32, offset: 288)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !407, file: !408, line: 120, baseType: !37, size: 32, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !407, file: !408, line: 121, baseType: !427, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !428, line: 24, baseType: !429)
!428 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 24, size: 64, elements: !430)
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !429, file: !428, line: 24, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !213, line: 23, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !215, line: 31, baseType: !434)
!434 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !407, file: !408, line: 122, baseType: !427, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !407, file: !408, line: 123, baseType: !427, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !407, file: !408, line: 124, baseType: !427, size: 64, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !407, file: !408, line: 125, baseType: !427, size: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !407, file: !408, line: 127, baseType: !240, size: 8, offset: 704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !407, file: !408, line: 129, baseType: !441, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !443, line: 195, size: 1728, elements: !444)
!443 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!444 = !{!445, !446, !451, !463, !472, !475, !476, !483, !484, !485, !486, !491, !492, !493, !495, !496, !538, !559}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !442, file: !443, line: 196, baseType: !354, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !442, file: !443, line: 197, baseType: !447, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !443, line: 28, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !179, line: 104, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !213, line: 20, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !215, line: 26, baseType: !115)
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !443, line: 198, baseType: !452, size: 192, offset: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 198, size: 192, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !452, file: !443, line: 199, baseType: !256, size: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !452, file: !443, line: 200, baseType: !456, size: 192, align: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !457, line: 5, size: 192, align: 64, elements: !458)
!457 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!458 = !{!459, !460, !462}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !456, file: !457, line: 6, baseType: !192, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !456, file: !457, line: 7, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !456, file: !457, line: 8, baseType: !461, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !442, file: !443, line: 205, baseType: !464, size: 320, offset: 256)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !465, line: 48, size: 320, elements: !466)
!465 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!466 = !{!467, !468, !469, !470, !471}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !464, file: !465, line: 49, baseType: !206, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !464, file: !465, line: 55, baseType: !206, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !464, file: !465, line: 57, baseType: !251, size: 32, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !464, file: !465, line: 59, baseType: !217, size: 32, offset: 160)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !464, file: !465, line: 60, baseType: !256, size: 128, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !442, file: !443, line: 206, baseType: !473, size: 64, offset: 576)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !443, line: 206, flags: DIFlagFwdDecl)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !442, file: !443, line: 207, baseType: !180, size: 64, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !443, line: 208, baseType: !477, size: 64, offset: 704)
!477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 208, size: 64, elements: !478)
!478 = !{!479, !482}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !477, file: !443, line: 209, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !481, line: 8, baseType: !214)
!481 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!482 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !477, file: !443, line: 210, baseType: !480, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !442, file: !443, line: 212, baseType: !480, size: 64, offset: 768)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !442, file: !443, line: 213, baseType: !395, size: 32, offset: 832)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !442, file: !443, line: 214, baseType: !413, size: 32, offset: 864)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !442, file: !443, line: 215, baseType: !487, size: 32, offset: 896)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !443, line: 31, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !179, line: 110, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !213, line: 21, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !215, line: 27, baseType: !37)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !442, file: !443, line: 216, baseType: !248, size: 16, offset: 928)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !442, file: !443, line: 217, baseType: !248, size: 16, offset: 944)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !442, file: !443, line: 221, baseType: !494, size: 16, offset: 960)
!494 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !443, line: 228, baseType: !192, size: 64, offset: 1024)
!496 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !443, line: 245, baseType: !497, size: 320, offset: 1088)
!497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 245, size: 320, elements: !498)
!498 = !{!499, !530}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !497, file: !443, line: 246, baseType: !500, size: 320)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !443, line: 114, size: 320, elements: !501)
!501 = !{!502, !503, !515, !518, !527}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !500, file: !443, line: 116, baseType: !192, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !443, line: 117, baseType: !504, size: 64, offset: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !443, line: 117, size: 64, elements: !505)
!505 = !{!506, !514}
!506 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !443, line: 118, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !504, file: !443, line: 118, size: 64, elements: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !507, file: !443, line: 120, baseType: !246, size: 16)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !507, file: !443, line: 121, baseType: !511, size: 48, offset: 16)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 6)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !504, file: !443, line: 127, baseType: !192, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !443, line: 129, baseType: !516, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !443, line: 102, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !500, file: !443, line: 130, baseType: !519, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !443, line: 108, size: 192, elements: !521)
!521 = !{!522, !523, !524}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !520, file: !443, line: 109, baseType: !299, size: 128, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !520, file: !443, line: 110, baseType: !354, size: 32, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !520, file: !443, line: 111, baseType: !525, size: 8, offset: 160)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !179, line: 35, baseType: !526)
!526 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !500, file: !443, line: 131, baseType: !528, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!530 = !DIDerivedType(tag: DW_TAG_member, scope: !497, file: !443, line: 247, baseType: !531, size: 320)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !497, file: !443, line: 247, size: 320, elements: !532)
!532 = !{!533, !534, !535, !536, !537}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !531, file: !443, line: 248, baseType: !192, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !531, file: !443, line: 249, baseType: !192, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !531, file: !443, line: 250, baseType: !516, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !531, file: !443, line: 251, baseType: !519, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !531, file: !443, line: 252, baseType: !186, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !443, line: 260, baseType: !539, size: 256, offset: 1408)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 260, size: 256, elements: !540)
!540 = !{!541, !547}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !539, file: !443, line: 261, baseType: !542, size: 256)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !443, line: 134, size: 256, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !542, file: !443, line: 135, baseType: !180, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !542, file: !443, line: 136, baseType: !546, size: 256)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 256, elements: !372)
!547 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !443, line: 262, baseType: !548, size: 256)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !539, file: !443, line: 262, size: 256, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !548, file: !443, line: 264, baseType: !256, size: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !548, file: !443, line: 265, baseType: !552, size: 128, offset: 128)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !553, line: 22, size: 128, elements: !554)
!553 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!554 = !{!555, !558}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !552, file: !553, line: 23, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !553, line: 23, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !552, file: !553, line: 24, baseType: !192, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !442, file: !443, line: 280, baseType: !560, size: 64, offset: 1664)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !443, line: 176, size: 192, elements: !562)
!562 = !{!563, !572, !573}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !561, file: !443, line: 177, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !443, line: 171, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!115, !441, !568, !570, !441}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !561, file: !443, line: 178, baseType: !441, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !561, file: !443, line: 179, baseType: !516, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !407, file: !408, line: 130, baseType: !441, size: 64, offset: 832)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !407, file: !408, line: 131, baseType: !441, size: 64, offset: 896)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !407, file: !408, line: 132, baseType: !441, size: 64, offset: 960)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !407, file: !408, line: 135, baseType: !180, size: 64, offset: 1024)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !407, file: !408, line: 137, baseType: !579, size: 64, offset: 1088)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !581, line: 14, size: 1088, elements: !582)
!581 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!582 = !{!583, !584, !593, !594, !595, !596, !597, !598}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !580, file: !581, line: 15, baseType: !354, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !580, file: !581, line: 17, baseType: !585, size: 320, offset: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !586, line: 22, size: 320, elements: !587)
!586 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!587 = !{!588, !589, !590, !591}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !585, file: !586, line: 23, baseType: !217, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !585, file: !586, line: 24, baseType: !212, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !585, file: !586, line: 26, baseType: !256, size: 128, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !585, file: !586, line: 28, baseType: !592, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !580, file: !581, line: 19, baseType: !192, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !580, file: !581, line: 20, baseType: !206, size: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !580, file: !581, line: 23, baseType: !367, size: 128, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !580, file: !581, line: 24, baseType: !395, size: 32, offset: 640)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !580, file: !581, line: 29, baseType: !206, size: 64, offset: 704)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !580, file: !581, line: 36, baseType: !599, size: 320, offset: 768)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !600, line: 15, size: 320, elements: !601)
!600 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!601 = !{!602, !603, !604, !605, !606, !607, !608}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !599, file: !600, line: 16, baseType: !217, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !599, file: !600, line: 18, baseType: !115, size: 32, offset: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !599, file: !600, line: 19, baseType: !115, size: 32, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !599, file: !600, line: 20, baseType: !115, size: 32, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !599, file: !600, line: 21, baseType: !115, size: 32, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !599, file: !600, line: 22, baseType: !192, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !600, line: 23, baseType: !192, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !407, file: !408, line: 138, baseType: !610, size: 64, offset: 1152)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !396, line: 18, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !407, file: !408, line: 139, baseType: !613, size: 64, offset: 1216)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !615, line: 16, flags: DIFlagFwdDecl)
!615 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!616 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !407, file: !408, line: 140, baseType: !617, size: 64, offset: 1280)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !408, line: 25, size: 64, elements: !619)
!619 = !{!620, !621, !622}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !618, file: !408, line: 26, baseType: !230, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !618, file: !408, line: 27, baseType: !115, size: 32, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !618, file: !408, line: 28, baseType: !623, offset: 64)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, elements: !391)
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !408, line: 142, baseType: !625, size: 128, offset: 1344)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !408, line: 142, size: 128, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !625, file: !408, line: 143, baseType: !115, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !625, file: !408, line: 144, baseType: !299, size: 128, align: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !287, file: !44, line: 1013, baseType: !630, size: 256, offset: 960)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 970, size: 256, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !630, file: !44, line: 971, baseType: !192, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !630, file: !44, line: 972, baseType: !37, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !630, file: !44, line: 973, baseType: !37, size: 32, offset: 96)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !630, file: !44, line: 974, baseType: !37, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !630, file: !44, line: 975, baseType: !37, size: 32, offset: 160)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !630, file: !44, line: 976, baseType: !197, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !287, file: !44, line: 1014, baseType: !639, size: 128, offset: 1216)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !640, line: 8, size: 128, elements: !641)
!640 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!641 = !{!642, !3967}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !639, file: !640, line: 9, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !645, line: 70, size: 256, elements: !646)
!645 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!646 = !{!647, !3964, !3965, !3966}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !644, file: !645, line: 71, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !650, line: 82, size: 1536, elements: !651)
!650 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!651 = !{!652, !653, !663, !671, !672, !687, !3932, !3934, !3947, !3948, !3949, !3950, !3951, !3956, !3957, !3958}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !649, file: !650, line: 84, baseType: !37, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !649, file: !650, line: 85, baseType: !654, size: 32, offset: 32)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !655, line: 275, baseType: !656)
!655 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !655, line: 275, size: 32, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !656, file: !655, line: 275, baseType: !659, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !655, line: 69, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !655, line: 64, size: 32, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !660, file: !655, line: 65, baseType: !37, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !649, file: !650, line: 86, baseType: !664, size: 128, offset: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !665, line: 38, size: 128, elements: !666)
!665 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!666 = !{!667, !669}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !664, file: !665, line: 39, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !664, file: !665, line: 39, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !649, file: !650, line: 87, baseType: !648, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !649, file: !650, line: 88, baseType: !673, size: 128, offset: 256)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !650, line: 49, size: 128, elements: !674)
!674 = !{!675, !684}
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !650, line: 50, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !673, file: !650, line: 50, size: 64, elements: !677)
!677 = !{!678, !683}
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !650, line: 51, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !676, file: !650, line: 51, size: 64, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !679, file: !650, line: 52, baseType: !489, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !679, file: !650, line: 52, baseType: !489, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !676, file: !650, line: 54, baseType: !432, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !673, file: !650, line: 56, baseType: !685, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !649, file: !650, line: 89, baseType: !688, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 641, size: 4800, elements: !690)
!690 = !{!691, !693, !694, !695, !696, !697, !698, !701, !702, !897, !3748, !3749, !3750, !3751, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3914, !3917, !3918, !3919, !3928, !3929, !3930, !3931}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !689, file: !44, line: 642, baseType: !692, size: 16)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !179, line: 24, baseType: !248)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !689, file: !44, line: 643, baseType: !248, size: 16, offset: 16)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !689, file: !44, line: 644, baseType: !395, size: 32, offset: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !689, file: !44, line: 645, baseType: !256, size: 128, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !689, file: !44, line: 646, baseType: !413, size: 32, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !689, file: !44, line: 647, baseType: !37, size: 32, offset: 224)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !689, file: !44, line: 650, baseType: !699, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 607, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !689, file: !44, line: 651, baseType: !699, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !689, file: !44, line: 654, baseType: !703, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1966, size: 2048, align: 512, elements: !706)
!706 = !{!707, !711, !724, !730, !734, !738, !742, !746, !750, !754, !758, !759, !765, !769, !808, !839, !846, !852, !856, !860, !864, !868, !872, !878, !882}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !705, file: !44, line: 1967, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!648, !688, !648, !37}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !705, file: !44, line: 1968, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!528, !648, !688, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !717, line: 10, size: 128, elements: !718)
!717 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!718 = !{!719, !723}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !716, file: !717, line: 11, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !180}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !716, file: !717, line: 12, baseType: !180, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !705, file: !44, line: 1969, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!115, !728, !688, !115}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !428, line: 42, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !705, file: !44, line: 1970, baseType: !731, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!699, !688, !115, !525}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !705, file: !44, line: 1972, baseType: !735, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!115, !648, !186, !115}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !705, file: !44, line: 1974, baseType: !739, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!115, !728, !688, !648, !692, !525}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !705, file: !44, line: 1976, baseType: !743, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!115, !648, !688, !648}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !705, file: !44, line: 1977, baseType: !747, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!115, !688, !648}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !705, file: !44, line: 1978, baseType: !751, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!115, !728, !688, !648, !528}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !705, file: !44, line: 1980, baseType: !755, size: 64, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!115, !728, !688, !648, !692}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !705, file: !44, line: 1982, baseType: !747, size: 64, offset: 640)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !705, file: !44, line: 1983, baseType: !760, size: 64, offset: 704)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!115, !728, !688, !648, !692, !763}
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !179, line: 21, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !179, line: 18, baseType: !489)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !705, file: !44, line: 1985, baseType: !766, size: 64, offset: 768)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!115, !728, !688, !648, !688, !648, !37}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !705, file: !44, line: 1987, baseType: !770, size: 64, offset: 832)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!115, !728, !648, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 226, size: 640, elements: !775)
!775 = !{!776, !777, !778, !788, !797, !798, !804, !805, !806}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !774, file: !44, line: 227, baseType: !37, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !774, file: !44, line: 228, baseType: !692, size: 16, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !44, line: 241, baseType: !779, size: 32, offset: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !44, line: 241, size: 32, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !779, file: !44, line: 242, baseType: !395, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !779, file: !44, line: 243, baseType: !783, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !784, line: 16, baseType: !785)
!784 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !784, line: 14, size: 32, elements: !786)
!786 = !{!787}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !785, file: !784, line: 15, baseType: !400, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !44, line: 245, baseType: !789, size: 32, offset: 96)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !44, line: 245, size: 32, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !789, file: !44, line: 246, baseType: !413, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !789, file: !44, line: 247, baseType: !793, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !784, line: 20, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !784, line: 18, size: 32, elements: !795)
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !794, file: !784, line: 19, baseType: !417, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !774, file: !44, line: 249, baseType: !197, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !774, file: !44, line: 250, baseType: !799, size: 128, offset: 192)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !481, line: 13, size: 128, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !799, file: !481, line: 14, baseType: !480, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !799, file: !481, line: 15, baseType: !803, size: 64, offset: 64)
!803 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !774, file: !44, line: 251, baseType: !799, size: 128, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !774, file: !44, line: 252, baseType: !799, size: 128, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !774, file: !44, line: 259, baseType: !807, size: 64, offset: 576)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !705, file: !44, line: 1988, baseType: !809, size: 64, offset: 896)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!115, !728, !812, !814, !489, !37}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !816, line: 22, size: 1280, elements: !817)
!816 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!817 = !{!818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !815, file: !816, line: 23, baseType: !489, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !815, file: !816, line: 24, baseType: !692, size: 16, offset: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !815, file: !816, line: 25, baseType: !37, size: 32, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !815, file: !816, line: 26, baseType: !488, size: 32, offset: 96)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !815, file: !816, line: 27, baseType: !432, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !815, file: !816, line: 28, baseType: !432, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !815, file: !816, line: 41, baseType: !432, size: 64, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !815, file: !816, line: 42, baseType: !763, size: 32, offset: 320)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !815, file: !816, line: 43, baseType: !763, size: 32, offset: 352)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !815, file: !816, line: 44, baseType: !395, size: 32, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !815, file: !816, line: 45, baseType: !413, size: 32, offset: 416)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !815, file: !816, line: 46, baseType: !197, size: 64, offset: 448)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !815, file: !816, line: 47, baseType: !799, size: 128, offset: 512)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !815, file: !816, line: 48, baseType: !799, size: 128, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !815, file: !816, line: 49, baseType: !799, size: 128, offset: 768)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !815, file: !816, line: 50, baseType: !799, size: 128, offset: 896)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !815, file: !816, line: 51, baseType: !432, size: 64, offset: 1024)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !815, file: !816, line: 52, baseType: !432, size: 64, offset: 1088)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !815, file: !816, line: 53, baseType: !489, size: 32, offset: 1152)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !815, file: !816, line: 54, baseType: !489, size: 32, offset: 1184)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !815, file: !816, line: 55, baseType: !432, size: 64, offset: 1216)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !705, file: !44, line: 1990, baseType: !840, size: 64, offset: 960)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!843, !648, !186, !188}
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !179, line: 66, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !190, line: 73, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !190, line: 15, baseType: !803)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !705, file: !44, line: 1991, baseType: !847, size: 64, offset: 1024)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!115, !688, !850, !432, !432}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 55, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !705, file: !44, line: 1993, baseType: !853, size: 64, offset: 1088)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!115, !688, !115}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !705, file: !44, line: 1994, baseType: !857, size: 64, offset: 1152)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!115, !688, !648, !807, !37, !692}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !705, file: !44, line: 1997, baseType: !861, size: 64, offset: 1216)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!115, !728, !688, !807, !692}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !705, file: !44, line: 1999, baseType: !865, size: 64, offset: 1280)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!699, !728, !648, !115}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !705, file: !44, line: 2001, baseType: !869, size: 64, offset: 1344)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!115, !728, !648, !699, !115}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !705, file: !44, line: 2003, baseType: !873, size: 64, offset: 1408)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!115, !728, !648, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !44, line: 76, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !705, file: !44, line: 2005, baseType: !879, size: 64, offset: 1472)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!115, !648, !876}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !705, file: !44, line: 2006, baseType: !883, size: 64, offset: 1536)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!886, !688}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !44, line: 3192, size: 192, elements: !888)
!888 = !{!889, !896}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !887, file: !44, line: 3193, baseType: !890, size: 128)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !891, line: 296, size: 128, elements: !892)
!891 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !890, file: !891, line: 297, baseType: !309, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !890, file: !891, line: 299, baseType: !178, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !890, file: !891, line: 300, baseType: !180, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !887, file: !44, line: 3194, baseType: !489, size: 32, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !689, file: !44, line: 655, baseType: !898, size: 64, offset: 448)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1190, size: 10752, elements: !900)
!900 = !{!901, !902, !903, !904, !905, !906, !2084, !2216, !2256, !2339, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2356, !2360, !2361, !2364, !2367, !2370, !2373, !2374, !2375, !2416, !3623, !3624, !3625, !3626, !3627, !3628, !3631, !3633, !3640, !3641, !3642, !3643, !3702, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !899, file: !44, line: 1191, baseType: !256, size: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !899, file: !44, line: 1192, baseType: !763, size: 32, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !899, file: !44, line: 1193, baseType: !240, size: 8, offset: 160)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !899, file: !44, line: 1194, baseType: !192, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !899, file: !44, line: 1195, baseType: !197, size: 64, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !899, file: !44, line: 1196, baseType: !907, size: 64, offset: 320)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2366, size: 576, elements: !909)
!909 = !{!910, !911, !912, !919, !923, !927, !931, !2072, !2073, !2074, !2076, !2077, !2078, !2080, !2081, !2082, !2083}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !908, file: !44, line: 2367, baseType: !528, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !908, file: !44, line: 2368, baseType: !115, size: 32, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !908, file: !44, line: 2376, baseType: !913, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!115, !916}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !918, line: 32, flags: DIFlagFwdDecl)
!918 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!919 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !908, file: !44, line: 2377, baseType: !920, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !922)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 75, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !908, file: !44, line: 2378, baseType: !924, size: 64, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!648, !907, !115, !528, !180}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !908, file: !44, line: 2380, baseType: !928, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !898}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !908, file: !44, line: 2381, baseType: !932, size: 64, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !36, line: 402, size: 9216, align: 512, elements: !934)
!934 = !{!935, !936, !937, !941, !1728, !1754, !1755, !1756, !1757, !1761, !1764, !1765, !1766, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1834, !1838, !1858, !1876, !1877, !1878, !1879, !1888, !1911, !1912, !1915, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1929, !1930, !2030, !2038, !2039, !2040, !2042, !2046, !2047, !2051, !2052, !2053, !2054, !2056, !2057, !2058, !2065, !2066, !2067, !2071}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !933, file: !36, line: 403, baseType: !35, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !933, file: !36, line: 406, baseType: !256, size: 128, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !933, file: !36, line: 409, baseType: !938, size: 448, offset: 192)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !939)
!939 = !{!940}
!940 = !DISubrange(count: 56)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !933, file: !36, line: 417, baseType: !942, size: 768, offset: 640)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !36, line: 45, size: 768, elements: !943)
!943 = !{!944, !1711, !1712, !1713, !1716}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !942, file: !36, line: 46, baseType: !945, size: 512)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !946, line: 64, size: 512, elements: !947)
!946 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!947 = !{!948, !949, !950, !952, !996, !1597, !1701, !1706, !1707, !1708, !1709, !1710}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !945, file: !946, line: 65, baseType: !528, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !945, file: !946, line: 66, baseType: !256, size: 128, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !945, file: !946, line: 67, baseType: !951, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !945, file: !946, line: 68, baseType: !953, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !946, line: 168, size: 768, elements: !955)
!955 = !{!956, !957, !958, !959}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !954, file: !946, line: 169, baseType: !256, size: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !954, file: !946, line: 170, baseType: !309, size: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !954, file: !946, line: 171, baseType: !945, size: 512, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !954, file: !946, line: 172, baseType: !960, size: 64, offset: 704)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !946, line: 133, size: 192, elements: !963)
!963 = !{!964, !971, !976}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !962, file: !946, line: 134, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!115, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !962, file: !946, line: 135, baseType: !972, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!528, !969}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !962, file: !946, line: 136, baseType: !977, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!115, !969, !981}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !946, line: 125, size: 20736, elements: !983)
!983 = !{!984, !986, !990, !991, !995}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !982, file: !946, line: 126, baseType: !985, size: 192)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 192, elements: !346)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !982, file: !946, line: 127, baseType: !987, size: 4096, offset: 192)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 4096, elements: !988)
!988 = !{!989}
!989 = !DISubrange(count: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !982, file: !946, line: 128, baseType: !115, size: 32, offset: 4288)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !982, file: !946, line: 129, baseType: !992, size: 16384, offset: 4320)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: 2048)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !982, file: !946, line: 130, baseType: !115, size: 32, offset: 20704)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !945, file: !946, line: 69, baseType: !997, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !999)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !946, line: 116, size: 384, elements: !1000)
!1000 = !{!1001, !1005, !1024, !1559, !1587, !1591}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !999, file: !946, line: 117, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !951}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !999, file: !946, line: 118, baseType: !1006, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1009, line: 254, size: 128, elements: !1010)
!1009 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1010 = !{!1011, !1020}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1008, file: !1009, line: 255, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!843, !951, !1015, !186}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1009, line: 30, size: 128, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1016, file: !1009, line: 31, baseType: !528, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1016, file: !1009, line: 32, baseType: !692, size: 16, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1008, file: !1009, line: 256, baseType: !1021, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!843, !951, !1015, !528, !188}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !999, file: !946, line: 119, baseType: !1025, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1009, line: 84, size: 320, elements: !1029)
!1029 = !{!1030, !1031, !1035, !1555, !1557}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1028, file: !1009, line: 85, baseType: !528, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1028, file: !1009, line: 86, baseType: !1032, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!692, !951, !1015, !115}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1028, file: !1009, line: 88, baseType: !1036, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!692, !951, !1039, !115}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1009, line: 175, size: 512, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1322, !1326, !1327}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1040, file: !1009, line: 176, baseType: !1016, size: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1040, file: !1009, line: 177, baseType: !188, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1040, file: !1009, line: 178, baseType: !180, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1040, file: !1009, line: 179, baseType: !1046, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 472, size: 1536, align: 64, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1065, !1066, !1067, !1314, !1315, !1316, !1319, !1320, !1321}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1050, file: !44, line: 473, baseType: !688, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1050, file: !44, line: 474, baseType: !890, size: 128, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1050, file: !44, line: 475, baseType: !464, size: 320, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1050, file: !44, line: 476, baseType: !178, size: 32, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1050, file: !44, line: 477, baseType: !230, size: 32, offset: 544)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1050, file: !44, line: 482, baseType: !1058, size: 128, offset: 576)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !457, line: 26, size: 128, elements: !1059)
!1059 = !{!1060, !1064}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1058, file: !457, line: 27, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !457, line: 12, size: 64, elements: !1062)
!1062 = !{!1063}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1061, file: !457, line: 13, baseType: !461, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1058, file: !457, line: 28, baseType: !461, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1050, file: !44, line: 483, baseType: !192, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1050, file: !44, line: 484, baseType: !192, size: 64, offset: 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1050, file: !44, line: 485, baseType: !1068, size: 64, offset: 832)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 404, size: 1280, elements: !1071)
!1071 = !{!1072, !1139, !1209, !1213, !1217, !1223, !1229, !1233, !1238, !1242, !1246, !1250, !1278, !1282, !1286, !1290, !1295, !1299, !1306, !1310}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1070, file: !44, line: 405, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!115, !1076, !1137}
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1078, line: 74, size: 512, align: 128, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1079 = !{!1080, !1081, !1131, !1136}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !1078, line: 75, baseType: !192, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !1078, line: 83, baseType: !1082, size: 320, offset: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !1078, line: 83, size: 320, elements: !1083)
!1083 = !{!1084, !1105, !1119, !1123, !1130}
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !1078, line: 84, baseType: !1085, size: 320)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !1078, line: 84, size: 320, elements: !1086)
!1086 = !{!1087, !1098, !1099, !1104}
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !1078, line: 90, baseType: !1088, size: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !1078, line: 90, size: 128, elements: !1089)
!1089 = !{!1090, !1091, !1096, !1097}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1088, file: !1078, line: 91, baseType: !256, size: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !1078, line: 94, baseType: !1092, size: 128)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !1078, line: 94, size: 128, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1092, file: !1078, line: 96, baseType: !180, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1092, file: !1078, line: 98, baseType: !37, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1088, file: !1078, line: 102, baseType: !256, size: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1088, file: !1078, line: 103, baseType: !256, size: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1085, file: !1078, line: 106, baseType: !1049, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !1078, line: 107, baseType: !1100, size: 64, offset: 192)
!1100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !1078, line: 107, size: 64, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1100, file: !1078, line: 108, baseType: !192, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1100, file: !1078, line: 109, baseType: !192, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1085, file: !1078, line: 117, baseType: !192, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !1078, line: 119, baseType: !1106, size: 320)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !1078, line: 119, size: 320, elements: !1107)
!1107 = !{!1108, !1109, !1112, !1113, !1114}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1106, file: !1078, line: 124, baseType: !192, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1106, file: !1078, line: 125, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1078, line: 125, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1106, file: !1078, line: 126, baseType: !192, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1106, file: !1078, line: 127, baseType: !192, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !1078, line: 128, baseType: !1115, size: 64, offset: 256)
!1115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !1078, line: 128, size: 64, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1115, file: !1078, line: 133, baseType: !192, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1115, file: !1078, line: 138, baseType: !206, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !1078, line: 141, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !1078, line: 141, size: 64, elements: !1121)
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1120, file: !1078, line: 142, baseType: !192, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !1078, line: 144, baseType: !1124, size: 128)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !1078, line: 144, size: 128, elements: !1125)
!1125 = !{!1126, !1129}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1124, file: !1078, line: 146, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1078, line: 146, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1124, file: !1078, line: 147, baseType: !180, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1082, file: !1078, line: 161, baseType: !299, size: 128, align: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !1078, line: 164, baseType: !1132, size: 32, offset: 384)
!1132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !1078, line: 164, size: 32, elements: !1133)
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1132, file: !1078, line: 169, baseType: !230, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1132, file: !1078, line: 177, baseType: !37, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1077, file: !1078, line: 181, baseType: !230, size: 32, offset: 416)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 309, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1070, file: !44, line: 406, baseType: !1140, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!115, !807, !1143}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1078, line: 293, size: 1536, elements: !1145)
!1145 = !{!1146, !1176, !1190}
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !1078, line: 295, baseType: !1147, size: 512)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !1078, line: 295, size: 512, elements: !1148)
!1148 = !{!1149, !1175}
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1147, file: !1078, line: 296, baseType: !1150, size: 448)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1147, file: !1078, line: 296, size: 448, elements: !1151)
!1151 = !{!1152, !1153, !1162, !1163, !1164, !1173, !1174}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1150, file: !1078, line: 298, baseType: !192, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !1078, line: 299, baseType: !1154, size: 128, offset: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !1078, line: 299, size: 128, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1154, file: !1078, line: 300, baseType: !256, size: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, scope: !1154, file: !1078, line: 302, baseType: !1158, size: 128)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1154, file: !1078, line: 302, size: 128, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1158, file: !1078, line: 303, baseType: !180, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1158, file: !1078, line: 305, baseType: !37, size: 32, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1150, file: !1078, line: 310, baseType: !1049, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1150, file: !1078, line: 311, baseType: !192, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !1078, line: 312, baseType: !1165, size: 64, offset: 320)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !1078, line: 312, size: 64, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1165, file: !1078, line: 313, baseType: !180, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1165, file: !1078, line: 314, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1078, line: 257, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1078, line: 255, size: 64, elements: !1171)
!1171 = !{!1172}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1170, file: !1078, line: 256, baseType: !192, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1150, file: !1078, line: 316, baseType: !230, size: 32, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1150, file: !1078, line: 317, baseType: !230, size: 32, offset: 416)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1147, file: !1078, line: 323, baseType: !1077, size: 512, align: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !1078, line: 325, baseType: !1177, size: 512, offset: 512)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !1078, line: 325, size: 512, elements: !1178)
!1178 = !{!1179, !1189}
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !1078, line: 326, baseType: !1180, size: 320)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1177, file: !1078, line: 326, size: 320, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187, !1188}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1180, file: !1078, line: 327, baseType: !192, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1180, file: !1078, line: 328, baseType: !192, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1180, file: !1078, line: 329, baseType: !192, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1180, file: !1078, line: 331, baseType: !230, size: 32, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1180, file: !1078, line: 332, baseType: !230, size: 32, offset: 224)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1180, file: !1078, line: 333, baseType: !230, size: 32, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1180, file: !1078, line: 335, baseType: !37, size: 32, offset: 288)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1177, file: !1078, line: 339, baseType: !1077, size: 512, align: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !1078, line: 341, baseType: !1191, size: 512, offset: 1024)
!1191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !1078, line: 341, size: 512, elements: !1192)
!1192 = !{!1193, !1202, !1208}
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1078, line: 342, baseType: !1194, size: 384)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1191, file: !1078, line: 342, size: 384, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1194, file: !1078, line: 343, baseType: !192, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1194, file: !1078, line: 344, baseType: !192, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1194, file: !1078, line: 346, baseType: !180, size: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1194, file: !1078, line: 347, baseType: !180, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1194, file: !1078, line: 348, baseType: !180, size: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1194, file: !1078, line: 349, baseType: !180, size: 64, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1078, line: 352, baseType: !1203, size: 256)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1191, file: !1078, line: 352, size: 256, elements: !1204)
!1204 = !{!1205, !1206, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1203, file: !1078, line: 353, baseType: !192, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1203, file: !1078, line: 354, baseType: !192, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1203, file: !1078, line: 356, baseType: !256, size: 128, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1191, file: !1078, line: 359, baseType: !1077, size: 512, align: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1070, file: !44, line: 409, baseType: !1210, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!115, !1049, !1137}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1070, file: !44, line: 412, baseType: !1214, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!525, !1049, !1143}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1070, file: !44, line: 414, baseType: !1218, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 310, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1070, file: !44, line: 416, baseType: !1224, size: 64, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!115, !807, !1049, !197, !37, !1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1070, file: !44, line: 419, baseType: !1230, size: 64, offset: 384)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!115, !807, !1049, !197, !37, !37, !1076, !180}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1070, file: !44, line: 424, baseType: !1234, size: 64, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!1237, !1049, !1237}
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !179, line: 131, baseType: !432)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1070, file: !44, line: 425, baseType: !1239, size: 64, offset: 512)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !1143, !188, !188}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1070, file: !44, line: 426, baseType: !1243, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!525, !1143, !178}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1070, file: !44, line: 427, baseType: !1247, size: 64, offset: 640)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !1143}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1070, file: !44, line: 428, baseType: !1251, size: 64, offset: 704)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!843, !1254, !1276}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 373, size: 384, elements: !1256)
!1256 = !{!1257, !1258, !1259, !1263, !1264, !1265, !1266}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1255, file: !44, line: 374, baseType: !807, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1255, file: !44, line: 375, baseType: !197, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1255, file: !44, line: 376, baseType: !1260, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !1254, !803}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1255, file: !44, line: 377, baseType: !180, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1255, file: !44, line: 378, baseType: !115, size: 32, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1255, file: !44, line: 379, baseType: !246, size: 16, offset: 288)
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1255, file: !44, line: 380, baseType: !1267, size: 64, offset: 320)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1255, file: !44, line: 380, size: 64, elements: !1268)
!1268 = !{!1269, !1272}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1267, file: !44, line: 386, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 386, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1267, file: !44, line: 395, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!843, !180}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 69, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1070, file: !44, line: 433, baseType: !1279, size: 64, offset: 768)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!115, !1049, !1143, !1143, !80}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1070, file: !44, line: 435, baseType: !1283, size: 64, offset: 832)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!115, !1143}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1070, file: !44, line: 436, baseType: !1287, size: 64, offset: 896)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!525, !1143, !188, !188}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1070, file: !44, line: 438, baseType: !1291, size: 64, offset: 960)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !1143, !1294, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1070, file: !44, line: 439, baseType: !1296, size: 64, offset: 1024)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!115, !1049, !1076}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1070, file: !44, line: 442, baseType: !1300, size: 64, offset: 1088)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!115, !1303, !807, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 66, flags: DIFlagFwdDecl)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1070, file: !44, line: 444, baseType: !1307, size: 64, offset: 1152)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{null, !807}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1070, file: !44, line: 445, baseType: !1311, size: 64, offset: 1216)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!115, !1254, !1276}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1050, file: !44, line: 486, baseType: !192, size: 64, offset: 896)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1050, file: !44, line: 487, baseType: !464, size: 320, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1050, file: !44, line: 488, baseType: !1317, size: 32, offset: 1280)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1318, line: 8, baseType: !489)
!1318 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1050, file: !44, line: 489, baseType: !309, size: 32, offset: 1312)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1050, file: !44, line: 490, baseType: !256, size: 128, offset: 1344)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1050, file: !44, line: 491, baseType: !180, size: 64, offset: 1472)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1040, file: !1009, line: 180, baseType: !1323, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!843, !807, !951, !1039, !186, !197, !188}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1040, file: !1009, line: 182, baseType: !1323, size: 64, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1040, file: !1009, line: 184, baseType: !1328, size: 64, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!115, !807, !951, !1039, !1331}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1078, line: 625, size: 1344, elements: !1333)
!1333 = !{!1334, !1343, !1512, !1518, !1525, !1526, !1531, !1532, !1537, !1538, !1541, !1545, !1546, !1547, !1548, !1549, !1553}
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !1078, line: 628, baseType: !1335, size: 128)
!1335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1332, file: !1078, line: 628, size: 128, elements: !1336)
!1336 = !{!1337, !1342}
!1337 = !DIDerivedType(tag: DW_TAG_member, scope: !1335, file: !1078, line: 629, baseType: !1338, size: 128)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1335, file: !1078, line: 629, size: 128, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1338, file: !1078, line: 631, baseType: !192, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1338, file: !1078, line: 632, baseType: !192, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1335, file: !1078, line: 635, baseType: !299, size: 128, align: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1332, file: !1078, line: 639, baseType: !1344, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1078, line: 733, size: 10240, elements: !1346)
!1346 = !{!1347, !1510}
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1345, file: !1078, line: 734, baseType: !1348, size: 10240)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1345, file: !1078, line: 734, size: 10240, elements: !1349)
!1349 = !{!1350, !1354, !1368, !1372, !1373, !1374, !1375, !1376, !1377, !1386, !1387, !1388, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1427, !1429, !1432, !1479, !1480, !1481, !1484, !1485, !1486, !1489, !1490, !1491, !1497, !1498}
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !1078, line: 739, baseType: !1351, size: 512, align: 512)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1348, file: !1078, line: 739, size: 512, align: 512, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1351, file: !1078, line: 747, baseType: !230, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1348, file: !1078, line: 750, baseType: !1355, size: 128, offset: 512)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1356, line: 218, size: 128, elements: !1357)
!1356 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1357 = !{!1358, !1366, !1367}
!1358 = !DIDerivedType(tag: DW_TAG_member, scope: !1355, file: !1356, line: 219, baseType: !1359, size: 32)
!1359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1355, file: !1356, line: 219, size: 32, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1359, file: !1356, line: 220, baseType: !309, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1359, file: !1356, line: 221, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1356, line: 197, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1356, line: 197, elements: !1365)
!1365 = !{}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1355, file: !1356, line: 223, baseType: !37, size: 32, offset: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1355, file: !1356, line: 224, baseType: !180, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1348, file: !1078, line: 752, baseType: !1369, size: 64, offset: 640)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!192, !807, !192, !192, !192, !192}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1348, file: !1078, line: 756, baseType: !192, size: 64, offset: 704)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1348, file: !1078, line: 757, baseType: !192, size: 64, offset: 768)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1348, file: !1078, line: 760, baseType: !192, size: 64, offset: 832)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1348, file: !1078, line: 761, baseType: !192, size: 64, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1348, file: !1078, line: 763, baseType: !192, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1348, file: !1078, line: 764, baseType: !1378, size: 64, offset: 1024)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1380, line: 299, baseType: !1381)
!1380 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1380, line: 299, size: 64, elements: !1382)
!1382 = !{!1383}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1381, file: !1380, line: 299, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1385, line: 18, baseType: !192)
!1385 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1348, file: !1078, line: 773, baseType: !230, size: 32, offset: 1088)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1348, file: !1078, line: 785, baseType: !230, size: 32, offset: 1120)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1348, file: !1078, line: 795, baseType: !1389, size: 64, offset: 1152)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1078, line: 726, size: 128, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1390, file: !1078, line: 727, baseType: !432, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1390, file: !1078, line: 728, baseType: !115, size: 32, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1348, file: !1078, line: 801, baseType: !192, size: 64, offset: 1216)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1348, file: !1078, line: 804, baseType: !206, size: 64, offset: 1280)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1348, file: !1078, line: 806, baseType: !115, size: 32, offset: 1344)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1348, file: !1078, line: 808, baseType: !309, size: 32, offset: 1376)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1348, file: !1078, line: 823, baseType: !464, size: 320, offset: 1408)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1348, file: !1078, line: 825, baseType: !256, size: 128, offset: 1728)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1348, file: !1078, line: 845, baseType: !115, size: 32, offset: 1856)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1348, file: !1078, line: 849, baseType: !192, size: 64, offset: 1920)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1348, file: !1078, line: 850, baseType: !192, size: 64, offset: 1984)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1348, file: !1078, line: 852, baseType: !192, size: 64, offset: 2048)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1348, file: !1078, line: 853, baseType: !192, size: 64, offset: 2112)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1348, file: !1078, line: 854, baseType: !208, size: 64, offset: 2176)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1348, file: !1078, line: 855, baseType: !192, size: 64, offset: 2240)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1348, file: !1078, line: 856, baseType: !192, size: 64, offset: 2304)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1348, file: !1078, line: 857, baseType: !192, size: 64, offset: 2368)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1348, file: !1078, line: 858, baseType: !192, size: 64, offset: 2432)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1348, file: !1078, line: 865, baseType: !659, size: 32, offset: 2496)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1348, file: !1078, line: 867, baseType: !309, size: 32, offset: 2528)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1348, file: !1078, line: 869, baseType: !192, size: 64, offset: 2560)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1348, file: !1078, line: 869, baseType: !192, size: 64, offset: 2624)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1348, file: !1078, line: 869, baseType: !192, size: 64, offset: 2688)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1348, file: !1078, line: 869, baseType: !192, size: 64, offset: 2752)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1348, file: !1078, line: 870, baseType: !192, size: 64, offset: 2816)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1348, file: !1078, line: 870, baseType: !192, size: 64, offset: 2880)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1348, file: !1078, line: 870, baseType: !192, size: 64, offset: 2944)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1348, file: !1078, line: 871, baseType: !192, size: 64, offset: 3008)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1348, file: !1078, line: 871, baseType: !192, size: 64, offset: 3072)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1348, file: !1078, line: 871, baseType: !192, size: 64, offset: 3136)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1348, file: !1078, line: 871, baseType: !192, size: 64, offset: 3200)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1348, file: !1078, line: 873, baseType: !1424, size: 3328, offset: 3264)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 3328, elements: !1425)
!1425 = !{!1426}
!1426 = !DISubrange(count: 52)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1348, file: !1078, line: 875, baseType: !1428, size: 1280, offset: 6592)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 1280, elements: !372)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1348, file: !1078, line: 877, baseType: !1430, size: 64, offset: 7872)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1078, line: 877, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1348, file: !1078, line: 880, baseType: !1433, size: 1088, offset: 7936)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1434, line: 72, baseType: !1435)
!1434 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1434, line: 23, size: 1088, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1440, !1441, !1444, !1445, !1446, !1447, !1474, !1475, !1476}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1435, file: !1434, line: 28, baseType: !432, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1435, file: !1434, line: 38, baseType: !208, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1435, file: !1434, line: 40, baseType: !192, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1435, file: !1434, line: 43, baseType: !464, size: 320, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1435, file: !1434, line: 44, baseType: !1442, size: 64, offset: 512)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1434, line: 44, flags: DIFlagFwdDecl)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1435, file: !1434, line: 48, baseType: !192, size: 64, offset: 576)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1435, file: !1434, line: 59, baseType: !202, size: 256, offset: 640)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1435, file: !1434, line: 60, baseType: !180, size: 64, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1435, file: !1434, line: 61, baseType: !1448, size: 64, offset: 960)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1450)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1451, line: 13, size: 1216, elements: !1452)
!1451 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1458, !1459, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1450, file: !1451, line: 14, baseType: !180, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1450, file: !1451, line: 15, baseType: !192, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1450, file: !1451, line: 17, baseType: !192, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1450, file: !1451, line: 17, baseType: !192, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1450, file: !1451, line: 18, baseType: !192, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1450, file: !1451, line: 18, baseType: !192, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1450, file: !1451, line: 19, baseType: !1460, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1450, file: !1451, line: 21, baseType: !803, size: 64, offset: 448)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1450, file: !1451, line: 23, baseType: !803, size: 64, offset: 512)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1450, file: !1451, line: 24, baseType: !803, size: 64, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1450, file: !1451, line: 25, baseType: !803, size: 64, offset: 640)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1450, file: !1451, line: 26, baseType: !803, size: 64, offset: 704)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1450, file: !1451, line: 27, baseType: !803, size: 64, offset: 768)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1450, file: !1451, line: 28, baseType: !803, size: 64, offset: 832)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1450, file: !1451, line: 29, baseType: !803, size: 64, offset: 896)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1450, file: !1451, line: 30, baseType: !803, size: 64, offset: 960)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1450, file: !1451, line: 31, baseType: !803, size: 64, offset: 1024)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1450, file: !1451, line: 32, baseType: !803, size: 64, offset: 1088)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1450, file: !1451, line: 33, baseType: !803, size: 64, offset: 1152)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1435, file: !1434, line: 63, baseType: !230, size: 32, offset: 1024)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1435, file: !1434, line: 69, baseType: !246, size: 16, offset: 1056)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1435, file: !1434, line: 70, baseType: !1477, size: 16, offset: 1072)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !213, line: 18, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !215, line: 23, baseType: !494)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1348, file: !1078, line: 882, baseType: !192, size: 64, offset: 9024)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1348, file: !1078, line: 885, baseType: !309, size: 32, offset: 9088)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1348, file: !1078, line: 886, baseType: !1482, size: 64, offset: 9152)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1078, line: 732, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1348, file: !1078, line: 901, baseType: !610, size: 64, offset: 9216)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1348, file: !1078, line: 904, baseType: !807, size: 64, offset: 9280)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1348, file: !1078, line: 906, baseType: !1487, size: 64, offset: 9344)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1078, line: 906, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1348, file: !1078, line: 930, baseType: !230, size: 32, offset: 9408)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1348, file: !1078, line: 933, baseType: !230, size: 32, offset: 9440)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1348, file: !1078, line: 935, baseType: !1492, size: 64, offset: 9472)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !1493)
!1493 = !{!1494}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1492, file: !74, line: 104, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1348, file: !1078, line: 940, baseType: !206, size: 64, offset: 9536)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1348, file: !1078, line: 942, baseType: !1499, size: 256, offset: 9600)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1500, line: 98, size: 256, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1501 = !{!1502, !1503, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1499, file: !1500, line: 99, baseType: !206, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1499, file: !1500, line: 100, baseType: !256, size: 128, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1499, file: !1500, line: 101, baseType: !1505, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1500, line: 21, baseType: !1506)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !1509}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1345, file: !1078, line: 986, baseType: !1511, offset: 10240)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, elements: !391)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1332, file: !1078, line: 640, baseType: !1513, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1380, line: 297, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1380, line: 297, size: 64, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1514, file: !1380, line: 297, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1385, line: 19, baseType: !192)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !1078, line: 646, baseType: !1519, size: 64, offset: 256)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1332, file: !1078, line: 646, size: 64, elements: !1520)
!1520 = !{!1521, !1524}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1519, file: !1078, line: 647, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1078, line: 542, baseType: !192)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1519, file: !1078, line: 648, baseType: !1523, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1332, file: !1078, line: 666, baseType: !115, size: 32, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1332, file: !1078, line: 667, baseType: !1527, size: 64, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1078, line: 579, size: 320, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1528, file: !1078, line: 580, baseType: !464, size: 320)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1332, file: !1078, line: 670, baseType: !525, size: 8, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1332, file: !1078, line: 681, baseType: !1533, size: 256, offset: 512)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1078, line: 678, size: 256, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1533, file: !1078, line: 679, baseType: !456, size: 192, align: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1533, file: !1078, line: 680, baseType: !192, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1332, file: !1078, line: 689, baseType: !256, size: 128, offset: 768)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1332, file: !1078, line: 691, baseType: !1539, size: 64, offset: 896)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1078, line: 691, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1332, file: !1078, line: 694, baseType: !1542, size: 64, offset: 960)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1078, line: 694, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1332, file: !1078, line: 697, baseType: !192, size: 64, offset: 1024)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1332, file: !1078, line: 699, baseType: !807, size: 64, offset: 1088)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1332, file: !1078, line: 700, baseType: !180, size: 64, offset: 1152)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1332, file: !1078, line: 711, baseType: !206, size: 64, offset: 1216)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1332, file: !1078, line: 717, baseType: !1550, size: 64, offset: 1280)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1552, line: 54, flags: DIFlagFwdDecl)
!1552 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1332, file: !1078, line: 722, baseType: !1554, offset: 1344)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1078, line: 570, elements: !1365)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1028, file: !1009, line: 90, baseType: !1556, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1028, file: !1009, line: 91, baseType: !1558, size: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !999, file: !946, line: 120, baseType: !1560, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!1563, !969}
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1565)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !1566)
!1566 = !{!1567, !1568, !1572, !1576, !1582, !1586}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1565, file: !88, line: 40, baseType: !87, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1565, file: !88, line: 41, baseType: !1569, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!525}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1565, file: !88, line: 42, baseType: !1573, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!180}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1565, file: !88, line: 43, baseType: !1577, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1460, !1580}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1565, file: !88, line: 44, baseType: !1583, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!1460}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1565, file: !88, line: 45, baseType: !720, size: 64, offset: 320)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !999, file: !946, line: 121, baseType: !1588, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1460, !969}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !999, file: !946, line: 122, baseType: !1592, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !969, !1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !945, file: !946, line: 70, baseType: !1598, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !918, line: 190, size: 1152, elements: !1600)
!1600 = !{!1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1693, !1694, !1695, !1696, !1697, !1700}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1599, file: !918, line: 191, baseType: !230, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1599, file: !918, line: 192, baseType: !230, size: 32, offset: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1599, file: !918, line: 202, baseType: !1598, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1599, file: !918, line: 203, baseType: !528, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1599, file: !918, line: 205, baseType: !456, size: 192, align: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1599, file: !918, line: 207, baseType: !1460, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1599, file: !918, line: 208, baseType: !37, size: 32, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !918, line: 209, baseType: !1609, size: 256, offset: 512)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1599, file: !918, line: 209, size: 256, elements: !1610)
!1610 = !{!1611, !1620, !1624}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1609, file: !918, line: 210, baseType: !1612, size: 256)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !918, line: 153, size: 256, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1619}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1612, file: !918, line: 154, baseType: !192, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1612, file: !918, line: 156, baseType: !1061, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1612, file: !918, line: 162, baseType: !1617, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !918, line: 162, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1612, file: !918, line: 167, baseType: !192, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1609, file: !918, line: 211, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !918, line: 170, size: 64, elements: !1622)
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1621, file: !918, line: 171, baseType: !1598, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1609, file: !918, line: 212, baseType: !1625, size: 256)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !918, line: 174, size: 256, elements: !1626)
!1626 = !{!1627, !1688, !1691, !1692}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1625, file: !918, line: 175, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1630)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !918, line: 271, size: 768, elements: !1631)
!1631 = !{!1632, !1652, !1656, !1657, !1658, !1659, !1660, !1664, !1665, !1666, !1667, !1684}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1630, file: !918, line: 276, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!115, !1636}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !918, line: 251, size: 1216, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1637, file: !918, line: 253, baseType: !1598, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1637, file: !918, line: 254, baseType: !807, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1637, file: !918, line: 255, baseType: !181, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1637, file: !918, line: 256, baseType: !180, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1637, file: !918, line: 259, baseType: !202, size: 256, offset: 256)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1637, file: !918, line: 260, baseType: !202, size: 256, offset: 512)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1637, file: !918, line: 261, baseType: !115, size: 32, offset: 768)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1637, file: !918, line: 262, baseType: !256, size: 128, offset: 832)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1637, file: !918, line: 263, baseType: !186, size: 64, offset: 960)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1637, file: !918, line: 265, baseType: !188, size: 64, offset: 1024)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1637, file: !918, line: 266, baseType: !525, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1637, file: !918, line: 267, baseType: !525, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1637, file: !918, line: 268, baseType: !1542, size: 64, offset: 1152)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1630, file: !918, line: 277, baseType: !1653, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !1636}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1630, file: !918, line: 290, baseType: !280, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1630, file: !918, line: 292, baseType: !267, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1630, file: !918, line: 293, baseType: !276, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1630, file: !918, line: 294, baseType: !272, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1630, file: !918, line: 296, baseType: !1661, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!843, !1636, !186, !188, !197}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1630, file: !918, line: 306, baseType: !188, size: 64, offset: 448)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1630, file: !918, line: 313, baseType: !525, size: 8, offset: 512)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1630, file: !918, line: 314, baseType: !1661, size: 64, offset: 576)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1630, file: !918, line: 317, baseType: !1668, size: 64, offset: 640)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!1671, !1636, !1673}
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1672, line: 59, baseType: !37)
!1672 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1675, line: 37, size: 128, elements: !1676)
!1675 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1676 = !{!1677, !1683}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1674, file: !1675, line: 38, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1675, line: 31, baseType: !1679)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{null, !807, !1682, !1673}
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1674, file: !1675, line: 39, baseType: !1671, size: 32, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1630, file: !918, line: 320, baseType: !1685, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!115, !1636, !1331}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1625, file: !918, line: 176, baseType: !1689, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !918, line: 35, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1625, file: !918, line: 177, baseType: !197, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1625, file: !918, line: 178, baseType: !1598, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1599, file: !918, line: 215, baseType: !180, size: 64, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1599, file: !918, line: 221, baseType: !432, size: 64, offset: 832)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1599, file: !918, line: 223, baseType: !248, size: 16, offset: 896)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1599, file: !918, line: 224, baseType: !692, size: 16, offset: 912)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1599, file: !918, line: 225, baseType: !1698, size: 64, offset: 960)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !918, line: 36, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1599, file: !918, line: 227, baseType: !299, size: 128, align: 64, offset: 1024)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !945, file: !946, line: 71, baseType: !1702, size: 32, offset: 448)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1703, line: 19, size: 32, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1704 = !{!1705}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1702, file: !1703, line: 20, baseType: !354, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !945, file: !946, line: 73, baseType: !37, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !945, file: !946, line: 74, baseType: !37, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !945, file: !946, line: 75, baseType: !37, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !945, file: !946, line: 76, baseType: !37, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !945, file: !946, line: 77, baseType: !37, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !942, file: !36, line: 47, baseType: !932, size: 64, offset: 512)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !942, file: !36, line: 48, baseType: !951, size: 64, offset: 576)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !942, file: !36, line: 49, baseType: !1714, size: 64, offset: 640)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !36, line: 49, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !942, file: !36, line: 50, baseType: !1717, size: 64, offset: 704)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1719, line: 26, size: 256, elements: !1720)
!1719 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1718, file: !1719, line: 27, baseType: !37, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1718, file: !1719, line: 28, baseType: !1723, size: 192, offset: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1724, line: 43, size: 192, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1723, file: !1724, line: 44, baseType: !217, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1723, file: !1724, line: 45, baseType: !256, size: 128, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !933, file: !36, line: 418, baseType: !1729, size: 64, offset: 1408)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !36, line: 53, size: 448, elements: !1731)
!1731 = !{!1732, !1733, !1738, !1742, !1746, !1750}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1730, file: !36, line: 54, baseType: !1016, size: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1730, file: !36, line: 55, baseType: !1734, size: 64, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!843, !1729, !1737, !186}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1730, file: !36, line: 57, baseType: !1739, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!843, !1729, !1737, !528, !188}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1730, file: !36, line: 59, baseType: !1743, size: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !932, !528}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1730, file: !36, line: 60, baseType: !1747, size: 64, offset: 320)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!115, !932}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1730, file: !36, line: 61, baseType: !1751, size: 64, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !932}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !933, file: !36, line: 419, baseType: !528, size: 64, offset: 1472)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !933, file: !36, line: 420, baseType: !528, size: 64, offset: 1536)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !933, file: !36, line: 421, baseType: !951, size: 64, offset: 1600)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !933, file: !36, line: 424, baseType: !1758, size: 64, offset: 1664)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1760)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !36, line: 424, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !933, file: !36, line: 425, baseType: !1762, size: 64, offset: 1728)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !933, file: !36, line: 426, baseType: !37, size: 32, offset: 1792)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !933, file: !36, line: 435, baseType: !202, size: 256, offset: 1856)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !933, file: !36, line: 437, baseType: !1767, size: 64, offset: 2112)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1769, line: 69, size: 320, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1770 = !{!1771, !1772, !1773, !1790, !1792, !1796, !1797}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1768, file: !1769, line: 70, baseType: !528, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1768, file: !1769, line: 71, baseType: !932, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1768, file: !1769, line: 72, baseType: !1774, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1776)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1769, line: 47, size: 256, elements: !1777)
!1777 = !{!1778, !1779, !1785, !1789}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1776, file: !1769, line: 49, baseType: !37, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1776, file: !1769, line: 51, baseType: !1780, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!115, !528, !1783}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1776, file: !1769, line: 53, baseType: !1786, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!115, !186, !1783}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1776, file: !1769, line: 55, baseType: !720, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1768, file: !1769, line: 73, baseType: !1791, size: 16, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1768, file: !1769, line: 74, baseType: !1793, size: 8, offset: 208)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !213, line: 16, baseType: !1794)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !215, line: 20, baseType: !1795)
!1795 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1768, file: !1769, line: 75, baseType: !238, size: 8, offset: 216)
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !1769, line: 76, baseType: !1798, size: 64, offset: 256)
!1798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1768, file: !1769, line: 76, size: 64, elements: !1799)
!1799 = !{!1800, !1801, !1808}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1798, file: !1769, line: 77, baseType: !180, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1798, file: !1769, line: 78, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1769, line: 86, size: 128, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1804, file: !1769, line: 87, baseType: !37, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1804, file: !1769, line: 88, baseType: !186, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1798, file: !1769, line: 79, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1811)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1769, line: 92, size: 256, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1817, !1818}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1811, file: !1769, line: 94, baseType: !37, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1811, file: !1769, line: 95, baseType: !37, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1811, file: !1769, line: 96, baseType: !1816, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1811, file: !1769, line: 97, baseType: !1774, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1811, file: !1769, line: 98, baseType: !180, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !933, file: !36, line: 438, baseType: !37, size: 32, offset: 2176)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !933, file: !36, line: 441, baseType: !37, size: 32, offset: 2208)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !933, file: !36, line: 442, baseType: !1758, size: 64, offset: 2240)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !933, file: !36, line: 443, baseType: !1762, size: 64, offset: 2304)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !933, file: !36, line: 444, baseType: !525, size: 8, offset: 2368)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !933, file: !36, line: 451, baseType: !525, size: 8, offset: 2376)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !933, file: !36, line: 454, baseType: !37, size: 32, offset: 2400)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !933, file: !36, line: 455, baseType: !1827, size: 64, offset: 2432)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1829, line: 23, size: 96, elements: !1830)
!1829 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1830 = !{!1831, !1832, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1828, file: !1829, line: 24, baseType: !115, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1828, file: !1829, line: 24, baseType: !115, size: 32, offset: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1828, file: !1829, line: 24, baseType: !115, size: 32, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !933, file: !36, line: 458, baseType: !1835, size: 64, offset: 2496)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!115}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !933, file: !36, line: 460, baseType: !1839, size: 4032, align: 512, offset: 2560)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1840, size: 4032, elements: !1856)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !36, line: 362, size: 576, elements: !1841)
!1841 = !{!1842, !1843, !1844}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1840, file: !36, line: 363, baseType: !180, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1840, file: !36, line: 364, baseType: !37, size: 32, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1840, file: !36, line: 367, baseType: !1845, size: 448, offset: 128)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !36, line: 319, size: 448, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1845, file: !36, line: 320, baseType: !932, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1845, file: !36, line: 321, baseType: !1849, size: 384, offset: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1850, line: 40, size: 384, elements: !1851)
!1850 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1851 = !{!1852}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1849, file: !1850, line: 41, baseType: !1853, size: 384, align: 64)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 384, align: 64, elements: !1854)
!1854 = !{!1855}
!1855 = !DISubrange(count: 2)
!1856 = !{!1857}
!1857 = !DISubrange(count: 7)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !933, file: !36, line: 463, baseType: !1859, size: 192, offset: 6592)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1860, line: 8, size: 192, elements: !1861)
!1860 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1861 = !{!1862, !1863, !1865}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1859, file: !1860, line: 10, baseType: !37, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1859, file: !1860, line: 11, baseType: !1864, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1859, file: !1860, line: 12, baseType: !1866, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1868, line: 59, size: 48, elements: !1869)
!1868 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1867, file: !1868, line: 60, baseType: !1477, size: 16)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1867, file: !1868, line: 61, baseType: !1477, size: 16, offset: 16)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1867, file: !1868, line: 63, baseType: !37, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1867, file: !1868, line: 64, baseType: !37, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1867, file: !1868, line: 65, baseType: !37, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1867, file: !1868, line: 66, baseType: !37, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !933, file: !36, line: 465, baseType: !192, size: 64, offset: 6784)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !933, file: !36, line: 469, baseType: !37, size: 32, offset: 6848)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !933, file: !36, line: 470, baseType: !256, size: 128, offset: 6912)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !933, file: !36, line: 471, baseType: !1880, size: 64, offset: 7040)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1882, line: 33, size: 96, elements: !1883)
!1882 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1883 = !{!1884, !1885, !1886, !1887}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1881, file: !1882, line: 37, baseType: !115, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1881, file: !1882, line: 43, baseType: !115, size: 32, offset: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1881, file: !1882, line: 45, baseType: !248, size: 16, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1881, file: !1882, line: 47, baseType: !248, size: 16, offset: 80)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !933, file: !36, line: 476, baseType: !1889, size: 64, offset: 7104)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !36, line: 378, size: 256, elements: !1891)
!1891 = !{!1892, !1908, !1909, !1910}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1890, file: !36, line: 379, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1895, line: 204, baseType: !1896)
!1895 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1895, line: 197, size: 192, elements: !1897)
!1897 = !{!1898, !1900, !1901, !1902, !1904, !1906}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1896, file: !1895, line: 198, baseType: !1899, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1895, line: 21, baseType: !490)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1896, file: !1895, line: 199, baseType: !240, size: 8, offset: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1896, file: !1895, line: 200, baseType: !240, size: 8, offset: 40)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1896, file: !1895, line: 201, baseType: !1903, size: 16, offset: 48)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1895, line: 17, baseType: !247)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1896, file: !1895, line: 202, baseType: !1905, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1895, line: 16, baseType: !433)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1896, file: !1895, line: 203, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1895, line: 22, baseType: !433)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1890, file: !36, line: 380, baseType: !37, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1890, file: !36, line: 381, baseType: !186, size: 64, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1890, file: !36, line: 382, baseType: !186, size: 64, offset: 192)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !933, file: !36, line: 477, baseType: !1890, size: 256, offset: 7168)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !933, file: !36, line: 480, baseType: !1913, size: 64, offset: 7424)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !36, line: 480, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !933, file: !36, line: 483, baseType: !1916, size: 64, offset: 7488)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !36, line: 483, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !933, file: !36, line: 488, baseType: !186, size: 64, offset: 7552)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !933, file: !36, line: 492, baseType: !180, size: 64, offset: 7616)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !933, file: !36, line: 493, baseType: !37, size: 32, offset: 7680)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !933, file: !36, line: 495, baseType: !180, size: 64, offset: 7744)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !933, file: !36, line: 496, baseType: !37, size: 32, offset: 7808)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !933, file: !36, line: 499, baseType: !37, size: 32, offset: 7840)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !933, file: !36, line: 500, baseType: !1925, size: 64, offset: 7872)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1927, line: 45, baseType: !1928)
!1927 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !933, file: !36, line: 503, baseType: !37, size: 32, offset: 7936)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !933, file: !36, line: 504, baseType: !1931, size: 64, offset: 8000)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1934, line: 96, size: 192, elements: !1935)
!1934 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1935 = !{!1936, !1937, !1991, !1994}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1933, file: !1934, line: 97, baseType: !37, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1933, file: !1934, line: 98, baseType: !1938, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1934, line: 24, size: 3072, elements: !1940)
!1940 = !{!1941, !1943, !1944, !1945, !1946, !1960, !1961, !1962, !1963, !1975, !1976, !1977, !1988, !1989, !1990}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1939, file: !1934, line: 26, baseType: !1942, size: 128)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 128, elements: !1854)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1939, file: !1934, line: 27, baseType: !1942, size: 128, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1939, file: !1934, line: 28, baseType: !115, size: 32, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1939, file: !1934, line: 31, baseType: !309, size: 32, align: 512, offset: 512)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1939, file: !1934, line: 32, baseType: !1947, size: 960, offset: 576)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1948, line: 206, size: 960, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1949 = !{!1950, !1951, !1954, !1956, !1957, !1959}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1947, file: !1948, line: 207, baseType: !302, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1947, file: !1948, line: 208, baseType: !1952, size: 256, offset: 64)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1953, size: 256, elements: !372)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1947, file: !1948, line: 209, baseType: !1955, size: 256, offset: 320)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 256, elements: !372)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1947, file: !1948, line: 213, baseType: !803, size: 64, offset: 576)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1947, file: !1948, line: 215, baseType: !1958, size: 256, offset: 640)
!1958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 256, elements: !372)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1947, file: !1948, line: 216, baseType: !238, size: 8, offset: 896)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1939, file: !1934, line: 33, baseType: !192, size: 64, offset: 1536)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1939, file: !1934, line: 34, baseType: !192, size: 64, offset: 1600)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1939, file: !1934, line: 35, baseType: !525, size: 8, offset: 1664)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1939, file: !1934, line: 36, baseType: !1964, size: 320, offset: 1728)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1965, line: 11, size: 320, elements: !1966)
!1965 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1966 = !{!1967, !1968, !1969, !1974}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1964, file: !1965, line: 16, baseType: !367, size: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1964, file: !1965, line: 17, baseType: !192, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1964, file: !1965, line: 18, baseType: !1970, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !1973}
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1964, file: !1965, line: 19, baseType: !489, size: 32, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1939, file: !1934, line: 37, baseType: !1499, size: 256, offset: 2048)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1939, file: !1934, line: 38, baseType: !299, size: 128, align: 64, offset: 2304)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1939, file: !1934, line: 39, baseType: !1978, size: 64, offset: 2432)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1934, line: 49, size: 768, elements: !1980)
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1986, !1987}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1979, file: !1934, line: 50, baseType: !309, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1979, file: !1934, line: 51, baseType: !1955, size: 256, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1979, file: !1934, line: 53, baseType: !1955, size: 256, offset: 320)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1979, file: !1934, line: 54, baseType: !192, size: 64, offset: 576)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1979, file: !1934, line: 55, baseType: !1978, size: 64, offset: 640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1979, file: !1934, line: 56, baseType: !115, size: 32, offset: 704)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1979, file: !1934, line: 57, baseType: !115, size: 32, offset: 736)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1939, file: !1934, line: 40, baseType: !192, size: 64, offset: 2496)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1939, file: !1934, line: 42, baseType: !115, size: 32, offset: 2560)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1939, file: !1934, line: 43, baseType: !1932, size: 64, offset: 2624)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1933, file: !1934, line: 99, baseType: !1992, offset: 128)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1993, line: 211, elements: !1365)
!1993 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1933, file: !1934, line: 100, baseType: !1995, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1934, line: 63, size: 3008, elements: !1997)
!1997 = !{!1998, !1999, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2029}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1996, file: !1934, line: 64, baseType: !1978, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1996, file: !1934, line: 65, baseType: !2000, size: 192, offset: 64)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1978, size: 192, elements: !346)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1996, file: !1934, line: 67, baseType: !115, size: 32, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1996, file: !1934, line: 68, baseType: !202, size: 256, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1996, file: !1934, line: 69, baseType: !309, size: 32, offset: 576)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1996, file: !1934, line: 70, baseType: !202, size: 256, offset: 640)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1996, file: !1934, line: 71, baseType: !192, size: 64, offset: 896)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1996, file: !1934, line: 72, baseType: !192, size: 64, offset: 960)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1996, file: !1934, line: 73, baseType: !192, size: 64, offset: 1024)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1996, file: !1934, line: 74, baseType: !192, size: 64, offset: 1088)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1996, file: !1934, line: 75, baseType: !192, size: 64, offset: 1152)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1996, file: !1934, line: 76, baseType: !192, size: 64, offset: 1216)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1996, file: !1934, line: 77, baseType: !192, size: 64, offset: 1280)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1996, file: !1934, line: 78, baseType: !192, size: 64, offset: 1344)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1996, file: !1934, line: 79, baseType: !525, size: 8, offset: 1408)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1996, file: !1934, line: 80, baseType: !192, size: 64, offset: 1472)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1996, file: !1934, line: 81, baseType: !202, size: 256, offset: 1536)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1996, file: !1934, line: 82, baseType: !1718, size: 256, offset: 1792)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1996, file: !1934, line: 84, baseType: !230, size: 32, offset: 2048)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1996, file: !1934, line: 87, baseType: !192, size: 64, offset: 2112)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1996, file: !1934, line: 88, baseType: !192, size: 64, offset: 2176)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1996, file: !1934, line: 89, baseType: !2021, size: 704, offset: 2240)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1500, line: 111, size: 704, elements: !2022)
!2022 = !{!2023, !2024, !2025, !2028}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2021, file: !1500, line: 112, baseType: !1499, size: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2021, file: !1500, line: 113, baseType: !1964, size: 320, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2021, file: !1500, line: 116, baseType: !2026, size: 64, offset: 576)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1500, line: 18, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2021, file: !1500, line: 117, baseType: !115, size: 32, offset: 640)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1996, file: !1934, line: 90, baseType: !1932, size: 64, offset: 2944)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !933, file: !36, line: 515, baseType: !2031, size: 64, offset: 8064)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2033, line: 117, size: 128, elements: !2034)
!2033 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2034 = !{!2035, !2036, !2037}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2032, file: !2033, line: 118, baseType: !449, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2032, file: !2033, line: 119, baseType: !449, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2032, file: !2033, line: 120, baseType: !803, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !933, file: !36, line: 516, baseType: !37, size: 32, offset: 8128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !933, file: !36, line: 519, baseType: !37, size: 32, offset: 8160)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !933, file: !36, line: 520, baseType: !2041, size: 64, offset: 8192)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !933, file: !36, line: 523, baseType: !2043, size: 64, offset: 8256)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !36, line: 523, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !933, file: !36, line: 524, baseType: !37, size: 32, offset: 8320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !933, file: !36, line: 525, baseType: !2048, size: 64, offset: 8384)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !36, line: 525, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !933, file: !36, line: 526, baseType: !37, size: 32, offset: 8448)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !933, file: !36, line: 533, baseType: !180, size: 64, offset: 8512)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !933, file: !36, line: 534, baseType: !37, size: 32, offset: 8576)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !933, file: !36, line: 535, baseType: !2055, size: 64, offset: 8640)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !933, file: !36, line: 536, baseType: !37, size: 32, offset: 8704)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !933, file: !36, line: 539, baseType: !115, size: 32, offset: 8736)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !933, file: !36, line: 540, baseType: !2059, size: 64, offset: 8768)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2061, line: 32, size: 64, elements: !2062)
!2061 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2062 = !{!2063, !2064}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2060, file: !2061, line: 33, baseType: !449, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2060, file: !2061, line: 34, baseType: !449, size: 32, offset: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !933, file: !36, line: 563, baseType: !256, size: 128, offset: 8832)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !933, file: !36, line: 565, baseType: !256, size: 128, offset: 8960)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !933, file: !36, line: 568, baseType: !2068, size: 64, offset: 9088)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !933, file: !36, line: 570, baseType: !230, size: 32, offset: 9152)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !908, file: !44, line: 2382, baseType: !907, size: 64, offset: 448)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !908, file: !44, line: 2383, baseType: !363, size: 64, offset: 512)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !908, file: !44, line: 2385, baseType: !2075, offset: 576)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1993, line: 206, elements: !1365)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !908, file: !44, line: 2386, baseType: !2075, offset: 576)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !908, file: !44, line: 2387, baseType: !2075, offset: 576)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !908, file: !44, line: 2388, baseType: !2079, offset: 576)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2075, elements: !346)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !908, file: !44, line: 2390, baseType: !2075, offset: 576)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !908, file: !44, line: 2391, baseType: !2075, offset: 576)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !908, file: !44, line: 2392, baseType: !2075, offset: 576)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !908, file: !44, line: 2393, baseType: !2075, offset: 576)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !899, file: !44, line: 1197, baseType: !2085, size: 64, offset: 384)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2087)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 2057, size: 1664, elements: !2088)
!2088 = !{!2089, !2093, !2097, !2098, !2102, !2106, !2110, !2111, !2112, !2116, !2120, !2124, !2125, !2126, !2132, !2136, !2137, !2141, !2142, !2143, !2144, !2148, !2152, !2199, !2214, !2215}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2087, file: !44, line: 2058, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!688, !898}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2087, file: !44, line: 2059, baseType: !2094, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !688}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2087, file: !44, line: 2060, baseType: !2094, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2087, file: !44, line: 2062, baseType: !2099, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !688, !115}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2087, file: !44, line: 2063, baseType: !2103, size: 64, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!115, !688, !1137}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2087, file: !44, line: 2064, baseType: !2107, size: 64, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!115, !688}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2087, file: !44, line: 2065, baseType: !2094, size: 64, offset: 384)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2087, file: !44, line: 2066, baseType: !928, size: 64, offset: 448)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2087, file: !44, line: 2067, baseType: !2113, size: 64, offset: 512)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!115, !898, !115}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2087, file: !44, line: 2068, baseType: !2117, size: 64, offset: 576)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!115, !898, !43}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2087, file: !44, line: 2069, baseType: !2121, size: 64, offset: 640)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!115, !898}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2087, file: !44, line: 2070, baseType: !2117, size: 64, offset: 704)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2087, file: !44, line: 2071, baseType: !2121, size: 64, offset: 768)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2087, file: !44, line: 2072, baseType: !2127, size: 64, offset: 832)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!115, !648, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 62, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2087, file: !44, line: 2073, baseType: !2133, size: 64, offset: 896)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!115, !898, !1864, !186}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2087, file: !44, line: 2074, baseType: !928, size: 64, offset: 960)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2087, file: !44, line: 2076, baseType: !2138, size: 64, offset: 1024)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!115, !181, !648}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2087, file: !44, line: 2077, baseType: !2138, size: 64, offset: 1088)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2087, file: !44, line: 2078, baseType: !2138, size: 64, offset: 1152)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2087, file: !44, line: 2079, baseType: !2138, size: 64, offset: 1216)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2087, file: !44, line: 2081, baseType: !2145, size: 64, offset: 1280)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!843, !898, !115, !186, !188, !197}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2087, file: !44, line: 2082, baseType: !2149, size: 64, offset: 1344)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!843, !898, !115, !528, !188, !197}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2087, file: !44, line: 2083, baseType: !2153, size: 64, offset: 1408)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!2156, !688}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !57, line: 296, size: 1664, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2184, !2185, !2186}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2158, file: !57, line: 297, baseType: !367, size: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2158, file: !57, line: 298, baseType: !256, size: 128, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2158, file: !57, line: 299, baseType: !256, size: 128, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2158, file: !57, line: 300, baseType: !256, size: 128, offset: 384)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2158, file: !57, line: 301, baseType: !202, size: 256, offset: 512)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2158, file: !57, line: 302, baseType: !309, size: 32, offset: 768)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2158, file: !57, line: 303, baseType: !230, size: 32, offset: 800)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2158, file: !57, line: 304, baseType: !898, size: 64, offset: 832)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2158, file: !57, line: 305, baseType: !2169, size: 64, offset: 896)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !57, line: 68, size: 64, elements: !2170)
!2170 = !{!2171, !2183}
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !57, line: 69, baseType: !2172, size: 32)
!2172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2169, file: !57, line: 69, size: 32, elements: !2173)
!2173 = !{!2174, !2175, !2176}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2172, file: !57, line: 70, baseType: !395, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2172, file: !57, line: 71, baseType: !413, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2172, file: !57, line: 72, baseType: !2177, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2178, line: 24, baseType: !2179)
!2178 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2178, line: 22, size: 32, elements: !2180)
!2180 = !{!2181}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2179, file: !2178, line: 23, baseType: !2182, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2178, line: 20, baseType: !401)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2169, file: !57, line: 74, baseType: !56, size: 32, offset: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2158, file: !57, line: 306, baseType: !197, size: 64, offset: 960)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2158, file: !57, line: 307, baseType: !192, size: 64, offset: 1024)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2158, file: !57, line: 308, baseType: !2187, size: 576, offset: 1088)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !57, line: 205, size: 576, elements: !2188)
!2188 = !{!2189, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2187, file: !57, line: 206, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !57, line: 66, baseType: !199)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2187, file: !57, line: 207, baseType: !2190, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2187, file: !57, line: 208, baseType: !2190, size: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2187, file: !57, line: 209, baseType: !2190, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2187, file: !57, line: 210, baseType: !2190, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2187, file: !57, line: 211, baseType: !2190, size: 64, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2187, file: !57, line: 212, baseType: !2190, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2187, file: !57, line: 213, baseType: !480, size: 64, offset: 448)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2187, file: !57, line: 214, baseType: !480, size: 64, offset: 512)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2087, file: !44, line: 2085, baseType: !2200, size: 64, offset: 1472)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!803, !898, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2205, line: 15, size: 256, elements: !2206)
!2205 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2206 = !{!2207, !2208, !2209, !2210, !2211}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2204, file: !2205, line: 16, baseType: !178, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2204, file: !2205, line: 19, baseType: !115, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2204, file: !2205, line: 26, baseType: !192, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2204, file: !2205, line: 33, baseType: !192, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2204, file: !2205, line: 36, baseType: !2212, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1078, line: 33, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2087, file: !44, line: 2087, baseType: !2200, size: 64, offset: 1536)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2087, file: !44, line: 2089, baseType: !928, size: 64, offset: 1600)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !899, file: !44, line: 1198, baseType: !2217, size: 64, offset: 448)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2219)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !57, line: 324, size: 704, elements: !2220)
!2220 = !{!2221, !2225, !2229, !2233, !2234, !2235, !2236, !2237, !2242, !2247, !2251}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2219, file: !57, line: 325, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!115, !2157}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2219, file: !57, line: 326, baseType: !2226, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!2157, !898, !115}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2219, file: !57, line: 327, baseType: !2230, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{null, !2157}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2219, file: !57, line: 328, baseType: !2222, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2219, file: !57, line: 329, baseType: !2222, size: 64, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2219, file: !57, line: 330, baseType: !2222, size: 64, offset: 320)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2219, file: !57, line: 331, baseType: !2113, size: 64, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2219, file: !57, line: 334, baseType: !2238, size: 64, offset: 448)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!2241, !688}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2219, file: !57, line: 335, baseType: !2243, size: 64, offset: 512)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!115, !688, !2246}
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2219, file: !57, line: 337, baseType: !2248, size: 64, offset: 576)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!115, !688, !2241}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2219, file: !57, line: 339, baseType: !2252, size: 64, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!115, !898, !2255}
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !899, file: !44, line: 1199, baseType: !2257, size: 64, offset: 512)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2259)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !57, line: 430, size: 704, elements: !2260)
!2260 = !{!2261, !2265, !2266, !2270, !2271, !2272, !2287, !2310, !2314, !2315, !2338}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2259, file: !57, line: 431, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!115, !898, !115, !115, !812}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2259, file: !57, line: 432, baseType: !2113, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2259, file: !57, line: 433, baseType: !2267, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!115, !898, !37}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2259, file: !57, line: 434, baseType: !2267, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2259, file: !57, line: 435, baseType: !2113, size: 64, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2259, file: !57, line: 436, baseType: !2273, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!115, !898, !115, !2276}
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !57, line: 417, size: 256, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2277, file: !57, line: 418, baseType: !115, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2277, file: !57, line: 419, baseType: !37, size: 32, offset: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2277, file: !57, line: 420, baseType: !37, size: 32, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2277, file: !57, line: 422, baseType: !37, size: 32, offset: 96)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2277, file: !57, line: 423, baseType: !37, size: 32, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2277, file: !57, line: 424, baseType: !37, size: 32, offset: 160)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2277, file: !57, line: 425, baseType: !37, size: 32, offset: 192)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2277, file: !57, line: 426, baseType: !37, size: 32, offset: 224)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2259, file: !57, line: 437, baseType: !2288, size: 64, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!115, !898, !2169, !2291}
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !57, line: 345, size: 960, elements: !2293)
!2293 = !{!2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2292, file: !57, line: 346, baseType: !115, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2292, file: !57, line: 347, baseType: !432, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2292, file: !57, line: 348, baseType: !432, size: 64, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2292, file: !57, line: 349, baseType: !432, size: 64, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2292, file: !57, line: 350, baseType: !432, size: 64, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2292, file: !57, line: 351, baseType: !432, size: 64, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2292, file: !57, line: 352, baseType: !432, size: 64, offset: 384)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2292, file: !57, line: 353, baseType: !212, size: 64, offset: 448)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2292, file: !57, line: 355, baseType: !212, size: 64, offset: 512)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2292, file: !57, line: 356, baseType: !115, size: 32, offset: 576)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2292, file: !57, line: 357, baseType: !115, size: 32, offset: 608)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2292, file: !57, line: 358, baseType: !432, size: 64, offset: 640)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2292, file: !57, line: 359, baseType: !432, size: 64, offset: 704)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2292, file: !57, line: 360, baseType: !432, size: 64, offset: 768)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2292, file: !57, line: 361, baseType: !212, size: 64, offset: 832)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2292, file: !57, line: 362, baseType: !115, size: 32, offset: 896)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2259, file: !57, line: 438, baseType: !2311, size: 64, offset: 448)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!115, !898, !2255, !2291}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2259, file: !57, line: 440, baseType: !2288, size: 64, offset: 512)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2259, file: !57, line: 441, baseType: !2316, size: 64, offset: 576)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!115, !898, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !57, line: 411, size: 1408, elements: !2321)
!2321 = !{!2322, !2323}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2320, file: !57, line: 412, baseType: !37, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2320, file: !57, line: 413, baseType: !2324, size: 1344, offset: 64)
!2324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2325, size: 1344, elements: !346)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !57, line: 397, size: 448, elements: !2326)
!2326 = !{!2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2337}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2325, file: !57, line: 398, baseType: !37, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2325, file: !57, line: 399, baseType: !37, size: 32, offset: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2325, file: !57, line: 401, baseType: !37, size: 32, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2325, file: !57, line: 402, baseType: !37, size: 32, offset: 96)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2325, file: !57, line: 403, baseType: !37, size: 32, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2325, file: !57, line: 404, baseType: !37, size: 32, offset: 160)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2325, file: !57, line: 405, baseType: !37, size: 32, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2325, file: !57, line: 406, baseType: !434, size: 64, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2325, file: !57, line: 407, baseType: !2336, size: 64, offset: 320)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !179, line: 132, baseType: !432)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2325, file: !57, line: 408, baseType: !2336, size: 64, offset: 384)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2259, file: !57, line: 442, baseType: !2267, size: 64, offset: 640)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !899, file: !44, line: 1200, baseType: !2340, size: 64, offset: 576)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2342)
!2342 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 54, flags: DIFlagFwdDecl)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !899, file: !44, line: 1201, baseType: !192, size: 64, offset: 640)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !899, file: !44, line: 1202, baseType: !192, size: 64, offset: 704)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !899, file: !44, line: 1203, baseType: !192, size: 64, offset: 768)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !899, file: !44, line: 1204, baseType: !648, size: 64, offset: 832)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !899, file: !44, line: 1205, baseType: !464, size: 320, offset: 896)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !899, file: !44, line: 1206, baseType: !115, size: 32, offset: 1216)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !899, file: !44, line: 1207, baseType: !230, size: 32, offset: 1248)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !899, file: !44, line: 1209, baseType: !180, size: 64, offset: 1280)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !899, file: !44, line: 1211, baseType: !2352, size: 64, offset: 1344)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2355)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1211, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !899, file: !44, line: 1223, baseType: !2357, size: 64, offset: 1408)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !665, line: 34, size: 64, elements: !2358)
!2358 = !{!2359}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2357, file: !665, line: 35, baseType: !668, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !899, file: !44, line: 1224, baseType: !256, size: 128, offset: 1472)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !899, file: !44, line: 1225, baseType: !2362, size: 64, offset: 1600)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 1225, flags: DIFlagFwdDecl)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !899, file: !44, line: 1226, baseType: !2365, size: 64, offset: 1664)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !44, line: 1226, flags: DIFlagFwdDecl)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !899, file: !44, line: 1227, baseType: !2368, size: 64, offset: 1728)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !899, file: !44, line: 1228, baseType: !2371, size: 64, offset: 1792)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1228, flags: DIFlagFwdDecl)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !899, file: !44, line: 1229, baseType: !367, size: 128, offset: 1856)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !899, file: !44, line: 1230, baseType: !37, size: 32, offset: 1984)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !899, file: !44, line: 1231, baseType: !2376, size: 2496, offset: 2048)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !57, line: 521, size: 2496, elements: !2377)
!2377 = !{!2378, !2379, !2380, !2382, !2414}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2376, file: !57, line: 522, baseType: !37, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2376, file: !57, line: 523, baseType: !464, size: 320, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2376, file: !57, line: 524, baseType: !2381, size: 192, offset: 384)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 192, elements: !346)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2376, file: !57, line: 525, baseType: !2383, size: 1728, offset: 576)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2384, size: 1728, elements: !346)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !57, line: 222, size: 576, elements: !2385)
!2385 = !{!2386, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2384, file: !57, line: 223, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !57, line: 445, size: 256, elements: !2389)
!2389 = !{!2390, !2391, !2404, !2405}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2388, file: !57, line: 446, baseType: !115, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2388, file: !57, line: 447, baseType: !2392, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !57, line: 312, size: 512, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2394, file: !57, line: 313, baseType: !2113, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2394, file: !57, line: 314, baseType: !2113, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2394, file: !57, line: 315, baseType: !2113, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2394, file: !57, line: 316, baseType: !2113, size: 64, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2394, file: !57, line: 317, baseType: !2222, size: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2394, file: !57, line: 318, baseType: !2222, size: 64, offset: 320)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2394, file: !57, line: 319, baseType: !2222, size: 64, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2394, file: !57, line: 320, baseType: !2252, size: 64, offset: 448)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2388, file: !57, line: 448, baseType: !932, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2388, file: !57, line: 449, baseType: !2387, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2384, file: !57, line: 224, baseType: !115, size: 32, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2384, file: !57, line: 226, baseType: !256, size: 128, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2384, file: !57, line: 227, baseType: !192, size: 64, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2384, file: !57, line: 228, baseType: !37, size: 32, offset: 320)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2384, file: !57, line: 229, baseType: !37, size: 32, offset: 352)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2384, file: !57, line: 230, baseType: !2190, size: 64, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2384, file: !57, line: 231, baseType: !2190, size: 64, offset: 448)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2384, file: !57, line: 232, baseType: !180, size: 64, offset: 512)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2376, file: !57, line: 526, baseType: !2415, size: 192, offset: 2304)
!2415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2392, size: 192, elements: !346)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !899, file: !44, line: 1233, baseType: !2417, size: 2368, offset: 4544)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1184, size: 2368, elements: !2418)
!2418 = !{!2419, !2420, !2421}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2417, file: !44, line: 1185, baseType: !248, size: 16)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2417, file: !44, line: 1186, baseType: !248, size: 16, offset: 16)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2417, file: !44, line: 1187, baseType: !2422, size: 2304, offset: 64)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2423, size: 2304, elements: !346)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2424, line: 12, size: 768, elements: !2425)
!2424 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2425 = !{!2426, !2434, !2435, !3621, !3622}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2423, file: !2424, line: 13, baseType: !2427, size: 384)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2428, line: 17, size: 384, elements: !2429)
!2428 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2429 = !{!2430, !2431, !2432, !2433}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2427, file: !2428, line: 18, baseType: !115, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2427, file: !2428, line: 19, baseType: !115, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2427, file: !2428, line: 20, baseType: !376, size: 192, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2427, file: !2428, line: 22, baseType: !299, size: 128, align: 64, offset: 256)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2423, file: !2424, line: 14, baseType: !1816, size: 64, offset: 384)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2423, file: !2424, line: 15, baseType: !2436, size: 64, offset: 448)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2437, line: 16, size: 64, elements: !2438)
!2437 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2438 = !{!2439}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2436, file: !2437, line: 17, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1552, line: 746, size: 58368, elements: !2442)
!2442 = !{!2443, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2523, !2534, !2622, !2626, !2629, !2660, !2661, !2662, !2663, !2674, !2676, !2677, !2678, !2679, !2680, !2681, !2692, !2693, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2710, !2711, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2804, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2852, !2858, !2859, !2860, !2861, !2862, !2866, !2869, !2876, !2881, !2884, !2887, !2890, !2893, !3031, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3069, !3070, !3071, !3080, !3088, !3089, !3090, !3091, !3092, !3097, !3098, !3099, !3102, !3103, !3106, !3109, !3112, !3120, !3123, !3124, !3210, !3211, !3212, !3213, !3214, !3220, !3221, !3222, !3223, !3226, !3227, !3230, !3233, !3234, !3237, !3238, !3239, !3242, !3243, !3244, !3245, !3246, !3247, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3279, !3282, !3288, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3300, !3372, !3374, !3375, !3376, !3377, !3378, !3379, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3396, !3397, !3398}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2441, file: !1552, line: 752, baseType: !2444, size: 192)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2445, line: 56, size: 192, elements: !2446)
!2445 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2446 = !{!2447, !2448, !2449, !2450}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2444, file: !2445, line: 57, baseType: !192, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2444, file: !2445, line: 58, baseType: !192, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2444, file: !2445, line: 59, baseType: !489, size: 32, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2444, file: !2445, line: 61, baseType: !489, size: 32, offset: 160)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2441, file: !1552, line: 754, baseType: !37, size: 32, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2441, file: !1552, line: 767, baseType: !180, size: 64, offset: 256)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2441, file: !1552, line: 768, baseType: !354, size: 32, offset: 320)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2441, file: !1552, line: 770, baseType: !37, size: 32, offset: 352)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2441, file: !1552, line: 771, baseType: !37, size: 32, offset: 384)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2441, file: !1552, line: 774, baseType: !115, size: 32, offset: 416)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2441, file: !1552, line: 775, baseType: !2458, size: 128, offset: 448)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2459, line: 58, size: 128, elements: !2460)
!2459 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2460 = !{!2461, !2462, !2467, !2468}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2458, file: !2459, line: 59, baseType: !293, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, scope: !2458, file: !2459, line: 60, baseType: !2463, size: 32, offset: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2458, file: !2459, line: 60, size: 32, elements: !2464)
!2464 = !{!2465, !2466}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2463, file: !2459, line: 61, baseType: !37, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2463, file: !2459, line: 62, baseType: !230, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2458, file: !2459, line: 65, baseType: !246, size: 16, offset: 96)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2458, file: !2459, line: 65, baseType: !246, size: 16, offset: 112)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2441, file: !1552, line: 776, baseType: !37, size: 32, offset: 576)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2441, file: !1552, line: 777, baseType: !192, size: 64, offset: 640)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2441, file: !1552, line: 778, baseType: !2440, size: 64, offset: 704)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2441, file: !1552, line: 787, baseType: !115, size: 32, offset: 768)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2441, file: !1552, line: 788, baseType: !115, size: 32, offset: 800)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2441, file: !1552, line: 790, baseType: !115, size: 32, offset: 832)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2441, file: !1552, line: 792, baseType: !115, size: 32, offset: 864)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2441, file: !1552, line: 793, baseType: !115, size: 32, offset: 896)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2441, file: !1552, line: 794, baseType: !115, size: 32, offset: 928)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2441, file: !1552, line: 795, baseType: !37, size: 32, offset: 960)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2441, file: !1552, line: 797, baseType: !2480, size: 2048, offset: 1024)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1552, line: 551, size: 2048, elements: !2481)
!2481 = !{!2482, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2502, !2505, !2506, !2507}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2480, file: !1552, line: 553, baseType: !2483, size: 128)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1552, line: 411, size: 128, elements: !2484)
!2484 = !{!2485, !2486}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2483, file: !1552, line: 412, baseType: !192, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2483, file: !1552, line: 413, baseType: !489, size: 32, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2480, file: !1552, line: 554, baseType: !456, size: 192, align: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2480, file: !1552, line: 555, baseType: !432, size: 64, offset: 320)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2480, file: !1552, line: 556, baseType: !432, size: 64, offset: 384)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2480, file: !1552, line: 558, baseType: !256, size: 128, offset: 448)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2480, file: !1552, line: 559, baseType: !37, size: 32, offset: 576)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2480, file: !1552, line: 561, baseType: !432, size: 64, offset: 640)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2480, file: !1552, line: 562, baseType: !432, size: 64, offset: 704)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2480, file: !1552, line: 563, baseType: !432, size: 64, offset: 768)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2480, file: !1552, line: 564, baseType: !432, size: 64, offset: 832)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2480, file: !1552, line: 565, baseType: !212, size: 64, offset: 896)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2480, file: !1552, line: 566, baseType: !432, size: 64, offset: 960)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2480, file: !1552, line: 568, baseType: !432, size: 64, offset: 1024)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2480, file: !1552, line: 571, baseType: !115, size: 32, offset: 1088)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2480, file: !1552, line: 572, baseType: !2501, size: 64, offset: 1152)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2480, file: !1552, line: 574, baseType: !2503, size: 64, offset: 1216)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1552, line: 49, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2480, file: !1552, line: 576, baseType: !2503, size: 64, offset: 1280)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2480, file: !1552, line: 578, baseType: !192, size: 64, offset: 1344)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2480, file: !1552, line: 588, baseType: !2508, size: 512, align: 512, offset: 1536)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1552, line: 497, size: 512, align: 512, elements: !2509)
!2509 = !{!2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2508, file: !1552, line: 498, baseType: !432, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2508, file: !1552, line: 499, baseType: !432, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2508, file: !1552, line: 500, baseType: !432, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2508, file: !1552, line: 501, baseType: !489, size: 32, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2508, file: !1552, line: 502, baseType: !489, size: 32, offset: 224)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2508, file: !1552, line: 503, baseType: !192, size: 64, offset: 256)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2508, file: !1552, line: 504, baseType: !192, size: 64, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2508, file: !1552, line: 505, baseType: !192, size: 64, offset: 384)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2508, file: !1552, line: 506, baseType: !2519, size: 64, align: 64, offset: 448)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1552, line: 445, size: 64, align: 64, elements: !2520)
!2520 = !{!2521, !2522}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2519, file: !1552, line: 446, baseType: !37, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2519, file: !1552, line: 447, baseType: !37, size: 32, offset: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2441, file: !1552, line: 798, baseType: !2524, size: 384, offset: 3072)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1552, line: 592, size: 384, elements: !2525)
!2525 = !{!2526, !2527, !2528, !2529, !2530, !2531, !2532}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2524, file: !1552, line: 593, baseType: !256, size: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2524, file: !1552, line: 594, baseType: !192, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2524, file: !1552, line: 595, baseType: !192, size: 64, offset: 192)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2524, file: !1552, line: 596, baseType: !37, size: 32, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2524, file: !1552, line: 597, baseType: !248, size: 16, offset: 288)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2524, file: !1552, line: 598, baseType: !248, size: 16, offset: 304)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2524, file: !1552, line: 600, baseType: !2533, size: 64, offset: 320)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2441, file: !1552, line: 799, baseType: !2535, size: 1792, offset: 3456)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1552, line: 610, size: 1792, elements: !2536)
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2619, !2620}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2535, file: !1552, line: 611, baseType: !456, size: 192, align: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2535, file: !1552, line: 618, baseType: !432, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2535, file: !1552, line: 619, baseType: !432, size: 64, offset: 256)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2535, file: !1552, line: 620, baseType: !432, size: 64, offset: 320)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2535, file: !1552, line: 621, baseType: !432, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2535, file: !1552, line: 622, baseType: !432, size: 64, offset: 448)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2535, file: !1552, line: 629, baseType: !212, size: 64, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2535, file: !1552, line: 630, baseType: !432, size: 64, offset: 576)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2535, file: !1552, line: 631, baseType: !37, size: 32, offset: 640)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2535, file: !1552, line: 653, baseType: !37, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2535, file: !1552, line: 654, baseType: !37, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2535, file: !1552, line: 655, baseType: !37, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2535, file: !1552, line: 656, baseType: !37, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2535, file: !1552, line: 662, baseType: !2551, size: 512, offset: 704)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !63, line: 118, size: 512, elements: !2552)
!2552 = !{!2553, !2561, !2562, !2567, !2615, !2616, !2617, !2618}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2551, file: !63, line: 119, baseType: !2554, size: 256)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2555, line: 9, size: 256, elements: !2556)
!2555 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2556 = !{!2557, !2558}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2554, file: !2555, line: 10, baseType: !456, size: 192, align: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2554, file: !2555, line: 11, baseType: !2559, size: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2560, line: 29, baseType: !212)
!2560 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2551, file: !63, line: 120, baseType: !2559, size: 64, offset: 256)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2551, file: !63, line: 121, baseType: !2563, size: 64, offset: 320)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!62, !2566}
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2551, file: !63, line: 122, baseType: !2568, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !63, line: 159, size: 512, align: 512, elements: !2570)
!2570 = !{!2571, !2596, !2597, !2600, !2605, !2606, !2610, !2614}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2569, file: !63, line: 160, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !63, line: 215, size: 4608, align: 512, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2573, file: !63, line: 216, baseType: !217, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2573, file: !63, line: 217, baseType: !37, size: 32, offset: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2573, file: !63, line: 218, baseType: !37, size: 32, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2573, file: !63, line: 219, baseType: !37, size: 32, offset: 96)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2573, file: !63, line: 220, baseType: !37, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2573, file: !63, line: 221, baseType: !37, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2573, file: !63, line: 222, baseType: !37, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2573, file: !63, line: 223, baseType: !37, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2573, file: !63, line: 224, baseType: !37, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2573, file: !63, line: 226, baseType: !37, size: 32, offset: 160)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2573, file: !63, line: 227, baseType: !248, size: 16, offset: 192)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2573, file: !63, line: 228, baseType: !248, size: 16, offset: 208)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2573, file: !63, line: 229, baseType: !37, size: 32, offset: 224)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2573, file: !63, line: 235, baseType: !2559, size: 64, offset: 256)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2573, file: !63, line: 236, baseType: !2566, size: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2573, file: !63, line: 237, baseType: !2559, size: 64, offset: 384)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2573, file: !63, line: 238, baseType: !2566, size: 64, offset: 448)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2573, file: !63, line: 239, baseType: !2593, size: 4096, align: 512, offset: 512)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2569, size: 4096, align: 512, elements: !2594)
!2594 = !{!2595}
!2595 = !DISubrange(count: 8)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2569, file: !63, line: 161, baseType: !37, size: 32, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2569, file: !63, line: 162, baseType: !2598, size: 32, offset: 96)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !179, line: 32, baseType: !2599)
!2599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !190, line: 96, baseType: !115)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2569, file: !63, line: 163, baseType: !2601, size: 32, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !655, line: 274, baseType: !2602)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !655, line: 274, size: 32, elements: !2603)
!2603 = !{!2604}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2602, file: !655, line: 274, baseType: !659, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2569, file: !63, line: 164, baseType: !2566, size: 64, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2569, file: !63, line: 165, baseType: !2607, size: 128, offset: 256)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2555, line: 14, size: 128, elements: !2608)
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2607, file: !2555, line: 15, baseType: !1058, size: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2569, file: !63, line: 166, baseType: !2611, size: 64, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!2559}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2569, file: !63, line: 167, baseType: !2559, size: 64, offset: 448)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2551, file: !63, line: 123, baseType: !238, size: 8, offset: 448)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2551, file: !63, line: 124, baseType: !238, size: 8, offset: 456)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2551, file: !63, line: 125, baseType: !238, size: 8, offset: 464)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2551, file: !63, line: 126, baseType: !238, size: 8, offset: 472)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2535, file: !1552, line: 671, baseType: !2551, size: 512, offset: 1216)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2535, file: !1552, line: 679, baseType: !2621, size: 64, offset: 1728)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2441, file: !1552, line: 800, baseType: !2623, size: 64, offset: 5248)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2625)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1552, line: 800, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2441, file: !1552, line: 809, baseType: !2627, size: 64, offset: 5312)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1552, line: 70, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2441, file: !1552, line: 825, baseType: !2630, size: 2048, align: 512, offset: 5632)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1552, line: 509, size: 2048, align: 512, elements: !2631)
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2630, file: !1552, line: 511, baseType: !432, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2630, file: !1552, line: 512, baseType: !432, size: 64, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2630, file: !1552, line: 513, baseType: !432, size: 64, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2630, file: !1552, line: 514, baseType: !432, size: 64, offset: 192)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2630, file: !1552, line: 515, baseType: !432, size: 64, offset: 256)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2630, file: !1552, line: 516, baseType: !432, size: 64, offset: 320)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2630, file: !1552, line: 518, baseType: !432, size: 64, offset: 384)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2630, file: !1552, line: 519, baseType: !432, size: 64, offset: 448)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2630, file: !1552, line: 520, baseType: !212, size: 64, offset: 512)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2630, file: !1552, line: 522, baseType: !432, size: 64, offset: 576)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2630, file: !1552, line: 523, baseType: !432, size: 64, offset: 640)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2630, file: !1552, line: 524, baseType: !212, size: 64, offset: 704)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2630, file: !1552, line: 526, baseType: !212, size: 64, offset: 768)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2630, file: !1552, line: 527, baseType: !432, size: 64, offset: 832)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2630, file: !1552, line: 529, baseType: !432, size: 64, offset: 896)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2630, file: !1552, line: 530, baseType: !432, size: 64, offset: 960)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2630, file: !1552, line: 531, baseType: !432, size: 64, offset: 1024)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2630, file: !1552, line: 532, baseType: !432, size: 64, offset: 1088)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2630, file: !1552, line: 533, baseType: !432, size: 64, offset: 1152)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2630, file: !1552, line: 535, baseType: !432, size: 64, offset: 1216)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2630, file: !1552, line: 536, baseType: !432, size: 64, offset: 1280)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2630, file: !1552, line: 537, baseType: !432, size: 64, offset: 1344)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2630, file: !1552, line: 538, baseType: !432, size: 64, offset: 1408)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2630, file: !1552, line: 539, baseType: !432, size: 64, offset: 1472)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2630, file: !1552, line: 540, baseType: !432, size: 64, offset: 1536)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2630, file: !1552, line: 541, baseType: !432, size: 64, offset: 1600)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2630, file: !1552, line: 542, baseType: !432, size: 64, offset: 1664)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2630, file: !1552, line: 543, baseType: !432, size: 64, offset: 1728)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2441, file: !1552, line: 833, baseType: !37, size: 32, offset: 7680)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2441, file: !1552, line: 836, baseType: !37, size: 32, offset: 7712)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2441, file: !1552, line: 837, baseType: !115, size: 32, offset: 7744)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2441, file: !1552, line: 838, baseType: !2664, size: 64, offset: 7808)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2666)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2667, line: 19, baseType: !2668)
!2667 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2667, line: 19, size: 64, elements: !2669)
!2669 = !{!2670}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2668, file: !2667, line: 19, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 64, elements: !2672)
!2672 = !{!2673}
!2673 = !DISubrange(count: 1)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2441, file: !1552, line: 839, baseType: !2675, size: 64, offset: 7872)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2441, file: !1552, line: 840, baseType: !2666, size: 64, offset: 7936)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2441, file: !1552, line: 841, baseType: !180, size: 64, offset: 8000)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2441, file: !1552, line: 843, baseType: !248, size: 16, offset: 8064)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2441, file: !1552, line: 845, baseType: !248, size: 16, offset: 8080)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2441, file: !1552, line: 848, baseType: !115, size: 32, offset: 8096)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2441, file: !1552, line: 849, baseType: !2682, size: 32, offset: 8128)
!2682 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1552, line: 718, size: 32, elements: !2683)
!2683 = !{!2684, !2691}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2682, file: !1552, line: 724, baseType: !2685, size: 32)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2682, file: !1552, line: 719, size: 32, elements: !2686)
!2686 = !{!2687, !2688, !2689, !2690}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2685, file: !1552, line: 720, baseType: !238, size: 8)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2685, file: !1552, line: 721, baseType: !238, size: 8, offset: 8)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2685, file: !1552, line: 722, baseType: !238, size: 8, offset: 16)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2685, file: !1552, line: 723, baseType: !238, size: 8, offset: 24)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2682, file: !1552, line: 725, baseType: !489, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2441, file: !1552, line: 850, baseType: !256, size: 128, offset: 8192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2441, file: !1552, line: 851, baseType: !2694, size: 64, offset: 8320)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1552, line: 60, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2441, file: !1552, line: 855, baseType: !192, size: 64, offset: 8384)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2441, file: !1552, line: 856, baseType: !238, size: 8, offset: 8448)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2441, file: !1552, line: 857, baseType: !238, size: 8, offset: 8456)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2441, file: !1552, line: 858, baseType: !115, size: 32, offset: 8480)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2441, file: !1552, line: 859, baseType: !256, size: 128, offset: 8512)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2441, file: !1552, line: 860, baseType: !115, size: 32, offset: 8640)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2441, file: !1552, line: 861, baseType: !256, size: 128, offset: 8704)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2441, file: !1552, line: 873, baseType: !2704, size: 256, offset: 8832)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1552, line: 376, size: 256, elements: !2705)
!2705 = !{!2706, !2707, !2708, !2709}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2704, file: !1552, line: 381, baseType: !192, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2704, file: !1552, line: 384, baseType: !434, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2704, file: !1552, line: 389, baseType: !434, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2704, file: !1552, line: 392, baseType: !434, size: 64, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2441, file: !1552, line: 875, baseType: !256, size: 128, offset: 9088)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2441, file: !1552, line: 877, baseType: !2712, size: 320, offset: 9216)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2713, line: 86, size: 320, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2714 = !{!2715, !2716, !2717}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2712, file: !2713, line: 87, baseType: !115, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2712, file: !2713, line: 88, baseType: !256, size: 128, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2712, file: !2713, line: 89, baseType: !256, size: 128, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2441, file: !1552, line: 878, baseType: !456, size: 192, align: 64, offset: 9536)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2441, file: !1552, line: 881, baseType: !1344, size: 64, offset: 9728)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2441, file: !1552, line: 882, baseType: !1344, size: 64, offset: 9792)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2441, file: !1552, line: 884, baseType: !115, size: 32, offset: 9856)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2441, file: !1552, line: 885, baseType: !115, size: 32, offset: 9888)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2441, file: !1552, line: 886, baseType: !115, size: 32, offset: 9920)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2441, file: !1552, line: 888, baseType: !115, size: 32, offset: 9952)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2441, file: !1552, line: 890, baseType: !192, size: 64, offset: 9984)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2441, file: !1552, line: 893, baseType: !37, size: 32, offset: 10048)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2441, file: !1552, line: 896, baseType: !37, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2441, file: !1552, line: 897, baseType: !37, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2441, file: !1552, line: 898, baseType: !37, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2441, file: !1552, line: 899, baseType: !37, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2441, file: !1552, line: 919, baseType: !37, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2441, file: !1552, line: 922, baseType: !37, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2441, file: !1552, line: 923, baseType: !37, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2441, file: !1552, line: 925, baseType: !37, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2441, file: !1552, line: 939, baseType: !37, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2441, file: !1552, line: 941, baseType: !37, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2441, file: !1552, line: 944, baseType: !37, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2441, file: !1552, line: 956, baseType: !37, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2441, file: !1552, line: 962, baseType: !37, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2441, file: !1552, line: 966, baseType: !37, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2441, file: !1552, line: 969, baseType: !192, size: 64, offset: 10176)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2441, file: !1552, line: 971, baseType: !2743, size: 448, offset: 10240)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !68, line: 25, size: 448, elements: !2744)
!2744 = !{!2745, !2746, !2751}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2743, file: !68, line: 26, baseType: !192, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2743, file: !68, line: 27, baseType: !2747, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!803, !2750}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, scope: !2743, file: !68, line: 28, baseType: !2752, size: 320, offset: 128)
!2752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2743, file: !68, line: 28, size: 320, elements: !2753)
!2753 = !{!2754, !2764, !2789}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2752, file: !68, line: 37, baseType: !2755, size: 320)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2752, file: !68, line: 30, size: 320, elements: !2756)
!2756 = !{!2757, !2759, !2760, !2761, !2762, !2763}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2755, file: !68, line: 31, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2755, file: !68, line: 32, baseType: !489, size: 32, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2755, file: !68, line: 33, baseType: !489, size: 32, offset: 96)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2755, file: !68, line: 34, baseType: !489, size: 32, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2755, file: !68, line: 35, baseType: !432, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2755, file: !68, line: 36, baseType: !2758, size: 64, offset: 256)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2752, file: !68, line: 47, baseType: !2765, size: 192)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2752, file: !68, line: 39, size: 192, elements: !2766)
!2766 = !{!2767, !2768, !2769, !2788}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2765, file: !68, line: 40, baseType: !2598, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2765, file: !68, line: 41, baseType: !67, size: 32, offset: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, scope: !2765, file: !68, line: 42, baseType: !2770, size: 64, offset: 64)
!2770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2765, file: !68, line: 42, size: 64, elements: !2771)
!2771 = !{!2772, !2780}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2770, file: !68, line: 43, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2775, line: 7, size: 128, elements: !2776)
!2775 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2776 = !{!2777, !2779}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2774, file: !2775, line: 8, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !190, line: 93, baseType: !199)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2774, file: !2775, line: 9, baseType: !199, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2770, file: !68, line: 44, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2783, line: 7, size: 64, elements: !2784)
!2783 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2784 = !{!2785, !2787}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2782, file: !2783, line: 8, baseType: !2786, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2783, line: 5, baseType: !449)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2782, file: !2783, line: 9, baseType: !449, size: 32, offset: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2765, file: !68, line: 46, baseType: !432, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2752, file: !68, line: 55, baseType: !2790, size: 256)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2752, file: !68, line: 49, size: 256, elements: !2791)
!2791 = !{!2792, !2800, !2801, !2802, !2803}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2790, file: !68, line: 50, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2795, line: 36, size: 64, elements: !2796)
!2795 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2796 = !{!2797, !2798, !2799}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2794, file: !2795, line: 37, baseType: !115, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2794, file: !2795, line: 38, baseType: !494, size: 16, offset: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2794, file: !2795, line: 39, baseType: !494, size: 16, offset: 48)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2790, file: !68, line: 51, baseType: !115, size: 32, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2790, file: !68, line: 52, baseType: !115, size: 32, offset: 96)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2790, file: !68, line: 53, baseType: !192, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2790, file: !68, line: 54, baseType: !192, size: 64, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2441, file: !1552, line: 973, baseType: !2805, size: 32, offset: 10688)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !179, line: 27, baseType: !2806)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !190, line: 28, baseType: !115)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2441, file: !1552, line: 974, baseType: !2805, size: 32, offset: 10720)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2441, file: !1552, line: 978, baseType: !192, size: 64, offset: 10752)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2441, file: !1552, line: 987, baseType: !2440, size: 64, offset: 10816)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2441, file: !1552, line: 990, baseType: !2440, size: 64, offset: 10880)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2441, file: !1552, line: 995, baseType: !256, size: 128, offset: 10944)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2441, file: !1552, line: 996, baseType: !256, size: 128, offset: 11072)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2441, file: !1552, line: 997, baseType: !2440, size: 64, offset: 11200)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2441, file: !1552, line: 1005, baseType: !256, size: 128, offset: 11264)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2441, file: !1552, line: 1006, baseType: !256, size: 128, offset: 11392)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2441, file: !1552, line: 1009, baseType: !350, size: 64, offset: 11520)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2441, file: !1552, line: 1010, baseType: !2818, size: 512, offset: 11584)
!2818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 512, elements: !372)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2441, file: !1552, line: 1011, baseType: !256, size: 128, offset: 12096)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2441, file: !1552, line: 1012, baseType: !256, size: 128, offset: 12224)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2441, file: !1552, line: 1014, baseType: !1717, size: 64, offset: 12352)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2441, file: !1552, line: 1017, baseType: !1864, size: 64, offset: 12416)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2441, file: !1552, line: 1020, baseType: !1864, size: 64, offset: 12480)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2441, file: !1552, line: 1023, baseType: !180, size: 64, offset: 12544)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2441, file: !1552, line: 1025, baseType: !432, size: 64, offset: 12608)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2441, file: !1552, line: 1026, baseType: !432, size: 64, offset: 12672)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2441, file: !1552, line: 1031, baseType: !432, size: 64, offset: 12736)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2441, file: !1552, line: 1032, baseType: !2829, size: 192, offset: 12800)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1552, line: 324, size: 192, elements: !2830)
!2830 = !{!2831, !2832, !2833}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2829, file: !1552, line: 326, baseType: !432, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2829, file: !1552, line: 327, baseType: !432, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2829, file: !1552, line: 328, baseType: !217, size: 32, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2441, file: !1552, line: 1041, baseType: !192, size: 64, offset: 12992)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2441, file: !1552, line: 1042, baseType: !192, size: 64, offset: 13056)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2441, file: !1552, line: 1045, baseType: !432, size: 64, offset: 13120)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2441, file: !1552, line: 1048, baseType: !432, size: 64, offset: 13184)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2441, file: !1552, line: 1051, baseType: !192, size: 64, offset: 13248)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2441, file: !1552, line: 1052, baseType: !192, size: 64, offset: 13312)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2441, file: !1552, line: 1055, baseType: !2841, size: 640, offset: 13376)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2842, line: 132, size: 640, elements: !2843)
!2842 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2843 = !{!2844, !2850, !2851}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2841, file: !2842, line: 133, baseType: !2845, size: 576)
!2845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2846, size: 576, elements: !346)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2842, line: 117, size: 192, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2846, file: !2842, line: 118, baseType: !432, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2846, file: !2842, line: 119, baseType: !2607, size: 128, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2841, file: !2842, line: 134, baseType: !37, size: 32, offset: 576)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2841, file: !2842, line: 135, baseType: !37, size: 32, offset: 608)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2441, file: !1552, line: 1058, baseType: !2853, size: 448, offset: 14016)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2842, line: 144, size: 448, elements: !2854)
!2854 = !{!2855, !2856, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2853, file: !2842, line: 145, baseType: !299, size: 128, align: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2853, file: !2842, line: 146, baseType: !202, size: 256, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2853, file: !2842, line: 147, baseType: !37, size: 32, offset: 384)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2441, file: !1552, line: 1064, baseType: !405, size: 64, offset: 14464)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2441, file: !1552, line: 1067, baseType: !405, size: 64, offset: 14528)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2441, file: !1552, line: 1070, baseType: !405, size: 64, offset: 14592)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2441, file: !1552, line: 1074, baseType: !441, size: 64, offset: 14656)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2441, file: !1552, line: 1084, baseType: !2863, size: 128, offset: 14720)
!2863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2864)
!2864 = !{!2865}
!2865 = !DISubrange(count: 16)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2441, file: !1552, line: 1086, baseType: !2867, size: 64, offset: 14848)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1552, line: 55, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2441, file: !1552, line: 1089, baseType: !2870, size: 64, offset: 14912)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2871, line: 12, size: 64, elements: !2872)
!2871 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2872 = !{!2873}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2870, file: !2871, line: 13, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2871, line: 8, flags: DIFlagFwdDecl)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2441, file: !1552, line: 1090, baseType: !2877, size: 128, offset: 14976)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2878, line: 13, size: 128, elements: !2879)
!2878 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2879 = !{!2880}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2877, file: !2878, line: 14, baseType: !256, size: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2441, file: !1552, line: 1097, baseType: !2882, size: 64, offset: 15104)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1552, line: 50, flags: DIFlagFwdDecl)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2441, file: !1552, line: 1100, baseType: !2885, size: 64, offset: 15168)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1552, line: 1100, flags: DIFlagFwdDecl)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2441, file: !1552, line: 1103, baseType: !2888, size: 64, offset: 15232)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1552, line: 53, flags: DIFlagFwdDecl)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2441, file: !1552, line: 1107, baseType: !2891, size: 64, offset: 15296)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1552, line: 56, flags: DIFlagFwdDecl)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2441, file: !1552, line: 1110, baseType: !2894, size: 64, offset: 15360)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2896, line: 93, size: 8768, elements: !2897)
!2896 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2945, !2954, !2955, !2957, !2958, !2959, !2962, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !3000, !3001, !3008, !3018, !3021, !3022, !3025, !3026, !3027, !3028, !3029, !3030}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2895, file: !2896, line: 94, baseType: !354, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2895, file: !2896, line: 95, baseType: !230, size: 32, offset: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2895, file: !2896, line: 96, baseType: !115, size: 32, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2895, file: !2896, line: 97, baseType: !115, size: 32, offset: 96)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2895, file: !2896, line: 98, baseType: !256, size: 128, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2895, file: !2896, line: 100, baseType: !376, size: 192, offset: 256)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2895, file: !2896, line: 103, baseType: !2440, size: 64, offset: 448)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2895, file: !2896, line: 106, baseType: !2906, size: 192, offset: 512)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !615, line: 32, size: 192, elements: !2907)
!2907 = !{!2908, !2909}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2906, file: !615, line: 33, baseType: !256, size: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2906, file: !615, line: 34, baseType: !2910, size: 64, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2911, line: 25, baseType: !2912)
!2911 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2911, line: 23, size: 64, elements: !2913)
!2913 = !{!2914}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2912, file: !2911, line: 24, baseType: !2671, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2895, file: !2896, line: 109, baseType: !363, size: 64, offset: 704)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2895, file: !2896, line: 112, baseType: !115, size: 32, offset: 768)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2895, file: !2896, line: 114, baseType: !115, size: 32, offset: 800)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2895, file: !2896, line: 115, baseType: !2440, size: 64, offset: 832)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2895, file: !2896, line: 118, baseType: !115, size: 32, offset: 896)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2895, file: !2896, line: 119, baseType: !37, size: 32, offset: 928)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2895, file: !2896, line: 121, baseType: !2922, size: 64, offset: 960)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2896, line: 80, size: 448, elements: !2924)
!2924 = !{!2925, !2926, !2932}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2923, file: !2896, line: 81, baseType: !230, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2923, file: !2896, line: 82, baseType: !2927, size: 128, offset: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2896, line: 75, size: 128, elements: !2928)
!2928 = !{!2929, !2930}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2927, file: !2896, line: 76, baseType: !2440, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2927, file: !2896, line: 77, baseType: !2931, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2923, file: !2896, line: 83, baseType: !1718, size: 256, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2895, file: !2896, line: 132, baseType: !37, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2895, file: !2896, line: 133, baseType: !37, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2895, file: !2896, line: 138, baseType: !37, size: 32, offset: 1056)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2895, file: !2896, line: 139, baseType: !256, size: 128, offset: 1088)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2895, file: !2896, line: 142, baseType: !2551, size: 512, offset: 1216)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2895, file: !2896, line: 143, baseType: !2559, size: 64, offset: 1728)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2895, file: !2896, line: 150, baseType: !2940, size: 256, offset: 1792)
!2940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2941, size: 256, elements: !1854)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2896, line: 38, size: 128, elements: !2942)
!2942 = !{!2943, !2944}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2941, file: !2896, line: 39, baseType: !432, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2941, file: !2896, line: 40, baseType: !432, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2895, file: !2896, line: 156, baseType: !2946, size: 192, offset: 2048)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2896, line: 66, size: 192, elements: !2947)
!2947 = !{!2948}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2946, file: !2896, line: 67, baseType: !2949, size: 192)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2896, line: 47, size: 192, elements: !2950)
!2950 = !{!2951, !2952, !2953}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2949, file: !2896, line: 48, baseType: !208, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2949, file: !2896, line: 49, baseType: !208, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2949, file: !2896, line: 50, baseType: !208, size: 64, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2895, file: !2896, line: 160, baseType: !2841, size: 640, offset: 2240)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2895, file: !2896, line: 163, baseType: !2956, size: 256, offset: 2880)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 256, elements: !372)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2895, file: !2896, line: 169, baseType: !350, size: 64, offset: 3136)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2895, file: !2896, line: 172, baseType: !115, size: 32, offset: 3200)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2895, file: !2896, line: 174, baseType: !2960, size: 64, offset: 3264)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2896, line: 174, flags: DIFlagFwdDecl)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2895, file: !2896, line: 185, baseType: !2963, size: 64, offset: 3328)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !655, line: 860, baseType: !2964)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !655, line: 853, size: 64, elements: !2965)
!2965 = !{!2966, !2967}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2964, file: !655, line: 858, baseType: !654, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2964, file: !655, line: 859, baseType: !309, size: 32, offset: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2895, file: !2896, line: 186, baseType: !432, size: 64, offset: 3392)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2895, file: !2896, line: 186, baseType: !432, size: 64, offset: 3456)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2895, file: !2896, line: 186, baseType: !432, size: 64, offset: 3520)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2895, file: !2896, line: 186, baseType: !432, size: 64, offset: 3584)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2895, file: !2896, line: 187, baseType: !432, size: 64, offset: 3648)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2895, file: !2896, line: 188, baseType: !432, size: 64, offset: 3712)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2895, file: !2896, line: 189, baseType: !2829, size: 192, offset: 3776)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2895, file: !2896, line: 190, baseType: !192, size: 64, offset: 3968)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2895, file: !2896, line: 190, baseType: !192, size: 64, offset: 4032)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2895, file: !2896, line: 190, baseType: !192, size: 64, offset: 4096)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2895, file: !2896, line: 190, baseType: !192, size: 64, offset: 4160)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2895, file: !2896, line: 191, baseType: !192, size: 64, offset: 4224)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2895, file: !2896, line: 191, baseType: !192, size: 64, offset: 4288)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2895, file: !2896, line: 191, baseType: !192, size: 64, offset: 4352)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2895, file: !2896, line: 191, baseType: !192, size: 64, offset: 4416)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2895, file: !2896, line: 192, baseType: !192, size: 64, offset: 4480)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2895, file: !2896, line: 192, baseType: !192, size: 64, offset: 4544)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2895, file: !2896, line: 192, baseType: !192, size: 64, offset: 4608)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2895, file: !2896, line: 192, baseType: !192, size: 64, offset: 4672)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2895, file: !2896, line: 193, baseType: !192, size: 64, offset: 4736)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2895, file: !2896, line: 193, baseType: !192, size: 64, offset: 4800)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2895, file: !2896, line: 194, baseType: !2990, size: 448, offset: 4864)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2991, line: 12, size: 448, elements: !2992)
!2991 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998, !2999}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2990, file: !2991, line: 15, baseType: !432, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2990, file: !2991, line: 17, baseType: !432, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2990, file: !2991, line: 19, baseType: !432, size: 64, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2990, file: !2991, line: 21, baseType: !432, size: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2990, file: !2991, line: 29, baseType: !432, size: 64, offset: 256)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2990, file: !2991, line: 35, baseType: !432, size: 64, offset: 320)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2990, file: !2991, line: 44, baseType: !432, size: 64, offset: 384)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2895, file: !2896, line: 202, baseType: !434, size: 64, offset: 5312)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2895, file: !2896, line: 213, baseType: !3002, size: 2048, offset: 5376)
!3002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3003, size: 2048, elements: !2864)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3004, line: 43, size: 128, elements: !3005)
!3004 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3005 = !{!3006, !3007}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3003, file: !3004, line: 44, baseType: !191, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3003, file: !3004, line: 45, baseType: !191, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2895, file: !2896, line: 216, baseType: !3009, size: 448, offset: 7424)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2896, line: 30, size: 448, elements: !3010)
!3010 = !{!3011, !3012, !3013, !3014, !3015, !3016, !3017}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3009, file: !2896, line: 31, baseType: !115, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3009, file: !2896, line: 32, baseType: !803, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3009, file: !2896, line: 33, baseType: !192, size: 64, offset: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3009, file: !2896, line: 34, baseType: !432, size: 64, offset: 192)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3009, file: !2896, line: 34, baseType: !432, size: 64, offset: 256)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3009, file: !2896, line: 35, baseType: !192, size: 64, offset: 320)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3009, file: !2896, line: 35, baseType: !192, size: 64, offset: 384)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2895, file: !2896, line: 219, baseType: !3019, size: 64, offset: 7872)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2896, line: 219, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2895, file: !2896, line: 222, baseType: !37, size: 32, offset: 7936)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2895, file: !2896, line: 223, baseType: !3023, size: 64, offset: 8000)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2896, line: 223, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2895, file: !2896, line: 230, baseType: !525, size: 8, offset: 8064)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2895, file: !2896, line: 231, baseType: !494, size: 16, offset: 8080)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2895, file: !2896, line: 232, baseType: !494, size: 16, offset: 8096)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2895, file: !2896, line: 234, baseType: !1344, size: 64, offset: 8128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2895, file: !2896, line: 237, baseType: !202, size: 256, offset: 8192)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2895, file: !2896, line: 243, baseType: !464, size: 320, offset: 8448)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2441, file: !1552, line: 1111, baseType: !3032, size: 64, offset: 15424)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2896, line: 20, size: 16640, elements: !3034)
!3034 = !{!3035, !3036, !3037, !3038}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3033, file: !2896, line: 21, baseType: !309, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3033, file: !2896, line: 22, baseType: !354, size: 32, offset: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3033, file: !2896, line: 23, baseType: !376, size: 192, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3033, file: !2896, line: 24, baseType: !3039, size: 16384, offset: 256)
!3039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3040, size: 16384, elements: !988)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !615, line: 51, size: 256, elements: !3041)
!3041 = !{!3042}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3040, file: !615, line: 52, baseType: !3043, size: 256)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !615, line: 37, size: 256, elements: !3044)
!3044 = !{!3045, !3052, !3053, !3057}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3043, file: !615, line: 39, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3047, line: 83, baseType: !3048)
!3047 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3047, line: 82, baseType: !3050)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !115}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3043, file: !615, line: 40, baseType: !192, size: 64, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3043, file: !615, line: 46, baseType: !3054, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3047, line: 86, baseType: !3055)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3047, line: 85, baseType: !2069)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3043, file: !615, line: 48, baseType: !2910, size: 64, offset: 192)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2441, file: !1552, line: 1112, baseType: !2910, size: 64, offset: 15488)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2441, file: !1552, line: 1113, baseType: !2910, size: 64, offset: 15552)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2441, file: !1552, line: 1115, baseType: !2910, size: 64, offset: 15616)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2441, file: !1552, line: 1116, baseType: !2906, size: 192, offset: 15680)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2441, file: !1552, line: 1117, baseType: !192, size: 64, offset: 15872)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2441, file: !1552, line: 1118, baseType: !188, size: 64, offset: 15936)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2441, file: !1552, line: 1119, baseType: !37, size: 32, offset: 16000)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2441, file: !1552, line: 1121, baseType: !302, size: 64, offset: 16064)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2441, file: !1552, line: 1125, baseType: !3067, size: 64, offset: 16128)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1552, line: 43, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2441, file: !1552, line: 1127, baseType: !395, size: 32, offset: 16192)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2441, file: !1552, line: 1128, baseType: !37, size: 32, offset: 16224)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2441, file: !1552, line: 1130, baseType: !3072, size: 128, offset: 16256)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3073, line: 37, size: 128, elements: !3074)
!3073 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3074 = !{!3075, !3076, !3077}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3072, file: !3073, line: 38, baseType: !115, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3072, file: !3073, line: 39, baseType: !230, size: 32, offset: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3072, file: !3073, line: 40, baseType: !3078, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3073, line: 24, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2441, file: !1552, line: 1131, baseType: !3081, size: 256, offset: 16384)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3082, line: 12, size: 256, elements: !3083)
!3082 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3083 = !{!3084, !3085, !3086, !3087}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3081, file: !3082, line: 13, baseType: !186, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3081, file: !3082, line: 14, baseType: !192, size: 64, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3081, file: !3082, line: 15, baseType: !192, size: 64, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3081, file: !3082, line: 16, baseType: !525, size: 8, offset: 192)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2441, file: !1552, line: 1134, baseType: !432, size: 64, offset: 16640)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2441, file: !1552, line: 1135, baseType: !432, size: 64, offset: 16704)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2441, file: !1552, line: 1138, baseType: !309, size: 32, offset: 16768)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2441, file: !1552, line: 1141, baseType: !217, size: 32, offset: 16800)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2441, file: !1552, line: 1143, baseType: !3093, size: 64, offset: 16832)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1552, line: 735, size: 64, elements: !3094)
!3094 = !{!3095}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3093, file: !1552, line: 736, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2441, file: !1552, line: 1147, baseType: !1058, size: 128, offset: 16896)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2441, file: !1552, line: 1149, baseType: !2440, size: 64, offset: 17024)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2441, file: !1552, line: 1151, baseType: !3100, size: 64, offset: 17088)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1552, line: 1151, flags: DIFlagFwdDecl)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2441, file: !1552, line: 1188, baseType: !180, size: 64, offset: 17152)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2441, file: !1552, line: 1191, baseType: !3104, size: 64, offset: 17216)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1552, line: 44, flags: DIFlagFwdDecl)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2441, file: !1552, line: 1194, baseType: !3107, size: 64, offset: 17280)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1552, line: 45, flags: DIFlagFwdDecl)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2441, file: !1552, line: 1197, baseType: !3110, size: 64, offset: 17344)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1552, line: 61, flags: DIFlagFwdDecl)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2441, file: !1552, line: 1199, baseType: !3113, size: 64, offset: 17408)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3115, line: 99, size: 128, elements: !3116)
!3115 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3116 = !{!3117, !3118, !3119}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3114, file: !3115, line: 100, baseType: !206, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3114, file: !3115, line: 101, baseType: !230, size: 32, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3114, file: !3115, line: 103, baseType: !248, size: 16, offset: 96)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2441, file: !1552, line: 1202, baseType: !3121, size: 64, offset: 17472)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1552, line: 48, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2441, file: !1552, line: 1205, baseType: !192, size: 64, offset: 17536)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2441, file: !1552, line: 1206, baseType: !3125, size: 64, offset: 17600)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !615, line: 14, baseType: !3127)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !615, line: 12, size: 384, elements: !3128)
!3128 = !{!3129}
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !3127, file: !615, line: 13, baseType: !3130, size: 384)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3127, file: !615, line: 13, size: 384, elements: !3131)
!3131 = !{!3132, !3133, !3134, !3135}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3130, file: !615, line: 13, baseType: !115, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3130, file: !615, line: 13, baseType: !115, size: 32, offset: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3130, file: !615, line: 13, baseType: !115, size: 32, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3130, file: !615, line: 13, baseType: !3136, size: 256, offset: 128)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3137, line: 37, size: 256, elements: !3138)
!3137 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3138 = !{!3139, !3144, !3157, !3163, !3172, !3199, !3204}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3136, file: !3137, line: 42, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3137, line: 39, size: 64, elements: !3141)
!3141 = !{!3142, !3143}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3140, file: !3137, line: 40, baseType: !2806, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3140, file: !3137, line: 41, baseType: !401, size: 32, offset: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3136, file: !3137, line: 50, baseType: !3145, size: 192)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3137, line: 45, size: 192, elements: !3146)
!3146 = !{!3147, !3149, !3150, !3156}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3145, file: !3137, line: 46, baseType: !3148, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !190, line: 95, baseType: !115)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3145, file: !3137, line: 47, baseType: !115, size: 32, offset: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3145, file: !3137, line: 48, baseType: !3151, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3137, line: 11, baseType: !3152)
!3152 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3137, line: 8, size: 64, elements: !3153)
!3153 = !{!3154, !3155}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3152, file: !3137, line: 9, baseType: !115, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3152, file: !3137, line: 10, baseType: !180, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3145, file: !3137, line: 49, baseType: !115, size: 32, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3136, file: !3137, line: 57, baseType: !3158, size: 128)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3137, line: 53, size: 128, elements: !3159)
!3159 = !{!3160, !3161, !3162}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3158, file: !3137, line: 54, baseType: !2806, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3158, file: !3137, line: 55, baseType: !401, size: 32, offset: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3158, file: !3137, line: 56, baseType: !3151, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3136, file: !3137, line: 66, baseType: !3164, size: 256)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3137, line: 60, size: 256, elements: !3165)
!3165 = !{!3166, !3167, !3168, !3169, !3171}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3164, file: !3137, line: 61, baseType: !2806, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3164, file: !3137, line: 62, baseType: !401, size: 32, offset: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3164, file: !3137, line: 63, baseType: !115, size: 32, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3164, file: !3137, line: 64, baseType: !3170, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !190, line: 94, baseType: !845)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3164, file: !3137, line: 65, baseType: !3170, size: 64, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3136, file: !3137, line: 105, baseType: !3173, size: 256)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3137, line: 69, size: 256, elements: !3174)
!3174 = !{!3175, !3176}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3173, file: !3137, line: 70, baseType: !180, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, scope: !3173, file: !3137, line: 79, baseType: !3177, size: 192, offset: 64)
!3177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3173, file: !3137, line: 79, size: 192, elements: !3178)
!3178 = !{!3179, !3180, !3181, !3188, !3193}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3177, file: !3137, line: 81, baseType: !115, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3177, file: !3137, line: 86, baseType: !494, size: 16)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3177, file: !3137, line: 92, baseType: !3182, size: 192)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3177, file: !3137, line: 88, size: 192, elements: !3183)
!3183 = !{!3184, !3186, !3187}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3182, file: !3137, line: 89, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2594)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3182, file: !3137, line: 90, baseType: !180, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3182, file: !3137, line: 91, baseType: !180, size: 64, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3177, file: !3137, line: 97, baseType: !3189, size: 96)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3177, file: !3137, line: 94, size: 96, elements: !3190)
!3190 = !{!3191, !3192}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3189, file: !3137, line: 95, baseType: !3185, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3189, file: !3137, line: 96, baseType: !490, size: 32, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3177, file: !3137, line: 103, baseType: !3194, size: 128)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3177, file: !3137, line: 99, size: 128, elements: !3195)
!3195 = !{!3196, !3197, !3198}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3194, file: !3137, line: 100, baseType: !192, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3194, file: !3137, line: 101, baseType: !490, size: 32, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3194, file: !3137, line: 102, baseType: !490, size: 32, offset: 96)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3136, file: !3137, line: 111, baseType: !3200, size: 128)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3137, line: 108, size: 128, elements: !3201)
!3201 = !{!3202, !3203}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3200, file: !3137, line: 109, baseType: !803, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3200, file: !3137, line: 110, baseType: !115, size: 32, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3136, file: !3137, line: 118, baseType: !3205, size: 128)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3137, line: 114, size: 128, elements: !3206)
!3206 = !{!3207, !3208, !3209}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3205, file: !3137, line: 115, baseType: !180, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3205, file: !3137, line: 116, baseType: !115, size: 32, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3205, file: !3137, line: 117, baseType: !37, size: 32, offset: 96)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2441, file: !1552, line: 1208, baseType: !2990, size: 448, offset: 17664)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2441, file: !1552, line: 1215, baseType: !432, size: 64, offset: 18112)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2441, file: !1552, line: 1217, baseType: !432, size: 64, offset: 18176)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2441, file: !1552, line: 1219, baseType: !432, size: 64, offset: 18240)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2441, file: !1552, line: 1223, baseType: !3215, size: 64, offset: 18304)
!3215 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3216, line: 99, baseType: !3217)
!3216 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3216, line: 99, size: 64, elements: !3218)
!3218 = !{!3219}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3217, file: !3216, line: 99, baseType: !2671, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2441, file: !1552, line: 1225, baseType: !654, size: 32, offset: 18368)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2441, file: !1552, line: 1226, baseType: !115, size: 32, offset: 18400)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2441, file: !1552, line: 1227, baseType: !115, size: 32, offset: 18432)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2441, file: !1552, line: 1231, baseType: !3224, size: 64, offset: 18496)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1552, line: 1231, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2441, file: !1552, line: 1233, baseType: !256, size: 128, offset: 18560)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2441, file: !1552, line: 1240, baseType: !3228, size: 64, offset: 18688)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1552, line: 62, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2441, file: !1552, line: 1242, baseType: !3231, size: 64, offset: 18752)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1552, line: 1242, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2441, file: !1552, line: 1244, baseType: !256, size: 128, offset: 18816)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2441, file: !1552, line: 1245, baseType: !3235, size: 64, offset: 18944)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1552, line: 51, flags: DIFlagFwdDecl)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2441, file: !1552, line: 1246, baseType: !202, size: 256, offset: 19008)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2441, file: !1552, line: 1247, baseType: !37, size: 32, offset: 19264)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2441, file: !1552, line: 1250, baseType: !3240, size: 64, offset: 19328)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1552, line: 57, flags: DIFlagFwdDecl)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2441, file: !1552, line: 1251, baseType: !202, size: 256, offset: 19392)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2441, file: !1552, line: 1252, baseType: !256, size: 128, offset: 19648)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2441, file: !1552, line: 1259, baseType: !1550, size: 64, offset: 19776)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2441, file: !1552, line: 1260, baseType: !494, size: 16, offset: 19840)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2441, file: !1552, line: 1261, baseType: !494, size: 16, offset: 19856)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2441, file: !1552, line: 1314, baseType: !3248, size: 64, offset: 19904)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3250, line: 62, size: 256, align: 256, elements: !3251)
!3250 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3251 = !{!3252, !3253, !3254, !3255, !3256, !3257, !3258}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3249, file: !3250, line: 75, baseType: !490, size: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3249, file: !3250, line: 90, baseType: !490, size: 32, offset: 32)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3249, file: !3250, line: 112, baseType: !433, size: 64, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3249, file: !3250, line: 132, baseType: !490, size: 32, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3249, file: !3250, line: 140, baseType: !490, size: 32, offset: 160)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3249, file: !3250, line: 149, baseType: !490, size: 32, offset: 192)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3249, file: !3250, line: 154, baseType: !3259, offset: 224)
!3259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !391)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2441, file: !1552, line: 1315, baseType: !489, size: 32, offset: 19968)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2441, file: !1552, line: 1316, baseType: !489, size: 32, offset: 20000)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2441, file: !1552, line: 1321, baseType: !192, size: 64, offset: 20032)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2441, file: !1552, line: 1325, baseType: !115, size: 32, offset: 20096)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2441, file: !1552, line: 1326, baseType: !115, size: 32, offset: 20128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2441, file: !1552, line: 1327, baseType: !115, size: 32, offset: 20160)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2441, file: !1552, line: 1328, baseType: !115, size: 32, offset: 20192)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2441, file: !1552, line: 1329, baseType: !299, size: 128, align: 64, offset: 20224)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2441, file: !1552, line: 1332, baseType: !3269, size: 128, offset: 20352)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3270, line: 51, size: 128, elements: !3271)
!3270 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3271 = !{!3272, !3277, !3278}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3269, file: !3270, line: 60, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3274, line: 7, size: 64, elements: !3275)
!3274 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3275 = !{!3276}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3273, file: !3274, line: 12, baseType: !2668, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3269, file: !3270, line: 63, baseType: !525, size: 8, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3269, file: !3270, line: 70, baseType: !525, size: 8, offset: 72)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2441, file: !1552, line: 1335, baseType: !3280, size: 64, offset: 20480)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1552, line: 59, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2441, file: !1552, line: 1337, baseType: !3283, size: 128, offset: 20544)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3270, line: 39, size: 128, elements: !3284)
!3284 = !{!3285, !3286, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3283, file: !3270, line: 40, baseType: !1076, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3283, file: !3270, line: 42, baseType: !490, size: 32, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3283, file: !3270, line: 43, baseType: !490, size: 32, offset: 96)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2441, file: !1552, line: 1340, baseType: !3289, size: 64, offset: 20672)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1552, line: 69, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2441, file: !1552, line: 1351, baseType: !115, size: 32, offset: 20736)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2441, file: !1552, line: 1352, baseType: !115, size: 32, offset: 20768)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2441, file: !1552, line: 1354, baseType: !192, size: 64, offset: 20800)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2441, file: !1552, line: 1364, baseType: !432, size: 64, offset: 20864)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2441, file: !1552, line: 1365, baseType: !432, size: 64, offset: 20928)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2441, file: !1552, line: 1412, baseType: !192, size: 64, offset: 20992)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2441, file: !1552, line: 1453, baseType: !3298, size: 64, offset: 21056)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1552, line: 1453, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2441, file: !1552, line: 1457, baseType: !3301, size: 64, offset: 21120)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !3303)
!3303 = !{!3304, !3305, !3324, !3327, !3328, !3361, !3371}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3302, file: !74, line: 62, baseType: !73, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, scope: !3302, file: !74, line: 64, baseType: !3306, size: 192, offset: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3302, file: !74, line: 64, size: 192, elements: !3307)
!3307 = !{!3308, !3319}
!3308 = !DIDerivedType(tag: DW_TAG_member, scope: !3306, file: !74, line: 65, baseType: !3309, size: 192)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3306, file: !74, line: 65, size: 192, elements: !3310)
!3310 = !{!3311, !3318}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3309, file: !74, line: 66, baseType: !3312, size: 128)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3313, line: 50, size: 128, elements: !3314)
!3313 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3314 = !{!3315, !3316, !3317}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3312, file: !3313, line: 52, baseType: !192, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3312, file: !3313, line: 54, baseType: !37, size: 32, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3312, file: !3313, line: 55, baseType: !37, size: 32, offset: 96)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3309, file: !74, line: 67, baseType: !192, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, scope: !3306, file: !74, line: 70, baseType: !3320, size: 192)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3306, file: !74, line: 70, size: 192, elements: !3321)
!3321 = !{!3322, !3323}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3320, file: !74, line: 71, baseType: !299, size: 128, align: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3320, file: !74, line: 72, baseType: !192, size: 64, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3302, file: !74, line: 76, baseType: !3325, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3302, file: !74, line: 77, baseType: !192, size: 64, offset: 320)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3302, file: !74, line: 79, baseType: !3329, size: 64, offset: 384)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3313, line: 25, size: 256, elements: !3331)
!3331 = !{!3332, !3338, !3342}
!3332 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !3313, line: 26, baseType: !3333, size: 128)
!3333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3330, file: !3313, line: 26, size: 128, elements: !3334)
!3334 = !{!3335, !3337}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3333, file: !3313, line: 27, baseType: !3336, size: 128)
!3336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 128, elements: !2864)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3333, file: !3313, line: 28, baseType: !3336, size: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3330, file: !3313, line: 31, baseType: !3339, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3341)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3313, line: 23, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !3313, line: 33, baseType: !3343, size: 64, offset: 192)
!3343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3330, file: !3313, line: 33, size: 64, elements: !3344)
!3344 = !{!3345, !3351, !3356}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3343, file: !3313, line: 38, baseType: !3346, size: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3343, file: !3313, line: 34, size: 64, elements: !3347)
!3347 = !{!3348, !3349, !3350}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3346, file: !3313, line: 35, baseType: !449, size: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3346, file: !3313, line: 36, baseType: !238, size: 8, offset: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3346, file: !3313, line: 37, baseType: !238, size: 8, offset: 40)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3343, file: !3313, line: 42, baseType: !3352, size: 16)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3343, file: !3313, line: 39, size: 16, elements: !3353)
!3353 = !{!3354, !3355}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3352, file: !3313, line: 40, baseType: !238, size: 8)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3352, file: !3313, line: 41, baseType: !238, size: 8, offset: 8)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3343, file: !3313, line: 46, baseType: !3357, size: 16)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3343, file: !3313, line: 43, size: 16, elements: !3358)
!3358 = !{!3359, !3360}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3357, file: !3313, line: 44, baseType: !238, size: 8)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3357, file: !3313, line: 45, baseType: !238, size: 8, offset: 8)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3302, file: !74, line: 81, baseType: !3362, size: 64, offset: 448)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !3364)
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3363, file: !74, line: 86, baseType: !3325, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3363, file: !74, line: 87, baseType: !192, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3363, file: !74, line: 88, baseType: !192, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3363, file: !74, line: 89, baseType: !192, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3363, file: !74, line: 90, baseType: !525, size: 8, offset: 256)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3363, file: !74, line: 92, baseType: !3362, size: 64, offset: 320)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3302, file: !74, line: 82, baseType: !37, size: 32, offset: 512)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2441, file: !1552, line: 1463, baseType: !3373, offset: 21184)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1552, line: 739, elements: !1365)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2441, file: !1552, line: 1470, baseType: !299, size: 128, align: 64, offset: 21184)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2441, file: !1552, line: 1471, baseType: !354, size: 32, offset: 21312)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2441, file: !1552, line: 1472, baseType: !115, size: 32, offset: 21344)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2441, file: !1552, line: 1474, baseType: !2440, size: 64, offset: 21376)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2441, file: !1552, line: 1475, baseType: !1964, size: 320, offset: 21440)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2441, file: !1552, line: 1478, baseType: !3380, size: 64, offset: 21760)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1552, line: 1478, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2441, file: !1552, line: 1482, baseType: !354, size: 32, offset: 21824)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2441, file: !1552, line: 1489, baseType: !180, size: 64, offset: 21888)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2441, file: !1552, line: 1504, baseType: !180, size: 64, offset: 21952)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2441, file: !1552, line: 1505, baseType: !433, size: 64, offset: 22016)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2441, file: !1552, line: 1506, baseType: !432, size: 64, offset: 22080)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2441, file: !1552, line: 1507, baseType: !433, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2441, file: !1552, line: 1508, baseType: !433, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2441, file: !1552, line: 1509, baseType: !433, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2441, file: !1552, line: 1510, baseType: !299, size: 128, align: 64, offset: 22208)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2441, file: !1552, line: 1511, baseType: !115, size: 32, offset: 22336)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2441, file: !1552, line: 1515, baseType: !3393, size: 64, offset: 22400)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !294, line: 56, size: 64, elements: !3394)
!3394 = !{!3395}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3393, file: !294, line: 57, baseType: !297, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2441, file: !1552, line: 1518, baseType: !3393, size: 64, offset: 22464)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2441, file: !1552, line: 1528, baseType: !299, size: 128, align: 64, offset: 22528)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2441, file: !1552, line: 1552, baseType: !3399, size: 35328, offset: 23040)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3400, line: 430, size: 35328, elements: !3401)
!3400 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3401 = !{!3402, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3431, !3432, !3433, !3434, !3435, !3436, !3439, !3440, !3441, !3442}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3399, file: !3400, line: 432, baseType: !3403, size: 192)
!3403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3404, size: 192, elements: !346)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3405, line: 16, size: 64, elements: !3406)
!3405 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3406 = !{!3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3404, file: !3405, line: 17, baseType: !246, size: 16)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3404, file: !3405, line: 18, baseType: !246, size: 16, offset: 16)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3404, file: !3405, line: 19, baseType: !246, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3404, file: !3405, line: 19, baseType: !246, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3404, file: !3405, line: 19, baseType: !246, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3404, file: !3405, line: 19, baseType: !246, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3404, file: !3405, line: 19, baseType: !246, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3404, file: !3405, line: 20, baseType: !246, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3404, file: !3405, line: 20, baseType: !246, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3404, file: !3405, line: 20, baseType: !246, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3404, file: !3405, line: 20, baseType: !246, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3404, file: !3405, line: 20, baseType: !246, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3404, file: !3405, line: 20, baseType: !246, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3399, file: !3400, line: 436, baseType: !192, size: 64, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3399, file: !3400, line: 440, baseType: !248, size: 16, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3399, file: !3400, line: 441, baseType: !248, size: 16, offset: 272)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3399, file: !3400, line: 442, baseType: !248, size: 16, offset: 288)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3399, file: !3400, line: 443, baseType: !248, size: 16, offset: 304)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3399, file: !3400, line: 447, baseType: !192, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3399, file: !3400, line: 448, baseType: !192, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3399, file: !3400, line: 459, baseType: !3428, size: 256, offset: 448)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3429, size: 256, elements: !372)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3400, line: 428, flags: DIFlagFwdDecl)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3399, file: !3400, line: 461, baseType: !192, size: 64, offset: 704)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3399, file: !3400, line: 463, baseType: !192, size: 64, offset: 768)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3399, file: !3400, line: 465, baseType: !192, size: 64, offset: 832)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3399, file: !3400, line: 466, baseType: !192, size: 64, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3399, file: !3400, line: 467, baseType: !192, size: 64, offset: 960)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3399, file: !3400, line: 473, baseType: !3437, size: 64, offset: 1024)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3400, line: 10, flags: DIFlagFwdDecl)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3399, file: !3400, line: 480, baseType: !192, size: 64, offset: 1088)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3399, file: !3400, line: 482, baseType: !37, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3399, file: !3400, line: 491, baseType: !489, size: 32, offset: 1184)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3399, file: !3400, line: 501, baseType: !3443, size: 33792, offset: 1536)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3444, line: 448, size: 33792, elements: !3445)
!3444 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3445 = !{!3446, !3447, !3448, !3612, !3613, !3619, !3620}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3443, file: !3444, line: 461, baseType: !37, size: 32)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3443, file: !3444, line: 468, baseType: !192, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3443, file: !3444, line: 476, baseType: !3449, size: 64, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3444, line: 356, size: 33280, align: 512, elements: !3451)
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3450, file: !3444, line: 358, baseType: !37, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3450, file: !3444, line: 361, baseType: !37, size: 32, offset: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3450, file: !3444, line: 364, baseType: !432, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3450, file: !3444, line: 367, baseType: !432, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3450, file: !3444, line: 370, baseType: !432, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3450, file: !3444, line: 373, baseType: !37, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3450, file: !3444, line: 376, baseType: !37, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3450, file: !3444, line: 391, baseType: !37, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3450, file: !3444, line: 394, baseType: !37, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3450, file: !3444, line: 397, baseType: !3462, size: 32768, offset: 512)
!3462 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3444, line: 348, size: 32768, elements: !3463)
!3463 = !{!3464, !3479, !3518, !3595, !3608}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3462, file: !3444, line: 349, baseType: !3465, size: 896)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3444, line: 12, size: 896, elements: !3466)
!3466 = !{!3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3478}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3465, file: !3444, line: 13, baseType: !489, size: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3465, file: !3444, line: 14, baseType: !489, size: 32, offset: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3465, file: !3444, line: 15, baseType: !489, size: 32, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3465, file: !3444, line: 16, baseType: !489, size: 32, offset: 96)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3465, file: !3444, line: 17, baseType: !489, size: 32, offset: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3465, file: !3444, line: 18, baseType: !489, size: 32, offset: 160)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3465, file: !3444, line: 19, baseType: !489, size: 32, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3465, file: !3444, line: 22, baseType: !3475, size: 640, offset: 224)
!3475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 640, elements: !3476)
!3476 = !{!3477}
!3477 = !DISubrange(count: 20)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3465, file: !3444, line: 25, baseType: !489, size: 32, offset: 864)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3462, file: !3444, line: 350, baseType: !3480, size: 4096, align: 128)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3444, line: 34, size: 4096, align: 128, elements: !3481)
!3481 = !{!3482, !3483, !3484, !3485, !3486, !3501, !3502, !3503, !3507, !3509, !3513}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3480, file: !3444, line: 35, baseType: !246, size: 16)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3480, file: !3444, line: 36, baseType: !246, size: 16, offset: 16)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3480, file: !3444, line: 37, baseType: !246, size: 16, offset: 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3480, file: !3444, line: 38, baseType: !246, size: 16, offset: 48)
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !3480, file: !3444, line: 39, baseType: !3487, size: 128, offset: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3480, file: !3444, line: 39, size: 128, elements: !3488)
!3488 = !{!3489, !3494}
!3489 = !DIDerivedType(tag: DW_TAG_member, scope: !3487, file: !3444, line: 40, baseType: !3490, size: 128)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3487, file: !3444, line: 40, size: 128, elements: !3491)
!3491 = !{!3492, !3493}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3490, file: !3444, line: 41, baseType: !432, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3490, file: !3444, line: 42, baseType: !432, size: 64, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, scope: !3487, file: !3444, line: 44, baseType: !3495, size: 128)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3487, file: !3444, line: 44, size: 128, elements: !3496)
!3496 = !{!3497, !3498, !3499, !3500}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3495, file: !3444, line: 45, baseType: !489, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3495, file: !3444, line: 46, baseType: !489, size: 32, offset: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3495, file: !3444, line: 47, baseType: !489, size: 32, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3495, file: !3444, line: 48, baseType: !489, size: 32, offset: 96)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3480, file: !3444, line: 51, baseType: !489, size: 32, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3480, file: !3444, line: 52, baseType: !489, size: 32, offset: 224)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3480, file: !3444, line: 55, baseType: !3504, size: 1024, offset: 256)
!3504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 1024, elements: !3505)
!3505 = !{!3506}
!3506 = !DISubrange(count: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3480, file: !3444, line: 58, baseType: !3508, size: 2048, offset: 1280)
!3508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 2048, elements: !988)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3480, file: !3444, line: 60, baseType: !3510, size: 384, offset: 3328)
!3510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 384, elements: !3511)
!3511 = !{!3512}
!3512 = !DISubrange(count: 12)
!3513 = !DIDerivedType(tag: DW_TAG_member, scope: !3480, file: !3444, line: 62, baseType: !3514, size: 384, offset: 3712)
!3514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3480, file: !3444, line: 62, size: 384, elements: !3515)
!3515 = !{!3516, !3517}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3514, file: !3444, line: 63, baseType: !3510, size: 384)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3514, file: !3444, line: 64, baseType: !3510, size: 384)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3462, file: !3444, line: 351, baseType: !3519, size: 1088)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3444, line: 79, size: 1088, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3594}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3519, file: !3444, line: 80, baseType: !489, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3519, file: !3444, line: 81, baseType: !489, size: 32, offset: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3519, file: !3444, line: 82, baseType: !489, size: 32, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3519, file: !3444, line: 83, baseType: !489, size: 32, offset: 96)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3519, file: !3444, line: 84, baseType: !489, size: 32, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3519, file: !3444, line: 85, baseType: !489, size: 32, offset: 160)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3519, file: !3444, line: 86, baseType: !489, size: 32, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3519, file: !3444, line: 88, baseType: !3475, size: 640, offset: 224)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3519, file: !3444, line: 89, baseType: !238, size: 8, offset: 864)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3519, file: !3444, line: 90, baseType: !238, size: 8, offset: 872)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3519, file: !3444, line: 91, baseType: !238, size: 8, offset: 880)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3519, file: !3444, line: 92, baseType: !238, size: 8, offset: 888)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3519, file: !3444, line: 93, baseType: !238, size: 8, offset: 896)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3519, file: !3444, line: 94, baseType: !238, size: 8, offset: 904)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3519, file: !3444, line: 95, baseType: !3536, size: 64, offset: 960)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3538, line: 11, size: 128, elements: !3539)
!3538 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3539 = !{!3540, !3541}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3537, file: !3538, line: 12, baseType: !803, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3537, file: !3538, line: 13, baseType: !3542, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3544, line: 103, size: 1344, elements: !3545)
!3544 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3545 = !{!3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3574, !3575, !3576}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3543, file: !3544, line: 109, baseType: !192, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3543, file: !3544, line: 110, baseType: !192, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3543, file: !3544, line: 111, baseType: !192, size: 64, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3543, file: !3544, line: 112, baseType: !192, size: 64, offset: 192)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3543, file: !3544, line: 113, baseType: !192, size: 64, offset: 256)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3543, file: !3544, line: 114, baseType: !192, size: 64, offset: 320)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3543, file: !3544, line: 117, baseType: !192, size: 64, offset: 384)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3543, file: !3544, line: 118, baseType: !192, size: 64, offset: 448)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3543, file: !3544, line: 119, baseType: !192, size: 64, offset: 512)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3543, file: !3544, line: 120, baseType: !192, size: 64, offset: 576)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3543, file: !3544, line: 121, baseType: !192, size: 64, offset: 640)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3543, file: !3544, line: 122, baseType: !192, size: 64, offset: 704)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3543, file: !3544, line: 123, baseType: !192, size: 64, offset: 768)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3543, file: !3544, line: 124, baseType: !192, size: 64, offset: 832)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3543, file: !3544, line: 125, baseType: !192, size: 64, offset: 896)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3543, file: !3544, line: 139, baseType: !192, size: 64, offset: 960)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3543, file: !3544, line: 142, baseType: !192, size: 64, offset: 1024)
!3563 = !DIDerivedType(tag: DW_TAG_member, scope: !3543, file: !3544, line: 144, baseType: !3564, size: 64, offset: 1088)
!3564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3543, file: !3544, line: 144, size: 64, elements: !3565)
!3565 = !{!3566, !3567, !3568}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3564, file: !3544, line: 146, baseType: !246, size: 16)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3564, file: !3544, line: 148, baseType: !432, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3564, file: !3544, line: 150, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3544, line: 59, size: 64, elements: !3570)
!3570 = !{!3571, !3572, !3573}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3569, file: !3544, line: 61, baseType: !432, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3569, file: !3544, line: 63, baseType: !432, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3569, file: !3544, line: 65, baseType: !432, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3543, file: !3544, line: 153, baseType: !192, size: 64, offset: 1152)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3543, file: !3544, line: 154, baseType: !192, size: 64, offset: 1216)
!3576 = !DIDerivedType(tag: DW_TAG_member, scope: !3543, file: !3544, line: 156, baseType: !3577, size: 64, offset: 1280)
!3577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3543, file: !3544, line: 156, size: 64, elements: !3578)
!3578 = !{!3579, !3580, !3581}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3577, file: !3544, line: 158, baseType: !246, size: 16)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3577, file: !3544, line: 160, baseType: !432, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3577, file: !3544, line: 162, baseType: !3582, size: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3544, line: 69, size: 64, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3582, file: !3544, line: 71, baseType: !432, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3582, file: !3544, line: 73, baseType: !432, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3582, file: !3544, line: 75, baseType: !432, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3582, file: !3544, line: 77, baseType: !432, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3582, file: !3544, line: 80, baseType: !432, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3582, file: !3544, line: 83, baseType: !432, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3582, file: !3544, line: 86, baseType: !432, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3582, file: !3544, line: 88, baseType: !432, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3582, file: !3544, line: 93, baseType: !432, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3582, file: !3544, line: 100, baseType: !432, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3519, file: !3444, line: 96, baseType: !489, size: 32, offset: 1024)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3462, file: !3444, line: 352, baseType: !3596, size: 4608, align: 512)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3444, line: 333, size: 4608, align: 512, elements: !3597)
!3597 = !{!3598, !3599, !3606}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3596, file: !3444, line: 334, baseType: !3480, size: 4096, align: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3596, file: !3444, line: 335, baseType: !3600, size: 512, offset: 4096)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3444, line: 312, size: 512, elements: !3601)
!3601 = !{!3602, !3603, !3604}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3600, file: !3444, line: 313, baseType: !432, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3600, file: !3444, line: 314, baseType: !432, size: 64, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3600, file: !3444, line: 315, baseType: !3605, size: 384, offset: 128)
!3605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 384, elements: !512)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3596, file: !3444, line: 336, baseType: !3607, offset: 4608)
!3607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, elements: !391)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3462, file: !3444, line: 353, baseType: !3609, size: 32768)
!3609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 32768, elements: !3610)
!3610 = !{!3611}
!3611 = !DISubrange(count: 4096)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3443, file: !3444, line: 484, baseType: !3449, size: 64, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3443, file: !3444, line: 491, baseType: !3614, size: 128, offset: 256)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3444, line: 404, size: 128, elements: !3615)
!3615 = !{!3616, !3617, !3618}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3614, file: !3444, line: 424, baseType: !432, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3614, file: !3444, line: 432, baseType: !37, size: 32, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3614, file: !3444, line: 440, baseType: !37, size: 32, offset: 96)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3443, file: !3444, line: 498, baseType: !3614, size: 128, offset: 384)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3443, file: !3444, line: 508, baseType: !3450, size: 33280, align: 512, offset: 512)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2423, file: !2424, line: 16, baseType: !376, size: 192, offset: 512)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2423, file: !2424, line: 17, baseType: !230, size: 32, offset: 704)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !899, file: !44, line: 1240, baseType: !180, size: 64, offset: 6912)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !899, file: !44, line: 1243, baseType: !489, size: 32, offset: 6976)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !899, file: !44, line: 1245, baseType: !480, size: 64, offset: 7040)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !899, file: !44, line: 1246, baseType: !480, size: 64, offset: 7104)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !899, file: !44, line: 1248, baseType: !490, size: 32, offset: 7168)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !899, file: !44, line: 1249, baseType: !3629, size: 64, offset: 7232)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 634, flags: DIFlagFwdDecl)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !899, file: !44, line: 1252, baseType: !3632, size: 256, offset: 7296)
!3632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !3505)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !899, file: !44, line: 1253, baseType: !3634, size: 128, offset: 7552)
!3634 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3635, line: 21, baseType: !3636)
!3635 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3635, line: 19, size: 128, elements: !3637)
!3637 = !{!3638}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3636, file: !3635, line: 20, baseType: !3639, size: 128)
!3639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 128, elements: !2864)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !899, file: !44, line: 1255, baseType: !37, size: 32, offset: 7680)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !899, file: !44, line: 1261, baseType: !202, size: 256, offset: 7744)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !899, file: !44, line: 1267, baseType: !528, size: 64, offset: 8000)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !899, file: !44, line: 1269, baseType: !3644, size: 64, offset: 8064)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3646)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !650, line: 128, size: 1024, align: 512, elements: !3647)
!3647 = !{!3648, !3652, !3653, !3660, !3666, !3670, !3674, !3678, !3679, !3683, !3687, !3692, !3696}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3646, file: !650, line: 129, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!115, !648, !37}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3646, file: !650, line: 130, baseType: !3649, size: 64, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3646, file: !650, line: 131, baseType: !3654, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!115, !3657, !3659}
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3646, file: !650, line: 132, baseType: !3661, size: 64, offset: 192)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!115, !3657, !37, !528, !3664}
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3646, file: !650, line: 134, baseType: !3667, size: 64, offset: 256)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!115, !3657}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3646, file: !650, line: 135, baseType: !3671, size: 64, offset: 320)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!115, !648}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3646, file: !650, line: 136, baseType: !3675, size: 64, offset: 384)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{null, !648}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3646, file: !650, line: 137, baseType: !3675, size: 64, offset: 448)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3646, file: !650, line: 138, baseType: !3680, size: 64, offset: 512)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{null, !648, !688}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3646, file: !650, line: 139, baseType: !3684, size: 64, offset: 576)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!186, !648, !186, !115}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3646, file: !650, line: 140, baseType: !3688, size: 64, offset: 640)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!643, !3691}
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3646, file: !650, line: 141, baseType: !3693, size: 64, offset: 704)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!115, !812, !525}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3646, file: !650, line: 142, baseType: !3697, size: 64, offset: 768)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!648, !648, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !899, file: !44, line: 1271, baseType: !3703, size: 448, offset: 8128)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2205, line: 63, size: 448, elements: !3704)
!3704 = !{!3705, !3710, !3711, !3712, !3713, !3714, !3715}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3703, file: !2205, line: 64, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!192, !3709, !2203}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3703, file: !2205, line: 66, baseType: !3706, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3703, file: !2205, line: 69, baseType: !803, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3703, file: !2205, line: 70, baseType: !115, size: 32, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3703, file: !2205, line: 71, baseType: !37, size: 32, offset: 224)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3703, file: !2205, line: 74, baseType: !256, size: 128, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3703, file: !2205, line: 85, baseType: !3716, size: 64, offset: 384)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !899, file: !44, line: 1274, baseType: !206, size: 64, offset: 8576)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !899, file: !44, line: 1280, baseType: !206, size: 64, offset: 8640)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !899, file: !44, line: 1283, baseType: !115, size: 32, offset: 8704)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !899, file: !44, line: 1286, baseType: !1317, size: 32, offset: 8736)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !899, file: !44, line: 1289, baseType: !2026, size: 64, offset: 8768)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !899, file: !44, line: 1290, baseType: !363, size: 64, offset: 8832)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !899, file: !44, line: 1297, baseType: !610, size: 64, offset: 8896)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !899, file: !44, line: 1304, baseType: !3725, size: 64, offset: 8960)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3726, line: 49, size: 64, elements: !3727)
!3726 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3727 = !{!3728}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3725, file: !3726, line: 50, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3726, line: 41, size: 512, align: 512, elements: !3731)
!3731 = !{!3732, !3733, !3738}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3730, file: !3726, line: 43, baseType: !309, size: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3730, file: !3726, line: 45, baseType: !3734, size: 192, offset: 64)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3726, line: 29, size: 192, elements: !3735)
!3735 = !{!3736, !3737}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3734, file: !3726, line: 30, baseType: !256, size: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3734, file: !3726, line: 32, baseType: !803, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3730, file: !3726, line: 46, baseType: !803, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !899, file: !44, line: 1305, baseType: !3725, size: 64, offset: 9024)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !899, file: !44, line: 1306, baseType: !299, size: 128, align: 64, offset: 9088)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !899, file: !44, line: 1307, baseType: !1499, size: 256, offset: 9216)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !899, file: !44, line: 1309, baseType: !202, size: 256, offset: 9472)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !899, file: !44, line: 1314, baseType: !115, size: 32, offset: 9728)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !899, file: !44, line: 1317, baseType: !309, size: 32, align: 512, offset: 10240)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !899, file: !44, line: 1318, baseType: !256, size: 128, offset: 10304)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !899, file: !44, line: 1320, baseType: !309, size: 32, offset: 10432)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !899, file: !44, line: 1321, baseType: !256, size: 128, offset: 10496)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !689, file: !44, line: 656, baseType: !1049, size: 64, offset: 512)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !689, file: !44, line: 659, baseType: !180, size: 64, offset: 576)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !689, file: !44, line: 663, baseType: !192, size: 64, offset: 640)
!3751 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !44, line: 671, baseType: !3752, size: 32, offset: 704)
!3752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !44, line: 671, size: 32, elements: !3753)
!3753 = !{!3754, !3756}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3752, file: !44, line: 672, baseType: !3755, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3752, file: !44, line: 673, baseType: !37, size: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !689, file: !44, line: 675, baseType: !763, size: 32, offset: 736)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !689, file: !44, line: 676, baseType: !197, size: 64, offset: 768)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !689, file: !44, line: 677, baseType: !799, size: 128, offset: 832)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !689, file: !44, line: 678, baseType: !799, size: 128, offset: 960)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !689, file: !44, line: 679, baseType: !799, size: 128, offset: 1088)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !689, file: !44, line: 680, baseType: !309, size: 32, offset: 1216)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !689, file: !44, line: 681, baseType: !248, size: 16, offset: 1248)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !689, file: !44, line: 682, baseType: !238, size: 8, offset: 1264)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !689, file: !44, line: 683, baseType: !238, size: 8, offset: 1272)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !689, file: !44, line: 684, baseType: !2336, size: 64, offset: 1280)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !689, file: !44, line: 691, baseType: !192, size: 64, offset: 1344)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !689, file: !44, line: 692, baseType: !464, size: 320, offset: 1408)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !689, file: !44, line: 694, baseType: !192, size: 64, offset: 1728)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !689, file: !44, line: 695, baseType: !192, size: 64, offset: 1792)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !689, file: !44, line: 697, baseType: !367, size: 128, offset: 1856)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !689, file: !44, line: 698, baseType: !256, size: 128, offset: 1984)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !689, file: !44, line: 707, baseType: !256, size: 128, offset: 2112)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !689, file: !44, line: 708, baseType: !256, size: 128, offset: 2240)
!3775 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !44, line: 709, baseType: !3776, size: 128, offset: 2368)
!3776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !44, line: 709, size: 128, elements: !3777)
!3777 = !{!3778, !3779}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3776, file: !44, line: 710, baseType: !363, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3776, file: !44, line: 711, baseType: !299, size: 128, align: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !689, file: !44, line: 713, baseType: !208, size: 64, offset: 2496)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !689, file: !44, line: 714, baseType: !208, size: 64, offset: 2560)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !689, file: !44, line: 715, baseType: !230, size: 32, offset: 2624)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !689, file: !44, line: 716, baseType: !230, size: 32, offset: 2656)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !689, file: !44, line: 717, baseType: !230, size: 32, offset: 2688)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !689, file: !44, line: 719, baseType: !230, size: 32, offset: 2720)
!3786 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !44, line: 721, baseType: !3787, size: 64, offset: 2752)
!3787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !44, line: 721, size: 64, elements: !3788)
!3788 = !{!3789, !3913}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3787, file: !44, line: 722, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3792)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1914, size: 2112, elements: !3793)
!3793 = !{!3794, !3795, !3799, !3803, !3807, !3808, !3809, !3815, !3828, !3832, !3836, !3837, !3841, !3842, !3846, !3851, !3852, !3856, !3860, !3866, !3867, !3871, !3872, !3876, !3880, !3881, !3886, !3890, !3894, !3898, !3902, !3903, !3909}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3792, file: !44, line: 1915, baseType: !932, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3792, file: !44, line: 1916, baseType: !3796, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!197, !807, !197, !115}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3792, file: !44, line: 1917, baseType: !3800, size: 64, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!843, !807, !186, !188, !270}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3792, file: !44, line: 1918, baseType: !3804, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!843, !807, !528, !188, !270}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3792, file: !44, line: 1919, baseType: !1251, size: 64, offset: 256)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3792, file: !44, line: 1920, baseType: !1251, size: 64, offset: 320)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3792, file: !44, line: 1921, baseType: !3810, size: 64, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!115, !1254, !3813, !37}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !44, line: 53, flags: DIFlagFwdDecl)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3792, file: !44, line: 1923, baseType: !3816, size: 64, offset: 448)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!115, !807, !3819}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1858, size: 128, elements: !3821)
!3821 = !{!3822, !3827}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3820, file: !44, line: 1859, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1855, baseType: !3824)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!525, !3819, !528, !115, !197, !432, !37}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3820, file: !44, line: 1860, baseType: !197, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3792, file: !44, line: 1924, baseType: !3829, size: 64, offset: 512)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!1671, !807, !1673}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3792, file: !44, line: 1925, baseType: !3833, size: 64, offset: 576)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!803, !807, !37, !192}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3792, file: !44, line: 1926, baseType: !3833, size: 64, offset: 640)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3792, file: !44, line: 1927, baseType: !3838, size: 64, offset: 704)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!115, !807, !1331}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3792, file: !44, line: 1928, baseType: !192, size: 64, offset: 768)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3792, file: !44, line: 1929, baseType: !3843, size: 64, offset: 832)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!115, !688, !807}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3792, file: !44, line: 1930, baseType: !3847, size: 64, offset: 896)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!115, !807, !3850}
!3850 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1061, baseType: !180)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3792, file: !44, line: 1931, baseType: !3843, size: 64, offset: 960)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3792, file: !44, line: 1932, baseType: !3853, size: 64, offset: 1024)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!115, !807, !197, !197, !115}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3792, file: !44, line: 1933, baseType: !3857, size: 64, offset: 1088)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!115, !115, !807, !115}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3792, file: !44, line: 1934, baseType: !3861, size: 64, offset: 1152)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!115, !807, !115, !3864}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1063, flags: DIFlagFwdDecl)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3792, file: !44, line: 1935, baseType: !1369, size: 64, offset: 1216)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3792, file: !44, line: 1936, baseType: !3868, size: 64, offset: 1280)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!115, !115}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3792, file: !44, line: 1937, baseType: !3861, size: 64, offset: 1344)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3792, file: !44, line: 1938, baseType: !3873, size: 64, offset: 1408)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!843, !3280, !807, !270, !188, !37}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3792, file: !44, line: 1939, baseType: !3877, size: 64, offset: 1472)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!843, !807, !270, !3280, !188, !37}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3792, file: !44, line: 1940, baseType: !1307, size: 64, offset: 1536)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3792, file: !44, line: 1941, baseType: !3882, size: 64, offset: 1600)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!115, !807, !115, !3885, !1228}
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3792, file: !44, line: 1942, baseType: !3887, size: 64, offset: 1664)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!803, !807, !115, !197, !197}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3792, file: !44, line: 1944, baseType: !3891, size: 64, offset: 1728)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{null, !181, !807}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3792, file: !44, line: 1948, baseType: !3895, size: 64, offset: 1792)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!843, !807, !197, !807, !197, !188, !37}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3792, file: !44, line: 1950, baseType: !3899, size: 64, offset: 1856)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!197, !807, !197, !807, !197, !197, !37}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3792, file: !44, line: 1953, baseType: !3853, size: 64, offset: 1920)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3792, file: !44, line: 1954, baseType: !3904, size: 64, offset: 1984)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!115, !3907, !37}
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !44, line: 1911, flags: DIFlagFwdDecl)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3792, file: !44, line: 1955, baseType: !3910, size: 64, offset: 2048)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!115, !3907, !3813, !37}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3787, file: !44, line: 723, baseType: !2094, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !689, file: !44, line: 725, baseType: !3915, size: 64, offset: 2816)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 725, flags: DIFlagFwdDecl)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !689, file: !44, line: 726, baseType: !1050, size: 1536, align: 64, offset: 2880)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !689, file: !44, line: 727, baseType: !256, size: 128, offset: 4416)
!3919 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !44, line: 728, baseType: !3920, size: 64, offset: 4544)
!3920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !44, line: 728, size: 64, elements: !3921)
!3921 = !{!3922, !3923, !3926, !3927}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3920, file: !44, line: 729, baseType: !3280, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3920, file: !44, line: 730, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 730, flags: DIFlagFwdDecl)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3920, file: !44, line: 731, baseType: !186, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3920, file: !44, line: 732, baseType: !37, size: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !689, file: !44, line: 735, baseType: !490, size: 32, offset: 4608)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !689, file: !44, line: 738, baseType: !490, size: 32, offset: 4640)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !689, file: !44, line: 739, baseType: !3629, size: 64, offset: 4672)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !689, file: !44, line: 750, baseType: !180, size: 64, offset: 4736)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !649, file: !650, line: 91, baseType: !3933, size: 256, offset: 448)
!3933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 256, elements: !3505)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !649, file: !650, line: 94, baseType: !3935, size: 64, offset: 704)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3936, line: 25, size: 64, elements: !3937)
!3936 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3937 = !{!3938}
!3938 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !3936, line: 26, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3935, file: !3936, line: 26, size: 64, elements: !3940)
!3940 = !{!3941, !3942}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3939, file: !3936, line: 28, baseType: !433, size: 64, align: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, scope: !3939, file: !3936, line: 30, baseType: !3943, size: 64)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3939, file: !3936, line: 30, size: 64, elements: !3944)
!3944 = !{!3945, !3946}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3943, file: !3936, line: 31, baseType: !309, size: 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3943, file: !3936, line: 32, baseType: !115, size: 32, offset: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !649, file: !650, line: 95, baseType: !3644, size: 64, offset: 768)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !649, file: !650, line: 96, baseType: !898, size: 64, offset: 832)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !649, file: !650, line: 97, baseType: !192, size: 64, offset: 896)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !649, file: !650, line: 98, baseType: !180, size: 64, offset: 960)
!3951 = !DIDerivedType(tag: DW_TAG_member, scope: !649, file: !650, line: 100, baseType: !3952, size: 128, offset: 1024)
!3952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !649, file: !650, line: 100, size: 128, elements: !3953)
!3953 = !{!3954, !3955}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3952, file: !650, line: 101, baseType: !256, size: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3952, file: !650, line: 102, baseType: !1682, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !649, file: !650, line: 104, baseType: !256, size: 128, offset: 1152)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !649, file: !650, line: 105, baseType: !256, size: 128, offset: 1280)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !649, file: !650, line: 113, baseType: !3959, size: 128, offset: 1408)
!3959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !649, file: !650, line: 109, size: 128, elements: !3960)
!3960 = !{!3961, !3962, !3963}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3959, file: !650, line: 110, baseType: !367, size: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3959, file: !650, line: 111, baseType: !664, size: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3959, file: !650, line: 112, baseType: !299, size: 128, align: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !644, file: !645, line: 72, baseType: !898, size: 64, offset: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !644, file: !645, line: 73, baseType: !115, size: 32, offset: 128)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !644, file: !645, line: 74, baseType: !728, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !639, file: !640, line: 10, baseType: !648, size: 64, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !287, file: !44, line: 1015, baseType: !688, size: 64, offset: 1344)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !287, file: !44, line: 1016, baseType: !3790, size: 64, offset: 1408)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !287, file: !44, line: 1018, baseType: !432, size: 64, offset: 1472)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !287, file: !44, line: 1020, baseType: !180, size: 64, offset: 1536)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !287, file: !44, line: 1023, baseType: !180, size: 64, offset: 1600)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !287, file: !44, line: 1027, baseType: !3974, size: 64, offset: 1664)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !287, file: !44, line: 1029, baseType: !1049, size: 64, offset: 1728)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !287, file: !44, line: 1030, baseType: !1317, size: 32, offset: 1792)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !287, file: !44, line: 1031, baseType: !1317, size: 32, offset: 1824)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !182, file: !183, line: 29, baseType: !180, size: 64, offset: 896)
!3979 = !{!0, !7, !12, !17, !22, !27}
!3980 = !{i32 7, !"Dwarf Version", i32 5}
!3981 = !{i32 2, !"Debug Info Version", i32 3}
!3982 = !{i32 1, !"wchar_size", i32 2}
!3983 = !{i32 8, !"cf-protection-branch", i32 1}
!3984 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3985 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3986 = !{i32 1, !"Code Model", i32 2}
!3987 = !{i32 1, !"override-stack-alignment", i32 8}
!3988 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3989 = distinct !DISubprogram(name: "snd_seq_timer_new", scope: !2, file: !2, line: 39, type: !3990, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4612)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!3992}
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_timer", file: !3994, line: 18, size: 1088, elements: !3995)
!3994 = !DIFile(filename: "sound/core/seq/seq_timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef518dcd507810ac3e20dcc3b1742c28")
!3995 = !{!3996, !3997, !3998, !3999, !4000, !4008, !4015, !4016, !4017, !4025, !4606, !4607, !4608, !4609, !4610, !4611}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3993, file: !3994, line: 21, baseType: !37, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3993, file: !3994, line: 22, baseType: !37, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "tempo", scope: !3993, file: !3994, line: 24, baseType: !37, size: 32, offset: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "ppq", scope: !3993, file: !3994, line: 25, baseType: !115, size: 32, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "cur_time", scope: !3993, file: !3994, line: 27, baseType: !4001, size: 64, offset: 96)
!4001 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_real_time_t", file: !4002, line: 12, baseType: !4003)
!4002 = !DIFile(filename: "./include/sound/seq_kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "583a8c45ab6a5155295b27a2a548f2e3")
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_real_time", file: !4004, line: 218, size: 64, elements: !4005)
!4004 = !DIFile(filename: "./include/uapi/sound/asequencer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a270bda5db28a911babca63673f52743")
!4005 = !{!4006, !4007}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4003, file: !4004, line: 219, baseType: !37, size: 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4003, file: !4004, line: 220, baseType: !37, size: 32, offset: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !3993, file: !3994, line: 28, baseType: !4009, size: 192, offset: 192)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_timer_tick", file: !3994, line: 12, size: 192, elements: !4010)
!4010 = !{!4011, !4013, !4014}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "cur_tick", scope: !4009, file: !3994, line: 13, baseType: !4012, size: 32)
!4012 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_tick_time_t", file: !4004, line: 223, baseType: !37)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4009, file: !3994, line: 14, baseType: !192, size: 64, offset: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "fraction", scope: !4009, file: !3994, line: 15, baseType: !192, size: 64, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "tick_updated", scope: !3993, file: !3994, line: 29, baseType: !115, size: 32, offset: 384)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3993, file: !3994, line: 31, baseType: !115, size: 32, offset: 416)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "alsa_id", scope: !3993, file: !3994, line: 32, baseType: !4018, size: 160, offset: 448)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_timer_id", file: !148, line: 897, size: 160, elements: !4019)
!4019 = !{!4020, !4021, !4022, !4023, !4024}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dev_class", scope: !4018, file: !148, line: 898, baseType: !115, size: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "dev_sclass", scope: !4018, file: !148, line: 899, baseType: !115, size: 32, offset: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4018, file: !148, line: 900, baseType: !115, size: 32, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4018, file: !148, line: 901, baseType: !115, size: 32, offset: 96)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4018, file: !148, line: 902, baseType: !115, size: 32, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "timeri", scope: !3993, file: !3994, line: 33, baseType: !4026, size: 64, offset: 640)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_timer_instance", file: !4028, line: 82, size: 1664, elements: !4029)
!4028 = !DIFile(filename: "./include/sound/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b2f56914e2e0d40353cf82d02171e82")
!4029 = !{!4030, !4575, !4576, !4577, !4578, !4582, !4586, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4027, file: !4028, line: 83, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_timer", file: !4028, line: 57, size: 3456, elements: !4033)
!4033 = !{!4034, !4035, !4525, !4526, !4527, !4528, !4530, !4531, !4532, !4533, !4534, !4535, !4539, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_class", scope: !4032, file: !4028, line: 58, baseType: !115, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4032, file: !4028, line: 59, baseType: !4036, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !4038, line: 80, size: 12288, elements: !4039)
!4038 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!4039 = !{!4040, !4041, !4042, !4043, !4044, !4048, !4049, !4050, !4054, !4055, !4056, !4060, !4061, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4502, !4503, !4504, !4507, !4508, !4509, !4510, !4511, !4512, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4037, file: !4038, line: 81, baseType: !115, size: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4037, file: !4038, line: 84, baseType: !2863, size: 128, offset: 32)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4037, file: !4038, line: 85, baseType: !2863, size: 128, offset: 160)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !4037, file: !4038, line: 86, baseType: !3632, size: 256, offset: 288)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !4037, file: !4038, line: 87, baseType: !4045, size: 640, offset: 544)
!4045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !4046)
!4046 = !{!4047}
!4047 = !DISubrange(count: 80)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !4037, file: !4038, line: 88, baseType: !3632, size: 256, offset: 1184)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !4037, file: !4038, line: 89, baseType: !4045, size: 640, offset: 1440)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !4037, file: !4038, line: 90, baseType: !4051, size: 1024, offset: 2080)
!4051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4052)
!4052 = !{!4053}
!4053 = !DISubrange(count: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4037, file: !4038, line: 92, baseType: !932, size: 64, offset: 3136)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4037, file: !4038, line: 94, baseType: !180, size: 64, offset: 3200)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4037, file: !4038, line: 95, baseType: !4057, size: 64, offset: 3264)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !4036}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4037, file: !4038, line: 97, baseType: !256, size: 128, offset: 3328)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !4037, file: !4038, line: 99, baseType: !4062, size: 64, offset: 3456)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 705, size: 5824, elements: !4064)
!4064 = !{!4065, !4066, !4067, !4070, !4071, !4124, !4194, !4195, !4196, !4197, !4198, !4205, !4297, !4310, !4320, !4324, !4326, !4327, !4328, !4332, !4339, !4340, !4343, !4346, !4350, !4353, !4354, !4355, !4356, !4357, !4358, !4388, !4389, !4390, !4393, !4396, !4405, !4406, !4407, !4408, !4409, !4410}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4063, file: !100, line: 706, baseType: !945, size: 512)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4063, file: !100, line: 707, baseType: !4062, size: 64, offset: 512)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4063, file: !100, line: 709, baseType: !4068, size: 64, offset: 576)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !100, line: 37, flags: DIFlagFwdDecl)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4063, file: !100, line: 711, baseType: !528, size: 64, offset: 640)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4063, file: !100, line: 712, baseType: !4072, size: 64, offset: 704)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4074)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !100, line: 89, size: 384, elements: !4075)
!4075 = !{!4076, !4077, !4078, !4084, !4089, !4093}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4074, file: !100, line: 90, baseType: !528, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4074, file: !100, line: 91, baseType: !1025, size: 64, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4074, file: !100, line: 92, baseType: !4079, size: 64, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!115, !4082, !981}
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4063)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4074, file: !100, line: 93, baseType: !4085, size: 64, offset: 192)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!186, !4082, !4088, !1595, !1596}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4074, file: !100, line: 95, baseType: !4090, size: 64, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{null, !4062}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4074, file: !100, line: 97, baseType: !4094, size: 64, offset: 320)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4096)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !107, line: 286, size: 1472, elements: !4097)
!4097 = !{!4098, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4096, file: !107, line: 287, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!115, !4062}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4096, file: !107, line: 288, baseType: !4090, size: 64, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4096, file: !107, line: 289, baseType: !4099, size: 64, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4096, file: !107, line: 290, baseType: !4099, size: 64, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4096, file: !107, line: 291, baseType: !4099, size: 64, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4096, file: !107, line: 292, baseType: !4099, size: 64, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4096, file: !107, line: 293, baseType: !4099, size: 64, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4096, file: !107, line: 294, baseType: !4099, size: 64, offset: 448)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4096, file: !107, line: 295, baseType: !4099, size: 64, offset: 512)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4096, file: !107, line: 296, baseType: !4099, size: 64, offset: 576)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4096, file: !107, line: 297, baseType: !4099, size: 64, offset: 640)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4096, file: !107, line: 298, baseType: !4099, size: 64, offset: 704)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4096, file: !107, line: 299, baseType: !4099, size: 64, offset: 768)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4096, file: !107, line: 300, baseType: !4099, size: 64, offset: 832)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4096, file: !107, line: 301, baseType: !4099, size: 64, offset: 896)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4096, file: !107, line: 302, baseType: !4099, size: 64, offset: 960)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4096, file: !107, line: 303, baseType: !4099, size: 64, offset: 1024)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4096, file: !107, line: 304, baseType: !4099, size: 64, offset: 1088)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4096, file: !107, line: 305, baseType: !4099, size: 64, offset: 1152)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4096, file: !107, line: 306, baseType: !4099, size: 64, offset: 1216)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4096, file: !107, line: 307, baseType: !4099, size: 64, offset: 1280)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4096, file: !107, line: 308, baseType: !4099, size: 64, offset: 1344)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4096, file: !107, line: 309, baseType: !4099, size: 64, offset: 1408)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4063, file: !100, line: 714, baseType: !4125, size: 64, offset: 768)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4127)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4128, line: 80, size: 1344, elements: !4129)
!4128 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4129 = !{!4130, !4131, !4132, !4133, !4134, !4135, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4193}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4127, file: !4128, line: 81, baseType: !528, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4127, file: !4128, line: 82, baseType: !528, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4127, file: !4128, line: 83, baseType: !1025, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4127, file: !4128, line: 84, baseType: !1025, size: 64, offset: 192)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4127, file: !4128, line: 85, baseType: !1025, size: 64, offset: 256)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4127, file: !4128, line: 87, baseType: !4136, size: 64, offset: 320)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!115, !4062, !4139}
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !94, line: 96, size: 1152, elements: !4141)
!4141 = !{!4142, !4143, !4144, !4145, !4146, !4147, !4148, !4152, !4156, !4157, !4158, !4159, !4160, !4168, !4169, !4170, !4171, !4172, !4173}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4140, file: !94, line: 97, baseType: !528, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4140, file: !94, line: 98, baseType: !4125, size: 64, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4140, file: !94, line: 100, baseType: !932, size: 64, offset: 128)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4140, file: !94, line: 101, baseType: !528, size: 64, offset: 192)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4140, file: !94, line: 103, baseType: !525, size: 8, offset: 256)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4140, file: !94, line: 104, baseType: !93, size: 32, offset: 288)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4140, file: !94, line: 106, baseType: !4149, size: 64, offset: 320)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4151)
!4151 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !94, line: 106, flags: DIFlagFwdDecl)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4140, file: !94, line: 107, baseType: !4153, size: 64, offset: 384)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4155)
!4155 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !94, line: 107, flags: DIFlagFwdDecl)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4140, file: !94, line: 109, baseType: !4099, size: 64, offset: 448)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4140, file: !94, line: 110, baseType: !4090, size: 64, offset: 512)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4140, file: !94, line: 111, baseType: !4099, size: 64, offset: 576)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4140, file: !94, line: 112, baseType: !4090, size: 64, offset: 640)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4140, file: !94, line: 113, baseType: !4161, size: 64, offset: 704)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!115, !4062, !4164}
!4164 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !107, line: 60, baseType: !4165)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !107, line: 58, size: 32, elements: !4166)
!4166 = !{!4167}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4165, file: !107, line: 59, baseType: !115, size: 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4140, file: !94, line: 114, baseType: !4099, size: 64, offset: 768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4140, file: !94, line: 115, baseType: !1025, size: 64, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4140, file: !94, line: 116, baseType: !1025, size: 64, offset: 896)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4140, file: !94, line: 118, baseType: !4094, size: 64, offset: 960)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4140, file: !94, line: 119, baseType: !4090, size: 64, offset: 1024)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4140, file: !94, line: 121, baseType: !4174, size: 64, offset: 1088)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !94, line: 121, flags: DIFlagFwdDecl)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4127, file: !4128, line: 88, baseType: !4079, size: 64, offset: 384)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4127, file: !4128, line: 89, baseType: !4099, size: 64, offset: 448)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4127, file: !4128, line: 90, baseType: !4090, size: 64, offset: 512)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4127, file: !4128, line: 91, baseType: !4090, size: 64, offset: 576)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4127, file: !4128, line: 92, baseType: !4090, size: 64, offset: 640)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4127, file: !4128, line: 94, baseType: !4099, size: 64, offset: 704)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4127, file: !4128, line: 95, baseType: !4099, size: 64, offset: 768)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4127, file: !4128, line: 97, baseType: !4161, size: 64, offset: 832)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4127, file: !4128, line: 98, baseType: !4099, size: 64, offset: 896)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4127, file: !4128, line: 100, baseType: !4099, size: 64, offset: 960)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4127, file: !4128, line: 102, baseType: !4099, size: 64, offset: 1024)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4127, file: !4128, line: 103, baseType: !4090, size: 64, offset: 1088)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4127, file: !4128, line: 105, baseType: !4094, size: 64, offset: 1152)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4127, file: !4128, line: 107, baseType: !4190, size: 64, offset: 1216)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4192)
!4192 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4128, line: 107, flags: DIFlagFwdDecl)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4127, file: !4128, line: 109, baseType: !525, size: 8, offset: 1280)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4063, file: !100, line: 715, baseType: !4139, size: 64, offset: 832)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4063, file: !100, line: 717, baseType: !180, size: 64, offset: 896)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4063, file: !100, line: 719, baseType: !180, size: 64, offset: 960)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4063, file: !100, line: 721, baseType: !202, size: 256, offset: 1024)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4063, file: !100, line: 725, baseType: !4199, size: 448, offset: 1280)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !100, line: 517, size: 448, elements: !4200)
!4200 = !{!4201, !4202, !4203, !4204}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4199, file: !100, line: 518, baseType: !256, size: 128)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4199, file: !100, line: 519, baseType: !256, size: 128, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4199, file: !100, line: 520, baseType: !256, size: 128, offset: 256)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4199, file: !100, line: 521, baseType: !99, size: 32, offset: 384)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4063, file: !100, line: 726, baseType: !4206, size: 2496, offset: 1728)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !107, line: 663, size: 2496, elements: !4207)
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4290, !4294}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4206, file: !107, line: 664, baseType: !4164, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4206, file: !107, line: 665, baseType: !37, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4206, file: !107, line: 666, baseType: !37, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4206, file: !107, line: 667, baseType: !525, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4206, file: !107, line: 668, baseType: !525, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4206, file: !107, line: 669, baseType: !525, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4206, file: !107, line: 670, baseType: !525, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4206, file: !107, line: 671, baseType: !525, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4206, file: !107, line: 672, baseType: !525, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4206, file: !107, line: 673, baseType: !525, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4206, file: !107, line: 674, baseType: !525, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4206, file: !107, line: 675, baseType: !489, size: 32, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4206, file: !107, line: 676, baseType: !309, size: 32, offset: 96)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4206, file: !107, line: 678, baseType: !256, size: 128, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4206, file: !107, line: 679, baseType: !1718, size: 256, offset: 256)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4206, file: !107, line: 680, baseType: !4224, size: 64, offset: 512)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4226, line: 43, size: 1536, elements: !4227)
!4226 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4227 = !{!4228, !4229, !4230, !4231, !4232, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4225, file: !4226, line: 44, baseType: !528, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4225, file: !4226, line: 45, baseType: !115, size: 32, offset: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4225, file: !4226, line: 46, baseType: !256, size: 128, offset: 128)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4225, file: !4226, line: 47, baseType: !309, size: 32, offset: 256)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4225, file: !4226, line: 48, baseType: !4233, size: 64, offset: 320)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !107, line: 629, flags: DIFlagFwdDecl)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4225, file: !4226, line: 49, baseType: !1964, size: 320, offset: 384)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4225, file: !4226, line: 50, baseType: !192, size: 64, offset: 704)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4225, file: !4226, line: 51, baseType: !2559, size: 64, offset: 768)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4225, file: !4226, line: 52, baseType: !2559, size: 64, offset: 832)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4225, file: !4226, line: 53, baseType: !2559, size: 64, offset: 896)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4225, file: !4226, line: 54, baseType: !2559, size: 64, offset: 960)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4225, file: !4226, line: 55, baseType: !2559, size: 64, offset: 1024)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4225, file: !4226, line: 56, baseType: !192, size: 64, offset: 1088)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4225, file: !4226, line: 57, baseType: !192, size: 64, offset: 1152)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4225, file: !4226, line: 58, baseType: !192, size: 64, offset: 1216)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4225, file: !4226, line: 59, baseType: !192, size: 64, offset: 1280)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4225, file: !4226, line: 60, baseType: !192, size: 64, offset: 1344)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4225, file: !4226, line: 61, baseType: !4062, size: 64, offset: 1408)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4225, file: !4226, line: 62, baseType: !525, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4225, file: !4226, line: 63, baseType: !525, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4206, file: !107, line: 681, baseType: !525, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4206, file: !107, line: 682, baseType: !525, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4206, file: !107, line: 683, baseType: !525, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4206, file: !107, line: 684, baseType: !37, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4206, file: !107, line: 685, baseType: !37, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4206, file: !107, line: 690, baseType: !2551, size: 512, offset: 640)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4206, file: !107, line: 691, baseType: !432, size: 64, offset: 1152)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4206, file: !107, line: 692, baseType: !1499, size: 256, offset: 1216)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4206, file: !107, line: 693, baseType: !376, size: 192, offset: 1472)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4206, file: !107, line: 694, baseType: !4233, size: 64, offset: 1664)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4206, file: !107, line: 695, baseType: !230, size: 32, offset: 1728)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4206, file: !107, line: 696, baseType: !230, size: 32, offset: 1760)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4206, file: !107, line: 697, baseType: !37, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4206, file: !107, line: 698, baseType: !37, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4206, file: !107, line: 699, baseType: !37, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4206, file: !107, line: 700, baseType: !37, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4206, file: !107, line: 701, baseType: !37, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4206, file: !107, line: 702, baseType: !37, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4206, file: !107, line: 703, baseType: !525, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4206, file: !107, line: 704, baseType: !37, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4206, file: !107, line: 705, baseType: !37, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4206, file: !107, line: 706, baseType: !37, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4206, file: !107, line: 707, baseType: !37, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4206, file: !107, line: 708, baseType: !37, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4206, file: !107, line: 709, baseType: !37, size: 32, offset: 1824)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4206, file: !107, line: 710, baseType: !106, size: 32, offset: 1856)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4206, file: !107, line: 711, baseType: !114, size: 32, offset: 1888)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4206, file: !107, line: 712, baseType: !114, size: 32, offset: 1920)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4206, file: !107, line: 713, baseType: !115, size: 32, offset: 1952)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4206, file: !107, line: 714, baseType: !115, size: 32, offset: 1984)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4206, file: !107, line: 715, baseType: !432, size: 64, offset: 2048)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4206, file: !107, line: 716, baseType: !432, size: 64, offset: 2112)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4206, file: !107, line: 717, baseType: !432, size: 64, offset: 2176)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4206, file: !107, line: 718, baseType: !432, size: 64, offset: 2240)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4206, file: !107, line: 720, baseType: !4285, size: 64, offset: 2304)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !107, line: 632, size: 64, elements: !4287)
!4287 = !{!4288, !4289}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4286, file: !107, line: 633, baseType: !309, size: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4286, file: !107, line: 634, baseType: !37, size: 32, offset: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4206, file: !107, line: 721, baseType: !4291, size: 64, offset: 2368)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{null, !4062, !449}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4206, file: !107, line: 722, baseType: !4295, size: 64, offset: 2432)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !107, line: 722, flags: DIFlagFwdDecl)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4063, file: !100, line: 727, baseType: !4298, size: 64, offset: 4224)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !107, line: 742, size: 1792, elements: !4300)
!4300 = !{!4301, !4302, !4303, !4307, !4308, !4309}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4299, file: !107, line: 743, baseType: !4096, size: 1472)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4299, file: !107, line: 744, baseType: !4099, size: 64, offset: 1472)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4299, file: !107, line: 745, baseType: !4304, size: 64, offset: 1536)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{null, !4062, !525}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4299, file: !107, line: 746, baseType: !4099, size: 64, offset: 1600)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4299, file: !107, line: 747, baseType: !4090, size: 64, offset: 1664)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4299, file: !107, line: 748, baseType: !4090, size: 64, offset: 1728)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4063, file: !100, line: 736, baseType: !4311, size: 128, offset: 4288)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !100, line: 529, size: 128, elements: !4312)
!4312 = !{!4313, !4317}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4311, file: !100, line: 531, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4316, line: 13, flags: DIFlagFwdDecl)
!4316 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4311, file: !100, line: 532, baseType: !4318, size: 64, offset: 64)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !100, line: 49, flags: DIFlagFwdDecl)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4063, file: !100, line: 738, baseType: !4321, size: 64, offset: 4416)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4323)
!4323 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !100, line: 738, flags: DIFlagFwdDecl)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4063, file: !100, line: 740, baseType: !4325, size: 64, offset: 4480)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4063, file: !100, line: 741, baseType: !432, size: 64, offset: 4544)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4063, file: !100, line: 746, baseType: !432, size: 64, offset: 4608)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4063, file: !100, line: 747, baseType: !4329, size: 64, offset: 4672)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4331)
!4331 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !100, line: 747, flags: DIFlagFwdDecl)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4063, file: !100, line: 749, baseType: !4333, size: 64, offset: 4736)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !100, line: 428, size: 128, elements: !4335)
!4335 = !{!4336, !4337, !4338}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4334, file: !100, line: 433, baseType: !37, size: 32)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4334, file: !100, line: 434, baseType: !37, size: 32, offset: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4334, file: !100, line: 435, baseType: !192, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4063, file: !100, line: 751, baseType: !256, size: 128, offset: 4800)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4063, file: !100, line: 762, baseType: !4341, size: 64, offset: 4928)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !100, line: 762, flags: DIFlagFwdDecl)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4063, file: !100, line: 770, baseType: !4344, offset: 4992)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4345, line: 5, elements: !1365)
!4345 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4063, file: !100, line: 772, baseType: !4347, size: 64, offset: 4992)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4349, line: 18, flags: DIFlagFwdDecl)
!4349 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4063, file: !100, line: 773, baseType: !4351, size: 64, offset: 5056)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4128, line: 22, flags: DIFlagFwdDecl)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4063, file: !100, line: 776, baseType: !115, size: 32, offset: 5120)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4063, file: !100, line: 778, baseType: !763, size: 32, offset: 5152)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4063, file: !100, line: 779, baseType: !489, size: 32, offset: 5184)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4063, file: !100, line: 781, baseType: !309, size: 32, offset: 5216)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4063, file: !100, line: 782, baseType: !256, size: 128, offset: 5248)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4063, file: !100, line: 784, baseType: !4359, size: 64, offset: 5376)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4361)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4362, line: 52, size: 768, elements: !4363)
!4362 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4363 = !{!4364, !4365, !4366, !4367, !4368, !4372, !4376, !4377, !4378, !4379, !4383, !4387}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4361, file: !4362, line: 53, baseType: !528, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4361, file: !4362, line: 55, baseType: !1025, size: 64, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4361, file: !4362, line: 56, baseType: !1025, size: 64, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4361, file: !4362, line: 58, baseType: !4079, size: 64, offset: 192)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4361, file: !4362, line: 59, baseType: !4369, size: 64, offset: 256)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!186, !4082, !4088}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4361, file: !4362, line: 61, baseType: !4373, size: 64, offset: 320)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{null, !4359}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4361, file: !4362, line: 62, baseType: !4090, size: 64, offset: 384)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4361, file: !4362, line: 64, baseType: !4099, size: 64, offset: 448)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4361, file: !4362, line: 66, baseType: !1563, size: 64, offset: 512)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4361, file: !4362, line: 67, baseType: !4380, size: 64, offset: 576)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!1460, !4082}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4361, file: !4362, line: 69, baseType: !4384, size: 64, offset: 640)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{null, !4082, !1595, !1596}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4361, file: !4362, line: 71, baseType: !4094, size: 64, offset: 704)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4063, file: !100, line: 785, baseType: !1025, size: 64, offset: 5440)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4063, file: !100, line: 787, baseType: !4090, size: 64, offset: 5504)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4063, file: !100, line: 788, baseType: !4391, size: 64, offset: 5568)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !100, line: 46, flags: DIFlagFwdDecl)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4063, file: !100, line: 789, baseType: !4394, size: 64, offset: 5632)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !100, line: 48, flags: DIFlagFwdDecl)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4063, file: !100, line: 791, baseType: !4397, size: 64, offset: 5696)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !100, line: 597, size: 128, elements: !4399)
!4399 = !{!4400, !4401, !4402, !4403, !4404}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4398, file: !100, line: 598, baseType: !122, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4398, file: !100, line: 599, baseType: !131, size: 32, offset: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4398, file: !100, line: 600, baseType: !136, size: 32, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4398, file: !100, line: 601, baseType: !525, size: 8, offset: 96)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4398, file: !100, line: 602, baseType: !525, size: 8, offset: 104)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4063, file: !100, line: 793, baseType: !141, size: 32, offset: 5760)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4063, file: !100, line: 795, baseType: !525, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4063, file: !100, line: 796, baseType: !525, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4063, file: !100, line: 797, baseType: !525, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4063, file: !100, line: 798, baseType: !525, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4063, file: !100, line: 799, baseType: !525, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !4037, file: !4038, line: 100, baseType: !37, size: 32, offset: 3520)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !4037, file: !4038, line: 101, baseType: !464, size: 320, offset: 3584)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !4037, file: !4038, line: 102, baseType: !327, size: 64, offset: 3904)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !4037, file: !4038, line: 103, baseType: !115, size: 32, offset: 3968)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !4037, file: !4038, line: 104, baseType: !188, size: 64, offset: 4032)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !4037, file: !4038, line: 105, baseType: !256, size: 128, offset: 4096)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !4037, file: !4038, line: 106, baseType: !256, size: 128, offset: 4224)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !4037, file: !4038, line: 108, baseType: !890, size: 128, offset: 4352)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !4037, file: !4038, line: 109, baseType: !890, size: 128, offset: 4480)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !4037, file: !4038, line: 110, baseType: !525, size: 8, offset: 4608)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !4037, file: !4038, line: 113, baseType: !4422, size: 64, offset: 4672)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !4424, line: 60, size: 1216, elements: !4425)
!4424 = !DIFile(filename: "./include/sound/info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "060f8a4a29808d9f7cc7b628d26ba172")
!4425 = !{!4426, !4427, !4428, !4429, !4430, !4489, !4490, !4491, !4492, !4496, !4499, !4500, !4501}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4423, file: !4424, line: 61, baseType: !528, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4423, file: !4424, line: 62, baseType: !692, size: 16, offset: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4423, file: !4424, line: 63, baseType: !803, size: 64, offset: 128)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !4423, file: !4424, line: 64, baseType: !248, size: 16, offset: 192)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4423, file: !4424, line: 68, baseType: !4431, size: 128, offset: 256)
!4431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4423, file: !4424, line: 65, size: 128, elements: !4432)
!4432 = !{!4433, !4450}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !4431, file: !4424, line: 66, baseType: !4434, size: 128)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_text", file: !4424, line: 29, size: 128, elements: !4435)
!4435 = !{!4436, !4449}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4434, file: !4424, line: 30, baseType: !4437, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{null, !4422, !4440}
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_buffer", file: !4424, line: 15, size: 256, elements: !4442)
!4442 = !{!4443, !4444, !4445, !4446, !4447, !4448}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4441, file: !4424, line: 16, baseType: !186, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !4441, file: !4424, line: 17, baseType: !37, size: 32, offset: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4441, file: !4424, line: 18, baseType: !37, size: 32, offset: 96)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4441, file: !4424, line: 19, baseType: !37, size: 32, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4441, file: !4424, line: 20, baseType: !115, size: 32, offset: 160)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4441, file: !4424, line: 21, baseType: !115, size: 32, offset: 192)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4434, file: !4424, line: 32, baseType: !4437, size: 64, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4431, file: !4424, line: 67, baseType: !4451, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4453)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_ops", file: !4424, line: 36, size: 512, elements: !4454)
!4454 = !{!4455, !4459, !4463, !4467, !4471, !4475, !4481, !4485}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4453, file: !4424, line: 37, baseType: !4456, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!115, !4422, !248, !1228}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4453, file: !4424, line: 39, baseType: !4460, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!115, !4422, !248, !180}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4453, file: !4424, line: 41, baseType: !4464, size: 64, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!843, !4422, !180, !807, !186, !188, !197}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4453, file: !4424, line: 44, baseType: !4468, size: 64, offset: 192)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!843, !4422, !180, !807, !528, !188, !197}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4453, file: !4424, line: 47, baseType: !4472, size: 64, offset: 256)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!197, !4422, !180, !807, !197, !115}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4453, file: !4424, line: 50, baseType: !4476, size: 64, offset: 320)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!1671, !4422, !180, !807, !4479}
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1675, line: 40, baseType: !1674)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4453, file: !4424, line: 53, baseType: !4482, size: 64, offset: 384)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!115, !4422, !180, !807, !37, !192}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4453, file: !4424, line: 55, baseType: !4486, size: 64, offset: 448)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!115, !4422, !180, !688, !807, !1331}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4423, file: !4424, line: 69, baseType: !4422, size: 64, offset: 384)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4423, file: !4424, line: 70, baseType: !932, size: 64, offset: 448)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4423, file: !4424, line: 71, baseType: !180, size: 64, offset: 512)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4423, file: !4424, line: 72, baseType: !4493, size: 64, offset: 576)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{null, !4422}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4423, file: !4424, line: 73, baseType: !4497, size: 64, offset: 640)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4038, line: 114, flags: DIFlagFwdDecl)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !4423, file: !4424, line: 74, baseType: !202, size: 256, offset: 704)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4423, file: !4424, line: 75, baseType: !256, size: 128, offset: 960)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4423, file: !4424, line: 76, baseType: !256, size: 128, offset: 1088)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !4037, file: !4038, line: 114, baseType: !4497, size: 64, offset: 4736)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !4037, file: !4038, line: 116, baseType: !256, size: 128, offset: 4800)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !4037, file: !4038, line: 117, baseType: !4505, size: 64, offset: 4928)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !4038, line: 117, flags: DIFlagFwdDecl)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !4037, file: !4038, line: 119, baseType: !309, size: 32, offset: 4992)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4037, file: !4038, line: 120, baseType: !115, size: 32, offset: 5024)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !4037, file: !4038, line: 121, baseType: !1717, size: 64, offset: 5056)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4037, file: !4038, line: 122, baseType: !4062, size: 64, offset: 5120)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !4037, file: !4038, line: 123, baseType: !4063, size: 5824, offset: 5184)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4037, file: !4038, line: 124, baseType: !4513, size: 256, offset: 11008)
!4513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1026, size: 256, elements: !372)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4037, file: !4038, line: 125, baseType: !525, size: 8, offset: 11264)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4037, file: !4038, line: 126, baseType: !525, size: 8, offset: 11272)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !4037, file: !4038, line: 127, baseType: !525, size: 8, offset: 11280)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !4037, file: !4038, line: 128, baseType: !115, size: 32, offset: 11296)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !4037, file: !4038, line: 129, baseType: !376, size: 192, offset: 11328)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !4037, file: !4038, line: 131, baseType: !188, size: 64, offset: 11520)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !4037, file: !4038, line: 132, baseType: !202, size: 256, offset: 11584)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4037, file: !4038, line: 138, baseType: !37, size: 32, offset: 11840)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !4037, file: !4038, line: 139, baseType: !230, size: 32, offset: 11872)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !4037, file: !4038, line: 140, baseType: !376, size: 192, offset: 11904)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !4037, file: !4038, line: 141, baseType: !376, size: 192, offset: 12096)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4032, file: !4028, line: 60, baseType: !932, size: 64, offset: 128)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_device", scope: !4032, file: !4028, line: 61, baseType: !115, size: 32, offset: 192)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "tmr_subdevice", scope: !4032, file: !4028, line: 62, baseType: !115, size: 32, offset: 224)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4032, file: !4028, line: 63, baseType: !4529, size: 512, offset: 256)
!4529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !988)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4032, file: !4028, line: 64, baseType: !4045, size: 640, offset: 768)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4032, file: !4028, line: 65, baseType: !37, size: 32, offset: 1408)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !4032, file: !4028, line: 66, baseType: !115, size: 32, offset: 1440)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "sticks", scope: !4032, file: !4028, line: 67, baseType: !192, size: 64, offset: 1472)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4032, file: !4028, line: 68, baseType: !180, size: 64, offset: 1536)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4032, file: !4028, line: 69, baseType: !4536, size: 64, offset: 1600)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{null, !4031}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !4032, file: !4028, line: 70, baseType: !4540, size: 768, offset: 1664)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_timer_hardware", file: !4028, line: 40, size: 768, elements: !4541)
!4541 = !{!4542, !4543, !4544, !4545, !4546, !4547, !4551, !4552, !4556, !4557, !4558, !4562}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4540, file: !4028, line: 42, baseType: !37, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4540, file: !4028, line: 43, baseType: !192, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "resolution_min", scope: !4540, file: !4028, line: 44, baseType: !192, size: 64, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "resolution_max", scope: !4540, file: !4028, line: 45, baseType: !192, size: 64, offset: 192)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !4540, file: !4028, line: 46, baseType: !192, size: 64, offset: 256)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4540, file: !4028, line: 48, baseType: !4548, size: 64, offset: 320)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!115, !4031}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4540, file: !4028, line: 49, baseType: !4548, size: 64, offset: 384)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "c_resolution", scope: !4540, file: !4028, line: 50, baseType: !4553, size: 64, offset: 448)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!192, !4031}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4540, file: !4028, line: 51, baseType: !4548, size: 64, offset: 512)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4540, file: !4028, line: 52, baseType: !4548, size: 64, offset: 576)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "set_period", scope: !4540, file: !4028, line: 53, baseType: !4559, size: 64, offset: 640)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!115, !4031, !192, !192}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "precise_resolution", scope: !4540, file: !4028, line: 54, baseType: !4563, size: 64, offset: 704)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!115, !4031, !2055, !2055}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4032, file: !4028, line: 71, baseType: !309, size: 32, offset: 2432)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4032, file: !4028, line: 72, baseType: !256, size: 128, offset: 2496)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "open_list_head", scope: !4032, file: !4028, line: 73, baseType: !256, size: 128, offset: 2624)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "active_list_head", scope: !4032, file: !4028, line: 74, baseType: !256, size: 128, offset: 2752)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "ack_list_head", scope: !4032, file: !4028, line: 75, baseType: !256, size: 128, offset: 2880)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "sack_list_head", scope: !4032, file: !4028, line: 76, baseType: !256, size: 128, offset: 3008)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "task_work", scope: !4032, file: !4028, line: 77, baseType: !1499, size: 256, offset: 3136)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "max_instances", scope: !4032, file: !4028, line: 78, baseType: !115, size: 32, offset: 3392)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "num_instances", scope: !4032, file: !4028, line: 79, baseType: !115, size: 32, offset: 3424)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4027, file: !4028, line: 84, baseType: !186, size: 64, offset: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4027, file: !4028, line: 85, baseType: !37, size: 32, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4027, file: !4028, line: 86, baseType: !180, size: 64, offset: 192)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4027, file: !4028, line: 87, baseType: !4579, size: 64, offset: 256)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{null, !4026}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4027, file: !4028, line: 88, baseType: !4583, size: 64, offset: 320)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{null, !4026, !192, !192}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "ccallback", scope: !4027, file: !4028, line: 90, baseType: !4587, size: 64, offset: 384)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{null, !4026, !115, !4590, !192}
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4027, file: !4028, line: 94, baseType: !4579, size: 64, offset: 448)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !4027, file: !4028, line: 95, baseType: !180, size: 64, offset: 512)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !4027, file: !4028, line: 96, baseType: !192, size: 64, offset: 576)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "cticks", scope: !4027, file: !4028, line: 97, baseType: !192, size: 64, offset: 640)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "pticks", scope: !4027, file: !4028, line: 98, baseType: !192, size: 64, offset: 704)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4027, file: !4028, line: 99, baseType: !192, size: 64, offset: 768)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "lost", scope: !4027, file: !4028, line: 100, baseType: !192, size: 64, offset: 832)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "slave_class", scope: !4027, file: !4028, line: 101, baseType: !115, size: 32, offset: 896)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "slave_id", scope: !4027, file: !4028, line: 102, baseType: !37, size: 32, offset: 928)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "open_list", scope: !4027, file: !4028, line: 103, baseType: !256, size: 128, offset: 960)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !4027, file: !4028, line: 104, baseType: !256, size: 128, offset: 1088)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "ack_list", scope: !4027, file: !4028, line: 105, baseType: !256, size: 128, offset: 1216)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "slave_list_head", scope: !4027, file: !4028, line: 106, baseType: !256, size: 128, offset: 1344)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "slave_active_head", scope: !4027, file: !4028, line: 107, baseType: !256, size: 128, offset: 1472)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4027, file: !4028, line: 108, baseType: !4026, size: 64, offset: 1600)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !3993, file: !3994, line: 34, baseType: !37, size: 32, offset: 704)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_resolution", scope: !3993, file: !3994, line: 35, baseType: !192, size: 64, offset: 768)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "skew", scope: !3993, file: !3994, line: 37, baseType: !37, size: 32, offset: 832)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "skew_base", scope: !3993, file: !3994, line: 38, baseType: !37, size: 32, offset: 864)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "last_update", scope: !3993, file: !3994, line: 40, baseType: !799, size: 128, offset: 896)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3993, file: !3994, line: 42, baseType: !309, size: 32, offset: 1024)
!4612 = !{!4613}
!4613 = !DILocalVariable(name: "tmr", scope: !3989, file: !2, line: 41, type: !3992)
!4614 = !DILocation(line: 41, column: 2, scope: !3989)
!4615 = !DILocation(line: 41, column: 24, scope: !3989)
!4616 = !DILocation(line: 43, column: 8, scope: !3989)
!4617 = !DILocation(line: 43, column: 6, scope: !3989)
!4618 = !DILocation(line: 44, column: 7, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !3989, file: !2, line: 44, column: 6)
!4620 = !DILocation(line: 44, column: 6, scope: !3989)
!4621 = !DILocation(line: 45, column: 3, scope: !4619)
!4622 = !DILocation(line: 46, column: 2, scope: !3989)
!4623 = !DILocation(line: 46, column: 2, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !3989, file: !2, line: 46, column: 2)
!4625 = !DILocation(line: 49, column: 25, scope: !3989)
!4626 = !DILocation(line: 49, column: 2, scope: !3989)
!4627 = !DILocation(line: 52, column: 22, scope: !3989)
!4628 = !DILocation(line: 52, column: 2, scope: !3989)
!4629 = !DILocation(line: 54, column: 9, scope: !3989)
!4630 = !DILocation(line: 54, column: 2, scope: !3989)
!4631 = !DILocation(line: 55, column: 1, scope: !3989)
!4632 = distinct !DISubprogram(name: "kzalloc", scope: !29, file: !29, line: 719, type: !4633, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4635)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!180, !188, !178}
!4635 = !{!4636, !4637}
!4636 = !DILocalVariable(name: "size", arg: 1, scope: !4632, file: !29, line: 719, type: !188)
!4637 = !DILocalVariable(name: "flags", arg: 2, scope: !4632, file: !29, line: 719, type: !178)
!4638 = !DILocation(line: 719, column: 52, scope: !4632)
!4639 = !DILocation(line: 719, column: 64, scope: !4632)
!4640 = !DILocation(line: 721, column: 17, scope: !4632)
!4641 = !DILocation(line: 721, column: 23, scope: !4632)
!4642 = !DILocation(line: 721, column: 29, scope: !4632)
!4643 = !DILocation(line: 721, column: 9, scope: !4632)
!4644 = !DILocation(line: 721, column: 2, scope: !4632)
!4645 = distinct !DISubprogram(name: "spinlock_check", scope: !4646, file: !4646, line: 324, type: !4647, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4651)
!4646 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!4649, !4650}
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!4651 = !{!4652}
!4652 = !DILocalVariable(name: "lock", arg: 1, scope: !4645, file: !4646, line: 324, type: !4650)
!4653 = !DILocation(line: 324, column: 67, scope: !4645)
!4654 = !DILocation(line: 326, column: 10, scope: !4645)
!4655 = !DILocation(line: 326, column: 16, scope: !4645)
!4656 = !DILocation(line: 326, column: 2, scope: !4645)
!4657 = distinct !DISubprogram(name: "snd_seq_timer_defaults", scope: !2, file: !2, line: 76, type: !4658, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4660)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{null, !3992}
!4660 = !{!4661, !4662, !4663, !4667}
!4661 = !DILocalVariable(name: "tmr", arg: 1, scope: !4657, file: !2, line: 76, type: !3992)
!4662 = !DILocalVariable(name: "flags", scope: !4657, file: !2, line: 78, type: !192)
!4663 = !DILocalVariable(name: "__dummy", scope: !4664, file: !2, line: 80, type: !192)
!4664 = distinct !DILexicalBlock(scope: !4665, file: !2, line: 80, column: 2)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !2, line: 80, column: 2)
!4666 = distinct !DILexicalBlock(scope: !4657, file: !2, line: 80, column: 2)
!4667 = !DILocalVariable(name: "__dummy2", scope: !4664, file: !2, line: 80, type: !192)
!4668 = !DILocation(line: 76, column: 52, scope: !4657)
!4669 = !DILocation(line: 78, column: 2, scope: !4657)
!4670 = !DILocation(line: 78, column: 16, scope: !4657)
!4671 = !DILocation(line: 80, column: 2, scope: !4657)
!4672 = !DILocation(line: 80, column: 2, scope: !4666)
!4673 = !DILocation(line: 80, column: 2, scope: !4664)
!4674 = !DILocation(line: 80, column: 2, scope: !4665)
!4675 = !DILocation(line: 82, column: 2, scope: !4657)
!4676 = !DILocation(line: 82, column: 7, scope: !4657)
!4677 = !DILocation(line: 82, column: 11, scope: !4657)
!4678 = !DILocation(line: 83, column: 2, scope: !4657)
!4679 = !DILocation(line: 83, column: 7, scope: !4657)
!4680 = !DILocation(line: 83, column: 13, scope: !4657)
!4681 = !DILocation(line: 84, column: 36, scope: !4657)
!4682 = !DILocation(line: 84, column: 2, scope: !4657)
!4683 = !DILocation(line: 85, column: 2, scope: !4657)
!4684 = !DILocation(line: 85, column: 15, scope: !4657)
!4685 = !DILocation(line: 87, column: 2, scope: !4657)
!4686 = !DILocation(line: 87, column: 7, scope: !4657)
!4687 = !DILocation(line: 87, column: 12, scope: !4657)
!4688 = !DILocation(line: 88, column: 27, scope: !4657)
!4689 = !DILocation(line: 88, column: 2, scope: !4657)
!4690 = !DILocation(line: 88, column: 7, scope: !4657)
!4691 = !DILocation(line: 88, column: 15, scope: !4657)
!4692 = !DILocation(line: 88, column: 25, scope: !4657)
!4693 = !DILocation(line: 89, column: 28, scope: !4657)
!4694 = !DILocation(line: 89, column: 2, scope: !4657)
!4695 = !DILocation(line: 89, column: 7, scope: !4657)
!4696 = !DILocation(line: 89, column: 15, scope: !4657)
!4697 = !DILocation(line: 89, column: 26, scope: !4657)
!4698 = !DILocation(line: 90, column: 22, scope: !4657)
!4699 = !DILocation(line: 90, column: 2, scope: !4657)
!4700 = !DILocation(line: 90, column: 7, scope: !4657)
!4701 = !DILocation(line: 90, column: 15, scope: !4657)
!4702 = !DILocation(line: 90, column: 20, scope: !4657)
!4703 = !DILocation(line: 91, column: 24, scope: !4657)
!4704 = !DILocation(line: 91, column: 2, scope: !4657)
!4705 = !DILocation(line: 91, column: 7, scope: !4657)
!4706 = !DILocation(line: 91, column: 15, scope: !4657)
!4707 = !DILocation(line: 91, column: 22, scope: !4657)
!4708 = !DILocation(line: 92, column: 27, scope: !4657)
!4709 = !DILocation(line: 92, column: 2, scope: !4657)
!4710 = !DILocation(line: 92, column: 7, scope: !4657)
!4711 = !DILocation(line: 92, column: 15, scope: !4657)
!4712 = !DILocation(line: 92, column: 25, scope: !4657)
!4713 = !DILocation(line: 93, column: 30, scope: !4657)
!4714 = !DILocation(line: 93, column: 2, scope: !4657)
!4715 = !DILocation(line: 93, column: 7, scope: !4657)
!4716 = !DILocation(line: 93, column: 28, scope: !4657)
!4717 = !DILocation(line: 95, column: 14, scope: !4657)
!4718 = !DILocation(line: 95, column: 19, scope: !4657)
!4719 = !DILocation(line: 95, column: 29, scope: !4657)
!4720 = !DILocation(line: 95, column: 2, scope: !4657)
!4721 = !DILocation(line: 95, column: 7, scope: !4657)
!4722 = !DILocation(line: 95, column: 12, scope: !4657)
!4723 = !DILocation(line: 96, column: 26, scope: !4657)
!4724 = !DILocation(line: 96, column: 31, scope: !4657)
!4725 = !DILocation(line: 96, column: 37, scope: !4657)
!4726 = !DILocation(line: 96, column: 2, scope: !4657)
!4727 = !DILocation(line: 97, column: 1, scope: !4657)
!4728 = distinct !DISubprogram(name: "snd_seq_timer_reset", scope: !2, file: !2, line: 109, type: !4658, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4729)
!4729 = !{!4730, !4731, !4732, !4736}
!4730 = !DILocalVariable(name: "tmr", arg: 1, scope: !4728, file: !2, line: 109, type: !3992)
!4731 = !DILocalVariable(name: "flags", scope: !4728, file: !2, line: 111, type: !192)
!4732 = !DILocalVariable(name: "__dummy", scope: !4733, file: !2, line: 113, type: !192)
!4733 = distinct !DILexicalBlock(scope: !4734, file: !2, line: 113, column: 2)
!4734 = distinct !DILexicalBlock(scope: !4735, file: !2, line: 113, column: 2)
!4735 = distinct !DILexicalBlock(scope: !4728, file: !2, line: 113, column: 2)
!4736 = !DILocalVariable(name: "__dummy2", scope: !4733, file: !2, line: 113, type: !192)
!4737 = !DILocation(line: 109, column: 48, scope: !4728)
!4738 = !DILocation(line: 111, column: 2, scope: !4728)
!4739 = !DILocation(line: 111, column: 16, scope: !4728)
!4740 = !DILocation(line: 113, column: 2, scope: !4728)
!4741 = !DILocation(line: 113, column: 2, scope: !4735)
!4742 = !DILocation(line: 113, column: 2, scope: !4733)
!4743 = !DILocation(line: 113, column: 2, scope: !4734)
!4744 = !DILocation(line: 114, column: 18, scope: !4728)
!4745 = !DILocation(line: 114, column: 2, scope: !4728)
!4746 = !DILocation(line: 115, column: 26, scope: !4728)
!4747 = !DILocation(line: 115, column: 31, scope: !4728)
!4748 = !DILocation(line: 115, column: 37, scope: !4728)
!4749 = !DILocation(line: 115, column: 2, scope: !4728)
!4750 = !DILocation(line: 116, column: 1, scope: !4728)
!4751 = distinct !DISubprogram(name: "snd_seq_timer_delete", scope: !2, file: !2, line: 58, type: !4752, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4755)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{null, !4754}
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!4755 = !{!4756, !4757}
!4756 = !DILocalVariable(name: "tmr", arg: 1, scope: !4751, file: !2, line: 58, type: !4754)
!4757 = !DILocalVariable(name: "t", scope: !4751, file: !2, line: 60, type: !3992)
!4758 = !DILocation(line: 58, column: 50, scope: !4751)
!4759 = !DILocation(line: 60, column: 2, scope: !4751)
!4760 = !DILocation(line: 60, column: 24, scope: !4751)
!4761 = !DILocation(line: 60, column: 29, scope: !4751)
!4762 = !DILocation(line: 60, column: 28, scope: !4751)
!4763 = !DILocation(line: 61, column: 3, scope: !4751)
!4764 = !DILocation(line: 61, column: 7, scope: !4751)
!4765 = !DILocation(line: 63, column: 6, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4751, file: !2, line: 63, column: 6)
!4767 = !DILocation(line: 63, column: 8, scope: !4766)
!4768 = !DILocation(line: 63, column: 6, scope: !4751)
!4769 = !DILocation(line: 64, column: 3, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !2, line: 64, column: 3)
!4771 = distinct !DILexicalBlock(scope: !4772, file: !2, line: 64, column: 3)
!4772 = distinct !DILexicalBlock(scope: !4766, file: !2, line: 63, column: 17)
!4773 = !DILocation(line: 64, column: 3, scope: !4771)
!4774 = !DILocation(line: 65, column: 3, scope: !4772)
!4775 = !DILocation(line: 67, column: 2, scope: !4751)
!4776 = !DILocation(line: 67, column: 13, scope: !4751)
!4777 = !DILocation(line: 70, column: 21, scope: !4751)
!4778 = !DILocation(line: 70, column: 2, scope: !4751)
!4779 = !DILocation(line: 71, column: 22, scope: !4751)
!4780 = !DILocation(line: 71, column: 2, scope: !4751)
!4781 = !DILocation(line: 73, column: 8, scope: !4751)
!4782 = !DILocation(line: 73, column: 2, scope: !4751)
!4783 = !DILocation(line: 74, column: 1, scope: !4751)
!4784 = distinct !DISubprogram(name: "snd_seq_timer_stop", scope: !2, file: !2, line: 343, type: !4785, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4787)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!115, !3992}
!4787 = !{!4788, !4789, !4790, !4791, !4795}
!4788 = !DILocalVariable(name: "tmr", arg: 1, scope: !4784, file: !2, line: 343, type: !3992)
!4789 = !DILocalVariable(name: "flags", scope: !4784, file: !2, line: 345, type: !192)
!4790 = !DILocalVariable(name: "err", scope: !4784, file: !2, line: 346, type: !115)
!4791 = !DILocalVariable(name: "__dummy", scope: !4792, file: !2, line: 348, type: !192)
!4792 = distinct !DILexicalBlock(scope: !4793, file: !2, line: 348, column: 2)
!4793 = distinct !DILexicalBlock(scope: !4794, file: !2, line: 348, column: 2)
!4794 = distinct !DILexicalBlock(scope: !4784, file: !2, line: 348, column: 2)
!4795 = !DILocalVariable(name: "__dummy2", scope: !4792, file: !2, line: 348, type: !192)
!4796 = !DILocation(line: 343, column: 46, scope: !4784)
!4797 = !DILocation(line: 345, column: 2, scope: !4784)
!4798 = !DILocation(line: 345, column: 16, scope: !4784)
!4799 = !DILocation(line: 346, column: 2, scope: !4784)
!4800 = !DILocation(line: 346, column: 6, scope: !4784)
!4801 = !DILocation(line: 348, column: 2, scope: !4784)
!4802 = !DILocation(line: 348, column: 2, scope: !4794)
!4803 = !DILocation(line: 348, column: 2, scope: !4792)
!4804 = !DILocation(line: 348, column: 2, scope: !4793)
!4805 = !DILocation(line: 349, column: 23, scope: !4784)
!4806 = !DILocation(line: 349, column: 8, scope: !4784)
!4807 = !DILocation(line: 349, column: 6, scope: !4784)
!4808 = !DILocation(line: 350, column: 26, scope: !4784)
!4809 = !DILocation(line: 350, column: 31, scope: !4784)
!4810 = !DILocation(line: 350, column: 37, scope: !4784)
!4811 = !DILocation(line: 350, column: 2, scope: !4784)
!4812 = !DILocation(line: 351, column: 9, scope: !4784)
!4813 = !DILocation(line: 352, column: 1, scope: !4784)
!4814 = !DILocation(line: 351, column: 2, scope: !4784)
!4815 = !DISubprogram(name: "kfree", scope: !29, file: !29, line: 227, type: !4816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{null, !1460}
!4818 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4819, file: !4819, line: 32, type: !4820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4819 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!192, !4649}
!4822 = distinct !DISubprogram(name: "snd_seq_timer_set_tick_resolution", scope: !2, file: !2, line: 21, type: !4658, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4823)
!4823 = !{!4824, !4825}
!4824 = !DILocalVariable(name: "tmr", arg: 1, scope: !4822, file: !2, line: 21, type: !3992)
!4825 = !DILocalVariable(name: "s", scope: !4826, file: !2, line: 27, type: !37)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !2, line: 25, column: 7)
!4827 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 23, column: 6)
!4828 = !DILocation(line: 21, column: 69, scope: !4822)
!4829 = !DILocation(line: 23, column: 6, scope: !4827)
!4830 = !DILocation(line: 23, column: 11, scope: !4827)
!4831 = !DILocation(line: 23, column: 17, scope: !4827)
!4832 = !DILocation(line: 23, column: 6, scope: !4822)
!4833 = !DILocation(line: 24, column: 27, scope: !4827)
!4834 = !DILocation(line: 24, column: 32, scope: !4827)
!4835 = !DILocation(line: 24, column: 38, scope: !4827)
!4836 = !DILocation(line: 24, column: 48, scope: !4827)
!4837 = !DILocation(line: 24, column: 53, scope: !4827)
!4838 = !DILocation(line: 24, column: 46, scope: !4827)
!4839 = !DILocation(line: 24, column: 26, scope: !4827)
!4840 = !DILocation(line: 24, column: 3, scope: !4827)
!4841 = !DILocation(line: 24, column: 8, scope: !4827)
!4842 = !DILocation(line: 24, column: 13, scope: !4827)
!4843 = !DILocation(line: 24, column: 24, scope: !4827)
!4844 = !DILocation(line: 27, column: 3, scope: !4826)
!4845 = !DILocation(line: 27, column: 16, scope: !4826)
!4846 = !DILocation(line: 28, column: 7, scope: !4826)
!4847 = !DILocation(line: 28, column: 12, scope: !4826)
!4848 = !DILocation(line: 28, column: 20, scope: !4826)
!4849 = !DILocation(line: 28, column: 25, scope: !4826)
!4850 = !DILocation(line: 28, column: 18, scope: !4826)
!4851 = !DILocation(line: 28, column: 5, scope: !4826)
!4852 = !DILocation(line: 29, column: 8, scope: !4826)
!4853 = !DILocation(line: 29, column: 10, scope: !4826)
!4854 = !DILocation(line: 29, column: 20, scope: !4826)
!4855 = !DILocation(line: 29, column: 25, scope: !4826)
!4856 = !DILocation(line: 29, column: 18, scope: !4826)
!4857 = !DILocation(line: 29, column: 5, scope: !4826)
!4858 = !DILocation(line: 30, column: 27, scope: !4826)
!4859 = !DILocation(line: 30, column: 32, scope: !4826)
!4860 = !DILocation(line: 30, column: 40, scope: !4826)
!4861 = !DILocation(line: 30, column: 45, scope: !4826)
!4862 = !DILocation(line: 30, column: 38, scope: !4826)
!4863 = !DILocation(line: 30, column: 50, scope: !4826)
!4864 = !DILocation(line: 30, column: 26, scope: !4826)
!4865 = !DILocation(line: 30, column: 3, scope: !4826)
!4866 = !DILocation(line: 30, column: 8, scope: !4826)
!4867 = !DILocation(line: 30, column: 13, scope: !4826)
!4868 = !DILocation(line: 30, column: 24, scope: !4826)
!4869 = !DILocation(line: 31, column: 27, scope: !4826)
!4870 = !DILocation(line: 31, column: 3, scope: !4826)
!4871 = !DILocation(line: 31, column: 8, scope: !4826)
!4872 = !DILocation(line: 31, column: 13, scope: !4826)
!4873 = !DILocation(line: 31, column: 24, scope: !4826)
!4874 = !DILocation(line: 32, column: 2, scope: !4827)
!4875 = !DILocation(line: 33, column: 6, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4822, file: !2, line: 33, column: 6)
!4877 = !DILocation(line: 33, column: 11, scope: !4876)
!4878 = !DILocation(line: 33, column: 16, scope: !4876)
!4879 = !DILocation(line: 33, column: 27, scope: !4876)
!4880 = !DILocation(line: 33, column: 6, scope: !4822)
!4881 = !DILocation(line: 34, column: 3, scope: !4876)
!4882 = !DILocation(line: 34, column: 8, scope: !4876)
!4883 = !DILocation(line: 34, column: 13, scope: !4876)
!4884 = !DILocation(line: 34, column: 24, scope: !4876)
!4885 = !DILocation(line: 35, column: 29, scope: !4822)
!4886 = !DILocation(line: 35, column: 34, scope: !4822)
!4887 = !DILocation(line: 35, column: 2, scope: !4822)
!4888 = !DILocation(line: 36, column: 1, scope: !4822)
!4889 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4646, file: !4646, line: 404, type: !4890, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4892)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{null, !4650, !192}
!4892 = !{!4893, !4894, !4895, !4898}
!4893 = !DILocalVariable(name: "lock", arg: 1, scope: !4889, file: !4646, line: 404, type: !4650)
!4894 = !DILocalVariable(name: "flags", arg: 2, scope: !4889, file: !4646, line: 404, type: !192)
!4895 = !DILocalVariable(name: "__dummy", scope: !4896, file: !4646, line: 406, type: !192)
!4896 = distinct !DILexicalBlock(scope: !4897, file: !4646, line: 406, column: 2)
!4897 = distinct !DILexicalBlock(scope: !4889, file: !4646, line: 406, column: 2)
!4898 = !DILocalVariable(name: "__dummy2", scope: !4896, file: !4646, line: 406, type: !192)
!4899 = !DILocation(line: 404, column: 64, scope: !4889)
!4900 = !DILocation(line: 404, column: 84, scope: !4889)
!4901 = !DILocation(line: 406, column: 2, scope: !4889)
!4902 = !DILocation(line: 406, column: 2, scope: !4896)
!4903 = !DILocation(line: 406, column: 2, scope: !4897)
!4904 = !DILocation(line: 407, column: 1, scope: !4889)
!4905 = distinct !DISubprogram(name: "seq_timer_reset", scope: !2, file: !2, line: 99, type: !4658, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4906)
!4906 = !{!4907}
!4907 = !DILocalVariable(name: "tmr", arg: 1, scope: !4905, file: !2, line: 99, type: !3992)
!4908 = !DILocation(line: 99, column: 51, scope: !4905)
!4909 = !DILocation(line: 102, column: 2, scope: !4905)
!4910 = !DILocation(line: 102, column: 7, scope: !4905)
!4911 = !DILocation(line: 102, column: 16, scope: !4905)
!4912 = !DILocation(line: 102, column: 23, scope: !4905)
!4913 = !DILocation(line: 103, column: 2, scope: !4905)
!4914 = !DILocation(line: 103, column: 7, scope: !4905)
!4915 = !DILocation(line: 103, column: 16, scope: !4905)
!4916 = !DILocation(line: 103, column: 24, scope: !4905)
!4917 = !DILocation(line: 105, column: 2, scope: !4905)
!4918 = !DILocation(line: 105, column: 7, scope: !4905)
!4919 = !DILocation(line: 105, column: 12, scope: !4905)
!4920 = !DILocation(line: 105, column: 21, scope: !4905)
!4921 = !DILocation(line: 106, column: 2, scope: !4905)
!4922 = !DILocation(line: 106, column: 7, scope: !4905)
!4923 = !DILocation(line: 106, column: 12, scope: !4905)
!4924 = !DILocation(line: 106, column: 21, scope: !4905)
!4925 = !DILocation(line: 107, column: 1, scope: !4905)
!4926 = distinct !DISubprogram(name: "snd_seq_timer_set_tempo", scope: !2, file: !2, line: 162, type: !4927, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4929)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!115, !3992, !115}
!4929 = !{!4930, !4931, !4932, !4933, !4936, !4940}
!4930 = !DILocalVariable(name: "tmr", arg: 1, scope: !4926, file: !2, line: 162, type: !3992)
!4931 = !DILocalVariable(name: "tempo", arg: 2, scope: !4926, file: !2, line: 162, type: !115)
!4932 = !DILocalVariable(name: "flags", scope: !4926, file: !2, line: 164, type: !192)
!4933 = !DILocalVariable(name: "__ret_warn_on", scope: !4934, file: !2, line: 166, type: !115)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !2, line: 166, column: 6)
!4935 = distinct !DILexicalBlock(scope: !4926, file: !2, line: 166, column: 6)
!4936 = !DILocalVariable(name: "__dummy", scope: !4937, file: !2, line: 170, type: !192)
!4937 = distinct !DILexicalBlock(scope: !4938, file: !2, line: 170, column: 2)
!4938 = distinct !DILexicalBlock(scope: !4939, file: !2, line: 170, column: 2)
!4939 = distinct !DILexicalBlock(scope: !4926, file: !2, line: 170, column: 2)
!4940 = !DILocalVariable(name: "__dummy2", scope: !4937, file: !2, line: 170, type: !192)
!4941 = !DILocation(line: 162, column: 52, scope: !4926)
!4942 = !DILocation(line: 162, column: 61, scope: !4926)
!4943 = !DILocation(line: 164, column: 2, scope: !4926)
!4944 = !DILocation(line: 164, column: 16, scope: !4926)
!4945 = !DILocation(line: 166, column: 6, scope: !4934)
!4946 = !DILocation(line: 166, column: 6, scope: !4935)
!4947 = !DILocation(line: 166, column: 6, scope: !4926)
!4948 = !DILocation(line: 167, column: 3, scope: !4935)
!4949 = !DILocation(line: 168, column: 6, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4926, file: !2, line: 168, column: 6)
!4951 = !DILocation(line: 168, column: 12, scope: !4950)
!4952 = !DILocation(line: 168, column: 6, scope: !4926)
!4953 = !DILocation(line: 169, column: 3, scope: !4950)
!4954 = !DILocation(line: 170, column: 2, scope: !4926)
!4955 = !DILocation(line: 170, column: 2, scope: !4939)
!4956 = !DILocation(line: 170, column: 2, scope: !4937)
!4957 = !DILocation(line: 170, column: 2, scope: !4938)
!4958 = !DILocation(line: 171, column: 20, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4926, file: !2, line: 171, column: 6)
!4960 = !DILocation(line: 171, column: 29, scope: !4959)
!4961 = !DILocation(line: 171, column: 34, scope: !4959)
!4962 = !DILocation(line: 171, column: 26, scope: !4959)
!4963 = !DILocation(line: 171, column: 6, scope: !4926)
!4964 = !DILocation(line: 172, column: 16, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4959, file: !2, line: 171, column: 41)
!4966 = !DILocation(line: 172, column: 3, scope: !4965)
!4967 = !DILocation(line: 172, column: 8, scope: !4965)
!4968 = !DILocation(line: 172, column: 14, scope: !4965)
!4969 = !DILocation(line: 173, column: 37, scope: !4965)
!4970 = !DILocation(line: 173, column: 3, scope: !4965)
!4971 = !DILocation(line: 174, column: 2, scope: !4965)
!4972 = !DILocation(line: 175, column: 26, scope: !4926)
!4973 = !DILocation(line: 175, column: 31, scope: !4926)
!4974 = !DILocation(line: 175, column: 37, scope: !4926)
!4975 = !DILocation(line: 175, column: 2, scope: !4926)
!4976 = !DILocation(line: 176, column: 2, scope: !4926)
!4977 = !DILocation(line: 177, column: 1, scope: !4926)
!4978 = distinct !DISubprogram(name: "snd_seq_timer_set_tempo_ppq", scope: !2, file: !2, line: 180, type: !4979, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !4981)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!115, !3992, !115, !115}
!4981 = !{!4982, !4983, !4984, !4985, !4986, !4987, !4990, !4994}
!4982 = !DILocalVariable(name: "tmr", arg: 1, scope: !4978, file: !2, line: 180, type: !3992)
!4983 = !DILocalVariable(name: "tempo", arg: 2, scope: !4978, file: !2, line: 180, type: !115)
!4984 = !DILocalVariable(name: "ppq", arg: 3, scope: !4978, file: !2, line: 180, type: !115)
!4985 = !DILocalVariable(name: "changed", scope: !4978, file: !2, line: 182, type: !115)
!4986 = !DILocalVariable(name: "flags", scope: !4978, file: !2, line: 183, type: !192)
!4987 = !DILocalVariable(name: "__ret_warn_on", scope: !4988, file: !2, line: 185, type: !115)
!4988 = distinct !DILexicalBlock(scope: !4989, file: !2, line: 185, column: 6)
!4989 = distinct !DILexicalBlock(scope: !4978, file: !2, line: 185, column: 6)
!4990 = !DILocalVariable(name: "__dummy", scope: !4991, file: !2, line: 189, type: !192)
!4991 = distinct !DILexicalBlock(scope: !4992, file: !2, line: 189, column: 2)
!4992 = distinct !DILexicalBlock(scope: !4993, file: !2, line: 189, column: 2)
!4993 = distinct !DILexicalBlock(scope: !4978, file: !2, line: 189, column: 2)
!4994 = !DILocalVariable(name: "__dummy2", scope: !4991, file: !2, line: 189, type: !192)
!4995 = !DILocation(line: 180, column: 55, scope: !4978)
!4996 = !DILocation(line: 180, column: 64, scope: !4978)
!4997 = !DILocation(line: 180, column: 75, scope: !4978)
!4998 = !DILocation(line: 182, column: 2, scope: !4978)
!4999 = !DILocation(line: 182, column: 6, scope: !4978)
!5000 = !DILocation(line: 183, column: 2, scope: !4978)
!5001 = !DILocation(line: 183, column: 16, scope: !4978)
!5002 = !DILocation(line: 185, column: 6, scope: !4988)
!5003 = !DILocation(line: 185, column: 6, scope: !4989)
!5004 = !DILocation(line: 185, column: 6, scope: !4978)
!5005 = !DILocation(line: 186, column: 3, scope: !4989)
!5006 = !DILocation(line: 187, column: 6, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4978, file: !2, line: 187, column: 6)
!5008 = !DILocation(line: 187, column: 12, scope: !5007)
!5009 = !DILocation(line: 187, column: 17, scope: !5007)
!5010 = !DILocation(line: 187, column: 20, scope: !5007)
!5011 = !DILocation(line: 187, column: 24, scope: !5007)
!5012 = !DILocation(line: 187, column: 6, scope: !4978)
!5013 = !DILocation(line: 188, column: 3, scope: !5007)
!5014 = !DILocation(line: 189, column: 2, scope: !4978)
!5015 = !DILocation(line: 189, column: 2, scope: !4993)
!5016 = !DILocation(line: 189, column: 2, scope: !4991)
!5017 = !DILocation(line: 189, column: 2, scope: !4992)
!5018 = !DILocation(line: 190, column: 6, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4978, file: !2, line: 190, column: 6)
!5020 = !DILocation(line: 190, column: 11, scope: !5019)
!5021 = !DILocation(line: 190, column: 19, scope: !5019)
!5022 = !DILocation(line: 190, column: 23, scope: !5019)
!5023 = !DILocation(line: 190, column: 30, scope: !5019)
!5024 = !DILocation(line: 190, column: 35, scope: !5019)
!5025 = !DILocation(line: 190, column: 27, scope: !5019)
!5026 = !DILocation(line: 190, column: 6, scope: !4978)
!5027 = !DILocation(line: 193, column: 27, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5019, file: !2, line: 190, column: 41)
!5029 = !DILocation(line: 193, column: 32, scope: !5028)
!5030 = !DILocation(line: 193, column: 38, scope: !5028)
!5031 = !DILocation(line: 193, column: 3, scope: !5028)
!5032 = !DILocation(line: 194, column: 3, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5034, file: !2, line: 194, column: 3)
!5034 = distinct !DILexicalBlock(scope: !5028, file: !2, line: 194, column: 3)
!5035 = !DILocation(line: 194, column: 3, scope: !5034)
!5036 = !DILocation(line: 195, column: 3, scope: !5028)
!5037 = !DILocation(line: 197, column: 13, scope: !4978)
!5038 = !DILocation(line: 197, column: 22, scope: !4978)
!5039 = !DILocation(line: 197, column: 27, scope: !4978)
!5040 = !DILocation(line: 197, column: 19, scope: !4978)
!5041 = !DILocation(line: 197, column: 34, scope: !4978)
!5042 = !DILocation(line: 197, column: 38, scope: !4978)
!5043 = !DILocation(line: 197, column: 45, scope: !4978)
!5044 = !DILocation(line: 197, column: 50, scope: !4978)
!5045 = !DILocation(line: 197, column: 42, scope: !4978)
!5046 = !DILocation(line: 197, column: 10, scope: !4978)
!5047 = !DILocation(line: 198, column: 15, scope: !4978)
!5048 = !DILocation(line: 198, column: 2, scope: !4978)
!5049 = !DILocation(line: 198, column: 7, scope: !4978)
!5050 = !DILocation(line: 198, column: 13, scope: !4978)
!5051 = !DILocation(line: 199, column: 13, scope: !4978)
!5052 = !DILocation(line: 199, column: 2, scope: !4978)
!5053 = !DILocation(line: 199, column: 7, scope: !4978)
!5054 = !DILocation(line: 199, column: 11, scope: !4978)
!5055 = !DILocation(line: 200, column: 6, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !4978, file: !2, line: 200, column: 6)
!5057 = !DILocation(line: 200, column: 6, scope: !4978)
!5058 = !DILocation(line: 201, column: 37, scope: !5056)
!5059 = !DILocation(line: 201, column: 3, scope: !5056)
!5060 = !DILocation(line: 202, column: 26, scope: !4978)
!5061 = !DILocation(line: 202, column: 31, scope: !4978)
!5062 = !DILocation(line: 202, column: 37, scope: !4978)
!5063 = !DILocation(line: 202, column: 2, scope: !4978)
!5064 = !DILocation(line: 203, column: 2, scope: !4978)
!5065 = !DILocation(line: 204, column: 1, scope: !4978)
!5066 = distinct !DISubprogram(name: "snd_seq_timer_set_position_tick", scope: !2, file: !2, line: 207, type: !5067, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5069)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!115, !3992, !4012}
!5069 = !{!5070, !5071, !5072, !5073, !5076, !5080}
!5070 = !DILocalVariable(name: "tmr", arg: 1, scope: !5066, file: !2, line: 207, type: !3992)
!5071 = !DILocalVariable(name: "position", arg: 2, scope: !5066, file: !2, line: 208, type: !4012)
!5072 = !DILocalVariable(name: "flags", scope: !5066, file: !2, line: 210, type: !192)
!5073 = !DILocalVariable(name: "__ret_warn_on", scope: !5074, file: !2, line: 212, type: !115)
!5074 = distinct !DILexicalBlock(scope: !5075, file: !2, line: 212, column: 6)
!5075 = distinct !DILexicalBlock(scope: !5066, file: !2, line: 212, column: 6)
!5076 = !DILocalVariable(name: "__dummy", scope: !5077, file: !2, line: 215, type: !192)
!5077 = distinct !DILexicalBlock(scope: !5078, file: !2, line: 215, column: 2)
!5078 = distinct !DILexicalBlock(scope: !5079, file: !2, line: 215, column: 2)
!5079 = distinct !DILexicalBlock(scope: !5066, file: !2, line: 215, column: 2)
!5080 = !DILocalVariable(name: "__dummy2", scope: !5077, file: !2, line: 215, type: !192)
!5081 = !DILocation(line: 207, column: 59, scope: !5066)
!5082 = !DILocation(line: 208, column: 29, scope: !5066)
!5083 = !DILocation(line: 210, column: 2, scope: !5066)
!5084 = !DILocation(line: 210, column: 16, scope: !5066)
!5085 = !DILocation(line: 212, column: 6, scope: !5074)
!5086 = !DILocation(line: 212, column: 6, scope: !5075)
!5087 = !DILocation(line: 212, column: 6, scope: !5066)
!5088 = !DILocation(line: 213, column: 3, scope: !5075)
!5089 = !DILocation(line: 215, column: 2, scope: !5066)
!5090 = !DILocation(line: 215, column: 2, scope: !5079)
!5091 = !DILocation(line: 215, column: 2, scope: !5077)
!5092 = !DILocation(line: 215, column: 2, scope: !5078)
!5093 = !DILocation(line: 216, column: 23, scope: !5066)
!5094 = !DILocation(line: 216, column: 2, scope: !5066)
!5095 = !DILocation(line: 216, column: 7, scope: !5066)
!5096 = !DILocation(line: 216, column: 12, scope: !5066)
!5097 = !DILocation(line: 216, column: 21, scope: !5066)
!5098 = !DILocation(line: 217, column: 2, scope: !5066)
!5099 = !DILocation(line: 217, column: 7, scope: !5066)
!5100 = !DILocation(line: 217, column: 12, scope: !5066)
!5101 = !DILocation(line: 217, column: 21, scope: !5066)
!5102 = !DILocation(line: 218, column: 26, scope: !5066)
!5103 = !DILocation(line: 218, column: 31, scope: !5066)
!5104 = !DILocation(line: 218, column: 37, scope: !5066)
!5105 = !DILocation(line: 218, column: 2, scope: !5066)
!5106 = !DILocation(line: 219, column: 2, scope: !5066)
!5107 = !DILocation(line: 220, column: 1, scope: !5066)
!5108 = distinct !DISubprogram(name: "snd_seq_timer_set_position_time", scope: !2, file: !2, line: 223, type: !5109, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5111)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!115, !3992, !4001}
!5111 = !{!5112, !5113, !5114, !5115, !5118, !5122}
!5112 = !DILocalVariable(name: "tmr", arg: 1, scope: !5108, file: !2, line: 223, type: !3992)
!5113 = !DILocalVariable(name: "position", arg: 2, scope: !5108, file: !2, line: 224, type: !4001)
!5114 = !DILocalVariable(name: "flags", scope: !5108, file: !2, line: 226, type: !192)
!5115 = !DILocalVariable(name: "__ret_warn_on", scope: !5116, file: !2, line: 228, type: !115)
!5116 = distinct !DILexicalBlock(scope: !5117, file: !2, line: 228, column: 6)
!5117 = distinct !DILexicalBlock(scope: !5108, file: !2, line: 228, column: 6)
!5118 = !DILocalVariable(name: "__dummy", scope: !5119, file: !2, line: 232, type: !192)
!5119 = distinct !DILexicalBlock(scope: !5120, file: !2, line: 232, column: 2)
!5120 = distinct !DILexicalBlock(scope: !5121, file: !2, line: 232, column: 2)
!5121 = distinct !DILexicalBlock(scope: !5108, file: !2, line: 232, column: 2)
!5122 = !DILocalVariable(name: "__dummy2", scope: !5119, file: !2, line: 232, type: !192)
!5123 = !DILocation(line: 223, column: 59, scope: !5108)
!5124 = !DILocation(line: 224, column: 29, scope: !5108)
!5125 = !DILocation(line: 226, column: 2, scope: !5108)
!5126 = !DILocation(line: 226, column: 16, scope: !5108)
!5127 = !DILocation(line: 228, column: 6, scope: !5116)
!5128 = !DILocation(line: 228, column: 6, scope: !5117)
!5129 = !DILocation(line: 228, column: 6, scope: !5108)
!5130 = !DILocation(line: 229, column: 3, scope: !5117)
!5131 = !DILocation(line: 231, column: 2, scope: !5108)
!5132 = !DILocation(line: 232, column: 2, scope: !5108)
!5133 = !DILocation(line: 232, column: 2, scope: !5121)
!5134 = !DILocation(line: 232, column: 2, scope: !5119)
!5135 = !DILocation(line: 232, column: 2, scope: !5120)
!5136 = !DILocation(line: 233, column: 2, scope: !5108)
!5137 = !DILocation(line: 233, column: 7, scope: !5108)
!5138 = !DILocation(line: 233, column: 18, scope: !5108)
!5139 = !DILocation(line: 234, column: 26, scope: !5108)
!5140 = !DILocation(line: 234, column: 31, scope: !5108)
!5141 = !DILocation(line: 234, column: 37, scope: !5108)
!5142 = !DILocation(line: 234, column: 2, scope: !5108)
!5143 = !DILocation(line: 235, column: 2, scope: !5108)
!5144 = !DILocation(line: 236, column: 1, scope: !5108)
!5145 = distinct !DISubprogram(name: "snd_seq_sanity_real_time", scope: !3994, file: !3994, line: 83, type: !5146, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5149)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{null, !5148}
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!5149 = !{!5150}
!5150 = !DILocalVariable(name: "tm", arg: 1, scope: !5145, file: !3994, line: 83, type: !5148)
!5151 = !DILocation(line: 83, column: 66, scope: !5145)
!5152 = !DILocation(line: 85, column: 2, scope: !5145)
!5153 = !DILocation(line: 85, column: 9, scope: !5145)
!5154 = !DILocation(line: 85, column: 13, scope: !5145)
!5155 = !DILocation(line: 85, column: 21, scope: !5145)
!5156 = !DILocation(line: 87, column: 3, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5145, file: !3994, line: 85, column: 36)
!5158 = !DILocation(line: 87, column: 7, scope: !5157)
!5159 = !DILocation(line: 87, column: 15, scope: !5157)
!5160 = !DILocation(line: 88, column: 17, scope: !5157)
!5161 = !DILocation(line: 88, column: 21, scope: !5157)
!5162 = !DILocation(line: 88, column: 27, scope: !5157)
!5163 = distinct !{!5163, !5152, !5164, !5165, !5166}
!5164 = !DILocation(line: 89, column: 9, scope: !5145)
!5165 = !{!"llvm.loop.mustprogress"}
!5166 = !{!"llvm.loop.unroll.disable"}
!5167 = !DILocation(line: 90, column: 1, scope: !5145)
!5168 = distinct !DISubprogram(name: "snd_seq_timer_set_skew", scope: !2, file: !2, line: 239, type: !5169, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5171)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!115, !3992, !37, !37}
!5171 = !{!5172, !5173, !5174, !5175, !5176, !5179, !5183}
!5172 = !DILocalVariable(name: "tmr", arg: 1, scope: !5168, file: !2, line: 239, type: !3992)
!5173 = !DILocalVariable(name: "skew", arg: 2, scope: !5168, file: !2, line: 239, type: !37)
!5174 = !DILocalVariable(name: "base", arg: 3, scope: !5168, file: !2, line: 240, type: !37)
!5175 = !DILocalVariable(name: "flags", scope: !5168, file: !2, line: 242, type: !192)
!5176 = !DILocalVariable(name: "__ret_warn_on", scope: !5177, file: !2, line: 244, type: !115)
!5177 = distinct !DILexicalBlock(scope: !5178, file: !2, line: 244, column: 6)
!5178 = distinct !DILexicalBlock(scope: !5168, file: !2, line: 244, column: 6)
!5179 = !DILocalVariable(name: "__dummy", scope: !5180, file: !2, line: 252, type: !192)
!5180 = distinct !DILexicalBlock(scope: !5181, file: !2, line: 252, column: 2)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !2, line: 252, column: 2)
!5182 = distinct !DILexicalBlock(scope: !5168, file: !2, line: 252, column: 2)
!5183 = !DILocalVariable(name: "__dummy2", scope: !5180, file: !2, line: 252, type: !192)
!5184 = !DILocation(line: 239, column: 50, scope: !5168)
!5185 = !DILocation(line: 239, column: 68, scope: !5168)
!5186 = !DILocation(line: 240, column: 20, scope: !5168)
!5187 = !DILocation(line: 242, column: 2, scope: !5168)
!5188 = !DILocation(line: 242, column: 16, scope: !5168)
!5189 = !DILocation(line: 244, column: 6, scope: !5177)
!5190 = !DILocation(line: 244, column: 6, scope: !5178)
!5191 = !DILocation(line: 244, column: 6, scope: !5168)
!5192 = !DILocation(line: 245, column: 3, scope: !5178)
!5193 = !DILocation(line: 248, column: 6, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5168, file: !2, line: 248, column: 6)
!5195 = !DILocation(line: 248, column: 11, scope: !5194)
!5196 = !DILocation(line: 248, column: 6, scope: !5168)
!5197 = !DILocation(line: 249, column: 3, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5199, file: !2, line: 249, column: 3)
!5199 = distinct !DILexicalBlock(scope: !5200, file: !2, line: 249, column: 3)
!5200 = distinct !DILexicalBlock(scope: !5194, file: !2, line: 248, column: 25)
!5201 = !DILocation(line: 249, column: 3, scope: !5199)
!5202 = !DILocation(line: 250, column: 3, scope: !5200)
!5203 = !DILocation(line: 252, column: 2, scope: !5168)
!5204 = !DILocation(line: 252, column: 2, scope: !5182)
!5205 = !DILocation(line: 252, column: 2, scope: !5180)
!5206 = !DILocation(line: 252, column: 2, scope: !5181)
!5207 = !DILocation(line: 253, column: 14, scope: !5168)
!5208 = !DILocation(line: 253, column: 2, scope: !5168)
!5209 = !DILocation(line: 253, column: 7, scope: !5168)
!5210 = !DILocation(line: 253, column: 12, scope: !5168)
!5211 = !DILocation(line: 254, column: 26, scope: !5168)
!5212 = !DILocation(line: 254, column: 31, scope: !5168)
!5213 = !DILocation(line: 254, column: 37, scope: !5168)
!5214 = !DILocation(line: 254, column: 2, scope: !5168)
!5215 = !DILocation(line: 255, column: 2, scope: !5168)
!5216 = !DILocation(line: 256, column: 1, scope: !5168)
!5217 = distinct !DISubprogram(name: "snd_seq_timer_open", scope: !2, file: !2, line: 258, type: !5218, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5380)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!115, !5220}
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5221, size: 64)
!5221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_queue", file: !5222, line: 19, size: 1536, elements: !5223)
!5222 = !DIFile(filename: "sound/core/seq/seq_queue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1d94675928b0b7e1f2b3b2b6d198043")
!5223 = !{!5224, !5225, !5226, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5375, !5376, !5377}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5221, file: !5222, line: 20, baseType: !115, size: 32)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5221, file: !5222, line: 22, baseType: !4529, size: 512, offset: 32)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "tickq", scope: !5221, file: !5222, line: 24, baseType: !5227, size: 64, offset: 576)
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_prioq", file: !5229, line: 14, size: 192, elements: !5230)
!5229 = !DIFile(filename: "sound/core/seq/seq_prioq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a43ff953124a5eb5f3fb69be68c869b0")
!5230 = !{!5231, !5359, !5360, !5361}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5228, file: !5229, line: 15, baseType: !5232, size: 64)
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_event_cell", file: !5234, line: 29, size: 384, elements: !5235)
!5234 = !DIFile(filename: "sound/core/seq/seq_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "00d141c657921506643a42c8b258f674")
!5235 = !{!5236, !5341, !5358}
!5236 = !DIDerivedType(tag: DW_TAG_member, scope: !5233, file: !5234, line: 30, baseType: !5237, size: 224)
!5237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5233, file: !5234, line: 30, size: 224, elements: !5238)
!5238 = !{!5239, !5333}
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5237, file: !5234, line: 31, baseType: !5240, size: 224)
!5240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_event", file: !4004, line: 271, size: 224, elements: !5241)
!5241 = !{!5242, !5244, !5245, !5246, !5247, !5252, !5257, !5258}
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5240, file: !4004, line: 272, baseType: !5243, size: 8)
!5243 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_seq_event_type_t", file: !4004, line: 139, baseType: !240)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5240, file: !4004, line: 273, baseType: !240, size: 8, offset: 8)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !5240, file: !4004, line: 274, baseType: !4, size: 8, offset: 16)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5240, file: !4004, line: 276, baseType: !240, size: 8, offset: 24)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5240, file: !4004, line: 277, baseType: !5248, size: 64, offset: 32)
!5248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_seq_timestamp", file: !4004, line: 225, size: 64, elements: !5249)
!5249 = !{!5250, !5251}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !5248, file: !4004, line: 226, baseType: !4012, size: 32)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5248, file: !4004, line: 227, baseType: !4003, size: 64)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5240, file: !4004, line: 279, baseType: !5253, size: 16, offset: 96)
!5253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_addr", file: !4004, line: 142, size: 16, elements: !5254)
!5254 = !{!5255, !5256}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !5253, file: !4004, line: 143, baseType: !240, size: 8)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5253, file: !4004, line: 144, baseType: !240, size: 8, offset: 8)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !5240, file: !4004, line: 280, baseType: !5253, size: 16, offset: 112)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5240, file: !4004, line: 282, baseType: !5259, size: 96, offset: 128)
!5259 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "snd_seq_event_data", file: !4004, line: 256, size: 96, elements: !5260)
!5260 = !{!5261, !5269, !5278, !5283, !5288, !5293, !5314, !5315, !5316, !5321, !5326}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !5259, file: !4004, line: 257, baseType: !5262, size: 64)
!5262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_note", file: !4004, line: 180, size: 64, elements: !5263)
!5263 = !{!5264, !5265, !5266, !5267, !5268}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !5262, file: !4004, line: 181, baseType: !240, size: 8)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !5262, file: !4004, line: 182, baseType: !240, size: 8, offset: 8)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "velocity", scope: !5262, file: !4004, line: 183, baseType: !240, size: 8, offset: 16)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "off_velocity", scope: !5262, file: !4004, line: 184, baseType: !240, size: 8, offset: 24)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !5262, file: !4004, line: 185, baseType: !37, size: 32, offset: 32)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !5259, file: !4004, line: 258, baseType: !5270, size: 96)
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_ctrl", file: !4004, line: 189, size: 96, elements: !5271)
!5271 = !{!5272, !5273, !5274, !5275, !5276, !5277}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !5270, file: !4004, line: 190, baseType: !240, size: 8)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "unused1", scope: !5270, file: !4004, line: 191, baseType: !240, size: 8, offset: 8)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "unused2", scope: !5270, file: !4004, line: 191, baseType: !240, size: 8, offset: 16)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "unused3", scope: !5270, file: !4004, line: 191, baseType: !240, size: 8, offset: 24)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !5270, file: !4004, line: 192, baseType: !37, size: 32, offset: 32)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5270, file: !4004, line: 193, baseType: !115, size: 32, offset: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "raw8", scope: !5259, file: !4004, line: 259, baseType: !5279, size: 96)
!5279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_raw8", file: !4004, line: 197, size: 96, elements: !5280)
!5280 = !{!5281}
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5279, file: !4004, line: 198, baseType: !5282, size: 96)
!5282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 96, elements: !3511)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "raw32", scope: !5259, file: !4004, line: 260, baseType: !5284, size: 96)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_raw32", file: !4004, line: 202, size: 96, elements: !5285)
!5285 = !{!5286}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5284, file: !4004, line: 203, baseType: !5287, size: 96)
!5287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 96, elements: !346)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !5259, file: !4004, line: 261, baseType: !5289, size: 96)
!5289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_ext", file: !4004, line: 207, size: 96, elements: !5290)
!5290 = !{!5291, !5292}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5289, file: !4004, line: 208, baseType: !37, size: 32)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5289, file: !4004, line: 209, baseType: !180, size: 64, offset: 32)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5259, file: !4004, line: 262, baseType: !5294, size: 96)
!5294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_queue_control", file: !4004, line: 236, size: 96, elements: !5295)
!5295 = !{!5296, !5297, !5299}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5294, file: !4004, line: 237, baseType: !240, size: 8)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !5294, file: !4004, line: 238, baseType: !5298, size: 24, offset: 8)
!5298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 24, elements: !346)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !5294, file: !4004, line: 246, baseType: !5300, size: 64, offset: 32)
!5300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5294, file: !4004, line: 239, size: 64, elements: !5301)
!5301 = !{!5302, !5303, !5304, !5305, !5310, !5312}
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5300, file: !4004, line: 240, baseType: !115, size: 32)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5300, file: !4004, line: 241, baseType: !5248, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !5300, file: !4004, line: 242, baseType: !37, size: 32)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "skew", scope: !5300, file: !4004, line: 243, baseType: !5306, size: 64)
!5306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_queue_skew", file: !4004, line: 230, size: 64, elements: !5307)
!5307 = !{!5308, !5309}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5306, file: !4004, line: 231, baseType: !37, size: 32)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5306, file: !4004, line: 232, baseType: !37, size: 32, offset: 32)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "d32", scope: !5300, file: !4004, line: 244, baseType: !5311, size: 64)
!5311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !1854)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "d8", scope: !5300, file: !4004, line: 245, baseType: !5313, size: 64)
!5313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 64, elements: !2594)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5259, file: !4004, line: 263, baseType: !5248, size: 64)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5259, file: !4004, line: 264, baseType: !5253, size: 16)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !5259, file: !4004, line: 265, baseType: !5317, size: 32)
!5317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_connect", file: !4004, line: 148, size: 32, elements: !5318)
!5318 = !{!5319, !5320}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "sender", scope: !5317, file: !4004, line: 149, baseType: !5253, size: 16)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !5317, file: !4004, line: 150, baseType: !5253, size: 16, offset: 16)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !5259, file: !4004, line: 266, baseType: !5322, size: 64)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_result", file: !4004, line: 212, size: 64, elements: !5323)
!5323 = !{!5324, !5325}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5322, file: !4004, line: 213, baseType: !115, size: 32)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !5322, file: !4004, line: 214, baseType: !115, size: 32, offset: 32)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "quote", scope: !5259, file: !4004, line: 267, baseType: !5327, size: 96)
!5327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_ev_quote", file: !4004, line: 250, size: 96, elements: !5328)
!5328 = !{!5329, !5330, !5331}
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !5327, file: !4004, line: 251, baseType: !5253, size: 16)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5327, file: !4004, line: 252, baseType: !248, size: 16, offset: 16)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5327, file: !4004, line: 253, baseType: !5332, size: 64, offset: 32)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5240, size: 64)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "ump", scope: !5237, file: !5234, line: 32, baseType: !5334, size: 224)
!5334 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__snd_seq_event", file: !5234, line: 15, size: 224, elements: !5335)
!5335 = !{!5336, !5337}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !5334, file: !5234, line: 16, baseType: !5240, size: 224)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !5334, file: !5234, line: 25, baseType: !5338, size: 224)
!5338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5334, file: !5234, line: 20, size: 224, elements: !5339)
!5339 = !{!5340}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5338, file: !5234, line: 21, baseType: !5240, size: 224)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !5233, file: !5234, line: 34, baseType: !5342, size: 64, offset: 256)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_pool", file: !5234, line: 43, size: 704, elements: !5344)
!5344 = !{!5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357}
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5343, file: !5234, line: 44, baseType: !5232, size: 64)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5343, file: !5234, line: 45, baseType: !5232, size: 64, offset: 64)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "total_elements", scope: !5343, file: !5234, line: 47, baseType: !115, size: 32, offset: 128)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !5343, file: !5234, line: 48, baseType: !230, size: 32, offset: 160)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5343, file: !5234, line: 50, baseType: !115, size: 32, offset: 192)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "room", scope: !5343, file: !5234, line: 51, baseType: !115, size: 32, offset: 224)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !5343, file: !5234, line: 53, baseType: !115, size: 32, offset: 256)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "max_used", scope: !5343, file: !5234, line: 56, baseType: !115, size: 32, offset: 288)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_nopool", scope: !5343, file: !5234, line: 57, baseType: !115, size: 32, offset: 320)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_failures", scope: !5343, file: !5234, line: 58, baseType: !115, size: 32, offset: 352)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "event_alloc_success", scope: !5343, file: !5234, line: 59, baseType: !115, size: 32, offset: 384)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "output_sleep", scope: !5343, file: !5234, line: 62, baseType: !376, size: 192, offset: 448)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5343, file: !5234, line: 65, baseType: !309, size: 32, offset: 640)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5233, file: !5234, line: 35, baseType: !5232, size: 64, offset: 320)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5228, file: !5229, line: 16, baseType: !5232, size: 64, offset: 64)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "cells", scope: !5228, file: !5229, line: 17, baseType: !115, size: 32, offset: 128)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5228, file: !5229, line: 18, baseType: !309, size: 32, offset: 160)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "timeq", scope: !5221, file: !5222, line: 25, baseType: !5227, size: 64, offset: 640)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5221, file: !5222, line: 27, baseType: !3992, size: 64, offset: 704)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5221, file: !5222, line: 28, baseType: !115, size: 32, offset: 768)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !5221, file: !5222, line: 29, baseType: !525, size: 8, offset: 800)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "klocked", scope: !5221, file: !5222, line: 30, baseType: !525, size: 8, offset: 808)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "check_again", scope: !5221, file: !5222, line: 31, baseType: !525, size: 8, offset: 816)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "check_blocked", scope: !5221, file: !5222, line: 32, baseType: !525, size: 8, offset: 824)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5221, file: !5222, line: 34, baseType: !37, size: 32, offset: 832)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !5221, file: !5222, line: 35, baseType: !37, size: 32, offset: 864)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "owner_lock", scope: !5221, file: !5222, line: 37, baseType: !309, size: 32, offset: 896)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "check_lock", scope: !5221, file: !5222, line: 38, baseType: !309, size: 32, offset: 928)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "clients_bitmap", scope: !5221, file: !5222, line: 41, baseType: !5374, size: 192, offset: 960)
!5374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 192, elements: !346)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !5221, file: !5222, line: 42, baseType: !37, size: 32, offset: 1152)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "timer_mutex", scope: !5221, file: !5222, line: 43, baseType: !202, size: 256, offset: 1216)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "use_lock", scope: !5221, file: !5222, line: 45, baseType: !5378, size: 32, offset: 1472)
!5378 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_use_lock_t", file: !5379, line: 7, baseType: !230)
!5379 = !DIFile(filename: "sound/core/seq/seq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "87f5d997a3ce18199b25dc23b768dfb6")
!5380 = !{!5381, !5382, !5383, !5384, !5385, !5386, !5389}
!5381 = !DILocalVariable(name: "q", arg: 1, scope: !5217, file: !2, line: 258, type: !5220)
!5382 = !DILocalVariable(name: "t", scope: !5217, file: !2, line: 260, type: !4026)
!5383 = !DILocalVariable(name: "tmr", scope: !5217, file: !2, line: 261, type: !3992)
!5384 = !DILocalVariable(name: "str", scope: !5217, file: !2, line: 262, type: !3632)
!5385 = !DILocalVariable(name: "err", scope: !5217, file: !2, line: 263, type: !115)
!5386 = !DILocalVariable(name: "__ret_warn_on", scope: !5387, file: !2, line: 266, type: !115)
!5387 = distinct !DILexicalBlock(scope: !5388, file: !2, line: 266, column: 6)
!5388 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 266, column: 6)
!5389 = !DILocalVariable(name: "tid", scope: !5390, file: !2, line: 285, type: !4018)
!5390 = distinct !DILexicalBlock(scope: !5391, file: !2, line: 284, column: 57)
!5391 = distinct !DILexicalBlock(scope: !5392, file: !2, line: 283, column: 7)
!5392 = distinct !DILexicalBlock(scope: !5393, file: !2, line: 282, column: 68)
!5393 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 282, column: 6)
!5394 = !DILocation(line: 258, column: 46, scope: !5217)
!5395 = !DILocation(line: 260, column: 2, scope: !5217)
!5396 = !DILocation(line: 260, column: 29, scope: !5217)
!5397 = !DILocation(line: 261, column: 2, scope: !5217)
!5398 = !DILocation(line: 261, column: 24, scope: !5217)
!5399 = !DILocation(line: 262, column: 2, scope: !5217)
!5400 = !DILocation(line: 262, column: 7, scope: !5217)
!5401 = !DILocation(line: 263, column: 2, scope: !5217)
!5402 = !DILocation(line: 263, column: 6, scope: !5217)
!5403 = !DILocation(line: 265, column: 8, scope: !5217)
!5404 = !DILocation(line: 265, column: 11, scope: !5217)
!5405 = !DILocation(line: 265, column: 6, scope: !5217)
!5406 = !DILocation(line: 266, column: 6, scope: !5387)
!5407 = !DILocation(line: 266, column: 6, scope: !5388)
!5408 = !DILocation(line: 266, column: 6, scope: !5217)
!5409 = !DILocation(line: 267, column: 3, scope: !5388)
!5410 = !DILocation(line: 268, column: 6, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 268, column: 6)
!5412 = !DILocation(line: 268, column: 11, scope: !5411)
!5413 = !DILocation(line: 268, column: 6, scope: !5217)
!5414 = !DILocation(line: 269, column: 3, scope: !5411)
!5415 = !DILocation(line: 270, column: 10, scope: !5217)
!5416 = !DILocation(line: 270, column: 37, scope: !5217)
!5417 = !DILocation(line: 270, column: 40, scope: !5217)
!5418 = !DILocation(line: 270, column: 2, scope: !5217)
!5419 = !DILocation(line: 271, column: 6, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 271, column: 6)
!5421 = !DILocation(line: 271, column: 11, scope: !5420)
!5422 = !DILocation(line: 271, column: 16, scope: !5420)
!5423 = !DILocation(line: 271, column: 6, scope: !5217)
!5424 = !DILocation(line: 272, column: 3, scope: !5420)
!5425 = !DILocation(line: 273, column: 6, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 273, column: 6)
!5427 = !DILocation(line: 273, column: 11, scope: !5426)
!5428 = !DILocation(line: 273, column: 19, scope: !5426)
!5429 = !DILocation(line: 273, column: 29, scope: !5426)
!5430 = !DILocation(line: 273, column: 6, scope: !5217)
!5431 = !DILocation(line: 274, column: 3, scope: !5426)
!5432 = !DILocation(line: 274, column: 8, scope: !5426)
!5433 = !DILocation(line: 274, column: 16, scope: !5426)
!5434 = !DILocation(line: 274, column: 27, scope: !5426)
!5435 = !DILocation(line: 275, column: 29, scope: !5217)
!5436 = !DILocation(line: 275, column: 6, scope: !5217)
!5437 = !DILocation(line: 275, column: 4, scope: !5217)
!5438 = !DILocation(line: 276, column: 7, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 276, column: 6)
!5440 = !DILocation(line: 276, column: 6, scope: !5217)
!5441 = !DILocation(line: 277, column: 3, scope: !5439)
!5442 = !DILocation(line: 278, column: 2, scope: !5217)
!5443 = !DILocation(line: 278, column: 5, scope: !5217)
!5444 = !DILocation(line: 278, column: 14, scope: !5217)
!5445 = !DILocation(line: 279, column: 21, scope: !5217)
!5446 = !DILocation(line: 279, column: 2, scope: !5217)
!5447 = !DILocation(line: 279, column: 5, scope: !5217)
!5448 = !DILocation(line: 279, column: 19, scope: !5217)
!5449 = !DILocation(line: 280, column: 2, scope: !5217)
!5450 = !DILocation(line: 280, column: 5, scope: !5217)
!5451 = !DILocation(line: 280, column: 11, scope: !5217)
!5452 = !DILocation(line: 281, column: 23, scope: !5217)
!5453 = !DILocation(line: 281, column: 27, scope: !5217)
!5454 = !DILocation(line: 281, column: 32, scope: !5217)
!5455 = !DILocation(line: 281, column: 41, scope: !5217)
!5456 = !DILocation(line: 281, column: 44, scope: !5217)
!5457 = !DILocation(line: 281, column: 8, scope: !5217)
!5458 = !DILocation(line: 281, column: 6, scope: !5217)
!5459 = !DILocation(line: 282, column: 6, scope: !5393)
!5460 = !DILocation(line: 282, column: 10, scope: !5393)
!5461 = !DILocation(line: 282, column: 14, scope: !5393)
!5462 = !DILocation(line: 282, column: 17, scope: !5393)
!5463 = !DILocation(line: 282, column: 22, scope: !5393)
!5464 = !DILocation(line: 282, column: 30, scope: !5393)
!5465 = !DILocation(line: 282, column: 40, scope: !5393)
!5466 = !DILocation(line: 282, column: 6, scope: !5217)
!5467 = !DILocation(line: 283, column: 7, scope: !5391)
!5468 = !DILocation(line: 283, column: 12, scope: !5391)
!5469 = !DILocation(line: 283, column: 20, scope: !5391)
!5470 = !DILocation(line: 283, column: 30, scope: !5391)
!5471 = !DILocation(line: 283, column: 58, scope: !5391)
!5472 = !DILocation(line: 284, column: 7, scope: !5391)
!5473 = !DILocation(line: 284, column: 12, scope: !5391)
!5474 = !DILocation(line: 284, column: 20, scope: !5391)
!5475 = !DILocation(line: 284, column: 27, scope: !5391)
!5476 = !DILocation(line: 283, column: 7, scope: !5392)
!5477 = !DILocation(line: 285, column: 4, scope: !5390)
!5478 = !DILocation(line: 285, column: 24, scope: !5390)
!5479 = !DILocation(line: 286, column: 4, scope: !5390)
!5480 = !DILocation(line: 287, column: 8, scope: !5390)
!5481 = !DILocation(line: 287, column: 18, scope: !5390)
!5482 = !DILocation(line: 288, column: 8, scope: !5390)
!5483 = !DILocation(line: 288, column: 19, scope: !5390)
!5484 = !DILocation(line: 289, column: 8, scope: !5390)
!5485 = !DILocation(line: 289, column: 13, scope: !5390)
!5486 = !DILocation(line: 290, column: 8, scope: !5390)
!5487 = !DILocation(line: 290, column: 15, scope: !5390)
!5488 = !DILocation(line: 291, column: 25, scope: !5390)
!5489 = !DILocation(line: 291, column: 34, scope: !5390)
!5490 = !DILocation(line: 291, column: 37, scope: !5390)
!5491 = !DILocation(line: 291, column: 10, scope: !5390)
!5492 = !DILocation(line: 291, column: 8, scope: !5390)
!5493 = !DILocation(line: 292, column: 3, scope: !5391)
!5494 = !DILocation(line: 292, column: 3, scope: !5390)
!5495 = !DILocation(line: 293, column: 2, scope: !5392)
!5496 = !DILocation(line: 294, column: 6, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 294, column: 6)
!5498 = !DILocation(line: 294, column: 10, scope: !5497)
!5499 = !DILocation(line: 294, column: 6, scope: !5217)
!5500 = !DILocation(line: 295, column: 3, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5502, file: !2, line: 295, column: 3)
!5502 = distinct !DILexicalBlock(scope: !5497, file: !2, line: 294, column: 15)
!5503 = !DILocation(line: 295, column: 3, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5501, file: !2, line: 295, column: 3)
!5505 = !DILocation(line: 296, column: 27, scope: !5502)
!5506 = !DILocation(line: 296, column: 3, scope: !5502)
!5507 = !DILocation(line: 297, column: 10, scope: !5502)
!5508 = !DILocation(line: 297, column: 3, scope: !5502)
!5509 = !DILocation(line: 299, column: 17, scope: !5217)
!5510 = !DILocation(line: 299, column: 22, scope: !5217)
!5511 = !DILocation(line: 299, column: 2, scope: !5217)
!5512 = !DILocation(line: 300, column: 6, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 300, column: 6)
!5514 = !DILocation(line: 300, column: 11, scope: !5513)
!5515 = !DILocation(line: 300, column: 6, scope: !5217)
!5516 = !DILocation(line: 301, column: 7, scope: !5513)
!5517 = !DILocation(line: 301, column: 3, scope: !5513)
!5518 = !DILocation(line: 303, column: 17, scope: !5513)
!5519 = !DILocation(line: 303, column: 3, scope: !5513)
!5520 = !DILocation(line: 303, column: 8, scope: !5513)
!5521 = !DILocation(line: 303, column: 15, scope: !5513)
!5522 = !DILocation(line: 304, column: 19, scope: !5217)
!5523 = !DILocation(line: 304, column: 24, scope: !5217)
!5524 = !DILocation(line: 304, column: 2, scope: !5217)
!5525 = !DILocation(line: 305, column: 6, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 305, column: 6)
!5527 = !DILocation(line: 305, column: 10, scope: !5526)
!5528 = !DILocation(line: 305, column: 6, scope: !5217)
!5529 = !DILocation(line: 306, column: 19, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5526, file: !2, line: 305, column: 15)
!5531 = !DILocation(line: 306, column: 3, scope: !5530)
!5532 = !DILocation(line: 307, column: 27, scope: !5530)
!5533 = !DILocation(line: 307, column: 3, scope: !5530)
!5534 = !DILocation(line: 308, column: 10, scope: !5530)
!5535 = !DILocation(line: 308, column: 3, scope: !5530)
!5536 = !DILocation(line: 310, column: 2, scope: !5217)
!5537 = !DILocation(line: 311, column: 1, scope: !5217)
!5538 = !DISubprogram(name: "sprintf", scope: !5539, file: !5539, line: 10, type: !5540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5539 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5540 = !DISubroutineType(types: !5541)
!5541 = !{!115, !186, !528, null}
!5542 = !DISubprogram(name: "snd_timer_instance_new", scope: !4028, file: !4028, line: 121, type: !5543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5543 = !DISubroutineType(types: !5544)
!5544 = !{!4026, !528}
!5545 = distinct !DISubprogram(name: "snd_seq_timer_interrupt", scope: !2, file: !2, line: 120, type: !4584, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5546)
!5546 = !{!5547, !5548, !5549, !5550, !5551, !5552, !5553, !5557}
!5547 = !DILocalVariable(name: "timeri", arg: 1, scope: !5545, file: !2, line: 120, type: !4026)
!5548 = !DILocalVariable(name: "resolution", arg: 2, scope: !5545, file: !2, line: 121, type: !192)
!5549 = !DILocalVariable(name: "ticks", arg: 3, scope: !5545, file: !2, line: 122, type: !192)
!5550 = !DILocalVariable(name: "flags", scope: !5545, file: !2, line: 124, type: !192)
!5551 = !DILocalVariable(name: "q", scope: !5545, file: !2, line: 125, type: !5220)
!5552 = !DILocalVariable(name: "tmr", scope: !5545, file: !2, line: 126, type: !3992)
!5553 = !DILocalVariable(name: "__dummy", scope: !5554, file: !2, line: 133, type: !192)
!5554 = distinct !DILexicalBlock(scope: !5555, file: !2, line: 133, column: 2)
!5555 = distinct !DILexicalBlock(scope: !5556, file: !2, line: 133, column: 2)
!5556 = distinct !DILexicalBlock(scope: !5545, file: !2, line: 133, column: 2)
!5557 = !DILocalVariable(name: "__dummy2", scope: !5554, file: !2, line: 133, type: !192)
!5558 = !DILocation(line: 120, column: 64, scope: !5545)
!5559 = !DILocation(line: 121, column: 23, scope: !5545)
!5560 = !DILocation(line: 122, column: 23, scope: !5545)
!5561 = !DILocation(line: 124, column: 2, scope: !5545)
!5562 = !DILocation(line: 124, column: 16, scope: !5545)
!5563 = !DILocation(line: 125, column: 2, scope: !5545)
!5564 = !DILocation(line: 125, column: 24, scope: !5545)
!5565 = !DILocation(line: 125, column: 28, scope: !5545)
!5566 = !DILocation(line: 125, column: 36, scope: !5545)
!5567 = !DILocation(line: 126, column: 2, scope: !5545)
!5568 = !DILocation(line: 126, column: 24, scope: !5545)
!5569 = !DILocation(line: 128, column: 6, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5545, file: !2, line: 128, column: 6)
!5571 = !DILocation(line: 128, column: 8, scope: !5570)
!5572 = !DILocation(line: 128, column: 6, scope: !5545)
!5573 = !DILocation(line: 129, column: 3, scope: !5570)
!5574 = !DILocation(line: 130, column: 8, scope: !5545)
!5575 = !DILocation(line: 130, column: 11, scope: !5545)
!5576 = !DILocation(line: 130, column: 6, scope: !5545)
!5577 = !DILocation(line: 131, column: 6, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5545, file: !2, line: 131, column: 6)
!5579 = !DILocation(line: 131, column: 10, scope: !5578)
!5580 = !DILocation(line: 131, column: 6, scope: !5545)
!5581 = !DILocation(line: 132, column: 3, scope: !5578)
!5582 = !DILocation(line: 133, column: 2, scope: !5545)
!5583 = !DILocation(line: 133, column: 2, scope: !5556)
!5584 = !DILocation(line: 133, column: 2, scope: !5554)
!5585 = !DILocation(line: 133, column: 2, scope: !5555)
!5586 = !DILocation(line: 134, column: 7, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5545, file: !2, line: 134, column: 6)
!5588 = !DILocation(line: 134, column: 12, scope: !5587)
!5589 = !DILocation(line: 134, column: 6, scope: !5545)
!5590 = !DILocation(line: 135, column: 27, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5587, file: !2, line: 134, column: 21)
!5592 = !DILocation(line: 135, column: 32, scope: !5591)
!5593 = !DILocation(line: 135, column: 38, scope: !5591)
!5594 = !DILocation(line: 135, column: 3, scope: !5591)
!5595 = !DILocation(line: 136, column: 3, scope: !5591)
!5596 = !DILocation(line: 139, column: 16, scope: !5545)
!5597 = !DILocation(line: 139, column: 13, scope: !5545)
!5598 = !DILocation(line: 140, column: 6, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5545, file: !2, line: 140, column: 6)
!5600 = !DILocation(line: 140, column: 11, scope: !5599)
!5601 = !DILocation(line: 140, column: 19, scope: !5599)
!5602 = !DILocation(line: 140, column: 24, scope: !5599)
!5603 = !DILocation(line: 140, column: 16, scope: !5599)
!5604 = !DILocation(line: 140, column: 6, scope: !5545)
!5605 = !DILocation(line: 142, column: 17, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5599, file: !2, line: 140, column: 35)
!5607 = !DILocation(line: 142, column: 28, scope: !5606)
!5608 = !DILocation(line: 142, column: 37, scope: !5606)
!5609 = !DILocation(line: 142, column: 42, scope: !5606)
!5610 = !DILocation(line: 142, column: 35, scope: !5606)
!5611 = !DILocation(line: 143, column: 7, scope: !5606)
!5612 = !DILocation(line: 143, column: 18, scope: !5606)
!5613 = !DILocation(line: 143, column: 30, scope: !5606)
!5614 = !DILocation(line: 143, column: 35, scope: !5606)
!5615 = !DILocation(line: 143, column: 28, scope: !5606)
!5616 = !DILocation(line: 143, column: 41, scope: !5606)
!5617 = !DILocation(line: 142, column: 47, scope: !5606)
!5618 = !DILocation(line: 142, column: 14, scope: !5606)
!5619 = !DILocation(line: 144, column: 2, scope: !5606)
!5620 = !DILocation(line: 147, column: 25, scope: !5545)
!5621 = !DILocation(line: 147, column: 30, scope: !5545)
!5622 = !DILocation(line: 147, column: 40, scope: !5545)
!5623 = !DILocation(line: 147, column: 2, scope: !5545)
!5624 = !DILocation(line: 150, column: 29, scope: !5545)
!5625 = !DILocation(line: 150, column: 34, scope: !5545)
!5626 = !DILocation(line: 150, column: 40, scope: !5545)
!5627 = !DILocation(line: 150, column: 2, scope: !5545)
!5628 = !DILocation(line: 153, column: 18, scope: !5545)
!5629 = !DILocation(line: 153, column: 23, scope: !5545)
!5630 = !DILocation(line: 153, column: 2, scope: !5545)
!5631 = !DILocation(line: 155, column: 26, scope: !5545)
!5632 = !DILocation(line: 155, column: 31, scope: !5545)
!5633 = !DILocation(line: 155, column: 37, scope: !5545)
!5634 = !DILocation(line: 155, column: 2, scope: !5545)
!5635 = !DILocation(line: 158, column: 22, scope: !5545)
!5636 = !DILocation(line: 158, column: 2, scope: !5545)
!5637 = !DILocation(line: 159, column: 1, scope: !5545)
!5638 = !DISubprogram(name: "snd_timer_open", scope: !4028, file: !4028, line: 123, type: !5639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!115, !4026, !5641, !37}
!5641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!5642 = !DISubprogram(name: "_printk", scope: !5643, file: !5643, line: 153, type: !5644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5643 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5644 = !DISubroutineType(types: !5645)
!5645 = !{!115, !528, null}
!5646 = !DISubprogram(name: "snd_timer_instance_free", scope: !4028, file: !4028, line: 122, type: !4580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5647 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4646, file: !4646, line: 374, type: !5648, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5650)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{null, !4650}
!5650 = !{!5651}
!5651 = !DILocalVariable(name: "lock", arg: 1, scope: !5647, file: !4646, line: 374, type: !4650)
!5652 = !DILocation(line: 374, column: 55, scope: !5647)
!5653 = !DILocation(line: 376, column: 2, scope: !5647)
!5654 = !DILocation(line: 377, column: 1, scope: !5647)
!5655 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4646, file: !4646, line: 399, type: !5648, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5656)
!5656 = !{!5657}
!5657 = !DILocalVariable(name: "lock", arg: 1, scope: !5655, file: !4646, line: 399, type: !4650)
!5658 = !DILocation(line: 399, column: 57, scope: !5655)
!5659 = !DILocation(line: 401, column: 2, scope: !5655)
!5660 = !DILocation(line: 402, column: 1, scope: !5655)
!5661 = !DISubprogram(name: "snd_timer_close", scope: !4028, file: !4028, line: 124, type: !4580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5662 = distinct !DISubprogram(name: "snd_seq_timer_close", scope: !2, file: !2, line: 313, type: !5218, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5663)
!5663 = !{!5664, !5665, !5666, !5667}
!5664 = !DILocalVariable(name: "q", arg: 1, scope: !5662, file: !2, line: 313, type: !5220)
!5665 = !DILocalVariable(name: "tmr", scope: !5662, file: !2, line: 315, type: !3992)
!5666 = !DILocalVariable(name: "t", scope: !5662, file: !2, line: 316, type: !4026)
!5667 = !DILocalVariable(name: "__ret_warn_on", scope: !5668, file: !2, line: 319, type: !115)
!5668 = distinct !DILexicalBlock(scope: !5669, file: !2, line: 319, column: 6)
!5669 = distinct !DILexicalBlock(scope: !5662, file: !2, line: 319, column: 6)
!5670 = !DILocation(line: 313, column: 47, scope: !5662)
!5671 = !DILocation(line: 315, column: 2, scope: !5662)
!5672 = !DILocation(line: 315, column: 24, scope: !5662)
!5673 = !DILocation(line: 316, column: 2, scope: !5662)
!5674 = !DILocation(line: 316, column: 29, scope: !5662)
!5675 = !DILocation(line: 318, column: 8, scope: !5662)
!5676 = !DILocation(line: 318, column: 11, scope: !5662)
!5677 = !DILocation(line: 318, column: 6, scope: !5662)
!5678 = !DILocation(line: 319, column: 6, scope: !5668)
!5679 = !DILocation(line: 319, column: 6, scope: !5669)
!5680 = !DILocation(line: 319, column: 6, scope: !5662)
!5681 = !DILocation(line: 320, column: 3, scope: !5669)
!5682 = !DILocation(line: 321, column: 17, scope: !5662)
!5683 = !DILocation(line: 321, column: 22, scope: !5662)
!5684 = !DILocation(line: 321, column: 2, scope: !5662)
!5685 = !DILocation(line: 322, column: 6, scope: !5662)
!5686 = !DILocation(line: 322, column: 11, scope: !5662)
!5687 = !DILocation(line: 322, column: 4, scope: !5662)
!5688 = !DILocation(line: 323, column: 2, scope: !5662)
!5689 = !DILocation(line: 323, column: 7, scope: !5662)
!5690 = !DILocation(line: 323, column: 14, scope: !5662)
!5691 = !DILocation(line: 324, column: 19, scope: !5662)
!5692 = !DILocation(line: 324, column: 24, scope: !5662)
!5693 = !DILocation(line: 324, column: 2, scope: !5662)
!5694 = !DILocation(line: 325, column: 6, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5662, file: !2, line: 325, column: 6)
!5696 = !DILocation(line: 325, column: 6, scope: !5662)
!5697 = !DILocation(line: 326, column: 19, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5695, file: !2, line: 325, column: 9)
!5699 = !DILocation(line: 326, column: 3, scope: !5698)
!5700 = !DILocation(line: 327, column: 27, scope: !5698)
!5701 = !DILocation(line: 327, column: 3, scope: !5698)
!5702 = !DILocation(line: 328, column: 2, scope: !5698)
!5703 = !DILocation(line: 329, column: 2, scope: !5662)
!5704 = !DILocation(line: 330, column: 1, scope: !5662)
!5705 = distinct !DISubprogram(name: "seq_timer_stop", scope: !2, file: !2, line: 332, type: !4785, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5706)
!5706 = !{!5707}
!5707 = !DILocalVariable(name: "tmr", arg: 1, scope: !5705, file: !2, line: 332, type: !3992)
!5708 = !DILocation(line: 332, column: 49, scope: !5705)
!5709 = !DILocation(line: 334, column: 8, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5705, file: !2, line: 334, column: 6)
!5711 = !DILocation(line: 334, column: 13, scope: !5710)
!5712 = !DILocation(line: 334, column: 6, scope: !5705)
!5713 = !DILocation(line: 335, column: 3, scope: !5710)
!5714 = !DILocation(line: 336, column: 7, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5705, file: !2, line: 336, column: 6)
!5716 = !DILocation(line: 336, column: 12, scope: !5715)
!5717 = !DILocation(line: 336, column: 6, scope: !5705)
!5718 = !DILocation(line: 337, column: 3, scope: !5715)
!5719 = !DILocation(line: 338, column: 2, scope: !5705)
!5720 = !DILocation(line: 338, column: 15, scope: !5705)
!5721 = !DILocation(line: 339, column: 18, scope: !5705)
!5722 = !DILocation(line: 339, column: 23, scope: !5705)
!5723 = !DILocation(line: 339, column: 2, scope: !5705)
!5724 = !DILocation(line: 340, column: 2, scope: !5705)
!5725 = !DILocation(line: 341, column: 1, scope: !5705)
!5726 = distinct !DISubprogram(name: "snd_seq_timer_start", scope: !2, file: !2, line: 399, type: !4785, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5727)
!5727 = !{!5728, !5729, !5730, !5731, !5735}
!5728 = !DILocalVariable(name: "tmr", arg: 1, scope: !5726, file: !2, line: 399, type: !3992)
!5729 = !DILocalVariable(name: "flags", scope: !5726, file: !2, line: 401, type: !192)
!5730 = !DILocalVariable(name: "err", scope: !5726, file: !2, line: 402, type: !115)
!5731 = !DILocalVariable(name: "__dummy", scope: !5732, file: !2, line: 404, type: !192)
!5732 = distinct !DILexicalBlock(scope: !5733, file: !2, line: 404, column: 2)
!5733 = distinct !DILexicalBlock(scope: !5734, file: !2, line: 404, column: 2)
!5734 = distinct !DILexicalBlock(scope: !5726, file: !2, line: 404, column: 2)
!5735 = !DILocalVariable(name: "__dummy2", scope: !5732, file: !2, line: 404, type: !192)
!5736 = !DILocation(line: 399, column: 47, scope: !5726)
!5737 = !DILocation(line: 401, column: 2, scope: !5726)
!5738 = !DILocation(line: 401, column: 16, scope: !5726)
!5739 = !DILocation(line: 402, column: 2, scope: !5726)
!5740 = !DILocation(line: 402, column: 6, scope: !5726)
!5741 = !DILocation(line: 404, column: 2, scope: !5726)
!5742 = !DILocation(line: 404, column: 2, scope: !5734)
!5743 = !DILocation(line: 404, column: 2, scope: !5732)
!5744 = !DILocation(line: 404, column: 2, scope: !5733)
!5745 = !DILocation(line: 405, column: 24, scope: !5726)
!5746 = !DILocation(line: 405, column: 8, scope: !5726)
!5747 = !DILocation(line: 405, column: 6, scope: !5726)
!5748 = !DILocation(line: 406, column: 26, scope: !5726)
!5749 = !DILocation(line: 406, column: 31, scope: !5726)
!5750 = !DILocation(line: 406, column: 37, scope: !5726)
!5751 = !DILocation(line: 406, column: 2, scope: !5726)
!5752 = !DILocation(line: 407, column: 9, scope: !5726)
!5753 = !DILocation(line: 408, column: 1, scope: !5726)
!5754 = !DILocation(line: 407, column: 2, scope: !5726)
!5755 = distinct !DISubprogram(name: "seq_timer_start", scope: !2, file: !2, line: 384, type: !4785, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5756)
!5756 = !{!5757}
!5757 = !DILocalVariable(name: "tmr", arg: 1, scope: !5755, file: !2, line: 384, type: !3992)
!5758 = !DILocation(line: 384, column: 50, scope: !5755)
!5759 = !DILocation(line: 386, column: 8, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 386, column: 6)
!5761 = !DILocation(line: 386, column: 13, scope: !5760)
!5762 = !DILocation(line: 386, column: 6, scope: !5755)
!5763 = !DILocation(line: 387, column: 3, scope: !5760)
!5764 = !DILocation(line: 388, column: 6, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 388, column: 6)
!5766 = !DILocation(line: 388, column: 11, scope: !5765)
!5767 = !DILocation(line: 388, column: 6, scope: !5755)
!5768 = !DILocation(line: 389, column: 18, scope: !5765)
!5769 = !DILocation(line: 389, column: 3, scope: !5765)
!5770 = !DILocation(line: 390, column: 18, scope: !5755)
!5771 = !DILocation(line: 390, column: 2, scope: !5755)
!5772 = !DILocation(line: 391, column: 23, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5755, file: !2, line: 391, column: 6)
!5774 = !DILocation(line: 391, column: 6, scope: !5773)
!5775 = !DILocation(line: 391, column: 28, scope: !5773)
!5776 = !DILocation(line: 391, column: 6, scope: !5755)
!5777 = !DILocation(line: 392, column: 3, scope: !5773)
!5778 = !DILocation(line: 393, column: 18, scope: !5755)
!5779 = !DILocation(line: 393, column: 23, scope: !5755)
!5780 = !DILocation(line: 393, column: 31, scope: !5755)
!5781 = !DILocation(line: 393, column: 36, scope: !5755)
!5782 = !DILocation(line: 393, column: 2, scope: !5755)
!5783 = !DILocation(line: 394, column: 2, scope: !5755)
!5784 = !DILocation(line: 394, column: 15, scope: !5755)
!5785 = !DILocation(line: 395, column: 18, scope: !5755)
!5786 = !DILocation(line: 395, column: 23, scope: !5755)
!5787 = !DILocation(line: 395, column: 2, scope: !5755)
!5788 = !DILocation(line: 396, column: 2, scope: !5755)
!5789 = !DILocation(line: 397, column: 1, scope: !5755)
!5790 = distinct !DISubprogram(name: "snd_seq_timer_continue", scope: !2, file: !2, line: 427, type: !4785, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5791)
!5791 = !{!5792, !5793, !5794, !5795, !5799}
!5792 = !DILocalVariable(name: "tmr", arg: 1, scope: !5790, file: !2, line: 427, type: !3992)
!5793 = !DILocalVariable(name: "flags", scope: !5790, file: !2, line: 429, type: !192)
!5794 = !DILocalVariable(name: "err", scope: !5790, file: !2, line: 430, type: !115)
!5795 = !DILocalVariable(name: "__dummy", scope: !5796, file: !2, line: 432, type: !192)
!5796 = distinct !DILexicalBlock(scope: !5797, file: !2, line: 432, column: 2)
!5797 = distinct !DILexicalBlock(scope: !5798, file: !2, line: 432, column: 2)
!5798 = distinct !DILexicalBlock(scope: !5790, file: !2, line: 432, column: 2)
!5799 = !DILocalVariable(name: "__dummy2", scope: !5796, file: !2, line: 432, type: !192)
!5800 = !DILocation(line: 427, column: 50, scope: !5790)
!5801 = !DILocation(line: 429, column: 2, scope: !5790)
!5802 = !DILocation(line: 429, column: 16, scope: !5790)
!5803 = !DILocation(line: 430, column: 2, scope: !5790)
!5804 = !DILocation(line: 430, column: 6, scope: !5790)
!5805 = !DILocation(line: 432, column: 2, scope: !5790)
!5806 = !DILocation(line: 432, column: 2, scope: !5798)
!5807 = !DILocation(line: 432, column: 2, scope: !5796)
!5808 = !DILocation(line: 432, column: 2, scope: !5797)
!5809 = !DILocation(line: 433, column: 27, scope: !5790)
!5810 = !DILocation(line: 433, column: 8, scope: !5790)
!5811 = !DILocation(line: 433, column: 6, scope: !5790)
!5812 = !DILocation(line: 434, column: 26, scope: !5790)
!5813 = !DILocation(line: 434, column: 31, scope: !5790)
!5814 = !DILocation(line: 434, column: 37, scope: !5790)
!5815 = !DILocation(line: 434, column: 2, scope: !5790)
!5816 = !DILocation(line: 435, column: 9, scope: !5790)
!5817 = !DILocation(line: 436, column: 1, scope: !5790)
!5818 = !DILocation(line: 435, column: 2, scope: !5790)
!5819 = distinct !DISubprogram(name: "seq_timer_continue", scope: !2, file: !2, line: 410, type: !4785, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5820)
!5820 = !{!5821}
!5821 = !DILocalVariable(name: "tmr", arg: 1, scope: !5819, file: !2, line: 410, type: !3992)
!5822 = !DILocation(line: 410, column: 53, scope: !5819)
!5823 = !DILocation(line: 412, column: 8, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5819, file: !2, line: 412, column: 6)
!5825 = !DILocation(line: 412, column: 13, scope: !5824)
!5826 = !DILocation(line: 412, column: 6, scope: !5819)
!5827 = !DILocation(line: 413, column: 3, scope: !5824)
!5828 = !DILocation(line: 414, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5819, file: !2, line: 414, column: 6)
!5830 = !DILocation(line: 414, column: 11, scope: !5829)
!5831 = !DILocation(line: 414, column: 6, scope: !5819)
!5832 = !DILocation(line: 415, column: 3, scope: !5829)
!5833 = !DILocation(line: 416, column: 8, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5819, file: !2, line: 416, column: 6)
!5835 = !DILocation(line: 416, column: 13, scope: !5834)
!5836 = !DILocation(line: 416, column: 6, scope: !5819)
!5837 = !DILocation(line: 417, column: 19, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5834, file: !2, line: 416, column: 26)
!5839 = !DILocation(line: 417, column: 3, scope: !5838)
!5840 = !DILocation(line: 418, column: 24, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 418, column: 7)
!5842 = !DILocation(line: 418, column: 7, scope: !5841)
!5843 = !DILocation(line: 418, column: 29, scope: !5841)
!5844 = !DILocation(line: 418, column: 7, scope: !5838)
!5845 = !DILocation(line: 419, column: 4, scope: !5841)
!5846 = !DILocation(line: 420, column: 2, scope: !5838)
!5847 = !DILocation(line: 421, column: 18, scope: !5819)
!5848 = !DILocation(line: 421, column: 23, scope: !5819)
!5849 = !DILocation(line: 421, column: 31, scope: !5819)
!5850 = !DILocation(line: 421, column: 36, scope: !5819)
!5851 = !DILocation(line: 421, column: 2, scope: !5819)
!5852 = !DILocation(line: 422, column: 2, scope: !5819)
!5853 = !DILocation(line: 422, column: 15, scope: !5819)
!5854 = !DILocation(line: 423, column: 18, scope: !5819)
!5855 = !DILocation(line: 423, column: 23, scope: !5819)
!5856 = !DILocation(line: 423, column: 2, scope: !5819)
!5857 = !DILocation(line: 424, column: 2, scope: !5819)
!5858 = !DILocation(line: 425, column: 1, scope: !5819)
!5859 = distinct !DISubprogram(name: "snd_seq_timer_get_cur_time", scope: !2, file: !2, line: 439, type: !5860, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5862)
!5860 = !DISubroutineType(types: !5861)
!5861 = !{!4001, !3992, !525}
!5862 = !{!5863, !5864, !5865, !5866, !5867, !5871, !5872}
!5863 = !DILocalVariable(name: "tmr", arg: 1, scope: !5859, file: !2, line: 439, type: !3992)
!5864 = !DILocalVariable(name: "adjust_ktime", arg: 2, scope: !5859, file: !2, line: 440, type: !525)
!5865 = !DILocalVariable(name: "cur_time", scope: !5859, file: !2, line: 442, type: !4001)
!5866 = !DILocalVariable(name: "flags", scope: !5859, file: !2, line: 443, type: !192)
!5867 = !DILocalVariable(name: "__dummy", scope: !5868, file: !2, line: 445, type: !192)
!5868 = distinct !DILexicalBlock(scope: !5869, file: !2, line: 445, column: 2)
!5869 = distinct !DILexicalBlock(scope: !5870, file: !2, line: 445, column: 2)
!5870 = distinct !DILexicalBlock(scope: !5859, file: !2, line: 445, column: 2)
!5871 = !DILocalVariable(name: "__dummy2", scope: !5868, file: !2, line: 445, type: !192)
!5872 = !DILocalVariable(name: "tm", scope: !5873, file: !2, line: 448, type: !799)
!5873 = distinct !DILexicalBlock(scope: !5874, file: !2, line: 447, column: 36)
!5874 = distinct !DILexicalBlock(scope: !5859, file: !2, line: 447, column: 6)
!5875 = !DILocation(line: 439, column: 70, scope: !5859)
!5876 = !DILocation(line: 440, column: 18, scope: !5859)
!5877 = !DILocation(line: 442, column: 22, scope: !5859)
!5878 = !DILocation(line: 443, column: 2, scope: !5859)
!5879 = !DILocation(line: 443, column: 16, scope: !5859)
!5880 = !DILocation(line: 445, column: 2, scope: !5859)
!5881 = !DILocation(line: 445, column: 2, scope: !5870)
!5882 = !DILocation(line: 445, column: 2, scope: !5868)
!5883 = !DILocation(line: 445, column: 2, scope: !5869)
!5884 = !DILocation(line: 446, column: 13, scope: !5859)
!5885 = !DILocation(line: 446, column: 18, scope: !5859)
!5886 = !DILocation(line: 447, column: 6, scope: !5874)
!5887 = !{i8 0, i8 2}
!5888 = !DILocation(line: 447, column: 19, scope: !5874)
!5889 = !DILocation(line: 447, column: 22, scope: !5874)
!5890 = !DILocation(line: 447, column: 27, scope: !5874)
!5891 = !DILocation(line: 447, column: 6, scope: !5859)
!5892 = !DILocation(line: 448, column: 3, scope: !5873)
!5893 = !DILocation(line: 448, column: 21, scope: !5873)
!5894 = !DILocation(line: 450, column: 3, scope: !5873)
!5895 = !DILocation(line: 451, column: 8, scope: !5873)
!5896 = !DILocation(line: 451, column: 27, scope: !5873)
!5897 = !DILocation(line: 451, column: 32, scope: !5873)
!5898 = !DILocation(line: 452, column: 26, scope: !5873)
!5899 = !DILocation(line: 452, column: 12, scope: !5873)
!5900 = !DILocation(line: 452, column: 20, scope: !5873)
!5901 = !DILocation(line: 453, column: 25, scope: !5873)
!5902 = !DILocation(line: 453, column: 12, scope: !5873)
!5903 = !DILocation(line: 453, column: 19, scope: !5873)
!5904 = !DILocation(line: 454, column: 3, scope: !5873)
!5905 = !DILocation(line: 455, column: 2, scope: !5874)
!5906 = !DILocation(line: 455, column: 2, scope: !5873)
!5907 = !DILocation(line: 456, column: 26, scope: !5859)
!5908 = !DILocation(line: 456, column: 31, scope: !5859)
!5909 = !DILocation(line: 456, column: 37, scope: !5859)
!5910 = !DILocation(line: 456, column: 2, scope: !5859)
!5911 = !DILocation(line: 458, column: 1, scope: !5859)
!5912 = !DISubprogram(name: "ktime_get_ts64", scope: !5913, file: !5913, line: 42, type: !5914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5913 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!5914 = !DISubroutineType(types: !5915)
!5915 = !{null, !4590}
!5916 = distinct !DISubprogram(name: "timespec64_sub", scope: !481, file: !481, line: 80, type: !5917, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5919)
!5917 = !DISubroutineType(types: !5918)
!5918 = !{!799, !799, !799}
!5919 = !{!5920, !5921, !5922}
!5920 = !DILocalVariable(name: "lhs", arg: 1, scope: !5916, file: !481, line: 80, type: !799)
!5921 = !DILocalVariable(name: "rhs", arg: 2, scope: !5916, file: !481, line: 81, type: !799)
!5922 = !DILocalVariable(name: "ts_delta", scope: !5916, file: !481, line: 83, type: !799)
!5923 = !DILocation(line: 80, column: 66, scope: !5916)
!5924 = !DILocation(line: 81, column: 25, scope: !5916)
!5925 = !DILocation(line: 83, column: 20, scope: !5916)
!5926 = !DILocation(line: 84, column: 43, scope: !5916)
!5927 = !DILocation(line: 84, column: 56, scope: !5916)
!5928 = !DILocation(line: 84, column: 50, scope: !5916)
!5929 = !DILocation(line: 85, column: 9, scope: !5916)
!5930 = !DILocation(line: 85, column: 23, scope: !5916)
!5931 = !DILocation(line: 85, column: 17, scope: !5916)
!5932 = !DILocation(line: 84, column: 2, scope: !5916)
!5933 = !DILocation(line: 86, column: 2, scope: !5916)
!5934 = distinct !DISubprogram(name: "snd_seq_timer_get_cur_tick", scope: !2, file: !2, line: 462, type: !5935, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5937)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{!4012, !3992}
!5937 = !{!5938, !5939, !5940, !5941, !5945}
!5938 = !DILocalVariable(name: "tmr", arg: 1, scope: !5934, file: !2, line: 462, type: !3992)
!5939 = !DILocalVariable(name: "cur_tick", scope: !5934, file: !2, line: 464, type: !4012)
!5940 = !DILocalVariable(name: "flags", scope: !5934, file: !2, line: 465, type: !192)
!5941 = !DILocalVariable(name: "__dummy", scope: !5942, file: !2, line: 467, type: !192)
!5942 = distinct !DILexicalBlock(scope: !5943, file: !2, line: 467, column: 2)
!5943 = distinct !DILexicalBlock(scope: !5944, file: !2, line: 467, column: 2)
!5944 = distinct !DILexicalBlock(scope: !5934, file: !2, line: 467, column: 2)
!5945 = !DILocalVariable(name: "__dummy2", scope: !5942, file: !2, line: 467, type: !192)
!5946 = !DILocation(line: 462, column: 70, scope: !5934)
!5947 = !DILocation(line: 464, column: 2, scope: !5934)
!5948 = !DILocation(line: 464, column: 22, scope: !5934)
!5949 = !DILocation(line: 465, column: 2, scope: !5934)
!5950 = !DILocation(line: 465, column: 16, scope: !5934)
!5951 = !DILocation(line: 467, column: 2, scope: !5934)
!5952 = !DILocation(line: 467, column: 2, scope: !5944)
!5953 = !DILocation(line: 467, column: 2, scope: !5942)
!5954 = !DILocation(line: 467, column: 2, scope: !5943)
!5955 = !DILocation(line: 468, column: 13, scope: !5934)
!5956 = !DILocation(line: 468, column: 18, scope: !5934)
!5957 = !DILocation(line: 468, column: 23, scope: !5934)
!5958 = !DILocation(line: 468, column: 11, scope: !5934)
!5959 = !DILocation(line: 469, column: 26, scope: !5934)
!5960 = !DILocation(line: 469, column: 31, scope: !5934)
!5961 = !DILocation(line: 469, column: 37, scope: !5934)
!5962 = !DILocation(line: 469, column: 2, scope: !5934)
!5963 = !DILocation(line: 470, column: 9, scope: !5934)
!5964 = !DILocation(line: 471, column: 1, scope: !5934)
!5965 = !DILocation(line: 470, column: 2, scope: !5934)
!5966 = distinct !DISubprogram(name: "snd_seq_info_timer_read", scope: !2, file: !2, line: 476, type: !4438, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !5967)
!5967 = !{!5968, !5969, !5970, !5971, !5972, !5973, !5974, !5975}
!5968 = !DILocalVariable(name: "entry", arg: 1, scope: !5966, file: !2, line: 476, type: !4422)
!5969 = !DILocalVariable(name: "buffer", arg: 2, scope: !5966, file: !2, line: 477, type: !4440)
!5970 = !DILocalVariable(name: "idx", scope: !5966, file: !2, line: 479, type: !115)
!5971 = !DILocalVariable(name: "q", scope: !5966, file: !2, line: 480, type: !5220)
!5972 = !DILocalVariable(name: "tmr", scope: !5966, file: !2, line: 481, type: !3992)
!5973 = !DILocalVariable(name: "ti", scope: !5966, file: !2, line: 482, type: !4026)
!5974 = !DILocalVariable(name: "resolution", scope: !5966, file: !2, line: 483, type: !192)
!5975 = !DILabel(scope: !5976, name: "unlock", file: !2, line: 500)
!5976 = distinct !DILexicalBlock(scope: !5977, file: !2, line: 485, column: 51)
!5977 = distinct !DILexicalBlock(scope: !5978, file: !2, line: 485, column: 2)
!5978 = distinct !DILexicalBlock(scope: !5966, file: !2, line: 485, column: 2)
!5979 = !DILocation(line: 476, column: 53, scope: !5966)
!5980 = !DILocation(line: 477, column: 33, scope: !5966)
!5981 = !DILocation(line: 479, column: 2, scope: !5966)
!5982 = !DILocation(line: 479, column: 6, scope: !5966)
!5983 = !DILocation(line: 480, column: 2, scope: !5966)
!5984 = !DILocation(line: 480, column: 24, scope: !5966)
!5985 = !DILocation(line: 481, column: 2, scope: !5966)
!5986 = !DILocation(line: 481, column: 24, scope: !5966)
!5987 = !DILocation(line: 482, column: 2, scope: !5966)
!5988 = !DILocation(line: 482, column: 29, scope: !5966)
!5989 = !DILocation(line: 483, column: 2, scope: !5966)
!5990 = !DILocation(line: 483, column: 16, scope: !5966)
!5991 = !DILocation(line: 485, column: 11, scope: !5978)
!5992 = !DILocation(line: 485, column: 7, scope: !5978)
!5993 = !DILocation(line: 485, column: 16, scope: !5977)
!5994 = !DILocation(line: 485, column: 20, scope: !5977)
!5995 = !DILocation(line: 485, column: 2, scope: !5978)
!5996 = !DILocation(line: 486, column: 16, scope: !5976)
!5997 = !DILocation(line: 486, column: 7, scope: !5976)
!5998 = !DILocation(line: 486, column: 5, scope: !5976)
!5999 = !DILocation(line: 487, column: 7, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5976, file: !2, line: 487, column: 7)
!6001 = !DILocation(line: 487, column: 9, scope: !6000)
!6002 = !DILocation(line: 487, column: 7, scope: !5976)
!6003 = !DILocation(line: 488, column: 4, scope: !6000)
!6004 = !DILocation(line: 489, column: 15, scope: !5976)
!6005 = !DILocation(line: 489, column: 18, scope: !5976)
!6006 = !DILocation(line: 489, column: 3, scope: !5976)
!6007 = !DILocation(line: 490, column: 9, scope: !5976)
!6008 = !DILocation(line: 490, column: 12, scope: !5976)
!6009 = !DILocation(line: 490, column: 7, scope: !5976)
!6010 = !DILocation(line: 491, column: 8, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !5976, file: !2, line: 491, column: 7)
!6012 = !DILocation(line: 491, column: 7, scope: !5976)
!6013 = !DILocation(line: 492, column: 4, scope: !6011)
!6014 = !DILocation(line: 493, column: 8, scope: !5976)
!6015 = !DILocation(line: 493, column: 13, scope: !5976)
!6016 = !DILocation(line: 493, column: 6, scope: !5976)
!6017 = !DILocation(line: 494, column: 8, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !5976, file: !2, line: 494, column: 7)
!6019 = !DILocation(line: 494, column: 7, scope: !5976)
!6020 = !DILocation(line: 495, column: 4, scope: !6018)
!6021 = !DILocation(line: 496, column: 3, scope: !5976)
!6022 = !DILocation(line: 497, column: 37, scope: !5976)
!6023 = !DILocation(line: 497, column: 16, scope: !5976)
!6024 = !DILocation(line: 497, column: 43, scope: !5976)
!6025 = !DILocation(line: 497, column: 48, scope: !5976)
!6026 = !DILocation(line: 497, column: 41, scope: !5976)
!6027 = !DILocation(line: 497, column: 14, scope: !5976)
!6028 = !DILocation(line: 498, column: 3, scope: !5976)
!6029 = !DILocation(line: 499, column: 3, scope: !5976)
!6030 = !DILocation(line: 500, column: 1, scope: !5976)
!6031 = !DILocation(line: 501, column: 17, scope: !5976)
!6032 = !DILocation(line: 501, column: 20, scope: !5976)
!6033 = !DILocation(line: 501, column: 3, scope: !5976)
!6034 = !DILocation(line: 502, column: 3, scope: !5976)
!6035 = !DILocation(line: 503, column: 3, scope: !5976)
!6036 = !DILocation(line: 485, column: 47, scope: !5977)
!6037 = !DILocation(line: 485, column: 2, scope: !5977)
!6038 = distinct !{!6038, !5995, !6039, !5165, !5166}
!6039 = !DILocation(line: 503, column: 3, scope: !5978)
!6040 = !DILocation(line: 504, column: 1, scope: !5966)
!6041 = !DISubprogram(name: "queueptr", scope: !5222, file: !5222, line: 73, type: !6042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6042 = !DISubroutineType(types: !6043)
!6043 = !{!5220, !115}
!6044 = !DISubprogram(name: "mutex_lock", scope: !203, file: !203, line: 227, type: !6045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6045 = !DISubroutineType(types: !6046)
!6046 = !{null, !6047}
!6047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!6048 = !DISubprogram(name: "seq_printf", scope: !183, file: !183, line: 119, type: !6049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6049 = !DISubroutineType(types: !6050)
!6050 = !{null, !181, !528, null}
!6051 = !DISubprogram(name: "snd_timer_resolution", scope: !4028, file: !4028, line: 125, type: !6052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{!192, !4026}
!6054 = !DISubprogram(name: "mutex_unlock", scope: !203, file: !203, line: 246, type: !6045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6055 = distinct !DISubprogram(name: "atomic_dec", scope: !6056, file: !6056, line: 590, type: !6057, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6060)
!6056 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6057 = !DISubroutineType(types: !6058)
!6058 = !{null, !6059}
!6059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!6060 = !{!6061}
!6061 = !DILocalVariable(name: "v", arg: 1, scope: !6055, file: !6056, line: 590, type: !6059)
!6062 = !DILocation(line: 590, column: 22, scope: !6055)
!6063 = !DILocation(line: 592, column: 31, scope: !6055)
!6064 = !DILocation(line: 592, column: 2, scope: !6055)
!6065 = !DILocation(line: 593, column: 17, scope: !6055)
!6066 = !DILocation(line: 593, column: 2, scope: !6055)
!6067 = !DILocation(line: 594, column: 1, scope: !6055)
!6068 = distinct !DISubprogram(name: "kmalloc", scope: !29, file: !29, line: 591, type: !4633, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6069)
!6069 = !{!6070, !6071, !6072}
!6070 = !DILocalVariable(name: "size", arg: 1, scope: !6068, file: !29, line: 591, type: !188)
!6071 = !DILocalVariable(name: "flags", arg: 2, scope: !6068, file: !29, line: 591, type: !178)
!6072 = !DILocalVariable(name: "index", scope: !6073, file: !29, line: 594, type: !37)
!6073 = distinct !DILexicalBlock(scope: !6074, file: !29, line: 593, column: 42)
!6074 = distinct !DILexicalBlock(scope: !6068, file: !29, line: 593, column: 6)
!6075 = !DILocation(line: 591, column: 61, scope: !6068)
!6076 = !DILocation(line: 591, column: 73, scope: !6068)
!6077 = !DILocation(line: 593, column: 27, scope: !6074)
!6078 = !DILocation(line: 593, column: 6, scope: !6074)
!6079 = !DILocation(line: 593, column: 33, scope: !6074)
!6080 = !DILocation(line: 593, column: 36, scope: !6074)
!6081 = !DILocation(line: 593, column: 6, scope: !6068)
!6082 = !DILocation(line: 594, column: 3, scope: !6073)
!6083 = !DILocation(line: 594, column: 16, scope: !6073)
!6084 = !DILocation(line: 596, column: 7, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6073, file: !29, line: 596, column: 7)
!6086 = !DILocation(line: 596, column: 12, scope: !6085)
!6087 = !DILocation(line: 596, column: 7, scope: !6073)
!6088 = !DILocation(line: 597, column: 25, scope: !6085)
!6089 = !DILocation(line: 597, column: 31, scope: !6085)
!6090 = !DILocation(line: 597, column: 11, scope: !6085)
!6091 = !DILocation(line: 597, column: 4, scope: !6085)
!6092 = !DILocation(line: 599, column: 11, scope: !6073)
!6093 = !DILocation(line: 599, column: 9, scope: !6073)
!6094 = !DILocation(line: 601, column: 33, scope: !6073)
!6095 = !DILocation(line: 601, column: 40, scope: !6073)
!6096 = !DILocation(line: 601, column: 20, scope: !6073)
!6097 = !DILocation(line: 601, column: 5, scope: !6073)
!6098 = !DILocation(line: 601, column: 51, scope: !6073)
!6099 = !DILocation(line: 602, column: 5, scope: !6073)
!6100 = !DILocation(line: 602, column: 12, scope: !6073)
!6101 = !DILocation(line: 600, column: 10, scope: !6073)
!6102 = !DILocation(line: 600, column: 3, scope: !6073)
!6103 = !DILocation(line: 603, column: 2, scope: !6074)
!6104 = !DILocation(line: 604, column: 19, scope: !6068)
!6105 = !DILocation(line: 604, column: 25, scope: !6068)
!6106 = !DILocation(line: 604, column: 9, scope: !6068)
!6107 = !DILocation(line: 604, column: 2, scope: !6068)
!6108 = !DILocation(line: 605, column: 1, scope: !6068)
!6109 = !DISubprogram(name: "kmalloc_large", scope: !29, file: !29, line: 531, type: !4633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6110 = distinct !DISubprogram(name: "__kmalloc_index", scope: !29, file: !29, line: 444, type: !6111, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6113)
!6111 = !DISubroutineType(types: !6112)
!6112 = !{!37, !188, !525}
!6113 = !{!6114, !6115}
!6114 = !DILocalVariable(name: "size", arg: 1, scope: !6110, file: !29, line: 444, type: !188)
!6115 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6110, file: !29, line: 445, type: !525)
!6116 = !DILocation(line: 444, column: 60, scope: !6110)
!6117 = !DILocation(line: 445, column: 16, scope: !6110)
!6118 = !DILocation(line: 447, column: 7, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 447, column: 6)
!6120 = !DILocation(line: 447, column: 6, scope: !6110)
!6121 = !DILocation(line: 448, column: 3, scope: !6119)
!6122 = !DILocation(line: 450, column: 6, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 450, column: 6)
!6124 = !DILocation(line: 450, column: 11, scope: !6123)
!6125 = !DILocation(line: 450, column: 6, scope: !6110)
!6126 = !DILocation(line: 451, column: 3, scope: !6123)
!6127 = !DILocation(line: 453, column: 32, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 453, column: 6)
!6129 = !DILocation(line: 453, column: 37, scope: !6128)
!6130 = !DILocation(line: 453, column: 42, scope: !6128)
!6131 = !DILocation(line: 453, column: 45, scope: !6128)
!6132 = !DILocation(line: 453, column: 50, scope: !6128)
!6133 = !DILocation(line: 453, column: 6, scope: !6110)
!6134 = !DILocation(line: 454, column: 3, scope: !6128)
!6135 = !DILocation(line: 455, column: 32, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 455, column: 6)
!6137 = !DILocation(line: 455, column: 37, scope: !6136)
!6138 = !DILocation(line: 455, column: 43, scope: !6136)
!6139 = !DILocation(line: 455, column: 46, scope: !6136)
!6140 = !DILocation(line: 455, column: 51, scope: !6136)
!6141 = !DILocation(line: 455, column: 6, scope: !6110)
!6142 = !DILocation(line: 456, column: 3, scope: !6136)
!6143 = !DILocation(line: 457, column: 6, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 457, column: 6)
!6145 = !DILocation(line: 457, column: 11, scope: !6144)
!6146 = !DILocation(line: 457, column: 6, scope: !6110)
!6147 = !DILocation(line: 457, column: 26, scope: !6144)
!6148 = !DILocation(line: 458, column: 6, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 458, column: 6)
!6150 = !DILocation(line: 458, column: 11, scope: !6149)
!6151 = !DILocation(line: 458, column: 6, scope: !6110)
!6152 = !DILocation(line: 458, column: 26, scope: !6149)
!6153 = !DILocation(line: 459, column: 6, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 459, column: 6)
!6155 = !DILocation(line: 459, column: 11, scope: !6154)
!6156 = !DILocation(line: 459, column: 6, scope: !6110)
!6157 = !DILocation(line: 459, column: 26, scope: !6154)
!6158 = !DILocation(line: 460, column: 6, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 460, column: 6)
!6160 = !DILocation(line: 460, column: 11, scope: !6159)
!6161 = !DILocation(line: 460, column: 6, scope: !6110)
!6162 = !DILocation(line: 460, column: 26, scope: !6159)
!6163 = !DILocation(line: 461, column: 6, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 461, column: 6)
!6165 = !DILocation(line: 461, column: 11, scope: !6164)
!6166 = !DILocation(line: 461, column: 6, scope: !6110)
!6167 = !DILocation(line: 461, column: 26, scope: !6164)
!6168 = !DILocation(line: 462, column: 6, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 462, column: 6)
!6170 = !DILocation(line: 462, column: 11, scope: !6169)
!6171 = !DILocation(line: 462, column: 6, scope: !6110)
!6172 = !DILocation(line: 462, column: 26, scope: !6169)
!6173 = !DILocation(line: 463, column: 6, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 463, column: 6)
!6175 = !DILocation(line: 463, column: 11, scope: !6174)
!6176 = !DILocation(line: 463, column: 6, scope: !6110)
!6177 = !DILocation(line: 463, column: 26, scope: !6174)
!6178 = !DILocation(line: 464, column: 6, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 464, column: 6)
!6180 = !DILocation(line: 464, column: 11, scope: !6179)
!6181 = !DILocation(line: 464, column: 6, scope: !6110)
!6182 = !DILocation(line: 464, column: 26, scope: !6179)
!6183 = !DILocation(line: 465, column: 6, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 465, column: 6)
!6185 = !DILocation(line: 465, column: 11, scope: !6184)
!6186 = !DILocation(line: 465, column: 6, scope: !6110)
!6187 = !DILocation(line: 465, column: 26, scope: !6184)
!6188 = !DILocation(line: 466, column: 6, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 466, column: 6)
!6190 = !DILocation(line: 466, column: 11, scope: !6189)
!6191 = !DILocation(line: 466, column: 6, scope: !6110)
!6192 = !DILocation(line: 466, column: 26, scope: !6189)
!6193 = !DILocation(line: 467, column: 6, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 467, column: 6)
!6195 = !DILocation(line: 467, column: 11, scope: !6194)
!6196 = !DILocation(line: 467, column: 6, scope: !6110)
!6197 = !DILocation(line: 467, column: 26, scope: !6194)
!6198 = !DILocation(line: 468, column: 6, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 468, column: 6)
!6200 = !DILocation(line: 468, column: 11, scope: !6199)
!6201 = !DILocation(line: 468, column: 6, scope: !6110)
!6202 = !DILocation(line: 468, column: 26, scope: !6199)
!6203 = !DILocation(line: 469, column: 6, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 469, column: 6)
!6205 = !DILocation(line: 469, column: 11, scope: !6204)
!6206 = !DILocation(line: 469, column: 6, scope: !6110)
!6207 = !DILocation(line: 469, column: 26, scope: !6204)
!6208 = !DILocation(line: 470, column: 6, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 470, column: 6)
!6210 = !DILocation(line: 470, column: 11, scope: !6209)
!6211 = !DILocation(line: 470, column: 6, scope: !6110)
!6212 = !DILocation(line: 470, column: 26, scope: !6209)
!6213 = !DILocation(line: 471, column: 6, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 471, column: 6)
!6215 = !DILocation(line: 471, column: 11, scope: !6214)
!6216 = !DILocation(line: 471, column: 6, scope: !6110)
!6217 = !DILocation(line: 471, column: 26, scope: !6214)
!6218 = !DILocation(line: 472, column: 6, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 472, column: 6)
!6220 = !DILocation(line: 472, column: 11, scope: !6219)
!6221 = !DILocation(line: 472, column: 6, scope: !6110)
!6222 = !DILocation(line: 472, column: 26, scope: !6219)
!6223 = !DILocation(line: 473, column: 6, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 473, column: 6)
!6225 = !DILocation(line: 473, column: 11, scope: !6224)
!6226 = !DILocation(line: 473, column: 6, scope: !6110)
!6227 = !DILocation(line: 473, column: 26, scope: !6224)
!6228 = !DILocation(line: 474, column: 6, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 474, column: 6)
!6230 = !DILocation(line: 474, column: 11, scope: !6229)
!6231 = !DILocation(line: 474, column: 6, scope: !6110)
!6232 = !DILocation(line: 474, column: 27, scope: !6229)
!6233 = !DILocation(line: 475, column: 6, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 475, column: 6)
!6235 = !DILocation(line: 475, column: 11, scope: !6234)
!6236 = !DILocation(line: 475, column: 6, scope: !6110)
!6237 = !DILocation(line: 475, column: 32, scope: !6234)
!6238 = !DILocation(line: 477, column: 50, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6110, file: !29, line: 477, column: 6)
!6240 = !DILocation(line: 477, column: 6, scope: !6110)
!6241 = !DILocation(line: 478, column: 3, scope: !6239)
!6242 = !DILocation(line: 478, column: 3, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6244, file: !29, line: 478, column: 3)
!6244 = distinct !DILexicalBlock(scope: !6239, file: !29, line: 478, column: 3)
!6245 = !{i32 -2142287494}
!6246 = !DILocation(line: 478, column: 3, scope: !6244)
!6247 = !DILocation(line: 480, column: 3, scope: !6239)
!6248 = !DILocation(line: 480, column: 3, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6239, file: !29, line: 480, column: 3)
!6250 = !DILocation(line: 480, column: 3, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6249, file: !29, line: 480, column: 3)
!6252 = !DILocation(line: 480, column: 3, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6249, file: !29, line: 480, column: 3)
!6254 = !{i64 2152680005, i64 2152680034, i64 2152680080, i64 2152680138, i64 2152680192, i64 2152680246, i64 2152680301, i64 2152680332}
!6255 = !DILocation(line: 483, column: 2, scope: !6110)
!6256 = !DILocation(line: 484, column: 1, scope: !6110)
!6257 = !DISubprogram(name: "kmalloc_trace", scope: !29, file: !29, line: 525, type: !6258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6258 = !DISubroutineType(types: !6259)
!6259 = !{!180, !6260, !178, !188}
!6260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6261, size: 64)
!6261 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6262, line: 11, flags: DIFlagFwdDecl)
!6262 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6263 = distinct !DISubprogram(name: "kmalloc_type", scope: !29, file: !29, line: 401, type: !6264, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6266)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!168, !178, !192}
!6266 = !{!6267, !6268}
!6267 = !DILocalVariable(name: "flags", arg: 1, scope: !6263, file: !29, line: 401, type: !178)
!6268 = !DILocalVariable(name: "caller", arg: 2, scope: !6263, file: !29, line: 401, type: !192)
!6269 = !DILocation(line: 401, column: 67, scope: !6263)
!6270 = !DILocation(line: 401, column: 88, scope: !6263)
!6271 = !DILocation(line: 407, column: 6, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6263, file: !29, line: 407, column: 6)
!6273 = !DILocation(line: 407, column: 6, scope: !6263)
!6274 = !DILocation(line: 413, column: 3, scope: !6272)
!6275 = !DILocation(line: 423, column: 38, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6263, file: !29, line: 423, column: 6)
!6277 = !DILocation(line: 423, column: 44, scope: !6276)
!6278 = !DILocation(line: 423, column: 6, scope: !6263)
!6279 = !DILocation(line: 424, column: 3, scope: !6276)
!6280 = !DILocation(line: 426, column: 3, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6263, file: !29, line: 425, column: 6)
!6282 = !DILocation(line: 429, column: 1, scope: !6263)
!6283 = !DISubprogram(name: "__kmalloc", scope: !29, file: !29, line: 488, type: !4633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6284 = !DISubprogram(name: "__compiletime_assert_206", scope: !29, file: !29, line: 478, type: !2069, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6285 = distinct !DISubprogram(name: "snd_seq_timer_update_tick", scope: !3994, file: !3994, line: 53, type: !6286, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6289)
!6286 = !DISubroutineType(types: !6287)
!6287 = !{null, !6288, !192}
!6288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!6289 = !{!6290, !6291}
!6290 = !DILocalVariable(name: "tick", arg: 1, scope: !6285, file: !3994, line: 53, type: !6288)
!6291 = !DILocalVariable(name: "resolution", arg: 2, scope: !6285, file: !3994, line: 54, type: !192)
!6292 = !DILocation(line: 53, column: 73, scope: !6285)
!6293 = !DILocation(line: 54, column: 25, scope: !6285)
!6294 = !DILocation(line: 56, column: 6, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6285, file: !3994, line: 56, column: 6)
!6296 = !DILocation(line: 56, column: 12, scope: !6295)
!6297 = !DILocation(line: 56, column: 23, scope: !6295)
!6298 = !DILocation(line: 56, column: 6, scope: !6285)
!6299 = !DILocation(line: 57, column: 21, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6295, file: !3994, line: 56, column: 28)
!6301 = !DILocation(line: 57, column: 3, scope: !6300)
!6302 = !DILocation(line: 57, column: 9, scope: !6300)
!6303 = !DILocation(line: 57, column: 18, scope: !6300)
!6304 = !DILocation(line: 58, column: 36, scope: !6300)
!6305 = !DILocation(line: 58, column: 42, scope: !6300)
!6306 = !DILocation(line: 58, column: 53, scope: !6300)
!6307 = !DILocation(line: 58, column: 59, scope: !6300)
!6308 = !DILocation(line: 58, column: 51, scope: !6300)
!6309 = !DILocation(line: 58, column: 21, scope: !6300)
!6310 = !DILocation(line: 58, column: 3, scope: !6300)
!6311 = !DILocation(line: 58, column: 9, scope: !6300)
!6312 = !DILocation(line: 58, column: 18, scope: !6300)
!6313 = !DILocation(line: 59, column: 21, scope: !6300)
!6314 = !DILocation(line: 59, column: 27, scope: !6300)
!6315 = !DILocation(line: 59, column: 3, scope: !6300)
!6316 = !DILocation(line: 59, column: 9, scope: !6300)
!6317 = !DILocation(line: 59, column: 18, scope: !6300)
!6318 = !DILocation(line: 60, column: 2, scope: !6300)
!6319 = !DILocation(line: 61, column: 1, scope: !6285)
!6320 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4819, file: !4819, line: 43, type: !6321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6321 = !DISubroutineType(types: !6322)
!6322 = !{null, !4649, !192}
!6323 = distinct !DISubprogram(name: "snd_seq_inc_time_nsec", scope: !3994, file: !3994, line: 101, type: !6324, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6326)
!6324 = !DISubroutineType(types: !6325)
!6325 = !{null, !5148, !192}
!6326 = !{!6327, !6328}
!6327 = !DILocalVariable(name: "tm", arg: 1, scope: !6323, file: !3994, line: 101, type: !5148)
!6328 = !DILocalVariable(name: "nsec", arg: 2, scope: !6323, file: !3994, line: 101, type: !192)
!6329 = !DILocation(line: 101, column: 63, scope: !6323)
!6330 = !DILocation(line: 101, column: 81, scope: !6323)
!6331 = !DILocation(line: 103, column: 18, scope: !6323)
!6332 = !DILocation(line: 103, column: 2, scope: !6323)
!6333 = !DILocation(line: 103, column: 6, scope: !6323)
!6334 = !DILocation(line: 103, column: 15, scope: !6323)
!6335 = !DILocation(line: 104, column: 27, scope: !6323)
!6336 = !DILocation(line: 104, column: 2, scope: !6323)
!6337 = !DILocation(line: 105, column: 1, scope: !6323)
!6338 = !DISubprogram(name: "snd_seq_check_queue", scope: !5222, file: !5222, line: 81, type: !6339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6339 = !DISubroutineType(types: !6340)
!6340 = !{null, !5220, !115, !115}
!6341 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !4819, file: !4819, line: 29, type: !6342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6342 = !DISubroutineType(types: !6343)
!6343 = !{null, !4649}
!6344 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !4819, file: !4819, line: 41, type: !6342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6345 = !DISubprogram(name: "snd_timer_pause", scope: !4028, file: !4028, line: 129, type: !6346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6346 = !DISubroutineType(types: !6347)
!6347 = !{!115, !4026}
!6348 = distinct !DISubprogram(name: "initialize_timer", scope: !2, file: !2, line: 354, type: !4785, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6349)
!6349 = !{!6350, !6351, !6352, !6353}
!6350 = !DILocalVariable(name: "tmr", arg: 1, scope: !6348, file: !2, line: 354, type: !3992)
!6351 = !DILocalVariable(name: "t", scope: !6348, file: !2, line: 356, type: !4031)
!6352 = !DILocalVariable(name: "freq", scope: !6348, file: !2, line: 357, type: !192)
!6353 = !DILocalVariable(name: "r", scope: !6354, file: !2, line: 373, type: !192)
!6354 = distinct !DILexicalBlock(scope: !6355, file: !2, line: 372, column: 45)
!6355 = distinct !DILexicalBlock(scope: !6348, file: !2, line: 372, column: 6)
!6356 = !DILocation(line: 354, column: 51, scope: !6348)
!6357 = !DILocation(line: 356, column: 2, scope: !6348)
!6358 = !DILocation(line: 356, column: 20, scope: !6348)
!6359 = !DILocation(line: 357, column: 2, scope: !6348)
!6360 = !DILocation(line: 357, column: 16, scope: !6348)
!6361 = !DILocation(line: 359, column: 6, scope: !6348)
!6362 = !DILocation(line: 359, column: 11, scope: !6348)
!6363 = !DILocation(line: 359, column: 19, scope: !6348)
!6364 = !DILocation(line: 359, column: 4, scope: !6348)
!6365 = !DILocation(line: 360, column: 7, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6348, file: !2, line: 360, column: 6)
!6367 = !DILocation(line: 360, column: 6, scope: !6348)
!6368 = !DILocation(line: 361, column: 3, scope: !6366)
!6369 = !DILocation(line: 363, column: 9, scope: !6348)
!6370 = !DILocation(line: 363, column: 14, scope: !6348)
!6371 = !DILocation(line: 363, column: 7, scope: !6348)
!6372 = !DILocation(line: 364, column: 7, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6348, file: !2, line: 364, column: 6)
!6374 = !DILocation(line: 364, column: 6, scope: !6348)
!6375 = !DILocation(line: 365, column: 8, scope: !6373)
!6376 = !DILocation(line: 365, column: 3, scope: !6373)
!6377 = !DILocation(line: 366, column: 11, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6373, file: !2, line: 366, column: 11)
!6379 = !DILocation(line: 366, column: 16, scope: !6378)
!6380 = !DILocation(line: 366, column: 11, scope: !6373)
!6381 = !DILocation(line: 367, column: 8, scope: !6378)
!6382 = !DILocation(line: 367, column: 3, scope: !6378)
!6383 = !DILocation(line: 368, column: 11, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6378, file: !2, line: 368, column: 11)
!6385 = !DILocation(line: 368, column: 16, scope: !6384)
!6386 = !DILocation(line: 368, column: 11, scope: !6378)
!6387 = !DILocation(line: 369, column: 8, scope: !6384)
!6388 = !DILocation(line: 369, column: 3, scope: !6384)
!6389 = !DILocation(line: 371, column: 2, scope: !6348)
!6390 = !DILocation(line: 371, column: 7, scope: !6348)
!6391 = !DILocation(line: 371, column: 13, scope: !6348)
!6392 = !DILocation(line: 372, column: 8, scope: !6355)
!6393 = !DILocation(line: 372, column: 11, scope: !6355)
!6394 = !DILocation(line: 372, column: 14, scope: !6355)
!6395 = !DILocation(line: 372, column: 20, scope: !6355)
!6396 = !DILocation(line: 372, column: 6, scope: !6348)
!6397 = !DILocation(line: 373, column: 3, scope: !6354)
!6398 = !DILocation(line: 373, column: 17, scope: !6354)
!6399 = !DILocation(line: 373, column: 42, scope: !6354)
!6400 = !DILocation(line: 373, column: 47, scope: !6354)
!6401 = !DILocation(line: 373, column: 21, scope: !6354)
!6402 = !DILocation(line: 374, column: 7, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6354, file: !2, line: 374, column: 7)
!6404 = !DILocation(line: 374, column: 7, scope: !6354)
!6405 = !DILocation(line: 375, column: 48, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6403, file: !2, line: 374, column: 10)
!6407 = !DILocation(line: 375, column: 52, scope: !6406)
!6408 = !DILocation(line: 375, column: 50, scope: !6406)
!6409 = !DILocation(line: 375, column: 45, scope: !6406)
!6410 = !DILocation(line: 375, column: 17, scope: !6406)
!6411 = !DILocation(line: 375, column: 4, scope: !6406)
!6412 = !DILocation(line: 375, column: 9, scope: !6406)
!6413 = !DILocation(line: 375, column: 15, scope: !6406)
!6414 = !DILocation(line: 376, column: 10, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6406, file: !2, line: 376, column: 8)
!6416 = !DILocation(line: 376, column: 15, scope: !6415)
!6417 = !DILocation(line: 376, column: 8, scope: !6406)
!6418 = !DILocation(line: 377, column: 5, scope: !6415)
!6419 = !DILocation(line: 377, column: 10, scope: !6415)
!6420 = !DILocation(line: 377, column: 16, scope: !6415)
!6421 = !DILocation(line: 378, column: 3, scope: !6406)
!6422 = !DILocation(line: 379, column: 2, scope: !6355)
!6423 = !DILocation(line: 379, column: 2, scope: !6354)
!6424 = !DILocation(line: 380, column: 2, scope: !6348)
!6425 = !DILocation(line: 380, column: 19, scope: !6348)
!6426 = !DILocation(line: 381, column: 2, scope: !6348)
!6427 = !DILocation(line: 382, column: 1, scope: !6348)
!6428 = !DISubprogram(name: "snd_timer_start", scope: !4028, file: !4028, line: 126, type: !6429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6429 = !DISubroutineType(types: !6430)
!6430 = !{!115, !4026, !37}
!6431 = !DISubprogram(name: "set_normalized_timespec64", scope: !481, file: !481, line: 66, type: !6432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6432 = !DISubroutineType(types: !6433)
!6433 = !{null, !4590, !480, !212}
!6434 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6435, file: !6435, line: 94, type: !6436, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6441)
!6435 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6436 = !DISubroutineType(types: !6437)
!6437 = !{null, !6438, !188}
!6438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6439, size: 64)
!6439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6440)
!6440 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6441 = !{!6442, !6443}
!6442 = !DILocalVariable(name: "v", arg: 1, scope: !6434, file: !6435, line: 94, type: !6438)
!6443 = !DILocalVariable(name: "size", arg: 2, scope: !6434, file: !6435, line: 94, type: !188)
!6444 = !DILocation(line: 94, column: 79, scope: !6434)
!6445 = !DILocation(line: 94, column: 89, scope: !6434)
!6446 = !DILocation(line: 96, column: 20, scope: !6434)
!6447 = !DILocation(line: 96, column: 23, scope: !6434)
!6448 = !DILocation(line: 96, column: 2, scope: !6434)
!6449 = !DILocation(line: 97, column: 2, scope: !6434)
!6450 = !DILocation(line: 98, column: 1, scope: !6434)
!6451 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !6452, file: !6452, line: 1194, type: !6057, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6453)
!6452 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6453 = !{!6454}
!6454 = !DILocalVariable(name: "v", arg: 1, scope: !6451, file: !6452, line: 1194, type: !6059)
!6455 = !DILocation(line: 1194, column: 26, scope: !6451)
!6456 = !DILocation(line: 1197, column: 18, scope: !6451)
!6457 = !DILocation(line: 1197, column: 2, scope: !6451)
!6458 = !DILocation(line: 1201, column: 1, scope: !6451)
!6459 = distinct !DISubprogram(name: "kasan_check_write", scope: !6460, file: !6460, line: 44, type: !6461, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6463)
!6460 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6461 = !DISubroutineType(types: !6462)
!6462 = !{!525, !6438, !37}
!6463 = !{!6464, !6465}
!6464 = !DILocalVariable(name: "p", arg: 1, scope: !6459, file: !6460, line: 44, type: !6438)
!6465 = !DILocalVariable(name: "size", arg: 2, scope: !6459, file: !6460, line: 44, type: !37)
!6466 = !DILocation(line: 44, column: 59, scope: !6459)
!6467 = !DILocation(line: 44, column: 75, scope: !6459)
!6468 = !DILocation(line: 46, column: 2, scope: !6459)
!6469 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6470, file: !6470, line: 229, type: !6471, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6473)
!6470 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6471 = !DISubroutineType(types: !6472)
!6472 = !{null, !6438, !188, !115}
!6473 = !{!6474, !6475, !6476}
!6474 = !DILocalVariable(name: "ptr", arg: 1, scope: !6469, file: !6470, line: 229, type: !6438)
!6475 = !DILocalVariable(name: "size", arg: 2, scope: !6469, file: !6470, line: 229, type: !188)
!6476 = !DILocalVariable(name: "type", arg: 3, scope: !6469, file: !6470, line: 230, type: !115)
!6477 = !DILocation(line: 229, column: 60, scope: !6469)
!6478 = !DILocation(line: 229, column: 72, scope: !6469)
!6479 = !DILocation(line: 230, column: 15, scope: !6469)
!6480 = !DILocation(line: 230, column: 23, scope: !6469)
!6481 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !6482, file: !6482, line: 58, type: !6057, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !6483)
!6482 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6483 = !{!6484}
!6484 = !DILocalVariable(name: "v", arg: 1, scope: !6481, file: !6482, line: 58, type: !6059)
!6485 = !DILocation(line: 58, column: 55, scope: !6481)
!6486 = !DILocation(line: 61, column: 16, scope: !6481)
!6487 = !DILocation(line: 61, column: 19, scope: !6481)
!6488 = !DILocation(line: 60, column: 2, scope: !6481)
!6489 = !{i64 2148478537, i64 2148478576, i64 2148478597, i64 2148478634, i64 2148478657, i64 2148478527}
!6490 = !DILocation(line: 62, column: 1, scope: !6481)
