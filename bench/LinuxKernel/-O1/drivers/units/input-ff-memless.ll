; ModuleID = 'drivers/input/ff-memless.c'
source_filename = "drivers/input/ff-memless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_ff_create_memless: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad input_ff_create_memless ; .previous"

%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.ml_device = type { ptr, [16 x %struct.ml_effect_state], i32, %struct.timer_list, ptr, ptr }
%struct.ml_effect_state = type { ptr, i64, i32, i64, i64, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.list_head = type { ptr, ptr }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i64], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.13 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.13 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_constant_effect = type { i16, %struct.ff_envelope }
%struct.ff_ramp_effect = type { i16, i16, %struct.ff_envelope }
%struct.ff_rumble_effect = type { i16, i16 }

@__UNIQUE_ID_file267 = internal constant [41 x i8] c"ff_memless.file=drivers/input/ff-memless\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license268 = internal constant [23 x i8] c"ff_memless.license=GPL\00", section ".modinfo", align 1, !dbg !4568
@__UNIQUE_ID_author269 = internal constant [58 x i8] c"ff_memless.author=Anssi Hannula <anssi.hannula@gmail.com>\00", section ".modinfo", align 1, !dbg !4573
@__UNIQUE_ID_description270 = internal constant [69 x i8] c"ff_memless.description=Force feedback support for memoryless devices\00", section ".modinfo", align 1, !dbg !4578
@__UNIQUE_ID___addressable_input_ff_create_memless289 = internal global ptr @input_ff_create_memless, section ".discard.addressable", align 8, !dbg !4583
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4585
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [53 x i8] c"\013ff_memless: invalid type in get_compatible_type()\0A\00", align 1, !dbg !4590
@.str.2 = private unnamed_addr constant [52 x i8] c"\013ff_memless: invalid type in ml_combine_effects()\0A\00", align 1, !dbg !4595
@sin_table = internal constant [91 x i32] [i32 0, i32 37478757, i32 74946098, i32 112390610, i32 149800886, i32 187165532, i32 224473165, i32 261712422, i32 298871958, i32 335940455, i32 372906621, i32 409759197, i32 446486956, i32 483078710, i32 519523314, i32 555809666, i32 591926714, i32 627863454, i32 663608942, i32 699152287, i32 734482664, i32 769589311, i32 804461533, i32 839088708, i32 873460289, i32 907565806, i32 941394869, i32 974937174, i32 1008182503, i32 1041120731, i32 1073741823, i32 1106035843, i32 1137992954, i32 1169603421, i32 1200857615, i32 1231746017, i32 1262259217, i32 1292387920, i32 1322122950, i32 1351455248, i32 1380375880, i32 1408876036, i32 1436947034, i32 1464580325, i32 1491767490, i32 1518500249, i32 1544770457, i32 1570570114, i32 1595891360, i32 1620726481, i32 1645067914, i32 1668908243, i32 1692240207, i32 1715056697, i32 1737350765, i32 1759115619, i32 1780344629, i32 1801031329, i32 1821169418, i32 1840752761, i32 1859775392, i32 1878231518, i32 1896115516, i32 1913421940, i32 1930145516, i32 1946281151, i32 1961823931, i32 1976769119, i32 1991112165, i32 2004848699, i32 2017974536, i32 2030485679, i32 2042378316, i32 2053648824, i32 2064293772, i32 2074309916, i32 2083694204, i32 2092443780, i32 2100555976, i32 2108028323, i32 2114858545, i32 2121044559, i32 2126584483, i32 2131476629, i32 2135719506, i32 2139311823, i32 2142252484, i32 2144540595, i32 2146175457, i32 2147156574, i32 2147483647], align 16, !dbg !4598
@get_envelope.empty_envelope = internal constant %struct.ff_envelope zeroinitializer, align 2, !dbg !4604
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file267, ptr @__UNIQUE_ID_license268, ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_description270, ptr @__UNIQUE_ID___addressable_input_ff_create_memless289], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @input_ff_create_memless(ptr noundef %dev, ptr noundef %data, ptr noundef %play_effect) #0 align 16 !dbg !4627 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %play_effect.addr = alloca ptr, align 8
  %ml = alloca ptr, align 8
  %ff = alloca ptr, align 8
  %error = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4631, metadata !DIExpression()), !dbg !4638
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4632, metadata !DIExpression()), !dbg !4639
  store ptr %play_effect, ptr %play_effect.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %play_effect.addr, metadata !4633, metadata !DIExpression()), !dbg !4640
  call void @llvm.lifetime.start.p0(i64 8, ptr %ml) #16, !dbg !4641
  call void @llvm.dbg.declare(metadata ptr %ml, metadata !4634, metadata !DIExpression()), !dbg !4642
  call void @llvm.lifetime.start.p0(i64 8, ptr %ff) #16, !dbg !4643
  call void @llvm.dbg.declare(metadata ptr %ff, metadata !4635, metadata !DIExpression()), !dbg !4644
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !4645
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4636, metadata !DIExpression()), !dbg !4646
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !4647
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4637, metadata !DIExpression()), !dbg !4648
  %call = call noalias ptr @kzalloc(i64 noundef 840, i32 noundef 3264) #17, !dbg !4649
  store ptr %call, ptr %ml, align 8, !dbg !4650
  %0 = load ptr, ptr %ml, align 8, !dbg !4651
  %tobool = icmp ne ptr %0, null, !dbg !4651
  br i1 %tobool, label %if.end, label %if.then, !dbg !4653

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4654

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !4655
  %2 = load ptr, ptr %ml, align 8, !dbg !4656
  %dev1 = getelementptr inbounds %struct.ml_device, ptr %2, i32 0, i32 4, !dbg !4657
  store ptr %1, ptr %dev1, align 8, !dbg !4658
  %3 = load ptr, ptr %data.addr, align 8, !dbg !4659
  %4 = load ptr, ptr %ml, align 8, !dbg !4660
  %private = getelementptr inbounds %struct.ml_device, ptr %4, i32 0, i32 0, !dbg !4661
  store ptr %3, ptr %private, align 8, !dbg !4662
  %5 = load ptr, ptr %play_effect.addr, align 8, !dbg !4663
  %6 = load ptr, ptr %ml, align 8, !dbg !4664
  %play_effect2 = getelementptr inbounds %struct.ml_device, ptr %6, i32 0, i32 5, !dbg !4665
  store ptr %5, ptr %play_effect2, align 8, !dbg !4666
  %7 = load ptr, ptr %ml, align 8, !dbg !4667
  %gain = getelementptr inbounds %struct.ml_device, ptr %7, i32 0, i32 2, !dbg !4668
  store i32 65535, ptr %gain, align 8, !dbg !4669
  %8 = load ptr, ptr %ml, align 8, !dbg !4670
  %timer = getelementptr inbounds %struct.ml_device, ptr %8, i32 0, i32 3, !dbg !4670
  call void @init_timer_key(ptr noundef %timer, ptr noundef @ml_effect_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #18, !dbg !4670
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !4671
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 12, !dbg !4672
  %arraydecay = getelementptr inbounds [2 x i64], ptr %ffbit, i64 0, i64 0, !dbg !4671
  call void @set_bit(i64 noundef 96, ptr noundef %arraydecay) #18, !dbg !4673
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !4674
  %call3 = call i32 @input_ff_create(ptr noundef %10, i32 noundef 16) #18, !dbg !4675
  store i32 %call3, ptr %error, align 4, !dbg !4676
  %11 = load i32, ptr %error, align 4, !dbg !4677
  %tobool4 = icmp ne i32 %11, 0, !dbg !4677
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4679

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %ml, align 8, !dbg !4680
  call void @kfree(ptr noundef %12) #18, !dbg !4682
  %13 = load i32, ptr %error, align 4, !dbg !4683
  store i32 %13, ptr %retval, align 4, !dbg !4684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4684

if.end6:                                          ; preds = %if.end
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !4685
  %ff7 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 20, !dbg !4686
  %15 = load ptr, ptr %ff7, align 8, !dbg !4686
  store ptr %15, ptr %ff, align 8, !dbg !4687
  %16 = load ptr, ptr %ml, align 8, !dbg !4688
  %17 = load ptr, ptr %ff, align 8, !dbg !4689
  %private8 = getelementptr inbounds %struct.ff_device, ptr %17, i32 0, i32 6, !dbg !4690
  store ptr %16, ptr %private8, align 8, !dbg !4691
  %18 = load ptr, ptr %ff, align 8, !dbg !4692
  %upload = getelementptr inbounds %struct.ff_device, ptr %18, i32 0, i32 0, !dbg !4693
  store ptr @ml_ff_upload, ptr %upload, align 8, !dbg !4694
  %19 = load ptr, ptr %ff, align 8, !dbg !4695
  %playback = getelementptr inbounds %struct.ff_device, ptr %19, i32 0, i32 2, !dbg !4696
  store ptr @ml_ff_playback, ptr %playback, align 8, !dbg !4697
  %20 = load ptr, ptr %ff, align 8, !dbg !4698
  %set_gain = getelementptr inbounds %struct.ff_device, ptr %20, i32 0, i32 3, !dbg !4699
  store ptr @ml_ff_set_gain, ptr %set_gain, align 8, !dbg !4700
  %21 = load ptr, ptr %ff, align 8, !dbg !4701
  %destroy = getelementptr inbounds %struct.ff_device, ptr %21, i32 0, i32 5, !dbg !4702
  store ptr @ml_ff_destroy, ptr %destroy, align 8, !dbg !4703
  %22 = load ptr, ptr %ff, align 8, !dbg !4704
  %ffbit9 = getelementptr inbounds %struct.ff_device, ptr %22, i32 0, i32 7, !dbg !4704
  %arraydecay10 = getelementptr inbounds [2 x i64], ptr %ffbit9, i64 0, i64 0, !dbg !4704
  %23 = ptrtoint ptr %arraydecay10 to i64, !dbg !4704
  %cmp = icmp ne i64 %23, 0, !dbg !4704
  %conv = zext i1 %cmp to i32, !dbg !4704
  %24 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4704
  br i1 %24, label %land.lhs.true, label %cond.false, !dbg !4704

land.lhs.true:                                    ; preds = %if.end6
  %25 = load ptr, ptr %ff, align 8, !dbg !4704
  %ffbit11 = getelementptr inbounds %struct.ff_device, ptr %25, i32 0, i32 7, !dbg !4704
  %arraydecay12 = getelementptr inbounds [2 x i64], ptr %ffbit11, i64 0, i64 0, !dbg !4704
  %26 = ptrtoint ptr %arraydecay12 to i64, !dbg !4704
  %cmp13 = icmp ne i64 %26, 0, !dbg !4704
  br i1 %cmp13, label %land.lhs.true15, label %cond.false, !dbg !4704

land.lhs.true15:                                  ; preds = %land.lhs.true
  %27 = load ptr, ptr %ff, align 8, !dbg !4704
  %ffbit16 = getelementptr inbounds %struct.ff_device, ptr %27, i32 0, i32 7, !dbg !4704
  %arraydecay17 = getelementptr inbounds [2 x i64], ptr %ffbit16, i64 0, i64 0, !dbg !4704
  %28 = load i64, ptr %arraydecay17, align 8, !dbg !4704
  %29 = call i1 @llvm.is.constant.i64(i64 %28), !dbg !4704
  br i1 %29, label %cond.true, label %cond.false, !dbg !4706

cond.true:                                        ; preds = %land.lhs.true15
  %30 = load ptr, ptr %ff, align 8, !dbg !4704
  %ffbit18 = getelementptr inbounds %struct.ff_device, ptr %30, i32 0, i32 7, !dbg !4704
  %arraydecay19 = getelementptr inbounds [2 x i64], ptr %ffbit18, i64 0, i64 0, !dbg !4704
  %call20 = call zeroext i1 @const_test_bit(i64 noundef 80, ptr noundef %arraydecay19) #18, !dbg !4704
  br i1 %call20, label %if.then26, label %if.end35, !dbg !4704

cond.false:                                       ; preds = %land.lhs.true15, %land.lhs.true, %if.end6
  %31 = load ptr, ptr %ff, align 8, !dbg !4704
  %ffbit22 = getelementptr inbounds %struct.ff_device, ptr %31, i32 0, i32 7, !dbg !4704
  %arraydecay23 = getelementptr inbounds [2 x i64], ptr %ffbit22, i64 0, i64 0, !dbg !4704
  %call24 = call zeroext i1 @_test_bit(i64 noundef 80, ptr noundef %arraydecay23) #18, !dbg !4704
  br i1 %call24, label %if.then26, label %if.end35, !dbg !4706

if.then26:                                        ; preds = %cond.false, %cond.true
  %32 = load ptr, ptr %dev.addr, align 8, !dbg !4707
  %ffbit27 = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 12, !dbg !4709
  %arraydecay28 = getelementptr inbounds [2 x i64], ptr %ffbit27, i64 0, i64 0, !dbg !4707
  call void @set_bit(i64 noundef 81, ptr noundef %arraydecay28) #18, !dbg !4710
  %33 = load ptr, ptr %dev.addr, align 8, !dbg !4711
  %ffbit29 = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 12, !dbg !4712
  %arraydecay30 = getelementptr inbounds [2 x i64], ptr %ffbit29, i64 0, i64 0, !dbg !4711
  call void @set_bit(i64 noundef 90, ptr noundef %arraydecay30) #18, !dbg !4713
  %34 = load ptr, ptr %dev.addr, align 8, !dbg !4714
  %ffbit31 = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 12, !dbg !4715
  %arraydecay32 = getelementptr inbounds [2 x i64], ptr %ffbit31, i64 0, i64 0, !dbg !4714
  call void @set_bit(i64 noundef 89, ptr noundef %arraydecay32) #18, !dbg !4716
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !4717
  %ffbit33 = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 12, !dbg !4718
  %arraydecay34 = getelementptr inbounds [2 x i64], ptr %ffbit33, i64 0, i64 0, !dbg !4717
  call void @set_bit(i64 noundef 88, ptr noundef %arraydecay34) #18, !dbg !4719
  br label %if.end35, !dbg !4720

if.end35:                                         ; preds = %if.then26, %cond.false, %cond.true
  store i32 0, ptr %i, align 4, !dbg !4721
  br label %for.cond, !dbg !4723

for.cond:                                         ; preds = %for.inc, %if.end35
  %36 = load i32, ptr %i, align 4, !dbg !4724
  %cmp36 = icmp slt i32 %36, 16, !dbg !4726
  br i1 %cmp36, label %for.body, label %for.end, !dbg !4727

for.body:                                         ; preds = %for.cond
  %37 = load ptr, ptr %ff, align 8, !dbg !4728
  %effects = getelementptr inbounds %struct.ff_device, ptr %37, i32 0, i32 10, !dbg !4729
  %38 = load ptr, ptr %effects, align 8, !dbg !4729
  %39 = load i32, ptr %i, align 4, !dbg !4730
  %idxprom = sext i32 %39 to i64, !dbg !4728
  %arrayidx = getelementptr %struct.ff_effect, ptr %38, i64 %idxprom, !dbg !4728
  %40 = load ptr, ptr %ml, align 8, !dbg !4731
  %states = getelementptr inbounds %struct.ml_device, ptr %40, i32 0, i32 1, !dbg !4732
  %41 = load i32, ptr %i, align 4, !dbg !4733
  %idxprom38 = sext i32 %41 to i64, !dbg !4731
  %arrayidx39 = getelementptr [16 x %struct.ml_effect_state], ptr %states, i64 0, i64 %idxprom38, !dbg !4731
  %effect = getelementptr inbounds %struct.ml_effect_state, ptr %arrayidx39, i32 0, i32 0, !dbg !4734
  store ptr %arrayidx, ptr %effect, align 8, !dbg !4735
  br label %for.inc, !dbg !4731

for.inc:                                          ; preds = %for.body
  %42 = load i32, ptr %i, align 4, !dbg !4736
  %inc = add i32 %42, 1, !dbg !4736
  store i32 %inc, ptr %i, align 4, !dbg !4736
  br label %for.cond, !dbg !4737, !llvm.loop !4738

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4742
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4742

cleanup:                                          ; preds = %for.end, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4743
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !4743
  call void @llvm.lifetime.end.p0(i64 8, ptr %ff) #16, !dbg !4743
  call void @llvm.lifetime.end.p0(i64 8, ptr %ml) #16, !dbg !4743
  %43 = load i32, ptr %retval, align 4, !dbg !4743
  ret i32 %43, !dbg !4743
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !4744 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4748, metadata !DIExpression()), !dbg !4750
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4749, metadata !DIExpression()), !dbg !4751
  %0 = load i64, ptr %size.addr, align 8, !dbg !4752
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4753
  %or = or i32 %1, 256, !dbg !4754
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !4755
  ret ptr %call, !dbg !4756
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4757 dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ml_effect_timer(ptr noundef %t) #0 align 16 !dbg !4761 {
entry:
  %t.addr = alloca ptr, align 8
  %ml = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %flags = alloca i64, align 8
  %tmp2 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp4 = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !4763, metadata !DIExpression()), !dbg !4774
  call void @llvm.lifetime.start.p0(i64 8, ptr %ml) #16, !dbg !4775
  call void @llvm.dbg.declare(metadata ptr %ml, metadata !4764, metadata !DIExpression()), !dbg !4776
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4777
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4765, metadata !DIExpression()), !dbg !4777
  %0 = load ptr, ptr %t.addr, align 8, !dbg !4777
  store ptr %0, ptr %__mptr, align 8, !dbg !4777
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4777
  %add.ptr = getelementptr i8, ptr %1, i64 -784, !dbg !4777
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4777
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4778
  %2 = load ptr, ptr %tmp, align 8, !dbg !4777
  store ptr %2, ptr %ml, align 8, !dbg !4776
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !4779
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4767, metadata !DIExpression()), !dbg !4780
  %3 = load ptr, ptr %ml, align 8, !dbg !4781
  %dev1 = getelementptr inbounds %struct.ml_device, ptr %3, i32 0, i32 4, !dbg !4782
  %4 = load ptr, ptr %dev1, align 8, !dbg !4782
  store ptr %4, ptr %dev, align 8, !dbg !4780
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4783
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4768, metadata !DIExpression()), !dbg !4784
  store i32 0, ptr %tmp2, align 4, !dbg !4785
  %5 = load i32, ptr %tmp2, align 4, !dbg !4788
  br label %do.body, !dbg !4789

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !4790

do.body3:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4791
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4769, metadata !DIExpression()), !dbg !4791
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4791
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4773, metadata !DIExpression()), !dbg !4791
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4791
  %conv = zext i1 %cmp to i32, !dbg !4791
  store i32 1, ptr %tmp4, align 4, !dbg !4791
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4792
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4792
  %6 = load i32, ptr %tmp4, align 4, !dbg !4791
  %7 = load ptr, ptr %dev, align 8, !dbg !4792
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 36, !dbg !4792
  %call = call ptr @spinlock_check(ptr noundef %event_lock) #18, !dbg !4792
  %call5 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !4792
  store i64 %call5, ptr %flags, align 8, !dbg !4792
  br label %do.cond, !dbg !4792

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !4792

do.end:                                           ; preds = %do.cond
  br label %do.cond6, !dbg !4790

do.cond6:                                         ; preds = %do.end
  br label %do.end7, !dbg !4790

do.end7:                                          ; preds = %do.cond6
  %8 = load ptr, ptr %ml, align 8, !dbg !4793
  call void @ml_play_effects(ptr noundef %8) #18, !dbg !4794
  %9 = load ptr, ptr %dev, align 8, !dbg !4795
  %event_lock8 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 36, !dbg !4796
  %10 = load i64, ptr %flags, align 8, !dbg !4797
  call void @spin_unlock_irqrestore(ptr noundef %event_lock8, i64 noundef %10) #18, !dbg !4798
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %ml) #16, !dbg !4799
  ret void, !dbg !4799
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4800 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4807, metadata !DIExpression()), !dbg !4809
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4808, metadata !DIExpression()), !dbg !4810
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4811
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4812
  %div = sdiv i64 %1, 64, !dbg !4812
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4813
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !4814
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4815
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4816
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !4817
  ret void, !dbg !4818
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4819 dso_local i32 @input_ff_create(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4822 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ml_ff_upload(ptr noundef %dev, ptr noundef %effect, ptr noundef %old) #0 align 16 !dbg !4825 {
entry:
  %dev.addr = alloca ptr, align 8
  %effect.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %ml = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4827, metadata !DIExpression()), !dbg !4833
  store ptr %effect, ptr %effect.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %effect.addr, metadata !4828, metadata !DIExpression()), !dbg !4834
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !4829, metadata !DIExpression()), !dbg !4835
  call void @llvm.lifetime.start.p0(i64 8, ptr %ml) #16, !dbg !4836
  call void @llvm.dbg.declare(metadata ptr %ml, metadata !4830, metadata !DIExpression()), !dbg !4837
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4838
  %ff = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20, !dbg !4839
  %1 = load ptr, ptr %ff, align 8, !dbg !4839
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6, !dbg !4840
  %2 = load ptr, ptr %private, align 8, !dbg !4840
  store ptr %2, ptr %ml, align 8, !dbg !4837
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #16, !dbg !4841
  call void @llvm.dbg.declare(metadata ptr %state, metadata !4831, metadata !DIExpression()), !dbg !4842
  %3 = load ptr, ptr %ml, align 8, !dbg !4843
  %states = getelementptr inbounds %struct.ml_device, ptr %3, i32 0, i32 1, !dbg !4844
  %4 = load ptr, ptr %effect.addr, align 8, !dbg !4845
  %id = getelementptr inbounds %struct.ff_effect, ptr %4, i32 0, i32 1, !dbg !4846
  %5 = load i16, ptr %id, align 2, !dbg !4846
  %idxprom = sext i16 %5 to i64, !dbg !4843
  %arrayidx = getelementptr [16 x %struct.ml_effect_state], ptr %states, i64 0, i64 %idxprom, !dbg !4843
  store ptr %arrayidx, ptr %state, align 8, !dbg !4842
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !4847
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 36, !dbg !4848
  call void @spin_lock_irq(ptr noundef %event_lock) #18, !dbg !4849
  %7 = load ptr, ptr %state, align 8, !dbg !4850
  %flags = getelementptr inbounds %struct.ml_effect_state, ptr %7, i32 0, i32 1, !dbg !4850
  %8 = ptrtoint ptr %flags to i64, !dbg !4850
  %cmp = icmp ne i64 %8, 0, !dbg !4850
  %conv = zext i1 %cmp to i32, !dbg !4850
  %9 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4850
  br i1 %9, label %land.lhs.true, label %cond.false, !dbg !4850

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %state, align 8, !dbg !4850
  %flags1 = getelementptr inbounds %struct.ml_effect_state, ptr %10, i32 0, i32 1, !dbg !4850
  %11 = ptrtoint ptr %flags1 to i64, !dbg !4850
  %cmp2 = icmp ne i64 %11, 0, !dbg !4850
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !4850

land.lhs.true4:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %state, align 8, !dbg !4850
  %flags5 = getelementptr inbounds %struct.ml_effect_state, ptr %12, i32 0, i32 1, !dbg !4850
  %13 = load i64, ptr %flags5, align 8, !dbg !4850
  %14 = call i1 @llvm.is.constant.i64(i64 %13), !dbg !4850
  br i1 %14, label %cond.true, label %cond.false, !dbg !4852

cond.true:                                        ; preds = %land.lhs.true4
  %15 = load ptr, ptr %state, align 8, !dbg !4850
  %flags6 = getelementptr inbounds %struct.ml_effect_state, ptr %15, i32 0, i32 1, !dbg !4850
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #18, !dbg !4850
  br i1 %call, label %if.then, label %if.end, !dbg !4850

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %16 = load ptr, ptr %state, align 8, !dbg !4850
  %flags8 = getelementptr inbounds %struct.ml_effect_state, ptr %16, i32 0, i32 1, !dbg !4850
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #18, !dbg !4850
  br i1 %call9, label %if.then, label %if.end, !dbg !4852

if.then:                                          ; preds = %cond.false, %cond.true
  %17 = load ptr, ptr %state, align 8, !dbg !4853
  %flags11 = getelementptr inbounds %struct.ml_effect_state, ptr %17, i32 0, i32 1, !dbg !4853
  %18 = ptrtoint ptr %flags11 to i64, !dbg !4853
  %cmp12 = icmp ne i64 %18, 0, !dbg !4853
  %conv13 = zext i1 %cmp12 to i32, !dbg !4853
  %19 = call i1 @llvm.is.constant.i32(i32 %conv13), !dbg !4853
  br i1 %19, label %land.lhs.true14, label %cond.false22, !dbg !4853

land.lhs.true14:                                  ; preds = %if.then
  %20 = load ptr, ptr %state, align 8, !dbg !4853
  %flags15 = getelementptr inbounds %struct.ml_effect_state, ptr %20, i32 0, i32 1, !dbg !4853
  %21 = ptrtoint ptr %flags15 to i64, !dbg !4853
  %cmp16 = icmp ne i64 %21, 0, !dbg !4853
  br i1 %cmp16, label %land.lhs.true18, label %cond.false22, !dbg !4853

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %22 = load ptr, ptr %state, align 8, !dbg !4853
  %flags19 = getelementptr inbounds %struct.ml_effect_state, ptr %22, i32 0, i32 1, !dbg !4853
  %23 = load i64, ptr %flags19, align 8, !dbg !4853
  %24 = call i1 @llvm.is.constant.i64(i64 %23), !dbg !4853
  br i1 %24, label %cond.true20, label %cond.false22, !dbg !4853

cond.true20:                                      ; preds = %land.lhs.true18
  %25 = load ptr, ptr %state, align 8, !dbg !4853
  %flags21 = getelementptr inbounds %struct.ml_effect_state, ptr %25, i32 0, i32 1, !dbg !4853
  call void @generic___clear_bit(i64 noundef 1, ptr noundef %flags21) #18, !dbg !4853
  br label %cond.end, !dbg !4853

cond.false22:                                     ; preds = %land.lhs.true18, %land.lhs.true14, %if.then
  %26 = load ptr, ptr %state, align 8, !dbg !4853
  %flags23 = getelementptr inbounds %struct.ml_effect_state, ptr %26, i32 0, i32 1, !dbg !4853
  call void @___clear_bit(i64 noundef 1, ptr noundef %flags23) #18, !dbg !4853
  br label %cond.end, !dbg !4853

cond.end:                                         ; preds = %cond.false22, %cond.true20
  %27 = load volatile i64, ptr @jiffies, align 64, !dbg !4855
  %28 = load ptr, ptr %state, align 8, !dbg !4856
  %effect24 = getelementptr inbounds %struct.ml_effect_state, ptr %28, i32 0, i32 0, !dbg !4857
  %29 = load ptr, ptr %effect24, align 8, !dbg !4857
  %replay = getelementptr inbounds %struct.ff_effect, ptr %29, i32 0, i32 4, !dbg !4858
  %delay = getelementptr inbounds %struct.ff_replay, ptr %replay, i32 0, i32 1, !dbg !4859
  %30 = load i16, ptr %delay, align 2, !dbg !4859
  %conv25 = zext i16 %30 to i32, !dbg !4856
  %call26 = call i64 @msecs_to_jiffies(i32 noundef %conv25) #18, !dbg !4860
  %add = add i64 %27, %call26, !dbg !4861
  %31 = load ptr, ptr %state, align 8, !dbg !4862
  %play_at = getelementptr inbounds %struct.ml_effect_state, ptr %31, i32 0, i32 3, !dbg !4863
  store i64 %add, ptr %play_at, align 8, !dbg !4864
  %32 = load ptr, ptr %state, align 8, !dbg !4865
  %play_at27 = getelementptr inbounds %struct.ml_effect_state, ptr %32, i32 0, i32 3, !dbg !4866
  %33 = load i64, ptr %play_at27, align 8, !dbg !4866
  %34 = load ptr, ptr %state, align 8, !dbg !4867
  %effect28 = getelementptr inbounds %struct.ml_effect_state, ptr %34, i32 0, i32 0, !dbg !4868
  %35 = load ptr, ptr %effect28, align 8, !dbg !4868
  %replay29 = getelementptr inbounds %struct.ff_effect, ptr %35, i32 0, i32 4, !dbg !4869
  %length = getelementptr inbounds %struct.ff_replay, ptr %replay29, i32 0, i32 0, !dbg !4870
  %36 = load i16, ptr %length, align 2, !dbg !4870
  %conv30 = zext i16 %36 to i32, !dbg !4867
  %call31 = call i64 @msecs_to_jiffies(i32 noundef %conv30) #18, !dbg !4871
  %add32 = add i64 %33, %call31, !dbg !4872
  %37 = load ptr, ptr %state, align 8, !dbg !4873
  %stop_at = getelementptr inbounds %struct.ml_effect_state, ptr %37, i32 0, i32 4, !dbg !4874
  store i64 %add32, ptr %stop_at, align 8, !dbg !4875
  %38 = load ptr, ptr %state, align 8, !dbg !4876
  %play_at33 = getelementptr inbounds %struct.ml_effect_state, ptr %38, i32 0, i32 3, !dbg !4877
  %39 = load i64, ptr %play_at33, align 8, !dbg !4877
  %40 = load ptr, ptr %state, align 8, !dbg !4878
  %adj_at = getelementptr inbounds %struct.ml_effect_state, ptr %40, i32 0, i32 5, !dbg !4879
  store i64 %39, ptr %adj_at, align 8, !dbg !4880
  %41 = load ptr, ptr %ml, align 8, !dbg !4881
  call void @ml_schedule_timer(ptr noundef %41) #18, !dbg !4882
  br label %if.end, !dbg !4883

if.end:                                           ; preds = %cond.end, %cond.false, %cond.true
  %42 = load ptr, ptr %dev.addr, align 8, !dbg !4884
  %event_lock34 = getelementptr inbounds %struct.input_dev, ptr %42, i32 0, i32 36, !dbg !4885
  call void @spin_unlock_irq(ptr noundef %event_lock34) #18, !dbg !4886
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #16, !dbg !4887
  call void @llvm.lifetime.end.p0(i64 8, ptr %ml) #16, !dbg !4887
  ret i32 0, !dbg !4888
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ml_ff_playback(ptr noundef %dev, i32 noundef %effect_id, i32 noundef %value) #0 align 16 !dbg !4889 {
entry:
  %dev.addr = alloca ptr, align 8
  %effect_id.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %ml = alloca ptr, align 8
  %state = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4891, metadata !DIExpression()), !dbg !4896
  store i32 %effect_id, ptr %effect_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %effect_id.addr, metadata !4892, metadata !DIExpression()), !dbg !4897
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4893, metadata !DIExpression()), !dbg !4898
  call void @llvm.lifetime.start.p0(i64 8, ptr %ml) #16, !dbg !4899
  call void @llvm.dbg.declare(metadata ptr %ml, metadata !4894, metadata !DIExpression()), !dbg !4900
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4901
  %ff = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20, !dbg !4902
  %1 = load ptr, ptr %ff, align 8, !dbg !4902
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6, !dbg !4903
  %2 = load ptr, ptr %private, align 8, !dbg !4903
  store ptr %2, ptr %ml, align 8, !dbg !4900
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #16, !dbg !4904
  call void @llvm.dbg.declare(metadata ptr %state, metadata !4895, metadata !DIExpression()), !dbg !4905
  %3 = load ptr, ptr %ml, align 8, !dbg !4906
  %states = getelementptr inbounds %struct.ml_device, ptr %3, i32 0, i32 1, !dbg !4907
  %4 = load i32, ptr %effect_id.addr, align 4, !dbg !4908
  %idxprom = sext i32 %4 to i64, !dbg !4906
  %arrayidx = getelementptr [16 x %struct.ml_effect_state], ptr %states, i64 0, i64 %idxprom, !dbg !4906
  store ptr %arrayidx, ptr %state, align 8, !dbg !4905
  %5 = load i32, ptr %value.addr, align 4, !dbg !4909
  %cmp = icmp sgt i32 %5, 0, !dbg !4911
  br i1 %cmp, label %if.then, label %if.else, !dbg !4912

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !4913
  %6 = load i32, ptr %tmp, align 4, !dbg !4917
  %7 = load ptr, ptr %state, align 8, !dbg !4918
  %flags = getelementptr inbounds %struct.ml_effect_state, ptr %7, i32 0, i32 1, !dbg !4918
  %8 = ptrtoint ptr %flags to i64, !dbg !4918
  %cmp1 = icmp ne i64 %8, 0, !dbg !4918
  %conv = zext i1 %cmp1 to i32, !dbg !4918
  %9 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4918
  br i1 %9, label %land.lhs.true, label %cond.false, !dbg !4918

land.lhs.true:                                    ; preds = %if.then
  %10 = load ptr, ptr %state, align 8, !dbg !4918
  %flags2 = getelementptr inbounds %struct.ml_effect_state, ptr %10, i32 0, i32 1, !dbg !4918
  %11 = ptrtoint ptr %flags2 to i64, !dbg !4918
  %cmp3 = icmp ne i64 %11, 0, !dbg !4918
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !4918

land.lhs.true5:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %state, align 8, !dbg !4918
  %flags6 = getelementptr inbounds %struct.ml_effect_state, ptr %12, i32 0, i32 1, !dbg !4918
  %13 = load i64, ptr %flags6, align 8, !dbg !4918
  %14 = call i1 @llvm.is.constant.i64(i64 %13), !dbg !4918
  br i1 %14, label %cond.true, label %cond.false, !dbg !4918

cond.true:                                        ; preds = %land.lhs.true5
  %15 = load ptr, ptr %state, align 8, !dbg !4918
  %flags7 = getelementptr inbounds %struct.ml_effect_state, ptr %15, i32 0, i32 1, !dbg !4918
  call void @generic___set_bit(i64 noundef 0, ptr noundef %flags7) #18, !dbg !4918
  br label %cond.end, !dbg !4918

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %if.then
  %16 = load ptr, ptr %state, align 8, !dbg !4918
  %flags8 = getelementptr inbounds %struct.ml_effect_state, ptr %16, i32 0, i32 1, !dbg !4918
  call void @___set_bit(i64 noundef 0, ptr noundef %flags8) #18, !dbg !4918
  br label %cond.end, !dbg !4918

cond.end:                                         ; preds = %cond.false, %cond.true
  %17 = load i32, ptr %value.addr, align 4, !dbg !4919
  %18 = load ptr, ptr %state, align 8, !dbg !4920
  %count = getelementptr inbounds %struct.ml_effect_state, ptr %18, i32 0, i32 2, !dbg !4921
  store i32 %17, ptr %count, align 8, !dbg !4922
  %19 = load volatile i64, ptr @jiffies, align 64, !dbg !4923
  %20 = load ptr, ptr %state, align 8, !dbg !4924
  %effect = getelementptr inbounds %struct.ml_effect_state, ptr %20, i32 0, i32 0, !dbg !4925
  %21 = load ptr, ptr %effect, align 8, !dbg !4925
  %replay = getelementptr inbounds %struct.ff_effect, ptr %21, i32 0, i32 4, !dbg !4926
  %delay = getelementptr inbounds %struct.ff_replay, ptr %replay, i32 0, i32 1, !dbg !4927
  %22 = load i16, ptr %delay, align 2, !dbg !4927
  %conv9 = zext i16 %22 to i32, !dbg !4924
  %call = call i64 @msecs_to_jiffies(i32 noundef %conv9) #18, !dbg !4928
  %add = add i64 %19, %call, !dbg !4929
  %23 = load ptr, ptr %state, align 8, !dbg !4930
  %play_at = getelementptr inbounds %struct.ml_effect_state, ptr %23, i32 0, i32 3, !dbg !4931
  store i64 %add, ptr %play_at, align 8, !dbg !4932
  %24 = load ptr, ptr %state, align 8, !dbg !4933
  %play_at10 = getelementptr inbounds %struct.ml_effect_state, ptr %24, i32 0, i32 3, !dbg !4934
  %25 = load i64, ptr %play_at10, align 8, !dbg !4934
  %26 = load ptr, ptr %state, align 8, !dbg !4935
  %effect11 = getelementptr inbounds %struct.ml_effect_state, ptr %26, i32 0, i32 0, !dbg !4936
  %27 = load ptr, ptr %effect11, align 8, !dbg !4936
  %replay12 = getelementptr inbounds %struct.ff_effect, ptr %27, i32 0, i32 4, !dbg !4937
  %length = getelementptr inbounds %struct.ff_replay, ptr %replay12, i32 0, i32 0, !dbg !4938
  %28 = load i16, ptr %length, align 2, !dbg !4938
  %conv13 = zext i16 %28 to i32, !dbg !4935
  %call14 = call i64 @msecs_to_jiffies(i32 noundef %conv13) #18, !dbg !4939
  %add15 = add i64 %25, %call14, !dbg !4940
  %29 = load ptr, ptr %state, align 8, !dbg !4941
  %stop_at = getelementptr inbounds %struct.ml_effect_state, ptr %29, i32 0, i32 4, !dbg !4942
  store i64 %add15, ptr %stop_at, align 8, !dbg !4943
  %30 = load ptr, ptr %state, align 8, !dbg !4944
  %play_at16 = getelementptr inbounds %struct.ml_effect_state, ptr %30, i32 0, i32 3, !dbg !4945
  %31 = load i64, ptr %play_at16, align 8, !dbg !4945
  %32 = load ptr, ptr %state, align 8, !dbg !4946
  %adj_at = getelementptr inbounds %struct.ml_effect_state, ptr %32, i32 0, i32 5, !dbg !4947
  store i64 %31, ptr %adj_at, align 8, !dbg !4948
  br label %if.end65, !dbg !4949

if.else:                                          ; preds = %entry
  store i32 0, ptr %tmp17, align 4, !dbg !4950
  %33 = load i32, ptr %tmp17, align 4, !dbg !4954
  %34 = load ptr, ptr %state, align 8, !dbg !4955
  %flags18 = getelementptr inbounds %struct.ml_effect_state, ptr %34, i32 0, i32 1, !dbg !4955
  %35 = ptrtoint ptr %flags18 to i64, !dbg !4955
  %cmp19 = icmp ne i64 %35, 0, !dbg !4955
  %conv20 = zext i1 %cmp19 to i32, !dbg !4955
  %36 = call i1 @llvm.is.constant.i32(i32 %conv20), !dbg !4955
  br i1 %36, label %land.lhs.true21, label %cond.false31, !dbg !4955

land.lhs.true21:                                  ; preds = %if.else
  %37 = load ptr, ptr %state, align 8, !dbg !4955
  %flags22 = getelementptr inbounds %struct.ml_effect_state, ptr %37, i32 0, i32 1, !dbg !4955
  %38 = ptrtoint ptr %flags22 to i64, !dbg !4955
  %cmp23 = icmp ne i64 %38, 0, !dbg !4955
  br i1 %cmp23, label %land.lhs.true25, label %cond.false31, !dbg !4955

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %39 = load ptr, ptr %state, align 8, !dbg !4955
  %flags26 = getelementptr inbounds %struct.ml_effect_state, ptr %39, i32 0, i32 1, !dbg !4955
  %40 = load i64, ptr %flags26, align 8, !dbg !4955
  %41 = call i1 @llvm.is.constant.i64(i64 %40), !dbg !4955
  br i1 %41, label %cond.true27, label %cond.false31, !dbg !4957

cond.true27:                                      ; preds = %land.lhs.true25
  %42 = load ptr, ptr %state, align 8, !dbg !4955
  %flags28 = getelementptr inbounds %struct.ml_effect_state, ptr %42, i32 0, i32 1, !dbg !4955
  %call29 = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %flags28) #18, !dbg !4955
  br i1 %call29, label %if.then35, label %if.else50, !dbg !4955

cond.false31:                                     ; preds = %land.lhs.true25, %land.lhs.true21, %if.else
  %43 = load ptr, ptr %state, align 8, !dbg !4955
  %flags32 = getelementptr inbounds %struct.ml_effect_state, ptr %43, i32 0, i32 1, !dbg !4955
  %call33 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %flags32) #18, !dbg !4955
  br i1 %call33, label %if.then35, label %if.else50, !dbg !4957

if.then35:                                        ; preds = %cond.false31, %cond.true27
  %44 = load ptr, ptr %state, align 8, !dbg !4958
  %flags36 = getelementptr inbounds %struct.ml_effect_state, ptr %44, i32 0, i32 1, !dbg !4958
  %45 = ptrtoint ptr %flags36 to i64, !dbg !4958
  %cmp37 = icmp ne i64 %45, 0, !dbg !4958
  %conv38 = zext i1 %cmp37 to i32, !dbg !4958
  %46 = call i1 @llvm.is.constant.i32(i32 %conv38), !dbg !4958
  br i1 %46, label %land.lhs.true39, label %cond.false47, !dbg !4958

land.lhs.true39:                                  ; preds = %if.then35
  %47 = load ptr, ptr %state, align 8, !dbg !4958
  %flags40 = getelementptr inbounds %struct.ml_effect_state, ptr %47, i32 0, i32 1, !dbg !4958
  %48 = ptrtoint ptr %flags40 to i64, !dbg !4958
  %cmp41 = icmp ne i64 %48, 0, !dbg !4958
  br i1 %cmp41, label %land.lhs.true43, label %cond.false47, !dbg !4958

land.lhs.true43:                                  ; preds = %land.lhs.true39
  %49 = load ptr, ptr %state, align 8, !dbg !4958
  %flags44 = getelementptr inbounds %struct.ml_effect_state, ptr %49, i32 0, i32 1, !dbg !4958
  %50 = load i64, ptr %flags44, align 8, !dbg !4958
  %51 = call i1 @llvm.is.constant.i64(i64 %50), !dbg !4958
  br i1 %51, label %cond.true45, label %cond.false47, !dbg !4958

cond.true45:                                      ; preds = %land.lhs.true43
  %52 = load ptr, ptr %state, align 8, !dbg !4958
  %flags46 = getelementptr inbounds %struct.ml_effect_state, ptr %52, i32 0, i32 1, !dbg !4958
  call void @generic___set_bit(i64 noundef 2, ptr noundef %flags46) #18, !dbg !4958
  br label %cond.end49, !dbg !4958

cond.false47:                                     ; preds = %land.lhs.true43, %land.lhs.true39, %if.then35
  %53 = load ptr, ptr %state, align 8, !dbg !4958
  %flags48 = getelementptr inbounds %struct.ml_effect_state, ptr %53, i32 0, i32 1, !dbg !4958
  call void @___set_bit(i64 noundef 2, ptr noundef %flags48) #18, !dbg !4958
  br label %cond.end49, !dbg !4958

cond.end49:                                       ; preds = %cond.false47, %cond.true45
  br label %if.end, !dbg !4958

if.else50:                                        ; preds = %cond.false31, %cond.true27
  %54 = load ptr, ptr %state, align 8, !dbg !4959
  %flags51 = getelementptr inbounds %struct.ml_effect_state, ptr %54, i32 0, i32 1, !dbg !4959
  %55 = ptrtoint ptr %flags51 to i64, !dbg !4959
  %cmp52 = icmp ne i64 %55, 0, !dbg !4959
  %conv53 = zext i1 %cmp52 to i32, !dbg !4959
  %56 = call i1 @llvm.is.constant.i32(i32 %conv53), !dbg !4959
  br i1 %56, label %land.lhs.true54, label %cond.false62, !dbg !4959

land.lhs.true54:                                  ; preds = %if.else50
  %57 = load ptr, ptr %state, align 8, !dbg !4959
  %flags55 = getelementptr inbounds %struct.ml_effect_state, ptr %57, i32 0, i32 1, !dbg !4959
  %58 = ptrtoint ptr %flags55 to i64, !dbg !4959
  %cmp56 = icmp ne i64 %58, 0, !dbg !4959
  br i1 %cmp56, label %land.lhs.true58, label %cond.false62, !dbg !4959

land.lhs.true58:                                  ; preds = %land.lhs.true54
  %59 = load ptr, ptr %state, align 8, !dbg !4959
  %flags59 = getelementptr inbounds %struct.ml_effect_state, ptr %59, i32 0, i32 1, !dbg !4959
  %60 = load i64, ptr %flags59, align 8, !dbg !4959
  %61 = call i1 @llvm.is.constant.i64(i64 %60), !dbg !4959
  br i1 %61, label %cond.true60, label %cond.false62, !dbg !4959

cond.true60:                                      ; preds = %land.lhs.true58
  %62 = load ptr, ptr %state, align 8, !dbg !4959
  %flags61 = getelementptr inbounds %struct.ml_effect_state, ptr %62, i32 0, i32 1, !dbg !4959
  call void @generic___clear_bit(i64 noundef 0, ptr noundef %flags61) #18, !dbg !4959
  br label %cond.end64, !dbg !4959

cond.false62:                                     ; preds = %land.lhs.true58, %land.lhs.true54, %if.else50
  %63 = load ptr, ptr %state, align 8, !dbg !4959
  %flags63 = getelementptr inbounds %struct.ml_effect_state, ptr %63, i32 0, i32 1, !dbg !4959
  call void @___clear_bit(i64 noundef 0, ptr noundef %flags63) #18, !dbg !4959
  br label %cond.end64, !dbg !4959

cond.end64:                                       ; preds = %cond.false62, %cond.true60
  br label %if.end

if.end:                                           ; preds = %cond.end64, %cond.end49
  br label %if.end65

if.end65:                                         ; preds = %if.end, %cond.end
  %64 = load ptr, ptr %ml, align 8, !dbg !4960
  call void @ml_play_effects(ptr noundef %64) #18, !dbg !4961
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #16, !dbg !4962
  call void @llvm.lifetime.end.p0(i64 8, ptr %ml) #16, !dbg !4962
  ret i32 0, !dbg !4963
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ml_ff_set_gain(ptr noundef %dev, i16 noundef zeroext %gain) #0 align 16 !dbg !4964 {
entry:
  %dev.addr = alloca ptr, align 8
  %gain.addr = alloca i16, align 2
  %ml = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4966, metadata !DIExpression()), !dbg !4970
  store i16 %gain, ptr %gain.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %gain.addr, metadata !4967, metadata !DIExpression()), !dbg !4971
  call void @llvm.lifetime.start.p0(i64 8, ptr %ml) #16, !dbg !4972
  call void @llvm.dbg.declare(metadata ptr %ml, metadata !4968, metadata !DIExpression()), !dbg !4973
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4974
  %ff = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 20, !dbg !4975
  %1 = load ptr, ptr %ff, align 8, !dbg !4975
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6, !dbg !4976
  %2 = load ptr, ptr %private, align 8, !dbg !4976
  store ptr %2, ptr %ml, align 8, !dbg !4973
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !4977
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4969, metadata !DIExpression()), !dbg !4978
  %3 = load i16, ptr %gain.addr, align 2, !dbg !4979
  %conv = zext i16 %3 to i32, !dbg !4979
  %4 = load ptr, ptr %ml, align 8, !dbg !4980
  %gain1 = getelementptr inbounds %struct.ml_device, ptr %4, i32 0, i32 2, !dbg !4981
  store i32 %conv, ptr %gain1, align 8, !dbg !4982
  store i32 0, ptr %i, align 4, !dbg !4983
  br label %for.cond, !dbg !4985

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4, !dbg !4986
  %cmp = icmp slt i32 %5, 16, !dbg !4988
  br i1 %cmp, label %for.body, label %for.end, !dbg !4989

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %ml, align 8, !dbg !4990
  %states = getelementptr inbounds %struct.ml_device, ptr %6, i32 0, i32 1, !dbg !4990
  %7 = load i32, ptr %i, align 4, !dbg !4990
  %idxprom = sext i32 %7 to i64, !dbg !4990
  %arrayidx = getelementptr [16 x %struct.ml_effect_state], ptr %states, i64 0, i64 %idxprom, !dbg !4990
  %flags = getelementptr inbounds %struct.ml_effect_state, ptr %arrayidx, i32 0, i32 1, !dbg !4990
  %8 = ptrtoint ptr %flags to i64, !dbg !4990
  %cmp3 = icmp ne i64 %8, 0, !dbg !4990
  %conv4 = zext i1 %cmp3 to i32, !dbg !4990
  %9 = call i1 @llvm.is.constant.i32(i32 %conv4), !dbg !4990
  br i1 %9, label %land.lhs.true, label %cond.false, !dbg !4990

land.lhs.true:                                    ; preds = %for.body
  %10 = load ptr, ptr %ml, align 8, !dbg !4990
  %states5 = getelementptr inbounds %struct.ml_device, ptr %10, i32 0, i32 1, !dbg !4990
  %11 = load i32, ptr %i, align 4, !dbg !4990
  %idxprom6 = sext i32 %11 to i64, !dbg !4990
  %arrayidx7 = getelementptr [16 x %struct.ml_effect_state], ptr %states5, i64 0, i64 %idxprom6, !dbg !4990
  %flags8 = getelementptr inbounds %struct.ml_effect_state, ptr %arrayidx7, i32 0, i32 1, !dbg !4990
  %12 = ptrtoint ptr %flags8 to i64, !dbg !4990
  %cmp9 = icmp ne i64 %12, 0, !dbg !4990
  br i1 %cmp9, label %land.lhs.true11, label %cond.false, !dbg !4990

land.lhs.true11:                                  ; preds = %land.lhs.true
  %13 = load ptr, ptr %ml, align 8, !dbg !4990
  %states12 = getelementptr inbounds %struct.ml_device, ptr %13, i32 0, i32 1, !dbg !4990
  %14 = load i32, ptr %i, align 4, !dbg !4990
  %idxprom13 = sext i32 %14 to i64, !dbg !4990
  %arrayidx14 = getelementptr [16 x %struct.ml_effect_state], ptr %states12, i64 0, i64 %idxprom13, !dbg !4990
  %flags15 = getelementptr inbounds %struct.ml_effect_state, ptr %arrayidx14, i32 0, i32 1, !dbg !4990
  %15 = load i64, ptr %flags15, align 8, !dbg !4990
  %16 = call i1 @llvm.is.constant.i64(i64 %15), !dbg !4990
  br i1 %16, label %cond.true, label %cond.false, !dbg !4990

cond.true:                                        ; preds = %land.lhs.true11
  %17 = load ptr, ptr %ml, align 8, !dbg !4990
  %states16 = getelementptr inbounds %struct.ml_device, ptr %17, i32 0, i32 1, !dbg !4990
  %18 = load i32, ptr %i, align 4, !dbg !4990
  %idxprom17 = sext i32 %18 to i64, !dbg !4990
  %arrayidx18 = getelementptr [16 x %struct.ml_effect_state], ptr %states16, i64 0, i64 %idxprom17, !dbg !4990
  %flags19 = getelementptr inbounds %struct.ml_effect_state, ptr %arrayidx18, i32 0, i32 1, !dbg !4990
  call void @generic___clear_bit(i64 noundef 1, ptr noundef %flags19) #18, !dbg !4990
  br label %cond.end, !dbg !4990

cond.false:                                       ; preds = %land.lhs.true11, %land.lhs.true, %for.body
  %19 = load ptr, ptr %ml, align 8, !dbg !4990
  %states20 = getelementptr inbounds %struct.ml_device, ptr %19, i32 0, i32 1, !dbg !4990
  %20 = load i32, ptr %i, align 4, !dbg !4990
  %idxprom21 = sext i32 %20 to i64, !dbg !4990
  %arrayidx22 = getelementptr [16 x %struct.ml_effect_state], ptr %states20, i64 0, i64 %idxprom21, !dbg !4990
  %flags23 = getelementptr inbounds %struct.ml_effect_state, ptr %arrayidx22, i32 0, i32 1, !dbg !4990
  call void @___clear_bit(i64 noundef 1, ptr noundef %flags23) #18, !dbg !4990
  br label %cond.end, !dbg !4990

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %for.inc, !dbg !4990

for.inc:                                          ; preds = %cond.end
  %21 = load i32, ptr %i, align 4, !dbg !4991
  %inc = add i32 %21, 1, !dbg !4991
  store i32 %inc, ptr %i, align 4, !dbg !4991
  br label %for.cond, !dbg !4992, !llvm.loop !4993

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %ml, align 8, !dbg !4995
  call void @ml_play_effects(ptr noundef %22) #18, !dbg !4996
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 8, ptr %ml) #16, !dbg !4997
  ret void, !dbg !4997
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ml_ff_destroy(ptr noundef %ff) #0 align 16 !dbg !4998 {
entry:
  %ff.addr = alloca ptr, align 8
  %ml = alloca ptr, align 8
  store ptr %ff, ptr %ff.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ff.addr, metadata !5000, metadata !DIExpression()), !dbg !5002
  call void @llvm.lifetime.start.p0(i64 8, ptr %ml) #16, !dbg !5003
  call void @llvm.dbg.declare(metadata ptr %ml, metadata !5001, metadata !DIExpression()), !dbg !5004
  %0 = load ptr, ptr %ff.addr, align 8, !dbg !5005
  %private = getelementptr inbounds %struct.ff_device, ptr %0, i32 0, i32 6, !dbg !5006
  %1 = load ptr, ptr %private, align 8, !dbg !5006
  store ptr %1, ptr %ml, align 8, !dbg !5004
  %2 = load ptr, ptr %ml, align 8, !dbg !5007
  %timer = getelementptr inbounds %struct.ml_device, ptr %2, i32 0, i32 3, !dbg !5008
  %call = call i32 @del_timer_sync(ptr noundef %timer) #18, !dbg !5009
  %3 = load ptr, ptr %ml, align 8, !dbg !5010
  %private1 = getelementptr inbounds %struct.ml_device, ptr %3, i32 0, i32 0, !dbg !5011
  %4 = load ptr, ptr %private1, align 8, !dbg !5011
  call void @kfree(ptr noundef %4) #18, !dbg !5012
  call void @llvm.lifetime.end.p0(i64 8, ptr %ml) #16, !dbg !5013
  ret void, !dbg !5013
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5014 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5021, metadata !DIExpression()), !dbg !5026
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5022, metadata !DIExpression()), !dbg !5027
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5023, metadata !DIExpression()), !dbg !5029
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5030
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5031
  %div = udiv i64 %1, 64, !dbg !5031
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5032
  store ptr %add.ptr, ptr %p, align 8, !dbg !5029
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !5033
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5024, metadata !DIExpression()), !dbg !5034
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5035
  %rem = urem i64 %2, 64, !dbg !5035
  %shl = shl i64 1, %rem, !dbg !5035
  store i64 %shl, ptr %mask, align 8, !dbg !5034
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !5036
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5025, metadata !DIExpression()), !dbg !5037
  %3 = load ptr, ptr %p, align 8, !dbg !5038
  %4 = load i64, ptr %3, align 8, !dbg !5039
  store i64 %4, ptr %val, align 8, !dbg !5037
  %5 = load i64, ptr %val, align 8, !dbg !5040
  %6 = load i64, ptr %mask, align 8, !dbg !5041
  %and = and i64 %5, %6, !dbg !5042
  %tobool = icmp ne i64 %and, 0, !dbg !5043
  %lnot = xor i1 %tobool, true, !dbg !5043
  %lnot1 = xor i1 %lnot, true, !dbg !5044
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !5045
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5045
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5045
  ret i1 %lnot1, !dbg !5046
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5047 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5050, metadata !DIExpression()), !dbg !5052
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5051, metadata !DIExpression()), !dbg !5053
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5054
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5055
  %div = udiv i64 %1, 64, !dbg !5055
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5056
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5057
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5058
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5059
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5060
  ret i1 %call, !dbg !5061
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5062 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5064, metadata !DIExpression()), !dbg !5069
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5065, metadata !DIExpression()), !dbg !5070
  %0 = load i64, ptr %size.addr, align 8, !dbg !5071
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5072
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5073

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5074
  %tobool = icmp ne i64 %2, 0, !dbg !5074
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5075

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5076
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5066, metadata !DIExpression()), !dbg !5077
  %3 = load i64, ptr %size.addr, align 8, !dbg !5078
  %cmp = icmp ugt i64 %3, 8192, !dbg !5080
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5081

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5082
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5083
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !5084
  store ptr %call, ptr %retval, align 8, !dbg !5085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5085

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5086
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !5086
  store i32 %call2, ptr %index, align 4, !dbg !5087
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5088
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5089
  %9 = ptrtoint ptr %8 to i64, !dbg !5089
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !5090
  %idxprom = zext i32 %call3 to i64, !dbg !5091
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5091
  %10 = load i32, ptr %index, align 4, !dbg !5092
  %idxprom4 = zext i32 %10 to i64, !dbg !5091
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5091
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5091
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5093
  %13 = load i64, ptr %size.addr, align 8, !dbg !5094
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5095
  store ptr %call6, ptr %retval, align 8, !dbg !5096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5096

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5097
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5098
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5099
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !5100
  store ptr %call8, ptr %retval, align 8, !dbg !5101
  br label %return, !dbg !5101

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5102
  ret ptr %16, !dbg !5102
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5103 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !5104 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5108, metadata !DIExpression()), !dbg !5110
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5109, metadata !DIExpression()), !dbg !5111
  %0 = load i64, ptr %size.addr, align 8, !dbg !5112
  %tobool = icmp ne i64 %0, 0, !dbg !5112
  br i1 %tobool, label %if.end, label %if.then, !dbg !5114

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5116
  %cmp = icmp ule i64 %1, 8, !dbg !5118
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5119

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5120
  br label %return, !dbg !5120

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5121
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5123
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5124

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5125
  %cmp4 = icmp ule i64 %3, 96, !dbg !5126
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5127

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5128
  br label %return, !dbg !5128

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5129
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5131
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5132

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5133
  %cmp9 = icmp ule i64 %5, 192, !dbg !5134
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5135

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5136
  br label %return, !dbg !5136

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5137
  %cmp12 = icmp ule i64 %6, 8, !dbg !5139
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5140

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5141
  br label %return, !dbg !5141

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5142
  %cmp15 = icmp ule i64 %7, 16, !dbg !5144
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5145

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5146
  br label %return, !dbg !5146

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5147
  %cmp18 = icmp ule i64 %8, 32, !dbg !5149
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5150

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5151
  br label %return, !dbg !5151

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5152
  %cmp21 = icmp ule i64 %9, 64, !dbg !5154
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5155

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5156
  br label %return, !dbg !5156

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5157
  %cmp24 = icmp ule i64 %10, 128, !dbg !5159
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5160

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5161
  br label %return, !dbg !5161

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5162
  %cmp27 = icmp ule i64 %11, 256, !dbg !5164
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5165

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5166
  br label %return, !dbg !5166

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5167
  %cmp30 = icmp ule i64 %12, 512, !dbg !5169
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5170

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5171
  br label %return, !dbg !5171

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5172
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5174
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5175

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5176
  br label %return, !dbg !5176

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5177
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5179
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5180

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5181
  br label %return, !dbg !5181

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5182
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5184
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5185

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5186
  br label %return, !dbg !5186

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5187
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5189
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5190

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5191
  br label %return, !dbg !5191

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5192
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5194
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5195

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5196
  br label %return, !dbg !5196

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5197
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5199
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5200

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5201
  br label %return, !dbg !5201

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5202
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5204
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5205

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5206
  br label %return, !dbg !5206

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5207
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5209
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5210

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5211
  br label %return, !dbg !5211

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5212
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5214
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5215

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5216
  br label %return, !dbg !5216

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5217
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5219
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5220

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5221
  br label %return, !dbg !5221

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5222
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5224
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5225

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5226
  br label %return, !dbg !5226

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5227
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5229
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5230

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5231
  br label %return, !dbg !5231

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5232, !range !5234, !noundef !1472
  %tobool69 = trunc i8 %25 to i1, !dbg !5232
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5235

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5236

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #20, !dbg !5237, !srcloc !5240
  unreachable, !dbg !5237

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5241

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5242

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5243

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5245

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5243

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #16, !dbg !5247, !srcloc !5249
  br label %do.end75, !dbg !5247

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5243

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5250
  br label %return, !dbg !5250

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5251
  ret i32 %26, !dbg !5251
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5252 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !5257 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5261, metadata !DIExpression()), !dbg !5263
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5262, metadata !DIExpression()), !dbg !5264
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5265
  %and = and i32 %0, 17, !dbg !5265
  %cmp = icmp eq i32 %and, 0, !dbg !5265
  %lnot = xor i1 %cmp, true, !dbg !5265
  %lnot1 = xor i1 %lnot, true, !dbg !5265
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5265
  %conv = sext i32 %lnot.ext to i64, !dbg !5265
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5265
  %tobool = icmp ne i64 %expval, 0, !dbg !5265
  br i1 %tobool, label %if.then, label %if.end, !dbg !5267

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5268
  br label %return, !dbg !5268

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5269
  %and2 = and i32 %1, 1, !dbg !5271
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5271
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5272

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5273
  br label %return, !dbg !5273

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5274
  br label %return, !dbg !5274

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5276
  ret i32 %2, !dbg !5276
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5277 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5278 dso_local void @__compiletime_assert_117() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5279 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !5284 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5290, metadata !DIExpression()), !dbg !5291
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5292
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5293
  ret ptr %1, !dbg !5294
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ml_play_effects(ptr noundef %ml) #0 align 16 !dbg !5295 {
entry:
  %ml.addr = alloca ptr, align 8
  %effect = alloca %struct.ff_effect, align 8
  %handled_bm = alloca [1 x i64], align 8
  store ptr %ml, ptr %ml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ml.addr, metadata !5299, metadata !DIExpression()), !dbg !5302
  call void @llvm.lifetime.start.p0(i64 48, ptr %effect) #16, !dbg !5303
  call void @llvm.dbg.declare(metadata ptr %effect, metadata !5300, metadata !DIExpression()), !dbg !5304
  call void @llvm.lifetime.start.p0(i64 8, ptr %handled_bm) #16, !dbg !5305
  call void @llvm.dbg.declare(metadata ptr %handled_bm, metadata !5301, metadata !DIExpression()), !dbg !5305
  %arraydecay = getelementptr inbounds [1 x i64], ptr %handled_bm, i64 0, i64 0, !dbg !5306
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay, i8 0, i64 8, i1 false), !dbg !5306
  br label %while.cond, !dbg !5307

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %ml.addr, align 8, !dbg !5308
  %arraydecay1 = getelementptr inbounds [1 x i64], ptr %handled_bm, i64 0, i64 0, !dbg !5309
  %call = call i32 @ml_get_combo_effect(ptr noundef %0, ptr noundef %arraydecay1, ptr noundef %effect) #18, !dbg !5310
  %tobool = icmp ne i32 %call, 0, !dbg !5307
  br i1 %tobool, label %while.body, label %while.end, !dbg !5307

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %ml.addr, align 8, !dbg !5311
  %play_effect = getelementptr inbounds %struct.ml_device, ptr %1, i32 0, i32 5, !dbg !5312
  %2 = load ptr, ptr %play_effect, align 8, !dbg !5312
  %3 = load ptr, ptr %ml.addr, align 8, !dbg !5313
  %dev = getelementptr inbounds %struct.ml_device, ptr %3, i32 0, i32 4, !dbg !5314
  %4 = load ptr, ptr %dev, align 8, !dbg !5314
  %5 = load ptr, ptr %ml.addr, align 8, !dbg !5315
  %private = getelementptr inbounds %struct.ml_device, ptr %5, i32 0, i32 0, !dbg !5316
  %6 = load ptr, ptr %private, align 8, !dbg !5316
  %call2 = call i32 %2(ptr noundef %4, ptr noundef %6, ptr noundef %effect) #18, !dbg !5311
  br label %while.cond, !dbg !5307, !llvm.loop !5317

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %ml.addr, align 8, !dbg !5319
  call void @ml_schedule_timer(ptr noundef %7) #18, !dbg !5320
  call void @llvm.lifetime.end.p0(i64 8, ptr %handled_bm) #16, !dbg !5321
  call void @llvm.lifetime.end.p0(i64 48, ptr %effect) #16, !dbg !5321
  ret void, !dbg !5321
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !5322 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5326, metadata !DIExpression()), !dbg !5332
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5327, metadata !DIExpression()), !dbg !5333
  br label %do.body, !dbg !5334

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5335
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5328, metadata !DIExpression()), !dbg !5335
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5335
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5331, metadata !DIExpression()), !dbg !5335
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5335
  %conv = zext i1 %cmp to i32, !dbg !5335
  store i32 1, ptr %tmp, align 4, !dbg !5335
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5336
  %0 = load i32, ptr %tmp, align 4, !dbg !5335
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5336
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5336
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5336
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #18, !dbg !5336
  br label %do.end, !dbg !5336

do.end:                                           ; preds = %do.body
  ret void, !dbg !5337
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ml_get_combo_effect(ptr noundef %ml, ptr noundef %effect_handled, ptr noundef %combo_effect) #0 align 16 !dbg !5338 {
entry:
  %ml.addr = alloca ptr, align 8
  %effect_handled.addr = alloca ptr, align 8
  %combo_effect.addr = alloca ptr, align 8
  %effect = alloca ptr, align 8
  %state = alloca ptr, align 8
  %effect_type = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %ml, ptr %ml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ml.addr, metadata !5342, metadata !DIExpression()), !dbg !5349
  store ptr %effect_handled, ptr %effect_handled.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %effect_handled.addr, metadata !5343, metadata !DIExpression()), !dbg !5350
  store ptr %combo_effect, ptr %combo_effect.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %combo_effect.addr, metadata !5344, metadata !DIExpression()), !dbg !5351
  call void @llvm.lifetime.start.p0(i64 8, ptr %effect) #16, !dbg !5352
  call void @llvm.dbg.declare(metadata ptr %effect, metadata !5345, metadata !DIExpression()), !dbg !5353
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #16, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %state, metadata !5346, metadata !DIExpression()), !dbg !5355
  call void @llvm.lifetime.start.p0(i64 4, ptr %effect_type) #16, !dbg !5356
  call void @llvm.dbg.declare(metadata ptr %effect_type, metadata !5347, metadata !DIExpression()), !dbg !5357
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5358
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5348, metadata !DIExpression()), !dbg !5359
  %0 = load ptr, ptr %combo_effect.addr, align 8, !dbg !5360
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 48, i1 false), !dbg !5361
  store i32 0, ptr %i, align 4, !dbg !5362
  br label %for.cond, !dbg !5364

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5365
  %cmp = icmp slt i32 %1, 16, !dbg !5367
  br i1 %cmp, label %for.body, label %for.end, !dbg !5368

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !5369
  %3 = call i1 @llvm.is.constant.i32(i32 %2), !dbg !5369
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !5369

land.lhs.true:                                    ; preds = %for.body
  %4 = load ptr, ptr %effect_handled.addr, align 8, !dbg !5369
  %5 = ptrtoint ptr %4 to i64, !dbg !5369
  %cmp1 = icmp ne i64 %5, 0, !dbg !5369
  %conv = zext i1 %cmp1 to i32, !dbg !5369
  %6 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5369
  br i1 %6, label %land.lhs.true2, label %cond.false, !dbg !5369

land.lhs.true2:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %effect_handled.addr, align 8, !dbg !5369
  %8 = ptrtoint ptr %7 to i64, !dbg !5369
  %cmp3 = icmp ne i64 %8, 0, !dbg !5369
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5369

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %9 = load ptr, ptr %effect_handled.addr, align 8, !dbg !5369
  %10 = load i64, ptr %9, align 8, !dbg !5369
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5369
  br i1 %11, label %cond.true, label %cond.false, !dbg !5372

cond.true:                                        ; preds = %land.lhs.true5
  %12 = load i32, ptr %i, align 4, !dbg !5369
  %conv6 = sext i32 %12 to i64, !dbg !5369
  %13 = load ptr, ptr %effect_handled.addr, align 8, !dbg !5369
  %call = call zeroext i1 @generic___test_and_set_bit(i64 noundef %conv6, ptr noundef %13) #18, !dbg !5369
  br i1 %call, label %if.then, label %if.end, !dbg !5369

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true2, %land.lhs.true, %for.body
  %14 = load i32, ptr %i, align 4, !dbg !5369
  %conv8 = sext i32 %14 to i64, !dbg !5369
  %15 = load ptr, ptr %effect_handled.addr, align 8, !dbg !5369
  %call9 = call zeroext i1 @___test_and_set_bit(i64 noundef %conv8, ptr noundef %15) #18, !dbg !5369
  br i1 %call9, label %if.then, label %if.end, !dbg !5372

if.then:                                          ; preds = %cond.false, %cond.true
  br label %for.inc, !dbg !5373

if.end:                                           ; preds = %cond.false, %cond.true
  %16 = load ptr, ptr %ml.addr, align 8, !dbg !5374
  %states = getelementptr inbounds %struct.ml_device, ptr %16, i32 0, i32 1, !dbg !5375
  %17 = load i32, ptr %i, align 4, !dbg !5376
  %idxprom = sext i32 %17 to i64, !dbg !5374
  %arrayidx = getelementptr [16 x %struct.ml_effect_state], ptr %states, i64 0, i64 %idxprom, !dbg !5374
  store ptr %arrayidx, ptr %state, align 8, !dbg !5377
  %18 = load ptr, ptr %state, align 8, !dbg !5378
  %effect11 = getelementptr inbounds %struct.ml_effect_state, ptr %18, i32 0, i32 0, !dbg !5379
  %19 = load ptr, ptr %effect11, align 8, !dbg !5379
  store ptr %19, ptr %effect, align 8, !dbg !5380
  %20 = load ptr, ptr %state, align 8, !dbg !5381
  %flags = getelementptr inbounds %struct.ml_effect_state, ptr %20, i32 0, i32 1, !dbg !5381
  %21 = ptrtoint ptr %flags to i64, !dbg !5381
  %cmp12 = icmp ne i64 %21, 0, !dbg !5381
  %conv13 = zext i1 %cmp12 to i32, !dbg !5381
  %22 = call i1 @llvm.is.constant.i32(i32 %conv13), !dbg !5381
  br i1 %22, label %land.lhs.true14, label %cond.false24, !dbg !5381

land.lhs.true14:                                  ; preds = %if.end
  %23 = load ptr, ptr %state, align 8, !dbg !5381
  %flags15 = getelementptr inbounds %struct.ml_effect_state, ptr %23, i32 0, i32 1, !dbg !5381
  %24 = ptrtoint ptr %flags15 to i64, !dbg !5381
  %cmp16 = icmp ne i64 %24, 0, !dbg !5381
  br i1 %cmp16, label %land.lhs.true18, label %cond.false24, !dbg !5381

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %25 = load ptr, ptr %state, align 8, !dbg !5381
  %flags19 = getelementptr inbounds %struct.ml_effect_state, ptr %25, i32 0, i32 1, !dbg !5381
  %26 = load i64, ptr %flags19, align 8, !dbg !5381
  %27 = call i1 @llvm.is.constant.i64(i64 %26), !dbg !5381
  br i1 %27, label %cond.true20, label %cond.false24, !dbg !5383

cond.true20:                                      ; preds = %land.lhs.true18
  %28 = load ptr, ptr %state, align 8, !dbg !5381
  %flags21 = getelementptr inbounds %struct.ml_effect_state, ptr %28, i32 0, i32 1, !dbg !5381
  %call22 = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags21) #18, !dbg !5381
  br i1 %call22, label %if.end29, label %if.then28, !dbg !5381

cond.false24:                                     ; preds = %land.lhs.true18, %land.lhs.true14, %if.end
  %29 = load ptr, ptr %state, align 8, !dbg !5381
  %flags25 = getelementptr inbounds %struct.ml_effect_state, ptr %29, i32 0, i32 1, !dbg !5381
  %call26 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags25) #18, !dbg !5381
  br i1 %call26, label %if.end29, label %if.then28, !dbg !5383

if.then28:                                        ; preds = %cond.false24, %cond.true20
  br label %for.inc, !dbg !5384

if.end29:                                         ; preds = %cond.false24, %cond.true20
  %30 = load volatile i64, ptr @jiffies, align 64, !dbg !5385
  %31 = load ptr, ptr %state, align 8, !dbg !5385
  %play_at = getelementptr inbounds %struct.ml_effect_state, ptr %31, i32 0, i32 3, !dbg !5385
  %32 = load i64, ptr %play_at, align 8, !dbg !5385
  %sub = sub i64 %30, %32, !dbg !5385
  %cmp30 = icmp slt i64 %sub, 0, !dbg !5385
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !5387

if.then32:                                        ; preds = %if.end29
  br label %for.inc, !dbg !5388

if.end33:                                         ; preds = %if.end29
  %33 = load ptr, ptr %ml.addr, align 8, !dbg !5389
  %dev = getelementptr inbounds %struct.ml_device, ptr %33, i32 0, i32 4, !dbg !5390
  %34 = load ptr, ptr %dev, align 8, !dbg !5390
  %ff = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 20, !dbg !5391
  %35 = load ptr, ptr %ff, align 8, !dbg !5391
  %36 = load ptr, ptr %effect, align 8, !dbg !5392
  %type = getelementptr inbounds %struct.ff_effect, ptr %36, i32 0, i32 0, !dbg !5393
  %37 = load i16, ptr %type, align 8, !dbg !5393
  %conv34 = zext i16 %37 to i32, !dbg !5392
  %call35 = call i32 @get_compatible_type(ptr noundef %35, i32 noundef %conv34) #18, !dbg !5394
  store i32 %call35, ptr %effect_type, align 4, !dbg !5395
  %38 = load ptr, ptr %combo_effect.addr, align 8, !dbg !5396
  %type36 = getelementptr inbounds %struct.ff_effect, ptr %38, i32 0, i32 0, !dbg !5398
  %39 = load i16, ptr %type36, align 8, !dbg !5398
  %conv37 = zext i16 %39 to i32, !dbg !5396
  %40 = load i32, ptr %effect_type, align 4, !dbg !5399
  %cmp38 = icmp ne i32 %conv37, %40, !dbg !5400
  br i1 %cmp38, label %if.then40, label %if.end60, !dbg !5401

if.then40:                                        ; preds = %if.end33
  %41 = load ptr, ptr %combo_effect.addr, align 8, !dbg !5402
  %type41 = getelementptr inbounds %struct.ff_effect, ptr %41, i32 0, i32 0, !dbg !5405
  %42 = load i16, ptr %type41, align 8, !dbg !5405
  %conv42 = zext i16 %42 to i32, !dbg !5402
  %cmp43 = icmp ne i32 %conv42, 0, !dbg !5406
  br i1 %cmp43, label %if.then45, label %if.end57, !dbg !5407

if.then45:                                        ; preds = %if.then40
  %43 = load i32, ptr %i, align 4, !dbg !5408
  %44 = call i1 @llvm.is.constant.i32(i32 %43), !dbg !5408
  br i1 %44, label %land.lhs.true46, label %cond.false55, !dbg !5408

land.lhs.true46:                                  ; preds = %if.then45
  %45 = load ptr, ptr %effect_handled.addr, align 8, !dbg !5408
  %46 = ptrtoint ptr %45 to i64, !dbg !5408
  %cmp47 = icmp ne i64 %46, 0, !dbg !5408
  %conv48 = zext i1 %cmp47 to i32, !dbg !5408
  %47 = call i1 @llvm.is.constant.i32(i32 %conv48), !dbg !5408
  br i1 %47, label %land.lhs.true49, label %cond.false55, !dbg !5408

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %48 = load ptr, ptr %effect_handled.addr, align 8, !dbg !5408
  %49 = ptrtoint ptr %48 to i64, !dbg !5408
  %cmp50 = icmp ne i64 %49, 0, !dbg !5408
  br i1 %cmp50, label %land.lhs.true52, label %cond.false55, !dbg !5408

land.lhs.true52:                                  ; preds = %land.lhs.true49
  %50 = load ptr, ptr %effect_handled.addr, align 8, !dbg !5408
  %51 = load i64, ptr %50, align 8, !dbg !5408
  %52 = call i1 @llvm.is.constant.i64(i64 %51), !dbg !5408
  br i1 %52, label %cond.true53, label %cond.false55, !dbg !5408

cond.true53:                                      ; preds = %land.lhs.true52
  %53 = load i32, ptr %i, align 4, !dbg !5408
  %conv54 = sext i32 %53 to i64, !dbg !5408
  %54 = load ptr, ptr %effect_handled.addr, align 8, !dbg !5408
  call void @generic___clear_bit(i64 noundef %conv54, ptr noundef %54) #18, !dbg !5408
  br label %cond.end, !dbg !5408

cond.false55:                                     ; preds = %land.lhs.true52, %land.lhs.true49, %land.lhs.true46, %if.then45
  %55 = load i32, ptr %i, align 4, !dbg !5408
  %conv56 = sext i32 %55 to i64, !dbg !5408
  %56 = load ptr, ptr %effect_handled.addr, align 8, !dbg !5408
  call void @___clear_bit(i64 noundef %conv56, ptr noundef %56) #18, !dbg !5408
  br label %cond.end, !dbg !5408

cond.end:                                         ; preds = %cond.false55, %cond.true53
  br label %for.inc, !dbg !5410

if.end57:                                         ; preds = %if.then40
  %57 = load i32, ptr %effect_type, align 4, !dbg !5411
  %conv58 = trunc i32 %57 to i16, !dbg !5411
  %58 = load ptr, ptr %combo_effect.addr, align 8, !dbg !5412
  %type59 = getelementptr inbounds %struct.ff_effect, ptr %58, i32 0, i32 0, !dbg !5413
  store i16 %conv58, ptr %type59, align 8, !dbg !5414
  br label %if.end60, !dbg !5415

if.end60:                                         ; preds = %if.end57, %if.end33
  %59 = load ptr, ptr %state, align 8, !dbg !5416
  %flags61 = getelementptr inbounds %struct.ml_effect_state, ptr %59, i32 0, i32 1, !dbg !5416
  %60 = ptrtoint ptr %flags61 to i64, !dbg !5416
  %cmp62 = icmp ne i64 %60, 0, !dbg !5416
  %conv63 = zext i1 %cmp62 to i32, !dbg !5416
  %61 = call i1 @llvm.is.constant.i32(i32 %conv63), !dbg !5416
  br i1 %61, label %land.lhs.true64, label %cond.false74, !dbg !5416

land.lhs.true64:                                  ; preds = %if.end60
  %62 = load ptr, ptr %state, align 8, !dbg !5416
  %flags65 = getelementptr inbounds %struct.ml_effect_state, ptr %62, i32 0, i32 1, !dbg !5416
  %63 = ptrtoint ptr %flags65 to i64, !dbg !5416
  %cmp66 = icmp ne i64 %63, 0, !dbg !5416
  br i1 %cmp66, label %land.lhs.true68, label %cond.false74, !dbg !5416

land.lhs.true68:                                  ; preds = %land.lhs.true64
  %64 = load ptr, ptr %state, align 8, !dbg !5416
  %flags69 = getelementptr inbounds %struct.ml_effect_state, ptr %64, i32 0, i32 1, !dbg !5416
  %65 = load i64, ptr %flags69, align 8, !dbg !5416
  %66 = call i1 @llvm.is.constant.i64(i64 %65), !dbg !5416
  br i1 %66, label %cond.true70, label %cond.false74, !dbg !5418

cond.true70:                                      ; preds = %land.lhs.true68
  %67 = load ptr, ptr %state, align 8, !dbg !5416
  %flags71 = getelementptr inbounds %struct.ml_effect_state, ptr %67, i32 0, i32 1, !dbg !5416
  %call72 = call zeroext i1 @generic___test_and_clear_bit(i64 noundef 2, ptr noundef %flags71) #18, !dbg !5416
  br i1 %call72, label %if.then78, label %if.else, !dbg !5416

cond.false74:                                     ; preds = %land.lhs.true68, %land.lhs.true64, %if.end60
  %68 = load ptr, ptr %state, align 8, !dbg !5416
  %flags75 = getelementptr inbounds %struct.ml_effect_state, ptr %68, i32 0, i32 1, !dbg !5416
  %call76 = call zeroext i1 @___test_and_clear_bit(i64 noundef 2, ptr noundef %flags75) #18, !dbg !5416
  br i1 %call76, label %if.then78, label %if.else, !dbg !5418

if.then78:                                        ; preds = %cond.false74, %cond.true70
  %69 = load ptr, ptr %state, align 8, !dbg !5419
  %flags79 = getelementptr inbounds %struct.ml_effect_state, ptr %69, i32 0, i32 1, !dbg !5419
  %70 = ptrtoint ptr %flags79 to i64, !dbg !5419
  %cmp80 = icmp ne i64 %70, 0, !dbg !5419
  %conv81 = zext i1 %cmp80 to i32, !dbg !5419
  %71 = call i1 @llvm.is.constant.i32(i32 %conv81), !dbg !5419
  br i1 %71, label %land.lhs.true82, label %cond.false90, !dbg !5419

land.lhs.true82:                                  ; preds = %if.then78
  %72 = load ptr, ptr %state, align 8, !dbg !5419
  %flags83 = getelementptr inbounds %struct.ml_effect_state, ptr %72, i32 0, i32 1, !dbg !5419
  %73 = ptrtoint ptr %flags83 to i64, !dbg !5419
  %cmp84 = icmp ne i64 %73, 0, !dbg !5419
  br i1 %cmp84, label %land.lhs.true86, label %cond.false90, !dbg !5419

land.lhs.true86:                                  ; preds = %land.lhs.true82
  %74 = load ptr, ptr %state, align 8, !dbg !5419
  %flags87 = getelementptr inbounds %struct.ml_effect_state, ptr %74, i32 0, i32 1, !dbg !5419
  %75 = load i64, ptr %flags87, align 8, !dbg !5419
  %76 = call i1 @llvm.is.constant.i64(i64 %75), !dbg !5419
  br i1 %76, label %cond.true88, label %cond.false90, !dbg !5419

cond.true88:                                      ; preds = %land.lhs.true86
  %77 = load ptr, ptr %state, align 8, !dbg !5419
  %flags89 = getelementptr inbounds %struct.ml_effect_state, ptr %77, i32 0, i32 1, !dbg !5419
  call void @generic___clear_bit(i64 noundef 1, ptr noundef %flags89) #18, !dbg !5419
  br label %cond.end92, !dbg !5419

cond.false90:                                     ; preds = %land.lhs.true86, %land.lhs.true82, %if.then78
  %78 = load ptr, ptr %state, align 8, !dbg !5419
  %flags91 = getelementptr inbounds %struct.ml_effect_state, ptr %78, i32 0, i32 1, !dbg !5419
  call void @___clear_bit(i64 noundef 1, ptr noundef %flags91) #18, !dbg !5419
  br label %cond.end92, !dbg !5419

cond.end92:                                       ; preds = %cond.false90, %cond.true88
  %79 = load ptr, ptr %state, align 8, !dbg !5421
  %flags93 = getelementptr inbounds %struct.ml_effect_state, ptr %79, i32 0, i32 1, !dbg !5421
  %80 = ptrtoint ptr %flags93 to i64, !dbg !5421
  %cmp94 = icmp ne i64 %80, 0, !dbg !5421
  %conv95 = zext i1 %cmp94 to i32, !dbg !5421
  %81 = call i1 @llvm.is.constant.i32(i32 %conv95), !dbg !5421
  br i1 %81, label %land.lhs.true96, label %cond.false104, !dbg !5421

land.lhs.true96:                                  ; preds = %cond.end92
  %82 = load ptr, ptr %state, align 8, !dbg !5421
  %flags97 = getelementptr inbounds %struct.ml_effect_state, ptr %82, i32 0, i32 1, !dbg !5421
  %83 = ptrtoint ptr %flags97 to i64, !dbg !5421
  %cmp98 = icmp ne i64 %83, 0, !dbg !5421
  br i1 %cmp98, label %land.lhs.true100, label %cond.false104, !dbg !5421

land.lhs.true100:                                 ; preds = %land.lhs.true96
  %84 = load ptr, ptr %state, align 8, !dbg !5421
  %flags101 = getelementptr inbounds %struct.ml_effect_state, ptr %84, i32 0, i32 1, !dbg !5421
  %85 = load i64, ptr %flags101, align 8, !dbg !5421
  %86 = call i1 @llvm.is.constant.i64(i64 %85), !dbg !5421
  br i1 %86, label %cond.true102, label %cond.false104, !dbg !5421

cond.true102:                                     ; preds = %land.lhs.true100
  %87 = load ptr, ptr %state, align 8, !dbg !5421
  %flags103 = getelementptr inbounds %struct.ml_effect_state, ptr %87, i32 0, i32 1, !dbg !5421
  call void @generic___clear_bit(i64 noundef 0, ptr noundef %flags103) #18, !dbg !5421
  br label %cond.end106, !dbg !5421

cond.false104:                                    ; preds = %land.lhs.true100, %land.lhs.true96, %cond.end92
  %88 = load ptr, ptr %state, align 8, !dbg !5421
  %flags105 = getelementptr inbounds %struct.ml_effect_state, ptr %88, i32 0, i32 1, !dbg !5421
  call void @___clear_bit(i64 noundef 0, ptr noundef %flags105) #18, !dbg !5421
  br label %cond.end106, !dbg !5421

cond.end106:                                      ; preds = %cond.false104, %cond.true102
  br label %if.end173, !dbg !5422

if.else:                                          ; preds = %cond.false74, %cond.true70
  %89 = load ptr, ptr %effect, align 8, !dbg !5423
  %replay = getelementptr inbounds %struct.ff_effect, ptr %89, i32 0, i32 4, !dbg !5425
  %length = getelementptr inbounds %struct.ff_replay, ptr %replay, i32 0, i32 0, !dbg !5426
  %90 = load i16, ptr %length, align 2, !dbg !5426
  %conv107 = zext i16 %90 to i32, !dbg !5423
  %tobool = icmp ne i32 %conv107, 0, !dbg !5423
  br i1 %tobool, label %land.lhs.true108, label %if.else157, !dbg !5427

land.lhs.true108:                                 ; preds = %if.else
  %91 = load volatile i64, ptr @jiffies, align 64, !dbg !5428
  %92 = load ptr, ptr %state, align 8, !dbg !5428
  %stop_at = getelementptr inbounds %struct.ml_effect_state, ptr %92, i32 0, i32 4, !dbg !5428
  %93 = load i64, ptr %stop_at, align 8, !dbg !5428
  %sub109 = sub i64 %91, %93, !dbg !5428
  %cmp110 = icmp sge i64 %sub109, 0, !dbg !5428
  br i1 %cmp110, label %if.then112, label %if.else157, !dbg !5429

if.then112:                                       ; preds = %land.lhs.true108
  %94 = load ptr, ptr %state, align 8, !dbg !5430
  %flags113 = getelementptr inbounds %struct.ml_effect_state, ptr %94, i32 0, i32 1, !dbg !5430
  %95 = ptrtoint ptr %flags113 to i64, !dbg !5430
  %cmp114 = icmp ne i64 %95, 0, !dbg !5430
  %conv115 = zext i1 %cmp114 to i32, !dbg !5430
  %96 = call i1 @llvm.is.constant.i32(i32 %conv115), !dbg !5430
  br i1 %96, label %land.lhs.true116, label %cond.false124, !dbg !5430

land.lhs.true116:                                 ; preds = %if.then112
  %97 = load ptr, ptr %state, align 8, !dbg !5430
  %flags117 = getelementptr inbounds %struct.ml_effect_state, ptr %97, i32 0, i32 1, !dbg !5430
  %98 = ptrtoint ptr %flags117 to i64, !dbg !5430
  %cmp118 = icmp ne i64 %98, 0, !dbg !5430
  br i1 %cmp118, label %land.lhs.true120, label %cond.false124, !dbg !5430

land.lhs.true120:                                 ; preds = %land.lhs.true116
  %99 = load ptr, ptr %state, align 8, !dbg !5430
  %flags121 = getelementptr inbounds %struct.ml_effect_state, ptr %99, i32 0, i32 1, !dbg !5430
  %100 = load i64, ptr %flags121, align 8, !dbg !5430
  %101 = call i1 @llvm.is.constant.i64(i64 %100), !dbg !5430
  br i1 %101, label %cond.true122, label %cond.false124, !dbg !5430

cond.true122:                                     ; preds = %land.lhs.true120
  %102 = load ptr, ptr %state, align 8, !dbg !5430
  %flags123 = getelementptr inbounds %struct.ml_effect_state, ptr %102, i32 0, i32 1, !dbg !5430
  call void @generic___clear_bit(i64 noundef 1, ptr noundef %flags123) #18, !dbg !5430
  br label %cond.end126, !dbg !5430

cond.false124:                                    ; preds = %land.lhs.true120, %land.lhs.true116, %if.then112
  %103 = load ptr, ptr %state, align 8, !dbg !5430
  %flags125 = getelementptr inbounds %struct.ml_effect_state, ptr %103, i32 0, i32 1, !dbg !5430
  call void @___clear_bit(i64 noundef 1, ptr noundef %flags125) #18, !dbg !5430
  br label %cond.end126, !dbg !5430

cond.end126:                                      ; preds = %cond.false124, %cond.true122
  %104 = load ptr, ptr %state, align 8, !dbg !5432
  %count = getelementptr inbounds %struct.ml_effect_state, ptr %104, i32 0, i32 2, !dbg !5434
  %105 = load i32, ptr %count, align 8, !dbg !5435
  %dec = add i32 %105, -1, !dbg !5435
  store i32 %dec, ptr %count, align 8, !dbg !5435
  %cmp127 = icmp sle i32 %dec, 0, !dbg !5436
  br i1 %cmp127, label %if.then129, label %if.else144, !dbg !5437

if.then129:                                       ; preds = %cond.end126
  %106 = load ptr, ptr %state, align 8, !dbg !5438
  %flags130 = getelementptr inbounds %struct.ml_effect_state, ptr %106, i32 0, i32 1, !dbg !5438
  %107 = ptrtoint ptr %flags130 to i64, !dbg !5438
  %cmp131 = icmp ne i64 %107, 0, !dbg !5438
  %conv132 = zext i1 %cmp131 to i32, !dbg !5438
  %108 = call i1 @llvm.is.constant.i32(i32 %conv132), !dbg !5438
  br i1 %108, label %land.lhs.true133, label %cond.false141, !dbg !5438

land.lhs.true133:                                 ; preds = %if.then129
  %109 = load ptr, ptr %state, align 8, !dbg !5438
  %flags134 = getelementptr inbounds %struct.ml_effect_state, ptr %109, i32 0, i32 1, !dbg !5438
  %110 = ptrtoint ptr %flags134 to i64, !dbg !5438
  %cmp135 = icmp ne i64 %110, 0, !dbg !5438
  br i1 %cmp135, label %land.lhs.true137, label %cond.false141, !dbg !5438

land.lhs.true137:                                 ; preds = %land.lhs.true133
  %111 = load ptr, ptr %state, align 8, !dbg !5438
  %flags138 = getelementptr inbounds %struct.ml_effect_state, ptr %111, i32 0, i32 1, !dbg !5438
  %112 = load i64, ptr %flags138, align 8, !dbg !5438
  %113 = call i1 @llvm.is.constant.i64(i64 %112), !dbg !5438
  br i1 %113, label %cond.true139, label %cond.false141, !dbg !5438

cond.true139:                                     ; preds = %land.lhs.true137
  %114 = load ptr, ptr %state, align 8, !dbg !5438
  %flags140 = getelementptr inbounds %struct.ml_effect_state, ptr %114, i32 0, i32 1, !dbg !5438
  call void @generic___clear_bit(i64 noundef 0, ptr noundef %flags140) #18, !dbg !5438
  br label %cond.end143, !dbg !5438

cond.false141:                                    ; preds = %land.lhs.true137, %land.lhs.true133, %if.then129
  %115 = load ptr, ptr %state, align 8, !dbg !5438
  %flags142 = getelementptr inbounds %struct.ml_effect_state, ptr %115, i32 0, i32 1, !dbg !5438
  call void @___clear_bit(i64 noundef 0, ptr noundef %flags142) #18, !dbg !5438
  br label %cond.end143, !dbg !5438

cond.end143:                                      ; preds = %cond.false141, %cond.true139
  br label %if.end156, !dbg !5440

if.else144:                                       ; preds = %cond.end126
  %116 = load volatile i64, ptr @jiffies, align 64, !dbg !5441
  %117 = load ptr, ptr %effect, align 8, !dbg !5443
  %replay145 = getelementptr inbounds %struct.ff_effect, ptr %117, i32 0, i32 4, !dbg !5444
  %delay = getelementptr inbounds %struct.ff_replay, ptr %replay145, i32 0, i32 1, !dbg !5445
  %118 = load i16, ptr %delay, align 2, !dbg !5445
  %conv146 = zext i16 %118 to i32, !dbg !5443
  %call147 = call i64 @msecs_to_jiffies(i32 noundef %conv146) #18, !dbg !5446
  %add = add i64 %116, %call147, !dbg !5447
  %119 = load ptr, ptr %state, align 8, !dbg !5448
  %play_at148 = getelementptr inbounds %struct.ml_effect_state, ptr %119, i32 0, i32 3, !dbg !5449
  store i64 %add, ptr %play_at148, align 8, !dbg !5450
  %120 = load ptr, ptr %state, align 8, !dbg !5451
  %play_at149 = getelementptr inbounds %struct.ml_effect_state, ptr %120, i32 0, i32 3, !dbg !5452
  %121 = load i64, ptr %play_at149, align 8, !dbg !5452
  %122 = load ptr, ptr %effect, align 8, !dbg !5453
  %replay150 = getelementptr inbounds %struct.ff_effect, ptr %122, i32 0, i32 4, !dbg !5454
  %length151 = getelementptr inbounds %struct.ff_replay, ptr %replay150, i32 0, i32 0, !dbg !5455
  %123 = load i16, ptr %length151, align 2, !dbg !5455
  %conv152 = zext i16 %123 to i32, !dbg !5453
  %call153 = call i64 @msecs_to_jiffies(i32 noundef %conv152) #18, !dbg !5456
  %add154 = add i64 %121, %call153, !dbg !5457
  %124 = load ptr, ptr %state, align 8, !dbg !5458
  %stop_at155 = getelementptr inbounds %struct.ml_effect_state, ptr %124, i32 0, i32 4, !dbg !5459
  store i64 %add154, ptr %stop_at155, align 8, !dbg !5460
  br label %if.end156

if.end156:                                        ; preds = %if.else144, %cond.end143
  br label %if.end172, !dbg !5461

if.else157:                                       ; preds = %land.lhs.true108, %if.else
  %125 = load ptr, ptr %state, align 8, !dbg !5462
  %flags158 = getelementptr inbounds %struct.ml_effect_state, ptr %125, i32 0, i32 1, !dbg !5462
  %126 = ptrtoint ptr %flags158 to i64, !dbg !5462
  %cmp159 = icmp ne i64 %126, 0, !dbg !5462
  %conv160 = zext i1 %cmp159 to i32, !dbg !5462
  %127 = call i1 @llvm.is.constant.i32(i32 %conv160), !dbg !5462
  br i1 %127, label %land.lhs.true161, label %cond.false169, !dbg !5462

land.lhs.true161:                                 ; preds = %if.else157
  %128 = load ptr, ptr %state, align 8, !dbg !5462
  %flags162 = getelementptr inbounds %struct.ml_effect_state, ptr %128, i32 0, i32 1, !dbg !5462
  %129 = ptrtoint ptr %flags162 to i64, !dbg !5462
  %cmp163 = icmp ne i64 %129, 0, !dbg !5462
  br i1 %cmp163, label %land.lhs.true165, label %cond.false169, !dbg !5462

land.lhs.true165:                                 ; preds = %land.lhs.true161
  %130 = load ptr, ptr %state, align 8, !dbg !5462
  %flags166 = getelementptr inbounds %struct.ml_effect_state, ptr %130, i32 0, i32 1, !dbg !5462
  %131 = load i64, ptr %flags166, align 8, !dbg !5462
  %132 = call i1 @llvm.is.constant.i64(i64 %131), !dbg !5462
  br i1 %132, label %cond.true167, label %cond.false169, !dbg !5462

cond.true167:                                     ; preds = %land.lhs.true165
  %133 = load ptr, ptr %state, align 8, !dbg !5462
  %flags168 = getelementptr inbounds %struct.ml_effect_state, ptr %133, i32 0, i32 1, !dbg !5462
  call void @generic___set_bit(i64 noundef 1, ptr noundef %flags168) #18, !dbg !5462
  br label %cond.end171, !dbg !5462

cond.false169:                                    ; preds = %land.lhs.true165, %land.lhs.true161, %if.else157
  %134 = load ptr, ptr %state, align 8, !dbg !5462
  %flags170 = getelementptr inbounds %struct.ml_effect_state, ptr %134, i32 0, i32 1, !dbg !5462
  call void @___set_bit(i64 noundef 1, ptr noundef %flags170) #18, !dbg !5462
  br label %cond.end171, !dbg !5462

cond.end171:                                      ; preds = %cond.false169, %cond.true167
  %135 = load volatile i64, ptr @jiffies, align 64, !dbg !5464
  %136 = load ptr, ptr %state, align 8, !dbg !5465
  %adj_at = getelementptr inbounds %struct.ml_effect_state, ptr %136, i32 0, i32 5, !dbg !5466
  store i64 %135, ptr %adj_at, align 8, !dbg !5467
  %137 = load ptr, ptr %combo_effect.addr, align 8, !dbg !5468
  %138 = load ptr, ptr %state, align 8, !dbg !5469
  %139 = load ptr, ptr %ml.addr, align 8, !dbg !5470
  %gain = getelementptr inbounds %struct.ml_device, ptr %139, i32 0, i32 2, !dbg !5471
  %140 = load i32, ptr %gain, align 8, !dbg !5471
  call void @ml_combine_effects(ptr noundef %137, ptr noundef %138, i32 noundef %140) #18, !dbg !5472
  br label %if.end172

if.end172:                                        ; preds = %cond.end171, %if.end156
  br label %if.end173

if.end173:                                        ; preds = %if.end172, %cond.end106
  br label %for.inc, !dbg !5473

for.inc:                                          ; preds = %if.end173, %cond.end, %if.then32, %if.then28, %if.then
  %141 = load i32, ptr %i, align 4, !dbg !5474
  %inc = add i32 %141, 1, !dbg !5474
  store i32 %inc, ptr %i, align 4, !dbg !5474
  br label %for.cond, !dbg !5475, !llvm.loop !5476

for.end:                                          ; preds = %for.cond
  %142 = load ptr, ptr %combo_effect.addr, align 8, !dbg !5478
  %type174 = getelementptr inbounds %struct.ff_effect, ptr %142, i32 0, i32 0, !dbg !5479
  %143 = load i16, ptr %type174, align 8, !dbg !5479
  %conv175 = zext i16 %143 to i32, !dbg !5478
  %cmp176 = icmp ne i32 %conv175, 0, !dbg !5480
  %conv177 = zext i1 %cmp176 to i32, !dbg !5480
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5481
  call void @llvm.lifetime.end.p0(i64 4, ptr %effect_type) #16, !dbg !5481
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #16, !dbg !5481
  call void @llvm.lifetime.end.p0(i64 8, ptr %effect) #16, !dbg !5481
  ret i32 %conv177, !dbg !5482
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ml_schedule_timer(ptr noundef %ml) #0 align 16 !dbg !5483 {
entry:
  %ml.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %now = alloca i64, align 8
  %earliest = alloca i64, align 8
  %next_at = alloca i64, align 8
  %events = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp44 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  store ptr %ml, ptr %ml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ml.addr, metadata !5485, metadata !DIExpression()), !dbg !5492
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #16, !dbg !5493
  call void @llvm.dbg.declare(metadata ptr %state, metadata !5486, metadata !DIExpression()), !dbg !5494
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #16, !dbg !5495
  call void @llvm.dbg.declare(metadata ptr %now, metadata !5487, metadata !DIExpression()), !dbg !5496
  %0 = load volatile i64, ptr @jiffies, align 64, !dbg !5497
  store i64 %0, ptr %now, align 8, !dbg !5496
  call void @llvm.lifetime.start.p0(i64 8, ptr %earliest) #16, !dbg !5498
  call void @llvm.dbg.declare(metadata ptr %earliest, metadata !5488, metadata !DIExpression()), !dbg !5499
  store i64 0, ptr %earliest, align 8, !dbg !5499
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_at) #16, !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %next_at, metadata !5489, metadata !DIExpression()), !dbg !5501
  call void @llvm.lifetime.start.p0(i64 4, ptr %events) #16, !dbg !5502
  call void @llvm.dbg.declare(metadata ptr %events, metadata !5490, metadata !DIExpression()), !dbg !5503
  store i32 0, ptr %events, align 4, !dbg !5503
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5504
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5491, metadata !DIExpression()), !dbg !5505
  store i32 0, ptr %tmp, align 4, !dbg !5506
  %1 = load i32, ptr %tmp, align 4, !dbg !5509
  store i32 0, ptr %i, align 4, !dbg !5510
  br label %for.cond, !dbg !5512

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !5513
  %cmp = icmp slt i32 %2, 16, !dbg !5515
  br i1 %cmp, label %for.body, label %for.end, !dbg !5516

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %ml.addr, align 8, !dbg !5517
  %states = getelementptr inbounds %struct.ml_device, ptr %3, i32 0, i32 1, !dbg !5519
  %4 = load i32, ptr %i, align 4, !dbg !5520
  %idxprom = sext i32 %4 to i64, !dbg !5517
  %arrayidx = getelementptr [16 x %struct.ml_effect_state], ptr %states, i64 0, i64 %idxprom, !dbg !5517
  store ptr %arrayidx, ptr %state, align 8, !dbg !5521
  %5 = load ptr, ptr %state, align 8, !dbg !5522
  %flags = getelementptr inbounds %struct.ml_effect_state, ptr %5, i32 0, i32 1, !dbg !5522
  %6 = ptrtoint ptr %flags to i64, !dbg !5522
  %cmp1 = icmp ne i64 %6, 0, !dbg !5522
  %conv = zext i1 %cmp1 to i32, !dbg !5522
  %7 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5522
  br i1 %7, label %land.lhs.true, label %cond.false, !dbg !5522

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %state, align 8, !dbg !5522
  %flags2 = getelementptr inbounds %struct.ml_effect_state, ptr %8, i32 0, i32 1, !dbg !5522
  %9 = ptrtoint ptr %flags2 to i64, !dbg !5522
  %cmp3 = icmp ne i64 %9, 0, !dbg !5522
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !5522

land.lhs.true5:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %state, align 8, !dbg !5522
  %flags6 = getelementptr inbounds %struct.ml_effect_state, ptr %10, i32 0, i32 1, !dbg !5522
  %11 = load i64, ptr %flags6, align 8, !dbg !5522
  %12 = call i1 @llvm.is.constant.i64(i64 %11), !dbg !5522
  br i1 %12, label %cond.true, label %cond.false, !dbg !5524

cond.true:                                        ; preds = %land.lhs.true5
  %13 = load ptr, ptr %state, align 8, !dbg !5522
  %flags7 = getelementptr inbounds %struct.ml_effect_state, ptr %13, i32 0, i32 1, !dbg !5522
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags7) #18, !dbg !5522
  br i1 %call, label %if.end, label %if.then, !dbg !5522

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %for.body
  %14 = load ptr, ptr %state, align 8, !dbg !5522
  %flags9 = getelementptr inbounds %struct.ml_effect_state, ptr %14, i32 0, i32 1, !dbg !5522
  %call10 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags9) #18, !dbg !5522
  br i1 %call10, label %if.end, label %if.then, !dbg !5524

if.then:                                          ; preds = %cond.false, %cond.true
  br label %for.inc, !dbg !5525

if.end:                                           ; preds = %cond.false, %cond.true
  %15 = load ptr, ptr %state, align 8, !dbg !5526
  %flags12 = getelementptr inbounds %struct.ml_effect_state, ptr %15, i32 0, i32 1, !dbg !5526
  %16 = ptrtoint ptr %flags12 to i64, !dbg !5526
  %cmp13 = icmp ne i64 %16, 0, !dbg !5526
  %conv14 = zext i1 %cmp13 to i32, !dbg !5526
  %17 = call i1 @llvm.is.constant.i32(i32 %conv14), !dbg !5526
  br i1 %17, label %land.lhs.true15, label %cond.false25, !dbg !5526

land.lhs.true15:                                  ; preds = %if.end
  %18 = load ptr, ptr %state, align 8, !dbg !5526
  %flags16 = getelementptr inbounds %struct.ml_effect_state, ptr %18, i32 0, i32 1, !dbg !5526
  %19 = ptrtoint ptr %flags16 to i64, !dbg !5526
  %cmp17 = icmp ne i64 %19, 0, !dbg !5526
  br i1 %cmp17, label %land.lhs.true19, label %cond.false25, !dbg !5526

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %20 = load ptr, ptr %state, align 8, !dbg !5526
  %flags20 = getelementptr inbounds %struct.ml_effect_state, ptr %20, i32 0, i32 1, !dbg !5526
  %21 = load i64, ptr %flags20, align 8, !dbg !5526
  %22 = call i1 @llvm.is.constant.i64(i64 %21), !dbg !5526
  br i1 %22, label %cond.true21, label %cond.false25, !dbg !5528

cond.true21:                                      ; preds = %land.lhs.true19
  %23 = load ptr, ptr %state, align 8, !dbg !5526
  %flags22 = getelementptr inbounds %struct.ml_effect_state, ptr %23, i32 0, i32 1, !dbg !5526
  %call23 = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %flags22) #18, !dbg !5526
  br i1 %call23, label %if.then29, label %if.else, !dbg !5526

cond.false25:                                     ; preds = %land.lhs.true19, %land.lhs.true15, %if.end
  %24 = load ptr, ptr %state, align 8, !dbg !5526
  %flags26 = getelementptr inbounds %struct.ml_effect_state, ptr %24, i32 0, i32 1, !dbg !5526
  %call27 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %flags26) #18, !dbg !5526
  br i1 %call27, label %if.then29, label %if.else, !dbg !5528

if.then29:                                        ; preds = %cond.false25, %cond.true21
  %25 = load ptr, ptr %state, align 8, !dbg !5529
  %call30 = call i64 @calculate_next_time(ptr noundef %25) #18, !dbg !5530
  store i64 %call30, ptr %next_at, align 8, !dbg !5531
  br label %if.end31, !dbg !5532

if.else:                                          ; preds = %cond.false25, %cond.true21
  %26 = load ptr, ptr %state, align 8, !dbg !5533
  %play_at = getelementptr inbounds %struct.ml_effect_state, ptr %26, i32 0, i32 3, !dbg !5534
  %27 = load i64, ptr %play_at, align 8, !dbg !5534
  store i64 %27, ptr %next_at, align 8, !dbg !5535
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then29
  %28 = load i64, ptr %next_at, align 8, !dbg !5536
  %29 = load i64, ptr %now, align 8, !dbg !5536
  %sub = sub i64 %28, %29, !dbg !5536
  %cmp32 = icmp sge i64 %sub, 0, !dbg !5536
  br i1 %cmp32, label %land.lhs.true34, label %if.end41, !dbg !5538

land.lhs.true34:                                  ; preds = %if.end31
  %30 = load i32, ptr %events, align 4, !dbg !5539
  %inc = add i32 %30, 1, !dbg !5539
  store i32 %inc, ptr %events, align 4, !dbg !5539
  %cmp35 = icmp eq i32 %inc, 1, !dbg !5540
  br i1 %cmp35, label %if.then40, label %lor.lhs.false, !dbg !5541

lor.lhs.false:                                    ; preds = %land.lhs.true34
  %31 = load i64, ptr %next_at, align 8, !dbg !5542
  %32 = load i64, ptr %earliest, align 8, !dbg !5542
  %sub37 = sub i64 %31, %32, !dbg !5542
  %cmp38 = icmp slt i64 %sub37, 0, !dbg !5542
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !5543

if.then40:                                        ; preds = %lor.lhs.false, %land.lhs.true34
  %33 = load i64, ptr %next_at, align 8, !dbg !5544
  store i64 %33, ptr %earliest, align 8, !dbg !5545
  br label %if.end41, !dbg !5546

if.end41:                                         ; preds = %if.then40, %lor.lhs.false, %if.end31
  br label %for.inc, !dbg !5547

for.inc:                                          ; preds = %if.end41, %if.then
  %34 = load i32, ptr %i, align 4, !dbg !5548
  %inc42 = add i32 %34, 1, !dbg !5548
  store i32 %inc42, ptr %i, align 4, !dbg !5548
  br label %for.cond, !dbg !5549, !llvm.loop !5550

for.end:                                          ; preds = %for.cond
  %35 = load i32, ptr %events, align 4, !dbg !5552
  %tobool = icmp ne i32 %35, 0, !dbg !5552
  br i1 %tobool, label %if.else46, label %if.then43, !dbg !5554

if.then43:                                        ; preds = %for.end
  store i32 0, ptr %tmp44, align 4, !dbg !5555
  %36 = load i32, ptr %tmp44, align 4, !dbg !5559
  %37 = load ptr, ptr %ml.addr, align 8, !dbg !5560
  %timer = getelementptr inbounds %struct.ml_device, ptr %37, i32 0, i32 3, !dbg !5561
  %call45 = call i32 @del_timer(ptr noundef %timer) #18, !dbg !5562
  br label %if.end50, !dbg !5563

if.else46:                                        ; preds = %for.end
  store i32 0, ptr %tmp47, align 4, !dbg !5564
  %38 = load i32, ptr %tmp47, align 4, !dbg !5568
  %39 = load ptr, ptr %ml.addr, align 8, !dbg !5569
  %timer48 = getelementptr inbounds %struct.ml_device, ptr %39, i32 0, i32 3, !dbg !5570
  %40 = load i64, ptr %earliest, align 8, !dbg !5571
  %call49 = call i32 @mod_timer(ptr noundef %timer48, i64 noundef %40) #18, !dbg !5572
  br label %if.end50

if.end50:                                         ; preds = %if.else46, %if.then43
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5573
  call void @llvm.lifetime.end.p0(i64 4, ptr %events) #16, !dbg !5573
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_at) #16, !dbg !5573
  call void @llvm.lifetime.end.p0(i64 8, ptr %earliest) #16, !dbg !5573
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #16, !dbg !5573
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #16, !dbg !5573
  ret void, !dbg !5573
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @generic___test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5574 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  %old = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5578, metadata !DIExpression()), !dbg !5583
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5579, metadata !DIExpression()), !dbg !5584
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !5585
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5580, metadata !DIExpression()), !dbg !5586
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5587
  %rem = urem i64 %0, 64, !dbg !5587
  %shl = shl i64 1, %rem, !dbg !5587
  store i64 %shl, ptr %mask, align 8, !dbg !5586
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5588
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5581, metadata !DIExpression()), !dbg !5589
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5590
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5591
  %div = udiv i64 %2, 64, !dbg !5591
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5592
  store ptr %add.ptr, ptr %p, align 8, !dbg !5589
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #16, !dbg !5593
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5582, metadata !DIExpression()), !dbg !5594
  %3 = load ptr, ptr %p, align 8, !dbg !5595
  %4 = load i64, ptr %3, align 8, !dbg !5596
  store i64 %4, ptr %old, align 8, !dbg !5594
  %5 = load i64, ptr %old, align 8, !dbg !5597
  %6 = load i64, ptr %mask, align 8, !dbg !5598
  %or = or i64 %5, %6, !dbg !5599
  %7 = load ptr, ptr %p, align 8, !dbg !5600
  store i64 %or, ptr %7, align 8, !dbg !5601
  %8 = load i64, ptr %old, align 8, !dbg !5602
  %9 = load i64, ptr %mask, align 8, !dbg !5603
  %and = and i64 %8, %9, !dbg !5604
  %cmp = icmp ne i64 %and, 0, !dbg !5605
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #16, !dbg !5606
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5606
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5606
  ret i1 %cmp, !dbg !5607
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @___test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5608 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5610, metadata !DIExpression()), !dbg !5612
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5611, metadata !DIExpression()), !dbg !5613
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5614
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5615
  call void @__instrument_read_write_bitop(i64 noundef %0, ptr noundef %1) #18, !dbg !5616
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5617
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5618
  %call = call zeroext i1 @arch___test_and_set_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5619
  ret i1 %call, !dbg !5620
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_compatible_type(ptr noundef %ff, i32 noundef %effect_type) #0 align 16 !dbg !5621 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca ptr, align 8
  %effect_type.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %ff, ptr %ff.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ff.addr, metadata !5625, metadata !DIExpression()), !dbg !5627
  store i32 %effect_type, ptr %effect_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %effect_type.addr, metadata !5626, metadata !DIExpression()), !dbg !5628
  %0 = load i32, ptr %effect_type.addr, align 4, !dbg !5629
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5629
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5629

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ff.addr, align 8, !dbg !5629
  %ffbit = getelementptr inbounds %struct.ff_device, ptr %2, i32 0, i32 7, !dbg !5629
  %arraydecay = getelementptr inbounds [2 x i64], ptr %ffbit, i64 0, i64 0, !dbg !5629
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !5629
  %cmp = icmp ne i64 %3, 0, !dbg !5629
  %conv = zext i1 %cmp to i32, !dbg !5629
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5629
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !5629

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ff.addr, align 8, !dbg !5629
  %ffbit2 = getelementptr inbounds %struct.ff_device, ptr %5, i32 0, i32 7, !dbg !5629
  %arraydecay3 = getelementptr inbounds [2 x i64], ptr %ffbit2, i64 0, i64 0, !dbg !5629
  %6 = ptrtoint ptr %arraydecay3 to i64, !dbg !5629
  %cmp4 = icmp ne i64 %6, 0, !dbg !5629
  br i1 %cmp4, label %land.lhs.true6, label %cond.false, !dbg !5629

land.lhs.true6:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ff.addr, align 8, !dbg !5629
  %ffbit7 = getelementptr inbounds %struct.ff_device, ptr %7, i32 0, i32 7, !dbg !5629
  %arraydecay8 = getelementptr inbounds [2 x i64], ptr %ffbit7, i64 0, i64 0, !dbg !5629
  %8 = load i64, ptr %arraydecay8, align 8, !dbg !5629
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !5629
  br i1 %9, label %cond.true, label %cond.false, !dbg !5631

cond.true:                                        ; preds = %land.lhs.true6
  %10 = load i32, ptr %effect_type.addr, align 4, !dbg !5629
  %conv9 = sext i32 %10 to i64, !dbg !5629
  %11 = load ptr, ptr %ff.addr, align 8, !dbg !5629
  %ffbit10 = getelementptr inbounds %struct.ff_device, ptr %11, i32 0, i32 7, !dbg !5629
  %arraydecay11 = getelementptr inbounds [2 x i64], ptr %ffbit10, i64 0, i64 0, !dbg !5629
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv9, ptr noundef %arraydecay11) #18, !dbg !5629
  br i1 %call, label %if.then, label %if.end, !dbg !5629

cond.false:                                       ; preds = %land.lhs.true6, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %effect_type.addr, align 4, !dbg !5629
  %conv13 = sext i32 %12 to i64, !dbg !5629
  %13 = load ptr, ptr %ff.addr, align 8, !dbg !5629
  %ffbit14 = getelementptr inbounds %struct.ff_device, ptr %13, i32 0, i32 7, !dbg !5629
  %arraydecay15 = getelementptr inbounds [2 x i64], ptr %ffbit14, i64 0, i64 0, !dbg !5629
  %call16 = call zeroext i1 @_test_bit(i64 noundef %conv13, ptr noundef %arraydecay15) #18, !dbg !5629
  br i1 %call16, label %if.then, label %if.end, !dbg !5631

if.then:                                          ; preds = %cond.false, %cond.true
  %14 = load i32, ptr %effect_type.addr, align 4, !dbg !5632
  store i32 %14, ptr %retval, align 4, !dbg !5633
  br label %return, !dbg !5633

if.end:                                           ; preds = %cond.false, %cond.true
  %15 = load i32, ptr %effect_type.addr, align 4, !dbg !5634
  %cmp18 = icmp eq i32 %15, 81, !dbg !5636
  br i1 %cmp18, label %land.lhs.true20, label %if.end44, !dbg !5637

land.lhs.true20:                                  ; preds = %if.end
  %16 = load ptr, ptr %ff.addr, align 8, !dbg !5638
  %ffbit21 = getelementptr inbounds %struct.ff_device, ptr %16, i32 0, i32 7, !dbg !5638
  %arraydecay22 = getelementptr inbounds [2 x i64], ptr %ffbit21, i64 0, i64 0, !dbg !5638
  %17 = ptrtoint ptr %arraydecay22 to i64, !dbg !5638
  %cmp23 = icmp ne i64 %17, 0, !dbg !5638
  %conv24 = zext i1 %cmp23 to i32, !dbg !5638
  %18 = call i1 @llvm.is.constant.i32(i32 %conv24), !dbg !5638
  br i1 %18, label %land.lhs.true25, label %cond.false38, !dbg !5638

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %19 = load ptr, ptr %ff.addr, align 8, !dbg !5638
  %ffbit26 = getelementptr inbounds %struct.ff_device, ptr %19, i32 0, i32 7, !dbg !5638
  %arraydecay27 = getelementptr inbounds [2 x i64], ptr %ffbit26, i64 0, i64 0, !dbg !5638
  %20 = ptrtoint ptr %arraydecay27 to i64, !dbg !5638
  %cmp28 = icmp ne i64 %20, 0, !dbg !5638
  br i1 %cmp28, label %land.lhs.true30, label %cond.false38, !dbg !5638

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %21 = load ptr, ptr %ff.addr, align 8, !dbg !5638
  %ffbit31 = getelementptr inbounds %struct.ff_device, ptr %21, i32 0, i32 7, !dbg !5638
  %arraydecay32 = getelementptr inbounds [2 x i64], ptr %ffbit31, i64 0, i64 0, !dbg !5638
  %22 = load i64, ptr %arraydecay32, align 8, !dbg !5638
  %23 = call i1 @llvm.is.constant.i64(i64 %22), !dbg !5638
  br i1 %23, label %cond.true33, label %cond.false38, !dbg !5639

cond.true33:                                      ; preds = %land.lhs.true30
  %24 = load ptr, ptr %ff.addr, align 8, !dbg !5638
  %ffbit34 = getelementptr inbounds %struct.ff_device, ptr %24, i32 0, i32 7, !dbg !5638
  %arraydecay35 = getelementptr inbounds [2 x i64], ptr %ffbit34, i64 0, i64 0, !dbg !5638
  %call36 = call zeroext i1 @const_test_bit(i64 noundef 80, ptr noundef %arraydecay35) #18, !dbg !5638
  br i1 %call36, label %if.then43, label %if.end44, !dbg !5638

cond.false38:                                     ; preds = %land.lhs.true30, %land.lhs.true25, %land.lhs.true20
  %25 = load ptr, ptr %ff.addr, align 8, !dbg !5638
  %ffbit39 = getelementptr inbounds %struct.ff_device, ptr %25, i32 0, i32 7, !dbg !5638
  %arraydecay40 = getelementptr inbounds [2 x i64], ptr %ffbit39, i64 0, i64 0, !dbg !5638
  %call41 = call zeroext i1 @_test_bit(i64 noundef 80, ptr noundef %arraydecay40) #18, !dbg !5638
  br i1 %call41, label %if.then43, label %if.end44, !dbg !5639

if.then43:                                        ; preds = %cond.false38, %cond.true33
  store i32 80, ptr %retval, align 4, !dbg !5640
  br label %return, !dbg !5640

if.end44:                                         ; preds = %cond.false38, %cond.true33, %if.end
  br label %do.body, !dbg !5641

do.body:                                          ; preds = %if.end44
  br label %do.end, !dbg !5643

do.end:                                           ; preds = %do.body
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #21, !dbg !5641
  store i32 %call45, ptr %tmp, align 4, !dbg !5643
  %26 = load i32, ptr %tmp, align 4, !dbg !5641
  store i32 0, ptr %retval, align 4, !dbg !5645
  br label %return, !dbg !5645

return:                                           ; preds = %do.end, %if.then43, %if.then
  %27 = load i32, ptr %retval, align 4, !dbg !5646
  ret i32 %27, !dbg !5646
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5647 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5651, metadata !DIExpression()), !dbg !5655
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5652, metadata !DIExpression()), !dbg !5656
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !5657
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5653, metadata !DIExpression()), !dbg !5658
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5659
  %rem = urem i64 %0, 64, !dbg !5659
  %shl = shl i64 1, %rem, !dbg !5659
  store i64 %shl, ptr %mask, align 8, !dbg !5658
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5660
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5654, metadata !DIExpression()), !dbg !5661
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5662
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5663
  %div = udiv i64 %2, 64, !dbg !5663
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5664
  store ptr %add.ptr, ptr %p, align 8, !dbg !5661
  %3 = load i64, ptr %mask, align 8, !dbg !5665
  %not = xor i64 %3, -1, !dbg !5666
  %4 = load ptr, ptr %p, align 8, !dbg !5667
  %5 = load i64, ptr %4, align 8, !dbg !5668
  %and = and i64 %5, %not, !dbg !5668
  store i64 %and, ptr %4, align 8, !dbg !5668
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5669
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5669
  ret void, !dbg !5669
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5670 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5672, metadata !DIExpression()), !dbg !5674
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5673, metadata !DIExpression()), !dbg !5675
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5676
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5677
  %div = udiv i64 %1, 64, !dbg !5677
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5678
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5679
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5680
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5681
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5682
  ret void, !dbg !5683
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @generic___test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5684 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  %old = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5686, metadata !DIExpression()), !dbg !5691
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5687, metadata !DIExpression()), !dbg !5692
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !5693
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5688, metadata !DIExpression()), !dbg !5694
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5695
  %rem = urem i64 %0, 64, !dbg !5695
  %shl = shl i64 1, %rem, !dbg !5695
  store i64 %shl, ptr %mask, align 8, !dbg !5694
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5696
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5689, metadata !DIExpression()), !dbg !5697
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5698
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5699
  %div = udiv i64 %2, 64, !dbg !5699
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5700
  store ptr %add.ptr, ptr %p, align 8, !dbg !5697
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #16, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5690, metadata !DIExpression()), !dbg !5702
  %3 = load ptr, ptr %p, align 8, !dbg !5703
  %4 = load i64, ptr %3, align 8, !dbg !5704
  store i64 %4, ptr %old, align 8, !dbg !5702
  %5 = load i64, ptr %old, align 8, !dbg !5705
  %6 = load i64, ptr %mask, align 8, !dbg !5706
  %not = xor i64 %6, -1, !dbg !5707
  %and = and i64 %5, %not, !dbg !5708
  %7 = load ptr, ptr %p, align 8, !dbg !5709
  store i64 %and, ptr %7, align 8, !dbg !5710
  %8 = load i64, ptr %old, align 8, !dbg !5711
  %9 = load i64, ptr %mask, align 8, !dbg !5712
  %and1 = and i64 %8, %9, !dbg !5713
  %cmp = icmp ne i64 %and1, 0, !dbg !5714
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #16, !dbg !5715
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5715
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5715
  ret i1 %cmp, !dbg !5716
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @___test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5717 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5719, metadata !DIExpression()), !dbg !5721
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5720, metadata !DIExpression()), !dbg !5722
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5723
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5724
  call void @__instrument_read_write_bitop(i64 noundef %0, ptr noundef %1) #18, !dbg !5725
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5726
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5727
  %call = call zeroext i1 @arch___test_and_clear_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5728
  ret i1 %call, !dbg !5729
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #5 align 16 !dbg !5730 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5735, metadata !DIExpression()), !dbg !5736
  %0 = load i32, ptr %m.addr, align 4, !dbg !5737
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5739
  br i1 %1, label %if.then, label %if.else, !dbg !5740

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !5741
  %cmp = icmp slt i32 %2, 0, !dbg !5744
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5745

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !5746
  br label %return, !dbg !5746

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !5747
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #18, !dbg !5748
  store i64 %call, ptr %retval, align 8, !dbg !5749
  br label %return, !dbg !5749

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !5750
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #18, !dbg !5752
  store i64 %call2, ptr %retval, align 8, !dbg !5753
  br label %return, !dbg !5753

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !5754
  ret i64 %5, !dbg !5754
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5755 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5757, metadata !DIExpression()), !dbg !5761
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5758, metadata !DIExpression()), !dbg !5762
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !5763
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5759, metadata !DIExpression()), !dbg !5764
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5765
  %rem = urem i64 %0, 64, !dbg !5765
  %shl = shl i64 1, %rem, !dbg !5765
  store i64 %shl, ptr %mask, align 8, !dbg !5764
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5766
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5760, metadata !DIExpression()), !dbg !5767
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5768
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5769
  %div = udiv i64 %2, 64, !dbg !5769
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !5770
  store ptr %add.ptr, ptr %p, align 8, !dbg !5767
  %3 = load i64, ptr %mask, align 8, !dbg !5771
  %4 = load ptr, ptr %p, align 8, !dbg !5772
  %5 = load i64, ptr %4, align 8, !dbg !5773
  %or = or i64 %5, %3, !dbg !5773
  store i64 %or, ptr %4, align 8, !dbg !5773
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !5774
  ret void, !dbg !5774
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5775 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5777, metadata !DIExpression()), !dbg !5779
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5778, metadata !DIExpression()), !dbg !5780
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5781
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5782
  %div = udiv i64 %1, 64, !dbg !5782
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5783
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5784
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5785
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5786
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5787
  ret void, !dbg !5788
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ml_combine_effects(ptr noundef %effect, ptr noundef %state, i32 noundef %gain) #0 align 16 !dbg !5789 {
entry:
  %effect.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %gain.addr = alloca i32, align 4
  %new = alloca ptr, align 8
  %strong = alloca i32, align 4
  %weak = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %level = alloca i16, align 2
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___val275 = alloca i32, align 4
  %__UNIQUE_ID___lo276 = alloca i32, align 4
  %__UNIQUE_ID___hi277 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %__UNIQUE_ID___val278 = alloca i32, align 4
  %__UNIQUE_ID___lo279 = alloca i32, align 4
  %__UNIQUE_ID___hi280 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %__UNIQUE_ID___x281 = alloca i32, align 4
  %__UNIQUE_ID___y282 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  %__UNIQUE_ID___x283 = alloca i32, align 4
  %__UNIQUE_ID___y284 = alloca i32, align 4
  %tmp109 = alloca i32, align 4
  %__x = alloca i16, align 2
  %tmp121 = alloca i32, align 4
  %__UNIQUE_ID___x285 = alloca i32, align 4
  %__UNIQUE_ID___y286 = alloca i32, align 4
  %tmp157 = alloca i32, align 4
  %__UNIQUE_ID___x287 = alloca i32, align 4
  %__UNIQUE_ID___y288 = alloca i32, align 4
  %tmp171 = alloca i32, align 4
  %tmp181 = alloca i32, align 4
  store ptr %effect, ptr %effect.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %effect.addr, metadata !5793, metadata !DIExpression()), !dbg !5828
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !5794, metadata !DIExpression()), !dbg !5829
  store i32 %gain, ptr %gain.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gain.addr, metadata !5795, metadata !DIExpression()), !dbg !5830
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #16, !dbg !5831
  call void @llvm.dbg.declare(metadata ptr %new, metadata !5796, metadata !DIExpression()), !dbg !5832
  %0 = load ptr, ptr %state.addr, align 8, !dbg !5833
  %effect1 = getelementptr inbounds %struct.ml_effect_state, ptr %0, i32 0, i32 0, !dbg !5834
  %1 = load ptr, ptr %effect1, align 8, !dbg !5834
  store ptr %1, ptr %new, align 8, !dbg !5832
  call void @llvm.lifetime.start.p0(i64 4, ptr %strong) #16, !dbg !5835
  call void @llvm.dbg.declare(metadata ptr %strong, metadata !5797, metadata !DIExpression()), !dbg !5836
  call void @llvm.lifetime.start.p0(i64 4, ptr %weak) #16, !dbg !5835
  call void @llvm.dbg.declare(metadata ptr %weak, metadata !5798, metadata !DIExpression()), !dbg !5837
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5835
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5799, metadata !DIExpression()), !dbg !5838
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #16, !dbg !5839
  call void @llvm.dbg.declare(metadata ptr %x, metadata !5800, metadata !DIExpression()), !dbg !5840
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #16, !dbg !5839
  call void @llvm.dbg.declare(metadata ptr %y, metadata !5801, metadata !DIExpression()), !dbg !5841
  call void @llvm.lifetime.start.p0(i64 2, ptr %level) #16, !dbg !5842
  call void @llvm.dbg.declare(metadata ptr %level, metadata !5802, metadata !DIExpression()), !dbg !5843
  %2 = load ptr, ptr %new, align 8, !dbg !5844
  %type = getelementptr inbounds %struct.ff_effect, ptr %2, i32 0, i32 0, !dbg !5845
  %3 = load i16, ptr %type, align 8, !dbg !5845
  %conv = zext i16 %3 to i32, !dbg !5844
  switch i32 %conv, label %sw.default [
    i32 82, label %sw.bb
    i32 80, label %sw.bb55
    i32 81, label %sw.bb119
  ], !dbg !5846

sw.bb:                                            ; preds = %entry
  %4 = load ptr, ptr %new, align 8, !dbg !5847
  %direction = getelementptr inbounds %struct.ff_effect, ptr %4, i32 0, i32 2, !dbg !5848
  %5 = load i16, ptr %direction, align 4, !dbg !5848
  %conv2 = zext i16 %5 to i32, !dbg !5847
  %mul = mul i32 %conv2, 360, !dbg !5849
  %div = sdiv i32 %mul, 65535, !dbg !5850
  store i32 %div, ptr %i, align 4, !dbg !5851
  %6 = load ptr, ptr %state.addr, align 8, !dbg !5852
  %7 = load ptr, ptr %new, align 8, !dbg !5853
  %u = getelementptr inbounds %struct.ff_effect, ptr %7, i32 0, i32 5, !dbg !5854
  %level3 = getelementptr inbounds %struct.ff_constant_effect, ptr %u, i32 0, i32 0, !dbg !5855
  %8 = load i16, ptr %level3, align 8, !dbg !5855
  %conv4 = sext i16 %8 to i32, !dbg !5853
  %9 = load ptr, ptr %new, align 8, !dbg !5856
  %u5 = getelementptr inbounds %struct.ff_effect, ptr %9, i32 0, i32 5, !dbg !5857
  %envelope = getelementptr inbounds %struct.ff_constant_effect, ptr %u5, i32 0, i32 1, !dbg !5858
  %call = call i32 @apply_envelope(ptr noundef %6, i32 noundef %conv4, ptr noundef %envelope) #18, !dbg !5859
  %conv6 = trunc i32 %call to i16, !dbg !5859
  %call7 = call signext i16 @fixp_new16(i16 noundef signext %conv6) #18, !dbg !5860
  store i16 %call7, ptr %level, align 2, !dbg !5861
  %10 = load i32, ptr %i, align 4, !dbg !5862
  %call8 = call i32 @fixp_sin32(i32 noundef %10) #18, !dbg !5862
  %shr = ashr i32 %call8, 16, !dbg !5862
  %conv9 = trunc i32 %shr to i16, !dbg !5862
  %11 = load i16, ptr %level, align 2, !dbg !5863
  %call10 = call signext i16 @fixp_mult(i16 noundef signext %conv9, i16 noundef signext %11) #18, !dbg !5864
  %conv11 = sext i16 %call10 to i32, !dbg !5864
  %12 = load i32, ptr %gain.addr, align 4, !dbg !5865
  %mul12 = mul i32 %conv11, %12, !dbg !5866
  %div13 = sdiv i32 %mul12, 65535, !dbg !5867
  store i32 %div13, ptr %x, align 4, !dbg !5868
  %13 = load i32, ptr %i, align 4, !dbg !5869
  %add = add i32 %13, 90, !dbg !5869
  %call14 = call i32 @fixp_sin32(i32 noundef %add) #18, !dbg !5869
  %shr15 = ashr i32 %call14, 16, !dbg !5869
  %sub = sub i32 0, %shr15, !dbg !5870
  %conv16 = trunc i32 %sub to i16, !dbg !5870
  %14 = load i16, ptr %level, align 2, !dbg !5871
  %call17 = call signext i16 @fixp_mult(i16 noundef signext %conv16, i16 noundef signext %14) #18, !dbg !5872
  %conv18 = sext i16 %call17 to i32, !dbg !5872
  %15 = load i32, ptr %gain.addr, align 4, !dbg !5873
  %mul19 = mul i32 %conv18, %15, !dbg !5874
  %div20 = sdiv i32 %mul19, 65535, !dbg !5875
  store i32 %div20, ptr %y, align 4, !dbg !5876
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___val275) #16, !dbg !5877
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val275, metadata !5803, metadata !DIExpression()), !dbg !5877
  %16 = load ptr, ptr %effect.addr, align 8, !dbg !5877
  %u21 = getelementptr inbounds %struct.ff_effect, ptr %16, i32 0, i32 5, !dbg !5877
  %start_level = getelementptr inbounds %struct.ff_ramp_effect, ptr %u21, i32 0, i32 0, !dbg !5877
  %17 = load i16, ptr %start_level, align 8, !dbg !5877
  %conv22 = sext i16 %17 to i32, !dbg !5877
  %18 = load i32, ptr %x, align 4, !dbg !5877
  %add23 = add i32 %conv22, %18, !dbg !5877
  store i32 %add23, ptr %__UNIQUE_ID___val275, align 4, !dbg !5877
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo276) #16, !dbg !5877
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo276, metadata !5807, metadata !DIExpression()), !dbg !5877
  store i32 -128, ptr %__UNIQUE_ID___lo276, align 4, !dbg !5877
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi277) #16, !dbg !5877
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi277, metadata !5808, metadata !DIExpression()), !dbg !5877
  store i32 127, ptr %__UNIQUE_ID___hi277, align 4, !dbg !5877
  %19 = load i32, ptr %__UNIQUE_ID___val275, align 4, !dbg !5877
  %20 = load i32, ptr %__UNIQUE_ID___hi277, align 4, !dbg !5877
  %cmp = icmp sge i32 %19, %20, !dbg !5877
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5877

cond.true:                                        ; preds = %sw.bb
  %21 = load i32, ptr %__UNIQUE_ID___hi277, align 4, !dbg !5877
  br label %cond.end30, !dbg !5877

cond.false:                                       ; preds = %sw.bb
  %22 = load i32, ptr %__UNIQUE_ID___val275, align 4, !dbg !5877
  %23 = load i32, ptr %__UNIQUE_ID___lo276, align 4, !dbg !5877
  %cmp26 = icmp sle i32 %22, %23, !dbg !5877
  br i1 %cmp26, label %cond.true28, label %cond.false29, !dbg !5877

cond.true28:                                      ; preds = %cond.false
  %24 = load i32, ptr %__UNIQUE_ID___lo276, align 4, !dbg !5877
  br label %cond.end, !dbg !5877

cond.false29:                                     ; preds = %cond.false
  %25 = load i32, ptr %__UNIQUE_ID___val275, align 4, !dbg !5877
  br label %cond.end, !dbg !5877

cond.end:                                         ; preds = %cond.false29, %cond.true28
  %cond = phi i32 [ %24, %cond.true28 ], [ %25, %cond.false29 ], !dbg !5877
  br label %cond.end30, !dbg !5877

cond.end30:                                       ; preds = %cond.end, %cond.true
  %cond31 = phi i32 [ %21, %cond.true ], [ %cond, %cond.end ], !dbg !5877
  store i32 %cond31, ptr %tmp24, align 4, !dbg !5877
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi277) #16, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo276) #16, !dbg !5878
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___val275) #16, !dbg !5878
  %26 = load i32, ptr %tmp24, align 4, !dbg !5877
  store i32 %26, ptr %tmp, align 4, !dbg !5879
  %27 = load i32, ptr %tmp, align 4, !dbg !5878
  %conv32 = trunc i32 %27 to i16, !dbg !5879
  %28 = load ptr, ptr %effect.addr, align 8, !dbg !5880
  %u33 = getelementptr inbounds %struct.ff_effect, ptr %28, i32 0, i32 5, !dbg !5881
  %start_level34 = getelementptr inbounds %struct.ff_ramp_effect, ptr %u33, i32 0, i32 0, !dbg !5882
  store i16 %conv32, ptr %start_level34, align 8, !dbg !5883
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___val278) #16, !dbg !5884
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val278, metadata !5809, metadata !DIExpression()), !dbg !5884
  %29 = load ptr, ptr %effect.addr, align 8, !dbg !5884
  %u36 = getelementptr inbounds %struct.ff_effect, ptr %29, i32 0, i32 5, !dbg !5884
  %end_level = getelementptr inbounds %struct.ff_ramp_effect, ptr %u36, i32 0, i32 1, !dbg !5884
  %30 = load i16, ptr %end_level, align 2, !dbg !5884
  %conv37 = sext i16 %30 to i32, !dbg !5884
  %31 = load i32, ptr %y, align 4, !dbg !5884
  %add38 = add i32 %conv37, %31, !dbg !5884
  store i32 %add38, ptr %__UNIQUE_ID___val278, align 4, !dbg !5884
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo279) #16, !dbg !5884
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo279, metadata !5812, metadata !DIExpression()), !dbg !5884
  store i32 -128, ptr %__UNIQUE_ID___lo279, align 4, !dbg !5884
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi280) #16, !dbg !5884
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi280, metadata !5813, metadata !DIExpression()), !dbg !5884
  store i32 127, ptr %__UNIQUE_ID___hi280, align 4, !dbg !5884
  %32 = load i32, ptr %__UNIQUE_ID___val278, align 4, !dbg !5884
  %33 = load i32, ptr %__UNIQUE_ID___hi280, align 4, !dbg !5884
  %cmp40 = icmp sge i32 %32, %33, !dbg !5884
  br i1 %cmp40, label %cond.true42, label %cond.false43, !dbg !5884

cond.true42:                                      ; preds = %cond.end30
  %34 = load i32, ptr %__UNIQUE_ID___hi280, align 4, !dbg !5884
  br label %cond.end50, !dbg !5884

cond.false43:                                     ; preds = %cond.end30
  %35 = load i32, ptr %__UNIQUE_ID___val278, align 4, !dbg !5884
  %36 = load i32, ptr %__UNIQUE_ID___lo279, align 4, !dbg !5884
  %cmp44 = icmp sle i32 %35, %36, !dbg !5884
  br i1 %cmp44, label %cond.true46, label %cond.false47, !dbg !5884

cond.true46:                                      ; preds = %cond.false43
  %37 = load i32, ptr %__UNIQUE_ID___lo279, align 4, !dbg !5884
  br label %cond.end48, !dbg !5884

cond.false47:                                     ; preds = %cond.false43
  %38 = load i32, ptr %__UNIQUE_ID___val278, align 4, !dbg !5884
  br label %cond.end48, !dbg !5884

cond.end48:                                       ; preds = %cond.false47, %cond.true46
  %cond49 = phi i32 [ %37, %cond.true46 ], [ %38, %cond.false47 ], !dbg !5884
  br label %cond.end50, !dbg !5884

cond.end50:                                       ; preds = %cond.end48, %cond.true42
  %cond51 = phi i32 [ %34, %cond.true42 ], [ %cond49, %cond.end48 ], !dbg !5884
  store i32 %cond51, ptr %tmp39, align 4, !dbg !5884
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi280) #16, !dbg !5885
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo279) #16, !dbg !5885
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___val278) #16, !dbg !5885
  %39 = load i32, ptr %tmp39, align 4, !dbg !5884
  store i32 %39, ptr %tmp35, align 4, !dbg !5886
  %40 = load i32, ptr %tmp35, align 4, !dbg !5885
  %conv52 = trunc i32 %40 to i16, !dbg !5886
  %41 = load ptr, ptr %effect.addr, align 8, !dbg !5887
  %u53 = getelementptr inbounds %struct.ff_effect, ptr %41, i32 0, i32 5, !dbg !5888
  %end_level54 = getelementptr inbounds %struct.ff_ramp_effect, ptr %u53, i32 0, i32 1, !dbg !5889
  store i16 %conv52, ptr %end_level54, align 2, !dbg !5890
  br label %sw.epilog, !dbg !5891

sw.bb55:                                          ; preds = %entry
  %42 = load ptr, ptr %new, align 8, !dbg !5892
  %u56 = getelementptr inbounds %struct.ff_effect, ptr %42, i32 0, i32 5, !dbg !5893
  %strong_magnitude = getelementptr inbounds %struct.ff_rumble_effect, ptr %u56, i32 0, i32 0, !dbg !5894
  %43 = load i16, ptr %strong_magnitude, align 8, !dbg !5894
  %conv57 = zext i16 %43 to i32, !dbg !5895
  %44 = load i32, ptr %gain.addr, align 4, !dbg !5896
  %mul58 = mul i32 %conv57, %44, !dbg !5897
  %div59 = udiv i32 %mul58, 65535, !dbg !5898
  store i32 %div59, ptr %strong, align 4, !dbg !5899
  %45 = load ptr, ptr %new, align 8, !dbg !5900
  %u60 = getelementptr inbounds %struct.ff_effect, ptr %45, i32 0, i32 5, !dbg !5901
  %weak_magnitude = getelementptr inbounds %struct.ff_rumble_effect, ptr %u60, i32 0, i32 1, !dbg !5902
  %46 = load i16, ptr %weak_magnitude, align 2, !dbg !5902
  %conv61 = zext i16 %46 to i32, !dbg !5903
  %47 = load i32, ptr %gain.addr, align 4, !dbg !5904
  %mul62 = mul i32 %conv61, %47, !dbg !5905
  %div63 = udiv i32 %mul62, 65535, !dbg !5906
  store i32 %div63, ptr %weak, align 4, !dbg !5907
  %48 = load ptr, ptr %effect.addr, align 8, !dbg !5908
  %u64 = getelementptr inbounds %struct.ff_effect, ptr %48, i32 0, i32 5, !dbg !5910
  %strong_magnitude65 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u64, i32 0, i32 0, !dbg !5911
  %49 = load i16, ptr %strong_magnitude65, align 8, !dbg !5911
  %conv66 = zext i16 %49 to i32, !dbg !5908
  %50 = load i32, ptr %strong, align 4, !dbg !5912
  %add67 = add i32 %conv66, %50, !dbg !5913
  %tobool = icmp ne i32 %add67, 0, !dbg !5913
  br i1 %tobool, label %if.then, label %if.else, !dbg !5914

if.then:                                          ; preds = %sw.bb55
  %51 = load ptr, ptr %effect.addr, align 8, !dbg !5915
  %direction68 = getelementptr inbounds %struct.ff_effect, ptr %51, i32 0, i32 2, !dbg !5916
  %52 = load i16, ptr %direction68, align 4, !dbg !5916
  %53 = load ptr, ptr %effect.addr, align 8, !dbg !5917
  %u69 = getelementptr inbounds %struct.ff_effect, ptr %53, i32 0, i32 5, !dbg !5918
  %strong_magnitude70 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u69, i32 0, i32 0, !dbg !5919
  %54 = load i16, ptr %strong_magnitude70, align 8, !dbg !5919
  %55 = load ptr, ptr %new, align 8, !dbg !5920
  %direction71 = getelementptr inbounds %struct.ff_effect, ptr %55, i32 0, i32 2, !dbg !5921
  %56 = load i16, ptr %direction71, align 4, !dbg !5921
  %57 = load i32, ptr %strong, align 4, !dbg !5922
  %conv72 = trunc i32 %57 to i16, !dbg !5922
  %call73 = call zeroext i16 @ml_calculate_direction(i16 noundef zeroext %52, i16 noundef zeroext %54, i16 noundef zeroext %56, i16 noundef zeroext %conv72) #18, !dbg !5923
  %58 = load ptr, ptr %effect.addr, align 8, !dbg !5924
  %direction74 = getelementptr inbounds %struct.ff_effect, ptr %58, i32 0, i32 2, !dbg !5925
  store i16 %call73, ptr %direction74, align 4, !dbg !5926
  br label %if.end90, !dbg !5924

if.else:                                          ; preds = %sw.bb55
  %59 = load ptr, ptr %effect.addr, align 8, !dbg !5927
  %u75 = getelementptr inbounds %struct.ff_effect, ptr %59, i32 0, i32 5, !dbg !5929
  %weak_magnitude76 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u75, i32 0, i32 1, !dbg !5930
  %60 = load i16, ptr %weak_magnitude76, align 2, !dbg !5930
  %conv77 = zext i16 %60 to i32, !dbg !5927
  %61 = load i32, ptr %weak, align 4, !dbg !5931
  %add78 = add i32 %conv77, %61, !dbg !5932
  %tobool79 = icmp ne i32 %add78, 0, !dbg !5932
  br i1 %tobool79, label %if.then80, label %if.else88, !dbg !5933

if.then80:                                        ; preds = %if.else
  %62 = load ptr, ptr %effect.addr, align 8, !dbg !5934
  %direction81 = getelementptr inbounds %struct.ff_effect, ptr %62, i32 0, i32 2, !dbg !5935
  %63 = load i16, ptr %direction81, align 4, !dbg !5935
  %64 = load ptr, ptr %effect.addr, align 8, !dbg !5936
  %u82 = getelementptr inbounds %struct.ff_effect, ptr %64, i32 0, i32 5, !dbg !5937
  %weak_magnitude83 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u82, i32 0, i32 1, !dbg !5938
  %65 = load i16, ptr %weak_magnitude83, align 2, !dbg !5938
  %66 = load ptr, ptr %new, align 8, !dbg !5939
  %direction84 = getelementptr inbounds %struct.ff_effect, ptr %66, i32 0, i32 2, !dbg !5940
  %67 = load i16, ptr %direction84, align 4, !dbg !5940
  %68 = load i32, ptr %weak, align 4, !dbg !5941
  %conv85 = trunc i32 %68 to i16, !dbg !5941
  %call86 = call zeroext i16 @ml_calculate_direction(i16 noundef zeroext %63, i16 noundef zeroext %65, i16 noundef zeroext %67, i16 noundef zeroext %conv85) #18, !dbg !5942
  %69 = load ptr, ptr %effect.addr, align 8, !dbg !5943
  %direction87 = getelementptr inbounds %struct.ff_effect, ptr %69, i32 0, i32 2, !dbg !5944
  store i16 %call86, ptr %direction87, align 4, !dbg !5945
  br label %if.end, !dbg !5943

if.else88:                                        ; preds = %if.else
  %70 = load ptr, ptr %effect.addr, align 8, !dbg !5946
  %direction89 = getelementptr inbounds %struct.ff_effect, ptr %70, i32 0, i32 2, !dbg !5947
  store i16 0, ptr %direction89, align 4, !dbg !5948
  br label %if.end

if.end:                                           ; preds = %if.else88, %if.then80
  br label %if.end90

if.end90:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x281) #16, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x281, metadata !5814, metadata !DIExpression()), !dbg !5949
  %71 = load i32, ptr %strong, align 4, !dbg !5949
  %72 = load ptr, ptr %effect.addr, align 8, !dbg !5949
  %u91 = getelementptr inbounds %struct.ff_effect, ptr %72, i32 0, i32 5, !dbg !5949
  %strong_magnitude92 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u91, i32 0, i32 0, !dbg !5949
  %73 = load i16, ptr %strong_magnitude92, align 8, !dbg !5949
  %conv93 = zext i16 %73 to i32, !dbg !5949
  %add94 = add i32 %71, %conv93, !dbg !5949
  store i32 %add94, ptr %__UNIQUE_ID___x281, align 4, !dbg !5949
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y282) #16, !dbg !5949
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y282, metadata !5816, metadata !DIExpression()), !dbg !5949
  store i32 65535, ptr %__UNIQUE_ID___y282, align 4, !dbg !5949
  %74 = load i32, ptr %__UNIQUE_ID___x281, align 4, !dbg !5949
  %75 = load i32, ptr %__UNIQUE_ID___y282, align 4, !dbg !5949
  %cmp96 = icmp ult i32 %74, %75, !dbg !5949
  br i1 %cmp96, label %cond.true98, label %cond.false99, !dbg !5949

cond.true98:                                      ; preds = %if.end90
  %76 = load i32, ptr %__UNIQUE_ID___x281, align 4, !dbg !5949
  br label %cond.end100, !dbg !5949

cond.false99:                                     ; preds = %if.end90
  %77 = load i32, ptr %__UNIQUE_ID___y282, align 4, !dbg !5949
  br label %cond.end100, !dbg !5949

cond.end100:                                      ; preds = %cond.false99, %cond.true98
  %cond101 = phi i32 [ %76, %cond.true98 ], [ %77, %cond.false99 ], !dbg !5949
  store i32 %cond101, ptr %tmp95, align 4, !dbg !5949
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y282) #16, !dbg !5950
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x281) #16, !dbg !5950
  %78 = load i32, ptr %tmp95, align 4, !dbg !5949
  %conv102 = trunc i32 %78 to i16, !dbg !5950
  %79 = load ptr, ptr %effect.addr, align 8, !dbg !5951
  %u103 = getelementptr inbounds %struct.ff_effect, ptr %79, i32 0, i32 5, !dbg !5952
  %strong_magnitude104 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u103, i32 0, i32 0, !dbg !5953
  store i16 %conv102, ptr %strong_magnitude104, align 8, !dbg !5954
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x283) #16, !dbg !5955
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x283, metadata !5817, metadata !DIExpression()), !dbg !5955
  %80 = load i32, ptr %weak, align 4, !dbg !5955
  %81 = load ptr, ptr %effect.addr, align 8, !dbg !5955
  %u105 = getelementptr inbounds %struct.ff_effect, ptr %81, i32 0, i32 5, !dbg !5955
  %weak_magnitude106 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u105, i32 0, i32 1, !dbg !5955
  %82 = load i16, ptr %weak_magnitude106, align 2, !dbg !5955
  %conv107 = zext i16 %82 to i32, !dbg !5955
  %add108 = add i32 %80, %conv107, !dbg !5955
  store i32 %add108, ptr %__UNIQUE_ID___x283, align 4, !dbg !5955
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y284) #16, !dbg !5955
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y284, metadata !5819, metadata !DIExpression()), !dbg !5955
  store i32 65535, ptr %__UNIQUE_ID___y284, align 4, !dbg !5955
  %83 = load i32, ptr %__UNIQUE_ID___x283, align 4, !dbg !5955
  %84 = load i32, ptr %__UNIQUE_ID___y284, align 4, !dbg !5955
  %cmp110 = icmp ult i32 %83, %84, !dbg !5955
  br i1 %cmp110, label %cond.true112, label %cond.false113, !dbg !5955

cond.true112:                                     ; preds = %cond.end100
  %85 = load i32, ptr %__UNIQUE_ID___x283, align 4, !dbg !5955
  br label %cond.end114, !dbg !5955

cond.false113:                                    ; preds = %cond.end100
  %86 = load i32, ptr %__UNIQUE_ID___y284, align 4, !dbg !5955
  br label %cond.end114, !dbg !5955

cond.end114:                                      ; preds = %cond.false113, %cond.true112
  %cond115 = phi i32 [ %85, %cond.true112 ], [ %86, %cond.false113 ], !dbg !5955
  store i32 %cond115, ptr %tmp109, align 4, !dbg !5955
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y284) #16, !dbg !5956
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x283) #16, !dbg !5956
  %87 = load i32, ptr %tmp109, align 4, !dbg !5955
  %conv116 = trunc i32 %87 to i16, !dbg !5956
  %88 = load ptr, ptr %effect.addr, align 8, !dbg !5957
  %u117 = getelementptr inbounds %struct.ff_effect, ptr %88, i32 0, i32 5, !dbg !5958
  %weak_magnitude118 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u117, i32 0, i32 1, !dbg !5959
  store i16 %conv116, ptr %weak_magnitude118, align 2, !dbg !5960
  br label %sw.epilog, !dbg !5961

sw.bb119:                                         ; preds = %entry
  %89 = load ptr, ptr %state.addr, align 8, !dbg !5962
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x) #16, !dbg !5963
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5820, metadata !DIExpression()), !dbg !5963
  %90 = load ptr, ptr %new, align 8, !dbg !5963
  %u120 = getelementptr inbounds %struct.ff_effect, ptr %90, i32 0, i32 5, !dbg !5963
  %magnitude = getelementptr inbounds %struct.ff_periodic_effect, ptr %u120, i32 0, i32 2, !dbg !5963
  %91 = load i16, ptr %magnitude, align 4, !dbg !5963
  store i16 %91, ptr %__x, align 2, !dbg !5963
  %92 = load i16, ptr %__x, align 2, !dbg !5963
  %conv122 = sext i16 %92 to i32, !dbg !5963
  %cmp123 = icmp slt i32 %conv122, 0, !dbg !5963
  br i1 %cmp123, label %cond.true125, label %cond.false128, !dbg !5963

cond.true125:                                     ; preds = %sw.bb119
  %93 = load i16, ptr %__x, align 2, !dbg !5963
  %conv126 = sext i16 %93 to i32, !dbg !5963
  %sub127 = sub i32 0, %conv126, !dbg !5963
  br label %cond.end130, !dbg !5963

cond.false128:                                    ; preds = %sw.bb119
  %94 = load i16, ptr %__x, align 2, !dbg !5963
  %conv129 = sext i16 %94 to i32, !dbg !5963
  br label %cond.end130, !dbg !5963

cond.end130:                                      ; preds = %cond.false128, %cond.true125
  %cond131 = phi i32 [ %sub127, %cond.true125 ], [ %conv129, %cond.false128 ], !dbg !5963
  store i32 %cond131, ptr %tmp121, align 4, !dbg !5963
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x) #16, !dbg !5964
  %95 = load i32, ptr %tmp121, align 4, !dbg !5963
  %96 = load ptr, ptr %new, align 8, !dbg !5965
  %u132 = getelementptr inbounds %struct.ff_effect, ptr %96, i32 0, i32 5, !dbg !5966
  %envelope133 = getelementptr inbounds %struct.ff_periodic_effect, ptr %u132, i32 0, i32 5, !dbg !5967
  %call134 = call i32 @apply_envelope(ptr noundef %89, i32 noundef %95, ptr noundef %envelope133) #18, !dbg !5968
  store i32 %call134, ptr %i, align 4, !dbg !5969
  %97 = load i32, ptr %i, align 4, !dbg !5970
  %98 = load i32, ptr %gain.addr, align 4, !dbg !5971
  %mul135 = mul i32 %97, %98, !dbg !5972
  %div136 = udiv i32 %mul135, 32767, !dbg !5973
  store i32 %div136, ptr %i, align 4, !dbg !5974
  %99 = load ptr, ptr %effect.addr, align 8, !dbg !5975
  %u137 = getelementptr inbounds %struct.ff_effect, ptr %99, i32 0, i32 5, !dbg !5977
  %strong_magnitude138 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u137, i32 0, i32 0, !dbg !5978
  %100 = load i16, ptr %strong_magnitude138, align 8, !dbg !5978
  %conv139 = zext i16 %100 to i32, !dbg !5975
  %101 = load i32, ptr %i, align 4, !dbg !5979
  %add140 = add i32 %conv139, %101, !dbg !5980
  %tobool141 = icmp ne i32 %add140, 0, !dbg !5980
  br i1 %tobool141, label %if.then142, label %if.else150, !dbg !5981

if.then142:                                       ; preds = %cond.end130
  %102 = load ptr, ptr %effect.addr, align 8, !dbg !5982
  %direction143 = getelementptr inbounds %struct.ff_effect, ptr %102, i32 0, i32 2, !dbg !5983
  %103 = load i16, ptr %direction143, align 4, !dbg !5983
  %104 = load ptr, ptr %effect.addr, align 8, !dbg !5984
  %u144 = getelementptr inbounds %struct.ff_effect, ptr %104, i32 0, i32 5, !dbg !5985
  %strong_magnitude145 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u144, i32 0, i32 0, !dbg !5986
  %105 = load i16, ptr %strong_magnitude145, align 8, !dbg !5986
  %106 = load ptr, ptr %new, align 8, !dbg !5987
  %direction146 = getelementptr inbounds %struct.ff_effect, ptr %106, i32 0, i32 2, !dbg !5988
  %107 = load i16, ptr %direction146, align 4, !dbg !5988
  %108 = load i32, ptr %i, align 4, !dbg !5989
  %conv147 = trunc i32 %108 to i16, !dbg !5989
  %call148 = call zeroext i16 @ml_calculate_direction(i16 noundef zeroext %103, i16 noundef zeroext %105, i16 noundef zeroext %107, i16 noundef zeroext %conv147) #18, !dbg !5990
  %109 = load ptr, ptr %effect.addr, align 8, !dbg !5991
  %direction149 = getelementptr inbounds %struct.ff_effect, ptr %109, i32 0, i32 2, !dbg !5992
  store i16 %call148, ptr %direction149, align 4, !dbg !5993
  br label %if.end152, !dbg !5991

if.else150:                                       ; preds = %cond.end130
  %110 = load ptr, ptr %effect.addr, align 8, !dbg !5994
  %direction151 = getelementptr inbounds %struct.ff_effect, ptr %110, i32 0, i32 2, !dbg !5995
  store i16 0, ptr %direction151, align 4, !dbg !5996
  br label %if.end152

if.end152:                                        ; preds = %if.else150, %if.then142
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x285) #16, !dbg !5997
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x285, metadata !5822, metadata !DIExpression()), !dbg !5997
  %111 = load i32, ptr %i, align 4, !dbg !5997
  %112 = load ptr, ptr %effect.addr, align 8, !dbg !5997
  %u153 = getelementptr inbounds %struct.ff_effect, ptr %112, i32 0, i32 5, !dbg !5997
  %strong_magnitude154 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u153, i32 0, i32 0, !dbg !5997
  %113 = load i16, ptr %strong_magnitude154, align 8, !dbg !5997
  %conv155 = zext i16 %113 to i32, !dbg !5997
  %add156 = add i32 %111, %conv155, !dbg !5997
  store i32 %add156, ptr %__UNIQUE_ID___x285, align 4, !dbg !5997
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y286) #16, !dbg !5997
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y286, metadata !5824, metadata !DIExpression()), !dbg !5997
  store i32 65535, ptr %__UNIQUE_ID___y286, align 4, !dbg !5997
  %114 = load i32, ptr %__UNIQUE_ID___x285, align 4, !dbg !5997
  %115 = load i32, ptr %__UNIQUE_ID___y286, align 4, !dbg !5997
  %cmp158 = icmp ult i32 %114, %115, !dbg !5997
  br i1 %cmp158, label %cond.true160, label %cond.false161, !dbg !5997

cond.true160:                                     ; preds = %if.end152
  %116 = load i32, ptr %__UNIQUE_ID___x285, align 4, !dbg !5997
  br label %cond.end162, !dbg !5997

cond.false161:                                    ; preds = %if.end152
  %117 = load i32, ptr %__UNIQUE_ID___y286, align 4, !dbg !5997
  br label %cond.end162, !dbg !5997

cond.end162:                                      ; preds = %cond.false161, %cond.true160
  %cond163 = phi i32 [ %116, %cond.true160 ], [ %117, %cond.false161 ], !dbg !5997
  store i32 %cond163, ptr %tmp157, align 4, !dbg !5997
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y286) #16, !dbg !5998
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x285) #16, !dbg !5998
  %118 = load i32, ptr %tmp157, align 4, !dbg !5997
  %conv164 = trunc i32 %118 to i16, !dbg !5998
  %119 = load ptr, ptr %effect.addr, align 8, !dbg !5999
  %u165 = getelementptr inbounds %struct.ff_effect, ptr %119, i32 0, i32 5, !dbg !6000
  %strong_magnitude166 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u165, i32 0, i32 0, !dbg !6001
  store i16 %conv164, ptr %strong_magnitude166, align 8, !dbg !6002
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x287) #16, !dbg !6003
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x287, metadata !5825, metadata !DIExpression()), !dbg !6003
  %120 = load i32, ptr %i, align 4, !dbg !6003
  %121 = load ptr, ptr %effect.addr, align 8, !dbg !6003
  %u167 = getelementptr inbounds %struct.ff_effect, ptr %121, i32 0, i32 5, !dbg !6003
  %weak_magnitude168 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u167, i32 0, i32 1, !dbg !6003
  %122 = load i16, ptr %weak_magnitude168, align 2, !dbg !6003
  %conv169 = zext i16 %122 to i32, !dbg !6003
  %add170 = add i32 %120, %conv169, !dbg !6003
  store i32 %add170, ptr %__UNIQUE_ID___x287, align 4, !dbg !6003
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y288) #16, !dbg !6003
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y288, metadata !5827, metadata !DIExpression()), !dbg !6003
  store i32 65535, ptr %__UNIQUE_ID___y288, align 4, !dbg !6003
  %123 = load i32, ptr %__UNIQUE_ID___x287, align 4, !dbg !6003
  %124 = load i32, ptr %__UNIQUE_ID___y288, align 4, !dbg !6003
  %cmp172 = icmp ult i32 %123, %124, !dbg !6003
  br i1 %cmp172, label %cond.true174, label %cond.false175, !dbg !6003

cond.true174:                                     ; preds = %cond.end162
  %125 = load i32, ptr %__UNIQUE_ID___x287, align 4, !dbg !6003
  br label %cond.end176, !dbg !6003

cond.false175:                                    ; preds = %cond.end162
  %126 = load i32, ptr %__UNIQUE_ID___y288, align 4, !dbg !6003
  br label %cond.end176, !dbg !6003

cond.end176:                                      ; preds = %cond.false175, %cond.true174
  %cond177 = phi i32 [ %125, %cond.true174 ], [ %126, %cond.false175 ], !dbg !6003
  store i32 %cond177, ptr %tmp171, align 4, !dbg !6003
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y288) #16, !dbg !6004
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x287) #16, !dbg !6004
  %127 = load i32, ptr %tmp171, align 4, !dbg !6003
  %conv178 = trunc i32 %127 to i16, !dbg !6004
  %128 = load ptr, ptr %effect.addr, align 8, !dbg !6005
  %u179 = getelementptr inbounds %struct.ff_effect, ptr %128, i32 0, i32 5, !dbg !6006
  %weak_magnitude180 = getelementptr inbounds %struct.ff_rumble_effect, ptr %u179, i32 0, i32 1, !dbg !6007
  store i16 %conv178, ptr %weak_magnitude180, align 2, !dbg !6008
  br label %sw.epilog, !dbg !6009

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !6010

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !6012

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6012

do.end:                                           ; preds = %do.cond
  %call182 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #21, !dbg !6010
  store i32 %call182, ptr %tmp181, align 4, !dbg !6012
  %129 = load i32, ptr %tmp181, align 4, !dbg !6010
  br label %sw.epilog, !dbg !6014

sw.epilog:                                        ; preds = %do.end, %cond.end176, %cond.end114, %cond.end50
  call void @llvm.lifetime.end.p0(i64 2, ptr %level) #16, !dbg !6015
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #16, !dbg !6015
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #16, !dbg !6015
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6015
  call void @llvm.lifetime.end.p0(i64 4, ptr %weak) #16, !dbg !6015
  call void @llvm.lifetime.end.p0(i64 4, ptr %strong) #16, !dbg !6015
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #16, !dbg !6015
  ret void, !dbg !6015
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__instrument_read_write_bitop(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6016 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6018, metadata !DIExpression()), !dbg !6020
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6019, metadata !DIExpression()), !dbg !6021
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6022
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6025
  %div = sdiv i64 %1, 64, !dbg !6025
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6026
  call void @instrument_read_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !6027
  ret void, !dbg !6028
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch___test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6029 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6032, metadata !DIExpression()), !dbg !6035
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6033, metadata !DIExpression()), !dbg !6036
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !6037
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6034, metadata !DIExpression()), !dbg !6038
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6039
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6040
  %2 = call i8 asm " btsq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6041, !srcloc !6042
  %3 = icmp ult i8 %2, 2, !dbg !6041
  call void @llvm.assume(i1 %3), !dbg !6041
  store i8 %2, ptr %oldbit, align 1, !dbg !6041
  %4 = load i8, ptr %oldbit, align 1, !dbg !6043, !range !5234, !noundef !1472
  %tobool = trunc i8 %4 to i1, !dbg !6043
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !6044
  ret i1 %tobool, !dbg !6045
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6046 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6054, metadata !DIExpression()), !dbg !6056
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6055, metadata !DIExpression()), !dbg !6057
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6058
  %1 = load i64, ptr %size.addr, align 8, !dbg !6059
  %conv = trunc i64 %1 to i32, !dbg !6059
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6060
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6061
  %3 = load i64, ptr %size.addr, align 8, !dbg !6061
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #18, !dbg !6061
  ret void, !dbg !6062
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #13 align 16 !dbg !6063 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6068, metadata !DIExpression()), !dbg !6070
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6069, metadata !DIExpression()), !dbg !6071
  ret i1 true, !dbg !6072
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #13 align 16 !dbg !6073 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6078, metadata !DIExpression()), !dbg !6081
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6079, metadata !DIExpression()), !dbg !6082
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6080, metadata !DIExpression()), !dbg !6083
  ret void, !dbg !6084
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6085 dso_local i32 @_printk(ptr noundef, ...) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6089 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6091, metadata !DIExpression()), !dbg !6093
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6092, metadata !DIExpression()), !dbg !6094
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6095
  %1 = load i64, ptr %size.addr, align 8, !dbg !6096
  %conv = trunc i64 %1 to i32, !dbg !6096
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6097
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6098
  %3 = load i64, ptr %size.addr, align 8, !dbg !6098
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #18, !dbg !6098
  ret void, !dbg !6099
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6100 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6102, metadata !DIExpression()), !dbg !6104
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6103, metadata !DIExpression()), !dbg !6105
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6106
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6107
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6108, !srcloc !6109
  ret void, !dbg !6110
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch___test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6111 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6113, metadata !DIExpression()), !dbg !6116
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6114, metadata !DIExpression()), !dbg !6117
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !6118
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6115, metadata !DIExpression()), !dbg !6119
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6120
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6121
  %2 = call i8 asm sideeffect " btrq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6122, !srcloc !6123
  %3 = icmp ult i8 %2, 2, !dbg !6122
  call void @llvm.assume(i1 %3), !dbg !6122
  store i8 %2, ptr %oldbit, align 1, !dbg !6122
  %4 = load i8, ptr %oldbit, align 1, !dbg !6124, !range !5234, !noundef !1472
  %tobool = trunc i8 %4 to i1, !dbg !6124
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !6125
  ret i1 %tobool, !dbg !6126
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #13 align 16 !dbg !6127 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6129, metadata !DIExpression()), !dbg !6130
  %0 = load i32, ptr %m.addr, align 4, !dbg !6131
  %conv = zext i32 %0 to i64, !dbg !6131
  %add = add i64 %conv, 1, !dbg !6132
  %sub = sub i64 %add, 1, !dbg !6133
  %div = sdiv i64 %sub, 1, !dbg !6134
  ret i64 %div, !dbg !6135
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6136 dso_local i64 @__msecs_to_jiffies(i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6137 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6139, metadata !DIExpression()), !dbg !6141
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6140, metadata !DIExpression()), !dbg !6142
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6143
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6144
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6145, !srcloc !6146
  ret void, !dbg !6147
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal signext i16 @fixp_new16(i16 noundef signext %a) #13 align 16 !dbg !6148 {
entry:
  %a.addr = alloca i16, align 2
  store i16 %a, ptr %a.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !6152, metadata !DIExpression()), !dbg !6153
  %0 = load i16, ptr %a.addr, align 2, !dbg !6154
  %conv = sext i16 %0 to i32, !dbg !6155
  %shr = ashr i32 %conv, 8, !dbg !6156
  %conv1 = trunc i32 %shr to i16, !dbg !6157
  ret i16 %conv1, !dbg !6158
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @apply_envelope(ptr noundef %state, i32 noundef %value, ptr noundef %envelope) #0 align 16 !dbg !6159 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %envelope.addr = alloca ptr, align 8
  %effect = alloca ptr, align 8
  %now = alloca i64, align 8
  %time_from_level = alloca i32, align 4
  %time_of_envelope = alloca i32, align 4
  %envelope_level = alloca i32, align 4
  %difference = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x271 = alloca i16, align 2
  %__UNIQUE_ID___y272 = alloca i16, align 2
  %tmp10 = alloca i32, align 4
  %__UNIQUE_ID___x273 = alloca i16, align 2
  %__UNIQUE_ID___y274 = alloca i16, align 2
  %tmp41 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp54 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  %tmp65 = alloca i32, align 4
  %tmp66 = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6164, metadata !DIExpression()), !dbg !6185
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6165, metadata !DIExpression()), !dbg !6186
  store ptr %envelope, ptr %envelope.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %envelope.addr, metadata !6166, metadata !DIExpression()), !dbg !6187
  call void @llvm.lifetime.start.p0(i64 8, ptr %effect) #16, !dbg !6188
  call void @llvm.dbg.declare(metadata ptr %effect, metadata !6167, metadata !DIExpression()), !dbg !6189
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6190
  %effect1 = getelementptr inbounds %struct.ml_effect_state, ptr %0, i32 0, i32 0, !dbg !6191
  %1 = load ptr, ptr %effect1, align 8, !dbg !6191
  store ptr %1, ptr %effect, align 8, !dbg !6189
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #16, !dbg !6192
  call void @llvm.dbg.declare(metadata ptr %now, metadata !6168, metadata !DIExpression()), !dbg !6193
  %2 = load volatile i64, ptr @jiffies, align 64, !dbg !6194
  store i64 %2, ptr %now, align 8, !dbg !6193
  call void @llvm.lifetime.start.p0(i64 4, ptr %time_from_level) #16, !dbg !6195
  call void @llvm.dbg.declare(metadata ptr %time_from_level, metadata !6169, metadata !DIExpression()), !dbg !6196
  call void @llvm.lifetime.start.p0(i64 4, ptr %time_of_envelope) #16, !dbg !6197
  call void @llvm.dbg.declare(metadata ptr %time_of_envelope, metadata !6170, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 4, ptr %envelope_level) #16, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %envelope_level, metadata !6171, metadata !DIExpression()), !dbg !6200
  call void @llvm.lifetime.start.p0(i64 4, ptr %difference) #16, !dbg !6201
  call void @llvm.dbg.declare(metadata ptr %difference, metadata !6172, metadata !DIExpression()), !dbg !6202
  %3 = load ptr, ptr %envelope.addr, align 8, !dbg !6203
  %attack_length = getelementptr inbounds %struct.ff_envelope, ptr %3, i32 0, i32 0, !dbg !6204
  %4 = load i16, ptr %attack_length, align 2, !dbg !6204
  %conv = zext i16 %4 to i32, !dbg !6203
  %tobool = icmp ne i32 %conv, 0, !dbg !6203
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !6205

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, ptr %now, align 8, !dbg !6206
  %6 = load ptr, ptr %state.addr, align 8, !dbg !6206
  %play_at = getelementptr inbounds %struct.ml_effect_state, ptr %6, i32 0, i32 3, !dbg !6206
  %7 = load i64, ptr %play_at, align 8, !dbg !6206
  %8 = load ptr, ptr %envelope.addr, align 8, !dbg !6206
  %attack_length2 = getelementptr inbounds %struct.ff_envelope, ptr %8, i32 0, i32 0, !dbg !6206
  %9 = load i16, ptr %attack_length2, align 2, !dbg !6206
  %conv3 = zext i16 %9 to i32, !dbg !6206
  %call = call i64 @msecs_to_jiffies(i32 noundef %conv3) #18, !dbg !6206
  %add = add i64 %7, %call, !dbg !6206
  %sub = sub i64 %5, %add, !dbg !6206
  %cmp = icmp slt i64 %sub, 0, !dbg !6206
  br i1 %cmp, label %if.then, label %if.else, !dbg !6207

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %tmp, align 4, !dbg !6208
  %10 = load i32, ptr %tmp, align 4, !dbg !6211
  %11 = load i64, ptr %now, align 8, !dbg !6212
  %12 = load ptr, ptr %state.addr, align 8, !dbg !6213
  %play_at5 = getelementptr inbounds %struct.ml_effect_state, ptr %12, i32 0, i32 3, !dbg !6214
  %13 = load i64, ptr %play_at5, align 8, !dbg !6214
  %sub6 = sub i64 %11, %13, !dbg !6215
  %call7 = call i32 @jiffies_to_msecs(i64 noundef %sub6) #18, !dbg !6216
  store i32 %call7, ptr %time_from_level, align 4, !dbg !6217
  %14 = load ptr, ptr %envelope.addr, align 8, !dbg !6218
  %attack_length8 = getelementptr inbounds %struct.ff_envelope, ptr %14, i32 0, i32 0, !dbg !6219
  %15 = load i16, ptr %attack_length8, align 2, !dbg !6219
  %conv9 = zext i16 %15 to i32, !dbg !6218
  store i32 %conv9, ptr %time_of_envelope, align 4, !dbg !6220
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___x271) #16, !dbg !6221
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x271, metadata !6173, metadata !DIExpression()), !dbg !6221
  %16 = load ptr, ptr %envelope.addr, align 8, !dbg !6221
  %attack_level = getelementptr inbounds %struct.ff_envelope, ptr %16, i32 0, i32 1, !dbg !6221
  %17 = load i16, ptr %attack_level, align 2, !dbg !6221
  store i16 %17, ptr %__UNIQUE_ID___x271, align 2, !dbg !6221
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___y272) #16, !dbg !6221
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y272, metadata !6177, metadata !DIExpression()), !dbg !6221
  store i16 32767, ptr %__UNIQUE_ID___y272, align 2, !dbg !6221
  %18 = load i16, ptr %__UNIQUE_ID___x271, align 2, !dbg !6221
  %conv11 = zext i16 %18 to i32, !dbg !6221
  %19 = load i16, ptr %__UNIQUE_ID___y272, align 2, !dbg !6221
  %conv12 = zext i16 %19 to i32, !dbg !6221
  %cmp13 = icmp slt i32 %conv11, %conv12, !dbg !6221
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !6221

cond.true:                                        ; preds = %if.then
  %20 = load i16, ptr %__UNIQUE_ID___x271, align 2, !dbg !6221
  %conv15 = zext i16 %20 to i32, !dbg !6221
  br label %cond.end, !dbg !6221

cond.false:                                       ; preds = %if.then
  %21 = load i16, ptr %__UNIQUE_ID___y272, align 2, !dbg !6221
  %conv16 = zext i16 %21 to i32, !dbg !6221
  br label %cond.end, !dbg !6221

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv15, %cond.true ], [ %conv16, %cond.false ], !dbg !6221
  store i32 %cond, ptr %tmp10, align 4, !dbg !6221
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___y272) #16, !dbg !6222
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___x271) #16, !dbg !6222
  %22 = load i32, ptr %tmp10, align 4, !dbg !6221
  store i32 %22, ptr %envelope_level, align 4, !dbg !6223
  br label %if.end53, !dbg !6224

if.else:                                          ; preds = %land.lhs.true, %entry
  %23 = load ptr, ptr %envelope.addr, align 8, !dbg !6225
  %fade_length = getelementptr inbounds %struct.ff_envelope, ptr %23, i32 0, i32 2, !dbg !6226
  %24 = load i16, ptr %fade_length, align 2, !dbg !6226
  %conv17 = zext i16 %24 to i32, !dbg !6225
  %tobool18 = icmp ne i32 %conv17, 0, !dbg !6225
  br i1 %tobool18, label %land.lhs.true19, label %if.else52, !dbg !6227

land.lhs.true19:                                  ; preds = %if.else
  %25 = load ptr, ptr %effect, align 8, !dbg !6228
  %replay = getelementptr inbounds %struct.ff_effect, ptr %25, i32 0, i32 4, !dbg !6229
  %length = getelementptr inbounds %struct.ff_replay, ptr %replay, i32 0, i32 0, !dbg !6230
  %26 = load i16, ptr %length, align 2, !dbg !6230
  %conv20 = zext i16 %26 to i32, !dbg !6228
  %tobool21 = icmp ne i32 %conv20, 0, !dbg !6228
  br i1 %tobool21, label %land.lhs.true22, label %if.else52, !dbg !6231

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %27 = load ptr, ptr %state.addr, align 8, !dbg !6232
  %stop_at = getelementptr inbounds %struct.ml_effect_state, ptr %27, i32 0, i32 4, !dbg !6232
  %28 = load i64, ptr %stop_at, align 8, !dbg !6232
  %29 = load ptr, ptr %envelope.addr, align 8, !dbg !6232
  %fade_length23 = getelementptr inbounds %struct.ff_envelope, ptr %29, i32 0, i32 2, !dbg !6232
  %30 = load i16, ptr %fade_length23, align 2, !dbg !6232
  %conv24 = zext i16 %30 to i32, !dbg !6232
  %call25 = call i64 @msecs_to_jiffies(i32 noundef %conv24) #18, !dbg !6232
  %sub26 = sub i64 %28, %call25, !dbg !6232
  %31 = load i64, ptr %now, align 8, !dbg !6232
  %sub27 = sub i64 %sub26, %31, !dbg !6232
  %cmp28 = icmp slt i64 %sub27, 0, !dbg !6232
  br i1 %cmp28, label %land.lhs.true30, label %if.else52, !dbg !6233

land.lhs.true30:                                  ; preds = %land.lhs.true22
  %32 = load i64, ptr %now, align 8, !dbg !6234
  %33 = load ptr, ptr %state.addr, align 8, !dbg !6234
  %stop_at31 = getelementptr inbounds %struct.ml_effect_state, ptr %33, i32 0, i32 4, !dbg !6234
  %34 = load i64, ptr %stop_at31, align 8, !dbg !6234
  %sub32 = sub i64 %32, %34, !dbg !6234
  %cmp33 = icmp slt i64 %sub32, 0, !dbg !6234
  br i1 %cmp33, label %if.then35, label %if.else52, !dbg !6235

if.then35:                                        ; preds = %land.lhs.true30
  %35 = load ptr, ptr %state.addr, align 8, !dbg !6236
  %stop_at36 = getelementptr inbounds %struct.ml_effect_state, ptr %35, i32 0, i32 4, !dbg !6237
  %36 = load i64, ptr %stop_at36, align 8, !dbg !6237
  %37 = load i64, ptr %now, align 8, !dbg !6238
  %sub37 = sub i64 %36, %37, !dbg !6239
  %call38 = call i32 @jiffies_to_msecs(i64 noundef %sub37) #18, !dbg !6240
  store i32 %call38, ptr %time_from_level, align 4, !dbg !6241
  %38 = load ptr, ptr %envelope.addr, align 8, !dbg !6242
  %fade_length39 = getelementptr inbounds %struct.ff_envelope, ptr %38, i32 0, i32 2, !dbg !6243
  %39 = load i16, ptr %fade_length39, align 2, !dbg !6243
  %conv40 = zext i16 %39 to i32, !dbg !6242
  store i32 %conv40, ptr %time_of_envelope, align 4, !dbg !6244
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___x273) #16, !dbg !6245
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x273, metadata !6178, metadata !DIExpression()), !dbg !6245
  %40 = load ptr, ptr %envelope.addr, align 8, !dbg !6245
  %fade_level = getelementptr inbounds %struct.ff_envelope, ptr %40, i32 0, i32 3, !dbg !6245
  %41 = load i16, ptr %fade_level, align 2, !dbg !6245
  store i16 %41, ptr %__UNIQUE_ID___x273, align 2, !dbg !6245
  call void @llvm.lifetime.start.p0(i64 2, ptr %__UNIQUE_ID___y274) #16, !dbg !6245
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y274, metadata !6182, metadata !DIExpression()), !dbg !6245
  store i16 32767, ptr %__UNIQUE_ID___y274, align 2, !dbg !6245
  %42 = load i16, ptr %__UNIQUE_ID___x273, align 2, !dbg !6245
  %conv42 = zext i16 %42 to i32, !dbg !6245
  %43 = load i16, ptr %__UNIQUE_ID___y274, align 2, !dbg !6245
  %conv43 = zext i16 %43 to i32, !dbg !6245
  %cmp44 = icmp slt i32 %conv42, %conv43, !dbg !6245
  br i1 %cmp44, label %cond.true46, label %cond.false48, !dbg !6245

cond.true46:                                      ; preds = %if.then35
  %44 = load i16, ptr %__UNIQUE_ID___x273, align 2, !dbg !6245
  %conv47 = zext i16 %44 to i32, !dbg !6245
  br label %cond.end50, !dbg !6245

cond.false48:                                     ; preds = %if.then35
  %45 = load i16, ptr %__UNIQUE_ID___y274, align 2, !dbg !6245
  %conv49 = zext i16 %45 to i32, !dbg !6245
  br label %cond.end50, !dbg !6245

cond.end50:                                       ; preds = %cond.false48, %cond.true46
  %cond51 = phi i32 [ %conv47, %cond.true46 ], [ %conv49, %cond.false48 ], !dbg !6245
  store i32 %cond51, ptr %tmp41, align 4, !dbg !6245
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___y274) #16, !dbg !6246
  call void @llvm.lifetime.end.p0(i64 2, ptr %__UNIQUE_ID___x273) #16, !dbg !6246
  %46 = load i32, ptr %tmp41, align 4, !dbg !6245
  store i32 %46, ptr %envelope_level, align 4, !dbg !6247
  br label %if.end, !dbg !6248

if.else52:                                        ; preds = %land.lhs.true30, %land.lhs.true22, %land.lhs.true19, %if.else
  %47 = load i32, ptr %value.addr, align 4, !dbg !6249
  store i32 %47, ptr %retval, align 4, !dbg !6250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6250

if.end:                                           ; preds = %cond.end50
  br label %if.end53

if.end53:                                         ; preds = %if.end, %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #16, !dbg !6251
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !6183, metadata !DIExpression()), !dbg !6251
  %48 = load i32, ptr %value.addr, align 4, !dbg !6251
  store i32 %48, ptr %__x, align 4, !dbg !6251
  %49 = load i32, ptr %__x, align 4, !dbg !6251
  %cmp55 = icmp slt i32 %49, 0, !dbg !6251
  br i1 %cmp55, label %cond.true57, label %cond.false59, !dbg !6251

cond.true57:                                      ; preds = %if.end53
  %50 = load i32, ptr %__x, align 4, !dbg !6251
  %sub58 = sub i32 0, %50, !dbg !6251
  br label %cond.end60, !dbg !6251

cond.false59:                                     ; preds = %if.end53
  %51 = load i32, ptr %__x, align 4, !dbg !6251
  br label %cond.end60, !dbg !6251

cond.end60:                                       ; preds = %cond.false59, %cond.true57
  %cond61 = phi i32 [ %sub58, %cond.true57 ], [ %51, %cond.false59 ], !dbg !6251
  store i32 %cond61, ptr %tmp54, align 4, !dbg !6251
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #16, !dbg !6252
  %52 = load i32, ptr %tmp54, align 4, !dbg !6251
  %53 = load i32, ptr %envelope_level, align 4, !dbg !6253
  %sub62 = sub i32 %52, %53, !dbg !6254
  store i32 %sub62, ptr %difference, align 4, !dbg !6255
  store i32 0, ptr %tmp63, align 4, !dbg !6256
  %54 = load i32, ptr %tmp63, align 4, !dbg !6259
  store i32 0, ptr %tmp64, align 4, !dbg !6260
  %55 = load i32, ptr %tmp64, align 4, !dbg !6263
  store i32 0, ptr %tmp65, align 4, !dbg !6264
  %56 = load i32, ptr %tmp65, align 4, !dbg !6267
  %57 = load i32, ptr %difference, align 4, !dbg !6268
  %58 = load i32, ptr %time_from_level, align 4, !dbg !6269
  %mul = mul i32 %57, %58, !dbg !6270
  %59 = load i32, ptr %time_of_envelope, align 4, !dbg !6271
  %div = sdiv i32 %mul, %59, !dbg !6272
  store i32 %div, ptr %difference, align 4, !dbg !6273
  store i32 0, ptr %tmp66, align 4, !dbg !6274
  %60 = load i32, ptr %tmp66, align 4, !dbg !6277
  %61 = load i32, ptr %value.addr, align 4, !dbg !6278
  %cmp67 = icmp slt i32 %61, 0, !dbg !6279
  br i1 %cmp67, label %cond.true69, label %cond.false72, !dbg !6278

cond.true69:                                      ; preds = %cond.end60
  %62 = load i32, ptr %difference, align 4, !dbg !6280
  %63 = load i32, ptr %envelope_level, align 4, !dbg !6281
  %add70 = add i32 %62, %63, !dbg !6282
  %sub71 = sub i32 0, %add70, !dbg !6283
  br label %cond.end74, !dbg !6278

cond.false72:                                     ; preds = %cond.end60
  %64 = load i32, ptr %difference, align 4, !dbg !6284
  %65 = load i32, ptr %envelope_level, align 4, !dbg !6285
  %add73 = add i32 %64, %65, !dbg !6286
  br label %cond.end74, !dbg !6278

cond.end74:                                       ; preds = %cond.false72, %cond.true69
  %cond75 = phi i32 [ %sub71, %cond.true69 ], [ %add73, %cond.false72 ], !dbg !6278
  store i32 %cond75, ptr %retval, align 4, !dbg !6287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6287

cleanup:                                          ; preds = %cond.end74, %if.else52
  call void @llvm.lifetime.end.p0(i64 4, ptr %difference) #16, !dbg !6288
  call void @llvm.lifetime.end.p0(i64 4, ptr %envelope_level) #16, !dbg !6288
  call void @llvm.lifetime.end.p0(i64 4, ptr %time_of_envelope) #16, !dbg !6288
  call void @llvm.lifetime.end.p0(i64 4, ptr %time_from_level) #16, !dbg !6288
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #16, !dbg !6288
  call void @llvm.lifetime.end.p0(i64 8, ptr %effect) #16, !dbg !6288
  %66 = load i32, ptr %retval, align 4, !dbg !6288
  ret i32 %66, !dbg !6288
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal signext i16 @fixp_mult(i16 noundef signext %a, i16 noundef signext %b) #13 align 16 !dbg !6289 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, ptr %a.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !6293, metadata !DIExpression()), !dbg !6295
  store i16 %b, ptr %b.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !6294, metadata !DIExpression()), !dbg !6296
  %0 = load i16, ptr %a.addr, align 2, !dbg !6297
  %conv = sext i16 %0 to i32, !dbg !6298
  %mul = mul i32 %conv, 256, !dbg !6299
  %div = sdiv i32 %mul, 32767, !dbg !6300
  %conv1 = trunc i32 %div to i16, !dbg !6301
  store i16 %conv1, ptr %a.addr, align 2, !dbg !6302
  %1 = load i16, ptr %a.addr, align 2, !dbg !6303
  %conv2 = sext i16 %1 to i32, !dbg !6303
  %2 = load i16, ptr %b.addr, align 2, !dbg !6304
  %conv3 = sext i16 %2 to i32, !dbg !6304
  %mul4 = mul i32 %conv2, %conv3, !dbg !6305
  %shr = ashr i32 %mul4, 8, !dbg !6306
  %conv5 = trunc i32 %shr to i16, !dbg !6307
  ret i16 %conv5, !dbg !6308
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fixp_sin32(i32 noundef %degrees) #13 align 16 !dbg !6309 {
entry:
  %degrees.addr = alloca i32, align 4
  store i32 %degrees, ptr %degrees.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %degrees.addr, metadata !6313, metadata !DIExpression()), !dbg !6314
  %0 = load i32, ptr %degrees.addr, align 4, !dbg !6315
  %rem = srem i32 %0, 360, !dbg !6316
  %add = add i32 %rem, 360, !dbg !6317
  %rem1 = srem i32 %add, 360, !dbg !6318
  store i32 %rem1, ptr %degrees.addr, align 4, !dbg !6319
  %1 = load i32, ptr %degrees.addr, align 4, !dbg !6320
  %call = call i32 @__fixp_sin32(i32 noundef %1) #18, !dbg !6321
  ret i32 %call, !dbg !6322
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @ml_calculate_direction(i16 noundef zeroext %direction, i16 noundef zeroext %force, i16 noundef zeroext %new_direction, i16 noundef zeroext %new_force) #0 align 16 !dbg !6323 {
entry:
  %retval = alloca i16, align 2
  %direction.addr = alloca i16, align 2
  %force.addr = alloca i16, align 2
  %new_direction.addr = alloca i16, align 2
  %new_force.addr = alloca i16, align 2
  store i16 %direction, ptr %direction.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %direction.addr, metadata !6327, metadata !DIExpression()), !dbg !6331
  store i16 %force, ptr %force.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %force.addr, metadata !6328, metadata !DIExpression()), !dbg !6332
  store i16 %new_direction, ptr %new_direction.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %new_direction.addr, metadata !6329, metadata !DIExpression()), !dbg !6333
  store i16 %new_force, ptr %new_force.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %new_force.addr, metadata !6330, metadata !DIExpression()), !dbg !6334
  %0 = load i16, ptr %force.addr, align 2, !dbg !6335
  %tobool = icmp ne i16 %0, 0, !dbg !6335
  br i1 %tobool, label %if.end, label %if.then, !dbg !6337

if.then:                                          ; preds = %entry
  %1 = load i16, ptr %new_direction.addr, align 2, !dbg !6338
  store i16 %1, ptr %retval, align 2, !dbg !6339
  br label %return, !dbg !6339

if.end:                                           ; preds = %entry
  %2 = load i16, ptr %new_force.addr, align 2, !dbg !6340
  %tobool1 = icmp ne i16 %2, 0, !dbg !6340
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6342

if.then2:                                         ; preds = %if.end
  %3 = load i16, ptr %direction.addr, align 2, !dbg !6343
  store i16 %3, ptr %retval, align 2, !dbg !6344
  br label %return, !dbg !6344

if.end3:                                          ; preds = %if.end
  %4 = load i16, ptr %direction.addr, align 2, !dbg !6345
  %conv = zext i16 %4 to i32, !dbg !6345
  %shr = ashr i32 %conv, 1, !dbg !6346
  %5 = load i16, ptr %force.addr, align 2, !dbg !6347
  %conv4 = zext i16 %5 to i32, !dbg !6347
  %mul = mul i32 %shr, %conv4, !dbg !6348
  %6 = load i16, ptr %new_direction.addr, align 2, !dbg !6349
  %conv5 = zext i16 %6 to i32, !dbg !6349
  %shr6 = ashr i32 %conv5, 1, !dbg !6350
  %7 = load i16, ptr %new_force.addr, align 2, !dbg !6351
  %conv7 = zext i16 %7 to i32, !dbg !6351
  %mul8 = mul i32 %shr6, %conv7, !dbg !6352
  %add = add i32 %mul, %mul8, !dbg !6353
  %8 = load i16, ptr %force.addr, align 2, !dbg !6354
  %conv9 = zext i16 %8 to i32, !dbg !6354
  %9 = load i16, ptr %new_force.addr, align 2, !dbg !6355
  %conv10 = zext i16 %9 to i32, !dbg !6355
  %add11 = add i32 %conv9, %conv10, !dbg !6356
  %div = udiv i32 %add, %add11, !dbg !6357
  %shl = shl i32 %div, 1, !dbg !6358
  %conv12 = trunc i32 %shl to i16, !dbg !6359
  store i16 %conv12, ptr %retval, align 2, !dbg !6360
  br label %return, !dbg !6360

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %10 = load i16, ptr %retval, align 2, !dbg !6361
  ret i16 %10, !dbg !6361
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6362 dso_local i32 @jiffies_to_msecs(i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__fixp_sin32(i32 noundef %degrees) #13 align 16 !dbg !6365 {
entry:
  %degrees.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %negative = alloca i8, align 1
  store i32 %degrees, ptr %degrees.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %degrees.addr, metadata !6367, metadata !DIExpression()), !dbg !6370
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6371
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6368, metadata !DIExpression()), !dbg !6372
  call void @llvm.lifetime.start.p0(i64 1, ptr %negative) #16, !dbg !6373
  call void @llvm.dbg.declare(metadata ptr %negative, metadata !6369, metadata !DIExpression()), !dbg !6374
  store i8 0, ptr %negative, align 1, !dbg !6374
  %0 = load i32, ptr %degrees.addr, align 4, !dbg !6375
  %cmp = icmp sgt i32 %0, 180, !dbg !6377
  br i1 %cmp, label %if.then, label %if.end, !dbg !6378

if.then:                                          ; preds = %entry
  store i8 1, ptr %negative, align 1, !dbg !6379
  %1 = load i32, ptr %degrees.addr, align 4, !dbg !6381
  %sub = sub i32 %1, 180, !dbg !6381
  store i32 %sub, ptr %degrees.addr, align 4, !dbg !6381
  br label %if.end, !dbg !6382

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %degrees.addr, align 4, !dbg !6383
  %cmp1 = icmp sgt i32 %2, 90, !dbg !6385
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !6386

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %degrees.addr, align 4, !dbg !6387
  %sub3 = sub i32 180, %3, !dbg !6388
  store i32 %sub3, ptr %degrees.addr, align 4, !dbg !6389
  br label %if.end4, !dbg !6390

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load i32, ptr %degrees.addr, align 4, !dbg !6391
  %idxprom = sext i32 %4 to i64, !dbg !6392
  %arrayidx = getelementptr [91 x i32], ptr @sin_table, i64 0, i64 %idxprom, !dbg !6392
  %5 = load i32, ptr %arrayidx, align 4, !dbg !6392
  store i32 %5, ptr %ret, align 4, !dbg !6393
  %6 = load i8, ptr %negative, align 1, !dbg !6394, !range !5234, !noundef !1472
  %tobool = trunc i8 %6 to i1, !dbg !6394
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6394

cond.true:                                        ; preds = %if.end4
  %7 = load i32, ptr %ret, align 4, !dbg !6395
  %sub5 = sub i32 0, %7, !dbg !6396
  br label %cond.end, !dbg !6394

cond.false:                                       ; preds = %if.end4
  %8 = load i32, ptr %ret, align 4, !dbg !6397
  br label %cond.end, !dbg !6394

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub5, %cond.true ], [ %8, %cond.false ], !dbg !6394
  call void @llvm.lifetime.end.p0(i64 1, ptr %negative) #16, !dbg !6398
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6398
  ret i32 %cond, !dbg !6399
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @calculate_next_time(ptr noundef %state) #0 align 16 !dbg !6400 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca ptr, align 8
  %envelope = alloca ptr, align 8
  %attack_stop = alloca i64, align 8
  %fade_start = alloca i64, align 8
  %next_fade = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6404, metadata !DIExpression()), !dbg !6409
  call void @llvm.lifetime.start.p0(i64 8, ptr %envelope) #16, !dbg !6410
  call void @llvm.dbg.declare(metadata ptr %envelope, metadata !6405, metadata !DIExpression()), !dbg !6411
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6412
  %effect = getelementptr inbounds %struct.ml_effect_state, ptr %0, i32 0, i32 0, !dbg !6413
  %1 = load ptr, ptr %effect, align 8, !dbg !6413
  %call = call ptr @get_envelope(ptr noundef %1) #18, !dbg !6414
  store ptr %call, ptr %envelope, align 8, !dbg !6411
  call void @llvm.lifetime.start.p0(i64 8, ptr %attack_stop) #16, !dbg !6415
  call void @llvm.dbg.declare(metadata ptr %attack_stop, metadata !6406, metadata !DIExpression()), !dbg !6416
  call void @llvm.lifetime.start.p0(i64 8, ptr %fade_start) #16, !dbg !6415
  call void @llvm.dbg.declare(metadata ptr %fade_start, metadata !6407, metadata !DIExpression()), !dbg !6417
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_fade) #16, !dbg !6415
  call void @llvm.dbg.declare(metadata ptr %next_fade, metadata !6408, metadata !DIExpression()), !dbg !6418
  %2 = load ptr, ptr %envelope, align 8, !dbg !6419
  %attack_length = getelementptr inbounds %struct.ff_envelope, ptr %2, i32 0, i32 0, !dbg !6421
  %3 = load i16, ptr %attack_length, align 2, !dbg !6421
  %tobool = icmp ne i16 %3, 0, !dbg !6419
  br i1 %tobool, label %if.then, label %if.end8, !dbg !6422

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %state.addr, align 8, !dbg !6423
  %play_at = getelementptr inbounds %struct.ml_effect_state, ptr %4, i32 0, i32 3, !dbg !6425
  %5 = load i64, ptr %play_at, align 8, !dbg !6425
  %6 = load ptr, ptr %envelope, align 8, !dbg !6426
  %attack_length1 = getelementptr inbounds %struct.ff_envelope, ptr %6, i32 0, i32 0, !dbg !6427
  %7 = load i16, ptr %attack_length1, align 2, !dbg !6427
  %conv = zext i16 %7 to i32, !dbg !6426
  %call2 = call i64 @msecs_to_jiffies(i32 noundef %conv) #18, !dbg !6428
  %add = add i64 %5, %call2, !dbg !6429
  store i64 %add, ptr %attack_stop, align 8, !dbg !6430
  %8 = load ptr, ptr %state.addr, align 8, !dbg !6431
  %adj_at = getelementptr inbounds %struct.ml_effect_state, ptr %8, i32 0, i32 5, !dbg !6431
  %9 = load i64, ptr %adj_at, align 8, !dbg !6431
  %10 = load i64, ptr %attack_stop, align 8, !dbg !6431
  %sub = sub i64 %9, %10, !dbg !6431
  %cmp = icmp slt i64 %sub, 0, !dbg !6431
  br i1 %cmp, label %if.then4, label %if.end, !dbg !6433

if.then4:                                         ; preds = %if.then
  %11 = load ptr, ptr %state.addr, align 8, !dbg !6434
  %adj_at5 = getelementptr inbounds %struct.ml_effect_state, ptr %11, i32 0, i32 5, !dbg !6435
  %12 = load i64, ptr %adj_at5, align 8, !dbg !6435
  %call6 = call i64 @msecs_to_jiffies(i32 noundef 50) #18, !dbg !6436
  %add7 = add i64 %12, %call6, !dbg !6437
  store i64 %add7, ptr %retval, align 8, !dbg !6438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6438

if.end:                                           ; preds = %if.then
  br label %if.end8, !dbg !6439

if.end8:                                          ; preds = %if.end, %entry
  %13 = load ptr, ptr %state.addr, align 8, !dbg !6440
  %effect9 = getelementptr inbounds %struct.ml_effect_state, ptr %13, i32 0, i32 0, !dbg !6442
  %14 = load ptr, ptr %effect9, align 8, !dbg !6442
  %replay = getelementptr inbounds %struct.ff_effect, ptr %14, i32 0, i32 4, !dbg !6443
  %length = getelementptr inbounds %struct.ff_replay, ptr %replay, i32 0, i32 0, !dbg !6444
  %15 = load i16, ptr %length, align 2, !dbg !6444
  %tobool10 = icmp ne i16 %15, 0, !dbg !6440
  br i1 %tobool10, label %if.then11, label %if.end35, !dbg !6445

if.then11:                                        ; preds = %if.end8
  %16 = load ptr, ptr %envelope, align 8, !dbg !6446
  %fade_length = getelementptr inbounds %struct.ff_envelope, ptr %16, i32 0, i32 2, !dbg !6449
  %17 = load i16, ptr %fade_length, align 2, !dbg !6449
  %tobool12 = icmp ne i16 %17, 0, !dbg !6446
  br i1 %tobool12, label %if.then13, label %if.end33, !dbg !6450

if.then13:                                        ; preds = %if.then11
  %18 = load ptr, ptr %state.addr, align 8, !dbg !6451
  %stop_at = getelementptr inbounds %struct.ml_effect_state, ptr %18, i32 0, i32 4, !dbg !6453
  %19 = load i64, ptr %stop_at, align 8, !dbg !6453
  %20 = load ptr, ptr %envelope, align 8, !dbg !6454
  %fade_length14 = getelementptr inbounds %struct.ff_envelope, ptr %20, i32 0, i32 2, !dbg !6455
  %21 = load i16, ptr %fade_length14, align 2, !dbg !6455
  %conv15 = zext i16 %21 to i32, !dbg !6454
  %call16 = call i64 @msecs_to_jiffies(i32 noundef %conv15) #18, !dbg !6456
  %sub17 = sub i64 %19, %call16, !dbg !6457
  store i64 %sub17, ptr %fade_start, align 8, !dbg !6458
  %22 = load ptr, ptr %state.addr, align 8, !dbg !6459
  %adj_at18 = getelementptr inbounds %struct.ml_effect_state, ptr %22, i32 0, i32 5, !dbg !6459
  %23 = load i64, ptr %adj_at18, align 8, !dbg !6459
  %24 = load i64, ptr %fade_start, align 8, !dbg !6459
  %sub19 = sub i64 %23, %24, !dbg !6459
  %cmp20 = icmp slt i64 %sub19, 0, !dbg !6459
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !6461

if.then22:                                        ; preds = %if.then13
  %25 = load i64, ptr %fade_start, align 8, !dbg !6462
  store i64 %25, ptr %retval, align 8, !dbg !6463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6463

if.end23:                                         ; preds = %if.then13
  %26 = load ptr, ptr %state.addr, align 8, !dbg !6464
  %adj_at24 = getelementptr inbounds %struct.ml_effect_state, ptr %26, i32 0, i32 5, !dbg !6465
  %27 = load i64, ptr %adj_at24, align 8, !dbg !6465
  %call25 = call i64 @msecs_to_jiffies(i32 noundef 50) #18, !dbg !6466
  %add26 = add i64 %27, %call25, !dbg !6467
  store i64 %add26, ptr %next_fade, align 8, !dbg !6468
  %28 = load i64, ptr %next_fade, align 8, !dbg !6469
  %29 = load ptr, ptr %state.addr, align 8, !dbg !6469
  %stop_at27 = getelementptr inbounds %struct.ml_effect_state, ptr %29, i32 0, i32 4, !dbg !6469
  %30 = load i64, ptr %stop_at27, align 8, !dbg !6469
  %sub28 = sub i64 %28, %30, !dbg !6469
  %cmp29 = icmp slt i64 %sub28, 0, !dbg !6469
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !6471

if.then31:                                        ; preds = %if.end23
  %31 = load i64, ptr %next_fade, align 8, !dbg !6472
  store i64 %31, ptr %retval, align 8, !dbg !6473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6473

if.end32:                                         ; preds = %if.end23
  br label %if.end33, !dbg !6474

if.end33:                                         ; preds = %if.end32, %if.then11
  %32 = load ptr, ptr %state.addr, align 8, !dbg !6475
  %stop_at34 = getelementptr inbounds %struct.ml_effect_state, ptr %32, i32 0, i32 4, !dbg !6476
  %33 = load i64, ptr %stop_at34, align 8, !dbg !6476
  store i64 %33, ptr %retval, align 8, !dbg !6477
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6477

if.end35:                                         ; preds = %if.end8
  %34 = load ptr, ptr %state.addr, align 8, !dbg !6478
  %play_at36 = getelementptr inbounds %struct.ml_effect_state, ptr %34, i32 0, i32 3, !dbg !6479
  %35 = load i64, ptr %play_at36, align 8, !dbg !6479
  store i64 %35, ptr %retval, align 8, !dbg !6480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6480

cleanup:                                          ; preds = %if.end35, %if.end33, %if.then31, %if.then22, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_fade) #16, !dbg !6481
  call void @llvm.lifetime.end.p0(i64 8, ptr %fade_start) #16, !dbg !6481
  call void @llvm.lifetime.end.p0(i64 8, ptr %attack_stop) #16, !dbg !6481
  call void @llvm.lifetime.end.p0(i64 8, ptr %envelope) #16, !dbg !6481
  %36 = load i64, ptr %retval, align 8, !dbg !6481
  ret i64 %36, !dbg !6481
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @del_timer(ptr noundef %timer) #13 align 16 !dbg !6482 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !6486, metadata !DIExpression()), !dbg !6487
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !6488
  %call = call i32 @timer_delete(ptr noundef %0) #18, !dbg !6489
  ret i32 %call, !dbg !6490
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6491 dso_local i32 @mod_timer(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_envelope(ptr noundef %effect) #0 align 16 !dbg !4606 {
entry:
  %retval = alloca ptr, align 8
  %effect.addr = alloca ptr, align 8
  store ptr %effect, ptr %effect.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %effect.addr, metadata !4614, metadata !DIExpression()), !dbg !6494
  %0 = load ptr, ptr %effect.addr, align 8, !dbg !6495
  %type = getelementptr inbounds %struct.ff_effect, ptr %0, i32 0, i32 0, !dbg !6496
  %1 = load i16, ptr %type, align 8, !dbg !6496
  %conv = zext i16 %1 to i32, !dbg !6495
  switch i32 %conv, label %sw.default [
    i32 81, label %sw.bb
    i32 82, label %sw.bb1
  ], !dbg !6497

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %effect.addr, align 8, !dbg !6498
  %u = getelementptr inbounds %struct.ff_effect, ptr %2, i32 0, i32 5, !dbg !6500
  %envelope = getelementptr inbounds %struct.ff_periodic_effect, ptr %u, i32 0, i32 5, !dbg !6501
  store ptr %envelope, ptr %retval, align 8, !dbg !6502
  br label %return, !dbg !6502

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %effect.addr, align 8, !dbg !6503
  %u2 = getelementptr inbounds %struct.ff_effect, ptr %3, i32 0, i32 5, !dbg !6504
  %envelope3 = getelementptr inbounds %struct.ff_constant_effect, ptr %u2, i32 0, i32 1, !dbg !6505
  store ptr %envelope3, ptr %retval, align 8, !dbg !6506
  br label %return, !dbg !6506

sw.default:                                       ; preds = %entry
  store ptr @get_envelope.empty_envelope, ptr %retval, align 8, !dbg !6507
  br label %return, !dbg !6507

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %4 = load ptr, ptr %retval, align 8, !dbg !6508
  ret ptr %4, !dbg !6508
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6509 dso_local i32 @timer_delete(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6510 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6513 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6515, metadata !DIExpression()), !dbg !6517
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6516, metadata !DIExpression()), !dbg !6518
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6519
  %1 = load i64, ptr %size.addr, align 8, !dbg !6520
  %conv = trunc i64 %1 to i32, !dbg !6520
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !6521
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6522
  %3 = load i64, ptr %size.addr, align 8, !dbg !6522
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !6522
  ret void, !dbg !6523
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6524 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6526, metadata !DIExpression()), !dbg !6528
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6527, metadata !DIExpression()), !dbg !6529
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6530
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6532
  br i1 %1, label %if.then, label %if.else, !dbg !6533

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6534
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6534
  %shr = ashr i64 %3, 3, !dbg !6534
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6534
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6536
  %and = and i64 %4, 7, !dbg !6536
  %sh_prom = trunc i64 %and to i32, !dbg !6536
  %shl = shl i32 1, %sh_prom, !dbg !6536
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !6537, !srcloc !6538
  br label %if.end, !dbg !6539

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6540
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6542
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !6543, !srcloc !6544
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6545
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #5 align 16 !dbg !6546 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6550, metadata !DIExpression()), !dbg !6551
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6552
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6552
  call void @_raw_spin_lock_irq(ptr noundef %1) #18, !dbg !6552
  ret void, !dbg !6553
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #5 align 16 !dbg !6554 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6556, metadata !DIExpression()), !dbg !6557
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6558
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6558
  call void @_raw_spin_unlock_irq(ptr noundef %1) #18, !dbg !6558
  ret void, !dbg !6559
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6560 dso_local void @_raw_spin_lock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6563 dso_local void @_raw_spin_unlock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @del_timer_sync(ptr noundef %timer) #13 align 16 !dbg !6564 {
entry:
  %timer.addr = alloca ptr, align 8
  store ptr %timer, ptr %timer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !6566, metadata !DIExpression()), !dbg !6567
  %0 = load ptr, ptr %timer.addr, align 8, !dbg !6568
  %call = call i32 @timer_delete_sync(ptr noundef %0) #18, !dbg !6569
  ret i32 %call, !dbg !6570
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6571 dso_local i32 @timer_delete_sync(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !6572 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6574, metadata !DIExpression()), !dbg !6576
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6575, metadata !DIExpression()), !dbg !6577
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6578
  %1 = load i64, ptr %size.addr, align 8, !dbg !6579
  %conv = trunc i64 %1 to i32, !dbg !6579
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !6580
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6581
  %3 = load i64, ptr %size.addr, align 8, !dbg !6581
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !6581
  ret void, !dbg !6582
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6583 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6585, metadata !DIExpression()), !dbg !6587
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6586, metadata !DIExpression()), !dbg !6588
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6589
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6590
  br i1 %1, label %cond.true, label %cond.false, !dbg !6590

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6591
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6592
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !6593
  %conv = zext i1 %call to i32, !dbg !6593
  br label %cond.end, !dbg !6590

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6594
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6595
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !6596
  %conv2 = zext i1 %call1 to i32, !dbg !6596
  br label %cond.end, !dbg !6590

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6590
  %tobool = icmp ne i32 %cond, 0, !dbg !6590
  ret i1 %tobool, !dbg !6597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #13 align 16 !dbg !6598 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6600, metadata !DIExpression()), !dbg !6602
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6601, metadata !DIExpression()), !dbg !6603
  ret i1 true, !dbg !6604
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6605 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6609, metadata !DIExpression()), !dbg !6611
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6610, metadata !DIExpression()), !dbg !6612
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6613
  %and = and i64 %0, 63, !dbg !6614
  %shl = shl i64 1, %and, !dbg !6615
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6616
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6617
  %shr = ashr i64 %2, 6, !dbg !6618
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6616
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6616
  %and1 = and i64 %shl, %3, !dbg !6619
  %cmp = icmp ne i64 %and1, 0, !dbg !6620
  ret i1 %cmp, !dbg !6621
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !6622 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6624, metadata !DIExpression()), !dbg !6627
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6625, metadata !DIExpression()), !dbg !6628
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !6629
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6626, metadata !DIExpression()), !dbg !6630
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6631
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6632
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !6633, !srcloc !6634
  %3 = icmp ult i8 %2, 2, !dbg !6633
  call void @llvm.assume(i1 %3), !dbg !6633
  store i8 %2, ptr %oldbit, align 1, !dbg !6633
  %4 = load i8, ptr %oldbit, align 1, !dbg !6635, !range !5234, !noundef !1472
  %tobool = trunc i8 %4 to i1, !dbg !6635
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !6636
  ret i1 %tobool, !dbg !6637
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }
attributes #21 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625}
!llvm.ident = !{!4626}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file267", scope: !2, file: !3, line: 21, type: !4615, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/.ff-memless.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/ff-memless\22 -D KBUILD_BASENAME=\22ff_memless\22 -D KBUILD_MODNAME=\22ff_memless\22 -D __KBUILD_MODNAME=kmod_ff_memless -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/ff-memless.ll drivers/input/ff-memless.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !132, globals: !4567, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/ff-memless.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "249a5d04d59217c9e5fba44a0e11cd72")
!4 = !{!5, !14, !21, !28, !34, !39, !45, !50, !56, !63, !69, !76, !84, !92, !101, !106, !111, !117, !122}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !22, line: 15, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!25 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!26 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!27 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !29, line: 26, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!32 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!33 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !35, line: 2052, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!38 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !40, line: 54, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "USRQUOTA", value: 0)
!43 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!44 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !46, line: 65, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!49 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !51, line: 16, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "TT_NONE", value: 0)
!54 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!55 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !57, line: 51, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!60 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!61 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!62 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !64, line: 45, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!67 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!68 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !70, line: 487, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!73 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!74 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!75 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !77, line: 620, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!80 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!81 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!82 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!83 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !77, line: 597, baseType: !85, size: 32, elements: !86)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!88 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!89 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!90 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!91 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !70, line: 547, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100}
!94 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!95 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!96 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!97 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!98 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!99 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!100 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !70, line: 564, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!104 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!105 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !70, line: 577, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!109 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!110 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !70, line: 503, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!115 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 10, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "false", value: 0)
!121 = !DIEnumerator(name: "true", value: 1)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !123, line: 364, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!124 = !{!125, !126, !127, !128, !129, !130, !131}
!125 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!126 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!127 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!128 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!129 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!130 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!131 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!132 = !{!133, !135, !137, !138, !136, !140, !909, !2153, !4563, !85, !247, !558, !332, !4565}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !134, line: 154, baseType: !7)
!134 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !134, line: 42, baseType: !136)
!136 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ml_device", file: !3, line: 44, size: 6720, elements: !142)
!142 = !{!143, !144, !228, !229, !249, !4559}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !141, file: !3, line: 45, baseType: !137, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !141, file: !3, line: 46, baseType: !145, size: 6144, offset: 64)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 6144, elements: !226)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ml_effect_state", file: !3, line: 35, size: 384, elements: !147)
!147 = !{!148, !221, !222, !223, !224, !225}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "effect", scope: !146, file: !3, line: 36, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !151, line: 454, size: 384, elements: !152)
!151 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!152 = !{!153, !157, !160, !161, !166, !171}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !150, file: !151, line: 455, baseType: !154, size: 16)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !155, line: 24, baseType: !156)
!155 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!156 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !150, file: !151, line: 456, baseType: !158, size: 16, offset: 16)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !155, line: 23, baseType: !159)
!159 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !150, file: !151, line: 457, baseType: !154, size: 16, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !150, file: !151, line: 458, baseType: !162, size: 32, offset: 48)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !151, line: 320, size: 32, elements: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !162, file: !151, line: 321, baseType: !154, size: 16)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !162, file: !151, line: 322, baseType: !154, size: 16, offset: 16)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !150, file: !151, line: 459, baseType: !167, size: 32, offset: 80)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !151, line: 310, size: 32, elements: !168)
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !167, file: !151, line: 311, baseType: !154, size: 16)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !167, file: !151, line: 312, baseType: !154, size: 16, offset: 16)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !150, file: !151, line: 467, baseType: !172, size: 256, offset: 128)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !150, file: !151, line: 461, size: 256, elements: !173)
!173 = !{!174, !185, !191, !204, !216}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !172, file: !151, line: 462, baseType: !175, size: 80)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !151, line: 349, size: 80, elements: !176)
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !175, file: !151, line: 350, baseType: !158, size: 16)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !175, file: !151, line: 351, baseType: !179, size: 64, offset: 16)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !151, line: 337, size: 64, elements: !180)
!180 = !{!181, !182, !183, !184}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !179, file: !151, line: 338, baseType: !154, size: 16)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !179, file: !151, line: 339, baseType: !154, size: 16, offset: 16)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !179, file: !151, line: 340, baseType: !154, size: 16, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !179, file: !151, line: 341, baseType: !154, size: 16, offset: 48)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !172, file: !151, line: 463, baseType: !186, size: 96)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !151, line: 360, size: 96, elements: !187)
!187 = !{!188, !189, !190}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !186, file: !151, line: 361, baseType: !158, size: 16)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !186, file: !151, line: 362, baseType: !158, size: 16, offset: 16)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !186, file: !151, line: 363, baseType: !179, size: 64, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !172, file: !151, line: 464, baseType: !192, size: 256)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !151, line: 405, size: 256, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !202}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !192, file: !151, line: 406, baseType: !154, size: 16)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !192, file: !151, line: 407, baseType: !154, size: 16, offset: 16)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !192, file: !151, line: 408, baseType: !158, size: 16, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !192, file: !151, line: 409, baseType: !158, size: 16, offset: 48)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !192, file: !151, line: 410, baseType: !154, size: 16, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !192, file: !151, line: 412, baseType: !179, size: 64, offset: 80)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !192, file: !151, line: 414, baseType: !201, size: 32, offset: 160)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !155, line: 27, baseType: !7)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !192, file: !151, line: 415, baseType: !203, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !172, file: !151, line: 465, baseType: !205, size: 192)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 192, elements: !214)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !151, line: 376, size: 96, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !206, file: !151, line: 377, baseType: !154, size: 16)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !206, file: !151, line: 378, baseType: !154, size: 16, offset: 16)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !206, file: !151, line: 380, baseType: !158, size: 16, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !206, file: !151, line: 381, baseType: !158, size: 16, offset: 48)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !206, file: !151, line: 383, baseType: !154, size: 16, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !206, file: !151, line: 384, baseType: !158, size: 16, offset: 80)
!214 = !{!215}
!215 = !DISubrange(count: 2)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !172, file: !151, line: 466, baseType: !217, size: 32)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !151, line: 426, size: 32, elements: !218)
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !217, file: !151, line: 427, baseType: !154, size: 16)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !217, file: !151, line: 428, baseType: !154, size: 16, offset: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !3, line: 37, baseType: !136, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !146, file: !3, line: 38, baseType: !85, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "play_at", scope: !146, file: !3, line: 39, baseType: !136, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "stop_at", scope: !146, file: !3, line: 40, baseType: !136, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "adj_at", scope: !146, file: !3, line: 41, baseType: !136, size: 64, offset: 320)
!226 = !{!227}
!227 = !DISubrange(count: 16)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "gain", scope: !141, file: !3, line: 47, baseType: !85, size: 32, offset: 6208)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !141, file: !3, line: 48, baseType: !230, size: 320, offset: 6272)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !231, line: 11, size: 320, elements: !232)
!231 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!232 = !{!233, !240, !241, !246}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !230, file: !231, line: 16, baseType: !234, size: 128)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !134, line: 198, size: 128, elements: !235)
!235 = !{!236, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !134, line: 199, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !234, file: !134, line: 199, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !230, file: !231, line: 17, baseType: !136, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !230, file: !231, line: 18, baseType: !242, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !231, line: 19, baseType: !247, size: 32, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !248, line: 21, baseType: !201)
!248 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !141, file: !3, line: 49, baseType: !250, size: 64, offset: 6592)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !252, line: 137, size: 10880, elements: !253)
!252 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!253 = !{!254, !258, !259, !260, !267, !271, !272, !276, !277, !278, !279, !280, !281, !283, !284, !285, !286, !287, !288, !307, !312, !4064, !4067, !4068, !4069, !4071, !4074, !4084, !4085, !4086, !4087, !4088, !4092, !4096, !4100, !4104, !4182, !4183, !4184, !4185, !4186, !4549, !4550, !4551, !4552, !4553, !4555, !4556, !4558}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !252, line: 138, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !251, file: !252, line: 139, baseType: !255, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !251, file: !252, line: 140, baseType: !255, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !251, file: !252, line: 141, baseType: !261, size: 64, offset: 192)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !151, line: 59, size: 64, elements: !262)
!262 = !{!263, !264, !265, !266}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !261, file: !151, line: 60, baseType: !154, size: 16)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !261, file: !151, line: 61, baseType: !154, size: 16, offset: 16)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !261, file: !151, line: 62, baseType: !154, size: 16, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !261, file: !151, line: 63, baseType: !154, size: 16, offset: 48)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !251, file: !252, line: 143, baseType: !268, size: 64, offset: 256)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 1)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !251, file: !252, line: 145, baseType: !268, size: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !251, file: !252, line: 146, baseType: !273, size: 768, offset: 384)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 768, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 12)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !251, file: !252, line: 147, baseType: !268, size: 64, offset: 1152)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !251, file: !252, line: 148, baseType: !268, size: 64, offset: 1216)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !251, file: !252, line: 149, baseType: !268, size: 64, offset: 1280)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !251, file: !252, line: 150, baseType: !268, size: 64, offset: 1344)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !251, file: !252, line: 151, baseType: !268, size: 64, offset: 1408)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !251, file: !252, line: 152, baseType: !282, size: 128, offset: 1472)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 128, elements: !214)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !251, file: !252, line: 153, baseType: !268, size: 64, offset: 1600)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !251, file: !252, line: 155, baseType: !7, size: 32, offset: 1664)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !251, file: !252, line: 157, baseType: !7, size: 32, offset: 1696)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !251, file: !252, line: 158, baseType: !7, size: 32, offset: 1728)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !251, file: !252, line: 159, baseType: !137, size: 64, offset: 1792)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !251, file: !252, line: 161, baseType: !289, size: 64, offset: 1856)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!85, !250, !292, !306}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !151, line: 117, size: 320, elements: !295)
!295 = !{!296, !299, !300, !301, !302}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !151, line: 119, baseType: !297, size: 8)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !155, line: 21, baseType: !298)
!298 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !294, file: !151, line: 120, baseType: !297, size: 8, offset: 8)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !294, file: !151, line: 121, baseType: !154, size: 16, offset: 16)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !294, file: !151, line: 122, baseType: !201, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !294, file: !151, line: 123, baseType: !303, size: 256, offset: 64)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 32)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !251, file: !252, line: 164, baseType: !308, size: 64, offset: 1920)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!85, !250, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !251, file: !252, line: 167, baseType: !313, size: 64, offset: 1984)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !252, line: 546, size: 960, elements: !315)
!315 = !{!316, !320, !324, !328, !333, !334, !338, !339, !340, !394, !395, !396}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !314, file: !252, line: 547, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!85, !250, !149, !149}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !314, file: !252, line: 549, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!85, !250, !85}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !314, file: !252, line: 551, baseType: !325, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!85, !250, !85, !85}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !314, file: !252, line: 552, baseType: !329, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !250, !332}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !248, line: 19, baseType: !154)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !314, file: !252, line: 553, baseType: !329, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !314, file: !252, line: 555, baseType: !335, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !313}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !314, file: !252, line: 557, baseType: !137, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !314, file: !252, line: 559, baseType: !282, size: 128, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !314, file: !252, line: 561, baseType: !341, size: 256, offset: 576)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !342, line: 66, size: 256, elements: !343)
!342 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!343 = !{!344, !354, !383, !388}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !341, file: !342, line: 67, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !346, line: 13, baseType: !347)
!346 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !134, line: 181, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 179, size: 64, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !348, file: !134, line: 180, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !248, line: 22, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !155, line: 30, baseType: !353)
!353 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !341, file: !342, line: 68, baseType: !355, size: 32, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !356, line: 23, baseType: !357)
!356 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !356, line: 14, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !357, file: !356, line: 15, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !361, line: 44, baseType: !362)
!361 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !361, line: 14, size: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !361, line: 15, baseType: !365, size: 32)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !361, line: 15, size: 32, elements: !366)
!366 = !{!367, !372, !378}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !365, file: !361, line: 16, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !134, line: 174, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 172, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !369, file: !134, line: 173, baseType: !85, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !361, line: 24, baseType: !373, size: 16)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !361, line: 24, size: 16, elements: !374)
!374 = !{!375, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !373, file: !361, line: 25, baseType: !376, size: 8)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !248, line: 17, baseType: !297)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !373, file: !361, line: 26, baseType: !376, size: 8, offset: 8)
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !361, line: 28, baseType: !379, size: 32)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !365, file: !361, line: 28, size: 32, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !379, file: !361, line: 29, baseType: !332, size: 16)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !379, file: !361, line: 30, baseType: !332, size: 16, offset: 16)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !341, file: !342, line: 70, baseType: !384, size: 32, offset: 96)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !385, line: 15, size: 32, elements: !386)
!385 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !384, file: !385, line: 20, baseType: !368, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !341, file: !342, line: 72, baseType: !389, size: 128, offset: 128)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !134, line: 190, size: 128, elements: !390)
!390 = !{!391, !393}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !134, line: 191, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !389, file: !134, line: 191, baseType: !392, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !314, file: !252, line: 563, baseType: !85, size: 32, offset: 832)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !314, file: !252, line: 564, baseType: !149, size: 64, offset: 896)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !314, file: !252, line: 565, baseType: !397, offset: 960)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, elements: !500)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !400)
!400 = !{!401, !420, !429, !431, !432, !433, !437, !438, !513, !735, !744, !4054, !4055, !4056, !4057, !4058, !4059, !4061, !4062, !4063}
!401 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !35, line: 995, baseType: !402, size: 128)
!402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !35, line: 995, size: 128, elements: !403)
!403 = !{!404, !410, !419}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !402, file: !35, line: 996, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !406, line: 60, size: 64, elements: !407)
!406 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !406, line: 61, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !402, file: !35, line: 997, baseType: !411, size: 128, align: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !134, line: 232, size: 128, align: 64, elements: !412)
!412 = !{!413, !415}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !411, file: !134, line: 233, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !411, file: !134, line: 234, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !414}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !402, file: !35, line: 998, baseType: !7, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !399, file: !35, line: 1005, baseType: !421, size: 32, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !422, line: 29, baseType: !423)
!422 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !422, line: 17, size: 32, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !422, line: 18, baseType: !426, size: 32)
!426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !423, file: !422, line: 18, size: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !426, file: !422, line: 19, baseType: !357, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !399, file: !35, line: 1006, baseType: !430, size: 32, offset: 160)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !134, line: 156, baseType: !7)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !399, file: !35, line: 1007, baseType: !345, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !399, file: !35, line: 1008, baseType: !341, size: 256, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !399, file: !35, line: 1009, baseType: !434, size: 64, offset: 512)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !134, line: 52, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !436, line: 88, baseType: !353)
!436 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!437 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !399, file: !35, line: 1010, baseType: !7, size: 32, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !399, file: !35, line: 1011, baseType: !439, size: 256, offset: 640)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !440)
!440 = !{!441, !464, !502, !503, !511, !512}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !439, file: !35, line: 949, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !443, line: 34, baseType: !444)
!443 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 25, size: 64, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !444, file: !443, line: 26, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !448, line: 27, baseType: !449)
!448 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !448, line: 13, size: 64, elements: !450)
!450 = !{!451, !463}
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !448, line: 14, baseType: !452, size: 32)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !448, line: 14, size: 32, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !452, file: !448, line: 15, baseType: !368, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !448, line: 16, baseType: !456, size: 32)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !448, line: 16, size: 32, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !456, file: !448, line: 18, baseType: !376, size: 8)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !456, file: !448, line: 19, baseType: !460, size: 24, offset: 8)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 24, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 3)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !449, file: !448, line: 26, baseType: !360, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !439, file: !35, line: 950, baseType: !465, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !467)
!467 = !{!468, !474, !475, !476, !483, !484, !491, !492}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !466, file: !6, line: 61, baseType: !469, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !470, line: 113, baseType: !471)
!470 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !470, line: 111, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !471, file: !470, line: 112, baseType: !368, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !466, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !466, file: !6, line: 63, baseType: !421, size: 32, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !466, file: !6, line: 65, baseType: !477, size: 256, offset: 128)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 256, elements: !481)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !134, line: 194, size: 64, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !478, file: !134, line: 195, baseType: !237, size: 64)
!481 = !{!482}
!482 = !DISubrange(count: 4)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !466, file: !6, line: 66, baseType: !478, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !466, file: !6, line: 68, baseType: !485, size: 192, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !486, line: 41, baseType: !487)
!486 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !486, line: 37, size: 192, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !487, file: !486, line: 38, baseType: !421, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !487, file: !486, line: 39, baseType: !389, size: 128, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !466, file: !6, line: 69, baseType: !411, size: 128, align: 64, offset: 640)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !466, file: !6, line: 70, baseType: !493, offset: 768)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, elements: !500)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !494, file: !6, line: 55, baseType: !85, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !494, file: !6, line: 56, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!500 = !{!501}
!501 = !DISubrange(count: -1)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !439, file: !35, line: 951, baseType: !5, size: 32, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !439, file: !35, line: 952, baseType: !504, size: 32, offset: 160)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !505, line: 23, baseType: !506)
!505 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 21, size: 32, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !506, file: !505, line: 22, baseType: !509, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !134, line: 37, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !436, line: 49, baseType: !7)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !439, file: !35, line: 952, baseType: !504, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !439, file: !35, line: 953, baseType: !85, size: 32, offset: 224)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !399, file: !35, line: 1012, baseType: !514, size: 64, offset: 896)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !517, line: 110, size: 1472, elements: !518)
!517 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!518 = !{!519, !520, !521, !528, !529, !530, !531, !532, !533, !534, !535, !544, !545, !546, !547, !548, !549, !679, !680, !681, !682, !683, !714, !718, !722, !730}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !516, file: !517, line: 111, baseType: !345, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !516, file: !517, line: 112, baseType: !504, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !516, file: !517, line: 113, baseType: !522, size: 32, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !505, line: 28, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 26, size: 32, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !523, file: !505, line: 27, baseType: !526, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !134, line: 38, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !436, line: 50, baseType: !7)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !516, file: !517, line: 114, baseType: !504, size: 32, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !516, file: !517, line: 115, baseType: !522, size: 32, offset: 160)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !516, file: !517, line: 116, baseType: !504, size: 32, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !516, file: !517, line: 117, baseType: !522, size: 32, offset: 224)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !516, file: !517, line: 118, baseType: !504, size: 32, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !516, file: !517, line: 119, baseType: !522, size: 32, offset: 288)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !516, file: !517, line: 120, baseType: !7, size: 32, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !516, file: !517, line: 121, baseType: !536, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !537, line: 24, baseType: !538)
!537 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 24, size: 64, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !538, file: !537, line: 24, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !248, line: 23, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !155, line: 31, baseType: !543)
!543 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !516, file: !517, line: 122, baseType: !536, size: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !516, file: !517, line: 123, baseType: !536, size: 64, offset: 512)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !516, file: !517, line: 124, baseType: !536, size: 64, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !516, file: !517, line: 125, baseType: !536, size: 64, offset: 640)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !516, file: !517, line: 127, baseType: !298, size: 8, offset: 704)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !516, file: !517, line: 129, baseType: !550, size: 64, offset: 768)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !552, line: 195, size: 1728, elements: !553)
!552 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!553 = !{!554, !555, !560, !572, !581, !584, !585, !592, !593, !594, !595, !598, !599, !600, !601, !602, !643, !664}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !551, file: !552, line: 196, baseType: !469, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !551, file: !552, line: 197, baseType: !556, size: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !552, line: 28, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !134, line: 104, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !248, line: 20, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !155, line: 26, baseType: !85)
!560 = !DIDerivedType(tag: DW_TAG_member, scope: !551, file: !552, line: 198, baseType: !561, size: 192, offset: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !552, line: 198, size: 192, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !561, file: !552, line: 199, baseType: !389, size: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !561, file: !552, line: 200, baseType: !565, size: 192, align: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !566, line: 5, size: 192, align: 64, elements: !567)
!566 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!567 = !{!568, !569, !571}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !565, file: !566, line: 6, baseType: !136, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !565, file: !566, line: 7, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !565, file: !566, line: 8, baseType: !570, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !551, file: !552, line: 205, baseType: !573, size: 320, offset: 256)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !574, line: 48, size: 320, elements: !575)
!574 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!575 = !{!576, !577, !578, !579, !580}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !573, file: !574, line: 49, baseType: !345, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !573, file: !574, line: 55, baseType: !345, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !573, file: !574, line: 57, baseType: !384, size: 32, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !573, file: !574, line: 59, baseType: !355, size: 32, offset: 160)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !573, file: !574, line: 60, baseType: !389, size: 128, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !551, file: !552, line: 206, baseType: !582, size: 64, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !552, line: 206, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !551, file: !552, line: 207, baseType: !137, size: 64, offset: 640)
!585 = !DIDerivedType(tag: DW_TAG_member, scope: !551, file: !552, line: 208, baseType: !586, size: 64, offset: 704)
!586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !552, line: 208, size: 64, elements: !587)
!587 = !{!588, !591}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !586, file: !552, line: 209, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !590, line: 8, baseType: !352)
!590 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!591 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !586, file: !552, line: 210, baseType: !589, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !551, file: !552, line: 212, baseType: !589, size: 64, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !551, file: !552, line: 213, baseType: !504, size: 32, offset: 832)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !551, file: !552, line: 214, baseType: !522, size: 32, offset: 864)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !551, file: !552, line: 215, baseType: !596, size: 32, offset: 896)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !552, line: 31, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !134, line: 110, baseType: !247)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !551, file: !552, line: 216, baseType: !156, size: 16, offset: 928)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !551, file: !552, line: 217, baseType: !156, size: 16, offset: 944)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !551, file: !552, line: 221, baseType: !159, size: 16, offset: 960)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !551, file: !552, line: 228, baseType: !136, size: 64, offset: 1024)
!602 = !DIDerivedType(tag: DW_TAG_member, scope: !551, file: !552, line: 245, baseType: !603, size: 320, offset: 1088)
!603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !552, line: 245, size: 320, elements: !604)
!604 = !{!605, !634}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !603, file: !552, line: 246, baseType: !606, size: 320)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !552, line: 114, size: 320, elements: !607)
!607 = !{!608, !609, !621, !624, !633}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !606, file: !552, line: 116, baseType: !136, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, scope: !606, file: !552, line: 117, baseType: !610, size: 64, offset: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !552, line: 117, size: 64, elements: !611)
!611 = !{!612, !620}
!612 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !552, line: 118, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !552, line: 118, size: 64, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !613, file: !552, line: 120, baseType: !332, size: 16)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !613, file: !552, line: 121, baseType: !617, size: 48, offset: 16)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 48, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 6)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !610, file: !552, line: 127, baseType: !136, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !606, file: !552, line: 129, baseType: !622, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !552, line: 102, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !606, file: !552, line: 130, baseType: !625, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !552, line: 108, size: 192, elements: !627)
!627 = !{!628, !629, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !626, file: !552, line: 109, baseType: !411, size: 128, align: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !626, file: !552, line: 110, baseType: !469, size: 32, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !626, file: !552, line: 111, baseType: !631, size: 8, offset: 160)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !134, line: 35, baseType: !632)
!632 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !606, file: !552, line: 131, baseType: !255, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !552, line: 247, baseType: !635, size: 320)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !603, file: !552, line: 247, size: 320, elements: !636)
!636 = !{!637, !638, !639, !640, !641}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !635, file: !552, line: 248, baseType: !136, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !635, file: !552, line: 249, baseType: !136, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !635, file: !552, line: 250, baseType: !622, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !635, file: !552, line: 251, baseType: !625, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !635, file: !552, line: 252, baseType: !642, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !551, file: !552, line: 260, baseType: !644, size: 256, offset: 1408)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !552, line: 260, size: 256, elements: !645)
!645 = !{!646, !652}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !644, file: !552, line: 261, baseType: !647, size: 256)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !552, line: 134, size: 256, elements: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !647, file: !552, line: 135, baseType: !137, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !647, file: !552, line: 136, baseType: !651, size: 256)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !481)
!652 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !552, line: 262, baseType: !653, size: 256)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !644, file: !552, line: 262, size: 256, elements: !654)
!654 = !{!655, !656}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !653, file: !552, line: 264, baseType: !389, size: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !653, file: !552, line: 265, baseType: !657, size: 128, offset: 128)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !658, line: 22, size: 128, elements: !659)
!658 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!659 = !{!660, !663}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !657, file: !658, line: 23, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !658, line: 23, flags: DIFlagFwdDecl)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !657, file: !658, line: 24, baseType: !136, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !551, file: !552, line: 280, baseType: !665, size: 64, offset: 1664)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !552, line: 176, size: 192, elements: !667)
!667 = !{!668, !677, !678}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !666, file: !552, line: 177, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !552, line: 171, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!85, !550, !673, !675, !550}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !666, file: !552, line: 178, baseType: !550, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !666, file: !552, line: 179, baseType: !622, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !516, file: !517, line: 130, baseType: !550, size: 64, offset: 832)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !516, file: !517, line: 131, baseType: !550, size: 64, offset: 896)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !516, file: !517, line: 132, baseType: !550, size: 64, offset: 960)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !516, file: !517, line: 135, baseType: !137, size: 64, offset: 1024)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !516, file: !517, line: 137, baseType: !684, size: 64, offset: 1088)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !686, line: 14, size: 1088, elements: !687)
!686 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!687 = !{!688, !689, !698, !699, !700, !701, !702, !703}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !685, file: !686, line: 15, baseType: !469, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !685, file: !686, line: 17, baseType: !690, size: 320, offset: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !691, line: 22, size: 320, elements: !692)
!691 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!692 = !{!693, !694, !695, !696}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !690, file: !691, line: 23, baseType: !355, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !690, file: !691, line: 24, baseType: !351, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !690, file: !691, line: 26, baseType: !389, size: 128, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !690, file: !691, line: 28, baseType: !697, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !685, file: !686, line: 19, baseType: !136, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !685, file: !686, line: 20, baseType: !345, size: 64, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !685, file: !686, line: 23, baseType: !234, size: 128, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !685, file: !686, line: 24, baseType: !504, size: 32, offset: 640)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !685, file: !686, line: 29, baseType: !345, size: 64, offset: 704)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !685, file: !686, line: 36, baseType: !704, size: 320, offset: 768)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !705, line: 15, size: 320, elements: !706)
!705 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!706 = !{!707, !708, !709, !710, !711, !712, !713}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !704, file: !705, line: 16, baseType: !355, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !704, file: !705, line: 18, baseType: !85, size: 32, offset: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !704, file: !705, line: 19, baseType: !85, size: 32, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !704, file: !705, line: 20, baseType: !85, size: 32, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !704, file: !705, line: 21, baseType: !85, size: 32, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !704, file: !705, line: 22, baseType: !136, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !705, line: 23, baseType: !136, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !516, file: !517, line: 138, baseType: !715, size: 64, offset: 1152)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !717, line: 901, flags: DIFlagFwdDecl)
!717 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !516, file: !517, line: 139, baseType: !719, size: 64, offset: 1216)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !721, line: 16, flags: DIFlagFwdDecl)
!721 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!722 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !516, file: !517, line: 140, baseType: !723, size: 64, offset: 1280)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !517, line: 25, size: 64, elements: !725)
!725 = !{!726, !727, !728}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !724, file: !517, line: 26, baseType: !368, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !724, file: !517, line: 27, baseType: !85, size: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !724, file: !517, line: 28, baseType: !729, offset: 64)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, elements: !500)
!730 = !DIDerivedType(tag: DW_TAG_member, scope: !516, file: !517, line: 142, baseType: !731, size: 128, offset: 1344)
!731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !516, file: !517, line: 142, size: 128, elements: !732)
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !731, file: !517, line: 143, baseType: !85, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !731, file: !517, line: 144, baseType: !411, size: 128, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !399, file: !35, line: 1013, baseType: !736, size: 256, offset: 960)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !736, file: !35, line: 971, baseType: !136, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !736, file: !35, line: 972, baseType: !7, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !736, file: !35, line: 973, baseType: !7, size: 32, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !736, file: !35, line: 974, baseType: !7, size: 32, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !736, file: !35, line: 975, baseType: !7, size: 32, offset: 160)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !736, file: !35, line: 976, baseType: !434, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !399, file: !35, line: 1014, baseType: !745, size: 128, offset: 1216)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !746, line: 8, size: 128, elements: !747)
!746 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!747 = !{!748, !4053}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !745, file: !746, line: 9, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !751, line: 70, size: 256, elements: !752)
!751 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!752 = !{!753, !4050, !4051, !4052}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !750, file: !751, line: 71, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !756, line: 82, size: 1536, elements: !757)
!756 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!757 = !{!758, !759, !769, !777, !778, !793, !4017, !4019, !4032, !4033, !4034, !4035, !4036, !4042, !4043, !4044}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !755, file: !756, line: 84, baseType: !7, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !755, file: !756, line: 85, baseType: !760, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !761, line: 275, baseType: !762)
!761 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !761, line: 275, size: 32, elements: !763)
!763 = !{!764}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !762, file: !761, line: 275, baseType: !765, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !761, line: 69, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !761, line: 64, size: 32, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !766, file: !761, line: 65, baseType: !7, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !755, file: !756, line: 86, baseType: !770, size: 128, offset: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !771, line: 38, size: 128, elements: !772)
!771 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!772 = !{!773, !775}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !770, file: !771, line: 39, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !770, file: !771, line: 39, baseType: !776, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !755, file: !756, line: 87, baseType: !754, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !755, file: !756, line: 88, baseType: !779, size: 128, offset: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !756, line: 49, size: 128, elements: !780)
!780 = !{!781, !790}
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !756, line: 50, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !779, file: !756, line: 50, size: 64, elements: !783)
!783 = !{!784, !789}
!784 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !756, line: 51, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !756, line: 51, size: 64, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !785, file: !756, line: 52, baseType: !247, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !785, file: !756, line: 52, baseType: !247, size: 32, offset: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !782, file: !756, line: 54, baseType: !541, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !779, file: !756, line: 56, baseType: !791, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !755, file: !756, line: 89, baseType: !794, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !796)
!796 = !{!797, !799, !800, !801, !802, !803, !804, !807, !808, !1005, !3833, !3834, !3835, !3836, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3999, !4002, !4003, !4004, !4013, !4014, !4015, !4016}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !795, file: !35, line: 642, baseType: !798, size: 16)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !134, line: 24, baseType: !156)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !795, file: !35, line: 643, baseType: !156, size: 16, offset: 16)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !795, file: !35, line: 644, baseType: !504, size: 32, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !795, file: !35, line: 645, baseType: !389, size: 128, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !795, file: !35, line: 646, baseType: !522, size: 32, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !795, file: !35, line: 647, baseType: !7, size: 32, offset: 224)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !795, file: !35, line: 650, baseType: !805, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !795, file: !35, line: 651, baseType: !805, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !795, file: !35, line: 654, baseType: !809, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !811)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !812)
!812 = !{!813, !817, !830, !836, !840, !844, !848, !852, !856, !860, !864, !865, !871, !875, !913, !944, !954, !960, !964, !968, !972, !976, !980, !986, !990}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !811, file: !35, line: 1967, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!754, !794, !754, !7}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !811, file: !35, line: 1968, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!255, !754, !794, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !823, line: 10, size: 128, elements: !824)
!823 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!824 = !{!825, !829}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !822, file: !823, line: 11, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !137}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !822, file: !823, line: 12, baseType: !137, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !811, file: !35, line: 1969, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!85, !834, !794, !85}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !537, line: 42, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !811, file: !35, line: 1970, baseType: !837, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!805, !794, !85, !631}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !811, file: !35, line: 1972, baseType: !841, size: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!85, !754, !642, !85}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !811, file: !35, line: 1974, baseType: !845, size: 64, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!85, !834, !794, !754, !798, !631}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !811, file: !35, line: 1976, baseType: !849, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!85, !754, !794, !754}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !811, file: !35, line: 1977, baseType: !853, size: 64, offset: 448)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!85, !794, !754}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !811, file: !35, line: 1978, baseType: !857, size: 64, offset: 512)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!85, !834, !794, !754, !255}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !811, file: !35, line: 1980, baseType: !861, size: 64, offset: 576)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!85, !834, !794, !754, !798}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !811, file: !35, line: 1982, baseType: !853, size: 64, offset: 640)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !811, file: !35, line: 1983, baseType: !866, size: 64, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!85, !834, !794, !754, !798, !869}
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !134, line: 21, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !134, line: 18, baseType: !247)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !811, file: !35, line: 1985, baseType: !872, size: 64, offset: 768)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!85, !834, !794, !754, !794, !754, !7}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !811, file: !35, line: 1987, baseType: !876, size: 64, offset: 832)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!85, !834, !754, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !881)
!881 = !{!882, !883, !884, !894, !903, !904, !910, !911, !912}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !880, file: !35, line: 227, baseType: !7, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !880, file: !35, line: 228, baseType: !798, size: 16, offset: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !35, line: 241, baseType: !885, size: 32, offset: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !35, line: 241, size: 32, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !885, file: !35, line: 242, baseType: !504, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !885, file: !35, line: 243, baseType: !889, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !890, line: 16, baseType: !891)
!890 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !890, line: 14, size: 32, elements: !892)
!892 = !{!893}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !891, file: !890, line: 15, baseType: !509, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !35, line: 245, baseType: !895, size: 32, offset: 96)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !35, line: 245, size: 32, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !895, file: !35, line: 246, baseType: !522, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !895, file: !35, line: 247, baseType: !899, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !890, line: 20, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !890, line: 18, size: 32, elements: !901)
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !900, file: !890, line: 19, baseType: !526, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !880, file: !35, line: 249, baseType: !434, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !880, file: !35, line: 250, baseType: !905, size: 128, offset: 192)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !590, line: 13, size: 128, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !905, file: !590, line: 14, baseType: !589, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !905, file: !590, line: 15, baseType: !909, size: 64, offset: 64)
!909 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !880, file: !35, line: 251, baseType: !905, size: 128, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !880, file: !35, line: 252, baseType: !905, size: 128, offset: 448)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !880, file: !35, line: 259, baseType: !398, size: 64, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !811, file: !35, line: 1988, baseType: !914, size: 64, offset: 896)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!85, !834, !917, !919, !247, !7}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !921, line: 22, size: 1280, elements: !922)
!921 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!922 = !{!923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !920, file: !921, line: 23, baseType: !247, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !920, file: !921, line: 24, baseType: !798, size: 16, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !920, file: !921, line: 25, baseType: !7, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !920, file: !921, line: 26, baseType: !597, size: 32, offset: 96)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !920, file: !921, line: 27, baseType: !541, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !920, file: !921, line: 28, baseType: !541, size: 64, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !920, file: !921, line: 41, baseType: !541, size: 64, offset: 256)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !920, file: !921, line: 42, baseType: !869, size: 32, offset: 320)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !920, file: !921, line: 43, baseType: !869, size: 32, offset: 352)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !920, file: !921, line: 44, baseType: !504, size: 32, offset: 384)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !920, file: !921, line: 45, baseType: !522, size: 32, offset: 416)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !920, file: !921, line: 46, baseType: !434, size: 64, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !920, file: !921, line: 47, baseType: !905, size: 128, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !920, file: !921, line: 48, baseType: !905, size: 128, offset: 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !920, file: !921, line: 49, baseType: !905, size: 128, offset: 768)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !920, file: !921, line: 50, baseType: !905, size: 128, offset: 896)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !920, file: !921, line: 51, baseType: !541, size: 64, offset: 1024)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !920, file: !921, line: 52, baseType: !541, size: 64, offset: 1088)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !920, file: !921, line: 53, baseType: !247, size: 32, offset: 1152)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !920, file: !921, line: 54, baseType: !247, size: 32, offset: 1184)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !920, file: !921, line: 55, baseType: !541, size: 64, offset: 1216)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !811, file: !35, line: 1990, baseType: !945, size: 64, offset: 960)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!948, !754, !642, !951}
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !134, line: 66, baseType: !949)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !436, line: 73, baseType: !950)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !436, line: 15, baseType: !909)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 61, baseType: !952)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !436, line: 72, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !436, line: 16, baseType: !136)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !811, file: !35, line: 1991, baseType: !955, size: 64, offset: 1024)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!85, !794, !958, !541, !541}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !811, file: !35, line: 1993, baseType: !961, size: 64, offset: 1088)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!85, !794, !85}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !811, file: !35, line: 1994, baseType: !965, size: 64, offset: 1152)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!85, !794, !754, !398, !7, !798}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !811, file: !35, line: 1997, baseType: !969, size: 64, offset: 1216)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!85, !834, !794, !398, !798}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !811, file: !35, line: 1999, baseType: !973, size: 64, offset: 1280)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!805, !834, !754, !85}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !811, file: !35, line: 2001, baseType: !977, size: 64, offset: 1344)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!85, !834, !754, !805, !85}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !811, file: !35, line: 2003, baseType: !981, size: 64, offset: 1408)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!85, !834, !754, !984}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !35, line: 76, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !811, file: !35, line: 2005, baseType: !987, size: 64, offset: 1472)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!85, !754, !984}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !811, file: !35, line: 2006, baseType: !991, size: 64, offset: 1536)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!994, !794}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !996)
!996 = !{!997, !1004}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !995, file: !35, line: 3193, baseType: !998, size: 128)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !999, line: 296, size: 128, elements: !1000)
!999 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !998, file: !999, line: 297, baseType: !421, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !998, file: !999, line: 299, baseType: !133, size: 32, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !998, file: !999, line: 300, baseType: !137, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !995, file: !35, line: 3194, baseType: !247, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !795, file: !35, line: 655, baseType: !1006, size: 64, offset: 448)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014, !2182, !2314, !2354, !2437, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2454, !2458, !2459, !2462, !2465, !2468, !2471, !2472, !2473, !2514, !3708, !3709, !3710, !3711, !3712, !3713, !3716, !3718, !3725, !3726, !3727, !3728, !3787, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1007, file: !35, line: 1191, baseType: !389, size: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1007, file: !35, line: 1192, baseType: !869, size: 32, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1007, file: !35, line: 1193, baseType: !298, size: 8, offset: 160)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1007, file: !35, line: 1194, baseType: !136, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1007, file: !35, line: 1195, baseType: !434, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1007, file: !35, line: 1196, baseType: !1015, size: 64, offset: 320)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1027, !1031, !1035, !1039, !2170, !2171, !2172, !2174, !2175, !2176, !2178, !2179, !2180, !2181}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1016, file: !35, line: 2367, baseType: !255, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1016, file: !35, line: 2368, baseType: !85, size: 32, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1016, file: !35, line: 2376, baseType: !1021, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!85, !1024}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1026, line: 32, flags: DIFlagFwdDecl)
!1026 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1016, file: !35, line: 2377, baseType: !1028, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1030)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1016, file: !35, line: 2378, baseType: !1032, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!754, !1015, !85, !255, !137}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1016, file: !35, line: 2380, baseType: !1036, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !1006}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1016, file: !35, line: 2381, baseType: !1040, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1049, !1840, !1866, !1867, !1868, !1869, !1873, !1876, !1877, !1878, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1945, !1949, !1967, !1985, !1986, !1987, !1988, !1997, !2020, !2021, !2024, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2038, !2039, !2128, !2136, !2137, !2138, !2140, !2144, !2145, !2149, !2150, !2151, !2152, !2154, !2155, !2156, !2163, !2164, !2165, !2169}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1041, file: !15, line: 403, baseType: !14, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1041, file: !15, line: 406, baseType: !389, size: 128, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1041, file: !15, line: 409, baseType: !1046, size: 448, offset: 192)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 448, elements: !1047)
!1047 = !{!1048}
!1048 = !DISubrange(count: 56)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1041, file: !15, line: 417, baseType: !1050, size: 768, offset: 640)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !1051)
!1051 = !{!1052, !1823, !1824, !1825, !1828}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1050, file: !15, line: 46, baseType: !1053, size: 512)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1054, line: 64, size: 512, elements: !1055)
!1054 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1055 = !{!1056, !1057, !1058, !1060, !1104, !1702, !1813, !1818, !1819, !1820, !1821, !1822}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1053, file: !1054, line: 65, baseType: !255, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1053, file: !1054, line: 66, baseType: !389, size: 128, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1053, file: !1054, line: 67, baseType: !1059, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1053, file: !1054, line: 68, baseType: !1061, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1054, line: 168, size: 768, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1062, file: !1054, line: 169, baseType: !389, size: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1062, file: !1054, line: 170, baseType: !421, size: 32, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1062, file: !1054, line: 171, baseType: !1053, size: 512, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1062, file: !1054, line: 172, baseType: !1068, size: 64, offset: 704)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1054, line: 133, size: 192, elements: !1071)
!1071 = !{!1072, !1079, !1084}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1070, file: !1054, line: 134, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1074)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!85, !1077}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1053)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1070, file: !1054, line: 135, baseType: !1080, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!255, !1077}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1070, file: !1054, line: 136, baseType: !1085, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!85, !1077, !1089}
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1054, line: 125, size: 20736, elements: !1091)
!1091 = !{!1092, !1094, !1098, !1099, !1103}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1090, file: !1054, line: 126, baseType: !1093, size: 192)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 192, elements: !461)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1090, file: !1054, line: 127, baseType: !1095, size: 4096, offset: 192)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 4096, elements: !1096)
!1096 = !{!1097}
!1097 = !DISubrange(count: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1090, file: !1054, line: 128, baseType: !85, size: 32, offset: 4288)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1090, file: !1054, line: 129, baseType: !1100, size: 16384, offset: 4320)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 16384, elements: !1101)
!1101 = !{!1102}
!1102 = !DISubrange(count: 2048)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1090, file: !1054, line: 130, baseType: !85, size: 32, offset: 20704)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1053, file: !1054, line: 69, baseType: !1105, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1054, line: 116, size: 384, elements: !1108)
!1108 = !{!1109, !1113, !1132, !1664, !1692, !1696}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1107, file: !1054, line: 117, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !1059}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1107, file: !1054, line: 118, baseType: !1114, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1117, line: 254, size: 128, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1118 = !{!1119, !1128}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1116, file: !1117, line: 255, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!948, !1059, !1123, !642}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1117, line: 30, size: 128, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1124, file: !1117, line: 31, baseType: !255, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1124, file: !1117, line: 32, baseType: !798, size: 16, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1116, file: !1117, line: 256, baseType: !1129, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!948, !1059, !1123, !255, !951}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1107, file: !1054, line: 119, baseType: !1133, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1136)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1117, line: 84, size: 320, elements: !1137)
!1137 = !{!1138, !1139, !1143, !1660, !1662}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1136, file: !1117, line: 85, baseType: !255, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1136, file: !1117, line: 86, baseType: !1140, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!798, !1059, !1123, !85}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1136, file: !1117, line: 88, baseType: !1144, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!798, !1059, !1147, !85}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1117, line: 175, size: 512, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1153, !1429, !1433, !1434}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1148, file: !1117, line: 176, baseType: !1124, size: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1148, file: !1117, line: 177, baseType: !951, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1148, file: !1117, line: 178, baseType: !137, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1148, file: !1117, line: 179, baseType: !1154, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!1157}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1165, !1173, !1174, !1175, !1421, !1422, !1423, !1426, !1427, !1428}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1158, file: !35, line: 473, baseType: !794, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1158, file: !35, line: 474, baseType: !998, size: 128, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1158, file: !35, line: 475, baseType: !573, size: 320, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1158, file: !35, line: 476, baseType: !133, size: 32, offset: 512)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1158, file: !35, line: 477, baseType: !368, size: 32, offset: 544)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1158, file: !35, line: 482, baseType: !1166, size: 128, offset: 576)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !566, line: 26, size: 128, elements: !1167)
!1167 = !{!1168, !1172}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1166, file: !566, line: 27, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !566, line: 12, size: 64, elements: !1170)
!1170 = !{!1171}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1169, file: !566, line: 13, baseType: !570, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1166, file: !566, line: 28, baseType: !570, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1158, file: !35, line: 483, baseType: !136, size: 64, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1158, file: !35, line: 484, baseType: !136, size: 64, offset: 768)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1158, file: !35, line: 485, baseType: !1176, size: 64, offset: 832)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !1179)
!1179 = !{!1180, !1246, !1316, !1320, !1324, !1330, !1336, !1340, !1345, !1349, !1353, !1357, !1385, !1389, !1393, !1397, !1402, !1406, !1413, !1417}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1178, file: !35, line: 405, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!85, !1184, !1244}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !717, line: 74, size: 512, align: 128, elements: !1186)
!1186 = !{!1187, !1188, !1238, !1243}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1185, file: !717, line: 75, baseType: !136, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !717, line: 83, baseType: !1189, size: 320, offset: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !717, line: 83, size: 320, elements: !1190)
!1190 = !{!1191, !1212, !1226, !1230, !1237}
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !717, line: 84, baseType: !1192, size: 320)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1189, file: !717, line: 84, size: 320, elements: !1193)
!1193 = !{!1194, !1205, !1206, !1211}
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !717, line: 90, baseType: !1195, size: 128)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !717, line: 90, size: 128, elements: !1196)
!1196 = !{!1197, !1198, !1203, !1204}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1195, file: !717, line: 91, baseType: !389, size: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1195, file: !717, line: 94, baseType: !1199, size: 128)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1195, file: !717, line: 94, size: 128, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1199, file: !717, line: 96, baseType: !137, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1199, file: !717, line: 98, baseType: !7, size: 32, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1195, file: !717, line: 102, baseType: !389, size: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1195, file: !717, line: 103, baseType: !389, size: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1192, file: !717, line: 106, baseType: !1157, size: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !717, line: 107, baseType: !1207, size: 64, offset: 192)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !717, line: 107, size: 64, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1207, file: !717, line: 108, baseType: !136, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1207, file: !717, line: 109, baseType: !136, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1192, file: !717, line: 117, baseType: !136, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !717, line: 119, baseType: !1213, size: 320)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1189, file: !717, line: 119, size: 320, elements: !1214)
!1214 = !{!1215, !1216, !1219, !1220, !1221}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1213, file: !717, line: 124, baseType: !136, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1213, file: !717, line: 125, baseType: !1217, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !717, line: 125, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1213, file: !717, line: 126, baseType: !136, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1213, file: !717, line: 127, baseType: !136, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1213, file: !717, line: 128, baseType: !1222, size: 64, offset: 256)
!1222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1213, file: !717, line: 128, size: 64, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1222, file: !717, line: 133, baseType: !136, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1222, file: !717, line: 138, baseType: !345, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !717, line: 141, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1189, file: !717, line: 141, size: 64, elements: !1228)
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1227, file: !717, line: 142, baseType: !136, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !717, line: 144, baseType: !1231, size: 128)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1189, file: !717, line: 144, size: 128, elements: !1232)
!1232 = !{!1233, !1236}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1231, file: !717, line: 146, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !717, line: 146, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1231, file: !717, line: 147, baseType: !137, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1189, file: !717, line: 161, baseType: !411, size: 128, align: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !717, line: 164, baseType: !1239, size: 32, offset: 384)
!1239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !717, line: 164, size: 32, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1239, file: !717, line: 169, baseType: !368, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1239, file: !717, line: 177, baseType: !7, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1185, file: !717, line: 181, baseType: !368, size: 32, offset: 416)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1178, file: !35, line: 406, baseType: !1247, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!85, !398, !1250}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !717, line: 293, size: 1536, elements: !1252)
!1252 = !{!1253, !1283, !1297}
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !717, line: 295, baseType: !1254, size: 512)
!1254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1251, file: !717, line: 295, size: 512, elements: !1255)
!1255 = !{!1256, !1282}
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !717, line: 296, baseType: !1257, size: 448)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1254, file: !717, line: 296, size: 448, elements: !1258)
!1258 = !{!1259, !1260, !1269, !1270, !1271, !1280, !1281}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1257, file: !717, line: 298, baseType: !136, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !717, line: 299, baseType: !1261, size: 128, offset: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !717, line: 299, size: 128, elements: !1262)
!1262 = !{!1263, !1264}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1261, file: !717, line: 300, baseType: !389, size: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1261, file: !717, line: 302, baseType: !1265, size: 128)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1261, file: !717, line: 302, size: 128, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1265, file: !717, line: 303, baseType: !137, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1265, file: !717, line: 305, baseType: !7, size: 32, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1257, file: !717, line: 310, baseType: !1157, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1257, file: !717, line: 311, baseType: !136, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !717, line: 312, baseType: !1272, size: 64, offset: 320)
!1272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !717, line: 312, size: 64, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1272, file: !717, line: 313, baseType: !137, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1272, file: !717, line: 314, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !717, line: 257, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !717, line: 255, size: 64, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1277, file: !717, line: 256, baseType: !136, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1257, file: !717, line: 316, baseType: !368, size: 32, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1257, file: !717, line: 317, baseType: !368, size: 32, offset: 416)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1254, file: !717, line: 323, baseType: !1185, size: 512, align: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !717, line: 325, baseType: !1284, size: 512, offset: 512)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1251, file: !717, line: 325, size: 512, elements: !1285)
!1285 = !{!1286, !1296}
!1286 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !717, line: 326, baseType: !1287, size: 320)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1284, file: !717, line: 326, size: 320, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1287, file: !717, line: 327, baseType: !136, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1287, file: !717, line: 328, baseType: !136, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1287, file: !717, line: 329, baseType: !136, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1287, file: !717, line: 331, baseType: !368, size: 32, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1287, file: !717, line: 332, baseType: !368, size: 32, offset: 224)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1287, file: !717, line: 333, baseType: !368, size: 32, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1287, file: !717, line: 335, baseType: !7, size: 32, offset: 288)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1284, file: !717, line: 339, baseType: !1185, size: 512, align: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !717, line: 341, baseType: !1298, size: 512, offset: 1024)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1251, file: !717, line: 341, size: 512, elements: !1299)
!1299 = !{!1300, !1309, !1315}
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !717, line: 342, baseType: !1301, size: 384)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1298, file: !717, line: 342, size: 384, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1301, file: !717, line: 343, baseType: !136, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1301, file: !717, line: 344, baseType: !136, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1301, file: !717, line: 346, baseType: !137, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1301, file: !717, line: 347, baseType: !137, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1301, file: !717, line: 348, baseType: !137, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1301, file: !717, line: 349, baseType: !137, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !717, line: 352, baseType: !1310, size: 256)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1298, file: !717, line: 352, size: 256, elements: !1311)
!1311 = !{!1312, !1313, !1314}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1310, file: !717, line: 353, baseType: !136, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1310, file: !717, line: 354, baseType: !136, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1310, file: !717, line: 356, baseType: !389, size: 128, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1298, file: !717, line: 359, baseType: !1185, size: 512, align: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1178, file: !35, line: 409, baseType: !1317, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!85, !1157, !1244}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1178, file: !35, line: 412, baseType: !1321, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!631, !1157, !1250}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1178, file: !35, line: 414, baseType: !1325, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{null, !1328}
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1178, file: !35, line: 416, baseType: !1331, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!85, !398, !1157, !434, !7, !1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1178, file: !35, line: 419, baseType: !1337, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!85, !398, !1157, !434, !7, !7, !1184, !137}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1178, file: !35, line: 424, baseType: !1341, size: 64, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!1344, !1157, !1344}
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !134, line: 131, baseType: !541)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1178, file: !35, line: 425, baseType: !1346, size: 64, offset: 512)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !1250, !951, !951}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1178, file: !35, line: 426, baseType: !1350, size: 64, offset: 576)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!631, !1250, !133}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1178, file: !35, line: 427, baseType: !1354, size: 64, offset: 640)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !1250}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1178, file: !35, line: 428, baseType: !1358, size: 64, offset: 704)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!948, !1361, !1383}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !1363)
!1363 = !{!1364, !1365, !1366, !1370, !1371, !1372, !1373}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1362, file: !35, line: 374, baseType: !398, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1362, file: !35, line: 375, baseType: !434, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1362, file: !35, line: 376, baseType: !1367, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !1361, !909}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1362, file: !35, line: 377, baseType: !137, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1362, file: !35, line: 378, baseType: !85, size: 32, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1362, file: !35, line: 379, baseType: !332, size: 16, offset: 288)
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1362, file: !35, line: 380, baseType: !1374, size: 64, offset: 320)
!1374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1362, file: !35, line: 380, size: 64, elements: !1375)
!1375 = !{!1376, !1379}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1374, file: !35, line: 386, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1374, file: !35, line: 395, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!948, !137}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 69, flags: DIFlagFwdDecl)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1178, file: !35, line: 433, baseType: !1386, size: 64, offset: 768)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!85, !1157, !1250, !1250, !21}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1178, file: !35, line: 435, baseType: !1390, size: 64, offset: 832)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!85, !1250}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1178, file: !35, line: 436, baseType: !1394, size: 64, offset: 896)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!631, !1250, !951, !951}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1178, file: !35, line: 438, baseType: !1398, size: 64, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{null, !1250, !1401, !1401}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1178, file: !35, line: 439, baseType: !1403, size: 64, offset: 1024)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!85, !1157, !1184}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1178, file: !35, line: 442, baseType: !1407, size: 64, offset: 1088)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!85, !1410, !398, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1178, file: !35, line: 444, baseType: !1414, size: 64, offset: 1152)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !398}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1178, file: !35, line: 445, baseType: !1418, size: 64, offset: 1216)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!85, !1361, !1383}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1158, file: !35, line: 486, baseType: !136, size: 64, offset: 896)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1158, file: !35, line: 487, baseType: !573, size: 320, offset: 960)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1158, file: !35, line: 488, baseType: !1424, size: 32, offset: 1280)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1425, line: 8, baseType: !247)
!1425 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1158, file: !35, line: 489, baseType: !421, size: 32, offset: 1312)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1158, file: !35, line: 490, baseType: !389, size: 128, offset: 1344)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1158, file: !35, line: 491, baseType: !137, size: 64, offset: 1472)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1148, file: !1117, line: 180, baseType: !1430, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!948, !398, !1059, !1147, !642, !434, !951}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1148, file: !1117, line: 182, baseType: !1430, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1148, file: !1117, line: 184, baseType: !1435, size: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!85, !398, !1059, !1147, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !717, line: 625, size: 1344, elements: !1440)
!1440 = !{!1441, !1450, !1618, !1624, !1631, !1632, !1637, !1638, !1643, !1644, !1647, !1651, !1652, !1653, !1654, !1655, !1658}
!1441 = !DIDerivedType(tag: DW_TAG_member, scope: !1439, file: !717, line: 628, baseType: !1442, size: 128)
!1442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1439, file: !717, line: 628, size: 128, elements: !1443)
!1443 = !{!1444, !1449}
!1444 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !717, line: 629, baseType: !1445, size: 128)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1442, file: !717, line: 629, size: 128, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1445, file: !717, line: 631, baseType: !136, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1445, file: !717, line: 632, baseType: !136, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1442, file: !717, line: 635, baseType: !411, size: 128, align: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1439, file: !717, line: 639, baseType: !1451, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !717, line: 733, size: 10240, elements: !1453)
!1453 = !{!1454, !1616}
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !717, line: 734, baseType: !1455, size: 10240)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !717, line: 734, size: 10240, elements: !1456)
!1456 = !{!1457, !1461, !1475, !1479, !1480, !1481, !1482, !1483, !1484, !1493, !1494, !1495, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1534, !1536, !1539, !1585, !1586, !1587, !1590, !1591, !1592, !1595, !1596, !1597, !1603, !1604}
!1457 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !717, line: 739, baseType: !1458, size: 512, align: 512)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !717, line: 739, size: 512, align: 512, elements: !1459)
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1458, file: !717, line: 747, baseType: !368, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1455, file: !717, line: 750, baseType: !1462, size: 128, offset: 512)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1463, line: 218, size: 128, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1464 = !{!1465, !1473, !1474}
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1463, line: 219, baseType: !1466, size: 32)
!1466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1463, line: 219, size: 32, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1466, file: !1463, line: 220, baseType: !421, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1466, file: !1463, line: 221, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1463, line: 197, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1463, line: 197, elements: !1472)
!1472 = !{}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1462, file: !1463, line: 223, baseType: !7, size: 32, offset: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1462, file: !1463, line: 224, baseType: !137, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1455, file: !717, line: 752, baseType: !1476, size: 64, offset: 640)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!136, !398, !136, !136, !136, !136}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1455, file: !717, line: 756, baseType: !136, size: 64, offset: 704)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1455, file: !717, line: 757, baseType: !136, size: 64, offset: 768)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1455, file: !717, line: 760, baseType: !136, size: 64, offset: 832)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1455, file: !717, line: 761, baseType: !136, size: 64, offset: 896)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1455, file: !717, line: 763, baseType: !136, size: 64, offset: 960)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1455, file: !717, line: 764, baseType: !1485, size: 64, offset: 1024)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1487, line: 299, baseType: !1488)
!1487 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1487, line: 299, size: 64, elements: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1488, file: !1487, line: 299, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1492, line: 18, baseType: !136)
!1492 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1455, file: !717, line: 773, baseType: !368, size: 32, offset: 1088)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1455, file: !717, line: 785, baseType: !368, size: 32, offset: 1120)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1455, file: !717, line: 795, baseType: !1496, size: 64, offset: 1152)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !717, line: 726, size: 128, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1497, file: !717, line: 727, baseType: !541, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1497, file: !717, line: 728, baseType: !85, size: 32, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1455, file: !717, line: 801, baseType: !136, size: 64, offset: 1216)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1455, file: !717, line: 804, baseType: !345, size: 64, offset: 1280)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1455, file: !717, line: 806, baseType: !85, size: 32, offset: 1344)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1455, file: !717, line: 808, baseType: !421, size: 32, offset: 1376)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1455, file: !717, line: 823, baseType: !573, size: 320, offset: 1408)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1455, file: !717, line: 825, baseType: !389, size: 128, offset: 1728)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1455, file: !717, line: 845, baseType: !85, size: 32, offset: 1856)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1455, file: !717, line: 849, baseType: !136, size: 64, offset: 1920)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1455, file: !717, line: 850, baseType: !136, size: 64, offset: 1984)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1455, file: !717, line: 852, baseType: !136, size: 64, offset: 2048)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1455, file: !717, line: 853, baseType: !136, size: 64, offset: 2112)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1455, file: !717, line: 854, baseType: !347, size: 64, offset: 2176)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1455, file: !717, line: 855, baseType: !136, size: 64, offset: 2240)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1455, file: !717, line: 856, baseType: !136, size: 64, offset: 2304)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1455, file: !717, line: 857, baseType: !136, size: 64, offset: 2368)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1455, file: !717, line: 858, baseType: !136, size: 64, offset: 2432)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1455, file: !717, line: 865, baseType: !765, size: 32, offset: 2496)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1455, file: !717, line: 867, baseType: !421, size: 32, offset: 2528)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1455, file: !717, line: 869, baseType: !136, size: 64, offset: 2560)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1455, file: !717, line: 869, baseType: !136, size: 64, offset: 2624)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1455, file: !717, line: 869, baseType: !136, size: 64, offset: 2688)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1455, file: !717, line: 869, baseType: !136, size: 64, offset: 2752)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1455, file: !717, line: 870, baseType: !136, size: 64, offset: 2816)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1455, file: !717, line: 870, baseType: !136, size: 64, offset: 2880)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1455, file: !717, line: 870, baseType: !136, size: 64, offset: 2944)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1455, file: !717, line: 871, baseType: !136, size: 64, offset: 3008)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1455, file: !717, line: 871, baseType: !136, size: 64, offset: 3072)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1455, file: !717, line: 871, baseType: !136, size: 64, offset: 3136)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1455, file: !717, line: 871, baseType: !136, size: 64, offset: 3200)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1455, file: !717, line: 873, baseType: !1531, size: 3328, offset: 3264)
!1531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 3328, elements: !1532)
!1532 = !{!1533}
!1533 = !DISubrange(count: 52)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1455, file: !717, line: 875, baseType: !1535, size: 1280, offset: 6592)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 1280, elements: !481)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1455, file: !717, line: 877, baseType: !1537, size: 64, offset: 7872)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !717, line: 877, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1455, file: !717, line: 880, baseType: !1540, size: 1088, offset: 7936)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1541, line: 72, baseType: !1542)
!1541 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1541, line: 23, size: 1088, elements: !1543)
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1551, !1552, !1553, !1554, !1581, !1582, !1583}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1542, file: !1541, line: 28, baseType: !541, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1542, file: !1541, line: 38, baseType: !347, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1542, file: !1541, line: 40, baseType: !136, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1542, file: !1541, line: 43, baseType: !573, size: 320, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1542, file: !1541, line: 44, baseType: !1549, size: 64, offset: 512)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1541, line: 44, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1542, file: !1541, line: 48, baseType: !136, size: 64, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1542, file: !1541, line: 59, baseType: !341, size: 256, offset: 640)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1542, file: !1541, line: 60, baseType: !137, size: 64, offset: 896)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1542, file: !1541, line: 61, baseType: !1555, size: 64, offset: 960)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1558, line: 13, size: 1216, elements: !1559)
!1558 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1566, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1557, file: !1558, line: 14, baseType: !137, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1557, file: !1558, line: 15, baseType: !136, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1557, file: !1558, line: 17, baseType: !136, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1557, file: !1558, line: 17, baseType: !136, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1557, file: !1558, line: 18, baseType: !136, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1557, file: !1558, line: 18, baseType: !136, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1557, file: !1558, line: 19, baseType: !1567, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1557, file: !1558, line: 21, baseType: !909, size: 64, offset: 448)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1557, file: !1558, line: 23, baseType: !909, size: 64, offset: 512)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1557, file: !1558, line: 24, baseType: !909, size: 64, offset: 576)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1557, file: !1558, line: 25, baseType: !909, size: 64, offset: 640)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1557, file: !1558, line: 26, baseType: !909, size: 64, offset: 704)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1557, file: !1558, line: 27, baseType: !909, size: 64, offset: 768)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1557, file: !1558, line: 28, baseType: !909, size: 64, offset: 832)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1557, file: !1558, line: 29, baseType: !909, size: 64, offset: 896)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1557, file: !1558, line: 30, baseType: !909, size: 64, offset: 960)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1557, file: !1558, line: 31, baseType: !909, size: 64, offset: 1024)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1557, file: !1558, line: 32, baseType: !909, size: 64, offset: 1088)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1557, file: !1558, line: 33, baseType: !909, size: 64, offset: 1152)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1542, file: !1541, line: 63, baseType: !368, size: 32, offset: 1024)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1542, file: !1541, line: 69, baseType: !332, size: 16, offset: 1056)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1542, file: !1541, line: 70, baseType: !1584, size: 16, offset: 1072)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !248, line: 18, baseType: !158)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1455, file: !717, line: 882, baseType: !136, size: 64, offset: 9024)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1455, file: !717, line: 885, baseType: !421, size: 32, offset: 9088)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1455, file: !717, line: 886, baseType: !1588, size: 64, offset: 9152)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !717, line: 732, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1455, file: !717, line: 901, baseType: !715, size: 64, offset: 9216)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1455, file: !717, line: 904, baseType: !398, size: 64, offset: 9280)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1455, file: !717, line: 906, baseType: !1593, size: 64, offset: 9344)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !717, line: 906, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1455, file: !717, line: 930, baseType: !368, size: 32, offset: 9408)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1455, file: !717, line: 933, baseType: !368, size: 32, offset: 9440)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1455, file: !717, line: 935, baseType: !1598, size: 64, offset: 9472)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !1599)
!1599 = !{!1600}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1598, file: !57, line: 104, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1455, file: !717, line: 940, baseType: !345, size: 64, offset: 9536)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1455, file: !717, line: 942, baseType: !1605, size: 256, offset: 9600)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1606, line: 98, size: 256, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1607 = !{!1608, !1609, !1610}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1605, file: !1606, line: 99, baseType: !345, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1605, file: !1606, line: 100, baseType: !389, size: 128, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1605, file: !1606, line: 101, baseType: !1611, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1606, line: 21, baseType: !1612)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !1615}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1452, file: !717, line: 986, baseType: !1617, offset: 10240)
!1617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, elements: !500)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1439, file: !717, line: 640, baseType: !1619, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1487, line: 297, baseType: !1620)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1487, line: 297, size: 64, elements: !1621)
!1621 = !{!1622}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1620, file: !1487, line: 297, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1492, line: 19, baseType: !136)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1439, file: !717, line: 646, baseType: !1625, size: 64, offset: 256)
!1625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1439, file: !717, line: 646, size: 64, elements: !1626)
!1626 = !{!1627, !1630}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1625, file: !717, line: 647, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !717, line: 542, baseType: !136)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1625, file: !717, line: 648, baseType: !1629, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1439, file: !717, line: 666, baseType: !85, size: 32, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1439, file: !717, line: 667, baseType: !1633, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !717, line: 579, size: 320, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1634, file: !717, line: 580, baseType: !573, size: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1439, file: !717, line: 670, baseType: !631, size: 8, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1439, file: !717, line: 681, baseType: !1639, size: 256, offset: 512)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1439, file: !717, line: 678, size: 256, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1639, file: !717, line: 679, baseType: !565, size: 192, align: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1639, file: !717, line: 680, baseType: !136, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1439, file: !717, line: 689, baseType: !389, size: 128, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1439, file: !717, line: 691, baseType: !1645, size: 64, offset: 896)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !717, line: 691, flags: DIFlagFwdDecl)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1439, file: !717, line: 694, baseType: !1648, size: 64, offset: 960)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !717, line: 694, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1439, file: !717, line: 697, baseType: !136, size: 64, offset: 1024)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1439, file: !717, line: 699, baseType: !398, size: 64, offset: 1088)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1439, file: !717, line: 700, baseType: !137, size: 64, offset: 1152)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1439, file: !717, line: 711, baseType: !345, size: 64, offset: 1216)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1439, file: !717, line: 717, baseType: !1656, size: 64, offset: 1280)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !717, line: 717, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1439, file: !717, line: 722, baseType: !1659, offset: 1344)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !717, line: 570, elements: !1472)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1136, file: !1117, line: 90, baseType: !1661, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1136, file: !1117, line: 91, baseType: !1663, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1107, file: !1054, line: 120, baseType: !1665, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!1668, !1077}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !1671)
!1671 = !{!1672, !1673, !1677, !1681, !1687, !1691}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1670, file: !29, line: 40, baseType: !28, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1670, file: !29, line: 41, baseType: !1674, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!631}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1670, file: !29, line: 42, baseType: !1678, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!137}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1670, file: !29, line: 43, baseType: !1682, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!1567, !1685}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1670, file: !29, line: 44, baseType: !1688, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!1567}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1670, file: !29, line: 45, baseType: !826, size: 64, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1107, file: !1054, line: 121, baseType: !1693, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!1567, !1077}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1107, file: !1054, line: 122, baseType: !1697, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{null, !1077, !1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1053, file: !1054, line: 70, baseType: !1703, size: 64, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1026, line: 190, size: 1152, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1805, !1806, !1807, !1808, !1809, !1812}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1704, file: !1026, line: 191, baseType: !368, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1704, file: !1026, line: 192, baseType: !368, size: 32, offset: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1704, file: !1026, line: 202, baseType: !1703, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1704, file: !1026, line: 203, baseType: !255, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1704, file: !1026, line: 205, baseType: !565, size: 192, align: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1704, file: !1026, line: 207, baseType: !1567, size: 64, offset: 384)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1704, file: !1026, line: 208, baseType: !7, size: 32, offset: 448)
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1704, file: !1026, line: 209, baseType: !1714, size: 256, offset: 512)
!1714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1704, file: !1026, line: 209, size: 256, elements: !1715)
!1715 = !{!1716, !1725, !1729}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1714, file: !1026, line: 210, baseType: !1717, size: 256)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1026, line: 153, size: 256, elements: !1718)
!1718 = !{!1719, !1720, !1721, !1724}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1717, file: !1026, line: 154, baseType: !136, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1717, file: !1026, line: 156, baseType: !1169, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1717, file: !1026, line: 162, baseType: !1722, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1026, line: 162, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1717, file: !1026, line: 167, baseType: !136, size: 64, offset: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1714, file: !1026, line: 211, baseType: !1726, size: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1026, line: 170, size: 64, elements: !1727)
!1727 = !{!1728}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1726, file: !1026, line: 171, baseType: !1703, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1714, file: !1026, line: 212, baseType: !1730, size: 256)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1026, line: 174, size: 256, elements: !1731)
!1731 = !{!1732, !1800, !1803, !1804}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1730, file: !1026, line: 175, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1735)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1026, line: 271, size: 768, elements: !1736)
!1736 = !{!1737, !1760, !1764, !1768, !1773, !1777, !1781, !1785, !1786, !1787, !1788, !1796}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1735, file: !1026, line: 276, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!85, !1741}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1026, line: 251, size: 1216, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1742, file: !1026, line: 253, baseType: !1703, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1742, file: !1026, line: 254, baseType: !398, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1742, file: !1026, line: 255, baseType: !1747, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1749, line: 66, flags: DIFlagFwdDecl)
!1749 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1742, file: !1026, line: 256, baseType: !137, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1742, file: !1026, line: 259, baseType: !341, size: 256, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1742, file: !1026, line: 260, baseType: !341, size: 256, offset: 512)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1742, file: !1026, line: 261, baseType: !85, size: 32, offset: 768)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1742, file: !1026, line: 262, baseType: !389, size: 128, offset: 832)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1742, file: !1026, line: 263, baseType: !642, size: 64, offset: 960)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1742, file: !1026, line: 265, baseType: !951, size: 64, offset: 1024)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1742, file: !1026, line: 266, baseType: !631, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1742, file: !1026, line: 267, baseType: !631, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1742, file: !1026, line: 268, baseType: !1648, size: 64, offset: 1152)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1735, file: !1026, line: 277, baseType: !1761, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1741}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1735, file: !1026, line: 290, baseType: !1765, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!85, !1747, !137}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1735, file: !1026, line: 292, baseType: !1769, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!137, !1747, !1772}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1735, file: !1026, line: 293, baseType: !1774, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!137, !1747, !137, !1772}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1735, file: !1026, line: 294, baseType: !1778, size: 64, offset: 320)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{null, !1747, !137}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1735, file: !1026, line: 296, baseType: !1782, size: 64, offset: 384)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!948, !1741, !642, !951, !434}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1735, file: !1026, line: 306, baseType: !951, size: 64, offset: 448)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1735, file: !1026, line: 313, baseType: !631, size: 8, offset: 512)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1735, file: !1026, line: 314, baseType: !1782, size: 64, offset: 576)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1735, file: !1026, line: 317, baseType: !1789, size: 64, offset: 640)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!1792, !1741, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1793, line: 59, baseType: !7)
!1793 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1026, line: 31, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1735, file: !1026, line: 320, baseType: !1797, size: 64, offset: 704)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!85, !1741, !1438}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1730, file: !1026, line: 176, baseType: !1801, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1026, line: 35, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1730, file: !1026, line: 177, baseType: !434, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1730, file: !1026, line: 178, baseType: !1703, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1704, file: !1026, line: 215, baseType: !137, size: 64, offset: 768)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1704, file: !1026, line: 221, baseType: !541, size: 64, offset: 832)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1704, file: !1026, line: 223, baseType: !156, size: 16, offset: 896)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1704, file: !1026, line: 224, baseType: !798, size: 16, offset: 912)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1704, file: !1026, line: 225, baseType: !1810, size: 64, offset: 960)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1026, line: 36, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1704, file: !1026, line: 227, baseType: !411, size: 128, align: 64, offset: 1024)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1053, file: !1054, line: 71, baseType: !1814, size: 32, offset: 448)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1815, line: 19, size: 32, elements: !1816)
!1815 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1814, file: !1815, line: 20, baseType: !469, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1053, file: !1054, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1053, file: !1054, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1053, file: !1054, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1053, file: !1054, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1053, file: !1054, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1050, file: !15, line: 47, baseType: !1040, size: 64, offset: 512)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1050, file: !15, line: 48, baseType: !1059, size: 64, offset: 576)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1050, file: !15, line: 49, baseType: !1826, size: 64, offset: 640)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1050, file: !15, line: 50, baseType: !1829, size: 64, offset: 704)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1831, line: 26, size: 256, elements: !1832)
!1831 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1830, file: !1831, line: 27, baseType: !7, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1830, file: !1831, line: 28, baseType: !1835, size: 192, offset: 64)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1836, line: 43, size: 192, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1835, file: !1836, line: 44, baseType: !355, size: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1835, file: !1836, line: 45, baseType: !389, size: 128, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1041, file: !15, line: 418, baseType: !1841, size: 64, offset: 1408)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !1843)
!1843 = !{!1844, !1845, !1850, !1854, !1858, !1862}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1842, file: !15, line: 54, baseType: !1124, size: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1842, file: !15, line: 55, baseType: !1846, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!948, !1841, !1849, !642}
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1842, file: !15, line: 57, baseType: !1851, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!948, !1841, !1849, !255, !951}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1842, file: !15, line: 59, baseType: !1855, size: 64, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1040, !255}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1842, file: !15, line: 60, baseType: !1859, size: 64, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!85, !1040}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1842, file: !15, line: 61, baseType: !1863, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !1040}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1041, file: !15, line: 419, baseType: !255, size: 64, offset: 1472)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1041, file: !15, line: 420, baseType: !255, size: 64, offset: 1536)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1041, file: !15, line: 421, baseType: !1059, size: 64, offset: 1600)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1041, file: !15, line: 424, baseType: !1870, size: 64, offset: 1664)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1872)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1041, file: !15, line: 425, baseType: !1874, size: 64, offset: 1728)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1041, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1041, file: !15, line: 435, baseType: !341, size: 256, offset: 1856)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1041, file: !15, line: 437, baseType: !1879, size: 64, offset: 2112)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1881, line: 69, size: 320, elements: !1882)
!1881 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1882 = !{!1883, !1884, !1885, !1902, !1904, !1908, !1909}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1880, file: !1881, line: 70, baseType: !255, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1880, file: !1881, line: 71, baseType: !1040, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1880, file: !1881, line: 72, baseType: !1886, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1888)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1881, line: 47, size: 256, elements: !1889)
!1889 = !{!1890, !1891, !1897, !1901}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1888, file: !1881, line: 49, baseType: !7, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1888, file: !1881, line: 51, baseType: !1892, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!85, !255, !1895}
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1880)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1888, file: !1881, line: 53, baseType: !1898, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!85, !642, !1895}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1888, file: !1881, line: 55, baseType: !826, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1880, file: !1881, line: 73, baseType: !1903, size: 16, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1880, file: !1881, line: 74, baseType: !1905, size: 8, offset: 208)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !248, line: 16, baseType: !1906)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !155, line: 20, baseType: !1907)
!1907 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1880, file: !1881, line: 75, baseType: !376, size: 8, offset: 216)
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !1881, line: 76, baseType: !1910, size: 64, offset: 256)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1880, file: !1881, line: 76, size: 64, elements: !1911)
!1911 = !{!1912, !1913, !1920}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1910, file: !1881, line: 77, baseType: !137, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1910, file: !1881, line: 78, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1881, line: 86, size: 128, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1916, file: !1881, line: 87, baseType: !7, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1916, file: !1881, line: 88, baseType: !642, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1910, file: !1881, line: 79, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1881, line: 92, size: 256, elements: !1924)
!1924 = !{!1925, !1926, !1927, !1928, !1929}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1923, file: !1881, line: 94, baseType: !7, size: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1923, file: !1881, line: 95, baseType: !7, size: 32, offset: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1923, file: !1881, line: 96, baseType: !306, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1923, file: !1881, line: 97, baseType: !1886, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1923, file: !1881, line: 98, baseType: !137, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1041, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1041, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1041, file: !15, line: 442, baseType: !1870, size: 64, offset: 2240)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1041, file: !15, line: 443, baseType: !1874, size: 64, offset: 2304)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1041, file: !15, line: 444, baseType: !631, size: 8, offset: 2368)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1041, file: !15, line: 451, baseType: !631, size: 8, offset: 2376)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1041, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1041, file: !15, line: 455, baseType: !1938, size: 64, offset: 2432)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1940, line: 23, size: 96, elements: !1941)
!1940 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1941 = !{!1942, !1943, !1944}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1939, file: !1940, line: 24, baseType: !85, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1939, file: !1940, line: 24, baseType: !85, size: 32, offset: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1939, file: !1940, line: 24, baseType: !85, size: 32, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1041, file: !15, line: 458, baseType: !1946, size: 64, offset: 2496)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!85}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1041, file: !15, line: 460, baseType: !1950, size: 4032, align: 512, offset: 2560)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1951, size: 4032, elements: !1965)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !1952)
!1952 = !{!1953, !1954, !1955}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1951, file: !15, line: 363, baseType: !137, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1951, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1951, file: !15, line: 367, baseType: !1956, size: 448, offset: 128)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !1957)
!1957 = !{!1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1956, file: !15, line: 320, baseType: !1040, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1956, file: !15, line: 321, baseType: !1960, size: 384, offset: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1961, line: 40, size: 384, elements: !1962)
!1961 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1962 = !{!1963}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1960, file: !1961, line: 41, baseType: !1964, size: 384, align: 64)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 384, align: 64, elements: !214)
!1965 = !{!1966}
!1966 = !DISubrange(count: 7)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1041, file: !15, line: 463, baseType: !1968, size: 192, offset: 6592)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1969, line: 8, size: 192, elements: !1970)
!1969 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1970 = !{!1971, !1972, !1974}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1968, file: !1969, line: 10, baseType: !7, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1968, file: !1969, line: 11, baseType: !1973, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1968, file: !1969, line: 12, baseType: !1975, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1977, line: 59, size: 48, elements: !1978)
!1977 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1976, file: !1977, line: 60, baseType: !1584, size: 16)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1976, file: !1977, line: 61, baseType: !1584, size: 16, offset: 16)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1976, file: !1977, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1976, file: !1977, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1976, file: !1977, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1976, file: !1977, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1041, file: !15, line: 465, baseType: !136, size: 64, offset: 6784)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1041, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1041, file: !15, line: 470, baseType: !389, size: 128, offset: 6912)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1041, file: !15, line: 471, baseType: !1989, size: 64, offset: 7040)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1991, line: 33, size: 96, elements: !1992)
!1991 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1992 = !{!1993, !1994, !1995, !1996}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1990, file: !1991, line: 37, baseType: !85, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1990, file: !1991, line: 43, baseType: !85, size: 32, offset: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1990, file: !1991, line: 45, baseType: !156, size: 16, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1990, file: !1991, line: 47, baseType: !156, size: 16, offset: 80)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1041, file: !15, line: 476, baseType: !1998, size: 64, offset: 7104)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !2000)
!2000 = !{!2001, !2017, !2018, !2019}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1999, file: !15, line: 379, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2004, line: 204, baseType: !2005)
!2004 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2004, line: 197, size: 192, elements: !2006)
!2006 = !{!2007, !2009, !2010, !2011, !2013, !2015}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2005, file: !2004, line: 198, baseType: !2008, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2004, line: 21, baseType: !201)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2005, file: !2004, line: 199, baseType: !298, size: 8, offset: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2005, file: !2004, line: 200, baseType: !298, size: 8, offset: 40)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2005, file: !2004, line: 201, baseType: !2012, size: 16, offset: 48)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2004, line: 17, baseType: !154)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2005, file: !2004, line: 202, baseType: !2014, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2004, line: 16, baseType: !542)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2005, file: !2004, line: 203, baseType: !2016, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2004, line: 22, baseType: !542)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1999, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1999, file: !15, line: 381, baseType: !642, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1999, file: !15, line: 382, baseType: !642, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1041, file: !15, line: 477, baseType: !1999, size: 256, offset: 7168)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1041, file: !15, line: 480, baseType: !2022, size: 64, offset: 7424)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1041, file: !15, line: 483, baseType: !2025, size: 64, offset: 7488)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1041, file: !15, line: 488, baseType: !642, size: 64, offset: 7552)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1041, file: !15, line: 492, baseType: !137, size: 64, offset: 7616)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1041, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1041, file: !15, line: 495, baseType: !137, size: 64, offset: 7744)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1041, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1041, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1041, file: !15, line: 500, baseType: !2034, size: 64, offset: 7872)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2036, line: 45, baseType: !2037)
!2036 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1041, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1041, file: !15, line: 504, baseType: !2040, size: 64, offset: 8000)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2043, line: 96, size: 192, elements: !2044)
!2043 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2044 = !{!2045, !2046, !2089, !2092}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2042, file: !2043, line: 97, baseType: !7, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2042, file: !2043, line: 98, baseType: !2047, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2043, line: 24, size: 3072, elements: !2049)
!2049 = !{!2050, !2052, !2053, !2054, !2055, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2086, !2087, !2088}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2048, file: !2043, line: 26, baseType: !2051, size: 128)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 128, elements: !214)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2048, file: !2043, line: 27, baseType: !2051, size: 128, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2048, file: !2043, line: 28, baseType: !85, size: 32, offset: 256)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2048, file: !2043, line: 31, baseType: !421, size: 32, align: 512, offset: 512)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2048, file: !2043, line: 32, baseType: !2056, size: 960, offset: 576)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2057, line: 206, size: 960, elements: !2058)
!2057 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2058 = !{!2059, !2060, !2063, !2065, !2066, !2068}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2056, file: !2057, line: 207, baseType: !414, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2056, file: !2057, line: 208, baseType: !2061, size: 256, offset: 64)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2062, size: 256, elements: !481)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2056, file: !2057, line: 209, baseType: !2064, size: 256, offset: 320)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 256, elements: !481)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2056, file: !2057, line: 213, baseType: !909, size: 64, offset: 576)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2056, file: !2057, line: 215, baseType: !2067, size: 256, offset: 640)
!2067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 256, elements: !481)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2056, file: !2057, line: 216, baseType: !376, size: 8, offset: 896)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2048, file: !2043, line: 33, baseType: !136, size: 64, offset: 1536)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2048, file: !2043, line: 34, baseType: !136, size: 64, offset: 1600)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2048, file: !2043, line: 35, baseType: !631, size: 8, offset: 1664)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2048, file: !2043, line: 36, baseType: !230, size: 320, offset: 1728)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2048, file: !2043, line: 37, baseType: !1605, size: 256, offset: 2048)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2048, file: !2043, line: 38, baseType: !411, size: 128, align: 64, offset: 2304)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2048, file: !2043, line: 39, baseType: !2076, size: 64, offset: 2432)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2043, line: 49, size: 768, elements: !2078)
!2078 = !{!2079, !2080, !2081, !2082, !2083, !2084, !2085}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2077, file: !2043, line: 50, baseType: !421, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2077, file: !2043, line: 51, baseType: !2064, size: 256, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2077, file: !2043, line: 53, baseType: !2064, size: 256, offset: 320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2077, file: !2043, line: 54, baseType: !136, size: 64, offset: 576)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2077, file: !2043, line: 55, baseType: !2076, size: 64, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2077, file: !2043, line: 56, baseType: !85, size: 32, offset: 704)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2077, file: !2043, line: 57, baseType: !85, size: 32, offset: 736)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2048, file: !2043, line: 40, baseType: !136, size: 64, offset: 2496)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2048, file: !2043, line: 42, baseType: !85, size: 32, offset: 2560)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2048, file: !2043, line: 43, baseType: !2041, size: 64, offset: 2624)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2042, file: !2043, line: 99, baseType: !2090, offset: 128)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2091, line: 211, elements: !1472)
!2091 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2042, file: !2043, line: 100, baseType: !2093, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2043, line: 63, size: 3008, elements: !2095)
!2095 = !{!2096, !2097, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2127}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2094, file: !2043, line: 64, baseType: !2076, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2094, file: !2043, line: 65, baseType: !2098, size: 192, offset: 64)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2076, size: 192, elements: !461)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2094, file: !2043, line: 67, baseType: !85, size: 32, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2094, file: !2043, line: 68, baseType: !341, size: 256, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2094, file: !2043, line: 69, baseType: !421, size: 32, offset: 576)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2094, file: !2043, line: 70, baseType: !341, size: 256, offset: 640)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2094, file: !2043, line: 71, baseType: !136, size: 64, offset: 896)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2094, file: !2043, line: 72, baseType: !136, size: 64, offset: 960)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2094, file: !2043, line: 73, baseType: !136, size: 64, offset: 1024)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2094, file: !2043, line: 74, baseType: !136, size: 64, offset: 1088)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2094, file: !2043, line: 75, baseType: !136, size: 64, offset: 1152)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2094, file: !2043, line: 76, baseType: !136, size: 64, offset: 1216)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2094, file: !2043, line: 77, baseType: !136, size: 64, offset: 1280)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2094, file: !2043, line: 78, baseType: !136, size: 64, offset: 1344)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2094, file: !2043, line: 79, baseType: !631, size: 8, offset: 1408)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2094, file: !2043, line: 80, baseType: !136, size: 64, offset: 1472)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2094, file: !2043, line: 81, baseType: !341, size: 256, offset: 1536)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2094, file: !2043, line: 82, baseType: !1830, size: 256, offset: 1792)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2094, file: !2043, line: 84, baseType: !368, size: 32, offset: 2048)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2094, file: !2043, line: 87, baseType: !136, size: 64, offset: 2112)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2094, file: !2043, line: 88, baseType: !136, size: 64, offset: 2176)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2094, file: !2043, line: 89, baseType: !2119, size: 704, offset: 2240)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1606, line: 111, size: 704, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2126}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2119, file: !1606, line: 112, baseType: !1605, size: 256)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2119, file: !1606, line: 113, baseType: !230, size: 320, offset: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2119, file: !1606, line: 116, baseType: !2124, size: 64, offset: 576)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1606, line: 18, flags: DIFlagFwdDecl)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2119, file: !1606, line: 117, baseType: !85, size: 32, offset: 640)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2094, file: !2043, line: 90, baseType: !2041, size: 64, offset: 2944)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1041, file: !15, line: 515, baseType: !2129, size: 64, offset: 8064)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2131, line: 117, size: 128, elements: !2132)
!2131 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2132 = !{!2133, !2134, !2135}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2130, file: !2131, line: 118, baseType: !558, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2130, file: !2131, line: 119, baseType: !558, size: 32, offset: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2130, file: !2131, line: 120, baseType: !909, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1041, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1041, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1041, file: !15, line: 520, baseType: !2139, size: 64, offset: 8192)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1041, file: !15, line: 523, baseType: !2141, size: 64, offset: 8256)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1041, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1041, file: !15, line: 525, baseType: !2146, size: 64, offset: 8384)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1041, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1041, file: !15, line: 533, baseType: !137, size: 64, offset: 8512)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1041, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1041, file: !15, line: 535, baseType: !2153, size: 64, offset: 8640)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1041, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1041, file: !15, line: 539, baseType: !85, size: 32, offset: 8736)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1041, file: !15, line: 540, baseType: !2157, size: 64, offset: 8768)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2159, line: 32, size: 64, elements: !2160)
!2159 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2160 = !{!2161, !2162}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2158, file: !2159, line: 33, baseType: !558, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2158, file: !2159, line: 34, baseType: !558, size: 32, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1041, file: !15, line: 563, baseType: !389, size: 128, offset: 8832)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1041, file: !15, line: 565, baseType: !389, size: 128, offset: 8960)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1041, file: !15, line: 568, baseType: !2166, size: 64, offset: 9088)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{null}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1041, file: !15, line: 570, baseType: !368, size: 32, offset: 9152)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1016, file: !35, line: 2382, baseType: !1015, size: 64, offset: 448)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1016, file: !35, line: 2383, baseType: !478, size: 64, offset: 512)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1016, file: !35, line: 2385, baseType: !2173, offset: 576)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2091, line: 206, elements: !1472)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1016, file: !35, line: 2386, baseType: !2173, offset: 576)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1016, file: !35, line: 2387, baseType: !2173, offset: 576)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1016, file: !35, line: 2388, baseType: !2177, offset: 576)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2173, elements: !461)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1016, file: !35, line: 2390, baseType: !2173, offset: 576)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1016, file: !35, line: 2391, baseType: !2173, offset: 576)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1016, file: !35, line: 2392, baseType: !2173, offset: 576)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1016, file: !35, line: 2393, baseType: !2173, offset: 576)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1007, file: !35, line: 1197, baseType: !2183, size: 64, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !2186)
!2186 = !{!2187, !2191, !2195, !2196, !2200, !2204, !2208, !2209, !2210, !2214, !2218, !2222, !2223, !2224, !2230, !2234, !2235, !2239, !2240, !2241, !2242, !2246, !2250, !2297, !2312, !2313}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2185, file: !35, line: 2058, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!794, !1006}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2185, file: !35, line: 2059, baseType: !2192, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !794}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2185, file: !35, line: 2060, baseType: !2192, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2185, file: !35, line: 2062, baseType: !2197, size: 64, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null, !794, !85}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2185, file: !35, line: 2063, baseType: !2201, size: 64, offset: 256)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!85, !794, !1244}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2185, file: !35, line: 2064, baseType: !2205, size: 64, offset: 320)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!85, !794}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2185, file: !35, line: 2065, baseType: !2192, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2185, file: !35, line: 2066, baseType: !1036, size: 64, offset: 448)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2185, file: !35, line: 2067, baseType: !2211, size: 64, offset: 512)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!85, !1006, !85}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2185, file: !35, line: 2068, baseType: !2215, size: 64, offset: 576)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!85, !1006, !34}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2185, file: !35, line: 2069, baseType: !2219, size: 64, offset: 640)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!85, !1006}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2185, file: !35, line: 2070, baseType: !2215, size: 64, offset: 704)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2185, file: !35, line: 2071, baseType: !2219, size: 64, offset: 768)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2185, file: !35, line: 2072, baseType: !2225, size: 64, offset: 832)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!85, !754, !2228}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2185, file: !35, line: 2073, baseType: !2231, size: 64, offset: 896)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!85, !1006, !1973, !642}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2185, file: !35, line: 2074, baseType: !1036, size: 64, offset: 960)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2185, file: !35, line: 2076, baseType: !2236, size: 64, offset: 1024)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!85, !1747, !754}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2185, file: !35, line: 2077, baseType: !2236, size: 64, offset: 1088)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2185, file: !35, line: 2078, baseType: !2236, size: 64, offset: 1152)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2185, file: !35, line: 2079, baseType: !2236, size: 64, offset: 1216)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2185, file: !35, line: 2081, baseType: !2243, size: 64, offset: 1280)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!948, !1006, !85, !642, !951, !434}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2185, file: !35, line: 2082, baseType: !2247, size: 64, offset: 1344)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!948, !1006, !85, !255, !951, !434}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2185, file: !35, line: 2083, baseType: !2251, size: 64, offset: 1408)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!2254, !794}
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2282, !2283, !2284}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2256, file: !40, line: 297, baseType: !234, size: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2256, file: !40, line: 298, baseType: !389, size: 128, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2256, file: !40, line: 299, baseType: !389, size: 128, offset: 256)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2256, file: !40, line: 300, baseType: !389, size: 128, offset: 384)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2256, file: !40, line: 301, baseType: !341, size: 256, offset: 512)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2256, file: !40, line: 302, baseType: !421, size: 32, offset: 768)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2256, file: !40, line: 303, baseType: !368, size: 32, offset: 800)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2256, file: !40, line: 304, baseType: !1006, size: 64, offset: 832)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2256, file: !40, line: 305, baseType: !2267, size: 64, offset: 896)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !2268)
!2268 = !{!2269, !2281}
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2267, file: !40, line: 69, baseType: !2270, size: 32)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2267, file: !40, line: 69, size: 32, elements: !2271)
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2270, file: !40, line: 70, baseType: !504, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2270, file: !40, line: 71, baseType: !522, size: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2270, file: !40, line: 72, baseType: !2275, size: 32)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2276, line: 24, baseType: !2277)
!2276 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2276, line: 22, size: 32, elements: !2278)
!2278 = !{!2279}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2277, file: !2276, line: 23, baseType: !2280, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2276, line: 20, baseType: !510)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2267, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2256, file: !40, line: 306, baseType: !434, size: 64, offset: 960)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2256, file: !40, line: 307, baseType: !136, size: 64, offset: 1024)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2256, file: !40, line: 308, baseType: !2285, size: 576, offset: 1088)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !2286)
!2286 = !{!2287, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2285, file: !40, line: 206, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !353)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2285, file: !40, line: 207, baseType: !2288, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2285, file: !40, line: 208, baseType: !2288, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2285, file: !40, line: 209, baseType: !2288, size: 64, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2285, file: !40, line: 210, baseType: !2288, size: 64, offset: 256)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2285, file: !40, line: 211, baseType: !2288, size: 64, offset: 320)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2285, file: !40, line: 212, baseType: !2288, size: 64, offset: 384)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2285, file: !40, line: 213, baseType: !589, size: 64, offset: 448)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2285, file: !40, line: 214, baseType: !589, size: 64, offset: 512)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2185, file: !35, line: 2085, baseType: !2298, size: 64, offset: 1472)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!909, !1006, !2301}
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2303, line: 15, size: 256, elements: !2304)
!2303 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2304 = !{!2305, !2306, !2307, !2308, !2309}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2302, file: !2303, line: 16, baseType: !133, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2302, file: !2303, line: 19, baseType: !85, size: 32, offset: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2302, file: !2303, line: 26, baseType: !136, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2302, file: !2303, line: 33, baseType: !136, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2302, file: !2303, line: 36, baseType: !2310, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !717, line: 33, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2185, file: !35, line: 2087, baseType: !2298, size: 64, offset: 1536)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2185, file: !35, line: 2089, baseType: !1036, size: 64, offset: 1600)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1007, file: !35, line: 1198, baseType: !2315, size: 64, offset: 448)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2317)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !2318)
!2318 = !{!2319, !2323, !2327, !2331, !2332, !2333, !2334, !2335, !2340, !2345, !2349}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2317, file: !40, line: 325, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!85, !2255}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2317, file: !40, line: 326, baseType: !2324, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!2255, !1006, !85}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2317, file: !40, line: 327, baseType: !2328, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null, !2255}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2317, file: !40, line: 328, baseType: !2320, size: 64, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2317, file: !40, line: 329, baseType: !2320, size: 64, offset: 256)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2317, file: !40, line: 330, baseType: !2320, size: 64, offset: 320)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2317, file: !40, line: 331, baseType: !2211, size: 64, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2317, file: !40, line: 334, baseType: !2336, size: 64, offset: 448)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!2339, !794}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2317, file: !40, line: 335, baseType: !2341, size: 64, offset: 512)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!85, !794, !2344}
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2317, file: !40, line: 337, baseType: !2346, size: 64, offset: 576)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!85, !794, !2339}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2317, file: !40, line: 339, baseType: !2350, size: 64, offset: 640)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!85, !1006, !2353}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1007, file: !35, line: 1199, baseType: !2355, size: 64, offset: 512)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !2358)
!2358 = !{!2359, !2363, !2364, !2368, !2369, !2370, !2385, !2408, !2412, !2413, !2436}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2357, file: !40, line: 431, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!85, !1006, !85, !85, !917}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2357, file: !40, line: 432, baseType: !2211, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2357, file: !40, line: 433, baseType: !2365, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!85, !1006, !7}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2357, file: !40, line: 434, baseType: !2365, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2357, file: !40, line: 435, baseType: !2211, size: 64, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2357, file: !40, line: 436, baseType: !2371, size: 64, offset: 320)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!85, !1006, !85, !2374}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !2376)
!2376 = !{!2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2375, file: !40, line: 418, baseType: !85, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2375, file: !40, line: 419, baseType: !7, size: 32, offset: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2375, file: !40, line: 420, baseType: !7, size: 32, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2375, file: !40, line: 422, baseType: !7, size: 32, offset: 96)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2375, file: !40, line: 423, baseType: !7, size: 32, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2375, file: !40, line: 424, baseType: !7, size: 32, offset: 160)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2375, file: !40, line: 425, baseType: !7, size: 32, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2375, file: !40, line: 426, baseType: !7, size: 32, offset: 224)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2357, file: !40, line: 437, baseType: !2386, size: 64, offset: 384)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!85, !1006, !2267, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !2391)
!2391 = !{!2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2390, file: !40, line: 346, baseType: !85, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2390, file: !40, line: 347, baseType: !541, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2390, file: !40, line: 348, baseType: !541, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2390, file: !40, line: 349, baseType: !541, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2390, file: !40, line: 350, baseType: !541, size: 64, offset: 256)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2390, file: !40, line: 351, baseType: !541, size: 64, offset: 320)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2390, file: !40, line: 352, baseType: !541, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2390, file: !40, line: 353, baseType: !351, size: 64, offset: 448)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2390, file: !40, line: 355, baseType: !351, size: 64, offset: 512)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2390, file: !40, line: 356, baseType: !85, size: 32, offset: 576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2390, file: !40, line: 357, baseType: !85, size: 32, offset: 608)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2390, file: !40, line: 358, baseType: !541, size: 64, offset: 640)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2390, file: !40, line: 359, baseType: !541, size: 64, offset: 704)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2390, file: !40, line: 360, baseType: !541, size: 64, offset: 768)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2390, file: !40, line: 361, baseType: !351, size: 64, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2390, file: !40, line: 362, baseType: !85, size: 32, offset: 896)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2357, file: !40, line: 438, baseType: !2409, size: 64, offset: 448)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!85, !1006, !2353, !2389}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2357, file: !40, line: 440, baseType: !2386, size: 64, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2357, file: !40, line: 441, baseType: !2414, size: 64, offset: 576)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!85, !1006, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !2419)
!2419 = !{!2420, !2421}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2418, file: !40, line: 412, baseType: !7, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2418, file: !40, line: 413, baseType: !2422, size: 1344, offset: 64)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2423, size: 1344, elements: !461)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !2424)
!2424 = !{!2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2435}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2423, file: !40, line: 398, baseType: !7, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2423, file: !40, line: 399, baseType: !7, size: 32, offset: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2423, file: !40, line: 401, baseType: !7, size: 32, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2423, file: !40, line: 402, baseType: !7, size: 32, offset: 96)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2423, file: !40, line: 403, baseType: !7, size: 32, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2423, file: !40, line: 404, baseType: !7, size: 32, offset: 160)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2423, file: !40, line: 405, baseType: !7, size: 32, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2423, file: !40, line: 406, baseType: !543, size: 64, offset: 256)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2423, file: !40, line: 407, baseType: !2434, size: 64, offset: 320)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !134, line: 132, baseType: !541)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2423, file: !40, line: 408, baseType: !2434, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2357, file: !40, line: 442, baseType: !2365, size: 64, offset: 640)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1007, file: !35, line: 1200, baseType: !2438, size: 64, offset: 576)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2440)
!2440 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 54, flags: DIFlagFwdDecl)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1007, file: !35, line: 1201, baseType: !136, size: 64, offset: 640)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1007, file: !35, line: 1202, baseType: !136, size: 64, offset: 704)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1007, file: !35, line: 1203, baseType: !136, size: 64, offset: 768)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1007, file: !35, line: 1204, baseType: !754, size: 64, offset: 832)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1007, file: !35, line: 1205, baseType: !573, size: 320, offset: 896)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1007, file: !35, line: 1206, baseType: !85, size: 32, offset: 1216)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1007, file: !35, line: 1207, baseType: !368, size: 32, offset: 1248)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1007, file: !35, line: 1209, baseType: !137, size: 64, offset: 1280)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1007, file: !35, line: 1211, baseType: !2450, size: 64, offset: 1344)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2453)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1007, file: !35, line: 1223, baseType: !2455, size: 64, offset: 1408)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !771, line: 34, size: 64, elements: !2456)
!2456 = !{!2457}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2455, file: !771, line: 35, baseType: !774, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1007, file: !35, line: 1224, baseType: !389, size: 128, offset: 1472)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1007, file: !35, line: 1225, baseType: !2460, size: 64, offset: 1600)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1007, file: !35, line: 1226, baseType: !2463, size: 64, offset: 1664)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1007, file: !35, line: 1227, baseType: !2466, size: 64, offset: 1728)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1007, file: !35, line: 1228, baseType: !2469, size: 64, offset: 1792)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1007, file: !35, line: 1229, baseType: !234, size: 128, offset: 1856)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1007, file: !35, line: 1230, baseType: !7, size: 32, offset: 1984)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1007, file: !35, line: 1231, baseType: !2474, size: 2496, offset: 2048)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !2475)
!2475 = !{!2476, !2477, !2478, !2480, !2512}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2474, file: !40, line: 522, baseType: !7, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2474, file: !40, line: 523, baseType: !573, size: 320, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2474, file: !40, line: 524, baseType: !2479, size: 192, offset: 384)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 192, elements: !461)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2474, file: !40, line: 525, baseType: !2481, size: 1728, offset: 576)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2482, size: 1728, elements: !461)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !2483)
!2483 = !{!2484, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2482, file: !40, line: 223, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !2487)
!2487 = !{!2488, !2489, !2502, !2503}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2486, file: !40, line: 446, baseType: !85, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2486, file: !40, line: 447, baseType: !2490, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2492)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !2493)
!2493 = !{!2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2492, file: !40, line: 313, baseType: !2211, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2492, file: !40, line: 314, baseType: !2211, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2492, file: !40, line: 315, baseType: !2211, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2492, file: !40, line: 316, baseType: !2211, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2492, file: !40, line: 317, baseType: !2320, size: 64, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2492, file: !40, line: 318, baseType: !2320, size: 64, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2492, file: !40, line: 319, baseType: !2320, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2492, file: !40, line: 320, baseType: !2350, size: 64, offset: 448)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2486, file: !40, line: 448, baseType: !1040, size: 64, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2486, file: !40, line: 449, baseType: !2485, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2482, file: !40, line: 224, baseType: !85, size: 32, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2482, file: !40, line: 226, baseType: !389, size: 128, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2482, file: !40, line: 227, baseType: !136, size: 64, offset: 256)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2482, file: !40, line: 228, baseType: !7, size: 32, offset: 320)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2482, file: !40, line: 229, baseType: !7, size: 32, offset: 352)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2482, file: !40, line: 230, baseType: !2288, size: 64, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2482, file: !40, line: 231, baseType: !2288, size: 64, offset: 448)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2482, file: !40, line: 232, baseType: !137, size: 64, offset: 512)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2474, file: !40, line: 526, baseType: !2513, size: 192, offset: 2304)
!2513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2490, size: 192, elements: !461)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1007, file: !35, line: 1233, baseType: !2515, size: 2368, offset: 4544)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !2516)
!2516 = !{!2517, !2518, !2519}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2515, file: !35, line: 1185, baseType: !156, size: 16)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2515, file: !35, line: 1186, baseType: !156, size: 16, offset: 16)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2515, file: !35, line: 1187, baseType: !2520, size: 2304, offset: 64)
!2520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2521, size: 2304, elements: !461)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2522, line: 12, size: 768, elements: !2523)
!2522 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2523 = !{!2524, !2532, !2533, !3706, !3707}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2521, file: !2522, line: 13, baseType: !2525, size: 384)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2526, line: 17, size: 384, elements: !2527)
!2526 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2527 = !{!2528, !2529, !2530, !2531}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2525, file: !2526, line: 18, baseType: !85, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2525, file: !2526, line: 19, baseType: !85, size: 32, offset: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2525, file: !2526, line: 20, baseType: !485, size: 192, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2525, file: !2526, line: 22, baseType: !411, size: 128, align: 64, offset: 256)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2521, file: !2522, line: 14, baseType: !306, size: 64, offset: 384)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2521, file: !2522, line: 15, baseType: !2534, size: 64, offset: 448)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2535, line: 16, size: 64, elements: !2536)
!2535 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2536 = !{!2537}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2534, file: !2535, line: 17, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1749, line: 746, size: 58368, elements: !2540)
!2540 = !{!2541, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2621, !2632, !2720, !2724, !2727, !2758, !2759, !2760, !2761, !2769, !2771, !2772, !2773, !2774, !2775, !2776, !2787, !2788, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2805, !2806, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2894, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2942, !2948, !2949, !2950, !2951, !2952, !2954, !2957, !2964, !2969, !2972, !2975, !2978, !2981, !3119, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3157, !3158, !3159, !3168, !3176, !3177, !3178, !3179, !3180, !3185, !3186, !3187, !3190, !3191, !3194, !3197, !3200, !3208, !3211, !3212, !3298, !3299, !3300, !3301, !3302, !3308, !3309, !3310, !3311, !3314, !3315, !3318, !3321, !3322, !3325, !3326, !3327, !3330, !3331, !3332, !3333, !3334, !3335, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3367, !3370, !3376, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3388, !3460, !3462, !3463, !3464, !3465, !3466, !3467, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3485, !3486, !3487}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2539, file: !1749, line: 752, baseType: !2542, size: 192)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2543, line: 56, size: 192, elements: !2544)
!2543 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2544 = !{!2545, !2546, !2547, !2548}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2542, file: !2543, line: 57, baseType: !136, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2542, file: !2543, line: 58, baseType: !136, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2542, file: !2543, line: 59, baseType: !247, size: 32, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2542, file: !2543, line: 61, baseType: !247, size: 32, offset: 160)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2539, file: !1749, line: 754, baseType: !7, size: 32, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2539, file: !1749, line: 767, baseType: !137, size: 64, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2539, file: !1749, line: 768, baseType: !469, size: 32, offset: 320)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2539, file: !1749, line: 770, baseType: !7, size: 32, offset: 352)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2539, file: !1749, line: 771, baseType: !7, size: 32, offset: 384)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2539, file: !1749, line: 774, baseType: !85, size: 32, offset: 416)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2539, file: !1749, line: 775, baseType: !2556, size: 128, offset: 448)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2557, line: 58, size: 128, elements: !2558)
!2557 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2558 = !{!2559, !2560, !2565, !2566}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2556, file: !2557, line: 59, baseType: !405, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, scope: !2556, file: !2557, line: 60, baseType: !2561, size: 32, offset: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2556, file: !2557, line: 60, size: 32, elements: !2562)
!2562 = !{!2563, !2564}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2561, file: !2557, line: 61, baseType: !7, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2561, file: !2557, line: 62, baseType: !368, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2556, file: !2557, line: 65, baseType: !332, size: 16, offset: 96)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2556, file: !2557, line: 65, baseType: !332, size: 16, offset: 112)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2539, file: !1749, line: 776, baseType: !7, size: 32, offset: 576)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2539, file: !1749, line: 777, baseType: !136, size: 64, offset: 640)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2539, file: !1749, line: 778, baseType: !2538, size: 64, offset: 704)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2539, file: !1749, line: 787, baseType: !85, size: 32, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2539, file: !1749, line: 788, baseType: !85, size: 32, offset: 800)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2539, file: !1749, line: 790, baseType: !85, size: 32, offset: 832)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2539, file: !1749, line: 792, baseType: !85, size: 32, offset: 864)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2539, file: !1749, line: 793, baseType: !85, size: 32, offset: 896)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2539, file: !1749, line: 794, baseType: !85, size: 32, offset: 928)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2539, file: !1749, line: 795, baseType: !7, size: 32, offset: 960)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2539, file: !1749, line: 797, baseType: !2578, size: 2048, offset: 1024)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1749, line: 551, size: 2048, elements: !2579)
!2579 = !{!2580, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2600, !2603, !2604, !2605}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2578, file: !1749, line: 553, baseType: !2581, size: 128)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1749, line: 411, size: 128, elements: !2582)
!2582 = !{!2583, !2584}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2581, file: !1749, line: 412, baseType: !136, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2581, file: !1749, line: 413, baseType: !247, size: 32, offset: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2578, file: !1749, line: 554, baseType: !565, size: 192, align: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2578, file: !1749, line: 555, baseType: !541, size: 64, offset: 320)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2578, file: !1749, line: 556, baseType: !541, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2578, file: !1749, line: 558, baseType: !389, size: 128, offset: 448)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2578, file: !1749, line: 559, baseType: !7, size: 32, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2578, file: !1749, line: 561, baseType: !541, size: 64, offset: 640)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2578, file: !1749, line: 562, baseType: !541, size: 64, offset: 704)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2578, file: !1749, line: 563, baseType: !541, size: 64, offset: 768)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2578, file: !1749, line: 564, baseType: !541, size: 64, offset: 832)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2578, file: !1749, line: 565, baseType: !351, size: 64, offset: 896)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2578, file: !1749, line: 566, baseType: !541, size: 64, offset: 960)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2578, file: !1749, line: 568, baseType: !541, size: 64, offset: 1024)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2578, file: !1749, line: 571, baseType: !85, size: 32, offset: 1088)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2578, file: !1749, line: 572, baseType: !2599, size: 64, offset: 1152)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2578, file: !1749, line: 574, baseType: !2601, size: 64, offset: 1216)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1749, line: 49, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2578, file: !1749, line: 576, baseType: !2601, size: 64, offset: 1280)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2578, file: !1749, line: 578, baseType: !136, size: 64, offset: 1344)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2578, file: !1749, line: 588, baseType: !2606, size: 512, align: 512, offset: 1536)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1749, line: 497, size: 512, align: 512, elements: !2607)
!2607 = !{!2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2606, file: !1749, line: 498, baseType: !541, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2606, file: !1749, line: 499, baseType: !541, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2606, file: !1749, line: 500, baseType: !541, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2606, file: !1749, line: 501, baseType: !247, size: 32, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2606, file: !1749, line: 502, baseType: !247, size: 32, offset: 224)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2606, file: !1749, line: 503, baseType: !136, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2606, file: !1749, line: 504, baseType: !136, size: 64, offset: 320)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2606, file: !1749, line: 505, baseType: !136, size: 64, offset: 384)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2606, file: !1749, line: 506, baseType: !2617, size: 64, align: 64, offset: 448)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1749, line: 445, size: 64, align: 64, elements: !2618)
!2618 = !{!2619, !2620}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2617, file: !1749, line: 446, baseType: !7, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2617, file: !1749, line: 447, baseType: !7, size: 32, offset: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2539, file: !1749, line: 798, baseType: !2622, size: 384, offset: 3072)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1749, line: 592, size: 384, elements: !2623)
!2623 = !{!2624, !2625, !2626, !2627, !2628, !2629, !2630}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2622, file: !1749, line: 593, baseType: !389, size: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2622, file: !1749, line: 594, baseType: !136, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2622, file: !1749, line: 595, baseType: !136, size: 64, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2622, file: !1749, line: 596, baseType: !7, size: 32, offset: 256)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2622, file: !1749, line: 597, baseType: !156, size: 16, offset: 288)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2622, file: !1749, line: 598, baseType: !156, size: 16, offset: 304)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2622, file: !1749, line: 600, baseType: !2631, size: 64, offset: 320)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2539, file: !1749, line: 799, baseType: !2633, size: 1792, offset: 3456)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1749, line: 610, size: 1792, elements: !2634)
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2717, !2718}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2633, file: !1749, line: 611, baseType: !565, size: 192, align: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2633, file: !1749, line: 618, baseType: !541, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2633, file: !1749, line: 619, baseType: !541, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2633, file: !1749, line: 620, baseType: !541, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2633, file: !1749, line: 621, baseType: !541, size: 64, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2633, file: !1749, line: 622, baseType: !541, size: 64, offset: 448)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2633, file: !1749, line: 629, baseType: !351, size: 64, offset: 512)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2633, file: !1749, line: 630, baseType: !541, size: 64, offset: 576)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2633, file: !1749, line: 631, baseType: !7, size: 32, offset: 640)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2633, file: !1749, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2633, file: !1749, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2633, file: !1749, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2633, file: !1749, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2633, file: !1749, line: 662, baseType: !2649, size: 512, offset: 704)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !2650)
!2650 = !{!2651, !2659, !2660, !2665, !2713, !2714, !2715, !2716}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2649, file: !46, line: 119, baseType: !2652, size: 256)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2653, line: 9, size: 256, elements: !2654)
!2653 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2654 = !{!2655, !2656}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2652, file: !2653, line: 10, baseType: !565, size: 192, align: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2652, file: !2653, line: 11, baseType: !2657, size: 64, offset: 192)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2658, line: 29, baseType: !351)
!2658 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2649, file: !46, line: 120, baseType: !2657, size: 64, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2649, file: !46, line: 121, baseType: !2661, size: 64, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!45, !2664}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2649, file: !46, line: 122, baseType: !2666, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !2668)
!2668 = !{!2669, !2694, !2695, !2698, !2703, !2704, !2708, !2712}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2667, file: !46, line: 160, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2671, file: !46, line: 216, baseType: !355, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2671, file: !46, line: 217, baseType: !7, size: 32, offset: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2671, file: !46, line: 218, baseType: !7, size: 32, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2671, file: !46, line: 219, baseType: !7, size: 32, offset: 96)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2671, file: !46, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2671, file: !46, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2671, file: !46, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2671, file: !46, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2671, file: !46, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2671, file: !46, line: 226, baseType: !7, size: 32, offset: 160)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2671, file: !46, line: 227, baseType: !156, size: 16, offset: 192)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2671, file: !46, line: 228, baseType: !156, size: 16, offset: 208)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2671, file: !46, line: 229, baseType: !7, size: 32, offset: 224)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2671, file: !46, line: 235, baseType: !2657, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2671, file: !46, line: 236, baseType: !2664, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2671, file: !46, line: 237, baseType: !2657, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2671, file: !46, line: 238, baseType: !2664, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2671, file: !46, line: 239, baseType: !2691, size: 4096, align: 512, offset: 512)
!2691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2667, size: 4096, align: 512, elements: !2692)
!2692 = !{!2693}
!2693 = !DISubrange(count: 8)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2667, file: !46, line: 161, baseType: !7, size: 32, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2667, file: !46, line: 162, baseType: !2696, size: 32, offset: 96)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !134, line: 32, baseType: !2697)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !436, line: 96, baseType: !85)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2667, file: !46, line: 163, baseType: !2699, size: 32, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !761, line: 274, baseType: !2700)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !761, line: 274, size: 32, elements: !2701)
!2701 = !{!2702}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2700, file: !761, line: 274, baseType: !765, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2667, file: !46, line: 164, baseType: !2664, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2667, file: !46, line: 165, baseType: !2705, size: 128, offset: 256)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2653, line: 14, size: 128, elements: !2706)
!2706 = !{!2707}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2705, file: !2653, line: 15, baseType: !1166, size: 128)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2667, file: !46, line: 166, baseType: !2709, size: 64, offset: 384)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!2657}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2667, file: !46, line: 167, baseType: !2657, size: 64, offset: 448)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2649, file: !46, line: 123, baseType: !376, size: 8, offset: 448)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2649, file: !46, line: 124, baseType: !376, size: 8, offset: 456)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2649, file: !46, line: 125, baseType: !376, size: 8, offset: 464)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2649, file: !46, line: 126, baseType: !376, size: 8, offset: 472)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2633, file: !1749, line: 671, baseType: !2649, size: 512, offset: 1216)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2633, file: !1749, line: 679, baseType: !2719, size: 64, offset: 1728)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2539, file: !1749, line: 800, baseType: !2721, size: 64, offset: 5248)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2723)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1749, line: 800, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2539, file: !1749, line: 809, baseType: !2725, size: 64, offset: 5312)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1749, line: 70, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2539, file: !1749, line: 825, baseType: !2728, size: 2048, align: 512, offset: 5632)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1749, line: 509, size: 2048, align: 512, elements: !2729)
!2729 = !{!2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2728, file: !1749, line: 511, baseType: !541, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2728, file: !1749, line: 512, baseType: !541, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2728, file: !1749, line: 513, baseType: !541, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2728, file: !1749, line: 514, baseType: !541, size: 64, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2728, file: !1749, line: 515, baseType: !541, size: 64, offset: 256)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2728, file: !1749, line: 516, baseType: !541, size: 64, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2728, file: !1749, line: 518, baseType: !541, size: 64, offset: 384)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2728, file: !1749, line: 519, baseType: !541, size: 64, offset: 448)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2728, file: !1749, line: 520, baseType: !351, size: 64, offset: 512)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2728, file: !1749, line: 522, baseType: !541, size: 64, offset: 576)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2728, file: !1749, line: 523, baseType: !541, size: 64, offset: 640)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2728, file: !1749, line: 524, baseType: !351, size: 64, offset: 704)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2728, file: !1749, line: 526, baseType: !351, size: 64, offset: 768)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2728, file: !1749, line: 527, baseType: !541, size: 64, offset: 832)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2728, file: !1749, line: 529, baseType: !541, size: 64, offset: 896)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2728, file: !1749, line: 530, baseType: !541, size: 64, offset: 960)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2728, file: !1749, line: 531, baseType: !541, size: 64, offset: 1024)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2728, file: !1749, line: 532, baseType: !541, size: 64, offset: 1088)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2728, file: !1749, line: 533, baseType: !541, size: 64, offset: 1152)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2728, file: !1749, line: 535, baseType: !541, size: 64, offset: 1216)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2728, file: !1749, line: 536, baseType: !541, size: 64, offset: 1280)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2728, file: !1749, line: 537, baseType: !541, size: 64, offset: 1344)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2728, file: !1749, line: 538, baseType: !541, size: 64, offset: 1408)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2728, file: !1749, line: 539, baseType: !541, size: 64, offset: 1472)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2728, file: !1749, line: 540, baseType: !541, size: 64, offset: 1536)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2728, file: !1749, line: 541, baseType: !541, size: 64, offset: 1600)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2728, file: !1749, line: 542, baseType: !541, size: 64, offset: 1664)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2728, file: !1749, line: 543, baseType: !541, size: 64, offset: 1728)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2539, file: !1749, line: 833, baseType: !7, size: 32, offset: 7680)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2539, file: !1749, line: 836, baseType: !7, size: 32, offset: 7712)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2539, file: !1749, line: 837, baseType: !85, size: 32, offset: 7744)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2539, file: !1749, line: 838, baseType: !2762, size: 64, offset: 7808)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2764)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2765, line: 19, baseType: !2766)
!2765 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2765, line: 19, size: 64, elements: !2767)
!2767 = !{!2768}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2766, file: !2765, line: 19, baseType: !268, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2539, file: !1749, line: 839, baseType: !2770, size: 64, offset: 7872)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2539, file: !1749, line: 840, baseType: !2764, size: 64, offset: 7936)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2539, file: !1749, line: 841, baseType: !137, size: 64, offset: 8000)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2539, file: !1749, line: 843, baseType: !156, size: 16, offset: 8064)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2539, file: !1749, line: 845, baseType: !156, size: 16, offset: 8080)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2539, file: !1749, line: 848, baseType: !85, size: 32, offset: 8096)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2539, file: !1749, line: 849, baseType: !2777, size: 32, offset: 8128)
!2777 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1749, line: 718, size: 32, elements: !2778)
!2778 = !{!2779, !2786}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2777, file: !1749, line: 724, baseType: !2780, size: 32)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2777, file: !1749, line: 719, size: 32, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2785}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2780, file: !1749, line: 720, baseType: !376, size: 8)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2780, file: !1749, line: 721, baseType: !376, size: 8, offset: 8)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2780, file: !1749, line: 722, baseType: !376, size: 8, offset: 16)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2780, file: !1749, line: 723, baseType: !376, size: 8, offset: 24)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2777, file: !1749, line: 725, baseType: !247, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2539, file: !1749, line: 850, baseType: !389, size: 128, offset: 8192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2539, file: !1749, line: 851, baseType: !2789, size: 64, offset: 8320)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1749, line: 60, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2539, file: !1749, line: 855, baseType: !136, size: 64, offset: 8384)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2539, file: !1749, line: 856, baseType: !376, size: 8, offset: 8448)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2539, file: !1749, line: 857, baseType: !376, size: 8, offset: 8456)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2539, file: !1749, line: 858, baseType: !85, size: 32, offset: 8480)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2539, file: !1749, line: 859, baseType: !389, size: 128, offset: 8512)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2539, file: !1749, line: 860, baseType: !85, size: 32, offset: 8640)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2539, file: !1749, line: 861, baseType: !389, size: 128, offset: 8704)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2539, file: !1749, line: 873, baseType: !2799, size: 256, offset: 8832)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1749, line: 376, size: 256, elements: !2800)
!2800 = !{!2801, !2802, !2803, !2804}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2799, file: !1749, line: 381, baseType: !136, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2799, file: !1749, line: 384, baseType: !543, size: 64, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2799, file: !1749, line: 389, baseType: !543, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2799, file: !1749, line: 392, baseType: !543, size: 64, offset: 192)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2539, file: !1749, line: 875, baseType: !389, size: 128, offset: 9088)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2539, file: !1749, line: 877, baseType: !2807, size: 320, offset: 9216)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2808, line: 86, size: 320, elements: !2809)
!2808 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2809 = !{!2810, !2811, !2812}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2807, file: !2808, line: 87, baseType: !85, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2807, file: !2808, line: 88, baseType: !389, size: 128, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2807, file: !2808, line: 89, baseType: !389, size: 128, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2539, file: !1749, line: 878, baseType: !565, size: 192, align: 64, offset: 9536)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2539, file: !1749, line: 881, baseType: !1451, size: 64, offset: 9728)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2539, file: !1749, line: 882, baseType: !1451, size: 64, offset: 9792)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2539, file: !1749, line: 884, baseType: !85, size: 32, offset: 9856)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2539, file: !1749, line: 885, baseType: !85, size: 32, offset: 9888)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2539, file: !1749, line: 886, baseType: !85, size: 32, offset: 9920)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2539, file: !1749, line: 888, baseType: !85, size: 32, offset: 9952)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2539, file: !1749, line: 890, baseType: !136, size: 64, offset: 9984)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2539, file: !1749, line: 893, baseType: !7, size: 32, offset: 10048)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2539, file: !1749, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2539, file: !1749, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2539, file: !1749, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2539, file: !1749, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2539, file: !1749, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2539, file: !1749, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2539, file: !1749, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2539, file: !1749, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2539, file: !1749, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2539, file: !1749, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2539, file: !1749, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2539, file: !1749, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2539, file: !1749, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2539, file: !1749, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2539, file: !1749, line: 969, baseType: !136, size: 64, offset: 10176)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2539, file: !1749, line: 971, baseType: !2838, size: 448, offset: 10240)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !2839)
!2839 = !{!2840, !2841, !2846}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2838, file: !51, line: 26, baseType: !136, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2838, file: !51, line: 27, baseType: !2842, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!909, !2845}
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, scope: !2838, file: !51, line: 28, baseType: !2847, size: 320, offset: 128)
!2847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2838, file: !51, line: 28, size: 320, elements: !2848)
!2848 = !{!2849, !2859, !2884}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2847, file: !51, line: 37, baseType: !2850, size: 320)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2847, file: !51, line: 30, size: 320, elements: !2851)
!2851 = !{!2852, !2854, !2855, !2856, !2857, !2858}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2850, file: !51, line: 31, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2850, file: !51, line: 32, baseType: !247, size: 32, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2850, file: !51, line: 33, baseType: !247, size: 32, offset: 96)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2850, file: !51, line: 34, baseType: !247, size: 32, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2850, file: !51, line: 35, baseType: !541, size: 64, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2850, file: !51, line: 36, baseType: !2853, size: 64, offset: 256)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2847, file: !51, line: 47, baseType: !2860, size: 192)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2847, file: !51, line: 39, size: 192, elements: !2861)
!2861 = !{!2862, !2863, !2864, !2883}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2860, file: !51, line: 40, baseType: !2696, size: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2860, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, scope: !2860, file: !51, line: 42, baseType: !2865, size: 64, offset: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2860, file: !51, line: 42, size: 64, elements: !2866)
!2866 = !{!2867, !2875}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2865, file: !51, line: 43, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2870, line: 7, size: 128, elements: !2871)
!2870 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2871 = !{!2872, !2874}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2869, file: !2870, line: 8, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !436, line: 93, baseType: !353)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2869, file: !2870, line: 9, baseType: !353, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2865, file: !51, line: 44, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2878, line: 7, size: 64, elements: !2879)
!2878 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2879 = !{!2880, !2882}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2877, file: !2878, line: 8, baseType: !2881, size: 32)
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2878, line: 5, baseType: !558)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2877, file: !2878, line: 9, baseType: !558, size: 32, offset: 32)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2860, file: !51, line: 46, baseType: !541, size: 64, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2847, file: !51, line: 55, baseType: !2885, size: 256)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2847, file: !51, line: 49, size: 256, elements: !2886)
!2886 = !{!2887, !2890, !2891, !2892, !2893}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2885, file: !51, line: 50, baseType: !2888, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2885, file: !51, line: 51, baseType: !85, size: 32, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2885, file: !51, line: 52, baseType: !85, size: 32, offset: 96)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2885, file: !51, line: 53, baseType: !136, size: 64, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2885, file: !51, line: 54, baseType: !136, size: 64, offset: 192)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2539, file: !1749, line: 973, baseType: !2895, size: 32, offset: 10688)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !134, line: 27, baseType: !2896)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !436, line: 28, baseType: !85)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2539, file: !1749, line: 974, baseType: !2895, size: 32, offset: 10720)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2539, file: !1749, line: 978, baseType: !136, size: 64, offset: 10752)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2539, file: !1749, line: 987, baseType: !2538, size: 64, offset: 10816)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2539, file: !1749, line: 990, baseType: !2538, size: 64, offset: 10880)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2539, file: !1749, line: 995, baseType: !389, size: 128, offset: 10944)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2539, file: !1749, line: 996, baseType: !389, size: 128, offset: 11072)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2539, file: !1749, line: 997, baseType: !2538, size: 64, offset: 11200)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2539, file: !1749, line: 1005, baseType: !389, size: 128, offset: 11264)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2539, file: !1749, line: 1006, baseType: !389, size: 128, offset: 11392)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2539, file: !1749, line: 1009, baseType: !465, size: 64, offset: 11520)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2539, file: !1749, line: 1010, baseType: !2908, size: 512, offset: 11584)
!2908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 512, elements: !481)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2539, file: !1749, line: 1011, baseType: !389, size: 128, offset: 12096)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2539, file: !1749, line: 1012, baseType: !389, size: 128, offset: 12224)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2539, file: !1749, line: 1014, baseType: !1829, size: 64, offset: 12352)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2539, file: !1749, line: 1017, baseType: !1973, size: 64, offset: 12416)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2539, file: !1749, line: 1020, baseType: !1973, size: 64, offset: 12480)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2539, file: !1749, line: 1023, baseType: !137, size: 64, offset: 12544)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2539, file: !1749, line: 1025, baseType: !541, size: 64, offset: 12608)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2539, file: !1749, line: 1026, baseType: !541, size: 64, offset: 12672)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2539, file: !1749, line: 1031, baseType: !541, size: 64, offset: 12736)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2539, file: !1749, line: 1032, baseType: !2919, size: 192, offset: 12800)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1749, line: 324, size: 192, elements: !2920)
!2920 = !{!2921, !2922, !2923}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2919, file: !1749, line: 326, baseType: !541, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2919, file: !1749, line: 327, baseType: !541, size: 64, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2919, file: !1749, line: 328, baseType: !355, size: 32, offset: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2539, file: !1749, line: 1041, baseType: !136, size: 64, offset: 12992)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2539, file: !1749, line: 1042, baseType: !136, size: 64, offset: 13056)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2539, file: !1749, line: 1045, baseType: !541, size: 64, offset: 13120)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2539, file: !1749, line: 1048, baseType: !541, size: 64, offset: 13184)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2539, file: !1749, line: 1051, baseType: !136, size: 64, offset: 13248)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2539, file: !1749, line: 1052, baseType: !136, size: 64, offset: 13312)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2539, file: !1749, line: 1055, baseType: !2931, size: 640, offset: 13376)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2932, line: 132, size: 640, elements: !2933)
!2932 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2933 = !{!2934, !2940, !2941}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2931, file: !2932, line: 133, baseType: !2935, size: 576)
!2935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2936, size: 576, elements: !461)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2932, line: 117, size: 192, elements: !2937)
!2937 = !{!2938, !2939}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2936, file: !2932, line: 118, baseType: !541, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2936, file: !2932, line: 119, baseType: !2705, size: 128, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2931, file: !2932, line: 134, baseType: !7, size: 32, offset: 576)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2931, file: !2932, line: 135, baseType: !7, size: 32, offset: 608)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2539, file: !1749, line: 1058, baseType: !2943, size: 448, offset: 14016)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2932, line: 144, size: 448, elements: !2944)
!2944 = !{!2945, !2946, !2947}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2943, file: !2932, line: 145, baseType: !411, size: 128, align: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2943, file: !2932, line: 146, baseType: !341, size: 256, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2943, file: !2932, line: 147, baseType: !7, size: 32, offset: 384)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2539, file: !1749, line: 1064, baseType: !514, size: 64, offset: 14464)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2539, file: !1749, line: 1067, baseType: !514, size: 64, offset: 14528)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2539, file: !1749, line: 1070, baseType: !514, size: 64, offset: 14592)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2539, file: !1749, line: 1074, baseType: !550, size: 64, offset: 14656)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2539, file: !1749, line: 1084, baseType: !2953, size: 128, offset: 14720)
!2953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 128, elements: !226)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2539, file: !1749, line: 1086, baseType: !2955, size: 64, offset: 14848)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1749, line: 55, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2539, file: !1749, line: 1089, baseType: !2958, size: 64, offset: 14912)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2959, line: 12, size: 64, elements: !2960)
!2959 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2960 = !{!2961}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2958, file: !2959, line: 13, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2959, line: 8, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2539, file: !1749, line: 1090, baseType: !2965, size: 128, offset: 14976)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2966, line: 13, size: 128, elements: !2967)
!2966 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2967 = !{!2968}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2965, file: !2966, line: 14, baseType: !389, size: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2539, file: !1749, line: 1097, baseType: !2970, size: 64, offset: 15104)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1749, line: 50, flags: DIFlagFwdDecl)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2539, file: !1749, line: 1100, baseType: !2973, size: 64, offset: 15168)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1749, line: 1100, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2539, file: !1749, line: 1103, baseType: !2976, size: 64, offset: 15232)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1749, line: 53, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2539, file: !1749, line: 1107, baseType: !2979, size: 64, offset: 15296)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1749, line: 56, flags: DIFlagFwdDecl)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2539, file: !1749, line: 1110, baseType: !2982, size: 64, offset: 15360)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2984, line: 93, size: 8768, elements: !2985)
!2984 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2985 = !{!2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3033, !3042, !3043, !3045, !3046, !3047, !3050, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3088, !3089, !3096, !3106, !3109, !3110, !3113, !3114, !3115, !3116, !3117, !3118}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2983, file: !2984, line: 94, baseType: !469, size: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2983, file: !2984, line: 95, baseType: !368, size: 32, offset: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2983, file: !2984, line: 96, baseType: !85, size: 32, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2983, file: !2984, line: 97, baseType: !85, size: 32, offset: 96)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2983, file: !2984, line: 98, baseType: !389, size: 128, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2983, file: !2984, line: 100, baseType: !485, size: 192, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2983, file: !2984, line: 103, baseType: !2538, size: 64, offset: 448)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2983, file: !2984, line: 106, baseType: !2994, size: 192, offset: 512)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !721, line: 32, size: 192, elements: !2995)
!2995 = !{!2996, !2997}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2994, file: !721, line: 33, baseType: !389, size: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2994, file: !721, line: 34, baseType: !2998, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2999, line: 25, baseType: !3000)
!2999 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2999, line: 23, size: 64, elements: !3001)
!3001 = !{!3002}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3000, file: !2999, line: 24, baseType: !268, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2983, file: !2984, line: 109, baseType: !478, size: 64, offset: 704)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2983, file: !2984, line: 112, baseType: !85, size: 32, offset: 768)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2983, file: !2984, line: 114, baseType: !85, size: 32, offset: 800)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2983, file: !2984, line: 115, baseType: !2538, size: 64, offset: 832)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2983, file: !2984, line: 118, baseType: !85, size: 32, offset: 896)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2983, file: !2984, line: 119, baseType: !7, size: 32, offset: 928)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2983, file: !2984, line: 121, baseType: !3010, size: 64, offset: 960)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2984, line: 80, size: 448, elements: !3012)
!3012 = !{!3013, !3014, !3020}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3011, file: !2984, line: 81, baseType: !368, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3011, file: !2984, line: 82, baseType: !3015, size: 128, offset: 64)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2984, line: 75, size: 128, elements: !3016)
!3016 = !{!3017, !3018}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3015, file: !2984, line: 76, baseType: !2538, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3015, file: !2984, line: 77, baseType: !3019, size: 64, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3011, file: !2984, line: 83, baseType: !1830, size: 256, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2983, file: !2984, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2983, file: !2984, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2983, file: !2984, line: 138, baseType: !7, size: 32, offset: 1056)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2983, file: !2984, line: 139, baseType: !389, size: 128, offset: 1088)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2983, file: !2984, line: 142, baseType: !2649, size: 512, offset: 1216)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2983, file: !2984, line: 143, baseType: !2657, size: 64, offset: 1728)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2983, file: !2984, line: 150, baseType: !3028, size: 256, offset: 1792)
!3028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3029, size: 256, elements: !214)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2984, line: 38, size: 128, elements: !3030)
!3030 = !{!3031, !3032}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3029, file: !2984, line: 39, baseType: !541, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3029, file: !2984, line: 40, baseType: !541, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2983, file: !2984, line: 156, baseType: !3034, size: 192, offset: 2048)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2984, line: 66, size: 192, elements: !3035)
!3035 = !{!3036}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3034, file: !2984, line: 67, baseType: !3037, size: 192)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2984, line: 47, size: 192, elements: !3038)
!3038 = !{!3039, !3040, !3041}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3037, file: !2984, line: 48, baseType: !347, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3037, file: !2984, line: 49, baseType: !347, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3037, file: !2984, line: 50, baseType: !347, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2983, file: !2984, line: 160, baseType: !2931, size: 640, offset: 2240)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2983, file: !2984, line: 163, baseType: !3044, size: 256, offset: 2880)
!3044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 256, elements: !481)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2983, file: !2984, line: 169, baseType: !465, size: 64, offset: 3136)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2983, file: !2984, line: 172, baseType: !85, size: 32, offset: 3200)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2983, file: !2984, line: 174, baseType: !3048, size: 64, offset: 3264)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2984, line: 174, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2983, file: !2984, line: 185, baseType: !3051, size: 64, offset: 3328)
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !761, line: 860, baseType: !3052)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !761, line: 853, size: 64, elements: !3053)
!3053 = !{!3054, !3055}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3052, file: !761, line: 858, baseType: !760, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3052, file: !761, line: 859, baseType: !421, size: 32, offset: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2983, file: !2984, line: 186, baseType: !541, size: 64, offset: 3392)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2983, file: !2984, line: 186, baseType: !541, size: 64, offset: 3456)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2983, file: !2984, line: 186, baseType: !541, size: 64, offset: 3520)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2983, file: !2984, line: 186, baseType: !541, size: 64, offset: 3584)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2983, file: !2984, line: 187, baseType: !541, size: 64, offset: 3648)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2983, file: !2984, line: 188, baseType: !541, size: 64, offset: 3712)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2983, file: !2984, line: 189, baseType: !2919, size: 192, offset: 3776)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2983, file: !2984, line: 190, baseType: !136, size: 64, offset: 3968)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2983, file: !2984, line: 190, baseType: !136, size: 64, offset: 4032)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2983, file: !2984, line: 190, baseType: !136, size: 64, offset: 4096)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2983, file: !2984, line: 190, baseType: !136, size: 64, offset: 4160)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2983, file: !2984, line: 191, baseType: !136, size: 64, offset: 4224)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2983, file: !2984, line: 191, baseType: !136, size: 64, offset: 4288)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2983, file: !2984, line: 191, baseType: !136, size: 64, offset: 4352)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2983, file: !2984, line: 191, baseType: !136, size: 64, offset: 4416)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2983, file: !2984, line: 192, baseType: !136, size: 64, offset: 4480)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2983, file: !2984, line: 192, baseType: !136, size: 64, offset: 4544)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2983, file: !2984, line: 192, baseType: !136, size: 64, offset: 4608)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2983, file: !2984, line: 192, baseType: !136, size: 64, offset: 4672)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2983, file: !2984, line: 193, baseType: !136, size: 64, offset: 4736)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2983, file: !2984, line: 193, baseType: !136, size: 64, offset: 4800)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2983, file: !2984, line: 194, baseType: !3078, size: 448, offset: 4864)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3079, line: 12, size: 448, elements: !3080)
!3079 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3080 = !{!3081, !3082, !3083, !3084, !3085, !3086, !3087}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3078, file: !3079, line: 15, baseType: !541, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3078, file: !3079, line: 17, baseType: !541, size: 64, offset: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3078, file: !3079, line: 19, baseType: !541, size: 64, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3078, file: !3079, line: 21, baseType: !541, size: 64, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3078, file: !3079, line: 29, baseType: !541, size: 64, offset: 256)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3078, file: !3079, line: 35, baseType: !541, size: 64, offset: 320)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3078, file: !3079, line: 44, baseType: !541, size: 64, offset: 384)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2983, file: !2984, line: 202, baseType: !543, size: 64, offset: 5312)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2983, file: !2984, line: 213, baseType: !3090, size: 2048, offset: 5376)
!3090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3091, size: 2048, elements: !226)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3092, line: 43, size: 128, elements: !3093)
!3092 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3093 = !{!3094, !3095}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3091, file: !3092, line: 44, baseType: !953, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3091, file: !3092, line: 45, baseType: !953, size: 64, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2983, file: !2984, line: 216, baseType: !3097, size: 448, offset: 7424)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2984, line: 30, size: 448, elements: !3098)
!3098 = !{!3099, !3100, !3101, !3102, !3103, !3104, !3105}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3097, file: !2984, line: 31, baseType: !85, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3097, file: !2984, line: 32, baseType: !909, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3097, file: !2984, line: 33, baseType: !136, size: 64, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3097, file: !2984, line: 34, baseType: !541, size: 64, offset: 192)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3097, file: !2984, line: 34, baseType: !541, size: 64, offset: 256)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3097, file: !2984, line: 35, baseType: !136, size: 64, offset: 320)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3097, file: !2984, line: 35, baseType: !136, size: 64, offset: 384)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2983, file: !2984, line: 219, baseType: !3107, size: 64, offset: 7872)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2984, line: 219, flags: DIFlagFwdDecl)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2983, file: !2984, line: 222, baseType: !7, size: 32, offset: 7936)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2983, file: !2984, line: 223, baseType: !3111, size: 64, offset: 8000)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2984, line: 223, flags: DIFlagFwdDecl)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2983, file: !2984, line: 230, baseType: !631, size: 8, offset: 8064)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2983, file: !2984, line: 231, baseType: !159, size: 16, offset: 8080)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2983, file: !2984, line: 232, baseType: !159, size: 16, offset: 8096)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2983, file: !2984, line: 234, baseType: !1451, size: 64, offset: 8128)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2983, file: !2984, line: 237, baseType: !341, size: 256, offset: 8192)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2983, file: !2984, line: 243, baseType: !573, size: 320, offset: 8448)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2539, file: !1749, line: 1111, baseType: !3120, size: 64, offset: 15424)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2984, line: 20, size: 16640, elements: !3122)
!3122 = !{!3123, !3124, !3125, !3126}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3121, file: !2984, line: 21, baseType: !421, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3121, file: !2984, line: 22, baseType: !469, size: 32, offset: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3121, file: !2984, line: 23, baseType: !485, size: 192, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3121, file: !2984, line: 24, baseType: !3127, size: 16384, offset: 256)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3128, size: 16384, elements: !1096)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !721, line: 51, size: 256, elements: !3129)
!3129 = !{!3130}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3128, file: !721, line: 52, baseType: !3131, size: 256)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !721, line: 37, size: 256, elements: !3132)
!3132 = !{!3133, !3140, !3141, !3145}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3131, file: !721, line: 39, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3135, line: 83, baseType: !3136)
!3135 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3135, line: 82, baseType: !3138)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{null, !85}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3131, file: !721, line: 40, baseType: !136, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3131, file: !721, line: 46, baseType: !3142, size: 64, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3135, line: 86, baseType: !3143)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3135, line: 85, baseType: !2167)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3131, file: !721, line: 48, baseType: !2998, size: 64, offset: 192)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2539, file: !1749, line: 1112, baseType: !2998, size: 64, offset: 15488)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2539, file: !1749, line: 1113, baseType: !2998, size: 64, offset: 15552)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2539, file: !1749, line: 1115, baseType: !2998, size: 64, offset: 15616)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2539, file: !1749, line: 1116, baseType: !2994, size: 192, offset: 15680)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2539, file: !1749, line: 1117, baseType: !136, size: 64, offset: 15872)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2539, file: !1749, line: 1118, baseType: !951, size: 64, offset: 15936)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2539, file: !1749, line: 1119, baseType: !7, size: 32, offset: 16000)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2539, file: !1749, line: 1121, baseType: !414, size: 64, offset: 16064)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2539, file: !1749, line: 1125, baseType: !3155, size: 64, offset: 16128)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1749, line: 43, flags: DIFlagFwdDecl)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2539, file: !1749, line: 1127, baseType: !504, size: 32, offset: 16192)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2539, file: !1749, line: 1128, baseType: !7, size: 32, offset: 16224)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2539, file: !1749, line: 1130, baseType: !3160, size: 128, offset: 16256)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3161, line: 37, size: 128, elements: !3162)
!3161 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3162 = !{!3163, !3164, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3160, file: !3161, line: 38, baseType: !85, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3160, file: !3161, line: 39, baseType: !368, size: 32, offset: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3160, file: !3161, line: 40, baseType: !3166, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3161, line: 24, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2539, file: !1749, line: 1131, baseType: !3169, size: 256, offset: 16384)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3170, line: 12, size: 256, elements: !3171)
!3170 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3171 = !{!3172, !3173, !3174, !3175}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3169, file: !3170, line: 13, baseType: !642, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3169, file: !3170, line: 14, baseType: !136, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3169, file: !3170, line: 15, baseType: !136, size: 64, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3169, file: !3170, line: 16, baseType: !631, size: 8, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2539, file: !1749, line: 1134, baseType: !541, size: 64, offset: 16640)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2539, file: !1749, line: 1135, baseType: !541, size: 64, offset: 16704)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2539, file: !1749, line: 1138, baseType: !421, size: 32, offset: 16768)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2539, file: !1749, line: 1141, baseType: !355, size: 32, offset: 16800)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2539, file: !1749, line: 1143, baseType: !3181, size: 64, offset: 16832)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1749, line: 735, size: 64, elements: !3182)
!3182 = !{!3183}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3181, file: !1749, line: 736, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2539, file: !1749, line: 1147, baseType: !1166, size: 128, offset: 16896)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2539, file: !1749, line: 1149, baseType: !2538, size: 64, offset: 17024)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2539, file: !1749, line: 1151, baseType: !3188, size: 64, offset: 17088)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1749, line: 1151, flags: DIFlagFwdDecl)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2539, file: !1749, line: 1188, baseType: !137, size: 64, offset: 17152)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2539, file: !1749, line: 1191, baseType: !3192, size: 64, offset: 17216)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1749, line: 44, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2539, file: !1749, line: 1194, baseType: !3195, size: 64, offset: 17280)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1749, line: 45, flags: DIFlagFwdDecl)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2539, file: !1749, line: 1197, baseType: !3198, size: 64, offset: 17344)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1749, line: 61, flags: DIFlagFwdDecl)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2539, file: !1749, line: 1199, baseType: !3201, size: 64, offset: 17408)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3203, line: 99, size: 128, elements: !3204)
!3203 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3204 = !{!3205, !3206, !3207}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3202, file: !3203, line: 100, baseType: !345, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3202, file: !3203, line: 101, baseType: !368, size: 32, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3202, file: !3203, line: 103, baseType: !156, size: 16, offset: 96)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2539, file: !1749, line: 1202, baseType: !3209, size: 64, offset: 17472)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1749, line: 48, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2539, file: !1749, line: 1205, baseType: !136, size: 64, offset: 17536)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2539, file: !1749, line: 1206, baseType: !3213, size: 64, offset: 17600)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !721, line: 14, baseType: !3215)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !721, line: 12, size: 384, elements: !3216)
!3216 = !{!3217}
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3215, file: !721, line: 13, baseType: !3218, size: 384)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !721, line: 13, size: 384, elements: !3219)
!3219 = !{!3220, !3221, !3222, !3223}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3218, file: !721, line: 13, baseType: !85, size: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3218, file: !721, line: 13, baseType: !85, size: 32, offset: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3218, file: !721, line: 13, baseType: !85, size: 32, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3218, file: !721, line: 13, baseType: !3224, size: 256, offset: 128)
!3224 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3225, line: 37, size: 256, elements: !3226)
!3225 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3226 = !{!3227, !3232, !3245, !3251, !3260, !3287, !3292}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3224, file: !3225, line: 42, baseType: !3228, size: 64)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3224, file: !3225, line: 39, size: 64, elements: !3229)
!3229 = !{!3230, !3231}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3228, file: !3225, line: 40, baseType: !2896, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3228, file: !3225, line: 41, baseType: !510, size: 32, offset: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3224, file: !3225, line: 50, baseType: !3233, size: 192)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3224, file: !3225, line: 45, size: 192, elements: !3234)
!3234 = !{!3235, !3237, !3238, !3244}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3233, file: !3225, line: 46, baseType: !3236, size: 32)
!3236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !436, line: 95, baseType: !85)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3233, file: !3225, line: 47, baseType: !85, size: 32, offset: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3233, file: !3225, line: 48, baseType: !3239, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3225, line: 11, baseType: !3240)
!3240 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3225, line: 8, size: 64, elements: !3241)
!3241 = !{!3242, !3243}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3240, file: !3225, line: 9, baseType: !85, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3240, file: !3225, line: 10, baseType: !137, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3233, file: !3225, line: 49, baseType: !85, size: 32, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3224, file: !3225, line: 57, baseType: !3246, size: 128)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3224, file: !3225, line: 53, size: 128, elements: !3247)
!3247 = !{!3248, !3249, !3250}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3246, file: !3225, line: 54, baseType: !2896, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3246, file: !3225, line: 55, baseType: !510, size: 32, offset: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3246, file: !3225, line: 56, baseType: !3239, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3224, file: !3225, line: 66, baseType: !3252, size: 256)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3224, file: !3225, line: 60, size: 256, elements: !3253)
!3253 = !{!3254, !3255, !3256, !3257, !3259}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3252, file: !3225, line: 61, baseType: !2896, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3252, file: !3225, line: 62, baseType: !510, size: 32, offset: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3252, file: !3225, line: 63, baseType: !85, size: 32, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3252, file: !3225, line: 64, baseType: !3258, size: 64, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !436, line: 94, baseType: !950)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3252, file: !3225, line: 65, baseType: !3258, size: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3224, file: !3225, line: 105, baseType: !3261, size: 256)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3224, file: !3225, line: 69, size: 256, elements: !3262)
!3262 = !{!3263, !3264}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3261, file: !3225, line: 70, baseType: !137, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, scope: !3261, file: !3225, line: 79, baseType: !3265, size: 192, offset: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3261, file: !3225, line: 79, size: 192, elements: !3266)
!3266 = !{!3267, !3268, !3269, !3276, !3281}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3265, file: !3225, line: 81, baseType: !85, size: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3265, file: !3225, line: 86, baseType: !159, size: 16)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3265, file: !3225, line: 92, baseType: !3270, size: 192)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3265, file: !3225, line: 88, size: 192, elements: !3271)
!3271 = !{!3272, !3274, !3275}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3270, file: !3225, line: 89, baseType: !3273, size: 64)
!3273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 64, elements: !2692)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3270, file: !3225, line: 90, baseType: !137, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3270, file: !3225, line: 91, baseType: !137, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3265, file: !3225, line: 97, baseType: !3277, size: 96)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3265, file: !3225, line: 94, size: 96, elements: !3278)
!3278 = !{!3279, !3280}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3277, file: !3225, line: 95, baseType: !3273, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3277, file: !3225, line: 96, baseType: !201, size: 32, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3265, file: !3225, line: 103, baseType: !3282, size: 128)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3265, file: !3225, line: 99, size: 128, elements: !3283)
!3283 = !{!3284, !3285, !3286}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3282, file: !3225, line: 100, baseType: !136, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3282, file: !3225, line: 101, baseType: !201, size: 32, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3282, file: !3225, line: 102, baseType: !201, size: 32, offset: 96)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3224, file: !3225, line: 111, baseType: !3288, size: 128)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3224, file: !3225, line: 108, size: 128, elements: !3289)
!3289 = !{!3290, !3291}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3288, file: !3225, line: 109, baseType: !909, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3288, file: !3225, line: 110, baseType: !85, size: 32, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3224, file: !3225, line: 118, baseType: !3293, size: 128)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3224, file: !3225, line: 114, size: 128, elements: !3294)
!3294 = !{!3295, !3296, !3297}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3293, file: !3225, line: 115, baseType: !137, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3293, file: !3225, line: 116, baseType: !85, size: 32, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3293, file: !3225, line: 117, baseType: !7, size: 32, offset: 96)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2539, file: !1749, line: 1208, baseType: !3078, size: 448, offset: 17664)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2539, file: !1749, line: 1215, baseType: !541, size: 64, offset: 18112)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2539, file: !1749, line: 1217, baseType: !541, size: 64, offset: 18176)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2539, file: !1749, line: 1219, baseType: !541, size: 64, offset: 18240)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2539, file: !1749, line: 1223, baseType: !3303, size: 64, offset: 18304)
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3304, line: 99, baseType: !3305)
!3304 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3304, line: 99, size: 64, elements: !3306)
!3306 = !{!3307}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3305, file: !3304, line: 99, baseType: !268, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2539, file: !1749, line: 1225, baseType: !760, size: 32, offset: 18368)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2539, file: !1749, line: 1226, baseType: !85, size: 32, offset: 18400)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2539, file: !1749, line: 1227, baseType: !85, size: 32, offset: 18432)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2539, file: !1749, line: 1231, baseType: !3312, size: 64, offset: 18496)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1749, line: 1231, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2539, file: !1749, line: 1233, baseType: !389, size: 128, offset: 18560)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2539, file: !1749, line: 1240, baseType: !3316, size: 64, offset: 18688)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1749, line: 62, flags: DIFlagFwdDecl)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2539, file: !1749, line: 1242, baseType: !3319, size: 64, offset: 18752)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1749, line: 1242, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2539, file: !1749, line: 1244, baseType: !389, size: 128, offset: 18816)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2539, file: !1749, line: 1245, baseType: !3323, size: 64, offset: 18944)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1749, line: 51, flags: DIFlagFwdDecl)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2539, file: !1749, line: 1246, baseType: !341, size: 256, offset: 19008)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2539, file: !1749, line: 1247, baseType: !7, size: 32, offset: 19264)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2539, file: !1749, line: 1250, baseType: !3328, size: 64, offset: 19328)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1749, line: 57, flags: DIFlagFwdDecl)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2539, file: !1749, line: 1251, baseType: !341, size: 256, offset: 19392)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2539, file: !1749, line: 1252, baseType: !389, size: 128, offset: 19648)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2539, file: !1749, line: 1259, baseType: !1656, size: 64, offset: 19776)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2539, file: !1749, line: 1260, baseType: !159, size: 16, offset: 19840)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2539, file: !1749, line: 1261, baseType: !159, size: 16, offset: 19856)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2539, file: !1749, line: 1314, baseType: !3336, size: 64, offset: 19904)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3338, line: 62, size: 256, align: 256, elements: !3339)
!3338 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345, !3346}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3337, file: !3338, line: 75, baseType: !201, size: 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3337, file: !3338, line: 90, baseType: !201, size: 32, offset: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3337, file: !3338, line: 112, baseType: !542, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3337, file: !3338, line: 132, baseType: !201, size: 32, offset: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3337, file: !3338, line: 140, baseType: !201, size: 32, offset: 160)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3337, file: !3338, line: 149, baseType: !201, size: 32, offset: 192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3337, file: !3338, line: 154, baseType: !3347, offset: 224)
!3347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, elements: !500)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2539, file: !1749, line: 1315, baseType: !247, size: 32, offset: 19968)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2539, file: !1749, line: 1316, baseType: !247, size: 32, offset: 20000)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2539, file: !1749, line: 1321, baseType: !136, size: 64, offset: 20032)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2539, file: !1749, line: 1325, baseType: !85, size: 32, offset: 20096)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2539, file: !1749, line: 1326, baseType: !85, size: 32, offset: 20128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2539, file: !1749, line: 1327, baseType: !85, size: 32, offset: 20160)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2539, file: !1749, line: 1328, baseType: !85, size: 32, offset: 20192)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2539, file: !1749, line: 1329, baseType: !411, size: 128, align: 64, offset: 20224)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2539, file: !1749, line: 1332, baseType: !3357, size: 128, offset: 20352)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3358, line: 51, size: 128, elements: !3359)
!3358 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3359 = !{!3360, !3365, !3366}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3357, file: !3358, line: 60, baseType: !3361, size: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3362, line: 7, size: 64, elements: !3363)
!3362 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3363 = !{!3364}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3361, file: !3362, line: 12, baseType: !2766, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3357, file: !3358, line: 63, baseType: !631, size: 8, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3357, file: !3358, line: 70, baseType: !631, size: 8, offset: 72)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2539, file: !1749, line: 1335, baseType: !3368, size: 64, offset: 20480)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1749, line: 59, flags: DIFlagFwdDecl)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2539, file: !1749, line: 1337, baseType: !3371, size: 128, offset: 20544)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3358, line: 39, size: 128, elements: !3372)
!3372 = !{!3373, !3374, !3375}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3371, file: !3358, line: 40, baseType: !1184, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3371, file: !3358, line: 42, baseType: !201, size: 32, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3371, file: !3358, line: 43, baseType: !201, size: 32, offset: 96)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2539, file: !1749, line: 1340, baseType: !3377, size: 64, offset: 20672)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1749, line: 69, flags: DIFlagFwdDecl)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2539, file: !1749, line: 1351, baseType: !85, size: 32, offset: 20736)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2539, file: !1749, line: 1352, baseType: !85, size: 32, offset: 20768)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2539, file: !1749, line: 1354, baseType: !136, size: 64, offset: 20800)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2539, file: !1749, line: 1364, baseType: !541, size: 64, offset: 20864)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2539, file: !1749, line: 1365, baseType: !541, size: 64, offset: 20928)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2539, file: !1749, line: 1412, baseType: !136, size: 64, offset: 20992)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2539, file: !1749, line: 1453, baseType: !3386, size: 64, offset: 21056)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1749, line: 1453, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2539, file: !1749, line: 1457, baseType: !3389, size: 64, offset: 21120)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !3391)
!3391 = !{!3392, !3393, !3412, !3415, !3416, !3449, !3459}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3390, file: !57, line: 62, baseType: !56, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !57, line: 64, baseType: !3394, size: 192, offset: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3390, file: !57, line: 64, size: 192, elements: !3395)
!3395 = !{!3396, !3407}
!3396 = !DIDerivedType(tag: DW_TAG_member, scope: !3394, file: !57, line: 65, baseType: !3397, size: 192)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3394, file: !57, line: 65, size: 192, elements: !3398)
!3398 = !{!3399, !3406}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3397, file: !57, line: 66, baseType: !3400, size: 128)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3401, line: 50, size: 128, elements: !3402)
!3401 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3402 = !{!3403, !3404, !3405}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3400, file: !3401, line: 52, baseType: !136, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3400, file: !3401, line: 54, baseType: !7, size: 32, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3400, file: !3401, line: 55, baseType: !7, size: 32, offset: 96)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3397, file: !57, line: 67, baseType: !136, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, scope: !3394, file: !57, line: 70, baseType: !3408, size: 192)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3394, file: !57, line: 70, size: 192, elements: !3409)
!3409 = !{!3410, !3411}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3408, file: !57, line: 71, baseType: !411, size: 128, align: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3408, file: !57, line: 72, baseType: !136, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3390, file: !57, line: 76, baseType: !3413, size: 64, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3390, file: !57, line: 77, baseType: !136, size: 64, offset: 320)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3390, file: !57, line: 79, baseType: !3417, size: 64, offset: 384)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3401, line: 25, size: 256, elements: !3419)
!3419 = !{!3420, !3426, !3430}
!3420 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !3401, line: 26, baseType: !3421, size: 128)
!3421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !3401, line: 26, size: 128, elements: !3422)
!3422 = !{!3423, !3425}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3421, file: !3401, line: 27, baseType: !3424, size: 128)
!3424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 128, elements: !226)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3421, file: !3401, line: 28, baseType: !3424, size: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3418, file: !3401, line: 31, baseType: !3427, size: 64, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3429)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3401, line: 23, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, scope: !3418, file: !3401, line: 33, baseType: !3431, size: 64, offset: 192)
!3431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3418, file: !3401, line: 33, size: 64, elements: !3432)
!3432 = !{!3433, !3439, !3444}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3431, file: !3401, line: 38, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3431, file: !3401, line: 34, size: 64, elements: !3435)
!3435 = !{!3436, !3437, !3438}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3434, file: !3401, line: 35, baseType: !558, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3434, file: !3401, line: 36, baseType: !376, size: 8, offset: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3434, file: !3401, line: 37, baseType: !376, size: 8, offset: 40)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3431, file: !3401, line: 42, baseType: !3440, size: 16)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3431, file: !3401, line: 39, size: 16, elements: !3441)
!3441 = !{!3442, !3443}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3440, file: !3401, line: 40, baseType: !376, size: 8)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3440, file: !3401, line: 41, baseType: !376, size: 8, offset: 8)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3431, file: !3401, line: 46, baseType: !3445, size: 16)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3431, file: !3401, line: 43, size: 16, elements: !3446)
!3446 = !{!3447, !3448}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3445, file: !3401, line: 44, baseType: !376, size: 8)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3445, file: !3401, line: 45, baseType: !376, size: 8, offset: 8)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3390, file: !57, line: 81, baseType: !3450, size: 64, offset: 448)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3451, file: !57, line: 86, baseType: !3413, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3451, file: !57, line: 87, baseType: !136, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3451, file: !57, line: 88, baseType: !136, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3451, file: !57, line: 89, baseType: !136, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3451, file: !57, line: 90, baseType: !631, size: 8, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3451, file: !57, line: 92, baseType: !3450, size: 64, offset: 320)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3390, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2539, file: !1749, line: 1463, baseType: !3461, offset: 21184)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1749, line: 739, elements: !1472)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2539, file: !1749, line: 1470, baseType: !411, size: 128, align: 64, offset: 21184)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2539, file: !1749, line: 1471, baseType: !469, size: 32, offset: 21312)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2539, file: !1749, line: 1472, baseType: !85, size: 32, offset: 21344)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2539, file: !1749, line: 1474, baseType: !2538, size: 64, offset: 21376)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2539, file: !1749, line: 1475, baseType: !230, size: 320, offset: 21440)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2539, file: !1749, line: 1478, baseType: !3468, size: 64, offset: 21760)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3470, line: 14, flags: DIFlagFwdDecl)
!3470 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2539, file: !1749, line: 1482, baseType: !469, size: 32, offset: 21824)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2539, file: !1749, line: 1489, baseType: !137, size: 64, offset: 21888)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2539, file: !1749, line: 1504, baseType: !137, size: 64, offset: 21952)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2539, file: !1749, line: 1505, baseType: !542, size: 64, offset: 22016)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2539, file: !1749, line: 1506, baseType: !541, size: 64, offset: 22080)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2539, file: !1749, line: 1507, baseType: !542, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2539, file: !1749, line: 1508, baseType: !542, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2539, file: !1749, line: 1509, baseType: !542, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2539, file: !1749, line: 1510, baseType: !411, size: 128, align: 64, offset: 22208)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2539, file: !1749, line: 1511, baseType: !85, size: 32, offset: 22336)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2539, file: !1749, line: 1515, baseType: !3482, size: 64, offset: 22400)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !406, line: 56, size: 64, elements: !3483)
!3483 = !{!3484}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3482, file: !406, line: 57, baseType: !409, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2539, file: !1749, line: 1518, baseType: !3482, size: 64, offset: 22464)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2539, file: !1749, line: 1528, baseType: !411, size: 128, align: 64, offset: 22528)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2539, file: !1749, line: 1552, baseType: !3488, size: 35328, offset: 23040)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3489, line: 430, size: 35328, elements: !3490)
!3489 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3490 = !{!3491, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3520, !3521, !3522, !3523, !3524, !3525, !3528, !3529, !3530, !3531}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3488, file: !3489, line: 432, baseType: !3492, size: 192)
!3492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3493, size: 192, elements: !461)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3494, line: 16, size: 64, elements: !3495)
!3494 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3493, file: !3494, line: 17, baseType: !332, size: 16)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3493, file: !3494, line: 18, baseType: !332, size: 16, offset: 16)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3493, file: !3494, line: 19, baseType: !332, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3493, file: !3494, line: 19, baseType: !332, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3493, file: !3494, line: 19, baseType: !332, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3493, file: !3494, line: 19, baseType: !332, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3493, file: !3494, line: 19, baseType: !332, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3493, file: !3494, line: 20, baseType: !332, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3493, file: !3494, line: 20, baseType: !332, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3493, file: !3494, line: 20, baseType: !332, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3493, file: !3494, line: 20, baseType: !332, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3493, file: !3494, line: 20, baseType: !332, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3493, file: !3494, line: 20, baseType: !332, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3488, file: !3489, line: 436, baseType: !136, size: 64, offset: 192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3488, file: !3489, line: 440, baseType: !156, size: 16, offset: 256)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3488, file: !3489, line: 441, baseType: !156, size: 16, offset: 272)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3488, file: !3489, line: 442, baseType: !156, size: 16, offset: 288)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3488, file: !3489, line: 443, baseType: !156, size: 16, offset: 304)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3488, file: !3489, line: 447, baseType: !136, size: 64, offset: 320)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3488, file: !3489, line: 448, baseType: !136, size: 64, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3488, file: !3489, line: 459, baseType: !3517, size: 256, offset: 448)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3518, size: 256, elements: !481)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3489, line: 428, flags: DIFlagFwdDecl)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3488, file: !3489, line: 461, baseType: !136, size: 64, offset: 704)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3488, file: !3489, line: 463, baseType: !136, size: 64, offset: 768)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3488, file: !3489, line: 465, baseType: !136, size: 64, offset: 832)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3488, file: !3489, line: 466, baseType: !136, size: 64, offset: 896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3488, file: !3489, line: 467, baseType: !136, size: 64, offset: 960)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3488, file: !3489, line: 473, baseType: !3526, size: 64, offset: 1024)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3489, line: 10, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3488, file: !3489, line: 480, baseType: !136, size: 64, offset: 1088)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3488, file: !3489, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3488, file: !3489, line: 491, baseType: !247, size: 32, offset: 1184)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3488, file: !3489, line: 501, baseType: !3532, size: 33792, offset: 1536)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3533, line: 448, size: 33792, elements: !3534)
!3533 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3534 = !{!3535, !3536, !3537, !3697, !3698, !3704, !3705}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3532, file: !3533, line: 461, baseType: !7, size: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3532, file: !3533, line: 468, baseType: !136, size: 64, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3532, file: !3533, line: 476, baseType: !3538, size: 64, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3533, line: 356, size: 33280, align: 512, elements: !3540)
!3540 = !{!3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3539, file: !3533, line: 358, baseType: !7, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3539, file: !3533, line: 361, baseType: !7, size: 32, offset: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3539, file: !3533, line: 364, baseType: !541, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3539, file: !3533, line: 367, baseType: !541, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3539, file: !3533, line: 370, baseType: !541, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3539, file: !3533, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3539, file: !3533, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3539, file: !3533, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3539, file: !3533, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3539, file: !3533, line: 397, baseType: !3551, size: 32768, offset: 512)
!3551 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3533, line: 348, size: 32768, elements: !3552)
!3552 = !{!3553, !3568, !3603, !3680, !3693}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3551, file: !3533, line: 349, baseType: !3554, size: 896)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3533, line: 12, size: 896, elements: !3555)
!3555 = !{!3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3567}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3554, file: !3533, line: 13, baseType: !247, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3554, file: !3533, line: 14, baseType: !247, size: 32, offset: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3554, file: !3533, line: 15, baseType: !247, size: 32, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3554, file: !3533, line: 16, baseType: !247, size: 32, offset: 96)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3554, file: !3533, line: 17, baseType: !247, size: 32, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3554, file: !3533, line: 18, baseType: !247, size: 32, offset: 160)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3554, file: !3533, line: 19, baseType: !247, size: 32, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3554, file: !3533, line: 22, baseType: !3564, size: 640, offset: 224)
!3564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 640, elements: !3565)
!3565 = !{!3566}
!3566 = !DISubrange(count: 20)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3554, file: !3533, line: 25, baseType: !247, size: 32, offset: 864)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3551, file: !3533, line: 350, baseType: !3569, size: 4096, align: 128)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3533, line: 34, size: 4096, align: 128, elements: !3570)
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3590, !3591, !3592, !3594, !3596, !3598}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3569, file: !3533, line: 35, baseType: !332, size: 16)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3569, file: !3533, line: 36, baseType: !332, size: 16, offset: 16)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3569, file: !3533, line: 37, baseType: !332, size: 16, offset: 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3569, file: !3533, line: 38, baseType: !332, size: 16, offset: 48)
!3575 = !DIDerivedType(tag: DW_TAG_member, scope: !3569, file: !3533, line: 39, baseType: !3576, size: 128, offset: 64)
!3576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3569, file: !3533, line: 39, size: 128, elements: !3577)
!3577 = !{!3578, !3583}
!3578 = !DIDerivedType(tag: DW_TAG_member, scope: !3576, file: !3533, line: 40, baseType: !3579, size: 128)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !3533, line: 40, size: 128, elements: !3580)
!3580 = !{!3581, !3582}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3579, file: !3533, line: 41, baseType: !541, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3579, file: !3533, line: 42, baseType: !541, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, scope: !3576, file: !3533, line: 44, baseType: !3584, size: 128)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3576, file: !3533, line: 44, size: 128, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3584, file: !3533, line: 45, baseType: !247, size: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3584, file: !3533, line: 46, baseType: !247, size: 32, offset: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3584, file: !3533, line: 47, baseType: !247, size: 32, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3584, file: !3533, line: 48, baseType: !247, size: 32, offset: 96)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3569, file: !3533, line: 51, baseType: !247, size: 32, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3569, file: !3533, line: 52, baseType: !247, size: 32, offset: 224)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3569, file: !3533, line: 55, baseType: !3593, size: 1024, offset: 256)
!3593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 1024, elements: !304)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3569, file: !3533, line: 58, baseType: !3595, size: 2048, offset: 1280)
!3595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 2048, elements: !1096)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3569, file: !3533, line: 60, baseType: !3597, size: 384, offset: 3328)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 384, elements: !274)
!3598 = !DIDerivedType(tag: DW_TAG_member, scope: !3569, file: !3533, line: 62, baseType: !3599, size: 384, offset: 3712)
!3599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3569, file: !3533, line: 62, size: 384, elements: !3600)
!3600 = !{!3601, !3602}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3599, file: !3533, line: 63, baseType: !3597, size: 384)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3599, file: !3533, line: 64, baseType: !3597, size: 384)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3551, file: !3533, line: 351, baseType: !3604, size: 1088)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3533, line: 79, size: 1088, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3679}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3604, file: !3533, line: 80, baseType: !247, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3604, file: !3533, line: 81, baseType: !247, size: 32, offset: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3604, file: !3533, line: 82, baseType: !247, size: 32, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3604, file: !3533, line: 83, baseType: !247, size: 32, offset: 96)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3604, file: !3533, line: 84, baseType: !247, size: 32, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3604, file: !3533, line: 85, baseType: !247, size: 32, offset: 160)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3604, file: !3533, line: 86, baseType: !247, size: 32, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3604, file: !3533, line: 88, baseType: !3564, size: 640, offset: 224)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3604, file: !3533, line: 89, baseType: !376, size: 8, offset: 864)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3604, file: !3533, line: 90, baseType: !376, size: 8, offset: 872)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3604, file: !3533, line: 91, baseType: !376, size: 8, offset: 880)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3604, file: !3533, line: 92, baseType: !376, size: 8, offset: 888)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3604, file: !3533, line: 93, baseType: !376, size: 8, offset: 896)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3604, file: !3533, line: 94, baseType: !376, size: 8, offset: 904)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3604, file: !3533, line: 95, baseType: !3621, size: 64, offset: 960)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3623, line: 11, size: 128, elements: !3624)
!3623 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3624 = !{!3625, !3626}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3622, file: !3623, line: 12, baseType: !909, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3622, file: !3623, line: 13, baseType: !3627, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3629, line: 103, size: 1344, elements: !3630)
!3629 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3630 = !{!3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3659, !3660, !3661}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3628, file: !3629, line: 109, baseType: !136, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3628, file: !3629, line: 110, baseType: !136, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3628, file: !3629, line: 111, baseType: !136, size: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3628, file: !3629, line: 112, baseType: !136, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3628, file: !3629, line: 113, baseType: !136, size: 64, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3628, file: !3629, line: 114, baseType: !136, size: 64, offset: 320)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3628, file: !3629, line: 117, baseType: !136, size: 64, offset: 384)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3628, file: !3629, line: 118, baseType: !136, size: 64, offset: 448)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3628, file: !3629, line: 119, baseType: !136, size: 64, offset: 512)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3628, file: !3629, line: 120, baseType: !136, size: 64, offset: 576)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3628, file: !3629, line: 121, baseType: !136, size: 64, offset: 640)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3628, file: !3629, line: 122, baseType: !136, size: 64, offset: 704)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3628, file: !3629, line: 123, baseType: !136, size: 64, offset: 768)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3628, file: !3629, line: 124, baseType: !136, size: 64, offset: 832)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3628, file: !3629, line: 125, baseType: !136, size: 64, offset: 896)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3628, file: !3629, line: 139, baseType: !136, size: 64, offset: 960)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3628, file: !3629, line: 142, baseType: !136, size: 64, offset: 1024)
!3648 = !DIDerivedType(tag: DW_TAG_member, scope: !3628, file: !3629, line: 144, baseType: !3649, size: 64, offset: 1088)
!3649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3628, file: !3629, line: 144, size: 64, elements: !3650)
!3650 = !{!3651, !3652, !3653}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3649, file: !3629, line: 146, baseType: !332, size: 16)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3649, file: !3629, line: 148, baseType: !541, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3649, file: !3629, line: 150, baseType: !3654, size: 64)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3629, line: 59, size: 64, elements: !3655)
!3655 = !{!3656, !3657, !3658}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3654, file: !3629, line: 61, baseType: !541, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3654, file: !3629, line: 63, baseType: !541, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3654, file: !3629, line: 65, baseType: !541, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3628, file: !3629, line: 153, baseType: !136, size: 64, offset: 1152)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3628, file: !3629, line: 154, baseType: !136, size: 64, offset: 1216)
!3661 = !DIDerivedType(tag: DW_TAG_member, scope: !3628, file: !3629, line: 156, baseType: !3662, size: 64, offset: 1280)
!3662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3628, file: !3629, line: 156, size: 64, elements: !3663)
!3663 = !{!3664, !3665, !3666}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3662, file: !3629, line: 158, baseType: !332, size: 16)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3662, file: !3629, line: 160, baseType: !541, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3662, file: !3629, line: 162, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3629, line: 69, size: 64, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3667, file: !3629, line: 71, baseType: !541, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3667, file: !3629, line: 73, baseType: !541, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3667, file: !3629, line: 75, baseType: !541, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3667, file: !3629, line: 77, baseType: !541, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3667, file: !3629, line: 80, baseType: !541, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3667, file: !3629, line: 83, baseType: !541, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3667, file: !3629, line: 86, baseType: !541, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3667, file: !3629, line: 88, baseType: !541, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3667, file: !3629, line: 93, baseType: !541, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3667, file: !3629, line: 100, baseType: !541, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3604, file: !3533, line: 96, baseType: !247, size: 32, offset: 1024)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3551, file: !3533, line: 352, baseType: !3681, size: 4608, align: 512)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3533, line: 333, size: 4608, align: 512, elements: !3682)
!3682 = !{!3683, !3684, !3691}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3681, file: !3533, line: 334, baseType: !3569, size: 4096, align: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3681, file: !3533, line: 335, baseType: !3685, size: 512, offset: 4096)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3533, line: 312, size: 512, elements: !3686)
!3686 = !{!3687, !3688, !3689}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3685, file: !3533, line: 313, baseType: !541, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3685, file: !3533, line: 314, baseType: !541, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3685, file: !3533, line: 315, baseType: !3690, size: 384, offset: 128)
!3690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 384, elements: !618)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3681, file: !3533, line: 336, baseType: !3692, offset: 4608)
!3692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, elements: !500)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3551, file: !3533, line: 353, baseType: !3694, size: 32768)
!3694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 32768, elements: !3695)
!3695 = !{!3696}
!3696 = !DISubrange(count: 4096)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3532, file: !3533, line: 484, baseType: !3538, size: 64, offset: 192)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3532, file: !3533, line: 491, baseType: !3699, size: 128, offset: 256)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3533, line: 404, size: 128, elements: !3700)
!3700 = !{!3701, !3702, !3703}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3699, file: !3533, line: 424, baseType: !541, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3699, file: !3533, line: 432, baseType: !7, size: 32, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3699, file: !3533, line: 440, baseType: !7, size: 32, offset: 96)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3532, file: !3533, line: 498, baseType: !3699, size: 128, offset: 384)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3532, file: !3533, line: 508, baseType: !3539, size: 33280, align: 512, offset: 512)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2521, file: !2522, line: 16, baseType: !485, size: 192, offset: 512)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2521, file: !2522, line: 17, baseType: !368, size: 32, offset: 704)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1007, file: !35, line: 1240, baseType: !137, size: 64, offset: 6912)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1007, file: !35, line: 1243, baseType: !247, size: 32, offset: 6976)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1007, file: !35, line: 1245, baseType: !589, size: 64, offset: 7040)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1007, file: !35, line: 1246, baseType: !589, size: 64, offset: 7104)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1007, file: !35, line: 1248, baseType: !201, size: 32, offset: 7168)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1007, file: !35, line: 1249, baseType: !3714, size: 64, offset: 7232)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1007, file: !35, line: 1252, baseType: !3717, size: 256, offset: 7296)
!3717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 256, elements: !304)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1007, file: !35, line: 1253, baseType: !3719, size: 128, offset: 7552)
!3719 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3720, line: 21, baseType: !3721)
!3720 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3720, line: 19, size: 128, elements: !3722)
!3722 = !{!3723}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3721, file: !3720, line: 20, baseType: !3724, size: 128)
!3724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 128, elements: !226)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1007, file: !35, line: 1255, baseType: !7, size: 32, offset: 7680)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1007, file: !35, line: 1261, baseType: !341, size: 256, offset: 7744)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1007, file: !35, line: 1267, baseType: !255, size: 64, offset: 8000)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1007, file: !35, line: 1269, baseType: !3729, size: 64, offset: 8064)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3731)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !756, line: 128, size: 1024, align: 512, elements: !3732)
!3732 = !{!3733, !3737, !3738, !3745, !3751, !3755, !3759, !3763, !3764, !3768, !3772, !3777, !3781}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3731, file: !756, line: 129, baseType: !3734, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!85, !754, !7}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3731, file: !756, line: 130, baseType: !3734, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3731, file: !756, line: 131, baseType: !3739, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!85, !3742, !3744}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3731, file: !756, line: 132, baseType: !3746, size: 64, offset: 192)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!85, !3742, !7, !255, !3749}
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3731, file: !756, line: 134, baseType: !3752, size: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!85, !3742}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3731, file: !756, line: 135, baseType: !3756, size: 64, offset: 320)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!85, !754}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3731, file: !756, line: 136, baseType: !3760, size: 64, offset: 384)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{null, !754}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3731, file: !756, line: 137, baseType: !3760, size: 64, offset: 448)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3731, file: !756, line: 138, baseType: !3765, size: 64, offset: 512)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{null, !754, !794}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3731, file: !756, line: 139, baseType: !3769, size: 64, offset: 576)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!642, !754, !642, !85}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3731, file: !756, line: 140, baseType: !3773, size: 64, offset: 640)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!749, !3776}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3731, file: !756, line: 141, baseType: !3778, size: 64, offset: 704)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!85, !917, !631}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3731, file: !756, line: 142, baseType: !3782, size: 64, offset: 768)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!754, !754, !3785}
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1007, file: !35, line: 1271, baseType: !3788, size: 448, offset: 8128)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2303, line: 63, size: 448, elements: !3789)
!3789 = !{!3790, !3795, !3796, !3797, !3798, !3799, !3800}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3788, file: !2303, line: 64, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!136, !3794, !2301}
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3788, file: !2303, line: 66, baseType: !3791, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3788, file: !2303, line: 69, baseType: !909, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3788, file: !2303, line: 70, baseType: !85, size: 32, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3788, file: !2303, line: 71, baseType: !7, size: 32, offset: 224)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3788, file: !2303, line: 74, baseType: !389, size: 128, offset: 256)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3788, file: !2303, line: 85, baseType: !3801, size: 64, offset: 384)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1007, file: !35, line: 1274, baseType: !345, size: 64, offset: 8576)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1007, file: !35, line: 1280, baseType: !345, size: 64, offset: 8640)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1007, file: !35, line: 1283, baseType: !85, size: 32, offset: 8704)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1007, file: !35, line: 1286, baseType: !1424, size: 32, offset: 8736)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1007, file: !35, line: 1289, baseType: !2124, size: 64, offset: 8768)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1007, file: !35, line: 1290, baseType: !478, size: 64, offset: 8832)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1007, file: !35, line: 1297, baseType: !715, size: 64, offset: 8896)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1007, file: !35, line: 1304, baseType: !3810, size: 64, offset: 8960)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3811, line: 49, size: 64, elements: !3812)
!3811 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3812 = !{!3813}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3810, file: !3811, line: 50, baseType: !3814, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3811, line: 41, size: 512, align: 512, elements: !3816)
!3816 = !{!3817, !3818, !3823}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3815, file: !3811, line: 43, baseType: !421, size: 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3815, file: !3811, line: 45, baseType: !3819, size: 192, offset: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3811, line: 29, size: 192, elements: !3820)
!3820 = !{!3821, !3822}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3819, file: !3811, line: 30, baseType: !389, size: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3819, file: !3811, line: 32, baseType: !909, size: 64, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3815, file: !3811, line: 46, baseType: !909, size: 64, offset: 256)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1007, file: !35, line: 1305, baseType: !3810, size: 64, offset: 9024)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1007, file: !35, line: 1306, baseType: !411, size: 128, align: 64, offset: 9088)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1007, file: !35, line: 1307, baseType: !1605, size: 256, offset: 9216)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1007, file: !35, line: 1309, baseType: !341, size: 256, offset: 9472)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1007, file: !35, line: 1314, baseType: !85, size: 32, offset: 9728)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1007, file: !35, line: 1317, baseType: !421, size: 32, align: 512, offset: 10240)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1007, file: !35, line: 1318, baseType: !389, size: 128, offset: 10304)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1007, file: !35, line: 1320, baseType: !421, size: 32, offset: 10432)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1007, file: !35, line: 1321, baseType: !389, size: 128, offset: 10496)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !795, file: !35, line: 656, baseType: !1157, size: 64, offset: 512)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !795, file: !35, line: 659, baseType: !137, size: 64, offset: 576)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !795, file: !35, line: 663, baseType: !136, size: 64, offset: 640)
!3836 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !35, line: 671, baseType: !3837, size: 32, offset: 704)
!3837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !35, line: 671, size: 32, elements: !3838)
!3838 = !{!3839, !3841}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3837, file: !35, line: 672, baseType: !3840, size: 32)
!3840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3837, file: !35, line: 673, baseType: !7, size: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !795, file: !35, line: 675, baseType: !869, size: 32, offset: 736)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !795, file: !35, line: 676, baseType: !434, size: 64, offset: 768)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !795, file: !35, line: 677, baseType: !905, size: 128, offset: 832)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !795, file: !35, line: 678, baseType: !905, size: 128, offset: 960)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !795, file: !35, line: 679, baseType: !905, size: 128, offset: 1088)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !795, file: !35, line: 680, baseType: !421, size: 32, offset: 1216)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !795, file: !35, line: 681, baseType: !156, size: 16, offset: 1248)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !795, file: !35, line: 682, baseType: !376, size: 8, offset: 1264)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !795, file: !35, line: 683, baseType: !376, size: 8, offset: 1272)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !795, file: !35, line: 684, baseType: !2434, size: 64, offset: 1280)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !795, file: !35, line: 691, baseType: !136, size: 64, offset: 1344)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !795, file: !35, line: 692, baseType: !573, size: 320, offset: 1408)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !795, file: !35, line: 694, baseType: !136, size: 64, offset: 1728)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !795, file: !35, line: 695, baseType: !136, size: 64, offset: 1792)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !795, file: !35, line: 697, baseType: !234, size: 128, offset: 1856)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !795, file: !35, line: 698, baseType: !389, size: 128, offset: 1984)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !795, file: !35, line: 707, baseType: !389, size: 128, offset: 2112)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !795, file: !35, line: 708, baseType: !389, size: 128, offset: 2240)
!3860 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !35, line: 709, baseType: !3861, size: 128, offset: 2368)
!3861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !35, line: 709, size: 128, elements: !3862)
!3862 = !{!3863, !3864}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3861, file: !35, line: 710, baseType: !478, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3861, file: !35, line: 711, baseType: !411, size: 128, align: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !795, file: !35, line: 713, baseType: !347, size: 64, offset: 2496)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !795, file: !35, line: 714, baseType: !347, size: 64, offset: 2560)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !795, file: !35, line: 715, baseType: !368, size: 32, offset: 2624)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !795, file: !35, line: 716, baseType: !368, size: 32, offset: 2656)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !795, file: !35, line: 717, baseType: !368, size: 32, offset: 2688)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !795, file: !35, line: 719, baseType: !368, size: 32, offset: 2720)
!3871 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !35, line: 721, baseType: !3872, size: 64, offset: 2752)
!3872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !35, line: 721, size: 64, elements: !3873)
!3873 = !{!3874, !3998}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3872, file: !35, line: 722, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3877)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !3878)
!3878 = !{!3879, !3880, !3884, !3888, !3892, !3893, !3894, !3900, !3913, !3917, !3921, !3922, !3926, !3927, !3931, !3936, !3937, !3941, !3945, !3951, !3952, !3956, !3957, !3961, !3965, !3966, !3971, !3975, !3979, !3983, !3987, !3988, !3994}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3877, file: !35, line: 1915, baseType: !1040, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3877, file: !35, line: 1916, baseType: !3881, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!434, !398, !434, !85}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3877, file: !35, line: 1917, baseType: !3885, size: 64, offset: 128)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!948, !398, !642, !951, !1772}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3877, file: !35, line: 1918, baseType: !3889, size: 64, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!948, !398, !255, !951, !1772}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3877, file: !35, line: 1919, baseType: !1358, size: 64, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3877, file: !35, line: 1920, baseType: !1358, size: 64, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3877, file: !35, line: 1921, baseType: !3895, size: 64, offset: 384)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!85, !1361, !3898, !7}
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3877, file: !35, line: 1923, baseType: !3901, size: 64, offset: 448)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!85, !398, !3904}
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !3906)
!3906 = !{!3907, !3912}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3905, file: !35, line: 1859, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !3909)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!631, !3904, !255, !85, !434, !541, !7}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3905, file: !35, line: 1860, baseType: !434, size: 64, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3877, file: !35, line: 1924, baseType: !3914, size: 64, offset: 512)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!1792, !398, !1794}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3877, file: !35, line: 1925, baseType: !3918, size: 64, offset: 576)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!909, !398, !7, !136}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3877, file: !35, line: 1926, baseType: !3918, size: 64, offset: 640)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3877, file: !35, line: 1927, baseType: !3923, size: 64, offset: 704)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!85, !398, !1438}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3877, file: !35, line: 1928, baseType: !136, size: 64, offset: 768)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3877, file: !35, line: 1929, baseType: !3928, size: 64, offset: 832)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!85, !794, !398}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3877, file: !35, line: 1930, baseType: !3932, size: 64, offset: 896)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!85, !398, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !137)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3877, file: !35, line: 1931, baseType: !3928, size: 64, offset: 960)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3877, file: !35, line: 1932, baseType: !3938, size: 64, offset: 1024)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!85, !398, !434, !434, !85}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3877, file: !35, line: 1933, baseType: !3942, size: 64, offset: 1088)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!85, !85, !398, !85}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3877, file: !35, line: 1934, baseType: !3946, size: 64, offset: 1152)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!85, !398, !85, !3949}
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3877, file: !35, line: 1935, baseType: !1476, size: 64, offset: 1216)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3877, file: !35, line: 1936, baseType: !3953, size: 64, offset: 1280)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!85, !85}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3877, file: !35, line: 1937, baseType: !3946, size: 64, offset: 1344)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3877, file: !35, line: 1938, baseType: !3958, size: 64, offset: 1408)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!948, !3368, !398, !1772, !951, !7}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3877, file: !35, line: 1939, baseType: !3962, size: 64, offset: 1472)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!948, !398, !1772, !3368, !951, !7}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3877, file: !35, line: 1940, baseType: !1414, size: 64, offset: 1536)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3877, file: !35, line: 1941, baseType: !3967, size: 64, offset: 1600)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!85, !398, !85, !3970, !1335}
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3877, file: !35, line: 1942, baseType: !3972, size: 64, offset: 1664)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!909, !398, !85, !434, !434}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3877, file: !35, line: 1944, baseType: !3976, size: 64, offset: 1728)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{null, !1747, !398}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3877, file: !35, line: 1948, baseType: !3980, size: 64, offset: 1792)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!948, !398, !434, !398, !434, !951, !7}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3877, file: !35, line: 1950, baseType: !3984, size: 64, offset: 1856)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!434, !398, !434, !398, !434, !434, !7}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3877, file: !35, line: 1953, baseType: !3938, size: 64, offset: 1920)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3877, file: !35, line: 1954, baseType: !3989, size: 64, offset: 1984)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!85, !3992, !7}
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3877, file: !35, line: 1955, baseType: !3995, size: 64, offset: 2048)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!85, !3992, !3898, !7}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3872, file: !35, line: 723, baseType: !2192, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !795, file: !35, line: 725, baseType: !4000, size: 64, offset: 2816)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !795, file: !35, line: 726, baseType: !1158, size: 1536, align: 64, offset: 2880)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !795, file: !35, line: 727, baseType: !389, size: 128, offset: 4416)
!4004 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !35, line: 728, baseType: !4005, size: 64, offset: 4544)
!4005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !35, line: 728, size: 64, elements: !4006)
!4006 = !{!4007, !4008, !4011, !4012}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4005, file: !35, line: 729, baseType: !3368, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4005, file: !35, line: 730, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !35, line: 730, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4005, file: !35, line: 731, baseType: !642, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4005, file: !35, line: 732, baseType: !7, size: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !795, file: !35, line: 735, baseType: !201, size: 32, offset: 4608)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !795, file: !35, line: 738, baseType: !201, size: 32, offset: 4640)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !795, file: !35, line: 739, baseType: !3714, size: 64, offset: 4672)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !795, file: !35, line: 750, baseType: !137, size: 64, offset: 4736)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !755, file: !756, line: 91, baseType: !4018, size: 256, offset: 448)
!4018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 256, elements: !304)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !755, file: !756, line: 94, baseType: !4020, size: 64, offset: 704)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4021, line: 25, size: 64, elements: !4022)
!4021 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4022 = !{!4023}
!4023 = !DIDerivedType(tag: DW_TAG_member, scope: !4020, file: !4021, line: 26, baseType: !4024, size: 64)
!4024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4020, file: !4021, line: 26, size: 64, elements: !4025)
!4025 = !{!4026, !4027}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4024, file: !4021, line: 28, baseType: !542, size: 64, align: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, scope: !4024, file: !4021, line: 30, baseType: !4028, size: 64)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4024, file: !4021, line: 30, size: 64, elements: !4029)
!4029 = !{!4030, !4031}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4028, file: !4021, line: 31, baseType: !421, size: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4028, file: !4021, line: 32, baseType: !85, size: 32, offset: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !755, file: !756, line: 95, baseType: !3729, size: 64, offset: 768)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !755, file: !756, line: 96, baseType: !1006, size: 64, offset: 832)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !755, file: !756, line: 97, baseType: !136, size: 64, offset: 896)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !755, file: !756, line: 98, baseType: !137, size: 64, offset: 960)
!4036 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !756, line: 100, baseType: !4037, size: 128, offset: 1024)
!4037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !756, line: 100, size: 128, elements: !4038)
!4038 = !{!4039, !4040}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4037, file: !756, line: 101, baseType: !389, size: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4037, file: !756, line: 102, baseType: !4041, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !755, file: !756, line: 104, baseType: !389, size: 128, offset: 1152)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !755, file: !756, line: 105, baseType: !389, size: 128, offset: 1280)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !755, file: !756, line: 113, baseType: !4045, size: 128, offset: 1408)
!4045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !756, line: 109, size: 128, elements: !4046)
!4046 = !{!4047, !4048, !4049}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4045, file: !756, line: 110, baseType: !234, size: 128)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4045, file: !756, line: 111, baseType: !770, size: 128)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4045, file: !756, line: 112, baseType: !411, size: 128, align: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !750, file: !751, line: 72, baseType: !1006, size: 64, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !750, file: !751, line: 73, baseType: !85, size: 32, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !750, file: !751, line: 74, baseType: !834, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !745, file: !746, line: 10, baseType: !754, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !399, file: !35, line: 1015, baseType: !794, size: 64, offset: 1344)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !399, file: !35, line: 1016, baseType: !3875, size: 64, offset: 1408)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !399, file: !35, line: 1018, baseType: !541, size: 64, offset: 1472)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !399, file: !35, line: 1020, baseType: !137, size: 64, offset: 1536)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !399, file: !35, line: 1023, baseType: !137, size: 64, offset: 1600)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !399, file: !35, line: 1027, baseType: !4060, size: 64, offset: 1664)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !399, file: !35, line: 1029, baseType: !1157, size: 64, offset: 1728)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !399, file: !35, line: 1030, baseType: !1424, size: 32, offset: 1792)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !399, file: !35, line: 1031, baseType: !1424, size: 32, offset: 1824)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !251, file: !252, line: 169, baseType: !4065, size: 64, offset: 2048)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !252, line: 24, flags: DIFlagFwdDecl)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !251, file: !252, line: 171, baseType: !7, size: 32, offset: 2112)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !251, file: !252, line: 172, baseType: !230, size: 320, offset: 2176)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !251, file: !252, line: 174, baseType: !4070, size: 64, offset: 2496)
!4070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !214)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !251, file: !252, line: 176, baseType: !4072, size: 64, offset: 2560)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !252, line: 176, flags: DIFlagFwdDecl)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !251, file: !252, line: 178, baseType: !4075, size: 64, offset: 2624)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !151, line: 93, size: 192, elements: !4077)
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4076, file: !151, line: 94, baseType: !559, size: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4076, file: !151, line: 95, baseType: !559, size: 32, offset: 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4076, file: !151, line: 96, baseType: !559, size: 32, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4076, file: !151, line: 97, baseType: !559, size: 32, offset: 96)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4076, file: !151, line: 98, baseType: !559, size: 32, offset: 128)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4076, file: !151, line: 99, baseType: !559, size: 32, offset: 160)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !251, file: !252, line: 180, baseType: !273, size: 768, offset: 2688)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !251, file: !252, line: 181, baseType: !268, size: 64, offset: 3456)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !251, file: !252, line: 182, baseType: !268, size: 64, offset: 3520)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !251, file: !252, line: 183, baseType: !268, size: 64, offset: 3584)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !251, file: !252, line: 185, baseType: !4089, size: 64, offset: 3648)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!85, !250}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !251, file: !252, line: 186, baseType: !4093, size: 64, offset: 3712)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{null, !250}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !251, file: !252, line: 187, baseType: !4097, size: 64, offset: 3776)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!85, !250, !398}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !251, file: !252, line: 188, baseType: !4101, size: 64, offset: 3840)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!85, !250, !7, !7, !85}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !251, file: !252, line: 190, baseType: !4105, size: 64, offset: 3904)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !252, line: 345, size: 576, elements: !4107)
!4107 = !{!4108, !4109, !4110, !4111, !4112, !4180, !4181}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4106, file: !252, line: 347, baseType: !137, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4106, file: !252, line: 349, baseType: !85, size: 32, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4106, file: !252, line: 350, baseType: !255, size: 64, offset: 128)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4106, file: !252, line: 352, baseType: !250, size: 64, offset: 192)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4106, file: !252, line: 353, baseType: !4113, size: 64, offset: 256)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !252, line: 310, size: 960, elements: !4115)
!4115 = !{!4116, !4117, !4121, !4132, !4136, !4140, !4169, !4173, !4174, !4175, !4176, !4177, !4178, !4179}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4114, file: !252, line: 312, baseType: !137, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4114, file: !252, line: 314, baseType: !4118, size: 64, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !4105, !7, !7, !85}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4114, file: !252, line: 315, baseType: !4122, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{null, !4105, !4125, !7}
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4127)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !252, line: 32, size: 64, elements: !4128)
!4128 = !{!4129, !4130, !4131}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4127, file: !252, line: 33, baseType: !154, size: 16)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4127, file: !252, line: 34, baseType: !154, size: 16, offset: 16)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4127, file: !252, line: 35, baseType: !559, size: 32, offset: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4114, file: !252, line: 317, baseType: !4133, size: 64, offset: 192)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!631, !4105, !7, !7, !85}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4114, file: !252, line: 318, baseType: !4137, size: 64, offset: 256)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!631, !4113, !250}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4114, file: !252, line: 319, baseType: !4141, size: 64, offset: 320)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!85, !4113, !250, !4144}
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4146)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4147, line: 362, size: 1600, elements: !4148)
!4147 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4148 = !{!4149, !4151, !4152, !4153, !4154, !4155, !4157, !4159, !4160, !4161, !4162, !4163, !4164, !4166, !4167, !4168}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4146, file: !4147, line: 364, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4147, line: 15, baseType: !136)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4146, file: !4147, line: 366, baseType: !154, size: 16, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4146, file: !4147, line: 367, baseType: !154, size: 16, offset: 80)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4146, file: !4147, line: 368, baseType: !154, size: 16, offset: 96)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4146, file: !4147, line: 369, baseType: !154, size: 16, offset: 112)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4146, file: !4147, line: 371, baseType: !4156, size: 64, offset: 128)
!4156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4150, size: 64, elements: !269)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4146, file: !4147, line: 372, baseType: !4158, size: 768, offset: 192)
!4158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4150, size: 768, elements: !274)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4146, file: !4147, line: 373, baseType: !4156, size: 64, offset: 960)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4146, file: !4147, line: 374, baseType: !4156, size: 64, offset: 1024)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4146, file: !4147, line: 375, baseType: !4156, size: 64, offset: 1088)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4146, file: !4147, line: 376, baseType: !4156, size: 64, offset: 1152)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4146, file: !4147, line: 377, baseType: !4156, size: 64, offset: 1216)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4146, file: !4147, line: 378, baseType: !4165, size: 128, offset: 1280)
!4165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4150, size: 128, elements: !214)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4146, file: !4147, line: 379, baseType: !4156, size: 64, offset: 1408)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4146, file: !4147, line: 380, baseType: !4156, size: 64, offset: 1472)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4146, file: !4147, line: 382, baseType: !4150, size: 64, offset: 1536)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4114, file: !252, line: 320, baseType: !4170, size: 64, offset: 384)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !4105}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4114, file: !252, line: 321, baseType: !4170, size: 64, offset: 448)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4114, file: !252, line: 323, baseType: !631, size: 8, offset: 512)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4114, file: !252, line: 324, baseType: !85, size: 32, offset: 544)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4114, file: !252, line: 325, baseType: !255, size: 64, offset: 576)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4114, file: !252, line: 327, baseType: !4144, size: 64, offset: 640)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4114, file: !252, line: 329, baseType: !389, size: 128, offset: 704)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4114, file: !252, line: 330, baseType: !389, size: 128, offset: 832)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4106, file: !252, line: 355, baseType: !389, size: 128, offset: 320)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4106, file: !252, line: 356, baseType: !389, size: 128, offset: 448)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !251, file: !252, line: 192, baseType: !421, size: 32, offset: 3968)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !251, file: !252, line: 193, baseType: !341, size: 256, offset: 4032)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !251, file: !252, line: 195, baseType: !7, size: 32, offset: 4288)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !251, file: !252, line: 196, baseType: !631, size: 8, offset: 4320)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !251, file: !252, line: 198, baseType: !4187, size: 5824, offset: 4352)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4188)
!4188 = !{!4189, !4190, !4192, !4195, !4196, !4249, !4332, !4333, !4334, !4335, !4336, !4343, !4435, !4448, !4458, !4462, !4464, !4465, !4466, !4470, !4477, !4478, !4481, !4484, !4488, !4491, !4492, !4493, !4494, !4495, !4496, !4526, !4527, !4528, !4531, !4534, !4543, !4544, !4545, !4546, !4547, !4548}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4187, file: !70, line: 706, baseType: !1053, size: 512)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4187, file: !70, line: 707, baseType: !4191, size: 64, offset: 512)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4187, file: !70, line: 709, baseType: !4193, size: 64, offset: 576)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4187, file: !70, line: 711, baseType: !255, size: 64, offset: 640)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4187, file: !70, line: 712, baseType: !4197, size: 64, offset: 704)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4199)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4200)
!4200 = !{!4201, !4202, !4203, !4209, !4214, !4218}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4199, file: !70, line: 90, baseType: !255, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4199, file: !70, line: 91, baseType: !1133, size: 64, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4199, file: !70, line: 92, baseType: !4204, size: 64, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!85, !4207, !1089}
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4187)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4199, file: !70, line: 93, baseType: !4210, size: 64, offset: 192)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!642, !4207, !4213, !1700, !1701}
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4199, file: !70, line: 95, baseType: !4215, size: 64, offset: 256)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{null, !4191}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4199, file: !70, line: 97, baseType: !4219, size: 64, offset: 320)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4221)
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4222)
!4222 = !{!4223, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4221, file: !77, line: 287, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!85, !4191}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4221, file: !77, line: 288, baseType: !4215, size: 64, offset: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4221, file: !77, line: 289, baseType: !4224, size: 64, offset: 128)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4221, file: !77, line: 290, baseType: !4224, size: 64, offset: 192)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4221, file: !77, line: 291, baseType: !4224, size: 64, offset: 256)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4221, file: !77, line: 292, baseType: !4224, size: 64, offset: 320)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4221, file: !77, line: 293, baseType: !4224, size: 64, offset: 384)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4221, file: !77, line: 294, baseType: !4224, size: 64, offset: 448)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4221, file: !77, line: 295, baseType: !4224, size: 64, offset: 512)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4221, file: !77, line: 296, baseType: !4224, size: 64, offset: 576)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4221, file: !77, line: 297, baseType: !4224, size: 64, offset: 640)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4221, file: !77, line: 298, baseType: !4224, size: 64, offset: 704)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4221, file: !77, line: 299, baseType: !4224, size: 64, offset: 768)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4221, file: !77, line: 300, baseType: !4224, size: 64, offset: 832)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4221, file: !77, line: 301, baseType: !4224, size: 64, offset: 896)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4221, file: !77, line: 302, baseType: !4224, size: 64, offset: 960)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4221, file: !77, line: 303, baseType: !4224, size: 64, offset: 1024)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4221, file: !77, line: 304, baseType: !4224, size: 64, offset: 1088)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4221, file: !77, line: 305, baseType: !4224, size: 64, offset: 1152)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4221, file: !77, line: 306, baseType: !4224, size: 64, offset: 1216)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4221, file: !77, line: 307, baseType: !4224, size: 64, offset: 1280)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4221, file: !77, line: 308, baseType: !4224, size: 64, offset: 1344)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4221, file: !77, line: 309, baseType: !4224, size: 64, offset: 1408)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4187, file: !70, line: 714, baseType: !4250, size: 64, offset: 768)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4252)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4253, line: 80, size: 1344, elements: !4254)
!4253 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4254 = !{!4255, !4256, !4257, !4258, !4259, !4260, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4331}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4252, file: !4253, line: 81, baseType: !255, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4252, file: !4253, line: 82, baseType: !255, size: 64, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4252, file: !4253, line: 83, baseType: !1133, size: 64, offset: 128)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4252, file: !4253, line: 84, baseType: !1133, size: 64, offset: 192)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4252, file: !4253, line: 85, baseType: !1133, size: 64, offset: 256)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4252, file: !4253, line: 87, baseType: !4261, size: 64, offset: 320)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!85, !4191, !4264}
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4266)
!4266 = !{!4267, !4268, !4269, !4270, !4271, !4272, !4273, !4285, !4294, !4295, !4296, !4297, !4298, !4306, !4307, !4308, !4309, !4310, !4311}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4265, file: !64, line: 97, baseType: !255, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4265, file: !64, line: 98, baseType: !4250, size: 64, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4265, file: !64, line: 100, baseType: !1040, size: 64, offset: 128)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4265, file: !64, line: 101, baseType: !255, size: 64, offset: 192)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4265, file: !64, line: 103, baseType: !631, size: 8, offset: 256)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4265, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4265, file: !64, line: 106, baseType: !4274, size: 64, offset: 320)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4276)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4147, line: 282, size: 1600, elements: !4277)
!4277 = !{!4278, !4279, !4280, !4284}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4276, file: !4147, line: 283, baseType: !3717, size: 256)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4276, file: !4147, line: 284, baseType: !3717, size: 256, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4276, file: !4147, line: 285, baseType: !4281, size: 1024, offset: 512)
!4281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 1024, elements: !4282)
!4282 = !{!4283}
!4283 = !DISubrange(count: 128)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4276, file: !4147, line: 286, baseType: !1567, size: 64, offset: 1536)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4265, file: !64, line: 107, baseType: !4286, size: 64, offset: 384)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4288)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4147, line: 217, size: 256, elements: !4289)
!4289 = !{!4290, !4291, !4292, !4293}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4288, file: !4147, line: 218, baseType: !3724, size: 128)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4288, file: !4147, line: 219, baseType: !4150, size: 64, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4288, file: !4147, line: 220, baseType: !201, size: 32, offset: 192)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4288, file: !4147, line: 221, baseType: !201, size: 32, offset: 224)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4265, file: !64, line: 109, baseType: !4224, size: 64, offset: 448)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4265, file: !64, line: 110, baseType: !4215, size: 64, offset: 512)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4265, file: !64, line: 111, baseType: !4224, size: 64, offset: 576)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4265, file: !64, line: 112, baseType: !4215, size: 64, offset: 640)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4265, file: !64, line: 113, baseType: !4299, size: 64, offset: 704)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!85, !4191, !4302}
!4302 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4303)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4304)
!4304 = !{!4305}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4303, file: !77, line: 59, baseType: !85, size: 32)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4265, file: !64, line: 114, baseType: !4224, size: 64, offset: 768)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4265, file: !64, line: 115, baseType: !1133, size: 64, offset: 832)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4265, file: !64, line: 116, baseType: !1133, size: 64, offset: 896)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4265, file: !64, line: 118, baseType: !4219, size: 64, offset: 960)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4265, file: !64, line: 119, baseType: !4215, size: 64, offset: 1024)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4265, file: !64, line: 121, baseType: !4312, size: 64, offset: 1088)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4252, file: !4253, line: 88, baseType: !4204, size: 64, offset: 384)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4252, file: !4253, line: 89, baseType: !4224, size: 64, offset: 448)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4252, file: !4253, line: 90, baseType: !4215, size: 64, offset: 512)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4252, file: !4253, line: 91, baseType: !4215, size: 64, offset: 576)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4252, file: !4253, line: 92, baseType: !4215, size: 64, offset: 640)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4252, file: !4253, line: 94, baseType: !4224, size: 64, offset: 704)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4252, file: !4253, line: 95, baseType: !4224, size: 64, offset: 768)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4252, file: !4253, line: 97, baseType: !4299, size: 64, offset: 832)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4252, file: !4253, line: 98, baseType: !4224, size: 64, offset: 896)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4252, file: !4253, line: 100, baseType: !4224, size: 64, offset: 960)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4252, file: !4253, line: 102, baseType: !4224, size: 64, offset: 1024)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4252, file: !4253, line: 103, baseType: !4215, size: 64, offset: 1088)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4252, file: !4253, line: 105, baseType: !4219, size: 64, offset: 1152)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4252, file: !4253, line: 107, baseType: !4328, size: 64, offset: 1216)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4330)
!4330 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4253, line: 107, flags: DIFlagFwdDecl)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4252, file: !4253, line: 109, baseType: !631, size: 8, offset: 1280)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4187, file: !70, line: 715, baseType: !4264, size: 64, offset: 832)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4187, file: !70, line: 717, baseType: !137, size: 64, offset: 896)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4187, file: !70, line: 719, baseType: !137, size: 64, offset: 960)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4187, file: !70, line: 721, baseType: !341, size: 256, offset: 1024)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4187, file: !70, line: 725, baseType: !4337, size: 448, offset: 1280)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4338)
!4338 = !{!4339, !4340, !4341, !4342}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4337, file: !70, line: 518, baseType: !389, size: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4337, file: !70, line: 519, baseType: !389, size: 128, offset: 128)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4337, file: !70, line: 520, baseType: !389, size: 128, offset: 256)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4337, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4187, file: !70, line: 726, baseType: !4344, size: 2496, offset: 1728)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4345)
!4345 = !{!4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4428, !4432}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4344, file: !77, line: 664, baseType: !4302, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4344, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4344, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4344, file: !77, line: 667, baseType: !631, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4344, file: !77, line: 668, baseType: !631, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4344, file: !77, line: 669, baseType: !631, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4344, file: !77, line: 670, baseType: !631, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4344, file: !77, line: 671, baseType: !631, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4344, file: !77, line: 672, baseType: !631, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4344, file: !77, line: 673, baseType: !631, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4344, file: !77, line: 674, baseType: !631, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4344, file: !77, line: 675, baseType: !247, size: 32, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4344, file: !77, line: 676, baseType: !421, size: 32, offset: 96)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4344, file: !77, line: 678, baseType: !389, size: 128, offset: 128)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4344, file: !77, line: 679, baseType: !1830, size: 256, offset: 256)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4344, file: !77, line: 680, baseType: !4362, size: 64, offset: 512)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4364, line: 43, size: 1536, elements: !4365)
!4364 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4365 = !{!4366, !4367, !4368, !4369, !4370, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4363, file: !4364, line: 44, baseType: !255, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4363, file: !4364, line: 45, baseType: !85, size: 32, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4363, file: !4364, line: 46, baseType: !389, size: 128, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4363, file: !4364, line: 47, baseType: !421, size: 32, offset: 256)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4363, file: !4364, line: 48, baseType: !4371, size: 64, offset: 320)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4363, file: !4364, line: 49, baseType: !230, size: 320, offset: 384)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4363, file: !4364, line: 50, baseType: !136, size: 64, offset: 704)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4363, file: !4364, line: 51, baseType: !2657, size: 64, offset: 768)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4363, file: !4364, line: 52, baseType: !2657, size: 64, offset: 832)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4363, file: !4364, line: 53, baseType: !2657, size: 64, offset: 896)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4363, file: !4364, line: 54, baseType: !2657, size: 64, offset: 960)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4363, file: !4364, line: 55, baseType: !2657, size: 64, offset: 1024)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4363, file: !4364, line: 56, baseType: !136, size: 64, offset: 1088)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4363, file: !4364, line: 57, baseType: !136, size: 64, offset: 1152)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4363, file: !4364, line: 58, baseType: !136, size: 64, offset: 1216)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4363, file: !4364, line: 59, baseType: !136, size: 64, offset: 1280)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4363, file: !4364, line: 60, baseType: !136, size: 64, offset: 1344)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4363, file: !4364, line: 61, baseType: !4191, size: 64, offset: 1408)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4363, file: !4364, line: 62, baseType: !631, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4363, file: !4364, line: 63, baseType: !631, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4344, file: !77, line: 681, baseType: !631, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4344, file: !77, line: 682, baseType: !631, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4344, file: !77, line: 683, baseType: !631, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4344, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4344, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4344, file: !77, line: 690, baseType: !2649, size: 512, offset: 640)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4344, file: !77, line: 691, baseType: !541, size: 64, offset: 1152)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4344, file: !77, line: 692, baseType: !1605, size: 256, offset: 1216)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4344, file: !77, line: 693, baseType: !485, size: 192, offset: 1472)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4344, file: !77, line: 694, baseType: !4371, size: 64, offset: 1664)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4344, file: !77, line: 695, baseType: !368, size: 32, offset: 1728)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4344, file: !77, line: 696, baseType: !368, size: 32, offset: 1760)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4344, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4344, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4344, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4344, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4344, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4344, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4344, file: !77, line: 703, baseType: !631, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4344, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4344, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4344, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4344, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4344, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4344, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4344, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4344, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4344, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4344, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4344, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4344, file: !77, line: 715, baseType: !541, size: 64, offset: 2048)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4344, file: !77, line: 716, baseType: !541, size: 64, offset: 2112)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4344, file: !77, line: 717, baseType: !541, size: 64, offset: 2176)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4344, file: !77, line: 718, baseType: !541, size: 64, offset: 2240)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4344, file: !77, line: 720, baseType: !4423, size: 64, offset: 2304)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4425)
!4425 = !{!4426, !4427}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4424, file: !77, line: 633, baseType: !421, size: 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4424, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4344, file: !77, line: 721, baseType: !4429, size: 64, offset: 2368)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{null, !4191, !558}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4344, file: !77, line: 722, baseType: !4433, size: 64, offset: 2432)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4187, file: !70, line: 727, baseType: !4436, size: 64, offset: 4224)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4438)
!4438 = !{!4439, !4440, !4441, !4445, !4446, !4447}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4437, file: !77, line: 743, baseType: !4221, size: 1472)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4437, file: !77, line: 744, baseType: !4224, size: 64, offset: 1472)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4437, file: !77, line: 745, baseType: !4442, size: 64, offset: 1536)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{null, !4191, !631}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4437, file: !77, line: 746, baseType: !4224, size: 64, offset: 1600)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4437, file: !77, line: 747, baseType: !4215, size: 64, offset: 1664)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4437, file: !77, line: 748, baseType: !4215, size: 64, offset: 1728)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4187, file: !70, line: 736, baseType: !4449, size: 128, offset: 4288)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4450)
!4450 = !{!4451, !4455}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4449, file: !70, line: 531, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4454, line: 13, flags: DIFlagFwdDecl)
!4454 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4449, file: !70, line: 532, baseType: !4456, size: 64, offset: 64)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4187, file: !70, line: 738, baseType: !4459, size: 64, offset: 4416)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4461)
!4461 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4187, file: !70, line: 740, baseType: !4463, size: 64, offset: 4480)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4187, file: !70, line: 741, baseType: !541, size: 64, offset: 4544)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4187, file: !70, line: 746, baseType: !541, size: 64, offset: 4608)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4187, file: !70, line: 747, baseType: !4467, size: 64, offset: 4672)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4469)
!4469 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4187, file: !70, line: 749, baseType: !4471, size: 64, offset: 4736)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4473)
!4473 = !{!4474, !4475, !4476}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4472, file: !70, line: 433, baseType: !7, size: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4472, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4472, file: !70, line: 435, baseType: !136, size: 64, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4187, file: !70, line: 751, baseType: !389, size: 128, offset: 4800)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4187, file: !70, line: 762, baseType: !4479, size: 64, offset: 4928)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4187, file: !70, line: 770, baseType: !4482, offset: 4992)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4483, line: 5, elements: !1472)
!4483 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4187, file: !70, line: 772, baseType: !4485, size: 64, offset: 4992)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4487, line: 18, flags: DIFlagFwdDecl)
!4487 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4187, file: !70, line: 773, baseType: !4489, size: 64, offset: 5056)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4253, line: 22, flags: DIFlagFwdDecl)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4187, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4187, file: !70, line: 778, baseType: !869, size: 32, offset: 5152)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4187, file: !70, line: 779, baseType: !247, size: 32, offset: 5184)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4187, file: !70, line: 781, baseType: !421, size: 32, offset: 5216)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4187, file: !70, line: 782, baseType: !389, size: 128, offset: 5248)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4187, file: !70, line: 784, baseType: !4497, size: 64, offset: 5376)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4499)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4500, line: 52, size: 768, elements: !4501)
!4500 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4501 = !{!4502, !4503, !4504, !4505, !4506, !4510, !4514, !4515, !4516, !4517, !4521, !4525}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4499, file: !4500, line: 53, baseType: !255, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4499, file: !4500, line: 55, baseType: !1133, size: 64, offset: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4499, file: !4500, line: 56, baseType: !1133, size: 64, offset: 128)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4499, file: !4500, line: 58, baseType: !4204, size: 64, offset: 192)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4499, file: !4500, line: 59, baseType: !4507, size: 64, offset: 256)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!642, !4207, !4213}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4499, file: !4500, line: 61, baseType: !4511, size: 64, offset: 320)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{null, !4497}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4499, file: !4500, line: 62, baseType: !4215, size: 64, offset: 384)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4499, file: !4500, line: 64, baseType: !4224, size: 64, offset: 448)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4499, file: !4500, line: 66, baseType: !1668, size: 64, offset: 512)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4499, file: !4500, line: 67, baseType: !4518, size: 64, offset: 576)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!1567, !4207}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4499, file: !4500, line: 69, baseType: !4522, size: 64, offset: 640)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{null, !4207, !1700, !1701}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4499, file: !4500, line: 71, baseType: !4219, size: 64, offset: 704)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4187, file: !70, line: 785, baseType: !1133, size: 64, offset: 5440)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4187, file: !70, line: 787, baseType: !4215, size: 64, offset: 5504)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4187, file: !70, line: 788, baseType: !4529, size: 64, offset: 5568)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4187, file: !70, line: 789, baseType: !4532, size: 64, offset: 5632)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4187, file: !70, line: 791, baseType: !4535, size: 64, offset: 5696)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4537)
!4537 = !{!4538, !4539, !4540, !4541, !4542}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4536, file: !70, line: 598, baseType: !92, size: 32)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4536, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4536, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4536, file: !70, line: 601, baseType: !631, size: 8, offset: 96)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4536, file: !70, line: 602, baseType: !631, size: 8, offset: 104)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4187, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4187, file: !70, line: 795, baseType: !631, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4187, file: !70, line: 796, baseType: !631, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4187, file: !70, line: 797, baseType: !631, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4187, file: !70, line: 798, baseType: !631, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4187, file: !70, line: 799, baseType: !631, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !251, file: !252, line: 200, baseType: !389, size: 128, offset: 10176)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !251, file: !252, line: 201, baseType: !389, size: 128, offset: 10304)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !251, file: !252, line: 203, baseType: !7, size: 32, offset: 10432)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !251, file: !252, line: 204, baseType: !7, size: 32, offset: 10464)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !251, file: !252, line: 205, baseType: !4554, size: 64, offset: 10496)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !251, file: !252, line: 207, baseType: !631, size: 8, offset: 10560)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !251, file: !252, line: 209, baseType: !4557, size: 192, offset: 10624)
!4557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2657, size: 192, elements: !461)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !251, file: !252, line: 211, baseType: !631, size: 8, offset: 10816)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "play_effect", scope: !141, file: !3, line: 51, baseType: !4560, size: 64, offset: 6656)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!85, !250, !137, !149}
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !909)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !257)
!4567 = !{!0, !4568, !4573, !4578, !4583, !4585, !4590, !4595, !4598, !4604}
!4568 = !DIGlobalVariableExpression(var: !4569, expr: !DIExpression())
!4569 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license268", scope: !2, file: !3, line: 21, type: !4570, isLocal: true, isDefinition: true, align: 8)
!4570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 184, elements: !4571)
!4571 = !{!4572}
!4572 = !DISubrange(count: 23)
!4573 = !DIGlobalVariableExpression(var: !4574, expr: !DIExpression())
!4574 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author269", scope: !2, file: !3, line: 22, type: !4575, isLocal: true, isDefinition: true, align: 8)
!4575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 464, elements: !4576)
!4576 = !{!4577}
!4577 = !DISubrange(count: 58)
!4578 = !DIGlobalVariableExpression(var: !4579, expr: !DIExpression())
!4579 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description270", scope: !2, file: !3, line: 23, type: !4580, isLocal: true, isDefinition: true, align: 8)
!4580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 552, elements: !4581)
!4581 = !{!4582}
!4582 = !DISubrange(count: 69)
!4583 = !DIGlobalVariableExpression(var: !4584, expr: !DIExpression())
!4584 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_ff_create_memless289", scope: !2, file: !3, line: 553, type: !137, isLocal: true, isDefinition: true)
!4585 = !DIGlobalVariableExpression(var: !4586, expr: !DIExpression())
!4586 = distinct !DIGlobalVariable(scope: null, file: !123, line: 480, type: !4587, isLocal: true, isDefinition: true)
!4587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 168, elements: !4588)
!4588 = !{!4589}
!4589 = !DISubrange(count: 21)
!4590 = !DIGlobalVariableExpression(var: !4591, expr: !DIExpression())
!4591 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !4592, isLocal: true, isDefinition: true)
!4592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 424, elements: !4593)
!4593 = !{!4594}
!4594 = !DISubrange(count: 53)
!4595 = !DIGlobalVariableExpression(var: !4596, expr: !DIExpression())
!4596 = distinct !DIGlobalVariable(scope: null, file: !3, line: 312, type: !4597, isLocal: true, isDefinition: true)
!4597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 416, elements: !1532)
!4598 = !DIGlobalVariableExpression(var: !4599, expr: !DIExpression())
!4599 = distinct !DIGlobalVariable(name: "sin_table", scope: !2, file: !4600, line: 23, type: !4601, isLocal: true, isDefinition: true)
!4600 = !DIFile(filename: "./include/linux/fixp-arith.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83efe35f739b4f82efc750f9f0edf99d")
!4601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1875, size: 2912, elements: !4602)
!4602 = !{!4603}
!4603 = !DISubrange(count: 91)
!4604 = !DIGlobalVariableExpression(var: !4605, expr: !DIExpression())
!4605 = distinct !DIGlobalVariable(name: "empty_envelope", scope: !4606, file: !3, line: 57, type: !4610, isLocal: true, isDefinition: true)
!4606 = distinct !DISubprogram(name: "get_envelope", scope: !3, file: !3, line: 55, type: !4607, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4613)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!4609, !4611}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!4613 = !{!4614}
!4614 = !DILocalVariable(name: "effect", arg: 1, scope: !4606, file: !3, line: 55, type: !4611)
!4615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 328, elements: !4616)
!4616 = !{!4617}
!4617 = !DISubrange(count: 41)
!4618 = !{i32 7, !"Dwarf Version", i32 5}
!4619 = !{i32 2, !"Debug Info Version", i32 3}
!4620 = !{i32 1, !"wchar_size", i32 2}
!4621 = !{i32 8, !"cf-protection-branch", i32 1}
!4622 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4623 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4624 = !{i32 1, !"Code Model", i32 2}
!4625 = !{i32 1, !"override-stack-alignment", i32 8}
!4626 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4627 = distinct !DISubprogram(name: "input_ff_create_memless", scope: !3, file: !3, line: 507, type: !4628, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4630)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!85, !250, !137, !4560}
!4630 = !{!4631, !4632, !4633, !4634, !4635, !4636, !4637}
!4631 = !DILocalVariable(name: "dev", arg: 1, scope: !4627, file: !3, line: 507, type: !250)
!4632 = !DILocalVariable(name: "data", arg: 2, scope: !4627, file: !3, line: 507, type: !137)
!4633 = !DILocalVariable(name: "play_effect", arg: 3, scope: !4627, file: !3, line: 508, type: !4560)
!4634 = !DILocalVariable(name: "ml", scope: !4627, file: !3, line: 510, type: !140)
!4635 = !DILocalVariable(name: "ff", scope: !4627, file: !3, line: 511, type: !313)
!4636 = !DILocalVariable(name: "error", scope: !4627, file: !3, line: 512, type: !85)
!4637 = !DILocalVariable(name: "i", scope: !4627, file: !3, line: 513, type: !85)
!4638 = !DILocation(line: 507, column: 47, scope: !4627)
!4639 = !DILocation(line: 507, column: 58, scope: !4627)
!4640 = !DILocation(line: 508, column: 9, scope: !4627)
!4641 = !DILocation(line: 510, column: 2, scope: !4627)
!4642 = !DILocation(line: 510, column: 20, scope: !4627)
!4643 = !DILocation(line: 511, column: 2, scope: !4627)
!4644 = !DILocation(line: 511, column: 20, scope: !4627)
!4645 = !DILocation(line: 512, column: 2, scope: !4627)
!4646 = !DILocation(line: 512, column: 6, scope: !4627)
!4647 = !DILocation(line: 513, column: 2, scope: !4627)
!4648 = !DILocation(line: 513, column: 6, scope: !4627)
!4649 = !DILocation(line: 515, column: 7, scope: !4627)
!4650 = !DILocation(line: 515, column: 5, scope: !4627)
!4651 = !DILocation(line: 516, column: 7, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 516, column: 6)
!4653 = !DILocation(line: 516, column: 6, scope: !4627)
!4654 = !DILocation(line: 517, column: 3, scope: !4652)
!4655 = !DILocation(line: 519, column: 12, scope: !4627)
!4656 = !DILocation(line: 519, column: 2, scope: !4627)
!4657 = !DILocation(line: 519, column: 6, scope: !4627)
!4658 = !DILocation(line: 519, column: 10, scope: !4627)
!4659 = !DILocation(line: 520, column: 16, scope: !4627)
!4660 = !DILocation(line: 520, column: 2, scope: !4627)
!4661 = !DILocation(line: 520, column: 6, scope: !4627)
!4662 = !DILocation(line: 520, column: 14, scope: !4627)
!4663 = !DILocation(line: 521, column: 20, scope: !4627)
!4664 = !DILocation(line: 521, column: 2, scope: !4627)
!4665 = !DILocation(line: 521, column: 6, scope: !4627)
!4666 = !DILocation(line: 521, column: 18, scope: !4627)
!4667 = !DILocation(line: 522, column: 2, scope: !4627)
!4668 = !DILocation(line: 522, column: 6, scope: !4627)
!4669 = !DILocation(line: 522, column: 11, scope: !4627)
!4670 = !DILocation(line: 523, column: 2, scope: !4627)
!4671 = !DILocation(line: 525, column: 19, scope: !4627)
!4672 = !DILocation(line: 525, column: 24, scope: !4627)
!4673 = !DILocation(line: 525, column: 2, scope: !4627)
!4674 = !DILocation(line: 527, column: 26, scope: !4627)
!4675 = !DILocation(line: 527, column: 10, scope: !4627)
!4676 = !DILocation(line: 527, column: 8, scope: !4627)
!4677 = !DILocation(line: 528, column: 6, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 528, column: 6)
!4679 = !DILocation(line: 528, column: 6, scope: !4627)
!4680 = !DILocation(line: 529, column: 9, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 528, column: 13)
!4682 = !DILocation(line: 529, column: 3, scope: !4681)
!4683 = !DILocation(line: 530, column: 10, scope: !4681)
!4684 = !DILocation(line: 530, column: 3, scope: !4681)
!4685 = !DILocation(line: 533, column: 7, scope: !4627)
!4686 = !DILocation(line: 533, column: 12, scope: !4627)
!4687 = !DILocation(line: 533, column: 5, scope: !4627)
!4688 = !DILocation(line: 534, column: 16, scope: !4627)
!4689 = !DILocation(line: 534, column: 2, scope: !4627)
!4690 = !DILocation(line: 534, column: 6, scope: !4627)
!4691 = !DILocation(line: 534, column: 14, scope: !4627)
!4692 = !DILocation(line: 535, column: 2, scope: !4627)
!4693 = !DILocation(line: 535, column: 6, scope: !4627)
!4694 = !DILocation(line: 535, column: 13, scope: !4627)
!4695 = !DILocation(line: 536, column: 2, scope: !4627)
!4696 = !DILocation(line: 536, column: 6, scope: !4627)
!4697 = !DILocation(line: 536, column: 15, scope: !4627)
!4698 = !DILocation(line: 537, column: 2, scope: !4627)
!4699 = !DILocation(line: 537, column: 6, scope: !4627)
!4700 = !DILocation(line: 537, column: 15, scope: !4627)
!4701 = !DILocation(line: 538, column: 2, scope: !4627)
!4702 = !DILocation(line: 538, column: 6, scope: !4627)
!4703 = !DILocation(line: 538, column: 14, scope: !4627)
!4704 = !DILocation(line: 541, column: 6, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 541, column: 6)
!4706 = !DILocation(line: 541, column: 6, scope: !4627)
!4707 = !DILocation(line: 542, column: 24, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 541, column: 38)
!4709 = !DILocation(line: 542, column: 29, scope: !4708)
!4710 = !DILocation(line: 542, column: 3, scope: !4708)
!4711 = !DILocation(line: 543, column: 20, scope: !4708)
!4712 = !DILocation(line: 543, column: 25, scope: !4708)
!4713 = !DILocation(line: 543, column: 3, scope: !4708)
!4714 = !DILocation(line: 544, column: 24, scope: !4708)
!4715 = !DILocation(line: 544, column: 29, scope: !4708)
!4716 = !DILocation(line: 544, column: 3, scope: !4708)
!4717 = !DILocation(line: 545, column: 22, scope: !4708)
!4718 = !DILocation(line: 545, column: 27, scope: !4708)
!4719 = !DILocation(line: 545, column: 3, scope: !4708)
!4720 = !DILocation(line: 546, column: 2, scope: !4708)
!4721 = !DILocation(line: 548, column: 9, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 548, column: 2)
!4723 = !DILocation(line: 548, column: 7, scope: !4722)
!4724 = !DILocation(line: 548, column: 14, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 548, column: 2)
!4726 = !DILocation(line: 548, column: 16, scope: !4725)
!4727 = !DILocation(line: 548, column: 2, scope: !4722)
!4728 = !DILocation(line: 549, column: 27, scope: !4725)
!4729 = !DILocation(line: 549, column: 31, scope: !4725)
!4730 = !DILocation(line: 549, column: 39, scope: !4725)
!4731 = !DILocation(line: 549, column: 3, scope: !4725)
!4732 = !DILocation(line: 549, column: 7, scope: !4725)
!4733 = !DILocation(line: 549, column: 14, scope: !4725)
!4734 = !DILocation(line: 549, column: 17, scope: !4725)
!4735 = !DILocation(line: 549, column: 24, scope: !4725)
!4736 = !DILocation(line: 548, column: 39, scope: !4725)
!4737 = !DILocation(line: 548, column: 2, scope: !4725)
!4738 = distinct !{!4738, !4727, !4739, !4740, !4741}
!4739 = !DILocation(line: 549, column: 40, scope: !4722)
!4740 = !{!"llvm.loop.mustprogress"}
!4741 = !{!"llvm.loop.unroll.disable"}
!4742 = !DILocation(line: 551, column: 2, scope: !4627)
!4743 = !DILocation(line: 552, column: 1, scope: !4627)
!4744 = distinct !DISubprogram(name: "kzalloc", scope: !123, file: !123, line: 719, type: !4745, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4747)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!137, !951, !133}
!4747 = !{!4748, !4749}
!4748 = !DILocalVariable(name: "size", arg: 1, scope: !4744, file: !123, line: 719, type: !951)
!4749 = !DILocalVariable(name: "flags", arg: 2, scope: !4744, file: !123, line: 719, type: !133)
!4750 = !DILocation(line: 719, column: 52, scope: !4744)
!4751 = !DILocation(line: 719, column: 64, scope: !4744)
!4752 = !DILocation(line: 721, column: 17, scope: !4744)
!4753 = !DILocation(line: 721, column: 23, scope: !4744)
!4754 = !DILocation(line: 721, column: 29, scope: !4744)
!4755 = !DILocation(line: 721, column: 9, scope: !4744)
!4756 = !DILocation(line: 721, column: 2, scope: !4744)
!4757 = !DISubprogram(name: "init_timer_key", scope: !231, file: !231, line: 91, type: !4758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{null, !245, !242, !7, !255, !4760}
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!4761 = distinct !DISubprogram(name: "ml_effect_timer", scope: !3, file: !3, line: 400, type: !243, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4762)
!4762 = !{!4763, !4764, !4765, !4767, !4768, !4769, !4773}
!4763 = !DILocalVariable(name: "t", arg: 1, scope: !4761, file: !3, line: 400, type: !245)
!4764 = !DILocalVariable(name: "ml", scope: !4761, file: !3, line: 402, type: !140)
!4765 = !DILocalVariable(name: "__mptr", scope: !4766, file: !3, line: 402, type: !137)
!4766 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 402, column: 25)
!4767 = !DILocalVariable(name: "dev", scope: !4761, file: !3, line: 403, type: !250)
!4768 = !DILocalVariable(name: "flags", scope: !4761, file: !3, line: 404, type: !136)
!4769 = !DILocalVariable(name: "__dummy", scope: !4770, file: !3, line: 408, type: !136)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 408, column: 2)
!4771 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 408, column: 2)
!4772 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 408, column: 2)
!4773 = !DILocalVariable(name: "__dummy2", scope: !4770, file: !3, line: 408, type: !136)
!4774 = !DILocation(line: 400, column: 48, scope: !4761)
!4775 = !DILocation(line: 402, column: 2, scope: !4761)
!4776 = !DILocation(line: 402, column: 20, scope: !4761)
!4777 = !DILocation(line: 402, column: 25, scope: !4766)
!4778 = !DILocation(line: 402, column: 25, scope: !4761)
!4779 = !DILocation(line: 403, column: 2, scope: !4761)
!4780 = !DILocation(line: 403, column: 20, scope: !4761)
!4781 = !DILocation(line: 403, column: 26, scope: !4761)
!4782 = !DILocation(line: 403, column: 30, scope: !4761)
!4783 = !DILocation(line: 404, column: 2, scope: !4761)
!4784 = !DILocation(line: 404, column: 16, scope: !4761)
!4785 = !DILocation(line: 406, column: 2, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4787, file: !3, line: 406, column: 2)
!4787 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 406, column: 2)
!4788 = !DILocation(line: 406, column: 2, scope: !4787)
!4789 = !DILocation(line: 408, column: 2, scope: !4761)
!4790 = !DILocation(line: 408, column: 2, scope: !4772)
!4791 = !DILocation(line: 408, column: 2, scope: !4770)
!4792 = !DILocation(line: 408, column: 2, scope: !4771)
!4793 = !DILocation(line: 409, column: 18, scope: !4761)
!4794 = !DILocation(line: 409, column: 2, scope: !4761)
!4795 = !DILocation(line: 410, column: 26, scope: !4761)
!4796 = !DILocation(line: 410, column: 31, scope: !4761)
!4797 = !DILocation(line: 410, column: 43, scope: !4761)
!4798 = !DILocation(line: 410, column: 2, scope: !4761)
!4799 = !DILocation(line: 411, column: 1, scope: !4761)
!4800 = distinct !DISubprogram(name: "set_bit", scope: !4801, file: !4801, line: 26, type: !4802, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4806)
!4801 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!4802 = !DISubroutineType(types: !4803)
!4803 = !{null, !909, !4804}
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!4806 = !{!4807, !4808}
!4807 = !DILocalVariable(name: "nr", arg: 1, scope: !4800, file: !4801, line: 26, type: !909)
!4808 = !DILocalVariable(name: "addr", arg: 2, scope: !4800, file: !4801, line: 26, type: !4804)
!4809 = !DILocation(line: 26, column: 42, scope: !4800)
!4810 = !DILocation(line: 26, column: 70, scope: !4800)
!4811 = !DILocation(line: 28, column: 26, scope: !4800)
!4812 = !DILocation(line: 28, column: 33, scope: !4800)
!4813 = !DILocation(line: 28, column: 31, scope: !4800)
!4814 = !DILocation(line: 28, column: 2, scope: !4800)
!4815 = !DILocation(line: 29, column: 15, scope: !4800)
!4816 = !DILocation(line: 29, column: 19, scope: !4800)
!4817 = !DILocation(line: 29, column: 2, scope: !4800)
!4818 = !DILocation(line: 30, column: 1, scope: !4800)
!4819 = !DISubprogram(name: "input_ff_create", scope: !252, file: !252, line: 568, type: !4820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!85, !250, !7}
!4822 = !DISubprogram(name: "kfree", scope: !123, file: !123, line: 227, type: !4823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{null, !1567}
!4825 = distinct !DISubprogram(name: "ml_ff_upload", scope: !3, file: !3, line: 462, type: !318, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4826)
!4826 = !{!4827, !4828, !4829, !4830, !4831}
!4827 = !DILocalVariable(name: "dev", arg: 1, scope: !4825, file: !3, line: 462, type: !250)
!4828 = !DILocalVariable(name: "effect", arg: 2, scope: !4825, file: !3, line: 463, type: !149)
!4829 = !DILocalVariable(name: "old", arg: 3, scope: !4825, file: !3, line: 463, type: !149)
!4830 = !DILocalVariable(name: "ml", scope: !4825, file: !3, line: 465, type: !140)
!4831 = !DILocalVariable(name: "state", scope: !4825, file: !3, line: 466, type: !4832)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!4833 = !DILocation(line: 462, column: 43, scope: !4825)
!4834 = !DILocation(line: 463, column: 22, scope: !4825)
!4835 = !DILocation(line: 463, column: 48, scope: !4825)
!4836 = !DILocation(line: 465, column: 2, scope: !4825)
!4837 = !DILocation(line: 465, column: 20, scope: !4825)
!4838 = !DILocation(line: 465, column: 25, scope: !4825)
!4839 = !DILocation(line: 465, column: 30, scope: !4825)
!4840 = !DILocation(line: 465, column: 34, scope: !4825)
!4841 = !DILocation(line: 466, column: 2, scope: !4825)
!4842 = !DILocation(line: 466, column: 26, scope: !4825)
!4843 = !DILocation(line: 466, column: 35, scope: !4825)
!4844 = !DILocation(line: 466, column: 39, scope: !4825)
!4845 = !DILocation(line: 466, column: 46, scope: !4825)
!4846 = !DILocation(line: 466, column: 54, scope: !4825)
!4847 = !DILocation(line: 468, column: 17, scope: !4825)
!4848 = !DILocation(line: 468, column: 22, scope: !4825)
!4849 = !DILocation(line: 468, column: 2, scope: !4825)
!4850 = !DILocation(line: 470, column: 6, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 470, column: 6)
!4852 = !DILocation(line: 470, column: 6, scope: !4825)
!4853 = !DILocation(line: 471, column: 3, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 470, column: 50)
!4855 = !DILocation(line: 472, column: 20, scope: !4854)
!4856 = !DILocation(line: 473, column: 23, scope: !4854)
!4857 = !DILocation(line: 473, column: 30, scope: !4854)
!4858 = !DILocation(line: 473, column: 38, scope: !4854)
!4859 = !DILocation(line: 473, column: 45, scope: !4854)
!4860 = !DILocation(line: 473, column: 6, scope: !4854)
!4861 = !DILocation(line: 472, column: 28, scope: !4854)
!4862 = !DILocation(line: 472, column: 3, scope: !4854)
!4863 = !DILocation(line: 472, column: 10, scope: !4854)
!4864 = !DILocation(line: 472, column: 18, scope: !4854)
!4865 = !DILocation(line: 474, column: 20, scope: !4854)
!4866 = !DILocation(line: 474, column: 27, scope: !4854)
!4867 = !DILocation(line: 475, column: 23, scope: !4854)
!4868 = !DILocation(line: 475, column: 30, scope: !4854)
!4869 = !DILocation(line: 475, column: 38, scope: !4854)
!4870 = !DILocation(line: 475, column: 45, scope: !4854)
!4871 = !DILocation(line: 475, column: 6, scope: !4854)
!4872 = !DILocation(line: 474, column: 35, scope: !4854)
!4873 = !DILocation(line: 474, column: 3, scope: !4854)
!4874 = !DILocation(line: 474, column: 10, scope: !4854)
!4875 = !DILocation(line: 474, column: 18, scope: !4854)
!4876 = !DILocation(line: 476, column: 19, scope: !4854)
!4877 = !DILocation(line: 476, column: 26, scope: !4854)
!4878 = !DILocation(line: 476, column: 3, scope: !4854)
!4879 = !DILocation(line: 476, column: 10, scope: !4854)
!4880 = !DILocation(line: 476, column: 17, scope: !4854)
!4881 = !DILocation(line: 477, column: 21, scope: !4854)
!4882 = !DILocation(line: 477, column: 3, scope: !4854)
!4883 = !DILocation(line: 478, column: 2, scope: !4854)
!4884 = !DILocation(line: 480, column: 19, scope: !4825)
!4885 = !DILocation(line: 480, column: 24, scope: !4825)
!4886 = !DILocation(line: 480, column: 2, scope: !4825)
!4887 = !DILocation(line: 483, column: 1, scope: !4825)
!4888 = !DILocation(line: 482, column: 2, scope: !4825)
!4889 = distinct !DISubprogram(name: "ml_ff_playback", scope: !3, file: !3, line: 432, type: !326, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4890)
!4890 = !{!4891, !4892, !4893, !4894, !4895}
!4891 = !DILocalVariable(name: "dev", arg: 1, scope: !4889, file: !3, line: 432, type: !250)
!4892 = !DILocalVariable(name: "effect_id", arg: 2, scope: !4889, file: !3, line: 432, type: !85)
!4893 = !DILocalVariable(name: "value", arg: 3, scope: !4889, file: !3, line: 432, type: !85)
!4894 = !DILocalVariable(name: "ml", scope: !4889, file: !3, line: 434, type: !140)
!4895 = !DILocalVariable(name: "state", scope: !4889, file: !3, line: 435, type: !4832)
!4896 = !DILocation(line: 432, column: 45, scope: !4889)
!4897 = !DILocation(line: 432, column: 54, scope: !4889)
!4898 = !DILocation(line: 432, column: 69, scope: !4889)
!4899 = !DILocation(line: 434, column: 2, scope: !4889)
!4900 = !DILocation(line: 434, column: 20, scope: !4889)
!4901 = !DILocation(line: 434, column: 25, scope: !4889)
!4902 = !DILocation(line: 434, column: 30, scope: !4889)
!4903 = !DILocation(line: 434, column: 34, scope: !4889)
!4904 = !DILocation(line: 435, column: 2, scope: !4889)
!4905 = !DILocation(line: 435, column: 26, scope: !4889)
!4906 = !DILocation(line: 435, column: 35, scope: !4889)
!4907 = !DILocation(line: 435, column: 39, scope: !4889)
!4908 = !DILocation(line: 435, column: 46, scope: !4889)
!4909 = !DILocation(line: 437, column: 6, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 437, column: 6)
!4911 = !DILocation(line: 437, column: 12, scope: !4910)
!4912 = !DILocation(line: 437, column: 6, scope: !4889)
!4913 = !DILocation(line: 438, column: 3, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 438, column: 3)
!4915 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 438, column: 3)
!4916 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 437, column: 17)
!4917 = !DILocation(line: 438, column: 3, scope: !4915)
!4918 = !DILocation(line: 440, column: 3, scope: !4916)
!4919 = !DILocation(line: 441, column: 18, scope: !4916)
!4920 = !DILocation(line: 441, column: 3, scope: !4916)
!4921 = !DILocation(line: 441, column: 10, scope: !4916)
!4922 = !DILocation(line: 441, column: 16, scope: !4916)
!4923 = !DILocation(line: 442, column: 20, scope: !4916)
!4924 = !DILocation(line: 443, column: 23, scope: !4916)
!4925 = !DILocation(line: 443, column: 30, scope: !4916)
!4926 = !DILocation(line: 443, column: 38, scope: !4916)
!4927 = !DILocation(line: 443, column: 45, scope: !4916)
!4928 = !DILocation(line: 443, column: 6, scope: !4916)
!4929 = !DILocation(line: 442, column: 28, scope: !4916)
!4930 = !DILocation(line: 442, column: 3, scope: !4916)
!4931 = !DILocation(line: 442, column: 10, scope: !4916)
!4932 = !DILocation(line: 442, column: 18, scope: !4916)
!4933 = !DILocation(line: 444, column: 20, scope: !4916)
!4934 = !DILocation(line: 444, column: 27, scope: !4916)
!4935 = !DILocation(line: 445, column: 23, scope: !4916)
!4936 = !DILocation(line: 445, column: 30, scope: !4916)
!4937 = !DILocation(line: 445, column: 38, scope: !4916)
!4938 = !DILocation(line: 445, column: 45, scope: !4916)
!4939 = !DILocation(line: 445, column: 6, scope: !4916)
!4940 = !DILocation(line: 444, column: 35, scope: !4916)
!4941 = !DILocation(line: 444, column: 3, scope: !4916)
!4942 = !DILocation(line: 444, column: 10, scope: !4916)
!4943 = !DILocation(line: 444, column: 18, scope: !4916)
!4944 = !DILocation(line: 446, column: 19, scope: !4916)
!4945 = !DILocation(line: 446, column: 26, scope: !4916)
!4946 = !DILocation(line: 446, column: 3, scope: !4916)
!4947 = !DILocation(line: 446, column: 10, scope: !4916)
!4948 = !DILocation(line: 446, column: 17, scope: !4916)
!4949 = !DILocation(line: 448, column: 2, scope: !4916)
!4950 = !DILocation(line: 449, column: 3, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 449, column: 3)
!4952 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 449, column: 3)
!4953 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 448, column: 9)
!4954 = !DILocation(line: 449, column: 3, scope: !4952)
!4955 = !DILocation(line: 451, column: 7, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 451, column: 7)
!4957 = !DILocation(line: 451, column: 7, scope: !4953)
!4958 = !DILocation(line: 452, column: 4, scope: !4956)
!4959 = !DILocation(line: 454, column: 4, scope: !4956)
!4960 = !DILocation(line: 457, column: 18, scope: !4889)
!4961 = !DILocation(line: 457, column: 2, scope: !4889)
!4962 = !DILocation(line: 460, column: 1, scope: !4889)
!4963 = !DILocation(line: 459, column: 2, scope: !4889)
!4964 = distinct !DISubprogram(name: "ml_ff_set_gain", scope: !3, file: !3, line: 416, type: !330, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4965)
!4965 = !{!4966, !4967, !4968, !4969}
!4966 = !DILocalVariable(name: "dev", arg: 1, scope: !4964, file: !3, line: 416, type: !250)
!4967 = !DILocalVariable(name: "gain", arg: 2, scope: !4964, file: !3, line: 416, type: !332)
!4968 = !DILocalVariable(name: "ml", scope: !4964, file: !3, line: 418, type: !140)
!4969 = !DILocalVariable(name: "i", scope: !4964, file: !3, line: 419, type: !85)
!4970 = !DILocation(line: 416, column: 46, scope: !4964)
!4971 = !DILocation(line: 416, column: 55, scope: !4964)
!4972 = !DILocation(line: 418, column: 2, scope: !4964)
!4973 = !DILocation(line: 418, column: 20, scope: !4964)
!4974 = !DILocation(line: 418, column: 25, scope: !4964)
!4975 = !DILocation(line: 418, column: 30, scope: !4964)
!4976 = !DILocation(line: 418, column: 34, scope: !4964)
!4977 = !DILocation(line: 419, column: 2, scope: !4964)
!4978 = !DILocation(line: 419, column: 6, scope: !4964)
!4979 = !DILocation(line: 421, column: 13, scope: !4964)
!4980 = !DILocation(line: 421, column: 2, scope: !4964)
!4981 = !DILocation(line: 421, column: 6, scope: !4964)
!4982 = !DILocation(line: 421, column: 11, scope: !4964)
!4983 = !DILocation(line: 423, column: 9, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 423, column: 2)
!4985 = !DILocation(line: 423, column: 7, scope: !4984)
!4986 = !DILocation(line: 423, column: 14, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 423, column: 2)
!4988 = !DILocation(line: 423, column: 16, scope: !4987)
!4989 = !DILocation(line: 423, column: 2, scope: !4984)
!4990 = !DILocation(line: 424, column: 3, scope: !4987)
!4991 = !DILocation(line: 423, column: 39, scope: !4987)
!4992 = !DILocation(line: 423, column: 2, scope: !4987)
!4993 = distinct !{!4993, !4989, !4994, !4740, !4741}
!4994 = !DILocation(line: 424, column: 3, scope: !4984)
!4995 = !DILocation(line: 426, column: 18, scope: !4964)
!4996 = !DILocation(line: 426, column: 2, scope: !4964)
!4997 = !DILocation(line: 427, column: 1, scope: !4964)
!4998 = distinct !DISubprogram(name: "ml_ff_destroy", scope: !3, file: !3, line: 485, type: !336, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4999)
!4999 = !{!5000, !5001}
!5000 = !DILocalVariable(name: "ff", arg: 1, scope: !4998, file: !3, line: 485, type: !313)
!5001 = !DILocalVariable(name: "ml", scope: !4998, file: !3, line: 487, type: !140)
!5002 = !DILocation(line: 485, column: 45, scope: !4998)
!5003 = !DILocation(line: 487, column: 2, scope: !4998)
!5004 = !DILocation(line: 487, column: 20, scope: !4998)
!5005 = !DILocation(line: 487, column: 25, scope: !4998)
!5006 = !DILocation(line: 487, column: 29, scope: !4998)
!5007 = !DILocation(line: 496, column: 18, scope: !4998)
!5008 = !DILocation(line: 496, column: 22, scope: !4998)
!5009 = !DILocation(line: 496, column: 2, scope: !4998)
!5010 = !DILocation(line: 498, column: 8, scope: !4998)
!5011 = !DILocation(line: 498, column: 12, scope: !4998)
!5012 = !DILocation(line: 498, column: 2, scope: !4998)
!5013 = !DILocation(line: 499, column: 1, scope: !4998)
!5014 = distinct !DISubprogram(name: "const_test_bit", scope: !5015, file: !5015, line: 166, type: !5016, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5020)
!5015 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!631, !136, !5018}
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4805)
!5020 = !{!5021, !5022, !5023, !5024, !5025}
!5021 = !DILocalVariable(name: "nr", arg: 1, scope: !5014, file: !5015, line: 166, type: !136)
!5022 = !DILocalVariable(name: "addr", arg: 2, scope: !5014, file: !5015, line: 166, type: !5018)
!5023 = !DILocalVariable(name: "p", scope: !5014, file: !5015, line: 168, type: !138)
!5024 = !DILocalVariable(name: "mask", scope: !5014, file: !5015, line: 169, type: !136)
!5025 = !DILocalVariable(name: "val", scope: !5014, file: !5015, line: 170, type: !136)
!5026 = !DILocation(line: 166, column: 30, scope: !5014)
!5027 = !DILocation(line: 166, column: 64, scope: !5014)
!5028 = !DILocation(line: 168, column: 2, scope: !5014)
!5029 = !DILocation(line: 168, column: 23, scope: !5014)
!5030 = !DILocation(line: 168, column: 50, scope: !5014)
!5031 = !DILocation(line: 168, column: 57, scope: !5014)
!5032 = !DILocation(line: 168, column: 55, scope: !5014)
!5033 = !DILocation(line: 169, column: 2, scope: !5014)
!5034 = !DILocation(line: 169, column: 16, scope: !5014)
!5035 = !DILocation(line: 169, column: 23, scope: !5014)
!5036 = !DILocation(line: 170, column: 2, scope: !5014)
!5037 = !DILocation(line: 170, column: 16, scope: !5014)
!5038 = !DILocation(line: 170, column: 23, scope: !5014)
!5039 = !DILocation(line: 170, column: 22, scope: !5014)
!5040 = !DILocation(line: 172, column: 12, scope: !5014)
!5041 = !DILocation(line: 172, column: 18, scope: !5014)
!5042 = !DILocation(line: 172, column: 16, scope: !5014)
!5043 = !DILocation(line: 172, column: 10, scope: !5014)
!5044 = !DILocation(line: 172, column: 9, scope: !5014)
!5045 = !DILocation(line: 173, column: 1, scope: !5014)
!5046 = !DILocation(line: 172, column: 2, scope: !5014)
!5047 = distinct !DISubprogram(name: "_test_bit", scope: !5048, file: !5048, line: 139, type: !5016, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5049)
!5048 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5049 = !{!5050, !5051}
!5050 = !DILocalVariable(name: "nr", arg: 1, scope: !5047, file: !5048, line: 139, type: !136)
!5051 = !DILocalVariable(name: "addr", arg: 2, scope: !5047, file: !5048, line: 139, type: !5018)
!5052 = !DILocation(line: 139, column: 25, scope: !5047)
!5053 = !DILocation(line: 139, column: 59, scope: !5047)
!5054 = !DILocation(line: 141, column: 25, scope: !5047)
!5055 = !DILocation(line: 141, column: 32, scope: !5047)
!5056 = !DILocation(line: 141, column: 30, scope: !5047)
!5057 = !DILocation(line: 141, column: 2, scope: !5047)
!5058 = !DILocation(line: 142, column: 23, scope: !5047)
!5059 = !DILocation(line: 142, column: 27, scope: !5047)
!5060 = !DILocation(line: 142, column: 9, scope: !5047)
!5061 = !DILocation(line: 142, column: 2, scope: !5047)
!5062 = distinct !DISubprogram(name: "kmalloc", scope: !123, file: !123, line: 591, type: !4745, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5063)
!5063 = !{!5064, !5065, !5066}
!5064 = !DILocalVariable(name: "size", arg: 1, scope: !5062, file: !123, line: 591, type: !951)
!5065 = !DILocalVariable(name: "flags", arg: 2, scope: !5062, file: !123, line: 591, type: !133)
!5066 = !DILocalVariable(name: "index", scope: !5067, file: !123, line: 594, type: !7)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !123, line: 593, column: 42)
!5068 = distinct !DILexicalBlock(scope: !5062, file: !123, line: 593, column: 6)
!5069 = !DILocation(line: 591, column: 61, scope: !5062)
!5070 = !DILocation(line: 591, column: 73, scope: !5062)
!5071 = !DILocation(line: 593, column: 27, scope: !5068)
!5072 = !DILocation(line: 593, column: 6, scope: !5068)
!5073 = !DILocation(line: 593, column: 33, scope: !5068)
!5074 = !DILocation(line: 593, column: 36, scope: !5068)
!5075 = !DILocation(line: 593, column: 6, scope: !5062)
!5076 = !DILocation(line: 594, column: 3, scope: !5067)
!5077 = !DILocation(line: 594, column: 16, scope: !5067)
!5078 = !DILocation(line: 596, column: 7, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5067, file: !123, line: 596, column: 7)
!5080 = !DILocation(line: 596, column: 12, scope: !5079)
!5081 = !DILocation(line: 596, column: 7, scope: !5067)
!5082 = !DILocation(line: 597, column: 25, scope: !5079)
!5083 = !DILocation(line: 597, column: 31, scope: !5079)
!5084 = !DILocation(line: 597, column: 11, scope: !5079)
!5085 = !DILocation(line: 597, column: 4, scope: !5079)
!5086 = !DILocation(line: 599, column: 11, scope: !5067)
!5087 = !DILocation(line: 599, column: 9, scope: !5067)
!5088 = !DILocation(line: 601, column: 33, scope: !5067)
!5089 = !DILocation(line: 601, column: 40, scope: !5067)
!5090 = !DILocation(line: 601, column: 20, scope: !5067)
!5091 = !DILocation(line: 601, column: 5, scope: !5067)
!5092 = !DILocation(line: 601, column: 51, scope: !5067)
!5093 = !DILocation(line: 602, column: 5, scope: !5067)
!5094 = !DILocation(line: 602, column: 12, scope: !5067)
!5095 = !DILocation(line: 600, column: 10, scope: !5067)
!5096 = !DILocation(line: 600, column: 3, scope: !5067)
!5097 = !DILocation(line: 603, column: 2, scope: !5068)
!5098 = !DILocation(line: 604, column: 19, scope: !5062)
!5099 = !DILocation(line: 604, column: 25, scope: !5062)
!5100 = !DILocation(line: 604, column: 9, scope: !5062)
!5101 = !DILocation(line: 604, column: 2, scope: !5062)
!5102 = !DILocation(line: 605, column: 1, scope: !5062)
!5103 = !DISubprogram(name: "kmalloc_large", scope: !123, file: !123, line: 531, type: !4745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5104 = distinct !DISubprogram(name: "__kmalloc_index", scope: !123, file: !123, line: 444, type: !5105, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5107)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!7, !951, !631}
!5107 = !{!5108, !5109}
!5108 = !DILocalVariable(name: "size", arg: 1, scope: !5104, file: !123, line: 444, type: !951)
!5109 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5104, file: !123, line: 445, type: !631)
!5110 = !DILocation(line: 444, column: 60, scope: !5104)
!5111 = !DILocation(line: 445, column: 16, scope: !5104)
!5112 = !DILocation(line: 447, column: 7, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 447, column: 6)
!5114 = !DILocation(line: 447, column: 6, scope: !5104)
!5115 = !DILocation(line: 448, column: 3, scope: !5113)
!5116 = !DILocation(line: 450, column: 6, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 450, column: 6)
!5118 = !DILocation(line: 450, column: 11, scope: !5117)
!5119 = !DILocation(line: 450, column: 6, scope: !5104)
!5120 = !DILocation(line: 451, column: 3, scope: !5117)
!5121 = !DILocation(line: 453, column: 32, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 453, column: 6)
!5123 = !DILocation(line: 453, column: 37, scope: !5122)
!5124 = !DILocation(line: 453, column: 42, scope: !5122)
!5125 = !DILocation(line: 453, column: 45, scope: !5122)
!5126 = !DILocation(line: 453, column: 50, scope: !5122)
!5127 = !DILocation(line: 453, column: 6, scope: !5104)
!5128 = !DILocation(line: 454, column: 3, scope: !5122)
!5129 = !DILocation(line: 455, column: 32, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 455, column: 6)
!5131 = !DILocation(line: 455, column: 37, scope: !5130)
!5132 = !DILocation(line: 455, column: 43, scope: !5130)
!5133 = !DILocation(line: 455, column: 46, scope: !5130)
!5134 = !DILocation(line: 455, column: 51, scope: !5130)
!5135 = !DILocation(line: 455, column: 6, scope: !5104)
!5136 = !DILocation(line: 456, column: 3, scope: !5130)
!5137 = !DILocation(line: 457, column: 6, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 457, column: 6)
!5139 = !DILocation(line: 457, column: 11, scope: !5138)
!5140 = !DILocation(line: 457, column: 6, scope: !5104)
!5141 = !DILocation(line: 457, column: 26, scope: !5138)
!5142 = !DILocation(line: 458, column: 6, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 458, column: 6)
!5144 = !DILocation(line: 458, column: 11, scope: !5143)
!5145 = !DILocation(line: 458, column: 6, scope: !5104)
!5146 = !DILocation(line: 458, column: 26, scope: !5143)
!5147 = !DILocation(line: 459, column: 6, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 459, column: 6)
!5149 = !DILocation(line: 459, column: 11, scope: !5148)
!5150 = !DILocation(line: 459, column: 6, scope: !5104)
!5151 = !DILocation(line: 459, column: 26, scope: !5148)
!5152 = !DILocation(line: 460, column: 6, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 460, column: 6)
!5154 = !DILocation(line: 460, column: 11, scope: !5153)
!5155 = !DILocation(line: 460, column: 6, scope: !5104)
!5156 = !DILocation(line: 460, column: 26, scope: !5153)
!5157 = !DILocation(line: 461, column: 6, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 461, column: 6)
!5159 = !DILocation(line: 461, column: 11, scope: !5158)
!5160 = !DILocation(line: 461, column: 6, scope: !5104)
!5161 = !DILocation(line: 461, column: 26, scope: !5158)
!5162 = !DILocation(line: 462, column: 6, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 462, column: 6)
!5164 = !DILocation(line: 462, column: 11, scope: !5163)
!5165 = !DILocation(line: 462, column: 6, scope: !5104)
!5166 = !DILocation(line: 462, column: 26, scope: !5163)
!5167 = !DILocation(line: 463, column: 6, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 463, column: 6)
!5169 = !DILocation(line: 463, column: 11, scope: !5168)
!5170 = !DILocation(line: 463, column: 6, scope: !5104)
!5171 = !DILocation(line: 463, column: 26, scope: !5168)
!5172 = !DILocation(line: 464, column: 6, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 464, column: 6)
!5174 = !DILocation(line: 464, column: 11, scope: !5173)
!5175 = !DILocation(line: 464, column: 6, scope: !5104)
!5176 = !DILocation(line: 464, column: 26, scope: !5173)
!5177 = !DILocation(line: 465, column: 6, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 465, column: 6)
!5179 = !DILocation(line: 465, column: 11, scope: !5178)
!5180 = !DILocation(line: 465, column: 6, scope: !5104)
!5181 = !DILocation(line: 465, column: 26, scope: !5178)
!5182 = !DILocation(line: 466, column: 6, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 466, column: 6)
!5184 = !DILocation(line: 466, column: 11, scope: !5183)
!5185 = !DILocation(line: 466, column: 6, scope: !5104)
!5186 = !DILocation(line: 466, column: 26, scope: !5183)
!5187 = !DILocation(line: 467, column: 6, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 467, column: 6)
!5189 = !DILocation(line: 467, column: 11, scope: !5188)
!5190 = !DILocation(line: 467, column: 6, scope: !5104)
!5191 = !DILocation(line: 467, column: 26, scope: !5188)
!5192 = !DILocation(line: 468, column: 6, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 468, column: 6)
!5194 = !DILocation(line: 468, column: 11, scope: !5193)
!5195 = !DILocation(line: 468, column: 6, scope: !5104)
!5196 = !DILocation(line: 468, column: 26, scope: !5193)
!5197 = !DILocation(line: 469, column: 6, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 469, column: 6)
!5199 = !DILocation(line: 469, column: 11, scope: !5198)
!5200 = !DILocation(line: 469, column: 6, scope: !5104)
!5201 = !DILocation(line: 469, column: 26, scope: !5198)
!5202 = !DILocation(line: 470, column: 6, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 470, column: 6)
!5204 = !DILocation(line: 470, column: 11, scope: !5203)
!5205 = !DILocation(line: 470, column: 6, scope: !5104)
!5206 = !DILocation(line: 470, column: 26, scope: !5203)
!5207 = !DILocation(line: 471, column: 6, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 471, column: 6)
!5209 = !DILocation(line: 471, column: 11, scope: !5208)
!5210 = !DILocation(line: 471, column: 6, scope: !5104)
!5211 = !DILocation(line: 471, column: 26, scope: !5208)
!5212 = !DILocation(line: 472, column: 6, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 472, column: 6)
!5214 = !DILocation(line: 472, column: 11, scope: !5213)
!5215 = !DILocation(line: 472, column: 6, scope: !5104)
!5216 = !DILocation(line: 472, column: 26, scope: !5213)
!5217 = !DILocation(line: 473, column: 6, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 473, column: 6)
!5219 = !DILocation(line: 473, column: 11, scope: !5218)
!5220 = !DILocation(line: 473, column: 6, scope: !5104)
!5221 = !DILocation(line: 473, column: 26, scope: !5218)
!5222 = !DILocation(line: 474, column: 6, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 474, column: 6)
!5224 = !DILocation(line: 474, column: 11, scope: !5223)
!5225 = !DILocation(line: 474, column: 6, scope: !5104)
!5226 = !DILocation(line: 474, column: 27, scope: !5223)
!5227 = !DILocation(line: 475, column: 6, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 475, column: 6)
!5229 = !DILocation(line: 475, column: 11, scope: !5228)
!5230 = !DILocation(line: 475, column: 6, scope: !5104)
!5231 = !DILocation(line: 475, column: 32, scope: !5228)
!5232 = !DILocation(line: 477, column: 50, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5104, file: !123, line: 477, column: 6)
!5234 = !{i8 0, i8 2}
!5235 = !DILocation(line: 477, column: 6, scope: !5104)
!5236 = !DILocation(line: 478, column: 3, scope: !5233)
!5237 = !DILocation(line: 478, column: 3, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !123, line: 478, column: 3)
!5239 = distinct !DILexicalBlock(scope: !5233, file: !123, line: 478, column: 3)
!5240 = !{i32 -2143548810}
!5241 = !DILocation(line: 478, column: 3, scope: !5239)
!5242 = !DILocation(line: 480, column: 3, scope: !5233)
!5243 = !DILocation(line: 480, column: 3, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5233, file: !123, line: 480, column: 3)
!5245 = !DILocation(line: 480, column: 3, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5244, file: !123, line: 480, column: 3)
!5247 = !DILocation(line: 480, column: 3, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5244, file: !123, line: 480, column: 3)
!5249 = !{i64 2151418689, i64 2151418718, i64 2151418764, i64 2151418822, i64 2151418876, i64 2151418930, i64 2151418985, i64 2151419016}
!5250 = !DILocation(line: 483, column: 2, scope: !5104)
!5251 = !DILocation(line: 484, column: 1, scope: !5104)
!5252 = !DISubprogram(name: "kmalloc_trace", scope: !123, file: !123, line: 525, type: !5253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{!137, !5255, !133, !951}
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3470, line: 11, flags: DIFlagFwdDecl)
!5257 = distinct !DISubprogram(name: "kmalloc_type", scope: !123, file: !123, line: 401, type: !5258, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5260)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{!122, !133, !136}
!5260 = !{!5261, !5262}
!5261 = !DILocalVariable(name: "flags", arg: 1, scope: !5257, file: !123, line: 401, type: !133)
!5262 = !DILocalVariable(name: "caller", arg: 2, scope: !5257, file: !123, line: 401, type: !136)
!5263 = !DILocation(line: 401, column: 67, scope: !5257)
!5264 = !DILocation(line: 401, column: 88, scope: !5257)
!5265 = !DILocation(line: 407, column: 6, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5257, file: !123, line: 407, column: 6)
!5267 = !DILocation(line: 407, column: 6, scope: !5257)
!5268 = !DILocation(line: 413, column: 3, scope: !5266)
!5269 = !DILocation(line: 423, column: 38, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5257, file: !123, line: 423, column: 6)
!5271 = !DILocation(line: 423, column: 44, scope: !5270)
!5272 = !DILocation(line: 423, column: 6, scope: !5257)
!5273 = !DILocation(line: 424, column: 3, scope: !5270)
!5274 = !DILocation(line: 426, column: 3, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5257, file: !123, line: 425, column: 6)
!5276 = !DILocation(line: 429, column: 1, scope: !5257)
!5277 = !DISubprogram(name: "__kmalloc", scope: !123, file: !123, line: 488, type: !4745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5278 = !DISubprogram(name: "__compiletime_assert_117", scope: !123, file: !123, line: 478, type: !2167, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5279 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5280, file: !5280, line: 32, type: !5281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5280 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5281 = !DISubroutineType(types: !5282)
!5282 = !{!136, !5283}
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!5284 = distinct !DISubprogram(name: "spinlock_check", scope: !5285, file: !5285, line: 324, type: !5286, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5289)
!5285 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!5283, !5288}
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!5289 = !{!5290}
!5290 = !DILocalVariable(name: "lock", arg: 1, scope: !5284, file: !5285, line: 324, type: !5288)
!5291 = !DILocation(line: 324, column: 67, scope: !5284)
!5292 = !DILocation(line: 326, column: 10, scope: !5284)
!5293 = !DILocation(line: 326, column: 16, scope: !5284)
!5294 = !DILocation(line: 326, column: 2, scope: !5284)
!5295 = distinct !DISubprogram(name: "ml_play_effects", scope: !3, file: !3, line: 387, type: !5296, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5298)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{null, !140}
!5298 = !{!5299, !5300, !5301}
!5299 = !DILocalVariable(name: "ml", arg: 1, scope: !5295, file: !3, line: 387, type: !140)
!5300 = !DILocalVariable(name: "effect", scope: !5295, file: !3, line: 389, type: !150)
!5301 = !DILocalVariable(name: "handled_bm", scope: !5295, file: !3, line: 390, type: !268)
!5302 = !DILocation(line: 387, column: 47, scope: !5295)
!5303 = !DILocation(line: 389, column: 2, scope: !5295)
!5304 = !DILocation(line: 389, column: 19, scope: !5295)
!5305 = !DILocation(line: 390, column: 2, scope: !5295)
!5306 = !DILocation(line: 392, column: 2, scope: !5295)
!5307 = !DILocation(line: 394, column: 2, scope: !5295)
!5308 = !DILocation(line: 394, column: 29, scope: !5295)
!5309 = !DILocation(line: 394, column: 33, scope: !5295)
!5310 = !DILocation(line: 394, column: 9, scope: !5295)
!5311 = !DILocation(line: 395, column: 3, scope: !5295)
!5312 = !DILocation(line: 395, column: 7, scope: !5295)
!5313 = !DILocation(line: 395, column: 19, scope: !5295)
!5314 = !DILocation(line: 395, column: 23, scope: !5295)
!5315 = !DILocation(line: 395, column: 28, scope: !5295)
!5316 = !DILocation(line: 395, column: 32, scope: !5295)
!5317 = distinct !{!5317, !5307, !5318, !4740, !4741}
!5318 = !DILocation(line: 395, column: 48, scope: !5295)
!5319 = !DILocation(line: 397, column: 20, scope: !5295)
!5320 = !DILocation(line: 397, column: 2, scope: !5295)
!5321 = !DILocation(line: 398, column: 1, scope: !5295)
!5322 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5285, file: !5285, line: 404, type: !5323, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5325)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{null, !5288, !136}
!5325 = !{!5326, !5327, !5328, !5331}
!5326 = !DILocalVariable(name: "lock", arg: 1, scope: !5322, file: !5285, line: 404, type: !5288)
!5327 = !DILocalVariable(name: "flags", arg: 2, scope: !5322, file: !5285, line: 404, type: !136)
!5328 = !DILocalVariable(name: "__dummy", scope: !5329, file: !5285, line: 406, type: !136)
!5329 = distinct !DILexicalBlock(scope: !5330, file: !5285, line: 406, column: 2)
!5330 = distinct !DILexicalBlock(scope: !5322, file: !5285, line: 406, column: 2)
!5331 = !DILocalVariable(name: "__dummy2", scope: !5329, file: !5285, line: 406, type: !136)
!5332 = !DILocation(line: 404, column: 64, scope: !5322)
!5333 = !DILocation(line: 404, column: 84, scope: !5322)
!5334 = !DILocation(line: 406, column: 2, scope: !5322)
!5335 = !DILocation(line: 406, column: 2, scope: !5329)
!5336 = !DILocation(line: 406, column: 2, scope: !5330)
!5337 = !DILocation(line: 407, column: 1, scope: !5322)
!5338 = distinct !DISubprogram(name: "ml_get_combo_effect", scope: !3, file: !3, line: 323, type: !5339, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5341)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!85, !140, !2153, !149}
!5341 = !{!5342, !5343, !5344, !5345, !5346, !5347, !5348}
!5342 = !DILocalVariable(name: "ml", arg: 1, scope: !5338, file: !3, line: 323, type: !140)
!5343 = !DILocalVariable(name: "effect_handled", arg: 2, scope: !5338, file: !3, line: 324, type: !2153)
!5344 = !DILocalVariable(name: "combo_effect", arg: 3, scope: !5338, file: !3, line: 325, type: !149)
!5345 = !DILocalVariable(name: "effect", scope: !5338, file: !3, line: 327, type: !149)
!5346 = !DILocalVariable(name: "state", scope: !5338, file: !3, line: 328, type: !4832)
!5347 = !DILocalVariable(name: "effect_type", scope: !5338, file: !3, line: 329, type: !85)
!5348 = !DILocalVariable(name: "i", scope: !5338, file: !3, line: 330, type: !85)
!5349 = !DILocation(line: 323, column: 50, scope: !5338)
!5350 = !DILocation(line: 324, column: 26, scope: !5338)
!5351 = !DILocation(line: 325, column: 29, scope: !5338)
!5352 = !DILocation(line: 327, column: 2, scope: !5338)
!5353 = !DILocation(line: 327, column: 20, scope: !5338)
!5354 = !DILocation(line: 328, column: 2, scope: !5338)
!5355 = !DILocation(line: 328, column: 26, scope: !5338)
!5356 = !DILocation(line: 329, column: 2, scope: !5338)
!5357 = !DILocation(line: 329, column: 6, scope: !5338)
!5358 = !DILocation(line: 330, column: 2, scope: !5338)
!5359 = !DILocation(line: 330, column: 6, scope: !5338)
!5360 = !DILocation(line: 332, column: 9, scope: !5338)
!5361 = !DILocation(line: 332, column: 2, scope: !5338)
!5362 = !DILocation(line: 334, column: 9, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 334, column: 2)
!5364 = !DILocation(line: 334, column: 7, scope: !5363)
!5365 = !DILocation(line: 334, column: 14, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5363, file: !3, line: 334, column: 2)
!5367 = !DILocation(line: 334, column: 16, scope: !5366)
!5368 = !DILocation(line: 334, column: 2, scope: !5363)
!5369 = !DILocation(line: 335, column: 7, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 335, column: 7)
!5371 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 334, column: 43)
!5372 = !DILocation(line: 335, column: 7, scope: !5371)
!5373 = !DILocation(line: 336, column: 4, scope: !5370)
!5374 = !DILocation(line: 338, column: 12, scope: !5371)
!5375 = !DILocation(line: 338, column: 16, scope: !5371)
!5376 = !DILocation(line: 338, column: 23, scope: !5371)
!5377 = !DILocation(line: 338, column: 9, scope: !5371)
!5378 = !DILocation(line: 339, column: 12, scope: !5371)
!5379 = !DILocation(line: 339, column: 19, scope: !5371)
!5380 = !DILocation(line: 339, column: 10, scope: !5371)
!5381 = !DILocation(line: 341, column: 8, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 341, column: 7)
!5383 = !DILocation(line: 341, column: 7, scope: !5371)
!5384 = !DILocation(line: 342, column: 4, scope: !5382)
!5385 = !DILocation(line: 344, column: 7, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 344, column: 7)
!5387 = !DILocation(line: 344, column: 7, scope: !5371)
!5388 = !DILocation(line: 345, column: 4, scope: !5386)
!5389 = !DILocation(line: 352, column: 37, scope: !5371)
!5390 = !DILocation(line: 352, column: 41, scope: !5371)
!5391 = !DILocation(line: 352, column: 46, scope: !5371)
!5392 = !DILocation(line: 352, column: 50, scope: !5371)
!5393 = !DILocation(line: 352, column: 58, scope: !5371)
!5394 = !DILocation(line: 352, column: 17, scope: !5371)
!5395 = !DILocation(line: 352, column: 15, scope: !5371)
!5396 = !DILocation(line: 353, column: 7, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 353, column: 7)
!5398 = !DILocation(line: 353, column: 21, scope: !5397)
!5399 = !DILocation(line: 353, column: 29, scope: !5397)
!5400 = !DILocation(line: 353, column: 26, scope: !5397)
!5401 = !DILocation(line: 353, column: 7, scope: !5371)
!5402 = !DILocation(line: 354, column: 8, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 354, column: 8)
!5404 = distinct !DILexicalBlock(scope: !5397, file: !3, line: 353, column: 42)
!5405 = !DILocation(line: 354, column: 22, scope: !5403)
!5406 = !DILocation(line: 354, column: 27, scope: !5403)
!5407 = !DILocation(line: 354, column: 8, scope: !5404)
!5408 = !DILocation(line: 355, column: 5, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 354, column: 33)
!5410 = !DILocation(line: 356, column: 5, scope: !5409)
!5411 = !DILocation(line: 358, column: 25, scope: !5404)
!5412 = !DILocation(line: 358, column: 4, scope: !5404)
!5413 = !DILocation(line: 358, column: 18, scope: !5404)
!5414 = !DILocation(line: 358, column: 23, scope: !5404)
!5415 = !DILocation(line: 359, column: 3, scope: !5404)
!5416 = !DILocation(line: 361, column: 7, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 361, column: 7)
!5418 = !DILocation(line: 361, column: 7, scope: !5371)
!5419 = !DILocation(line: 362, column: 4, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 361, column: 64)
!5421 = !DILocation(line: 363, column: 4, scope: !5420)
!5422 = !DILocation(line: 364, column: 3, scope: !5420)
!5423 = !DILocation(line: 364, column: 14, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 364, column: 14)
!5425 = !DILocation(line: 364, column: 22, scope: !5424)
!5426 = !DILocation(line: 364, column: 29, scope: !5424)
!5427 = !DILocation(line: 364, column: 36, scope: !5424)
!5428 = !DILocation(line: 365, column: 7, scope: !5424)
!5429 = !DILocation(line: 364, column: 14, scope: !5417)
!5430 = !DILocation(line: 367, column: 4, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 365, column: 47)
!5432 = !DILocation(line: 369, column: 10, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5431, file: !3, line: 369, column: 8)
!5434 = !DILocation(line: 369, column: 17, scope: !5433)
!5435 = !DILocation(line: 369, column: 8, scope: !5433)
!5436 = !DILocation(line: 369, column: 23, scope: !5433)
!5437 = !DILocation(line: 369, column: 8, scope: !5431)
!5438 = !DILocation(line: 370, column: 5, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 369, column: 29)
!5440 = !DILocation(line: 371, column: 4, scope: !5439)
!5441 = !DILocation(line: 372, column: 22, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5433, file: !3, line: 371, column: 11)
!5443 = !DILocation(line: 373, column: 23, scope: !5442)
!5444 = !DILocation(line: 373, column: 31, scope: !5442)
!5445 = !DILocation(line: 373, column: 38, scope: !5442)
!5446 = !DILocation(line: 373, column: 6, scope: !5442)
!5447 = !DILocation(line: 372, column: 30, scope: !5442)
!5448 = !DILocation(line: 372, column: 5, scope: !5442)
!5449 = !DILocation(line: 372, column: 12, scope: !5442)
!5450 = !DILocation(line: 372, column: 20, scope: !5442)
!5451 = !DILocation(line: 374, column: 22, scope: !5442)
!5452 = !DILocation(line: 374, column: 29, scope: !5442)
!5453 = !DILocation(line: 375, column: 23, scope: !5442)
!5454 = !DILocation(line: 375, column: 31, scope: !5442)
!5455 = !DILocation(line: 375, column: 38, scope: !5442)
!5456 = !DILocation(line: 375, column: 6, scope: !5442)
!5457 = !DILocation(line: 374, column: 37, scope: !5442)
!5458 = !DILocation(line: 374, column: 5, scope: !5442)
!5459 = !DILocation(line: 374, column: 12, scope: !5442)
!5460 = !DILocation(line: 374, column: 20, scope: !5442)
!5461 = !DILocation(line: 377, column: 3, scope: !5431)
!5462 = !DILocation(line: 378, column: 4, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 377, column: 10)
!5464 = !DILocation(line: 379, column: 20, scope: !5463)
!5465 = !DILocation(line: 379, column: 4, scope: !5463)
!5466 = !DILocation(line: 379, column: 11, scope: !5463)
!5467 = !DILocation(line: 379, column: 18, scope: !5463)
!5468 = !DILocation(line: 380, column: 23, scope: !5463)
!5469 = !DILocation(line: 380, column: 37, scope: !5463)
!5470 = !DILocation(line: 380, column: 44, scope: !5463)
!5471 = !DILocation(line: 380, column: 48, scope: !5463)
!5472 = !DILocation(line: 380, column: 4, scope: !5463)
!5473 = !DILocation(line: 382, column: 2, scope: !5371)
!5474 = !DILocation(line: 334, column: 39, scope: !5366)
!5475 = !DILocation(line: 334, column: 2, scope: !5366)
!5476 = distinct !{!5476, !5368, !5477, !4740, !4741}
!5477 = !DILocation(line: 382, column: 2, scope: !5363)
!5478 = !DILocation(line: 384, column: 9, scope: !5338)
!5479 = !DILocation(line: 384, column: 23, scope: !5338)
!5480 = !DILocation(line: 384, column: 28, scope: !5338)
!5481 = !DILocation(line: 385, column: 1, scope: !5338)
!5482 = !DILocation(line: 384, column: 2, scope: !5338)
!5483 = distinct !DISubprogram(name: "ml_schedule_timer", scope: !3, file: !3, line: 109, type: !5296, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5484)
!5484 = !{!5485, !5486, !5487, !5488, !5489, !5490, !5491}
!5485 = !DILocalVariable(name: "ml", arg: 1, scope: !5483, file: !3, line: 109, type: !140)
!5486 = !DILocalVariable(name: "state", scope: !5483, file: !3, line: 111, type: !4832)
!5487 = !DILocalVariable(name: "now", scope: !5483, file: !3, line: 112, type: !136)
!5488 = !DILocalVariable(name: "earliest", scope: !5483, file: !3, line: 113, type: !136)
!5489 = !DILocalVariable(name: "next_at", scope: !5483, file: !3, line: 114, type: !136)
!5490 = !DILocalVariable(name: "events", scope: !5483, file: !3, line: 115, type: !85)
!5491 = !DILocalVariable(name: "i", scope: !5483, file: !3, line: 116, type: !85)
!5492 = !DILocation(line: 109, column: 49, scope: !5483)
!5493 = !DILocation(line: 111, column: 2, scope: !5483)
!5494 = !DILocation(line: 111, column: 26, scope: !5483)
!5495 = !DILocation(line: 112, column: 2, scope: !5483)
!5496 = !DILocation(line: 112, column: 16, scope: !5483)
!5497 = !DILocation(line: 112, column: 22, scope: !5483)
!5498 = !DILocation(line: 113, column: 2, scope: !5483)
!5499 = !DILocation(line: 113, column: 16, scope: !5483)
!5500 = !DILocation(line: 114, column: 2, scope: !5483)
!5501 = !DILocation(line: 114, column: 16, scope: !5483)
!5502 = !DILocation(line: 115, column: 2, scope: !5483)
!5503 = !DILocation(line: 115, column: 6, scope: !5483)
!5504 = !DILocation(line: 116, column: 2, scope: !5483)
!5505 = !DILocation(line: 116, column: 6, scope: !5483)
!5506 = !DILocation(line: 118, column: 2, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 118, column: 2)
!5508 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 118, column: 2)
!5509 = !DILocation(line: 118, column: 2, scope: !5508)
!5510 = !DILocation(line: 120, column: 9, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 120, column: 2)
!5512 = !DILocation(line: 120, column: 7, scope: !5511)
!5513 = !DILocation(line: 120, column: 14, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 120, column: 2)
!5515 = !DILocation(line: 120, column: 16, scope: !5514)
!5516 = !DILocation(line: 120, column: 2, scope: !5511)
!5517 = !DILocation(line: 122, column: 12, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5514, file: !3, line: 120, column: 43)
!5519 = !DILocation(line: 122, column: 16, scope: !5518)
!5520 = !DILocation(line: 122, column: 23, scope: !5518)
!5521 = !DILocation(line: 122, column: 9, scope: !5518)
!5522 = !DILocation(line: 124, column: 8, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 124, column: 7)
!5524 = !DILocation(line: 124, column: 7, scope: !5518)
!5525 = !DILocation(line: 125, column: 4, scope: !5523)
!5526 = !DILocation(line: 127, column: 7, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 127, column: 7)
!5528 = !DILocation(line: 127, column: 7, scope: !5518)
!5529 = !DILocation(line: 128, column: 34, scope: !5527)
!5530 = !DILocation(line: 128, column: 14, scope: !5527)
!5531 = !DILocation(line: 128, column: 12, scope: !5527)
!5532 = !DILocation(line: 128, column: 4, scope: !5527)
!5533 = !DILocation(line: 130, column: 14, scope: !5527)
!5534 = !DILocation(line: 130, column: 21, scope: !5527)
!5535 = !DILocation(line: 130, column: 12, scope: !5527)
!5536 = !DILocation(line: 132, column: 7, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 132, column: 7)
!5538 = !DILocation(line: 132, column: 36, scope: !5537)
!5539 = !DILocation(line: 133, column: 8, scope: !5537)
!5540 = !DILocation(line: 133, column: 17, scope: !5537)
!5541 = !DILocation(line: 133, column: 22, scope: !5537)
!5542 = !DILocation(line: 133, column: 25, scope: !5537)
!5543 = !DILocation(line: 132, column: 7, scope: !5518)
!5544 = !DILocation(line: 134, column: 15, scope: !5537)
!5545 = !DILocation(line: 134, column: 13, scope: !5537)
!5546 = !DILocation(line: 134, column: 4, scope: !5537)
!5547 = !DILocation(line: 135, column: 2, scope: !5518)
!5548 = !DILocation(line: 120, column: 39, scope: !5514)
!5549 = !DILocation(line: 120, column: 2, scope: !5514)
!5550 = distinct !{!5550, !5516, !5551, !4740, !4741}
!5551 = !DILocation(line: 135, column: 2, scope: !5511)
!5552 = !DILocation(line: 137, column: 7, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 137, column: 6)
!5554 = !DILocation(line: 137, column: 6, scope: !5483)
!5555 = !DILocation(line: 138, column: 3, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 138, column: 3)
!5557 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 138, column: 3)
!5558 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 137, column: 15)
!5559 = !DILocation(line: 138, column: 3, scope: !5557)
!5560 = !DILocation(line: 139, column: 14, scope: !5558)
!5561 = !DILocation(line: 139, column: 18, scope: !5558)
!5562 = !DILocation(line: 139, column: 3, scope: !5558)
!5563 = !DILocation(line: 140, column: 2, scope: !5558)
!5564 = !DILocation(line: 141, column: 3, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 141, column: 3)
!5566 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 141, column: 3)
!5567 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 140, column: 9)
!5568 = !DILocation(line: 141, column: 3, scope: !5566)
!5569 = !DILocation(line: 142, column: 14, scope: !5567)
!5570 = !DILocation(line: 142, column: 18, scope: !5567)
!5571 = !DILocation(line: 142, column: 25, scope: !5567)
!5572 = !DILocation(line: 142, column: 3, scope: !5567)
!5573 = !DILocation(line: 144, column: 1, scope: !5483)
!5574 = distinct !DISubprogram(name: "generic___test_and_set_bit", scope: !5015, file: !5015, line: 73, type: !5575, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5577)
!5575 = !DISubroutineType(types: !5576)
!5576 = !{!631, !136, !4804}
!5577 = !{!5578, !5579, !5580, !5581, !5582}
!5578 = !DILocalVariable(name: "nr", arg: 1, scope: !5574, file: !5015, line: 73, type: !136)
!5579 = !DILocalVariable(name: "addr", arg: 2, scope: !5574, file: !5015, line: 73, type: !4804)
!5580 = !DILocalVariable(name: "mask", scope: !5574, file: !5015, line: 75, type: !136)
!5581 = !DILocalVariable(name: "p", scope: !5574, file: !5015, line: 76, type: !2153)
!5582 = !DILocalVariable(name: "old", scope: !5574, file: !5015, line: 77, type: !136)
!5583 = !DILocation(line: 73, column: 42, scope: !5574)
!5584 = !DILocation(line: 73, column: 70, scope: !5574)
!5585 = !DILocation(line: 75, column: 2, scope: !5574)
!5586 = !DILocation(line: 75, column: 16, scope: !5574)
!5587 = !DILocation(line: 75, column: 23, scope: !5574)
!5588 = !DILocation(line: 76, column: 2, scope: !5574)
!5589 = !DILocation(line: 76, column: 17, scope: !5574)
!5590 = !DILocation(line: 76, column: 39, scope: !5574)
!5591 = !DILocation(line: 76, column: 47, scope: !5574)
!5592 = !DILocation(line: 76, column: 45, scope: !5574)
!5593 = !DILocation(line: 77, column: 2, scope: !5574)
!5594 = !DILocation(line: 77, column: 16, scope: !5574)
!5595 = !DILocation(line: 77, column: 23, scope: !5574)
!5596 = !DILocation(line: 77, column: 22, scope: !5574)
!5597 = !DILocation(line: 79, column: 7, scope: !5574)
!5598 = !DILocation(line: 79, column: 13, scope: !5574)
!5599 = !DILocation(line: 79, column: 11, scope: !5574)
!5600 = !DILocation(line: 79, column: 3, scope: !5574)
!5601 = !DILocation(line: 79, column: 5, scope: !5574)
!5602 = !DILocation(line: 80, column: 10, scope: !5574)
!5603 = !DILocation(line: 80, column: 16, scope: !5574)
!5604 = !DILocation(line: 80, column: 14, scope: !5574)
!5605 = !DILocation(line: 80, column: 22, scope: !5574)
!5606 = !DILocation(line: 81, column: 1, scope: !5574)
!5607 = !DILocation(line: 80, column: 2, scope: !5574)
!5608 = distinct !DISubprogram(name: "___test_and_set_bit", scope: !5048, file: !5048, line: 97, type: !5575, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5609)
!5609 = !{!5610, !5611}
!5610 = !DILocalVariable(name: "nr", arg: 1, scope: !5608, file: !5048, line: 97, type: !136)
!5611 = !DILocalVariable(name: "addr", arg: 2, scope: !5608, file: !5048, line: 97, type: !4804)
!5612 = !DILocation(line: 97, column: 35, scope: !5608)
!5613 = !DILocation(line: 97, column: 63, scope: !5608)
!5614 = !DILocation(line: 99, column: 32, scope: !5608)
!5615 = !DILocation(line: 99, column: 36, scope: !5608)
!5616 = !DILocation(line: 99, column: 2, scope: !5608)
!5617 = !DILocation(line: 100, column: 33, scope: !5608)
!5618 = !DILocation(line: 100, column: 37, scope: !5608)
!5619 = !DILocation(line: 100, column: 9, scope: !5608)
!5620 = !DILocation(line: 100, column: 2, scope: !5608)
!5621 = distinct !DISubprogram(name: "get_compatible_type", scope: !3, file: !3, line: 195, type: !5622, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5624)
!5622 = !DISubroutineType(types: !5623)
!5623 = !{!85, !313, !85}
!5624 = !{!5625, !5626}
!5625 = !DILocalVariable(name: "ff", arg: 1, scope: !5621, file: !3, line: 195, type: !313)
!5626 = !DILocalVariable(name: "effect_type", arg: 2, scope: !5621, file: !3, line: 195, type: !85)
!5627 = !DILocation(line: 195, column: 50, scope: !5621)
!5628 = !DILocation(line: 195, column: 58, scope: !5621)
!5629 = !DILocation(line: 198, column: 6, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 198, column: 6)
!5631 = !DILocation(line: 198, column: 6, scope: !5621)
!5632 = !DILocation(line: 199, column: 10, scope: !5630)
!5633 = !DILocation(line: 199, column: 3, scope: !5630)
!5634 = !DILocation(line: 201, column: 6, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 201, column: 6)
!5636 = !DILocation(line: 201, column: 18, scope: !5635)
!5637 = !DILocation(line: 201, column: 33, scope: !5635)
!5638 = !DILocation(line: 201, column: 36, scope: !5635)
!5639 = !DILocation(line: 201, column: 6, scope: !5621)
!5640 = !DILocation(line: 202, column: 3, scope: !5635)
!5641 = !DILocation(line: 204, column: 2, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5621, file: !3, line: 204, column: 2)
!5643 = !DILocation(line: 204, column: 2, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5642, file: !3, line: 204, column: 2)
!5645 = !DILocation(line: 206, column: 2, scope: !5621)
!5646 = !DILocation(line: 207, column: 1, scope: !5621)
!5647 = distinct !DISubprogram(name: "generic___clear_bit", scope: !5015, file: !5015, line: 37, type: !5648, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5650)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{null, !136, !4804}
!5650 = !{!5651, !5652, !5653, !5654}
!5651 = !DILocalVariable(name: "nr", arg: 1, scope: !5647, file: !5015, line: 37, type: !136)
!5652 = !DILocalVariable(name: "addr", arg: 2, scope: !5647, file: !5015, line: 37, type: !4804)
!5653 = !DILocalVariable(name: "mask", scope: !5647, file: !5015, line: 39, type: !136)
!5654 = !DILocalVariable(name: "p", scope: !5647, file: !5015, line: 40, type: !2153)
!5655 = !DILocation(line: 37, column: 35, scope: !5647)
!5656 = !DILocation(line: 37, column: 63, scope: !5647)
!5657 = !DILocation(line: 39, column: 2, scope: !5647)
!5658 = !DILocation(line: 39, column: 16, scope: !5647)
!5659 = !DILocation(line: 39, column: 23, scope: !5647)
!5660 = !DILocation(line: 40, column: 2, scope: !5647)
!5661 = !DILocation(line: 40, column: 17, scope: !5647)
!5662 = !DILocation(line: 40, column: 39, scope: !5647)
!5663 = !DILocation(line: 40, column: 47, scope: !5647)
!5664 = !DILocation(line: 40, column: 45, scope: !5647)
!5665 = !DILocation(line: 42, column: 9, scope: !5647)
!5666 = !DILocation(line: 42, column: 8, scope: !5647)
!5667 = !DILocation(line: 42, column: 3, scope: !5647)
!5668 = !DILocation(line: 42, column: 5, scope: !5647)
!5669 = !DILocation(line: 43, column: 1, scope: !5647)
!5670 = distinct !DISubprogram(name: "___clear_bit", scope: !5048, file: !5048, line: 42, type: !5648, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5671)
!5671 = !{!5672, !5673}
!5672 = !DILocalVariable(name: "nr", arg: 1, scope: !5670, file: !5048, line: 42, type: !136)
!5673 = !DILocalVariable(name: "addr", arg: 2, scope: !5670, file: !5048, line: 42, type: !4804)
!5674 = !DILocation(line: 42, column: 28, scope: !5670)
!5675 = !DILocation(line: 42, column: 56, scope: !5670)
!5676 = !DILocation(line: 44, column: 19, scope: !5670)
!5677 = !DILocation(line: 44, column: 26, scope: !5670)
!5678 = !DILocation(line: 44, column: 24, scope: !5670)
!5679 = !DILocation(line: 44, column: 2, scope: !5670)
!5680 = !DILocation(line: 45, column: 19, scope: !5670)
!5681 = !DILocation(line: 45, column: 23, scope: !5670)
!5682 = !DILocation(line: 45, column: 2, scope: !5670)
!5683 = !DILocation(line: 46, column: 1, scope: !5670)
!5684 = distinct !DISubprogram(name: "generic___test_and_clear_bit", scope: !5015, file: !5015, line: 93, type: !5575, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5685)
!5685 = !{!5686, !5687, !5688, !5689, !5690}
!5686 = !DILocalVariable(name: "nr", arg: 1, scope: !5684, file: !5015, line: 93, type: !136)
!5687 = !DILocalVariable(name: "addr", arg: 2, scope: !5684, file: !5015, line: 93, type: !4804)
!5688 = !DILocalVariable(name: "mask", scope: !5684, file: !5015, line: 95, type: !136)
!5689 = !DILocalVariable(name: "p", scope: !5684, file: !5015, line: 96, type: !2153)
!5690 = !DILocalVariable(name: "old", scope: !5684, file: !5015, line: 97, type: !136)
!5691 = !DILocation(line: 93, column: 44, scope: !5684)
!5692 = !DILocation(line: 93, column: 72, scope: !5684)
!5693 = !DILocation(line: 95, column: 2, scope: !5684)
!5694 = !DILocation(line: 95, column: 16, scope: !5684)
!5695 = !DILocation(line: 95, column: 23, scope: !5684)
!5696 = !DILocation(line: 96, column: 2, scope: !5684)
!5697 = !DILocation(line: 96, column: 17, scope: !5684)
!5698 = !DILocation(line: 96, column: 39, scope: !5684)
!5699 = !DILocation(line: 96, column: 47, scope: !5684)
!5700 = !DILocation(line: 96, column: 45, scope: !5684)
!5701 = !DILocation(line: 97, column: 2, scope: !5684)
!5702 = !DILocation(line: 97, column: 16, scope: !5684)
!5703 = !DILocation(line: 97, column: 23, scope: !5684)
!5704 = !DILocation(line: 97, column: 22, scope: !5684)
!5705 = !DILocation(line: 99, column: 7, scope: !5684)
!5706 = !DILocation(line: 99, column: 14, scope: !5684)
!5707 = !DILocation(line: 99, column: 13, scope: !5684)
!5708 = !DILocation(line: 99, column: 11, scope: !5684)
!5709 = !DILocation(line: 99, column: 3, scope: !5684)
!5710 = !DILocation(line: 99, column: 5, scope: !5684)
!5711 = !DILocation(line: 100, column: 10, scope: !5684)
!5712 = !DILocation(line: 100, column: 16, scope: !5684)
!5713 = !DILocation(line: 100, column: 14, scope: !5684)
!5714 = !DILocation(line: 100, column: 22, scope: !5684)
!5715 = !DILocation(line: 101, column: 1, scope: !5684)
!5716 = !DILocation(line: 100, column: 2, scope: !5684)
!5717 = distinct !DISubprogram(name: "___test_and_clear_bit", scope: !5048, file: !5048, line: 112, type: !5575, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5718)
!5718 = !{!5719, !5720}
!5719 = !DILocalVariable(name: "nr", arg: 1, scope: !5717, file: !5048, line: 112, type: !136)
!5720 = !DILocalVariable(name: "addr", arg: 2, scope: !5717, file: !5048, line: 112, type: !4804)
!5721 = !DILocation(line: 112, column: 37, scope: !5717)
!5722 = !DILocation(line: 112, column: 65, scope: !5717)
!5723 = !DILocation(line: 114, column: 32, scope: !5717)
!5724 = !DILocation(line: 114, column: 36, scope: !5717)
!5725 = !DILocation(line: 114, column: 2, scope: !5717)
!5726 = !DILocation(line: 115, column: 35, scope: !5717)
!5727 = !DILocation(line: 115, column: 39, scope: !5717)
!5728 = !DILocation(line: 115, column: 9, scope: !5717)
!5729 = !DILocation(line: 115, column: 2, scope: !5717)
!5730 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5731, file: !5731, line: 515, type: !5732, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5734)
!5731 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!136, !3840}
!5734 = !{!5735}
!5735 = !DILocalVariable(name: "m", arg: 1, scope: !5730, file: !5731, line: 515, type: !3840)
!5736 = !DILocation(line: 515, column: 74, scope: !5730)
!5737 = !DILocation(line: 517, column: 27, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5730, file: !5731, line: 517, column: 6)
!5739 = !DILocation(line: 517, column: 6, scope: !5738)
!5740 = !DILocation(line: 517, column: 6, scope: !5730)
!5741 = !DILocation(line: 518, column: 12, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5743, file: !5731, line: 518, column: 7)
!5743 = distinct !DILexicalBlock(scope: !5738, file: !5731, line: 517, column: 31)
!5744 = !DILocation(line: 518, column: 14, scope: !5742)
!5745 = !DILocation(line: 518, column: 7, scope: !5743)
!5746 = !DILocation(line: 519, column: 4, scope: !5742)
!5747 = !DILocation(line: 520, column: 28, scope: !5743)
!5748 = !DILocation(line: 520, column: 10, scope: !5743)
!5749 = !DILocation(line: 520, column: 3, scope: !5743)
!5750 = !DILocation(line: 522, column: 29, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5738, file: !5731, line: 521, column: 9)
!5752 = !DILocation(line: 522, column: 10, scope: !5751)
!5753 = !DILocation(line: 522, column: 3, scope: !5751)
!5754 = !DILocation(line: 524, column: 1, scope: !5730)
!5755 = distinct !DISubprogram(name: "generic___set_bit", scope: !5015, file: !5015, line: 28, type: !5648, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5756)
!5756 = !{!5757, !5758, !5759, !5760}
!5757 = !DILocalVariable(name: "nr", arg: 1, scope: !5755, file: !5015, line: 28, type: !136)
!5758 = !DILocalVariable(name: "addr", arg: 2, scope: !5755, file: !5015, line: 28, type: !4804)
!5759 = !DILocalVariable(name: "mask", scope: !5755, file: !5015, line: 30, type: !136)
!5760 = !DILocalVariable(name: "p", scope: !5755, file: !5015, line: 31, type: !2153)
!5761 = !DILocation(line: 28, column: 33, scope: !5755)
!5762 = !DILocation(line: 28, column: 61, scope: !5755)
!5763 = !DILocation(line: 30, column: 2, scope: !5755)
!5764 = !DILocation(line: 30, column: 16, scope: !5755)
!5765 = !DILocation(line: 30, column: 23, scope: !5755)
!5766 = !DILocation(line: 31, column: 2, scope: !5755)
!5767 = !DILocation(line: 31, column: 17, scope: !5755)
!5768 = !DILocation(line: 31, column: 39, scope: !5755)
!5769 = !DILocation(line: 31, column: 47, scope: !5755)
!5770 = !DILocation(line: 31, column: 45, scope: !5755)
!5771 = !DILocation(line: 33, column: 9, scope: !5755)
!5772 = !DILocation(line: 33, column: 3, scope: !5755)
!5773 = !DILocation(line: 33, column: 6, scope: !5755)
!5774 = !DILocation(line: 34, column: 1, scope: !5755)
!5775 = distinct !DISubprogram(name: "___set_bit", scope: !5048, file: !5048, line: 26, type: !5648, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5776)
!5776 = !{!5777, !5778}
!5777 = !DILocalVariable(name: "nr", arg: 1, scope: !5775, file: !5048, line: 26, type: !136)
!5778 = !DILocalVariable(name: "addr", arg: 2, scope: !5775, file: !5048, line: 26, type: !4804)
!5779 = !DILocation(line: 26, column: 26, scope: !5775)
!5780 = !DILocation(line: 26, column: 54, scope: !5775)
!5781 = !DILocation(line: 28, column: 19, scope: !5775)
!5782 = !DILocation(line: 28, column: 26, scope: !5775)
!5783 = !DILocation(line: 28, column: 24, scope: !5775)
!5784 = !DILocation(line: 28, column: 2, scope: !5775)
!5785 = !DILocation(line: 29, column: 17, scope: !5775)
!5786 = !DILocation(line: 29, column: 21, scope: !5775)
!5787 = !DILocation(line: 29, column: 2, scope: !5775)
!5788 = !DILocation(line: 30, column: 1, scope: !5775)
!5789 = distinct !DISubprogram(name: "ml_combine_effects", scope: !3, file: !3, line: 240, type: !5790, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5792)
!5790 = !DISubroutineType(types: !5791)
!5791 = !{null, !149, !4832, !85}
!5792 = !{!5793, !5794, !5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5807, !5808, !5809, !5812, !5813, !5814, !5816, !5817, !5819, !5820, !5822, !5824, !5825, !5827}
!5793 = !DILocalVariable(name: "effect", arg: 1, scope: !5789, file: !3, line: 240, type: !149)
!5794 = !DILocalVariable(name: "state", arg: 2, scope: !5789, file: !3, line: 241, type: !4832)
!5795 = !DILocalVariable(name: "gain", arg: 3, scope: !5789, file: !3, line: 242, type: !85)
!5796 = !DILocalVariable(name: "new", scope: !5789, file: !3, line: 244, type: !149)
!5797 = !DILocalVariable(name: "strong", scope: !5789, file: !3, line: 245, type: !7)
!5798 = !DILocalVariable(name: "weak", scope: !5789, file: !3, line: 245, type: !7)
!5799 = !DILocalVariable(name: "i", scope: !5789, file: !3, line: 245, type: !7)
!5800 = !DILocalVariable(name: "x", scope: !5789, file: !3, line: 246, type: !85)
!5801 = !DILocalVariable(name: "y", scope: !5789, file: !3, line: 246, type: !85)
!5802 = !DILocalVariable(name: "level", scope: !5789, file: !3, line: 247, type: !1584)
!5803 = !DILocalVariable(name: "__UNIQUE_ID___val275", scope: !5804, file: !3, line: 263, type: !85)
!5804 = distinct !DILexicalBlock(scope: !5805, file: !3, line: 263, column: 4)
!5805 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 263, column: 4)
!5806 = distinct !DILexicalBlock(scope: !5789, file: !3, line: 249, column: 21)
!5807 = !DILocalVariable(name: "__UNIQUE_ID___lo276", scope: !5804, file: !3, line: 263, type: !85)
!5808 = !DILocalVariable(name: "__UNIQUE_ID___hi277", scope: !5804, file: !3, line: 263, type: !85)
!5809 = !DILocalVariable(name: "__UNIQUE_ID___val278", scope: !5810, file: !3, line: 265, type: !85)
!5810 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 265, column: 4)
!5811 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 265, column: 4)
!5812 = !DILocalVariable(name: "__UNIQUE_ID___lo279", scope: !5810, file: !3, line: 265, type: !85)
!5813 = !DILocalVariable(name: "__UNIQUE_ID___hi280", scope: !5810, file: !3, line: 265, type: !85)
!5814 = !DILocalVariable(name: "__UNIQUE_ID___x281", scope: !5815, file: !3, line: 285, type: !7)
!5815 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 285, column: 4)
!5816 = !DILocalVariable(name: "__UNIQUE_ID___y282", scope: !5815, file: !3, line: 285, type: !7)
!5817 = !DILocalVariable(name: "__UNIQUE_ID___x283", scope: !5818, file: !3, line: 288, type: !7)
!5818 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 288, column: 4)
!5819 = !DILocalVariable(name: "__UNIQUE_ID___y284", scope: !5818, file: !3, line: 288, type: !7)
!5820 = !DILocalVariable(name: "__x", scope: !5821, file: !3, line: 292, type: !159)
!5821 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 292, column: 29)
!5822 = !DILocalVariable(name: "__UNIQUE_ID___x285", scope: !5823, file: !3, line: 306, type: !7)
!5823 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 306, column: 4)
!5824 = !DILocalVariable(name: "__UNIQUE_ID___y286", scope: !5823, file: !3, line: 306, type: !7)
!5825 = !DILocalVariable(name: "__UNIQUE_ID___x287", scope: !5826, file: !3, line: 308, type: !7)
!5826 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 308, column: 4)
!5827 = !DILocalVariable(name: "__UNIQUE_ID___y288", scope: !5826, file: !3, line: 308, type: !7)
!5828 = !DILocation(line: 240, column: 50, scope: !5789)
!5829 = !DILocation(line: 241, column: 35, scope: !5789)
!5830 = !DILocation(line: 242, column: 15, scope: !5789)
!5831 = !DILocation(line: 244, column: 2, scope: !5789)
!5832 = !DILocation(line: 244, column: 20, scope: !5789)
!5833 = !DILocation(line: 244, column: 26, scope: !5789)
!5834 = !DILocation(line: 244, column: 33, scope: !5789)
!5835 = !DILocation(line: 245, column: 2, scope: !5789)
!5836 = !DILocation(line: 245, column: 15, scope: !5789)
!5837 = !DILocation(line: 245, column: 23, scope: !5789)
!5838 = !DILocation(line: 245, column: 29, scope: !5789)
!5839 = !DILocation(line: 246, column: 2, scope: !5789)
!5840 = !DILocation(line: 246, column: 6, scope: !5789)
!5841 = !DILocation(line: 246, column: 9, scope: !5789)
!5842 = !DILocation(line: 247, column: 2, scope: !5789)
!5843 = !DILocation(line: 247, column: 6, scope: !5789)
!5844 = !DILocation(line: 249, column: 10, scope: !5789)
!5845 = !DILocation(line: 249, column: 15, scope: !5789)
!5846 = !DILocation(line: 249, column: 2, scope: !5789)
!5847 = !DILocation(line: 251, column: 7, scope: !5806)
!5848 = !DILocation(line: 251, column: 12, scope: !5806)
!5849 = !DILocation(line: 251, column: 22, scope: !5806)
!5850 = !DILocation(line: 251, column: 28, scope: !5806)
!5851 = !DILocation(line: 251, column: 5, scope: !5806)
!5852 = !DILocation(line: 252, column: 37, scope: !5806)
!5853 = !DILocation(line: 253, column: 6, scope: !5806)
!5854 = !DILocation(line: 253, column: 11, scope: !5806)
!5855 = !DILocation(line: 253, column: 22, scope: !5806)
!5856 = !DILocation(line: 254, column: 7, scope: !5806)
!5857 = !DILocation(line: 254, column: 12, scope: !5806)
!5858 = !DILocation(line: 254, column: 23, scope: !5806)
!5859 = !DILocation(line: 252, column: 22, scope: !5806)
!5860 = !DILocation(line: 252, column: 11, scope: !5806)
!5861 = !DILocation(line: 252, column: 9, scope: !5806)
!5862 = !DILocation(line: 255, column: 17, scope: !5806)
!5863 = !DILocation(line: 255, column: 32, scope: !5806)
!5864 = !DILocation(line: 255, column: 7, scope: !5806)
!5865 = !DILocation(line: 255, column: 41, scope: !5806)
!5866 = !DILocation(line: 255, column: 39, scope: !5806)
!5867 = !DILocation(line: 255, column: 46, scope: !5806)
!5868 = !DILocation(line: 255, column: 5, scope: !5806)
!5869 = !DILocation(line: 256, column: 18, scope: !5806)
!5870 = !DILocation(line: 256, column: 17, scope: !5806)
!5871 = !DILocation(line: 256, column: 33, scope: !5806)
!5872 = !DILocation(line: 256, column: 7, scope: !5806)
!5873 = !DILocation(line: 256, column: 42, scope: !5806)
!5874 = !DILocation(line: 256, column: 40, scope: !5806)
!5875 = !DILocation(line: 256, column: 47, scope: !5806)
!5876 = !DILocation(line: 256, column: 5, scope: !5806)
!5877 = !DILocation(line: 263, column: 4, scope: !5804)
!5878 = !DILocation(line: 263, column: 4, scope: !5805)
!5879 = !DILocation(line: 263, column: 4, scope: !5806)
!5880 = !DILocation(line: 262, column: 3, scope: !5806)
!5881 = !DILocation(line: 262, column: 11, scope: !5806)
!5882 = !DILocation(line: 262, column: 18, scope: !5806)
!5883 = !DILocation(line: 262, column: 30, scope: !5806)
!5884 = !DILocation(line: 265, column: 4, scope: !5810)
!5885 = !DILocation(line: 265, column: 4, scope: !5811)
!5886 = !DILocation(line: 265, column: 4, scope: !5806)
!5887 = !DILocation(line: 264, column: 3, scope: !5806)
!5888 = !DILocation(line: 264, column: 11, scope: !5806)
!5889 = !DILocation(line: 264, column: 18, scope: !5806)
!5890 = !DILocation(line: 264, column: 28, scope: !5806)
!5891 = !DILocation(line: 266, column: 3, scope: !5806)
!5892 = !DILocation(line: 269, column: 17, scope: !5806)
!5893 = !DILocation(line: 269, column: 22, scope: !5806)
!5894 = !DILocation(line: 269, column: 31, scope: !5806)
!5895 = !DILocation(line: 269, column: 12, scope: !5806)
!5896 = !DILocation(line: 269, column: 50, scope: !5806)
!5897 = !DILocation(line: 269, column: 48, scope: !5806)
!5898 = !DILocation(line: 269, column: 55, scope: !5806)
!5899 = !DILocation(line: 269, column: 10, scope: !5806)
!5900 = !DILocation(line: 270, column: 15, scope: !5806)
!5901 = !DILocation(line: 270, column: 20, scope: !5806)
!5902 = !DILocation(line: 270, column: 29, scope: !5806)
!5903 = !DILocation(line: 270, column: 10, scope: !5806)
!5904 = !DILocation(line: 270, column: 46, scope: !5806)
!5905 = !DILocation(line: 270, column: 44, scope: !5806)
!5906 = !DILocation(line: 270, column: 51, scope: !5806)
!5907 = !DILocation(line: 270, column: 8, scope: !5806)
!5908 = !DILocation(line: 272, column: 7, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 272, column: 7)
!5910 = !DILocation(line: 272, column: 15, scope: !5909)
!5911 = !DILocation(line: 272, column: 24, scope: !5909)
!5912 = !DILocation(line: 272, column: 43, scope: !5909)
!5913 = !DILocation(line: 272, column: 41, scope: !5909)
!5914 = !DILocation(line: 272, column: 7, scope: !5806)
!5915 = !DILocation(line: 274, column: 5, scope: !5909)
!5916 = !DILocation(line: 274, column: 13, scope: !5909)
!5917 = !DILocation(line: 275, column: 5, scope: !5909)
!5918 = !DILocation(line: 275, column: 13, scope: !5909)
!5919 = !DILocation(line: 275, column: 22, scope: !5909)
!5920 = !DILocation(line: 276, column: 5, scope: !5909)
!5921 = !DILocation(line: 276, column: 10, scope: !5909)
!5922 = !DILocation(line: 276, column: 21, scope: !5909)
!5923 = !DILocation(line: 273, column: 24, scope: !5909)
!5924 = !DILocation(line: 273, column: 4, scope: !5909)
!5925 = !DILocation(line: 273, column: 12, scope: !5909)
!5926 = !DILocation(line: 273, column: 22, scope: !5909)
!5927 = !DILocation(line: 277, column: 12, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 277, column: 12)
!5929 = !DILocation(line: 277, column: 20, scope: !5928)
!5930 = !DILocation(line: 277, column: 29, scope: !5928)
!5931 = !DILocation(line: 277, column: 46, scope: !5928)
!5932 = !DILocation(line: 277, column: 44, scope: !5928)
!5933 = !DILocation(line: 277, column: 12, scope: !5909)
!5934 = !DILocation(line: 279, column: 5, scope: !5928)
!5935 = !DILocation(line: 279, column: 13, scope: !5928)
!5936 = !DILocation(line: 280, column: 5, scope: !5928)
!5937 = !DILocation(line: 280, column: 13, scope: !5928)
!5938 = !DILocation(line: 280, column: 22, scope: !5928)
!5939 = !DILocation(line: 281, column: 5, scope: !5928)
!5940 = !DILocation(line: 281, column: 10, scope: !5928)
!5941 = !DILocation(line: 281, column: 21, scope: !5928)
!5942 = !DILocation(line: 278, column: 24, scope: !5928)
!5943 = !DILocation(line: 278, column: 4, scope: !5928)
!5944 = !DILocation(line: 278, column: 12, scope: !5928)
!5945 = !DILocation(line: 278, column: 22, scope: !5928)
!5946 = !DILocation(line: 283, column: 4, scope: !5928)
!5947 = !DILocation(line: 283, column: 12, scope: !5928)
!5948 = !DILocation(line: 283, column: 22, scope: !5928)
!5949 = !DILocation(line: 285, column: 4, scope: !5815)
!5950 = !DILocation(line: 285, column: 4, scope: !5806)
!5951 = !DILocation(line: 284, column: 3, scope: !5806)
!5952 = !DILocation(line: 284, column: 11, scope: !5806)
!5953 = !DILocation(line: 284, column: 20, scope: !5806)
!5954 = !DILocation(line: 284, column: 37, scope: !5806)
!5955 = !DILocation(line: 288, column: 4, scope: !5818)
!5956 = !DILocation(line: 288, column: 4, scope: !5806)
!5957 = !DILocation(line: 287, column: 3, scope: !5806)
!5958 = !DILocation(line: 287, column: 11, scope: !5806)
!5959 = !DILocation(line: 287, column: 20, scope: !5806)
!5960 = !DILocation(line: 287, column: 35, scope: !5806)
!5961 = !DILocation(line: 289, column: 3, scope: !5806)
!5962 = !DILocation(line: 292, column: 22, scope: !5806)
!5963 = !DILocation(line: 292, column: 29, scope: !5821)
!5964 = !DILocation(line: 292, column: 29, scope: !5806)
!5965 = !DILocation(line: 293, column: 9, scope: !5806)
!5966 = !DILocation(line: 293, column: 14, scope: !5806)
!5967 = !DILocation(line: 293, column: 25, scope: !5806)
!5968 = !DILocation(line: 292, column: 7, scope: !5806)
!5969 = !DILocation(line: 292, column: 5, scope: !5806)
!5970 = !DILocation(line: 296, column: 7, scope: !5806)
!5971 = !DILocation(line: 296, column: 11, scope: !5806)
!5972 = !DILocation(line: 296, column: 9, scope: !5806)
!5973 = !DILocation(line: 296, column: 16, scope: !5806)
!5974 = !DILocation(line: 296, column: 5, scope: !5806)
!5975 = !DILocation(line: 298, column: 7, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 298, column: 7)
!5977 = !DILocation(line: 298, column: 15, scope: !5976)
!5978 = !DILocation(line: 298, column: 24, scope: !5976)
!5979 = !DILocation(line: 298, column: 43, scope: !5976)
!5980 = !DILocation(line: 298, column: 41, scope: !5976)
!5981 = !DILocation(line: 298, column: 7, scope: !5806)
!5982 = !DILocation(line: 300, column: 5, scope: !5976)
!5983 = !DILocation(line: 300, column: 13, scope: !5976)
!5984 = !DILocation(line: 301, column: 5, scope: !5976)
!5985 = !DILocation(line: 301, column: 13, scope: !5976)
!5986 = !DILocation(line: 301, column: 22, scope: !5976)
!5987 = !DILocation(line: 302, column: 5, scope: !5976)
!5988 = !DILocation(line: 302, column: 10, scope: !5976)
!5989 = !DILocation(line: 302, column: 21, scope: !5976)
!5990 = !DILocation(line: 299, column: 24, scope: !5976)
!5991 = !DILocation(line: 299, column: 4, scope: !5976)
!5992 = !DILocation(line: 299, column: 12, scope: !5976)
!5993 = !DILocation(line: 299, column: 22, scope: !5976)
!5994 = !DILocation(line: 304, column: 4, scope: !5976)
!5995 = !DILocation(line: 304, column: 12, scope: !5976)
!5996 = !DILocation(line: 304, column: 22, scope: !5976)
!5997 = !DILocation(line: 306, column: 4, scope: !5823)
!5998 = !DILocation(line: 306, column: 4, scope: !5806)
!5999 = !DILocation(line: 305, column: 3, scope: !5806)
!6000 = !DILocation(line: 305, column: 11, scope: !5806)
!6001 = !DILocation(line: 305, column: 20, scope: !5806)
!6002 = !DILocation(line: 305, column: 37, scope: !5806)
!6003 = !DILocation(line: 308, column: 4, scope: !5826)
!6004 = !DILocation(line: 308, column: 4, scope: !5806)
!6005 = !DILocation(line: 307, column: 3, scope: !5806)
!6006 = !DILocation(line: 307, column: 11, scope: !5806)
!6007 = !DILocation(line: 307, column: 20, scope: !5806)
!6008 = !DILocation(line: 307, column: 35, scope: !5806)
!6009 = !DILocation(line: 309, column: 3, scope: !5806)
!6010 = !DILocation(line: 312, column: 3, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 312, column: 3)
!6012 = !DILocation(line: 312, column: 3, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 312, column: 3)
!6014 = !DILocation(line: 313, column: 3, scope: !5806)
!6015 = !DILocation(line: 316, column: 1, scope: !5789)
!6016 = distinct !DISubprogram(name: "__instrument_read_write_bitop", scope: !5048, file: !5048, line: 64, type: !4802, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6017)
!6017 = !{!6018, !6019}
!6018 = !DILocalVariable(name: "nr", arg: 1, scope: !6016, file: !5048, line: 64, type: !909)
!6019 = !DILocalVariable(name: "addr", arg: 2, scope: !6016, file: !5048, line: 64, type: !4804)
!6020 = !DILocation(line: 64, column: 64, scope: !6016)
!6021 = !DILocation(line: 64, column: 92, scope: !6016)
!6022 = !DILocation(line: 84, column: 25, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6024, file: !5048, line: 83, column: 9)
!6024 = distinct !DILexicalBlock(scope: !6016, file: !5048, line: 66, column: 6)
!6025 = !DILocation(line: 84, column: 32, scope: !6023)
!6026 = !DILocation(line: 84, column: 30, scope: !6023)
!6027 = !DILocation(line: 84, column: 3, scope: !6023)
!6028 = !DILocation(line: 86, column: 1, scope: !6016)
!6029 = distinct !DISubprogram(name: "arch___test_and_set_bit", scope: !6030, file: !6030, line: 148, type: !5575, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6031)
!6030 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6031 = !{!6032, !6033, !6034}
!6032 = !DILocalVariable(name: "nr", arg: 1, scope: !6029, file: !6030, line: 148, type: !136)
!6033 = !DILocalVariable(name: "addr", arg: 2, scope: !6029, file: !6030, line: 148, type: !4804)
!6034 = !DILocalVariable(name: "oldbit", scope: !6029, file: !6030, line: 150, type: !631)
!6035 = !DILocation(line: 148, column: 39, scope: !6029)
!6036 = !DILocation(line: 148, column: 67, scope: !6029)
!6037 = !DILocation(line: 150, column: 2, scope: !6029)
!6038 = !DILocation(line: 150, column: 7, scope: !6029)
!6039 = !DILocation(line: 155, column: 8, scope: !6029)
!6040 = !DILocation(line: 155, column: 20, scope: !6029)
!6041 = !DILocation(line: 152, column: 2, scope: !6029)
!6042 = !{i64 2148094309, i64 2148094386}
!6043 = !DILocation(line: 156, column: 9, scope: !6029)
!6044 = !DILocation(line: 157, column: 1, scope: !6029)
!6045 = !DILocation(line: 156, column: 2, scope: !6029)
!6046 = distinct !DISubprogram(name: "instrument_read_write", scope: !6047, file: !6047, line: 52, type: !6048, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6053)
!6047 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6048 = !DISubroutineType(types: !6049)
!6049 = !{null, !6050, !951}
!6050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6051, size: 64)
!6051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6052)
!6052 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6053 = !{!6054, !6055}
!6054 = !DILocalVariable(name: "v", arg: 1, scope: !6046, file: !6047, line: 52, type: !6050)
!6055 = !DILocalVariable(name: "size", arg: 2, scope: !6046, file: !6047, line: 52, type: !951)
!6056 = !DILocation(line: 52, column: 72, scope: !6046)
!6057 = !DILocation(line: 52, column: 82, scope: !6046)
!6058 = !DILocation(line: 54, column: 20, scope: !6046)
!6059 = !DILocation(line: 54, column: 23, scope: !6046)
!6060 = !DILocation(line: 54, column: 2, scope: !6046)
!6061 = !DILocation(line: 55, column: 2, scope: !6046)
!6062 = !DILocation(line: 56, column: 1, scope: !6046)
!6063 = distinct !DISubprogram(name: "kasan_check_write", scope: !6064, file: !6064, line: 44, type: !6065, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6067)
!6064 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6065 = !DISubroutineType(types: !6066)
!6066 = !{!631, !6050, !7}
!6067 = !{!6068, !6069}
!6068 = !DILocalVariable(name: "p", arg: 1, scope: !6063, file: !6064, line: 44, type: !6050)
!6069 = !DILocalVariable(name: "size", arg: 2, scope: !6063, file: !6064, line: 44, type: !7)
!6070 = !DILocation(line: 44, column: 59, scope: !6063)
!6071 = !DILocation(line: 44, column: 75, scope: !6063)
!6072 = !DILocation(line: 46, column: 2, scope: !6063)
!6073 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6074, file: !6074, line: 229, type: !6075, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6077)
!6074 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6075 = !DISubroutineType(types: !6076)
!6076 = !{null, !6050, !951, !85}
!6077 = !{!6078, !6079, !6080}
!6078 = !DILocalVariable(name: "ptr", arg: 1, scope: !6073, file: !6074, line: 229, type: !6050)
!6079 = !DILocalVariable(name: "size", arg: 2, scope: !6073, file: !6074, line: 229, type: !951)
!6080 = !DILocalVariable(name: "type", arg: 3, scope: !6073, file: !6074, line: 230, type: !85)
!6081 = !DILocation(line: 229, column: 60, scope: !6073)
!6082 = !DILocation(line: 229, column: 72, scope: !6073)
!6083 = !DILocation(line: 230, column: 15, scope: !6073)
!6084 = !DILocation(line: 230, column: 23, scope: !6073)
!6085 = !DISubprogram(name: "_printk", scope: !6086, file: !6086, line: 153, type: !6087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6086 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6087 = !DISubroutineType(types: !6088)
!6088 = !{!85, !255, null}
!6089 = distinct !DISubprogram(name: "instrument_write", scope: !6047, file: !6047, line: 38, type: !6048, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6090)
!6090 = !{!6091, !6092}
!6091 = !DILocalVariable(name: "v", arg: 1, scope: !6089, file: !6047, line: 38, type: !6050)
!6092 = !DILocalVariable(name: "size", arg: 2, scope: !6089, file: !6047, line: 38, type: !951)
!6093 = !DILocation(line: 38, column: 67, scope: !6089)
!6094 = !DILocation(line: 38, column: 77, scope: !6089)
!6095 = !DILocation(line: 40, column: 20, scope: !6089)
!6096 = !DILocation(line: 40, column: 23, scope: !6089)
!6097 = !DILocation(line: 40, column: 2, scope: !6089)
!6098 = !DILocation(line: 41, column: 2, scope: !6089)
!6099 = !DILocation(line: 42, column: 1, scope: !6089)
!6100 = distinct !DISubprogram(name: "arch___clear_bit", scope: !6030, file: !6030, line: 92, type: !5648, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6101)
!6101 = !{!6102, !6103}
!6102 = !DILocalVariable(name: "nr", arg: 1, scope: !6100, file: !6030, line: 92, type: !136)
!6103 = !DILocalVariable(name: "addr", arg: 2, scope: !6100, file: !6030, line: 92, type: !4804)
!6104 = !DILocation(line: 92, column: 32, scope: !6100)
!6105 = !DILocation(line: 92, column: 60, scope: !6100)
!6106 = !DILocation(line: 94, column: 44, scope: !6100)
!6107 = !DILocation(line: 94, column: 56, scope: !6100)
!6108 = !DILocation(line: 94, column: 2, scope: !6100)
!6109 = !{i64 2148089514}
!6110 = !DILocation(line: 95, column: 1, scope: !6100)
!6111 = distinct !DISubprogram(name: "arch___test_and_clear_bit", scope: !6030, file: !6030, line: 174, type: !5575, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6112)
!6112 = !{!6113, !6114, !6115}
!6113 = !DILocalVariable(name: "nr", arg: 1, scope: !6111, file: !6030, line: 174, type: !136)
!6114 = !DILocalVariable(name: "addr", arg: 2, scope: !6111, file: !6030, line: 174, type: !4804)
!6115 = !DILocalVariable(name: "oldbit", scope: !6111, file: !6030, line: 176, type: !631)
!6116 = !DILocation(line: 174, column: 41, scope: !6111)
!6117 = !DILocation(line: 174, column: 69, scope: !6111)
!6118 = !DILocation(line: 176, column: 2, scope: !6111)
!6119 = !DILocation(line: 176, column: 7, scope: !6111)
!6120 = !DILocation(line: 181, column: 10, scope: !6111)
!6121 = !DILocation(line: 181, column: 22, scope: !6111)
!6122 = !DILocation(line: 178, column: 2, scope: !6111)
!6123 = !{i64 2148097004, i64 2148097081}
!6124 = !DILocation(line: 182, column: 9, scope: !6111)
!6125 = !DILocation(line: 183, column: 1, scope: !6111)
!6126 = !DILocation(line: 182, column: 2, scope: !6111)
!6127 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5731, file: !5731, line: 458, type: !5732, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6128)
!6128 = !{!6129}
!6129 = !DILocalVariable(name: "m", arg: 1, scope: !6127, file: !5731, line: 458, type: !3840)
!6130 = !DILocation(line: 458, column: 66, scope: !6127)
!6131 = !DILocation(line: 460, column: 10, scope: !6127)
!6132 = !DILocation(line: 460, column: 12, scope: !6127)
!6133 = !DILocation(line: 460, column: 34, scope: !6127)
!6134 = !DILocation(line: 460, column: 39, scope: !6127)
!6135 = !DILocation(line: 460, column: 2, scope: !6127)
!6136 = !DISubprogram(name: "__msecs_to_jiffies", scope: !5731, file: !5731, line: 451, type: !5732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6137 = distinct !DISubprogram(name: "arch___set_bit", scope: !6030, file: !6030, line: 66, type: !5648, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6138)
!6138 = !{!6139, !6140}
!6139 = !DILocalVariable(name: "nr", arg: 1, scope: !6137, file: !6030, line: 66, type: !136)
!6140 = !DILocalVariable(name: "addr", arg: 2, scope: !6137, file: !6030, line: 66, type: !4804)
!6141 = !DILocation(line: 66, column: 30, scope: !6137)
!6142 = !DILocation(line: 66, column: 58, scope: !6137)
!6143 = !DILocation(line: 68, column: 44, scope: !6137)
!6144 = !DILocation(line: 68, column: 56, scope: !6137)
!6145 = !DILocation(line: 68, column: 2, scope: !6137)
!6146 = !{i64 2148087981}
!6147 = !DILocation(line: 69, column: 1, scope: !6137)
!6148 = distinct !DISubprogram(name: "fixp_new16", scope: !3, file: !3, line: 226, type: !6149, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6151)
!6149 = !DISubroutineType(types: !6150)
!6150 = !{!1584, !1584}
!6151 = !{!6152}
!6152 = !DILocalVariable(name: "a", arg: 1, scope: !6148, file: !3, line: 226, type: !1584)
!6153 = !DILocation(line: 226, column: 34, scope: !6148)
!6154 = !DILocation(line: 228, column: 15, scope: !6148)
!6155 = !DILocation(line: 228, column: 10, scope: !6148)
!6156 = !DILocation(line: 228, column: 18, scope: !6148)
!6157 = !DILocation(line: 228, column: 9, scope: !6148)
!6158 = !DILocation(line: 228, column: 2, scope: !6148)
!6159 = distinct !DISubprogram(name: "apply_envelope", scope: !3, file: !3, line: 149, type: !6160, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6163)
!6160 = !DISubroutineType(types: !6161)
!6161 = !{!85, !4832, !85, !6162}
!6162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!6163 = !{!6164, !6165, !6166, !6167, !6168, !6169, !6170, !6171, !6172, !6173, !6177, !6178, !6182, !6183}
!6164 = !DILocalVariable(name: "state", arg: 1, scope: !6159, file: !3, line: 149, type: !4832)
!6165 = !DILocalVariable(name: "value", arg: 2, scope: !6159, file: !3, line: 149, type: !85)
!6166 = !DILocalVariable(name: "envelope", arg: 3, scope: !6159, file: !3, line: 150, type: !6162)
!6167 = !DILocalVariable(name: "effect", scope: !6159, file: !3, line: 152, type: !149)
!6168 = !DILocalVariable(name: "now", scope: !6159, file: !3, line: 153, type: !136)
!6169 = !DILocalVariable(name: "time_from_level", scope: !6159, file: !3, line: 154, type: !85)
!6170 = !DILocalVariable(name: "time_of_envelope", scope: !6159, file: !3, line: 155, type: !85)
!6171 = !DILocalVariable(name: "envelope_level", scope: !6159, file: !3, line: 156, type: !85)
!6172 = !DILocalVariable(name: "difference", scope: !6159, file: !3, line: 157, type: !85)
!6173 = !DILocalVariable(name: "__UNIQUE_ID___x271", scope: !6174, file: !3, line: 166, type: !332)
!6174 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 166, column: 20)
!6175 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 161, column: 65)
!6176 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 159, column: 6)
!6177 = !DILocalVariable(name: "__UNIQUE_ID___y272", scope: !6174, file: !3, line: 166, type: !332)
!6178 = !DILocalVariable(name: "__UNIQUE_ID___x273", scope: !6179, file: !3, line: 174, type: !332)
!6179 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 174, column: 20)
!6180 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 171, column: 40)
!6181 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 168, column: 13)
!6182 = !DILocalVariable(name: "__UNIQUE_ID___y274", scope: !6179, file: !3, line: 174, type: !332)
!6183 = !DILocalVariable(name: "__x", scope: !6184, file: !3, line: 178, type: !85)
!6184 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 178, column: 15)
!6185 = !DILocation(line: 149, column: 51, scope: !6159)
!6186 = !DILocation(line: 149, column: 62, scope: !6159)
!6187 = !DILocation(line: 150, column: 26, scope: !6159)
!6188 = !DILocation(line: 152, column: 2, scope: !6159)
!6189 = !DILocation(line: 152, column: 20, scope: !6159)
!6190 = !DILocation(line: 152, column: 29, scope: !6159)
!6191 = !DILocation(line: 152, column: 36, scope: !6159)
!6192 = !DILocation(line: 153, column: 2, scope: !6159)
!6193 = !DILocation(line: 153, column: 16, scope: !6159)
!6194 = !DILocation(line: 153, column: 22, scope: !6159)
!6195 = !DILocation(line: 154, column: 2, scope: !6159)
!6196 = !DILocation(line: 154, column: 6, scope: !6159)
!6197 = !DILocation(line: 155, column: 2, scope: !6159)
!6198 = !DILocation(line: 155, column: 6, scope: !6159)
!6199 = !DILocation(line: 156, column: 2, scope: !6159)
!6200 = !DILocation(line: 156, column: 6, scope: !6159)
!6201 = !DILocation(line: 157, column: 2, scope: !6159)
!6202 = !DILocation(line: 157, column: 6, scope: !6159)
!6203 = !DILocation(line: 159, column: 6, scope: !6176)
!6204 = !DILocation(line: 159, column: 16, scope: !6176)
!6205 = !DILocation(line: 159, column: 30, scope: !6176)
!6206 = !DILocation(line: 160, column: 6, scope: !6176)
!6207 = !DILocation(line: 159, column: 6, scope: !6159)
!6208 = !DILocation(line: 162, column: 3, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6210, file: !3, line: 162, column: 3)
!6210 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 162, column: 3)
!6211 = !DILocation(line: 162, column: 3, scope: !6210)
!6212 = !DILocation(line: 164, column: 38, scope: !6175)
!6213 = !DILocation(line: 164, column: 44, scope: !6175)
!6214 = !DILocation(line: 164, column: 51, scope: !6175)
!6215 = !DILocation(line: 164, column: 42, scope: !6175)
!6216 = !DILocation(line: 164, column: 21, scope: !6175)
!6217 = !DILocation(line: 164, column: 19, scope: !6175)
!6218 = !DILocation(line: 165, column: 22, scope: !6175)
!6219 = !DILocation(line: 165, column: 32, scope: !6175)
!6220 = !DILocation(line: 165, column: 20, scope: !6175)
!6221 = !DILocation(line: 166, column: 20, scope: !6174)
!6222 = !DILocation(line: 166, column: 20, scope: !6175)
!6223 = !DILocation(line: 166, column: 18, scope: !6175)
!6224 = !DILocation(line: 168, column: 2, scope: !6175)
!6225 = !DILocation(line: 168, column: 13, scope: !6181)
!6226 = !DILocation(line: 168, column: 23, scope: !6181)
!6227 = !DILocation(line: 168, column: 35, scope: !6181)
!6228 = !DILocation(line: 168, column: 38, scope: !6181)
!6229 = !DILocation(line: 168, column: 46, scope: !6181)
!6230 = !DILocation(line: 168, column: 53, scope: !6181)
!6231 = !DILocation(line: 168, column: 60, scope: !6181)
!6232 = !DILocation(line: 169, column: 6, scope: !6181)
!6233 = !DILocation(line: 170, column: 68, scope: !6181)
!6234 = !DILocation(line: 171, column: 6, scope: !6181)
!6235 = !DILocation(line: 168, column: 13, scope: !6176)
!6236 = !DILocation(line: 172, column: 38, scope: !6180)
!6237 = !DILocation(line: 172, column: 45, scope: !6180)
!6238 = !DILocation(line: 172, column: 55, scope: !6180)
!6239 = !DILocation(line: 172, column: 53, scope: !6180)
!6240 = !DILocation(line: 172, column: 21, scope: !6180)
!6241 = !DILocation(line: 172, column: 19, scope: !6180)
!6242 = !DILocation(line: 173, column: 22, scope: !6180)
!6243 = !DILocation(line: 173, column: 32, scope: !6180)
!6244 = !DILocation(line: 173, column: 20, scope: !6180)
!6245 = !DILocation(line: 174, column: 20, scope: !6179)
!6246 = !DILocation(line: 174, column: 20, scope: !6180)
!6247 = !DILocation(line: 174, column: 18, scope: !6180)
!6248 = !DILocation(line: 175, column: 2, scope: !6180)
!6249 = !DILocation(line: 176, column: 10, scope: !6181)
!6250 = !DILocation(line: 176, column: 3, scope: !6181)
!6251 = !DILocation(line: 178, column: 15, scope: !6184)
!6252 = !DILocation(line: 178, column: 15, scope: !6159)
!6253 = !DILocation(line: 178, column: 28, scope: !6159)
!6254 = !DILocation(line: 178, column: 26, scope: !6159)
!6255 = !DILocation(line: 178, column: 13, scope: !6159)
!6256 = !DILocation(line: 180, column: 2, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6258, file: !3, line: 180, column: 2)
!6258 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 180, column: 2)
!6259 = !DILocation(line: 180, column: 2, scope: !6258)
!6260 = !DILocation(line: 181, column: 2, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 181, column: 2)
!6262 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 181, column: 2)
!6263 = !DILocation(line: 181, column: 2, scope: !6262)
!6264 = !DILocation(line: 182, column: 2, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6266, file: !3, line: 182, column: 2)
!6266 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 182, column: 2)
!6267 = !DILocation(line: 182, column: 2, scope: !6266)
!6268 = !DILocation(line: 184, column: 15, scope: !6159)
!6269 = !DILocation(line: 184, column: 28, scope: !6159)
!6270 = !DILocation(line: 184, column: 26, scope: !6159)
!6271 = !DILocation(line: 184, column: 46, scope: !6159)
!6272 = !DILocation(line: 184, column: 44, scope: !6159)
!6273 = !DILocation(line: 184, column: 13, scope: !6159)
!6274 = !DILocation(line: 186, column: 2, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 186, column: 2)
!6276 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 186, column: 2)
!6277 = !DILocation(line: 186, column: 2, scope: !6276)
!6278 = !DILocation(line: 188, column: 9, scope: !6159)
!6279 = !DILocation(line: 188, column: 15, scope: !6159)
!6280 = !DILocation(line: 189, column: 5, scope: !6159)
!6281 = !DILocation(line: 189, column: 18, scope: !6159)
!6282 = !DILocation(line: 189, column: 16, scope: !6159)
!6283 = !DILocation(line: 189, column: 3, scope: !6159)
!6284 = !DILocation(line: 189, column: 37, scope: !6159)
!6285 = !DILocation(line: 189, column: 50, scope: !6159)
!6286 = !DILocation(line: 189, column: 48, scope: !6159)
!6287 = !DILocation(line: 188, column: 2, scope: !6159)
!6288 = !DILocation(line: 190, column: 1, scope: !6159)
!6289 = distinct !DISubprogram(name: "fixp_mult", scope: !3, file: !3, line: 231, type: !6290, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6292)
!6290 = !DISubroutineType(types: !6291)
!6291 = !{!1584, !1584, !1584}
!6292 = !{!6293, !6294}
!6293 = !DILocalVariable(name: "a", arg: 1, scope: !6289, file: !3, line: 231, type: !1584)
!6294 = !DILocalVariable(name: "b", arg: 2, scope: !6289, file: !3, line: 231, type: !1584)
!6295 = !DILocation(line: 231, column: 33, scope: !6289)
!6296 = !DILocation(line: 231, column: 40, scope: !6289)
!6297 = !DILocation(line: 233, column: 12, scope: !6289)
!6298 = !DILocation(line: 233, column: 7, scope: !6289)
!6299 = !DILocation(line: 233, column: 14, scope: !6289)
!6300 = !DILocation(line: 233, column: 23, scope: !6289)
!6301 = !DILocation(line: 233, column: 6, scope: !6289)
!6302 = !DILocation(line: 233, column: 4, scope: !6289)
!6303 = !DILocation(line: 234, column: 16, scope: !6289)
!6304 = !DILocation(line: 234, column: 20, scope: !6289)
!6305 = !DILocation(line: 234, column: 18, scope: !6289)
!6306 = !DILocation(line: 234, column: 24, scope: !6289)
!6307 = !DILocation(line: 234, column: 9, scope: !6289)
!6308 = !DILocation(line: 234, column: 2, scope: !6289)
!6309 = distinct !DISubprogram(name: "fixp_sin32", scope: !4600, file: !4600, line: 73, type: !6310, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6312)
!6310 = !DISubroutineType(types: !6311)
!6311 = !{!558, !85}
!6312 = !{!6313}
!6313 = !DILocalVariable(name: "degrees", arg: 1, scope: !6309, file: !4600, line: 73, type: !85)
!6314 = !DILocation(line: 73, column: 34, scope: !6309)
!6315 = !DILocation(line: 75, column: 13, scope: !6309)
!6316 = !DILocation(line: 75, column: 21, scope: !6309)
!6317 = !DILocation(line: 75, column: 27, scope: !6309)
!6318 = !DILocation(line: 75, column: 34, scope: !6309)
!6319 = !DILocation(line: 75, column: 10, scope: !6309)
!6320 = !DILocation(line: 77, column: 22, scope: !6309)
!6321 = !DILocation(line: 77, column: 9, scope: !6309)
!6322 = !DILocation(line: 77, column: 2, scope: !6309)
!6323 = distinct !DISubprogram(name: "ml_calculate_direction", scope: !3, file: !3, line: 213, type: !6324, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6326)
!6324 = !DISubroutineType(types: !6325)
!6325 = !{!332, !332, !332, !332, !332}
!6326 = !{!6327, !6328, !6329, !6330}
!6327 = !DILocalVariable(name: "direction", arg: 1, scope: !6323, file: !3, line: 213, type: !332)
!6328 = !DILocalVariable(name: "force", arg: 2, scope: !6323, file: !3, line: 213, type: !332)
!6329 = !DILocalVariable(name: "new_direction", arg: 3, scope: !6323, file: !3, line: 214, type: !332)
!6330 = !DILocalVariable(name: "new_force", arg: 4, scope: !6323, file: !3, line: 214, type: !332)
!6331 = !DILocation(line: 213, column: 39, scope: !6323)
!6332 = !DILocation(line: 213, column: 54, scope: !6323)
!6333 = !DILocation(line: 214, column: 11, scope: !6323)
!6334 = !DILocation(line: 214, column: 30, scope: !6323)
!6335 = !DILocation(line: 216, column: 7, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6323, file: !3, line: 216, column: 6)
!6337 = !DILocation(line: 216, column: 6, scope: !6323)
!6338 = !DILocation(line: 217, column: 10, scope: !6336)
!6339 = !DILocation(line: 217, column: 3, scope: !6336)
!6340 = !DILocation(line: 218, column: 7, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6323, file: !3, line: 218, column: 6)
!6342 = !DILocation(line: 218, column: 6, scope: !6323)
!6343 = !DILocation(line: 219, column: 10, scope: !6341)
!6344 = !DILocation(line: 219, column: 3, scope: !6341)
!6345 = !DILocation(line: 220, column: 17, scope: !6323)
!6346 = !DILocation(line: 220, column: 27, scope: !6323)
!6347 = !DILocation(line: 220, column: 35, scope: !6323)
!6348 = !DILocation(line: 220, column: 33, scope: !6323)
!6349 = !DILocation(line: 221, column: 5, scope: !6323)
!6350 = !DILocation(line: 221, column: 19, scope: !6323)
!6351 = !DILocation(line: 221, column: 27, scope: !6323)
!6352 = !DILocation(line: 221, column: 25, scope: !6323)
!6353 = !DILocation(line: 220, column: 41, scope: !6323)
!6354 = !DILocation(line: 222, column: 4, scope: !6323)
!6355 = !DILocation(line: 222, column: 12, scope: !6323)
!6356 = !DILocation(line: 222, column: 10, scope: !6323)
!6357 = !DILocation(line: 221, column: 38, scope: !6323)
!6358 = !DILocation(line: 222, column: 24, scope: !6323)
!6359 = !DILocation(line: 220, column: 9, scope: !6323)
!6360 = !DILocation(line: 220, column: 2, scope: !6323)
!6361 = !DILocation(line: 223, column: 1, scope: !6323)
!6362 = !DISubprogram(name: "jiffies_to_msecs", scope: !5731, file: !5731, line: 434, type: !6363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6363 = !DISubroutineType(types: !6364)
!6364 = !{!7, !139}
!6365 = distinct !DISubprogram(name: "__fixp_sin32", scope: !4600, file: !4600, line: 49, type: !6310, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6366)
!6366 = !{!6367, !6368, !6369}
!6367 = !DILocalVariable(name: "degrees", arg: 1, scope: !6365, file: !4600, line: 49, type: !85)
!6368 = !DILocalVariable(name: "ret", scope: !6365, file: !4600, line: 51, type: !558)
!6369 = !DILocalVariable(name: "negative", scope: !6365, file: !4600, line: 52, type: !631)
!6370 = !DILocation(line: 49, column: 36, scope: !6365)
!6371 = !DILocation(line: 51, column: 2, scope: !6365)
!6372 = !DILocation(line: 51, column: 6, scope: !6365)
!6373 = !DILocation(line: 52, column: 2, scope: !6365)
!6374 = !DILocation(line: 52, column: 7, scope: !6365)
!6375 = !DILocation(line: 54, column: 6, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6365, file: !4600, line: 54, column: 6)
!6377 = !DILocation(line: 54, column: 14, scope: !6376)
!6378 = !DILocation(line: 54, column: 6, scope: !6365)
!6379 = !DILocation(line: 55, column: 12, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6376, file: !4600, line: 54, column: 21)
!6381 = !DILocation(line: 56, column: 11, scope: !6380)
!6382 = !DILocation(line: 57, column: 2, scope: !6380)
!6383 = !DILocation(line: 58, column: 6, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6365, file: !4600, line: 58, column: 6)
!6385 = !DILocation(line: 58, column: 14, scope: !6384)
!6386 = !DILocation(line: 58, column: 6, scope: !6365)
!6387 = !DILocation(line: 59, column: 19, scope: !6384)
!6388 = !DILocation(line: 59, column: 17, scope: !6384)
!6389 = !DILocation(line: 59, column: 11, scope: !6384)
!6390 = !DILocation(line: 59, column: 3, scope: !6384)
!6391 = !DILocation(line: 61, column: 18, scope: !6365)
!6392 = !DILocation(line: 61, column: 8, scope: !6365)
!6393 = !DILocation(line: 61, column: 6, scope: !6365)
!6394 = !DILocation(line: 63, column: 9, scope: !6365)
!6395 = !DILocation(line: 63, column: 21, scope: !6365)
!6396 = !DILocation(line: 63, column: 20, scope: !6365)
!6397 = !DILocation(line: 63, column: 27, scope: !6365)
!6398 = !DILocation(line: 64, column: 1, scope: !6365)
!6399 = !DILocation(line: 63, column: 2, scope: !6365)
!6400 = distinct !DISubprogram(name: "calculate_next_time", scope: !3, file: !3, line: 74, type: !6401, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6403)
!6401 = !DISubroutineType(types: !6402)
!6402 = !{!136, !4832}
!6403 = !{!6404, !6405, !6406, !6407, !6408}
!6404 = !DILocalVariable(name: "state", arg: 1, scope: !6400, file: !3, line: 74, type: !4832)
!6405 = !DILocalVariable(name: "envelope", scope: !6400, file: !3, line: 76, type: !4609)
!6406 = !DILocalVariable(name: "attack_stop", scope: !6400, file: !3, line: 77, type: !136)
!6407 = !DILocalVariable(name: "fade_start", scope: !6400, file: !3, line: 77, type: !136)
!6408 = !DILocalVariable(name: "next_fade", scope: !6400, file: !3, line: 77, type: !136)
!6409 = !DILocation(line: 74, column: 66, scope: !6400)
!6410 = !DILocation(line: 76, column: 2, scope: !6400)
!6411 = !DILocation(line: 76, column: 28, scope: !6400)
!6412 = !DILocation(line: 76, column: 52, scope: !6400)
!6413 = !DILocation(line: 76, column: 59, scope: !6400)
!6414 = !DILocation(line: 76, column: 39, scope: !6400)
!6415 = !DILocation(line: 77, column: 2, scope: !6400)
!6416 = !DILocation(line: 77, column: 16, scope: !6400)
!6417 = !DILocation(line: 77, column: 29, scope: !6400)
!6418 = !DILocation(line: 77, column: 41, scope: !6400)
!6419 = !DILocation(line: 79, column: 6, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6400, file: !3, line: 79, column: 6)
!6421 = !DILocation(line: 79, column: 16, scope: !6420)
!6422 = !DILocation(line: 79, column: 6, scope: !6400)
!6423 = !DILocation(line: 80, column: 17, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 79, column: 31)
!6425 = !DILocation(line: 80, column: 24, scope: !6424)
!6426 = !DILocation(line: 81, column: 21, scope: !6424)
!6427 = !DILocation(line: 81, column: 31, scope: !6424)
!6428 = !DILocation(line: 81, column: 4, scope: !6424)
!6429 = !DILocation(line: 80, column: 32, scope: !6424)
!6430 = !DILocation(line: 80, column: 15, scope: !6424)
!6431 = !DILocation(line: 82, column: 7, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 82, column: 7)
!6433 = !DILocation(line: 82, column: 7, scope: !6424)
!6434 = !DILocation(line: 83, column: 11, scope: !6432)
!6435 = !DILocation(line: 83, column: 18, scope: !6432)
!6436 = !DILocation(line: 84, column: 6, scope: !6432)
!6437 = !DILocation(line: 83, column: 25, scope: !6432)
!6438 = !DILocation(line: 83, column: 4, scope: !6432)
!6439 = !DILocation(line: 85, column: 2, scope: !6424)
!6440 = !DILocation(line: 87, column: 6, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6400, file: !3, line: 87, column: 6)
!6442 = !DILocation(line: 87, column: 13, scope: !6441)
!6443 = !DILocation(line: 87, column: 21, scope: !6441)
!6444 = !DILocation(line: 87, column: 28, scope: !6441)
!6445 = !DILocation(line: 87, column: 6, scope: !6400)
!6446 = !DILocation(line: 88, column: 7, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6448, file: !3, line: 88, column: 7)
!6448 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 87, column: 36)
!6449 = !DILocation(line: 88, column: 17, scope: !6447)
!6450 = !DILocation(line: 88, column: 7, scope: !6448)
!6451 = !DILocation(line: 90, column: 17, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6447, file: !3, line: 88, column: 30)
!6453 = !DILocation(line: 90, column: 24, scope: !6452)
!6454 = !DILocation(line: 91, column: 23, scope: !6452)
!6455 = !DILocation(line: 91, column: 33, scope: !6452)
!6456 = !DILocation(line: 91, column: 6, scope: !6452)
!6457 = !DILocation(line: 90, column: 32, scope: !6452)
!6458 = !DILocation(line: 90, column: 15, scope: !6452)
!6459 = !DILocation(line: 93, column: 8, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6452, file: !3, line: 93, column: 8)
!6461 = !DILocation(line: 93, column: 8, scope: !6452)
!6462 = !DILocation(line: 94, column: 12, scope: !6460)
!6463 = !DILocation(line: 94, column: 5, scope: !6460)
!6464 = !DILocation(line: 97, column: 16, scope: !6452)
!6465 = !DILocation(line: 97, column: 23, scope: !6452)
!6466 = !DILocation(line: 98, column: 6, scope: !6452)
!6467 = !DILocation(line: 97, column: 30, scope: !6452)
!6468 = !DILocation(line: 97, column: 14, scope: !6452)
!6469 = !DILocation(line: 99, column: 8, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6452, file: !3, line: 99, column: 8)
!6471 = !DILocation(line: 99, column: 8, scope: !6452)
!6472 = !DILocation(line: 100, column: 12, scope: !6470)
!6473 = !DILocation(line: 100, column: 5, scope: !6470)
!6474 = !DILocation(line: 101, column: 3, scope: !6452)
!6475 = !DILocation(line: 103, column: 10, scope: !6448)
!6476 = !DILocation(line: 103, column: 17, scope: !6448)
!6477 = !DILocation(line: 103, column: 3, scope: !6448)
!6478 = !DILocation(line: 106, column: 9, scope: !6400)
!6479 = !DILocation(line: 106, column: 16, scope: !6400)
!6480 = !DILocation(line: 106, column: 2, scope: !6400)
!6481 = !DILocation(line: 107, column: 1, scope: !6400)
!6482 = distinct !DISubprogram(name: "del_timer", scope: !231, file: !231, line: 211, type: !6483, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6485)
!6483 = !DISubroutineType(types: !6484)
!6484 = !{!85, !245}
!6485 = !{!6486}
!6486 = !DILocalVariable(name: "timer", arg: 1, scope: !6482, file: !231, line: 211, type: !245)
!6487 = !DILocation(line: 211, column: 48, scope: !6482)
!6488 = !DILocation(line: 213, column: 22, scope: !6482)
!6489 = !DILocation(line: 213, column: 9, scope: !6482)
!6490 = !DILocation(line: 213, column: 2, scope: !6482)
!6491 = !DISubprogram(name: "mod_timer", scope: !231, file: !231, line: 172, type: !6492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6492 = !DISubroutineType(types: !6493)
!6493 = !{!85, !245, !136}
!6494 = !DILocation(line: 55, column: 71, scope: !4606)
!6495 = !DILocation(line: 59, column: 10, scope: !4606)
!6496 = !DILocation(line: 59, column: 18, scope: !4606)
!6497 = !DILocation(line: 59, column: 2, scope: !4606)
!6498 = !DILocation(line: 61, column: 11, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 59, column: 24)
!6500 = !DILocation(line: 61, column: 19, scope: !6499)
!6501 = !DILocation(line: 61, column: 30, scope: !6499)
!6502 = !DILocation(line: 61, column: 3, scope: !6499)
!6503 = !DILocation(line: 64, column: 11, scope: !6499)
!6504 = !DILocation(line: 64, column: 19, scope: !6499)
!6505 = !DILocation(line: 64, column: 30, scope: !6499)
!6506 = !DILocation(line: 64, column: 3, scope: !6499)
!6507 = !DILocation(line: 67, column: 3, scope: !6499)
!6508 = !DILocation(line: 69, column: 1, scope: !4606)
!6509 = !DISubprogram(name: "timer_delete", scope: !231, file: !231, line: 186, type: !6483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6510 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5280, file: !5280, line: 43, type: !6511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6511 = !DISubroutineType(types: !6512)
!6512 = !{null, !5283, !136}
!6513 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6047, file: !6047, line: 80, type: !6048, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6514)
!6514 = !{!6515, !6516}
!6515 = !DILocalVariable(name: "v", arg: 1, scope: !6513, file: !6047, line: 80, type: !6050)
!6516 = !DILocalVariable(name: "size", arg: 2, scope: !6513, file: !6047, line: 80, type: !951)
!6517 = !DILocation(line: 80, column: 74, scope: !6513)
!6518 = !DILocation(line: 80, column: 84, scope: !6513)
!6519 = !DILocation(line: 82, column: 20, scope: !6513)
!6520 = !DILocation(line: 82, column: 23, scope: !6513)
!6521 = !DILocation(line: 82, column: 2, scope: !6513)
!6522 = !DILocation(line: 83, column: 2, scope: !6513)
!6523 = !DILocation(line: 84, column: 1, scope: !6513)
!6524 = distinct !DISubprogram(name: "arch_set_bit", scope: !6030, file: !6030, line: 52, type: !4802, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6525)
!6525 = !{!6526, !6527}
!6526 = !DILocalVariable(name: "nr", arg: 1, scope: !6524, file: !6030, line: 52, type: !909)
!6527 = !DILocalVariable(name: "addr", arg: 2, scope: !6524, file: !6030, line: 52, type: !4804)
!6528 = !DILocation(line: 52, column: 19, scope: !6524)
!6529 = !DILocation(line: 52, column: 47, scope: !6524)
!6530 = !DILocation(line: 54, column: 27, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6524, file: !6030, line: 54, column: 6)
!6532 = !DILocation(line: 54, column: 6, scope: !6531)
!6533 = !DILocation(line: 54, column: 6, scope: !6524)
!6534 = !DILocation(line: 56, column: 6, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6531, file: !6030, line: 54, column: 32)
!6536 = !DILocation(line: 57, column: 12, scope: !6535)
!6537 = !DILocation(line: 55, column: 3, scope: !6535)
!6538 = !{i64 2148087055, i64 2148087094, i64 2148087115, i64 2148087152, i64 2148087175, i64 2148087045}
!6539 = !DILocation(line: 59, column: 2, scope: !6535)
!6540 = !DILocation(line: 61, column: 8, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6531, file: !6030, line: 59, column: 9)
!6542 = !DILocation(line: 61, column: 32, scope: !6541)
!6543 = !DILocation(line: 60, column: 3, scope: !6541)
!6544 = !{i64 2148087340, i64 2148087379, i64 2148087400, i64 2148087437, i64 2148087460, i64 2148087330}
!6545 = !DILocation(line: 63, column: 1, scope: !6524)
!6546 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5285, file: !5285, line: 374, type: !6547, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6549)
!6547 = !DISubroutineType(types: !6548)
!6548 = !{null, !5288}
!6549 = !{!6550}
!6550 = !DILocalVariable(name: "lock", arg: 1, scope: !6546, file: !5285, line: 374, type: !5288)
!6551 = !DILocation(line: 374, column: 55, scope: !6546)
!6552 = !DILocation(line: 376, column: 2, scope: !6546)
!6553 = !DILocation(line: 377, column: 1, scope: !6546)
!6554 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5285, file: !5285, line: 399, type: !6547, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6555)
!6555 = !{!6556}
!6556 = !DILocalVariable(name: "lock", arg: 1, scope: !6554, file: !5285, line: 399, type: !5288)
!6557 = !DILocation(line: 399, column: 57, scope: !6554)
!6558 = !DILocation(line: 401, column: 2, scope: !6554)
!6559 = !DILocation(line: 402, column: 1, scope: !6554)
!6560 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5280, file: !5280, line: 29, type: !6561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6561 = !DISubroutineType(types: !6562)
!6562 = !{null, !5283}
!6563 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5280, file: !5280, line: 41, type: !6561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6564 = distinct !DISubprogram(name: "del_timer_sync", scope: !231, file: !231, line: 198, type: !6483, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6565)
!6565 = !{!6566}
!6566 = !DILocalVariable(name: "timer", arg: 1, scope: !6564, file: !231, line: 198, type: !245)
!6567 = !DILocation(line: 198, column: 53, scope: !6564)
!6568 = !DILocation(line: 200, column: 27, scope: !6564)
!6569 = !DILocation(line: 200, column: 9, scope: !6564)
!6570 = !DILocation(line: 200, column: 2, scope: !6564)
!6571 = !DISubprogram(name: "timer_delete_sync", scope: !231, file: !231, line: 185, type: !6483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6572 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6047, file: !6047, line: 66, type: !6048, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6573)
!6573 = !{!6574, !6575}
!6574 = !DILocalVariable(name: "v", arg: 1, scope: !6572, file: !6047, line: 66, type: !6050)
!6575 = !DILocalVariable(name: "size", arg: 2, scope: !6572, file: !6047, line: 66, type: !951)
!6576 = !DILocation(line: 66, column: 73, scope: !6572)
!6577 = !DILocation(line: 66, column: 83, scope: !6572)
!6578 = !DILocation(line: 68, column: 19, scope: !6572)
!6579 = !DILocation(line: 68, column: 22, scope: !6572)
!6580 = !DILocation(line: 68, column: 2, scope: !6572)
!6581 = !DILocation(line: 69, column: 2, scope: !6572)
!6582 = !DILocation(line: 70, column: 1, scope: !6572)
!6583 = distinct !DISubprogram(name: "arch_test_bit", scope: !6030, file: !6030, line: 237, type: !5016, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6584)
!6584 = !{!6585, !6586}
!6585 = !DILocalVariable(name: "nr", arg: 1, scope: !6583, file: !6030, line: 237, type: !136)
!6586 = !DILocalVariable(name: "addr", arg: 2, scope: !6583, file: !6030, line: 237, type: !5018)
!6587 = !DILocation(line: 237, column: 29, scope: !6583)
!6588 = !DILocation(line: 237, column: 63, scope: !6583)
!6589 = !DILocation(line: 239, column: 30, scope: !6583)
!6590 = !DILocation(line: 239, column: 9, scope: !6583)
!6591 = !DILocation(line: 239, column: 54, scope: !6583)
!6592 = !DILocation(line: 239, column: 58, scope: !6583)
!6593 = !DILocation(line: 239, column: 36, scope: !6583)
!6594 = !DILocation(line: 240, column: 26, scope: !6583)
!6595 = !DILocation(line: 240, column: 30, scope: !6583)
!6596 = !DILocation(line: 240, column: 8, scope: !6583)
!6597 = !DILocation(line: 239, column: 2, scope: !6583)
!6598 = distinct !DISubprogram(name: "kasan_check_read", scope: !6064, file: !6064, line: 40, type: !6065, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6599)
!6599 = !{!6600, !6601}
!6600 = !DILocalVariable(name: "p", arg: 1, scope: !6598, file: !6064, line: 40, type: !6050)
!6601 = !DILocalVariable(name: "size", arg: 2, scope: !6598, file: !6064, line: 40, type: !7)
!6602 = !DILocation(line: 40, column: 58, scope: !6598)
!6603 = !DILocation(line: 40, column: 74, scope: !6598)
!6604 = !DILocation(line: 42, column: 2, scope: !6598)
!6605 = distinct !DISubprogram(name: "constant_test_bit", scope: !6030, file: !6030, line: 204, type: !6606, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6608)
!6606 = !DISubroutineType(types: !6607)
!6607 = !{!631, !909, !5018}
!6608 = !{!6609, !6610}
!6609 = !DILocalVariable(name: "nr", arg: 1, scope: !6605, file: !6030, line: 204, type: !909)
!6610 = !DILocalVariable(name: "addr", arg: 2, scope: !6605, file: !6030, line: 204, type: !5018)
!6611 = !DILocation(line: 204, column: 52, scope: !6605)
!6612 = !DILocation(line: 204, column: 86, scope: !6605)
!6613 = !DILocation(line: 206, column: 19, scope: !6605)
!6614 = !DILocation(line: 206, column: 22, scope: !6605)
!6615 = !DILocation(line: 206, column: 15, scope: !6605)
!6616 = !DILocation(line: 207, column: 4, scope: !6605)
!6617 = !DILocation(line: 207, column: 9, scope: !6605)
!6618 = !DILocation(line: 207, column: 12, scope: !6605)
!6619 = !DILocation(line: 206, column: 44, scope: !6605)
!6620 = !DILocation(line: 207, column: 37, scope: !6605)
!6621 = !DILocation(line: 206, column: 2, scope: !6605)
!6622 = distinct !DISubprogram(name: "variable_test_bit", scope: !6030, file: !6030, line: 224, type: !6606, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6623)
!6623 = !{!6624, !6625, !6626}
!6624 = !DILocalVariable(name: "nr", arg: 1, scope: !6622, file: !6030, line: 224, type: !909)
!6625 = !DILocalVariable(name: "addr", arg: 2, scope: !6622, file: !6030, line: 224, type: !5018)
!6626 = !DILocalVariable(name: "oldbit", scope: !6622, file: !6030, line: 226, type: !631)
!6627 = !DILocation(line: 224, column: 52, scope: !6622)
!6628 = !DILocation(line: 224, column: 86, scope: !6622)
!6629 = !DILocation(line: 226, column: 2, scope: !6622)
!6630 = !DILocation(line: 226, column: 7, scope: !6622)
!6631 = !DILocation(line: 231, column: 33, scope: !6622)
!6632 = !DILocation(line: 231, column: 46, scope: !6622)
!6633 = !DILocation(line: 228, column: 2, scope: !6622)
!6634 = !{i64 2148100667, i64 2148100741}
!6635 = !DILocation(line: 233, column: 9, scope: !6622)
!6636 = !DILocation(line: 234, column: 1, scope: !6622)
!6637 = !DILocation(line: 233, column: 2, scope: !6622)
